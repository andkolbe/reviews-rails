Rails.application.routes.draw do
  root 'html_pages#home'
  # html_pages#help is the controller and the action. we are mapping the url /help to that controller and action
  # this creates two named routes. help_path and help_url
  get '/help', to: 'html_pages#help' 
  get '/about', to: 'html_pages#about'
  get '/contact', to: 'html_pages#contact'
  get '/signup', to: 'users#new'
end