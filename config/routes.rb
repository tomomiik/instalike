Rails.application.routes.draw do
  resources :instalikes, only: [:index, :new, :create, :edit, :update, :destroy] do
  end

  root 'top#index'
end
