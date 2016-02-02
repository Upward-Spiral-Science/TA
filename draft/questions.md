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
- *Are there graphs G<sub>n<sub>i</sub></sub> that are expected but not present?*
- *Do the graphs G<sub>n<sub>i</sub></sub> contain any values of A that cannot be processed traditionally (i.e. inf, NaN)?*
- *How sparse, |E<sub>n<sub>i</sub></sub>| / |V<sub>n<sub>i</sub></sub>|x|V<sub>n<sub>i</sub></sub>|, are the graphs?*

**Exploratory** <br />
- *What is mean(|E|) for each dataset i?*
- *What is the average graph, where average here means the graph consiting of edges and weights corresponding to the average weight of a given potential edge across the all the datasets?*
- *What is the distribution of max(A)-min(A) (i.e. dynamic range) for each dataset i?*

**Inferential** <br />
- *If graphs G<sub>n<sub>i</sub></sub> and G<sub>n<sub>j</sub></sub> for all i != j are processed the same way, is descriminability maximized?*

Descriminability is defined as: R = p( ||A<sub>xy</sub> - A<sub>x'y</sub>|| \leq || A<sub>xy</sub> - A<sub>x'y'</sub> || ), where x is the graph observed and y is the label associated with the observed graph. If q is the processing technique used to collect the graph, then a subscript qq indicates similar processing across datasets and qq' indicates different processing. Thus, we have:

*H<sub>o</sub>*: R<sub>qq</sub> < R<sub>qq'</sub> <br/>
*H<sub>a</sub>*: R<sub>qq</sub> /geq R<sub>qq'</sub> <br/>

**Predictive** <br />
- *What is the best classifier, h*, of the form h in \mathcal\{H\} such that h: G<sub>n<sub>i</sub></sub>=(V, E, W) \to Y<sub>n<sub>i</sub></sub>?*

**Causal** <br />
- *How does gender (i.e. Y=\{0,1\}) influence the structure of the brain?*

**Mechanistic** <br />
- *How does a difference in gene expression across genders thoughout development influence the structure of the brain?*
