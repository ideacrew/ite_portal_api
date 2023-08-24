# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

domains = [
  'dbh-ite.com',
  'dbhite.com',
  'github.dev',
  'githubpreview.dev',
  'preview.app.github.dev'
].join('|')

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    # resource '/api/v1/extracts/ingest', headers: :any, methods: %i[post]
    # resource '/session', headers: :any, methods: %i[post delete]
  end

  if Rails.env.development?
    allow do
      origins(%r{^(http?://)?localhost(:\d+)?/?$})
      resource '*', headers: :any, methods: %i[get post put patch delete options head]
    end
  else
    allow do
      origins(%r{^https://(|[^.]+\.)(#{domains})/?$})

      resource '*',
               headers: :any,
               methods: %i[get post put patch delete options head]
    end

    allow do
      origins 'preview.app.github.dev'

      resource '*',
               headers: :any,
               methods: %i[get post put patch delete options head]
    end
  end
end
