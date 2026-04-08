#show heading: set text(font: "Linux Biolinum")

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 1cm, y: 1cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {v(-1pt); line(length: 100%); v(-5pt)}

= Kai Yin
#link("tel:+19793834988")[+1 (979) 326-7628] | 
#link("mailto:kai_yin@tamu.edu") | 
#link("https://github.com/KaiYin97")[github.com/Kai-Yin] |


== Education
#chiline()

*Texas A\&M University (TAMU)* #h(1fr) College Station, TX, USA  \
Ph.D. student in Computer Science.#h(1fr) Expected to graduate in May/2027 \

*Beijing Jiaotong University* #h(1fr) Beijing, China  \
Master of Science in Traffic and Transportation Engineering #h(1fr) Graduated in June/2021 \

*Henan Polytechnic University* #h(1fr) Jiaozuo, China  \
Bachelor of Science in Traffic Engineering #h(1fr) Graduated in June/2019 \

== Research Interests
#chiline()

- *Information Retrieval*: IR model training, IR benchmark automatic development, Knowledge Distillation, Agenetic Deep Research (in progress)
- *Task Planning for LLM-powered multi-agent system*
// - *Retrieval-augmented generation, LLM parameter-efficient-fine-tuning, parallel training* 

== Skills
#chiline()

Python, Pytorch, Autogen, Hugging Face (Transformers, PEFT), Deepspeed

// == Work Experience
// #chiline()

// *Resilitix.AI* #h(1fr) College Station, TX, USA\
// Student Researcher #h(1fr) Sep. 2024 -- Jan. 2025

// *Disaster-Agent*: Develop LLM-based multi-agent system for automatically complex disaster management task solving
// - Propose Efficient Monte Carlo Tree Search for Task Plan (*E_MCTS_TP*) in test time scale to improve *task planning* ability and efficiency of small language model (SLM) in *multi-agent system*
// - Develop *DisasterTool* through *LLM-in-loop domain-specific agent discovery pipeline* which reduces human workloads by *98.9%*.
// - Introduce *DisasterTask benchmark* including user tasks in different complexities through random sampling *tool and data graph* and self-instruct LLM in node, chain, and directed acyclic graph levels.

== Research Projects
#chiline()

