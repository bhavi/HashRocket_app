HashrocketProj::Application.routes.draw do
  get "user_subscription/index"

  devise_for :users do
  get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
end

  root :to => "pages#index"
  resources :users
  resources :candidates do
    resources :notes
    resources :skills
  end
  resources :skills
  resources :contact_us, :except => [:index, :show, :destroy]
  match 'contact_us/', :to=> 'contact_us#new'

  # resources :subscription_plans

  resources :user_subscription, only: [:index] do
    collection do
      post :subscribe
    end
  end

  # resources :billing_info, :except => [:index ]

end
