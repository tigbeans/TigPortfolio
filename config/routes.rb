Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins
  root to: 'home#index'

  namespace :admins do
    get '/account' => 'accounts#edit', as: :account
  end

  scope module: 'all' do
  end

end
