#From the root of the folder run 'docker build -t <ImageName> .'

#Tested on tensorflow/tensorflow and jupyter/datascience-notebook
FROM tensorflow/tensorflow:latest
 
# Install required libraries for working with deep learning
RUN pip install keras seaborn h5py

# Install spacy (NLP) and download for english language
RUN pip install -U spacy
RUN python -m spacy download en