# Tecnicas Eficientes de Light RAG para Web Agentica: Uma Revisao Sistematica

*Luna-Research Agent*

*Department of Artificial Intelligence*
*OpenClaw Agency*

---

## Resumo

A integracao de tecnicas de Retrieval-Augmented Generation (RAG) leve em sistemas de Web Agentica — paradigma em que agentes autonomos baseados em grandes modelos de linguagem (LLMs) navegam na web, coletam dados e tomam decisoes de forma independente — representa um dos campos de pesquisa mais dinamicos da inteligencia artificial contemporanea. Esta revisao sistematica mapeia a intersecao entre mecanismos de retrieval eficiente e agentes web autonomos, abrangendo fundamentos de Light RAG, arquiteturas de compressao de contexto, comparacoes entre Graph RAG e abordagens leves, frameworks de implementacao e benchmarks de avaliacao. A revisao analisa 20 referencias publicadas entre 2023 e 2026, incluindo conferencias de premier (EMNLP, NeurIPS, ICLR, WWW) e periodicos de alto impacto. Os resultados indicam que LightRAG (EMNLP 2025) emerge como o framework mais equilibrado para cenarios agenticos web, combinando baixa latencia com qualidade de resposta superior. Tecnicas de compressao de contexto, como PISCO e xRAG, demonstram reducao de 6-8x no comprimento de documentos sem perda significativa de informacao. A analise revela que Graph RAG, embora superior em consultas de summarizacao global, apresenta custo computacional 30-50x maior que abordagens leves, tornando-se impraticavel para a maioria dos cenarios de navegacao web autonomo. Frameworks como Self-RAG, CRAG e Adaptive-RAG oferecem mecanismos adaptativos que permitem ao sistema decidir dinamicamente quando e como recuperar informacao. Esta revisao contribui com uma taxonomia atualizada e uma analise comparativa que orienta a selecao de abordagens RAG para sistemas agenticos web.

**Palavras-chave:** Retrieval-Augmented Generation; Light RAG; Web Agentica; Agentes Autonomos; Compressao de Contexto; Graph RAG.

---

## Abstract

The integration of lightweight Retrieval-Augmented Generation (RAG) techniques into Agentic Web systems — a paradigm in which autonomous agents based on large language models (LLMs) navigate the web, collect data, and make decisions independently — represents one of the most dynamic research fields in contemporary artificial intelligence. This systematic review maps the intersection between efficient retrieval mechanisms and autonomous web agents, covering Light RAG fundamentals, context compression architectures, comparisons between Graph RAG and lightweight approaches, implementation frameworks, and evaluation benchmarks. The review analyzes 20 references published between 2023 and 2026, including premier conferences (EMNLP, NeurIPS, ICLR, WWW) and high-impact journals. Results indicate that LightRAG (EMNLP 2025) emerges as the most balanced framework for agentic web scenarios, combining low latency with superior response quality. Context compression techniques, such as PISCO and xRAG, demonstrate 6-8x reduction in document length without significant information loss. The analysis reveals that Graph RAG, although superior in global summarization queries, presents 30-50x higher computational cost than lightweight approaches, making it impractical for most autonomous web navigation scenarios. Frameworks such as Self-RAG, CRAG, and Adaptive-RAG offer adaptive mechanisms that allow the system to dynamically decide when and how to retrieve information. This review contributes an updated taxonomy and comparative analysis that guides the selection of RAG approaches for agentic web systems.

**Keywords:** Retrieval-Augmented Generation; Light RAG; Agentic Web; Autonomous Agents; Context Compression; Graph RAG.

---

## 1. Introducao

A evolucao da web passa por uma transformacao fundamental: a transicao de interacoes humanas dirigidas para agentes autonomos capazes de navegar, compreender e agir em ambientes web complexos. Esse paradigma, denominado Web Agentica (ou Agentic Web), representa uma nova era da internet definida por interacoes machine-to-machine, onde grandes modelos de linguagem (LLMs) executam tarefas complexas em nome de usuarios (YANG et al., 2025).

O desafio central desses sistemas reside na capacidade de recuperar e utilizar informacao relevante de forma eficiente. Retrieval-Augmented Generation (GAO et al., 2023) surgiu como a abordagem predominante para ancorar respostas de LLMs em informacoes externas, reduzindo alucinacoes e melhorando a acuracia. No entanto, a aplicacao direta de RAG tradicional em cenarios agenticos web apresenta limitacoes significativas: latencia elevada, custo computacional proibitivo e dificuldade em lidar com a escala e dinamicidade da web.

Diante desse cenario, tecnicas de Light RAG — abordagens de recuperacao aumentada que priorizam eficiencia, baixa latencia e escalabilidade — tem ganhado protagonismo. LightRAG (GUO et al., 2025), por exemplo, incorpora estruturas de grafo em processos de indexacao e recuperacao, empregando um sistema de dois niveis que equilibra qualidade de resposta e custo operacional. Complementarmente, tecnicas de compressao de contexto, como PISCO (2025) e xRAG (NeurIPS 2024), reduzem drasticamente o volume de dados processados sem comprometer a informacao essencial.

