OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '743322355782592', 'a96a39c69b56cd1bbae26352e158c45b'
end