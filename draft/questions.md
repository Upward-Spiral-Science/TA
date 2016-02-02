###Questions About my Project

We have D datasets, each with N<sub>i</sub> subjects, for i = 1...D.<br/>
Each dataset contains graphs, G<sub>n<sub>i</sub></sub> = (V, E, A, Y) for n=1...N<sub>i</sub>.<br/>
V is in the set of \mathcal\{V\}, with cardinality |V|. \mathcal\{V\} is the same across all datasets.<br/>
E is in the set of \mathcal\{E\} = \{V x V: V<sub>j</sub> ~ V<sub>k</sub>\}, for j,k = 1...|V|.<br/>
A is an edge attribute which indicates weight and belongs to the set \mathbb\{R\}<sup>+</sup>.Implicitly, |A| = |E|. <br/> 
Y are class labels and belong to the set {0,1}, and indicate subject gender.

**Descriptive** <br />
- *What is N<sub>i</sub> for all i?*
- *What is |V|?*
- *What is the dynamic range of A?*

**Exploratory** <br />
- *Are there common clusters in the graphs?*
- *What is the average number of edges in a graph?*
- *What is the underlying distribution the graphs?*

**Inferential** <br />
- *Are graphs from different datasets sampled from the same distribution?*


**Predictive** <br />
- *Can we identify gender based on the structure of the graphs?*

**Causal** <br />
- *What is different in the brain between males and females which allows us classify them?*

**Mechanistic** <br />
- *How in cranial development do males and females differ such that the observed differences come into be?*
