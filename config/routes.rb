BasicAuth::Application.routes.draw do

  root :to=>"home#index"

  get "sign_in" => "authentication#sign_in"
  get 'signed_out' => "authentication#signed_out"
  get 'change_password' => "authentication#change_password"
  get 'forgot_password' => "authentication#forgot_password"
  get "new_user" => "authentication#new_user"
  get "password_sent" => "authentication#password_sent"
  get "user_posts" => "posts#user_posts"

  get "account_settings" => "authentication#account_settings"

  post "sign_in" => "authentication#login"
  put "new_user" => "authentication#register"
  put "account_settings" => "authentication#set_account_info"

  get "static_pages/sent"
  resources :posts
end
