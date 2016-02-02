###Questions About my Project

We have D datasets, each with N<sub>i</sub> subjects, for i = 1...D.<br/>
Each dataset contains graphs, G<sub>n<sub>i</sub></sub> = (V, E, A, Y) for n<sub>i</sub>=1...N<sub>i</sub>.<br/>
V is in the set of \mathcal\{V\}, with cardinality |V|. We know that \mathcal\{V\} is the same across all datasets.<br/>
E is in the set of \mathcal\{E\} = \{V x V: V<sub>m</sub> ~ V<sub>p</sub>\}, for m,p = 1...|V|.<br/>
A is an edge attribute which indicates weight and belongs to the set \mathbb\{R\}<sup>+</sup>.Implicitly, |A| = |E|. <br/> 
Y are class labels and belong to the set {0,1}, and indicate subject gender.

**Descriptive** <br />
- *What is N<sub>i</sub> for all i?*
- *What is |V|?*

**Exploratory** <br />
- *What is mean(|E|) for each dataset i?*
- *What is the distribution of max(A)-min(A) (i.e. dynamic range) for each dataset i?*

**Inferential** <br />
- *If graphs G<sub>n<sub>i</sub></sub> and G<sub>n<sub>j</sub></sub> for all i != j are processed the same way, is descriminability maximized?*

*H<sub>o</sub>*: Processing graphs G<sub>n<sub>i</sub></sub> and G<sub>n<sub>j</sub></sub> for all i != j similarly does not improve discriminability <br/>
*H<sub>a</sub>*: Processing graphs G<sub>n<sub>i</sub></sub> and G<sub>n<sub>j</sub></sub> for all i != j similarly produces maximized descriminability

**Predictive** <br />
- *Can we identify Y<sub>n<sub>i</sub></sub> given and unlabeled graph G<sub>n<sub>i</sub></sub>(V, E, W)?*

**Causal** <br />
- *What is different in the brain between subjects of classes Y=0 and Y=1 which allows us classify them?*

**Mechanistic** <br />
- *How in cranial development do males and females differ such that the observed differences come into be?*
