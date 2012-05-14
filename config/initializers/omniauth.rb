Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '1VKlc37zMZ3zKYYqg22A', 'rooaG3jnsmPDYHSpfRI0w818DeF0E6UsAPSS10j0Oo'
  #provider :facebook, 'APP_ID', 'APP_SECRET'
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end