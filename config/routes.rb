Rails.application.routes.draw do
  match "currency/set" => "currency#set"
  namespace :admin do
    resources :currencies do
      collection do
        get :synchronize
      end
    end
    resource :currency_settings
  end
end
