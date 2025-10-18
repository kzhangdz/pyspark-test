# https://www.youtube.com/watch?v=wNEjNAwprnU
# Production dockerfile that will move files from the local directory into the container's /home/jovyan/work directory
# for Development, use a bind mount to link files from local to the container 
# docker run -it --rm -p 8888:8888 -v "$(pwd)":/home/jovyan/work jupyter/all-spark-notebook


# Start from the base jupyter/all-spark-notebook image
FROM jupyter/all-spark-notebook:latest

# Copy your local directory content into the work directory of the image
# The dot (.) on the left refers to the directory where the Dockerfile is located.
COPY . /home/jovyan/work/

# Switch to the non-root user (jovyan)
USER jovyan

# Keep the original entrypoint and command from the base image
