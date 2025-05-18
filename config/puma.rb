# /api/config/puma.rb
max = (ENV['RAILS_MAX_THREADS']&.to_i).positive? ? ENV['RAILS_MAX_THREADS'].to_i : 5
min = (ENV['RAILS_MIN_THREADS']&.to_i).positive? ? ENV['RAILS_MIN_THREADS'].to_i : max
threads min, max

port        (ENV['PORT'] || 10000).to_i
environment ENV.fetch('RAILS_ENV', 'production')

workers (ENV['WEB_CONCURRENCY'] || 2).to_i
preload_app!
plugin :tmp_restart
