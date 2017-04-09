# frozen_string_literal: true

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1615208631842499', '92b76dbbebc3de2afa093ccbe6dc8f01'
end
