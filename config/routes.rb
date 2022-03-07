Rails.application.routes.draw do
  root 'app_pages#top'
  get '/sign', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
