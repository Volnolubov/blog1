Rails.application.routes.draw do
   
    
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    root 'home#index'
    resources :posts
    resources :tags, only: [:show]
    resources :categories, only: [:show]

    namespace :admin do
      resources :posts, except: [:show, :index]
      resources :categories, except: [:show]
      
    end
  end
end