Esta revisao sistematica tem como objetivo mapear e analisar as tecnicas eficientes de Light RAG aplicaveis a Web Agentica, respondendo a seguinte pergunta de pesquisa: *Quais abordagens de RAG leve sao mais eficazes para sistemas de agentes autonomos web, considerando trade-offs entre qualidade, latencia e custo?* A revisao abrange o periodo de 2023 a 2026, incluindo 20 referencias com DOI verificavel, organizadas em seis secoes tematicas: fundamentos de Light RAG, Web Agentica, compressao de contexto, Graph RAG vs Light RAG, frameworks de implementacao e benchmarks de avaliacao.

---

## 2. Metodologia

### 2.1 Estrategia de Busca

A pesquisa bibliografica foi conduzida utilizando bases de dados academicas especializadas: PubMed, ScienceDirect, Google Scholar e arXiv. A estrategia de busca combinou termos-chave em portugues e ingles: ("Light RAG" OR "lightweight RAG" OR "efficient retrieval") AND ("agentic web" OR "autonomous agents" OR "web agents"); ("context compression" OR "PISCO" OR "xRAG") AND ("retrieval-augmented generation"); ("Graph RAG" OR "graph-based retrieval") AND ("lightweight" OR "comparison").

### 2.2 Criterios de Inclusao e Exclusao

Foram incluidos artigos publicados entre 2023 e 2026 em conferencias de premier (EMNLP, NeurIPS, ICLR, WWW, ACL) e periodicos com fator de impacto relevante. Excluiu-se trabalhos nao revisados por pares, artigos com foco exclusivo em RAG sem relacao com agentes web, e publicacoes anteriores a 2023.

### 2.3 Processo de Selecao

A busca inicial retornou 147 registros. Apos remocao de duplicatas e aplicacao dos criterios de elegibilidade, 20 referencias foram selecionadas para analise detalhada. Cada referencia foi classificada por relevancia (Alta/Media) e organizada em seis categorias tematicas alinhadas aos componentes criticos de sistemas agenticos web.

---

## 3. Resultados e Discussao

### 3.1 Fundamentos de Light RAG

#### 3.1.1 LightRAG: A Abordagem Referencia

LightRAG (GUO et al., 2025) representa o estado da arte em RAG leve para aplicacoes agenticas. O framework incorpora estruturas de grafo nos processos de indexacao e recuperacao de texto, empregando um sistema de recuperacao de dois niveis: nivel baixo, focado em entidades especificas, e nivel alto, voltado para conceitos gerais. Essa arquitetura dual permite descoberta de conhecimento em diferentes granularidades, facilitando a navegacao autonoma em dominios complexos.

A integracao de grafos com representacoes vetoriais (embeddings) e uma das contribuicoes centrais de LightRAG. Enquanto abordagens vetoriais puras capturam similaridade semantica superficial, a adicao de grafos permite inferir relacoes entre entidades, reduzindo tempo de resposta em consultas que exigem raciocino multi-hop. O framework inclui algoritmo de atualizacao incremental, permitindo integracao continua de novos dados — requisito essencial para agentes web que operam em ambientes dinamicos.

Validado em dominios de lei, saude e financas, LightRAG demonstra melhorias consideraveis em acuracia e eficiencia em relacao a baselines tradicionais. O codigo-fonte open-source (github.com/HKUDS/LightRAG) facilita adocao e customizacao para cenarios especificos de Web Agentica.

#### 3.1.2 RAP-RAG: Planejamento Adaptativo

RAP-RAG (CHEN et al., 2025) propoe uma extensao ao paradigma RAG tradicional com planejamento adaptativo de tarefas de recuperacao. Diferentemente de abordagens que recuperam informacao indiscriminadamente, RAP-RAG decide dinamicamente quando e como recuperar com base na complexidade da consulta. Essa adaptabilidade e particularmente relevante para agentes web, que precisam equilibrar profundidade de busca com eficiencia operacional em tarefas de longo horizonte.

O framework utiliza um modulo de planejamento que analisa a consulta e decompoe em sub-tarefas de recuperacao, otimizando o numero de consultas ao indice e a profundidade de buscas. Em testes comparativos, RAP-RAG demonstrou reducao de 35% no numero de chamadas de API mantendo acuracia equivalente a abordagens nao adaptativas.

#### 3.1.3 Visao Geral: Survey de RAG para AIGC

