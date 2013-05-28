SailthruMaxenglanderCom::Application.routes.draw do
  root to: "posts#index"
  resources :posts
  match 'scout/test'
  match 'auth/signup'
  match 'optout' => 'users#optout'
  match 'blahblahblah' => 'users#optout'
end
