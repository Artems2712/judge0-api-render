# config/puma.rb
max = (ENV['RAILS_MAX_THREADS'].presence || 5).to_i
min = (ENV['RAILS_MIN_THREADS'].presence || max).to_i
threads min, max

port        (ENV['PORT'] || 10000).to_i
environment ENV.fetch('RAILS_ENV', 'production')

workers (ENV['WEB_CONCURRENCY'] || 2).to_i
preload_app!
plugin :tmp_restart
