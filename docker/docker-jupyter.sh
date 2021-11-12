docker build --tag docker-gpu-image .
docker run --gpus all -it --rm --net="host" --name "docker-gpu" -v cd .. :"/root/pythonprojects" docker-gpu-image:latest bash -c "cd /root/pythonprojects && jupyter-notebook --allow-root"
