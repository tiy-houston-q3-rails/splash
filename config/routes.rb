Rails.application.routes.draw do
  post 'notify'=> 'notifications#create', as: :notification

  root to: "pages#index"
end
