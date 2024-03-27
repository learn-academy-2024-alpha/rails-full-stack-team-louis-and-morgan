Rails.application.routes.draw do
  get '/index', to: 'blog#index', as: 'blogs'
  get '/show/:id', to: 'blog#show', as: 'blog'
  root 'blog#index'
end
