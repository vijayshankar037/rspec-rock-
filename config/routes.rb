Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :achievements, only: %i[new create show]
  root to: 'welcome#index'
end
