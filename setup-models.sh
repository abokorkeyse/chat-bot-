#!/bin/bash

echo "Setting up models for Ollama..."

# Check if Ollama is installed
if ! command -v ollama &> /dev/null; then
    echo "Ollama is not installed. Please install it from https://ollama.ai/"
    exit 1
fi

# Check if Ollama is running
if ! curl -s localhost:11434/api/tags &> /dev/null; then
    echo "Ollama is not running. Please start Ollama first."
    exit 1
fi

echo "Downloading models..."

# Pull the models
echo "Pulling DeepSeek 1.5B..."
ollama pull deepseek-r1:1.5b

echo "Pulling CodeGemma 2B..."
ollama pull codegemma:2b

echo "Pulling Qwen2.5 Coder 3B..."
ollama pull qwen2.5-coder:3b

echo "All models have been downloaded successfully."
echo "You can now start the chat bot with 'npm run dev' or 'yarn dev'." 