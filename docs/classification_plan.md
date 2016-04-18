### Plan for how to classify braingraphs

1. **Exploratory Data Analysis:**   In this step, we look at the available datasets and explore how many dimensions are likely to be profitable for classification.  We will make recommendations for dimensionality reduction using PCA and/or elbows in scree plots.
2. **Covariate selection and standardization:**  Next, we will gather covariates and standardize them, selecting items of interest and hypotheses prior to beginning classification.  For mega-analysis we are probably restricted to gender.
3. **Identify datasets and atlases for initial classification attempts:**  Once we have selected covariates and dimensions on which to classify, we need to select datasets and atlases to explore for our initial experiments.
4. **Survey and selection classification methods:**  Choosing the right classification technique is still an open question.  Initial classifiers include signal subgraphs, LDA, the other methods used for comparison in signal subgraph paper, SVMs (either on vectorized graphs or extracted features), and novel clustering techniques (similar to an expectation-maximization approach).
5. **Run experiments:**  Now that all the pieces are in place, we need to run our experiments and assess performance (e.g., clasification error) and interpretibility of the results.  Depending on the experimental design, this is likely to be completed using either LOO dataset (mega-analysis) or LOO subject (for a targeted variable only present in one dataset).
6. **Consider extensions:**  Finally, we may wish to do additional experiments, such as correcting for batch effects, extensions to other atlases/datasets, and mega analysis.

