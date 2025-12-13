FROM n8nio/n8n:latest
# Render sets PORT; ensure n8n listens on it
ENV N8N_PORT=$PORT
# (Optional) Reduce noisy logs
ENV N8N_LOG_LEVEL=info
# n8n will start by default; tini is already entrypoint in official image
