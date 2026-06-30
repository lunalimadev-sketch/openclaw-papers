const { marked } = require('marked');
const puppeteer = require('puppeteer-core');
const fs = require('fs');
const path = require('path');

const CHROME_PATH = 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe';

function convertMarkdownToHtml(md) {
  const html = marked.parse(md, { breaks: true, gfm: true });

  return `<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<style>
  @page {
    size: A4;
    margin: 3cm 2cm 2cm 2cm;
  }

  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: 'Times New Roman', Times, serif;
    font-size: 12pt;
    line-height: 1.5;
    color: #000;
    text-align: justify;
  }

  h1 {
    font-size: 14pt;
    text-align: center;
    font-weight: bold;
    margin-bottom: 1.5em;
    text-transform: uppercase;
  }

  h2 {
    font-size: 12pt;
    font-weight: bold;
    margin-top: 1.5em;
    margin-bottom: 0.5em;
    text-transform: uppercase;
  }

  h3 {
    font-size: 12pt;
    font-weight: bold;
    margin-top: 1em;
    margin-bottom: 0.5em;
    font-style: italic;
  }

  p {
    margin-bottom: 0.5em;
    text-indent: 1.25cm;
  }

  p:first-of-type {
    text-indent: 1.25cm;
  }

  strong {
    font-weight: bold;
  }

  em {
    font-style: italic;
  }

  hr {
    border: none;
    border-top: 1px solid #000;
    margin: 1.5em 0;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin: 1em 0;
    font-size: 10pt;
  }

  th, td {
    border: 1px solid #000;
    padding: 6px 8px;
    text-align: left;
    vertical-align: top;
  }

  th {
    background-color: #f0f0f0;
    font-weight: bold;
  }

  ul, ol {
    margin: 0.5em 0;
    padding-left: 2em;
  }

  li {
    margin-bottom: 0.25em;
  }

  blockquote {
    margin: 1em 1.5em;
    font-style: italic;
  }

  code {
    font-family: 'Courier New', monospace;
    font-size: 10pt;
  }

  .section-number {
    font-weight: bold;
  }

  .page-break {
    page-break-before: always;
  }
</style>
</head>
<body>
${html}
</body>
</html>`;
}

async function generatePdf(markdownPath, outputPath) {
  const md = fs.readFileSync(markdownPath, 'utf-8');
  const html = convertMarkdownToHtml(md);

  const htmlPath = markdownPath.replace(/\.md$/i, '.html');
  fs.writeFileSync(htmlPath, html, 'utf-8');
  console.log(`HTML preview saved to: ${htmlPath}`);

  const browser = await puppeteer.launch({
    executablePath: CHROME_PATH,
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox'],
  });

  try {
    const page = await browser.newPage();

    await page.setContent(html, { waitUntil: 'networkidle0' });

    await page.pdf({
      path: outputPath,
      format: 'A4',
      margin: {
        top: '3cm',
        bottom: '2cm',
        left: '3cm',
        right: '2cm',
      },
      printBackground: true,
      displayHeaderFooter: false,
    });

    console.log(`PDF generated: ${outputPath}`);
  } finally {
    await browser.close();
  }
}

const inputFile = process.argv[2];
const outputFile = process.argv[3] || inputFile.replace(/\.md$/i, '.pdf');

if (!inputFile) {
  console.error('Usage: node gerar-pdf.js <input.md> [output.pdf]');
  process.exit(1);
}

generatePdf(inputFile, outputFile).catch((err) => {
  console.error('Error:', err);
  process.exit(1);
});
