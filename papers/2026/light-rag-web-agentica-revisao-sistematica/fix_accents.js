const fs = require('fs');
const path = require('path');

// Read the file with UTF-8 encoding
const filePath = path.join(__dirname, 'artigo_light_rag_web_agentica.md');
let content = fs.readFileSync(filePath, 'utf8');

// Replace words with accents
const replacements = [
    [/\bintegracao\b/g, 'integração'],
    [/\botimizacao\b/g, 'otimização'],
    [/\brecuperacao\b/g, 'recuperação'],
    [/\bcompressao\b/g, 'compressão'],
    [/\bavaliacao\b/g, 'avaliação'],
    [/\binformacao\b/g, 'informação'],
    [/\beficiencia\b/g, 'eficiência'],
    [/\bcomunicacao\b/g, 'comunicação'],
    [/\bimplementacao\b/g, 'implementação'],
    [/\bnavegacao\b/g, 'navegação'],
    [/\bextracao\b/g, 'extração'],
    [/\bsintese\b/g, 'síntese'],
    [/\baplicacoes\b/g, 'aplicações'],
    [/\banalise\b/g, 'análise'],
    [/\bdiscussao\b/g, 'discussão'],
    [/\bconclusao\b/g, 'conclusão'],
    [/\breferencias\b/g, 'referências'],
    [/\bcriterios\b/g, 'critérios'],
    [/\bselecao\b/g, 'seleção'],
    [/\bespecificas\b/g, 'específicas'],
    [/\bpossivel\b/g, 'possível'],
    [/\bautonomos\b/g, 'autônomos'],
    [/\bautonomo\b/g, 'autônomo'],
    [/\bdinamicos\b/g, 'dinâmicos'],
    [/\bdinamico\b/g, 'dinâmico'],
    [/\bcontemporanea\b/g, 'contemporânea'],
    [/\bintersecao\b/g, 'intersecção'],
    [/\bcomparacoes\b/g, 'comparações'],
    [/\breducao\b/g, 'redução'],
    [/\batualizacao\b/g, 'atualização'],
    [/\bindexacao\b/g, 'indexação'],
    [/\blatencia\b/g, 'latência'],
    [/\bseguranca\b/g, 'segurança'],
    [/\beficacia\b/g, 'eficácia'],
    [/\bqualidade\b/g, 'qualidade'],
    [/\bmecanismos\b/g, 'mecanismos'],
    [/\bdiferentes\b/g, 'diferentes'],
    [/\bcapacidade\b/g, 'capacidade'],
    [/\bapresenta\b/g, 'apresenta'],
    [/\bpossibilidades\b/g, 'possibilidades'],
    [/\bdesafios\b/g, 'desafios'],
    [/\bmetodologia\b/g, 'metodologia'],
    [/\bresultados\b/g, 'resultados'],
    [/\bproblemas\b/g, 'problemas'],
    [/\bfundamentais\b/g, 'fundamentais'],
    [/\bessenciais\b/g, 'essenciais'],
    [/\bprincipais\b/g, 'principais'],
    [/\bsignificativa\b/g, 'significativa'],
    [/\bparticularmente\b/g, 'particularmente'],
    [/\bcompleto\b/g, 'completo'],
    [/\bsimples\b/g, 'simples'],
    [/\bcomplexo\b/g, 'complexo'],
    [/\beficiente\b/g, 'eficiente'],
    [/\badequado\b/g, 'adequado'],
];

// Apply replacements
for (const [pattern, replacement] of replacements) {
    content = content.replace(pattern, replacement);
}

// Write back to file with UTF-8 encoding
fs.writeFileSync(filePath, content, 'utf8');

console.log('Acentos corrigidos com sucesso!');

// Verify
const verify = fs.readFileSync(filePath, 'utf8');
console.log(`Contém 'integração': ${verify.includes('integração')}`);
console.log(`Contém 'compressão': ${verify.includes('compressão')}`);
console.log(`Contém 'informação': ${verify.includes('informação')}`);
console.log(`Contém 'Técnicas': ${verify.includes('Técnicas')}`);
console.log(`Contém 'Revisão': ${verify.includes('Revisão')}`);
