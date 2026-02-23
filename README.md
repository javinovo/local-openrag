
# Local OpenRAG

OpenRAG configured to run locally through `ollama` plus `docling` integrated as another container.

### Initial setup

1. Copy `.env.local` as `.env` and fill passwords:
   - `LANGFLOW_SUPERUSER_PASSWORD`
   - `OPENSEARCH_PASSWORD`
2. (Optional) Edit `docker-compose.yml` to customize Ollama models: modify `ollama`'s service `entrypoint` shell script.
3. Execute `run-gpu.sh` to launch the containers.
4. Go to [Langflow MCP config](http://localhost:7860/settings/mcp-servers), edit the `lf-starter_project` tool and replace the IP in the URL argument with `langflow`.
5. Go to http://localhost:3000 and complete the setup by selecting Ollama's language and embedding models.

### Container Services

| Container Name | Default Address | Purpose |
|---|---|---|
| OpenRAG Backend | http://localhost:8000 | FastAPI server and core functionality. |
| OpenRAG Frontend | http://localhost:3000 | React web interface for user interaction. |
| Langflow | http://localhost:7860 | AI workflow engine. |
| OpenSearch | http://localhost:9200 | Datastore for knowledge. |
| OpenSearch Dashboards | http://localhost:5601 | OpenSearch database administration interface. |

### Known issues

- Langflow sets a wrong URL for the MCP tool (workaround at setup step 4.)
- Wrong fallback syntax at `settings.py` for `LANGFLOW_KEY_RETRIES` and `LANGFLOW_KEY_RETRY_DELAY` (workaround by explicitly setting them in `.env`).
- Watch for default context windows. For example, `mistral-nemo:12b` defaults to only 4096 which will cause the chat to fail with `Sorry, I couldn't connect to the chat service.` error message most likely on the second user prompt. `OLLAMA_CONTEXT_LENGTH` variable introduced in `.env` to address this.

#
#

<div align="center">

# OpenRAG

<div align="center">
  <a href="https://github.com/langflow-ai/langflow"><img src="https://img.shields.io/badge/Langflow-1C1C1E?style=flat&logo=langflow" alt="Langflow"></a>
  &nbsp;&nbsp;
  <a href="https://github.com/opensearch-project/OpenSearch"><img src="https://img.shields.io/badge/OpenSearch-005EB8?style=flat&logo=opensearch&logoColor=white" alt="OpenSearch"></a>
  &nbsp;&nbsp;
  <a href="https://github.com/docling-project/docling"><img src="https://img.shields.io/badge/Docling-000000?style=flat" alt="Langflow"></a>
  &nbsp;&nbsp;
</div>

OpenRAG is a comprehensive Retrieval-Augmented Generation platform that enables intelligent document search and AI-powered conversations. Users can upload, process, and query documents through a chat interface backed by large language models and semantic search capabilities. The system utilizes Langflow for document ingestion, retrieval workflows, and intelligent nudges, providing a seamless RAG experience. Built with [Starlette](https://github.com/Kludex/starlette) and [Next.js](https://github.com/vercel/next.js). Powered by [OpenSearch](https://github.com/opensearch-project/OpenSearch), [Langflow](https://github.com/langflow-ai/langflow), and [Docling](https://github.com/docling-project/docling).

<a href="https://deepwiki.com/langflow-ai/openrag"><img src="https://deepwiki.com/badge.svg" alt="Ask DeepWiki"></a>

## Install OpenRAG

To get started with OpenRAG, see the installation guides in the OpenRAG documentation:

* [Quickstart](https://docs.openr.ag/quickstart)
* [Install the OpenRAG Python package](https://docs.openr.ag/install-options)
* [Deploy self-managed services with Docker or Podman](https://docs.openr.ag/docker)

## Development

For developers who want to [contribute to OpenRAG](https://docs.openr.ag/support/contribute) or set up a development environment, see [CONTRIBUTING.md](CONTRIBUTING.md).

## Troubleshooting

For assistance with OpenRAG, see [Troubleshoot OpenRAG](https://docs.openr.ag/support/troubleshoot) and visit the [Discussions page](https://github.com/langflow-ai/openrag/discussions).

To report a bug or submit a feature request, visit the [Issues page](https://github.com/langflow-ai/openrag/issues).