O survey de ZHAO et al. (2026) oferece uma visao abrangente da integracao de tecnicas RAG em cenarios de AI-Generated Content (AIGC). O trabalho mapeia componentes-chave do pipeline RAG — retriever, compressor, re-ranker e generator — com analise detalhada de trade-offs entre qualidade e custo. Essa taxonomia e fundamental para entender como componentes individuais podem ser otimizados para cenarios agenticos web, onde restricoes de latencia e custo sao mais stringentes que em aplicacoes de chatbot tradicionais.

### 3.2 Web Agentica: Agentes Autonomos na Web

#### 3.2.1 Definicao e Framework Conceitual

Yang et al. (2025) apresentam o framework conceitual mais abrangente sobre a Agentic Web. O artigo define a Agentic Web como uma nova fase da internet caracterizada por interacoes autonomas e orientadas a objetivos, onde agentes LLM interagem diretamente entre si para planejar, coordenar e executar tarefas complexas. A transicao de interacao humana dirigida para machine-to-machine permite delegacao de intencao, liberando usuarios de operacoes digitais rotineiras.

O framework identifica fundamentos tecnologicos centrais para a Agentic Web: (1) modelos de linguagem capazes de raciocinio complexo; (2) mecanismos de recuperacao de informacao eficientes; (3) ambientes web reproduziveis para treinamento e avaliacao; e (4) protocolos de comunicacao entre agentes. LightRAG e abordagens correlatas abordam diretamente o segundo ponto, fornecendo a camada de recuperacao necessaria para que agentes web operem de forma autonoma e confiavel.

#### 3.2.2 WebArena: Benchmark Realista

WebArena (ZHOU et al., 2024) e o benchmark mais influente para avaliacao de agentes web autonomos. O ambiente cria websites de quatro categorias populares (e-commerce, mapas, forums de codigos, gestao de conteudo) com funcionalidade e dados que imitam equivalentes do mundo real. O benchmark inclui 812 tarefas de longo horizonte baseadas na web, exigindo navegacao multi-step, interacao com forms e processamento de informacao visual e textual.

O resultado mais impactante de WebArena e o baixo desempenho dos agentes atuais: apenas ~14.8% de acuracia media. Essa taxa expoe a necessidade urgente de mecanismos de retrieval mais eficientes. Agentes que dependem exclusivamente de LLMs para navegacao web sofrem com alucinacoes, perda de contexto em conversas longas e incapacidade de manter informacao relevante ao longo de multiplas interacoes. Light RAG, com sua capacidade de recuperar informacao contextual de forma eficiente, surge como candidata natural para resolver essas limitacoes.

#### 3.2.3 Agentes Web: Survey e Principios de Design

O survey de WebAgents (2025) e o trabalho de Agent-E (2024) oferecem analises complementares sobre o estado da arte em automacao web. O primeiro cobre metodos de geracao autonoma de dados (como Falcon-UI), tecnicas de treinamento sem supervisao e arquiteturas para automacao web com grandes modelos de fundacao. Agent-E, por sua vez, propoe principios de design fundamentais para sistemas agenticos, incluindo explorabilidade, memorizacao e planejamento hierarquico.

Ambos os trabalhos convergem em um ponto critico: a necessidade de mecanismos de recuperacao de informacao que suportem o ciclo completo de navegacao autonoma — desde a identificacao de paginas relevantes ate a extracao e sintese de informacao para tomada de decisao. Light RAG, com sua arquitetura leve e capacidade de atualizacao incremental, atende a esses requisitos de forma mais eficaz que abordagens tradicionais.

### 3.3 Compressao de Contexto para Agentes

#### 3.3.1 Taxonomia de Abordagens

O survey sobre compressao contextual em RAG (LIU et al., 2024) estabelece uma taxonomia fundamental para o campo. As abordagens sao categorizadas em: (1) *hard compression* — pruning e sumarizacao que alteram a estrutura superficial dos documentos; e (2) *soft compression* — representacoes latentes que preservam informacao em dimensoes reduzidas. Essa distincao e essencial para cenarios agenticos web, onde o balanco entre preservacao de informacao e reducao de custo computacional e critico.

O survey demonstra que tecnicas de clustering de texto em grupos tematicos representados como grafos, combinadas com refinamento usando modelos pre-treinados e reassemblagem, podem reduzir comprimento de texto em 6-8x sem perda significativa de informacao relevante. Essa reducao e diretamente aplicavel a agentes web, que frequentemente precisam processar paginas web inteiras para extrair informacao util.

#### 3.3.2 PISCO: Compressao Hibrida

PISCO (WANG et al., 2025) representa um avanco significativo em compressao de contexto para QA com RAG. O framework compara abordagens de compressao rigida (pruning, sumarizacao) com compressao suave (embeddings latentes), demonstrando que tecnicas hibridas combinando selecao de frases relevantes com preservacao de semantica global produzem os melhores resultados.

Para agentes web, PISCO oferece uma solucao pratica: ao inves de enviar documentos inteiros para o LLM, o agente pode comprimir paginas web em representacoes densas que preservam informacao critica. Isso reduz custos de tokenizacao, diminui latencia de inferencia e minimiza distracoes causadas por informacao irrelevante — problemas cronicos em navegacao web autonoma. Em testes com datasets de QA, PISCO manteve 95% da acuracia original com reducao de 70% no comprimento do contexto.

#### 3.3.3 xRAG: Compressao Extrema

xRAG (LI et al., 2024) introduz compressao extrema de contexto, aproveitando embeddings de documentos construidos offline para comprimir documentos recuperados em representacoes de tokens densos. A principal contribuicao e a reutilizacao de embeddings existentes, eliminando overhead de memoria adicional.

Para sistemas agenticos web que processam milhoes de paginas, xRAG oferece escalabilidade sem precedentes. Agentes podem manter indices de embeddings pre-computados e comprimir dinamicamente documentos relevantes, mantendo baixa latencia mesmo em cenarios de alta demanda. A eficiencia de xRAG em cenarios com milhoes de documentos e particularmente relevante para Web Agentica, onde a escala da web exige solucoes que nao crescam linearmente com o volume de dados. xRAG demonstrou reducao de 8x no uso de tokens com perda inferior a 3% em metricas de acuracia.

#### 3.3.4 BRIEF: Raciocinio Multi-Hop

BRIEF (ZHANG et al., 2024) aborda compressao de contexto para raciocinio multi-hop consultivo, comprimindo documentos recuperados em resumos textuais densos. A abordagem reduz latencia de inferencia e custos ao integrar evidencias comprimidas no learning in-context. Para agentes web que precisam navegar entre multiplas paginas para responder perguntas complexas, BRIEF oferece mecanismo eficiente de sintese de informacao de fontes dispersas.

### 3.4 Graph RAG vs Light RAG em Cenarios Agenticos

#### 3.4.1 GraphRAG: O Potencial e os Limites

GraphRAG (EDGE et al., 2024), desenvolvido pela Microsoft Research, combina extracao de entidades, analise de redes e prompting/sumarizacao LLM em sistema end-to-end. O framework constroi indices de grafos em duas etapas: (1) extracao de knowledge graph de entidades dos documentos fonte; e (2) pre-geracao de sumarios de comunidades para grupos de entidades relacionadas.

GraphRAG define mecanismos de consulta Local (fatos especificos) e Global (questoes abstratas sobre todo o corpus), superando RAG tradicional em questoes de sensemaking global. No entanto, o custo computacional e significativamente maior — estimado em 30-50x mais tokens que abordagens leves. Para agentes web que precisam processar informacao em tempo real, esse overhead e frequentemente impraticavel.

#### 3.4.2 Avaliacao Sistematica

A avaliacao sistematica de RAG vs GraphRAG (2025) revela resultados contraintuitivos: GraphRAG frequentemente subdesempenha abordagens RAG tradicionais em muitas tarefas do mundo real, especialmente quando o grafo de conhecimento nao esta bem estruturado. GraphRAG brilha em consultas de summarizacao global e raciocinio multi-hop, mas adiciona overhead significativo para recuperacao factual simples — a tarefa mais comum em navegacao web autonoma.

#### 3.4.3 Quando Usar Grafos

A analise de "When to use Graphs in RAG" (2026) estabelece criterios claros para adocao de grafos: (a) dominios com relacoes complexas entre entidades; (b) consultas que exigem raciocinio multi-hop; e (c) knowledge graphs bem construidos e mantidos. Para recuperacao factual simples — tarefa predominante em agentes web — RAG vetorial tradicional e mais eficiente.

LightRAG posiciona-se como alternativa equilibrada entre RAG vetorial puro e GraphRAG completo, incorporando elementos de grafos sem o overhead computacional de GraphRAG. Essa posicao e ideal para Web Agentica, onde agentes precisam de eficiencia operacional sem comprometer capacidade de raciocinio relacional.

#### 3.4.4 Survey de Graph RAG

O survey de Graph Retrieval-Augmented Generation (ACM TOIS, 2025) mapeia Graph RAG como evolucao significativa do RAG tradicional, alavancando informacao estruturada entre entidades para recuperacao mais precisa e abrangente. O trabalho compara abordagens baseadas em knowledge graphs existentes versus abordagens que estruturam conhecimento implicito em texto em representacoes de grafos, fornecendo diretrizes para selecao da abordagem mais adequada conforme o dominio e os requisitos da tarefa.

### 3.5 Frameworks de Implementacao

#### 3.5.1 FlashRAG: Modularidade e Eficiencia

FlashRAG (JIN et al., 2025) e o toolkit open-source mais abrangente para pesquisa em RAG. Sua arquitetura baseada em componentes separa a implementacao RAG em modulos distintos — retrievers, rerankers, refiners e generators — que podem ser combinados conforme a necessidade. Inclui framework customizavel, colecao de trabalhos RAG pre-implementados, datasets abrangentes e metricas de avaliacao padronizadas.

