const { Document, Packer, Paragraph, TextRun, HeadingLevel } = require('docx');
const fs = require('fs');

// Read the markdown file
const markdown = fs.readFileSync('artigo_light_rag_web_agentica.md', 'utf8');

// Simple markdown to DOCX conversion
function createDocx(md) {
    const lines = md.split('\n');
    const children = [];
    
    for (const line of lines) {
        const trimmed = line.trim();
        
        if (trimmed === '') continue;
        
        // Headers
        if (trimmed.startsWith('# ')) {
            children.push(new Paragraph({
                heading: HeadingLevel.HEADING_1,
                children: [new TextRun({ text: trimmed.substring(2), bold: true })]
            }));
        } else if (trimmed.startsWith('## ')) {
            children.push(new Paragraph({
                heading: HeadingLevel.HEADING_2,
                children: [new TextRun({ text: trimmed.substring(3), bold: true })]
            }));
        } else if (trimmed.startsWith('### ')) {
            children.push(new Paragraph({
                heading: HeadingLevel.HEADING_3,
                children: [new TextRun({ text: trimmed.substring(4), bold: true })]
            }));
        } else if (trimmed.startsWith('#### ')) {
            children.push(new Paragraph({
                heading: HeadingLevel.HEADING_4,
                children: [new TextRun({ text: trimmed.substring(5), bold: true })]
            }));
        }
        // Skip table rows for simplicity
        else if (trimmed.startsWith('|')) {
            // Skip table rows
        }
        // Regular paragraphs
        else {
            children.push(new Paragraph({
                spacing: { after: 120 },
                children: [new TextRun({ text: trimmed })]
            }));
        }
    }
    
    return new Document({
        sections: [{
            children: children
        }]
    });
}

async function main() {
    try {
        console.log('Creating DOCX...');
        const doc = createDocx(markdown);
        
        console.log('Saving file...');
        const buffer = await Packer.toBuffer(doc);
        fs.writeFileSync('artigo_light_rag_web_agentica.docx', buffer);
        
        console.log('✅ DOCX generated successfully!');
        console.log('File: artigo_light_rag_web_agentica.docx');
    } catch (error) {
        console.error('❌ Error:', error.message);
        process.exit(1);
    }
}

main();
