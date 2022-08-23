from fastai.vision.all import *
import matplotlib.pyplot as plt

set_seed(42)

# Batch size
bs = 64

# Look at the data
## Untar data
help(untar_data)
## Path to the data
path = untar_data(URLs.PETS); path
## Display all paths relative to dataset root
Path.BASE_PATH = path
path.ls()
## Take a look at the data and its annotations
path_anno = path/'annotations'
path_img = path/'images'
## Gets the labels from the filenames using a regular expression
fnames = get_image_files(path_img)
print(fnames)

dls = ImageDataLoaders.from_name_re(path, fnames, pat=r'(.+)_\d+.jpg$', item_tfms=Resize(460), bs=bs, batch_tfms=[*aug_transforms(size=224, min_scale=0.75), Normalize.from_stats(*imagenet_stats)])
## Show image
dls.show_batch(max_n=9, figsize=(7,6))
plt.savefig("fastaiImage.jpg")
## Print image annotation vocabularies
print(dls.vocab)
print(len(dls.vocab),dls.c)
