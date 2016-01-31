###Does Processing Brain Images With the Same Pipeline Improve The Power of Multi-site Inference Tasks?
*Greg Kiar*

-------------

### Draft 2

#### Opportunity
With recent advances in processing technologies, mapping the human brain at a 1mm resolution has become a relatively low-burden task for scientists. These processing pipelines can estimate structural or functional connectivity within the brain based on structural MRI and diffusion or functional MRI, respectively. An abundance of such data exists and is currently being collected \[1, 2\] around the globe, but few labs follow the same standard or specifications in their data collection process outside their given facility. Resultantly, the data across sites can be very noticeably different in brightness, contrast, and even texture from one another, making these images - and the scientific claims drawn from them - incredibly difficult to compare. This lack of reliability and reproducibility plagues research \[3, 4\], and is not limited to MRI. This problems calls into question the validity of any scientific claims made, and hinders true unified progress of the scientific community. If a unified processing strategy for non-uniform data exists it would enable researchers to share data, collaborate, and draw stronger scientific results that can be agreed upon and refined by the community.

#### Significance
If a processing pipeline existed which strengthened the scientific claims made across pooled data it would have potential to dramatically increase the rate at which scientific claims are developed. In MRI connectomics this means that development of the understanding of macroscale brain connectivity patterns and development of diagnostic classifiers can be expedited, leading to better treatment and awareness of mental illness. Approximately 1 in 5 adults suffers from mental illness in a given year \[5\] in the United States. Many of these illnesses, such as Alzheimer's Disease, Autism Spectrum Disorders, ADHD, and  Schizophrenia could be described as connectopathies \[6\] and may appear when observing the connectome. Enabling cross-study collaboration and pooling of data would increase the rate at which diagnostic and treatment tools can be developed for these disorders, influencing the lives of millions of people.

#### Feasability
The m2g pipeline \[7\] has been developed estimate structural connectomes with a core set of parameters to maximize the test-retest reliability within datasets. This pipeline has been used to generate brain graphs at multiple scales on several datasets collected across multiple sites. Using this data and the associated covariates, analyses such as classification tasks can be performed on the datasets on a single-site and multi-site basis, and the scientific power of each result compared. 

####Innovation
Leveraging the graphs produced from the m2g pipeline we will attempt to classify subjects based on available covariates, perform and evaluate a series of normalizations for combining the multiple datasets, and then aggregate all data into one massive dataset from which inferences will again be drawn. If successful, this solution will empower reproducible science, remove significant computational duress from researchers, and strengthen future scientific claims.


####References
  - [1] http://www.humanconnectomeproject.org/data/hcp-project/
  - [2] http://fcon_1000.projects.nitrc.org/indi/CoRR/html/
  - [3] http://www.nature.com/nrd/journal/v10/n9/full/nrd3439-c1.html
  - [4] https://doi.org/10.7717/peerj.148
  - [5] http://www.nimh.nih.gov/health/statistics/prevalence/any-mental-illness-ami-among-us-adults.shtml
  - [6] http://www.ncbi.nlm.nih.gov/pubmed/22196113
  - [7] http://m2g.io/


------------
##Jovo says:
####Opportunity
"What awesome things are happening"

####Significance
"How much does it affect a person, and how many people does it affect"

####Feasibility
"To what degree can we solve the problem with the time and resources we have"

####Innovation
"Of relative importance, depending where you work"
