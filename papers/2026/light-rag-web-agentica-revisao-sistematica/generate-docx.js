const { Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
        Header, Footer, AlignmentType, LevelFormat, HeadingLevel, 
        BorderStyle, WidthType, ShadingType, PageNumber, PageBreak } = require('docx');
const fs = require('fs');

// Read the markdown file
const markdown = fs.readFileSync('artigo_light_rag_web_agentica.md', 'utf8');

// Parse markdown to extract sections
function parseMarkdown(md) {
    const lines = md.split('\n');
    const sections = [];
    let currentSection = null;
    let inTable = false;
    let tableRows = [];

    for (let i = 0; i < lines.length; i++) {
        const line = lines[i].trim();
        
        // Skip empty lines
        if (line === '') {
            if (currentSection && !inTable) {
                sections.push(currentSection);
                currentSection = null;
            }
            continue;
        }

        // Headers
        if (line.startsWith('# ')) {
            if (currentSection) sections.push(currentSection);
            currentSection = { type: 'h1', content: line.substring(2) };
        } else if (line.startsWith('## ')) {
            if (currentSection) sections.push(currentSection);
            currentSection = { type: 'h2', content: line.substring(3) };
        } else if (line.startsWith('### ')) {
            if (currentSection) sections.push(currentSection);
            currentSection = { type: 'h3', content: line.substring(4) };
        } else if (line.startsWith('#### ')) {
            if (currentSection) sections.push(currentSection);
            currentSection = { type: 'h4', content: line.substring(5) };
        }
        // Tables
        else if (line.startsWith('|')) {
            if (!inTable) {
                inTable = true;
                tableRows = [];
            }
            // Skip separator rows
            if (!line.match(/^\|[\s\-:|]+\|$/)) {
                const cells = line.split('|').filter(c => c.trim() !== '').map(c => c.trim());
                if (cells.length > 0) {
                    tableRows.push(cells);
                }
            }
        }
        // Regular text
        else {
            if (inTable) {
                sections.push({ type: 'table', rows: tableRows });
                inTable = false;
                tableRows = [];
            }
            if (currentSection) {
                currentSection = { type: 'paragraph', content: line };
            } else {
                currentSection = { type: 'paragraph', content: line };
            }
        }
    }
    
    if (currentSection) sections.push(currentSection);
    if (inTable) sections.push({ type: 'table', rows: tableRows });
    
    return sections;
}

