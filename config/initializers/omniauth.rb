OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '164584180652933', '1053cdbd27c23a5fc606e5cf648013a8'
end