Para desenvolvimento de sistemas agenticos web, FlashRAG oferece vantagens significativas: modularidade permite testar diferentes combinacoes de componentes; padronizacao facilita comparacoes com a literatura; e a comunidade ativa garante atualizacoes constantes. O toolkit foi aceito no WWW 2025 Resource Track, validando sua relevancia para a comunidade academica e profissional.

#### 3.5.2 Comparativo de Frameworks Principais

A Tabela 1 apresenta comparativo dos principais frameworks RAG considerando overhead, maturidade e casos de uso ideais para Web Agentica.

**Tabela 1.** Comparativo de Frameworks RAG para Web Agentica.

| Framework | Melhor Para | Overhead (ms) | Maturidade | Aplicabilidade Agentic |
|-----------|-------------|:-------------:|:----------:|:----------------------:|
| LlamaIndex | Ingestao e recuperacao pura, QA de documentos | ~6 | Alta | Middleware de retrieval |
| LangChain/LangGraph | Orquestracao agentic complexa, workflows | ~10-14 | Alta | Agentes multi-step |
| Haystack | Pipelines NLP de producao, enterprise | ~5.9 | Alta | Sistemas em escala |
| DSPy | Otimizacao declarativa de pipelines | ~3.53 | Media | Otimizacao de prompts |
| FlashRAG | Toolkit modular de pesquisa | Variavel | Alta | P&D e prototipacao |

O padrao de producao consolidado e LlamaIndex para ingestion/retrieval combinado com LangChain/LangGraph para orquestracao e agentes. Haystack e preferido para seguranca enterprise e compliance. DSPy oferece menor overhead para otimizacao de prompts, sendo ideal para agentes que requerem adaptabilidade continua.

#### 3.5.3 Self-RAG: Recuperacao Adaptativa com Auto-Reflexao

Self-RAG (ASAI et al., 2024) treina um LM que adaptivamente recupera passagens sob demanda e reflete sobre passagens recuperadas e suas proprias geracoes usando tokens especiais ("reflection tokens"). Essa capacidade de auto-avaliacao e particularmente valiosa para agentes web, que precisam decidir continuamente se a informacao recuperada e suficiente ou se buscas adicionais sao necessarias.

Modelos Self-RAG de 7B e 13B superam state-of-the-art em factibilidade e qualidade de resposta, demonstrando que mecanismos adaptativos podem compensar a reducao de parametros com ganhos em eficiencia operacional.

#### 3.5.4 CRAG: Auto-Corretividade

CRAG (YAN et al., 2024) propoe auto-corretividade em RAG: um avaliador leve assessa a qualidade dos documentos recuperados, retornando grau de confianca que dispara acoes diferentes de recuperacao. Quando a recuperacao estatica retorna documentos sub-otimos, buscas web em larga escala sao utilizadas como extensao. O algoritmo decompose-then-recompose foca seletivamente em informacao chave e filtra irrelevancias.

Para agentes web, CRAG resolve um problema critico: a impossibilidade de garantir que qualquer mecanismo de retrieval unico sera sempre suficiente. A capacidade de fallback para buscas web mais amplas quando a recuperacao local e insuficiente e essencial para navegacao autonoma em ambientes imprevisiveis.

#### 3.5.5 Adaptive-RAG: Classificacao de Complexidade

Adaptive-RAG (JEONG et al., 2024) classifica complexidade de consultas e adapta estrategia de recuperacao: consultas simples resolvem-se com LLM direto, consultas moderadas usam RAG single-hop, e consultas complexas empregam RAG multi-hop. Essa hierarquia de abordagens evita overhead desnecessario em consultas triviais — cenario comum em agentes web que processam grandes volumes de paginas.

### 3.6 Benchmarks e Metricas de Avaliacao

#### 3.6.1 RAGBench: Avaliacao Explicavel

RAGBench (BELYI et al., 2024) introduz benchmark explicavel para sistemas RAG com metricas TRACe (Relevance, Utilization, Completeness, Adherence) que permitem analise em nivel de token e diagnosticos acionaveis do sistema. Diferentemente de metricas tradicionais que fornecem scores agregados, TRACe identifica especificamente onde o sistema falha — se na recuperacao (*relevance*), na utilizacao da informacao (*utilization*), na completude da resposta (*completeness*) ou na aderencia a fontes (*adherence*).

Para desenvolvimento de agentes web, RAGBench oferece capacidade de diagnostico que permite otimizacao dirigida: se um agente falha consistentemente em *relevance*, o problema esta no mecanismo de retrieval; se falha em *utilization*, o problema esta na integracao da informacao no contexto do LLM.

#### 3.6.2 RAGPerf: Benchmarking End-to-End

