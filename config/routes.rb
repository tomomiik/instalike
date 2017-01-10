Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :instalikes, only: [:index, :new, :create, :edit, :update, :destroy] do
  end

  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  root 'top#index'


end