*Project 1 -- DMRetriever*: Difficulty-aware Progressive Fine-tuning LLM for Improved Textual Retrieval in Data-Scarce Domain [#link("https://arxiv.org/abs/2510.15087")[ARR Oct/2025 Submission]][OA: 3.5/3.5/3, AC’s Meta Score: 3.5][#link("https://github.com/KaiYin97/DMRETRIEVER")[code]] [#link("https://huggingface.co/DMIR01/DMRetriever")[HuggingFace]] #h(1fr) May. 2025 -- Sept. 2025

- Develop DMRetriever, a family of six dense retrieval models (ranging from 33M to7.6B parameters) initialized from *encoder (BERT)- and decoder- (Qwen)only backbones*, achieving *SOTA results across 48 retrieval tasks within all scales* and *exceptional parameter efficiency*
- Propose *difficulty-aware progressive instruction supervised fine-tuning* to ensure models in different scales learn effectively
- Introduce an *advanced data refinement* method, including domain-specific data synthesis, mutual-agreement-based false positive filtering, and *difficulty-aware hard negative mining*
- Propose *multi-teacher knowledge distillation* to further improve small-sized model performance and achieve parameter-efficiency to ensure on-device model implementation
- Introduce a *light-weight IR validation set*, enabling over *30× faster model development* while maintaining reliable performance rankings

*Project 2 --  DisastIR*: Automatic Information Retrieval Benchmark Construction for Data-Scarce Domain [#link("https://aclanthology.org/2025.findings-emnlp.97/")[EMNLP 2025 Findings]][#link("https://github.com/KaiYin97/Disaster_IR")[code]] [#link("https://huggingface.co/datasets/DMIR01/DisastIR")[HuggingFace]] #h(1fr) Jan. 2025 -- May. 2025

- Develop DisastIR, a comprehensive information retrieval benchmark covering 48 distinct retrieval tasks with over 1.3M automatically labeled query-passage pairs for a data-scarce domain.
- Develop a four-stage *automatic query-passage relevance labeling framework* which fully replaces human labeling, ensures *zero “hole” rate* for model evaluation and achieves *significant consistency* for model performance ranking with human annotations
- Benchmarked 30 retrieval models (33M–7B) under *exact and ANN search*, guiding model selection.

*Project 3 -- Disaster-Agent*: Develop LLM-based multi-agent system for automatically complex disaster management task solving [#link("https://github.com/kaiYinTAMU/Disaster-Agent#h(1fr)")[code]] #h(1fr) Sep. 2024 -- Jan. 2025
- Propose Efficient Monte Carlo Tree Search for Task Plan (*E_MCTS_TP*) in test time scale to improve *task planning* ability and efficiency of small language model (SLM) in multi-agent system
- Develop *DisasterTool* through *LLM-in-loop domain-specific agent discovery pipeline* which reduces human workloads by *98.9%*.
- Introduce *DisasterTask benchmark* including user tasks in different complexities through random sampling *tool and data graph* and self-instruct LLM in node, chain, and directed acyclic graph levels.

*Project 4 --  CrisisSense-LLM*: Instruction Fine-Tuning LLM for Multi-task Social Media Text Processing in Disaster Informatics [#link("https://arxiv.org/abs/2406.15477")[Arxiv]][#link("https://github.com/KaiYin97/CrsisLLM")[code]] #h(1fr) Jan. 2024 -- June. 2024

- Design fine-tuning prompt for *multi-task tuning*: text classification and named entity recognition, in multi-turn conversation format to *instruction fine-tune* Llama3.1-8B in *LORA* and full-parameter tuning settings.
- Searching for hyperparameter combinations of LORA to achieve the *96.7% performance* of full-parameter tuning. Achieve the best performance of *87.2%* for the overall accuracy.
- Fine-tune the model in *data-parallel* in *mixed-precision* setting using *DeepSpeed-Zero-stage-3* to accelerate the training process reducing GPU time *35%*.

*Project 5 -- DisastQA*: A Comprehensive Benchmark for Question Answering Evaluation in Disaster Management [#link("https://arxiv.org/abs/2601.03670")[ARR Jan/2026 Submission]] #h(1fr) May. 2025 -- Sep. 2025

- Develop DisastQA, a Question Answering (QA) benchmark, covering both *multiple choice* and *open-ended question* types with 3,000 QA pairs based on *DisastIR*
- Propose a Human-LLM collaborative pipeline for efficient benchmark development with *key point extraction* for open-ended questions, ensuring its *verifiable evaluation*
- Evaluate 18 LLMs considering different upstream retrieval performances under *no relevant passage (base), only relevant passage (golden), and mixture (mix) settings*

// *Project 6 -- DisastRAG*: Augmenting general-domain LLM through agentic RAG for question answering in disaster management (in progress) #h(1fr) May. 2025 -- Now

// - Constructing a *knowledge base* consisting of both structured and unstructured data through semantical and max token-based *hybrid chunking*
// - Design a *memory management* agent consisting of *core, short- and long-term memory* to support *multi-turn conversation* between human and chatbot
// - Develop a *multi-channel retrieval* and re-ranking system containing vector search (use DMRetriever), keyword search, text2SQL, web search, and vector keyword fusion, together with re-ranking



== Selected Publications [#link("https://scholar.google.com/citations?user=BxI1FVwAAAAJ&hl=en")[Google Scholar]]
#chiline()

*DisastIR: A Comprehensive Information Retrieval Benchmark for Disaster Management.* *Kai Yin*, Xiangjue Dong, Chengkai Liu, et al, Ali Mostafavi, & James Caverlee (2025). EMNLP 2025 Findings


*DMRETRIEVER: A Family of Models for Improved Text Retrieval in Disaster Management.* *Kai Yin*, Xiangjue Dong, Chengkai Liu, Allen Lin, Lingfeng Shi, Ali Mostafavi, & James Caverlee (2025). arXiv preprint arXiv: 2510.15087. (ARR Oct/2025 Submission, OA: 3.5/3.5/3, AC’s meta score: 3.5, committed to ACL 2026)


*CrisisSense-LLM: Instruction Fine-Tuned Large Language Model for Multi-label Social Media Text Classification in Disaster Informatics.* *Kai Yin*, Chengkai Liu, Ali Mostafavi, & Xia Hu. (2024).  arXiv preprint arXiv:2406.15477. (Under second round review of Information Processing and Management)

*DisasterQA: A Comprehensive Benchmark for Question Answering Evaluation in Disaster Management* Zhitong Chen, Kai Yin, Xiangjue Dong, Chengkai Liu, Ali Mostafavi, & James Caverlee (2025). (Co-first author, AC's Meta Score: 3, committed to ACL 2026)

*FloodSQL-Bench: A Retrieval-Augmented Benchmark for Geospatially-Grounded Text-to-SQL.* Hanzhou Liu, *Kai Yin*, Ali Mostafavi, & James Caverlee (2025). arXiv preprint arXiv:2512.12084.

*An integrated resilience assessment model of urban transportation network: A case study of 40 cities in China* Kai Yin, Wu, J., Wang, W., Lee, D. H., & Wei, Y. (Transportation Research Part A).

*Deep Learning-driven Community Resilience Rating based on Intertwined Socio-Technical Systems Features.* *Kai Yin*, Bo Li, Ali Mostafavi (2023). arXiv preprint arXiv:2311.01661. (npj Urban Sustainability)

*Unsupervised graph deep learning reveals emergent flood risk profile of urban areas.* *Kai Yin*, Ali Mostafavi (2023).  arXiv e-prints, arXiv-2309. (Under second round review of npj Urban Sustainability).

== Honors and Awards
#chiline()

- Pass CSE Ph.D. qualify exam with 99% percentile
- National Second Prize, 13th National Undergraduate Transportation Science and Technology Competition (First Author)



