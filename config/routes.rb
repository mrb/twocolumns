TwoColumns::Application.routes.draw do
  resources :papers
  resources :tags
  match "/:id" => "papers#show"

  root :to => "home#index"
end
