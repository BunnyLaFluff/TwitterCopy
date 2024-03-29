Rails.application.routes.draw do
  get 'epicenter/feed'
  get 'epicenter/show_user'
  get 'epicenter/now_following'
  get 'epicenter/unfollow'
  root 'epicenter#feed'
  get 'epicenter/show_user' => 'epicenter#show_user'
  get 'epicenter/now_following' => 'epicenter#now_following'
  get 'epicenter/unfollow' => 'epicenter#unfollow'
  resources :tweets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
