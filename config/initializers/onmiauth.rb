Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'tI0z6fQ8EILP1GmsMCg2Ww', 'surufpTSy2pNp3fHnT4FRNGboPOvkD3wss0XJzvItmM'
  provider :identity, on_failed_registration: lambda { |env|    
    IdentitiesController.action(:new).call(env)
  }
end