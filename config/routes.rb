Rails.application.routes.draw do
  resources :user_fortunes
  namespace :api do
    namespace :v1 do
      resources :fortunes, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
end
