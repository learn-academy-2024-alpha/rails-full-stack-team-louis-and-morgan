Rails.application.routes.draw do
  get '/blogs', to: 'blog#index', as: 'blogs'
  get '/blogs/new', to:'blog#new', as:'blog_new'
  post '/blogs', to: 'blog#create'
  get '/blogs/:id', to: 'blog#show', as: 'blog'
  delete '/blogs/:id', to: 'blog#destroy', as: 'delete_blog'
  root 'blog#index'
end