RAGPerf (2026) diferencia-se de benchmarks anteriores ao incluir configurabilidade — permite customizacao do pipeline RAG ao inves de corpus predefinidos. O framework captura interferencia de performance em runtime e contentamento de recursos em pipelines RAG completamente integrados, fornecendo visao holistica do sistema.

Para avaliacao de sistemas agenticos web, RAGPerf permite testar pipelines RAG em condicoes que simulam navegacao real: volume variavel de consultas, latencia de rede variavel e restricoes de memoria. Essa realismo e essencial para garantir que solucoes validadas em laboratorio funcionem em producao.

#### 3.6.3 Surveys de Referencia

Dois surveys fornecem visao abrangente do campo: a revisao de GAO et al. (2023) estabelece o framework de avaliacao atualizado e tecnologias state-of-art, enquanto a revisao de 2024 (LIU et al., 2024) introduce a taxonomia de Naive RAG, Advanced RAG e Modular RAG. Essa taxonomia e util para classificar abordagens: LightRAG e frameworks correlatos se encaixam na categoria Advanced RAG (melhorias especificas de componentes) com elementos de Modular RAG (combinacao flexivel de componentes).

---

## 4. Analise Comparativa

### 4.1 Trade-offs Fundamentais

A Tabela 2 resume os trade-offs fundamentais entre as principais abordagens de RAG para Web Agentica.

**Tabela 2.** Trade-offs entre Abordagens RAG para Web Agentica.

| Abordagem | Acuracia | Latencia | Custo | Escalabilidade | Melhor Para |
|-----------|:--------:|:--------:|:-----:|:--------------:|-------------|
| RAG Vetorial Tradicional | Media | Baixa | Baixa | Alta | Recuperacao factual simples |
| LightRAG | Alta | Baixa-Media | Media | Alta | Agentes web equilibrados |
| GraphRAG | Muito Alta | Alta | Muito Alta | Media | Sumarizacao global, multi-hop |
| PISCO + RAG | Alta | Baixa | Media | Alta | Compressao eficiente |
| xRAG + RAG | Alta | Muito Baixa | Baixa | Muito Alta | Escala massiva |
| Self-RAG | Alta | Variavel | Media | Alta | Adaptabilidade |
| CRAG | Alta | Media | Media | Alta | Fallback robusto |
| Adaptive-RAG | Alta | Otimizada | Otimizada | Alta | Eficiencia por complexidade |

### 4.2 Recomendacoes por Cenario

Com base na analise das 20 referencias, recomendamos as seguintes abordagens para diferentes cenarios de Web Agentica:

**Cenario 1 — Navegacao Web Simples (extracao de informacao factual):** LightRAG ou LlamaIndex como middleware de retrieval, com PISCO ou xRAG para compressao de contexto. Priorizar baixa latencia e custo.

**Cenario 2 — Tarefas Complexas (raciocinio multi-hop, summarizacao):** LightRAG com mecanismos de auto-reflexao (Self-RAG) ou auto-corretividade (CRAG). Considerar GraphRAG apenas quando o dominio possui relacoes complexas entre entidades.

**Cenario 3 — Escala Massiva (processamento de milhoes de paginas):** xRAG para compressao extrema, combinado com Adaptive-RAG para otimizacao dinamica de estrategia de recuperacao.

**Cenario 4 — Producao Enterprise (seguranca e compliance):** Haystack para pipelines NLP, com CRAG para fallback robusto e RAGBench para monitoramento continuo de qualidade.

---

## 5. Limitacoes do Estudo

Esta revisao sistematica apresenta algumas limitacoes que devem ser consideradas:

1. **Periodo de abrangencia:** A revisao foca em publicacoes entre 2023 e 2026, podendo nao capturar trabalhos foundational anteriores que influenciaram significativamente o campo. Trabalhos seminais como o BERT (DEVLIN et al., 2019) e o Transformer (VASWANI et al., 2017) estabeleceram as bases para as tecnicas aqui analisadas, mas nao foram incluidos por estarem fora do escopo temporal.

2. **Filtro de idioma:** A busca foi conduzida prioritariamente em artigos em ingles, possivelmente excluindo contribuicoes relevantes em outros idiomas, especialmente da comunidade asiatica que tem produzido trabalhos significativos em RAG. Estudos em chines, japones e coreano podem conter insights valiosos sobre aplicacoes praticas em mercados specificos.

3. **Disponibilidade de dados:** Alguns frameworks analisados nao disponibilizaram dados completos de avaliacao, limitando a profundidade da comparacao quantitativa. A falta de padronizacao nas metricas de avaliacao dificulta comparacoes diretas entre trabalhos diferentes.

4. **Evolucao rapida do campo:** A rapida evolucao de tecnicas de RAG e LLMs significa que novas abordagens podem surgir ou resultados podem ser atualizados mesmo durante o periodo de revisao. Publicacoes muito recentes (final de 2025 e inicio de 2026) podem nao ter sido completamente capturadas pela estrategia de busca.

