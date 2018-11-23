Rails.application.routes.draw do
  
  ## Rotas para todas as entidades das aplicações
  # cria rotas para o CRUD das entidades
  
  devise_for :users
  resources :properties 
  resources :maintenances
  resources :tasks
  resources :employees

  get 'homepage/' => 'homepage#index'  
  match '/tasks/:id/completed' => 'tasks#completed', as: 'completed_task', via: :put 
 
  root 'welcome#index'
end
