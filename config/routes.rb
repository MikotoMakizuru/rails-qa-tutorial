Rails.application.routes.draw do
  get "msgboard", to: "msgboard#index"
  post "msgboard", to: "msgboard#index"
  get "msgborad/index"
  post "msgborad/index"

  get "hello", to: "hello#index", as: :hello_index
  post "hello", to: "hello#index"
end
