Rails.application.routes.draw do

  resources :category do
    resources :articles
  end

  resources :articles do
    resources :comments
  end

end
