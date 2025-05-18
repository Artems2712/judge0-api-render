# ---------- Dockerfile ----------
FROM judge0/api:1.10.0

ENV ENABLE_AUTH=false         # токены не нужны
ENV PORT=10000                # Render будет пробрасывать этот port внутрь
ENV RAILS_ENV=production
ENV RAILS_MAX_THREADS=5
ENV WEB_CONCURRENCY=2

EXPOSE 10000
# --------------------------------
