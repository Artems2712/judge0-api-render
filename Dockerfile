FROM judge0/api:1.10.0

ENV ENABLE_AUTH=false
ENV PORT=10000
ENV RAILS_ENV=production

# В образе Judge0 rails-приложение лежит в /app
WORKDIR /app

# перезаписываем стандартный puma.rb нашим
COPY config/puma.rb ./config/puma.rb

EXPOSE 10000
