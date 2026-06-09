const PDFDocument = require('pdfkit');
const fs = require('fs');

// Read the markdown file
const path = require('path');
const mdPath = path.join(__dirname, 'artigo_light_rag_web_agentica.md');
const markdown = fs.readFileSync(mdPath, 'utf8');

// Create PDF document with academic formatting
const doc = new PDFDocument({
    size: 'A4',
    margins: {
        top: 72,
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

// Helper function to draw a minimalist academic table (like OPE-28)
function drawTable(doc, rows, startX, startY, columnWidths) {
    const rowHeight = 22;
    const headerHeight = 24;
    const borderWidth = 1;
    const padding = 8;
    
    let currentY = startY;
    
    // Draw top line
    const totalWidth = columnWidths.reduce((a, b) => a + b, 0);
    doc.moveTo(startX, currentY)
       .lineTo(startX + totalWidth, currentY)
       .lineWidth(borderWidth)
       .stroke('#000000');
    currentY += 5;
    
    rows.forEach((row, rowIndex) => {
        const isHeader = rowIndex === 0;
        const currentRowHeight = isHeader ? headerHeight : rowHeight;
        let currentX = startX;
        
        // Check if we need a new page
        if (currentY + currentRowHeight > doc.page.height - 100) {
            doc.addPage();
            currentY = doc.page.margins.top;
            // Redraw top line on new page
            doc.moveTo(startX, currentY)
               .lineTo(startX + totalWidth, currentY)
               .lineWidth(borderWidth)
               .stroke('#000000');
            currentY += 5;
        }
        
        row.forEach((cell, colIndex) => {
            const cellWidth = columnWidths[colIndex];
            
            // Draw cell text
            const fontSize = isHeader ? 9 : 8.5;
            const font = isHeader ? 'Helvetica-Bold' : 'Helvetica';
            
            doc.fontSize(fontSize)
               .font(font)
               .fillColor('#000000')
               .text(cell, currentX + padding, currentY + 2, {
                   width: cellWidth - padding * 2,
                   align: colIndex === 0 ? 'left' : 'center',
                   lineBreak: false
               });
            
            currentX += cellWidth;
        });
        
        currentY += currentRowHeight;
    });
    
    // Draw line below header (after first row)
    const headerEndY = startY + 5 + headerHeight;
    doc.moveTo(startX, headerEndY)
       .lineTo(startX + totalWidth, headerEndY)
       .lineWidth(borderWidth)
       .stroke('#000000');
    
    // Draw bottom line
    doc.moveTo(startX, currentY)
       .lineTo(startX + totalWidth, currentY)
       .lineWidth(borderWidth)
       .stroke('#000000');
    
    return currentY + 8;
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
            doc.moveDown(0.4);
            i++;
            continue;
        }
        
        // Check if we need a new page
        if (doc.y > doc.page.height - 150) {
            doc.addPage();
        }
        
        // Reset x position to left margin before each line
        doc.x = doc.page.margins.left;
        
        // Headers
        if (line.startsWith('# ')) {
            doc.moveDown(0.8);
            doc.fontSize(16)
               .font('Helvetica-Bold')
               .fillColor('#000000')
               .text(line.substring(2), {
                   align: 'center',
                   width: pageWidth
               });
            doc.moveDown(0.4);
            i++;
        } else if (line.startsWith('## ')) {
            doc.moveDown(0.6);
            doc.fontSize(13)
               .font('Helvetica-Bold')
               .fillColor('#000000')
               .text(line.substring(3), {
                   width: pageWidth
               });
            doc.moveDown(0.3);
            i++;
        } else if (line.startsWith('### ')) {
            doc.moveDown(0.5);
            doc.fontSize(11)
               .font('Helvetica-Bold')
               .fillColor('#000000')
               .text(line.substring(4), {
                   width: pageWidth
               });
            doc.moveDown(0.2);
            i++;
        } else if (line.startsWith('#### ')) {
            doc.moveDown(0.4);
            doc.fontSize(10)
               .font('Helvetica-Bold')
               .fillColor('#000000')
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
                        .map(c => c.trim().replace(/\*\*/g, ''));
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
                doc.y = tableEndY;
                doc.x = doc.page.margins.left;  // Reset x position after table
                doc.fillColor('#000000');
            }
        }
        // Horizontal rules
        else if (line === '---') {
            doc.moveDown(0.4);
            doc.moveTo(doc.page.margins.left, doc.y)
               .lineTo(doc.page.margins.left + pageWidth, doc.y)
               .lineWidth(0.5)
               .stroke('#000000');
            doc.moveDown(0.4);
            i++;
        }
        // Bold text
        else if (line.startsWith('**') && line.endsWith('**')) {
            doc.fontSize(10)
               .font('Helvetica-Bold')
               .fillColor('#000000')
               .text(line.replace(/\*\*/g, ''), {
                   width: pageWidth
               });
            doc.moveDown(0.3);
            i++;
        }
        // Regular paragraphs
        else {
            // Handle inline formatting and links
            let text = line
                .replace(/\*\*(.*?)\*\*/g, '$1')
                .replace(/\*(.*?)\*/g, '$1')
                .replace(/`(.*?)`/g, '$1');
            
            // Check for URLs and make them clickable
            const urlRegex = /(https?:\/\/[^\s]+)/g;
            const parts = text.split(urlRegex);
            
            if (parts.length > 1) {
                // Text with links
                parts.forEach((part, partIndex) => {
                    if (part.match(urlRegex)) {
                        // It's a URL - make it clickable
                        doc.fontSize(9)
                           .font('Helvetica')
                           .fillColor('#0000EE')
                           .text(part, {
                               width: pageWidth,
                               link: part,
                               underline: true
                           });
                    } else if (part.trim()) {
                        // Regular text
                        doc.fontSize(10)
                           .font('Helvetica')
                           .fillColor('#000000')
                           .text(part, {
                               width: pageWidth,
                               align: 'justify',
                               lineGap: 3,
                               paragraphGap: 5
                           });
                    }
                });
            } else {
                // No links - regular text
                doc.fontSize(10)
                   .font('Helvetica')
                   .fillColor('#000000')
                   .text(text, {
                       width: pageWidth,
                       align: 'justify',
                       lineGap: 3,
                       paragraphGap: 5
                   });
            }
            doc.moveDown(0.3);
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
