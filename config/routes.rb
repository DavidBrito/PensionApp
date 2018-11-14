Rails.application.routes.draw do
  
  devise_for :users
   
  resources :tasks
  
  match '/tasks/:id/completed' => 'tasks#completed', as: 'completed_task', via: :put 
 
  root 'welcome#index'

  get 'homepage/' => 'homepage#index'

end
