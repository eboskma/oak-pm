OakPm::Application.routes.draw do
  devise_for :users

  get 'home' => 'pages#home'

  get "about" => 'pages#about'

  root :to => 'pages#home'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
