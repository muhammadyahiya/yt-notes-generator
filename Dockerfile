# # Use an official Python runtime as a parent image
# FROM python:3.9-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Update package list and install FFmpeg
# RUN pip3 install ffmpeg-python
# RUN apt-get update && apt-get install -y ffmpeg

# # Install any needed packages specified in requirements.txt
# RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
# EXPOSE 80

# # Define environment variable
# ENV NAME World

# # Run app.py when the container launches
# # CMD ["python3", "app.py"]
# CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]



# Use the Miniconda3 image as a parent image
FROM continuumio/miniconda3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create a new Conda environment with Python 3.11
RUN pip3 install ffmpeg-python
RUN apt-get update && apt-get install -y ffmpeg
RUN conda create -n yt_notes_generator python=3.11

# Activate the Conda environment and install dependencies
RUN /bin/bash -c "source activate yt_notes_generator && \
    pip3 install --no-cache-dir -r requirements.txt "
    ## conda install -c conda-forge ffmpeg

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run Streamlit app when the container launches
# CMD ["/bin/bash", "-c", "source activate yt_notes_generator && streamlit run app.py --server.port=8501 --server.address=0.0.0.0"]
CMD ["/bin/bash", "-c", "source activate yt_notes_generator && streamlit run app.py --server.port=8501"]
