# Chat Bot Project

A modern AI chat interface built with Next.js that connects to Ollama for local large language model inference.

## Features

- Real-time chat with AI models via Ollama
- Multiple model support (DeepSeek, CodeGemma, Qwen Coder)
- Dark/Light theme support
- Code highlighting and formatting
- Conversation history
- Voice input support
- Multiple languages (English and Somali)
- Specialized agent types (Q&A, Conversational, VSCode Assistant, etc.)

## Prerequisites

- [Node.js](https://nodejs.org/) (v18 or higher)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Ollama](https://ollama.ai/) for local model inference

## Quick Setup

1. Clone the repository:
```bash
git clone https://github.com/abokorkeyse/chat-bot-
cd chat-bot-
```

2. Install dependencies:
```bash
npm install
# or
yarn install
```

3. Set up Ollama and download models using our helper script:
```bash
# Make script executable
chmod +x setup-models.sh
# Run the script
./setup-models.sh
```

4. Run the development server:
```bash
npm run dev
# or
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser to see the application.

## Docker Setup

The easiest way to run the entire stack (including Ollama):

```bash
docker-compose up -d
```

This will:
- Build and start the Next.js application
- Start Ollama with persistent storage
- Connect them together automatically

## Manual Setup

### Ollama Setup

1. Download and install Ollama from [https://ollama.ai/](https://ollama.ai/)
2. Pull the models used in the project:

```bash
ollama pull deepseek-r1:1.5b
ollama pull codegemma:2b
ollama pull qwen2.5-coder:3b
```

### Environment Variables

Copy the example environment file:
```bash
cp .env.example .env.local
```

Customize the values in `.env.local` if needed.

## Project Structure

```
my-next-app/
├── app/
│   ├── api/            # API routes for chat, feedback, and auth
│   ├── components/     # React components
│   │   ├── Chat.tsx    # Main chat interface
│   │   └── icons/      # SVG icons
│   ├── styles/         # CSS modules and global styles
│   ├── types/          # TypeScript type definitions
│   └── utils/          # Utility functions
├── public/             # Static assets
├── Dockerfile          # Docker configuration for the app
├── docker-compose.yml  # Docker Compose configuration for app + Ollama
├── setup-models.sh     # Helper script to set up Ollama models
└── package.json        # Project dependencies
```

## Deployment

### Deploying to Vercel

The easiest way to deploy the application is using Vercel:

1. Create an account on [Vercel](https://vercel.com/)
2. Install the Vercel CLI: `npm install -g vercel`
3. Run `vercel` in the project directory and follow the prompts

Note: Since this project requires Ollama running locally, the deployed version will need to connect to an Ollama instance. You'll need to modify the API endpoints for production.

### Docker Deployment

You can also run just the application using Docker without Ollama:

1. Build the Docker image:
   ```bash
   docker build -t chat-bot .
   ```

2. Run the container:
   ```bash
   docker run -p 3000:3000 chat-bot
   ```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT 