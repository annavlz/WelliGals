Rails.application.routes.draw do
root 'js_apps#dashboard'
# root 'home#index'
get 'home/index' => 'home#index'
get 'home/profile' => 'home#profile'

get 'auth/:provider/callback', to:'sessions#create'

delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

resources :meetups

end
