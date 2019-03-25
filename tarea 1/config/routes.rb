Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]
# get 'home/index'
root 'home#index'
get 'home', to: 'home#index'
get 'search', to: 'home#search'

post 'home/', to: 'home#query'
# get 'search_title', to: 'home#search'
# get 'search_people', to: 'home#search'

end
