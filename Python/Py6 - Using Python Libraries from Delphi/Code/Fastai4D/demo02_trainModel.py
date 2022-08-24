# Training: resnet34
## We will train for 4 epochs (4 cycles through all our data).
learn = cnn_learner(dls, resnet34, metrics=error_rate).to_fp16()
## The implemented models
print(learn.model)
## Learning
print(learn.fit_one_cycle(4))
## Save the learning stage
learn.save('stage-1')

# Results
interp = ClassificationInterpretation.from_learner(learn)
losses,idxs = interp.top_losses()
print(len(dls.valid_ds)==len(losses)==len(idxs))
print(type(interp))