// Create DOCX document
function createDocument(sections) {
    const doc = new Document({
        styles: {
            default: {
                document: {
                    run: { font: "Arial", size: 24 } // 12pt
                }
            },
            paragraphStyles: [
                {
                    id: "Heading1",
                    name: "Heading 1",
                    basedOn: "Normal",
                    next: "Normal",
                    quickFormat: true,
                    run: { size: 32, bold: true, font: "Arial" },
                    paragraph: { spacing: { before: 240, after: 240 }, outlineLevel: 0 }
                },
                {
                    id: "Heading2",
                    name: "Heading 2",
                    basedOn: "Normal",
                    next: "Normal",
                    quickFormat: true,
                    run: { size: 28, bold: true, font: "Arial" },
                    paragraph: { spacing: { before: 180, after: 180 }, outlineLevel: 1 }
                },
                {
                    id: "Heading3",
                    name: "Heading 3",
                    basedOn: "Normal",
                    next: "Normal",
                    quickFormat: true,
                    run: { size: 26, bold: true, font: "Arial" },
                    paragraph: { spacing: { before: 120, after: 120 }, outlineLevel: 2 }
                },
                {
                    id: "Heading4",
                    name: "Heading 4",
                    basedOn: "Normal",
                    next: "Normal",
                    quickFormat: true,
                    run: { size: 24, bold: true, font: "Arial" },
                    paragraph: { spacing: { before: 120, after: 120 }, outlineLevel: 3 }
                }
            ]
        },
        sections: [{
            properties: {
                page: {
                    size: { width: 11906, height: 16838 }, // A4
                    margin: { top: 1440, right: 1440, bottom: 1440, left: 1440 }
                }
            },
            headers: {
                default: new Header({
                    children: [new Paragraph({
                        alignment: AlignmentType.CENTER,
                        children: [new TextRun({ text: "Tecnicas Eficientes de Light RAG para Web Agentica", italics: true, size: 18 })]
                    })]
                })
            },
            footers: {
                default: new Footer({
                    children: [new Paragraph({
                        alignment: AlignmentType.CENTER,
                        children: [
                            new TextRun({ text: "Pagina ", size: 18 }),
                            new TextRun({ children: [PageNumber.CURRENT], size: 18 })
                        ]
                    })]
                })
            },
            children: []
        }]
    });
    
    console.log('Document created successfully');
    console.log('Sections:', doc.sections.length);
    
    // Add content to document
    const children = doc.sections[0].children;
    console.log('Children:', children.length);
    
    console.log('Starting to process sections...');
    sections.forEach((section, index) => {
        try {
            console.log(`Processing section ${index}: ${section.type}`);
            switch (section.type) {
                case 'h1':
                    children.push(new Paragraph({
                        heading: HeadingLevel.HEADING_1,
                        children: [new TextRun({ text: section.content, bold: true })]
                    }));
                    break;
                case 'h2':
                    children.push(new Paragraph({
                        heading: HeadingLevel.HEADING_2,
                        children: [new TextRun({ text: section.content, bold: true })]
                    }));
                    break;
                case 'h3':
                    children.push(new Paragraph({
                        heading: HeadingLevel.HEADING_3,
                        children: [new TextRun({ text: section.content, bold: true })]
                    }));
                    break;
                case 'h4':
                    children.push(new Paragraph({
                        heading: HeadingLevel.HEADING_4,
                        children: [new TextRun({ text: section.content, bold: true })]
                    }));
                    break;
                case 'paragraph':
                    children.push(new Paragraph({
                        spacing: { after: 120 },
                        children: [new TextRun({ text: section.content })]
                    }));
                    break;
            case 'table':
                try {
                    if (section.rows && section.rows.length > 0 && section.rows[0] && section.rows[0].length > 0) {
                        const border = { style: BorderStyle.SINGLE, size: 1, color: "CCCCCC" };
                        const borders = { top: border, bottom: border, left: border, right: border };
                        
                        const table = new Table({
                            width: { size: 9026, type: WidthType.DXA },
                            columnWidths: Array(section.rows[0].length).fill(Math.floor(9026 / section.rows[0].length)),
                            rows: section.rows.map((row, rowIndex) => 
                                new TableRow({
                                    children: row.map(cell => 
                                        new TableCell({
                                            borders,
                                            width: { size: Math.floor(9026 / row.length), type: WidthType.DXA },
                                            shading: rowIndex === 0 ? { fill: "D5E8F0", type: ShadingType.CLEAR } : undefined,
                                            margins: { top: 80, bottom: 80, left: 120, right: 120 },
                                            children: [new Paragraph({
                                                children: [new TextRun({ 
                                                    text: cell, 
                                                    bold: rowIndex === 0,
                                                    size: 20
                                                })]
                                            })]
                                        })
                                    )
                                })
                            )
                        });
                        
                        children.push(table);
                        children.push(new Paragraph({ spacing: { after: 200 }, children: [] }));
                    }
                } catch (tableError) {
                    console.error('Table error:', tableError.message);
                    console.error('Table rows:', JSON.stringify(section.rows));
                }
                break;
            }
        } catch (error) {
            console.error(`Error processing section ${index}:`, error.message);
            console.error('Section:', JSON.stringify(section));
        }
    });

    return doc;
}

// Main execution
async function main() {
    try {
        console.log('Parsing markdown...');
        const sections = parseMarkdown(markdown);
        console.log(`Found ${sections.length} sections`);
        
        console.log('Creating DOCX...');
        const doc = createDocument(sections);
        console.log('DOCX created successfully');
        
        console.log('Saving file...');
        const buffer = await Packer.toBuffer(doc);
        fs.writeFileSync('artigo_light_rag_web_agentica.docx', buffer);
        
        console.log('✅ DOCX generated successfully!');
        console.log('File: artigo_light_rag_web_agentica.docx');
    } catch (error) {
        console.error('❌ Error:', error.message);
        console.error('Stack:', error.stack);
        process.exit(1);
    }
}

main();
