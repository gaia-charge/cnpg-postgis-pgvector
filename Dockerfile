FROM ghcr.io/cloudnative-pg/postgis:16-3.4

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends postgresql-16-pgvector && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER postgres
