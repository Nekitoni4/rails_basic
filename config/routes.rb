Rails.application.routes.draw do
  get '/about', to: 'about#index'
  get '/about/author', to: 'about_author#index'
end
