Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'welcome/index'
  resources :notes

  authenticated :user do
	  root "notes#index", as: "authenticated_root"
	end
devise_scope :user do
  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session_omni
end
	root "welcome#index"
end
