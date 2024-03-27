Rails.application.routes.draw do
  get '/index', to: 'blog#index', as: 'blogs'
  root 'blog#index'
end
