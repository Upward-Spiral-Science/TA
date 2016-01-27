###Does Processing Brain Images With the Same Pipeline Improve The Power of Multi-site Inference Tasks?
*Greg Kiar*

-------------

####Opportunity
With recent advances in processing technologies, mapping the human brain at a 1mm resolution has become a relatively low-burden task for scientists. These processing pipelines can estimate structural or functional connectivity within the brain based on structural MRI and diffusion or functional MRI, respectively. An abundance of such data exists and is currently being collected \[1, 2\] around the globe, but few labs follow the same standard or specifications in their data collection process outside their given facility. Resultantly, the data across sites can be very noticeably different in brightness, contrast, and even texture from one another, making these images - and the scientific claims drawn from them - incredibly difficult to compare.

####Significance
Currently a lack of reliability plagues research \[3, 4\], and MRI research is no exception. This lack of reproducibility calls into question the validity of any scientific claims made, and hinders true unified progress of the scientific community. If a unified processing strategy for non-uniform data exists it would enable researchers to share data, collaborate, and draw stronger scientific results that can be agreed upon and refined by the community. This would enable the data which has already been collected across many facilities to be used in larger-scale analyses, and mitigate the effect of a missing standard in MRI data collection.

####Feasibility
The m2g pipeline \[5\] has been developed estimate structural connectomes with a core set of parameters to maximize the test-retest reliability within datasets. This pipeline has been used to generate brain graphs at multiple scales on several datasets collected across multiple sites. Using this data and the associated covariates, analysie such as classification tasks can be performed on the datasets on a single-site and multi-site basis, and the scientific power of each result compared. 

####Innovation
Leveraging the graphs produced from the m2g pipeline we will attempt to classify subjects based on available covariates, perform and evaluate a series of normalizations for combining the multiple datasets, and then aggregate all data into one massive dataset from which inferences will again be drawn. If successful, this solution will empower reproducible science, remove significant computational duress from researchers, and strengthen future scientific claims.

####References
  - [1] http://www.humanconnectomeproject.org/data/hcp-project/
  - [2] http://fcon_1000.projects.nitrc.org/indi/CoRR/html/
  - [3] http://www.nature.com/nrd/journal/v10/n9/full/nrd3439-c1.html
  - [4] https://doi.org/10.7717/peerj.148
  - [5] http://m2g.io/


