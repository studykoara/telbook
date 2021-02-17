Rails.application.routes.draw do
  root "friends#index"
  get "about" => "top#about", as: "about"

  resources :friends do
    resources :telephones
  end
  resources :telephones
end
