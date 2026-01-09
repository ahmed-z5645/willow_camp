# config/initializers/cors.rb

if Rails.env.development?
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      # Allow requests from localhost (standard and IP variants)
      origins "http://localhost:3000", 
              "http://127.0.0.1:3000",
              "http://[::1]:3000"

      resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
end