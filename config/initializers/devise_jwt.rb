# config/initializers/devise_jwt.rb
Devise.setup do |config|
  config.jwt do |jwt|
    jwt.secret = Rails.application.credentials.secret_key_base
    jwt.dispatch_requests = [
      ['POST', %r{^/api/v1/users/sign_in$}]
    ]
    jwt.revocation_requests = [
      ['DELETE', %r{^/api/v1/users/sign_out$}]
    ]
    jwt.expiration_time = 30.minutes.to_i
  end
end
