FROM n8nio/n8n:latest

# n8n listens on 5678 by default; Fly will route to it.
ENV N8N_PORT=5678
ENV N8N_LOG_LEVEL=info

# Persist SQLite database in the home directory (mapped to a Fly volume)
ENV DB_TYPE=sqlite
ENV SQLITE_DATABASE=/home/node/.n8n/database.sqlite

# Security defaults (we’ll override with secrets on Fly)
ENV N8N_SECURE_COOKIE=true
