FROM judge0/api:1.10.0

ENV ENABLE_AUTH=false
ENV PORT=10000
ENV RAILS_ENV=production

# корректный рабочий каталог
WORKDIR /api

# перезаписываем puma.rb прямо в /api/config
COPY config/puma.rb ./config/puma.rb

EXPOSE 10000
