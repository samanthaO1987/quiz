Rails.application.routes.draw do
  resources :users, only: [:index, :create, :score] do
    get 'score', on: :member
  end

  root to: "users#index"
end
