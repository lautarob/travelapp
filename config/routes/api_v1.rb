namespace :api do
  namespace :v1 do
    resources :travels
    mount_devise_token_auth_for 'User', at: 'auth'
  end
end