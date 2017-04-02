Rails.application.routes.draw do
  
  root 'index#index'
  resources :articles, only: [:show]
  get '/category/:cagegory_id/', to: 'articles#index'
  
  scope "admin" do
    constraints(Config::Whitelist) do
      devise_for :admins, 
        controllers: { 
        sessions: 'admin/sessions'
      },
        only: [:sign_in, :sign_out, :session]
    end
  end

  namespace :admin do
    constraints(Config::Whitelist) do
      resources :articles
      resources :categories
    end
  end

end
