Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, "c79v2qz198m4", "DbLf0O2rQQ4SJ2oA" 
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "137577719699514", "b60f4bc96d4e0732360986d2a78876b6", {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "9IUFJReVnFuFLZZARP7fg", "D9Wsxc3DD6ia1rCKVgjJ0CI7i9jSS2NqI6XiadpLjg" 
end
