Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins
  root to: 'home#index'

  namespace :admins do

    # admin account stuff
    get '/account' => 'accounts#edit', as: :account
    put '/info' => 'accounts#update_info', as: :info
    put '/change_password' => 'accounts#change_password', as: :change_password


    resources :posts do
      # on: :member changes :post_id to match what the controller gets in
      put 'publish' => 'posts#publish', on: :member
      put 'unpublish' => 'posts#unpublish', on: :member
    end

    resources :projects do
      # on: :member changes :post_id to match what the controller gets in
      put 'publish' => 'projects#publish', on: :member
      put 'unpublish' => 'projects#unpublish', on: :member
    end

    resources :resume

  end

  scope module: 'all' do

    # blog posts
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post

    #project roadmap
    get 'projects' => 'projects#index', as: :projects
    get 'projects/:id' => 'projects#show', as: :project

    #resume
    get 'resume' => 'resume#index', as: :resume

  end

end
