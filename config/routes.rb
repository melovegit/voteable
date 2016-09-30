Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :movies do
    member do
      put "like" => "movies#upvote"
      put "dislike" => "movies#downvote"
    end
  end
end
