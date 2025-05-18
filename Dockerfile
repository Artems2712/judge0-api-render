# ---------- Dockerfile ----------
FROM judge0/api:1.10.0

# отключаем JWT
ENV ENABLE_AUTH=false

# порт, на котором будет слушать Puma (Render пробросит его наружу)
ENV PORT=10000
ENV RAILS_ENV=production
ENV RAILS_MAX_THREADS=5
ENV WEB_CONCURRENCY=2

# кладём наш фиксированный puma.rb внутрь образа
COPY config/puma.rb /app/config/puma.rb

EXPOSE 10000
# --------------------------------
