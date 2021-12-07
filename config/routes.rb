Rails.application.routes.draw do
  get '/', to: 'invloices#index'
  resources :invoices
end
