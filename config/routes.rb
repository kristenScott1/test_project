Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :product, only: [:index, :show, :edit, :update] do
    member do
      get :products
      put :update

    end
  end

  resources :order, only: [:index, :show, :edit, :update] do
    member do
      get :orders
     
    end
  end

  resources :cart, only: [:index, :show, :edit, :update, :destroy] do
    member do
      get :cart
      delete :cart
     
    end
  end
end
