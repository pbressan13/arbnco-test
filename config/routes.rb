Rails.application.routes.draw do
  root to: 'pages#home'
  resources :file_uploads, only: %i[index new create]
  resources :general, only: [:index] do
    collection do
      post :import
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
