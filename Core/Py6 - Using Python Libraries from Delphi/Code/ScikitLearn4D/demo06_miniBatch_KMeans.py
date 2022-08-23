# Mini-batch k-means clustering
from numpy import unique
from numpy import where
from sklearn.datasets import make_classification
from sklearn.cluster import MiniBatchKMeans
import matplotlib.pyplot as plt

# Define dataset
X, _ = make_classification(n_samples=1000, n_features=2, n_informative=2, n_redundant=0, n_clusters_per_class=1, random_state=4)
# Define the model
model = MiniBatchKMeans(n_clusters=2)
# Fit the model
model.fit(X)
# Assign a cluster to each example
yhat = model.predict(X)
# Retrieve unique clusters
clusters = unique(yhat)

# Create scatter plot for samples from each cluster
for cluster in clusters:
	# Get row indexes for samples with this cluster
	row_ix = where(yhat == cluster)
	# Create scatter of these samples
	plt.scatter(X[row_ix, 0], X[row_ix, 1])
# Show the plot
plt.savefig("scikitlearnImage.jpg")