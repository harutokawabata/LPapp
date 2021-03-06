Rails.application.routes.draw do
  get 'users/show'
  namespace :public do
    resources :socials
  end
  devise_for :admins, controllers: {
       sessions:      'admins/sessions',
       passwords:     'admins/passwords',
       registrations: 'admins/registrations'
     }
 devise_for :users, controllers: {
       sessions:      'users/sessions',
       passwords:     'users/passwords',
       registrations: 'users/registrations'
     }
  resources :users
 
     get '/admin' => 'admins/homes#top'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # get '/admin' => 'admin/homes#top'
     root 'public/homes#top'
 end