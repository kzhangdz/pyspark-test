# pyspark-test
Created container based on jupyter/all-spark-notebook image
- specified port 4040 and 8888
- specified directory /home/jovyan/work

Can use a docker volume for a persistent workspace.
This command run in my repository can point my files to the /home/jovyan/work directory
docker run -it --rm -p 8888:8888 -v "$(pwd)":/home/jovyan/work jupyter/all-spark-notebook