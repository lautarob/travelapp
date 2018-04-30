# frozen_string_literal: true

# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.secret_key = '30c985a26fd9009cb7c38d34b588591bcf1e6cbb6885e45b88ec40d0ca6df876c035a33cc5c9b5b46efbd8392be6674a9f9d2063863686850d9800ac31259117'

end
