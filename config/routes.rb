Rails.application.routes.draw do
  resources :employees
  resources :companies do
    collection { post :import }
  end

  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'
  root to: 'welcome#index'
  # get '/', to: 'welcome#index'
  resources :invoices do
    resources :purchases, controller: 'invoices/purchases'
    # resources :purchases, except: [:index], controller: 'invoices/purchases'
  end
end
