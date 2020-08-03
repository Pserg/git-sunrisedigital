Rake::Task["deploy:assets:backup_manifest"].clear_actions
set :application, 'sunrise'
set :repo_url, 'git@github.com:Pserg/git-sunrisedigital.git'
set :deploy_to, '/home/deploy/sunrise'
set :chruby_ruby, 'ruby-2.7.1'
set :nginx_use_ssl, false
set :puma_init_active_record, false
set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
set :keep_releases, 3