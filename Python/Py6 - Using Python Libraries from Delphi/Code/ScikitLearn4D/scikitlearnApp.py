# Create synthetic data for classification
from numpy import where
from sklearn.datasets import make_classification
import matplotlib.pyplot as plt

# Define dataset
X, y = make_classification(n_samples=1000, n_features=2, n_informative=2, n_redundant=0, n_clusters_per_class=1, random_state=4)

# Create scatter plot for samples from each class
for class_value in range(2):
	# Get row indexes for samples with this class
	row_ix = where(y == class_value)
	# Create scatter of these samples
	plt.scatter(X[row_ix, 0], X[row_ix, 1])
# Show the plot
plt.savefig("scikitlearnImage.jpg")