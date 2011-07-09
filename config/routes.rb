Twocolumns::Application.routes.draw do
  resources :papers
  resources :tags
  root :to => "papers#index"
end
