Rails.application.routes.draw do
  resources :task_organizers
  resources :tasks
  resources :organizers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
