FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir openresearch-mcp

WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

EXPOSE 7860

CMD ["/app/start.sh"]
