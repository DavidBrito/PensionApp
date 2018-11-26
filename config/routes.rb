Rails.application.routes.draw do
  
  ## Rotas para todas as entidades das aplicações
  # cria rotas para o CRUD das entidades
  
  devise_for :users, controllers: {registrations: 'users/registrations'}
  
  scope '/proprietary' do
    resources :users
    resources :properties
    resources :employees
    resources :rooms
    resources :vacancies
  end

  resources :maintenances
  resources :tasks

  get 'homepage' => 'homepage#index'
  get 'proprietary' => 'proprietary#index'

  match '/maintenances/:id/completed' => 'maintenances#completed', as: 'completed_maintenance', via: :put 
  match '/tasks/:id/completed' => 'tasks#completed', as: 'completed_task', via: :put 
  
  root 'welcome#index'
end
