FROM judge0/api:1.10.0

ENV ENABLE_AUTH=false          # токены не нужны
ENV PORT=10000                 # Render пробросит этот порт
ENV RAILS_ENV=production

# ⬇️  кладём наш файл именно туда, где его ищет Judge0
COPY config/puma.rb /api/config/puma.rb

EXPOSE 10000
