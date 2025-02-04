Rails.application.routes.draw do
  get 'create/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'homes#top'
  get "home/about"=>"homes#about"
  get 'searches/search'=>'searches#search'
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end