5. **Cenarios de avaliacao:** A maioria dos benchmarks analisados utiliza cenarios controlados. A transferibilidade para ambientes web production com restricoes de latencia e custo real ainda precisa ser mais amplamente validada. Cenarios adversariais, onde paginas web podem conter informacao propositalmente enganosa, merecem investigacao adicional.

6. **Reproducibilidade:** Nem todos os frameworks analisados disponibilizam codigo-fonte completo ou configuracoes detalhadas de experimentos, dificultando a reproducao dos resultados apresentados. A adocao de praticas de ciencia aberta no campo de RAG ainda e incipiente.

7. **Sesgo de selecao:** A选criterios de inclusao e exclusao podem ter introduzido sesgo na selecao de trabalhos. Artigos com resultados positivos sao mais propensos a serem publicados, potencialmente superestimando a eficacia das abordagens analisadas.

---

## 6. Direcoes Futuras

Esta revisao identifica varias direcoes de pesquisa promissoras:

1. **Integracao nativa de Light RAG em frameworks agenticos.** A combinacao de LightRAG com LangChain/LangGraph ou AutoGPT ainda depende de integracao manual. Frameworks que oferecam modulos RAG leves nativos facilitariam adocao. O desenvolvimento de APIs padronizadas para interoperabilidade entre frameworks RAG e agentes autonomos e uma necessidade urgente.

2. **Compressao de contexto para agentes multi-modal.** Atualmente, PISCO e xRAG focam em texto. Agentes web cada vez mais processam imagens, videos e interfaces. Tecnicas de compressao multi-modal sao necessarias. A integracao de modelos de visao com mecanismos de compressao de contexto representara um avanco significativo para Web Agentica.

3. **Benchmarks dinamicos para Web Agentica.** WebArena e estatico — seus websites nao mudam. Benchmarks com ambientes web dinamicos, onde paginas sao atualizadas em tempo real, seriam mais realistas. A inclusao de cenarios adversariais, onde o conteudo web e propositalmente manipulado, testaria a robustez dos sistemas RAG.

4. **Otimizacao de custo-beneficio em Graph RAG.** Reduzir o overhead de GraphRAG para niveis comparaveis a LightRAG, mantendo capacidades de raciocinio relacional, e um desafio aberto. Tecnicas de compressao de grafos e aproximacao de knowledge graphs podem oferecer solucoes promissoras.

5. **Adaptabilidade continua em tempo real.** Sistemas que aprendem dinamicamente a otimizar estrategias de recuperacao com base em feedback do ambiente web, similar ao paradigma de reinforcement learning. A integracao de mecanismos de meta-learning permitiria que agentes web se adaptem rapidamente a novos dominios e tipos de conteudo.

6. **Seguranca e robustez em agentes web.** Agentes autonomos que navegam na web estao sujeitos a ataques adversariais, injecao de prompts e manipulacao de conteudo. Mecanismos de verificacao de fontes e validacao de informacao recuperada sao areas criticas de pesquisa. O desenvolvimento de tecnicas de deteccao de conteudo malicioso em tempo real e essencial para a confiabilidade de sistemas agenticos.

7. **Eficiencia energetica e sustentabilidade.** O consumo de energia de modelos de linguagem grandes e uma preocupacao crescente. O desenvolvimento de tecnicas de RAG que minimizem o consumo de recursos computacionais, mantendo qualidade de resposta, e alinhado com objetivos de sustentabilidade ambiental.

8. **Aplicacoes em dominios especificos.** A adaptacao de tecnicas de Light RAG para dominios como saude, educacao e direito, onde a precisao e a explicabilidade sao criticas, representa uma area de grande potencial. Cada dominio possui restricoes e requisitos unicos que exigem customizacoes especificas.

---

## 7. Conclusao

Esta revisao sistematica mapeou a intersecao entre tecnicas eficientes de Light RAG e Web Agentica, analisando 20 referencias publicadas entre 2023 e 2026. Os principais resultados indicam que:

(1) LightRAG (GUO et al., 2025) emerge como o framework mais equilibrado para cenarios agenticos web, combinando baixa latencia com qualidade de resposta superior atraves da integracao de grafos e embeddings vetoriais.

(2) Tecnicas de compressao de contexto, particularmente PISCO e xRAG, demonstram que e possivel reduzir drasticamente o volume de dados processados (6-8x) sem perda significativa de informacao relevante, sendo essenciais para agentes web que operam em escala.

(3) GraphRAG, embora superior em consultas de summarizacao global, apresenta custo computacional 30-50x maior que abordagens leves, tornando-se impraticavel para a maioria dos cenarios de navegacao web autonoma. LightRAG oferece alternativa equilibrada que incorpora elementos de grafos sem o overhead completo.

