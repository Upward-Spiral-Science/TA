###Questions About my Project

We have D datasets, each with N<sub>i</sub> subjects, for i = 1...D.<br/>
Each dataset contains graphs, G<sub>n<sub>i</sub></sub> = (V, E, A, Y) for n<sub>i</sub>=1...N<sub>i</sub>.<br/>
V is in the set of \mathcal\{V\}, with cardinality |V|. We know that \mathcal\{V\} is the same across all datasets.<br/>
E is in the set of \mathcal\{E\} = \{V x V: V<sub>m</sub> ~ V<sub>p</sub>\}, for m,p = 1...|V|.<br/>
A is an edge attribute which indicates weight and belongs to the set \mathbb\{R\}<sup>+</sup>.Implicitly, |A| = |E|. <br/> 
Y are class labels and belong to the set {0,1}, and indicate subject gender.

**Descriptive** <br />
- *What is N<sub>i</sub> for all i?*

  > 42, 454, and 114 for KKI2009, SWU4, and MRN114, respectively

- *What is |V|?*

  > 70


- ~~*Are there graphs G<sub>n<sub>i</sub></sub> that are expected but not present?*~~

  > Because the csv files were unavailable we didn't know how to answer the 'expected' number of graphs aside from those we had available to us.


- *Do the graphs G<sub>n<sub>i</sub></sub> contain any values of A that cannot be processed traditionally (i.e. inf, NaN)?*

  > No

- *How sparse, |E<sub>n<sub>i</sub></sub>| / |V<sub>n<sub>i</sub></sub>|x|V<sub>n<sub>i</sub></sub>|, are the graphs?*

  > We answered this question without thresholding edge weights. If edges have a weight of 1 (which is relatively insignificant) we could throw those out for a more informative estimate of useful edges and functional sparsity in the graph.

**Exploratory** <br />
- *What is mean(|E|) for each dataset i?*

  > 1396, 2848, and 2862 for KKI2009, SWU4, and MRN114, respectively

- *What is the average graph, where average here means the graph consiting of edges and weights corresponding to the average weight of a given potential edge across the all the datasets?*

  > Shown in the code

- ~~*What is the distribution of max(A)-min(A) (i.e. dynamic range) for each dataset i?*~~

  > This question was not answered as it didn't seem as informative as the following. Instead, we asked and answered "what is the weight distribution of edge weights for each dataset".

**Inferential** <br />
- *If graphs G<sub>n<sub>i</sub></sub> and G<sub>n<sub>j</sub></sub> for all i != j are processed the same way, is descriminability maximized?*

If our brains are samples X<sub>i</sub> in \mathcal\{X\}, then the observed graphs are Y<sub>i</sub><sup>q</sup> = f<sub>q</sub>(X<sub>i</sub>), for processing strategies f<sub>q</sub> where q=1,...,Q, and where f<sub>q</sub>: X<sub>i</sub> \sim Y<sub>i</sub>. If we are asking whether or not using the same functional f improves descriminability, our alernate and hypothesis and null become:

p( ||A<sub>xy</sub> - A<sub>x'y</sub>|| \leq || A<sub>xy</sub> - A<sub>x'y'</sub> || ), where x is the graph observed and y is the label associated with the observed graph. If a superscript indicates processing technique, we have:

*H<sub>A</sub>*: p( ||Y<sub>ij</sub><sup>q</sup> - Y<sub>ij'</sub><sup>q</sup>|| < || Y<sub>ij</sub><sup>q</sup> - Y<sub>i'j'</sub><sup>q'</sup> || ) <br/>
*H<sub>0</sub>*: p( ||Y<sub>ij</sub><sup>q</sup> - Y<sub>ij'</sub><sup>q</sup>|| \geq || Y<sub>ij</sub><sup>q</sup> - Y<sub>i'j'</sub><sup>q'</sup> || )

**Predictive** <br />
- *What is the best classifier, h*, of the form h in \mathcal\{H\} such that h: G<sub>n<sub>i</sub></sub>=(V, E, W) \to Y<sub>n<sub>i</sub></sub>?*

**Causal** <br />
- *How does gender (i.e. Y=\{0,1\}) influence the structure of the brain?*

**Mechanistic** <br />
- *How does a difference in gene expression across genders thoughout development influence the structure of the brain?*
