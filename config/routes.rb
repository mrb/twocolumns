Twocolumns::Application.routes.draw do
  resources :papers
  root :to => "papers#index"
end
