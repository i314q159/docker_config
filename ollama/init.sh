# cpu
docker run -d --gpus=all -v ~/.ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:latest


docker run -d --runtime nvidia  -v ~/.ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:latest
