#From the root of the folder run 'docker build -t <ImageName> .'

#Tested on tensorflow/tensorflow and jupyter/datascience-notebook
FROM tensorflow/tensorflow:latest
 
# Install required libraries for working with machine learing, deep learning and visualisation
RUN pip install keras seaborn h5py haversine plotly bokeh

# Install spacy (NLP) and download for english language
RUN pip install -U spacy
RUN python -m spacy download en