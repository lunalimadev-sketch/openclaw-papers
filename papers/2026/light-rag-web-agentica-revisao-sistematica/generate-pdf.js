const PDFDocument = require('pdfkit');
const fs = require('fs');

// Read the markdown file
const markdown = fs.readFileSync('artigo_light_rag_web_agentica.md', 'utf8');

// Create PDF document with academic formatting
const doc = new PDFDocument({
    size: 'A4',
    margins: {
        top: 72,  // 1 inch
        bottom: 72,
        left: 72,
        right: 72
    },
    info: {
        Title: 'Tecnicas Eficientes de Light RAG para Web Agentica: Uma Revisao Sistematica',
        Author: 'Luna-Research Agent',
        Subject: 'Systematic Review on Light RAG for Agentic Web',
        Keywords: 'RAG, LightRAG, Web Agentica, Agentic Web, Context Compression',
        Creator: 'OpenClaw Agency'
    }
});

// Helper function to draw a table
function drawTable(doc, rows, startX, startY, columnWidths) {
    const rowHeight = 20;
    const borderWidth = 1;
    const borderColor = '#000000';
    const headerBg = '#D5E8F0';
    
    let currentY = startY;
    
    rows.forEach((row, rowIndex) => {
        let currentX = startX;
        
        row.forEach((cell, colIndex) => {
            // Draw cell border
            doc.rect(currentX, currentY, columnWidths[colIndex], rowHeight)
               .lineWidth(borderWidth)
               .stroke(borderColor);
            
            // Draw header background
            if (rowIndex === 0) {
                doc.rect(currentX + borderWidth, currentY + borderWidth, 
                        columnWidths[colIndex] - borderWidth * 2, rowHeight - borderWidth * 2)
                   .fill(headerBg);
            }
            
            // Draw cell text
            const fontSize = 8;
            doc.fontSize(fontSize)
               .font(rowIndex === 0 ? 'Helvetica-Bold' : 'Helvetica')
               .text(cell, currentX + 4, currentY + 5, {
                   width: columnWidths[colIndex] - 8,
                   align: 'center'
               });
            
            currentX += columnWidths[colIndex];
        });
        
        currentY += rowHeight;
    });
    
    return currentY;
}

// Helper function to parse markdown and add to PDF
function addMarkdownToPDF(doc, md) {
    const lines = md.split('\n');
    const pageWidth = doc.page.width - doc.page.margins.left - doc.page.margins.right;
    const startX = doc.page.margins.left;
    
    let i = 0;
    while (i < lines.length) {
        const line = lines[i].trim();
        
        // Skip empty lines
        if (line === '') {
            doc.moveDown(0.5);
            i++;
            continue;
        }
        
        // Check if we need a new page
        if (doc.y > doc.page.height - 150) {
            doc.addPage();
        }
        
        // Headers
        if (line.startsWith('# ')) {
            doc.moveDown(1);
            doc.fontSize(18)
               .font('Helvetica-Bold')
               .text(line.substring(2), {
                   align: 'center',
                   width: pageWidth
               });
            doc.moveDown(0.5);
            i++;
        } else if (line.startsWith('## ')) {
            doc.moveDown(0.8);
            doc.fontSize(14)
               .font('Helvetica-Bold')
               .text(line.substring(3), {
                   width: pageWidth
               });
            doc.moveDown(0.3);
            i++;
        } else if (line.startsWith('### ')) {
            doc.moveDown(0.6);
            doc.fontSize(12)
               .font('Helvetica-Bold')
               .text(line.substring(4), {
                   width: pageWidth
               });
            doc.moveDown(0.2);
            i++;
        } else if (line.startsWith('#### ')) {
            doc.moveDown(0.4);
            doc.fontSize(11)
               .font('Helvetica-Bold')
               .text(line.substring(5), {
                   width: pageWidth
               });
            doc.moveDown(0.2);
            i++;
        }
        // Tables - detect and render properly
        else if (line.startsWith('|')) {
            // Collect all table rows
            const tableRows = [];
            while (i < lines.length && lines[i].trim().startsWith('|')) {
                const currentLine = lines[i].trim();
                // Skip separator lines (|---|---|)
                if (!currentLine.match(/^\|[\s\-:|]+$/)) {
                    const cells = currentLine.split('|')
                        .filter(c => c.trim() !== '')
                        .map(c => c.trim());
                    if (cells.length > 0) {
                        tableRows.push(cells);
                    }
                }
                i++;
            }
            
            // Calculate column widths
            if (tableRows.length > 0) {
                const numCols = tableRows[0].length;
                const colWidth = Math.floor(pageWidth / numCols);
                const columnWidths = Array(numCols).fill(colWidth);
                
                // Adjust last column to fill remaining space
                const totalWidth = columnWidths.reduce((a, b) => a + b, 0);
                if (totalWidth < pageWidth) {
                    columnWidths[numCols - 1] += pageWidth - totalWidth;
                }
                
                // Draw table
                const tableEndY = drawTable(doc, tableRows, startX, doc.y, columnWidths);
                doc.y = tableEndY + 10;
            }
        }
        // Horizontal rules
        else if (line === '---') {
            doc.moveDown(0.5);
            doc.moveTo(doc.x, doc.y)
               .lineTo(doc.x + pageWidth, doc.y)
               .stroke();
            doc.moveDown(0.5);
            i++;
        }
        // Bold text
        else if (line.startsWith('**') && line.endsWith('**')) {
            doc.fontSize(10)
               .font('Helvetica-Bold')
               .text(line.replace(/\*\*/g, ''), {
                   width: pageWidth
               });
            doc.moveDown(0.3);
            i++;
        }
        // Regular paragraphs
        else {
            // Handle inline formatting
            let text = line
                .replace(/\*\*(.*?)\*\*/g, '$1') // Remove bold markers
                .replace(/\*(.*?)\*/g, '$1') // Remove italic markers
                .replace(/`(.*?)`/g, '$1'); // Remove code markers
            
            doc.fontSize(11)
               .font('Helvetica')
               .text(text, {
                   width: pageWidth,
                   align: 'justify',
                   lineGap: 4,
                   paragraphGap: 6
               });
            doc.moveDown(0.4);
            i++;
        }
    }
}

// Add content to PDF
addMarkdownToPDF(doc, markdown);

// Finalize PDF
const outputPath = 'artigo_light_rag_web_agentica.pdf';
doc.pipe(fs.createWriteStream(outputPath));
doc.end();

console.log(`✅ PDF generated: ${outputPath}`);
console.log(`File size: ${fs.statSync(outputPath).size} bytes`);