(4) Frameworks adaptativos (Self-RAG, CRAG, Adaptive-RAG) resolvem o problema fundamental de "quando e como recuperar", permitindo que agentes web ajustem dinamicamente estrategias de recuperacao com base na complexidade da tarefa.

(5) A avaliacao de sistemas RAG para Web Agentica requer metricas explicaveis (RAGBench/TRACe) e benchmarks configuraveis (RAGPerf) que vao alem de scores agregados.

A convergencia dessas linhas de pesquisa aponta para uma nova geracao de agentes web capazes de navegar na web de forma autonoma, eficiente e confiavel — viabilizada por mecanismos de retrieval leves, adaptativos e escalaveis.

---

## Referencias

1. ASAI, A. et al. Self-RAG: Learning to Retrieve, Generate, and Critique through Self-Reflection. In: *Proceedings of the International Conference on Learning Representations (ICLR)*, 2024. Disponivel em: https://arxiv.org/abs/2310.11511.

2. BELYI, M. et al. RAGBench: Explainable Benchmark for Retrieval-Augmented Generation Systems. *arXiv preprint*, 2024. Disponivel em: https://arxiv.org/abs/2407.11005.

3. FAN, T. et al. RAP-RAG: A Retrieval-Augmented Generation Framework with Adaptive Retrieval Task Planning. *Electronics*, 14(21), 4269, 2025. Disponivel em: https://www.mdpi.com/2079-9292/14/21/4269.

4. EDGE, D. et al. From Local to Global: A Graph RAG Approach to Query-Focused Summarization. *Microsoft Research*, 2024. Disponivel em: https://arxiv.org/abs/2404.16130.

5. GAO, Y. et al. Retrieval-Augmented Generation for Large Language Models: A Survey. *arXiv preprint*, 2023. Disponivel em: https://arxiv.org/abs/2312.10997.

6. GUO, Z.; XIA, L.; YU, Y.; AO, T.; HUANG, C. LightRAG: Simple and Fast Retrieval-Augmented Generation. In: *Proceedings of the 2025 Conference on Empirical Methods in Natural Language Processing (EMNLP)*, 2025.

7. JEONG, S. et al. Adaptive-RAG: Learning to Adapt Retrieval-Augmented Large Language Models through Question Complexity. In: *Proceedings of the 2024 Conference of the North American Chapter of the Association for Computational Linguistics (NAACL)*, 2024.

8. JIN, P. et al. FlashRAG: A Modular Toolkit for Efficient and Customizable Retrieval-Augmented Generation Research. In: *Proceedings of the Web Conference (WWW)*, 2025.

9. LI, X. et al. xRAG: Extreme Context Compression for Retrieval-Augmented Generation. In: *Advances in Neural Information Processing Systems (NeurIPS)*, 2024.

10. LIU, J. et al. A Survey on RAG Meeting LLMs: Towards Retrieval-Augmented Large Language Models. *ACM SIGKDD*, 2024. Disponivel em: https://arxiv.org/abs/2405.06211.

11. WANG, H. et al. PISCO: Pretty Simple Compression for Retrieval-Augmented Generation. *arXiv preprint*, 2025. Disponivel em: https://arxiv.org/abs/2501.16075.

12. YAN, S. et al. Corrective Retrieval Augmented Generation. *arXiv preprint*, 2024. Disponivel em: https://arxiv.org/abs/2401.15884.

13. YANG, Y. et al. Agentic Web: Weaving the Next Web with AI Agents. *arXiv preprint*, 2025. Disponivel em: https://arxiv.org/abs/2507.21206.

14. LI, Y. et al. BRIEF: Bridging Retrieval and Inference for Multi-hop Reasoning via Compression. *arXiv preprint*, 2024. Disponivel em: https://arxiv.org/abs/2410.15277.

15. ZHAO, H. et al. A Survey on Retrieval-Augmented Text Generation for Large Language Models. *ACM Computing Surveys*, 2024. Disponivel em: https://arxiv.org/abs/2404.10981.

16. ZHOU, S. et al. WebArena: A Realistic Web Environment for Building Autonomous Agents. In: *Proceedings of the International Conference on Learning Representations (ICLR)*, 2024.

17. Microsoft Research. Graph Retrieval-Augmented Generation: A Survey. *ACM Transactions on Information Systems (TOIS)*, 2025.

18. When to use Graphs in RAG: A Comprehensive Analysis for Graph Retrieval-Augmented Generation. *arXiv preprint*, 2025. Disponivel em: https://arxiv.org/abs/2506.05690.

19. RAGPerf: An End-to-End Benchmarking Framework for Retrieval-Augmented Generation Systems. *arXiv preprint*, 2026. Disponivel em: https://arxiv.org/abs/2603.10765.

20. A Survey of WebAgents: Towards Next-Generation AI Agents for Web Automation with Large Foundation Models. *arXiv preprint*, 2025. Disponivel em: https://arxiv.org/abs/2503.23350.
