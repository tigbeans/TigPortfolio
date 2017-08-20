Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins
  root to: 'home#index'

  namespace :admins do
    get '/account' => 'accounts#edit', as: :account
    get '/resume' => 'resume#edit', as: :resume
    put '/info' => 'accounts#update_info', as: :info
    put '/change_password' => 'accounts#change_password', as: :change_password

    resources :posts
    resources :projects
    resources :resumes

  end

  scope module: 'all' do

    # blog posts
    scope module: 'blog' do
      get 'posts' => 'posts#index', as: :posts
      get 'posts' => 'posts#show', as: :post
    end

    #project roadmap
    scope module: 'projects_roadmap' do
      get 'projects' => 'projects#index', as: :projects
      get 'projects/:id' => 'projects#show', as: :project
    end

    #resume
    get 'resume' => 'resume#index', as: :resume
  end

end
