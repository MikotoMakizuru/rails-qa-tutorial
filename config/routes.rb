Rails.application.routes.draw do
  get "people/index"
  get "people/add"
  post "people/add", to: "people#create"
  get "people/:id", to: "people#show"
  get "people/edit/:id", to: "people#edit"
  patch "people/edit/:id", to: "people#update"

  get "msgboard", to: "msgboard#index"
  post "msgboard", to: "msgboard#index"
  get "msgborad/index"
  post "msgborad/index"

  get "hello", to: "hello#index", as: :hello_index
  post "hello", to: "hello#index"
end
