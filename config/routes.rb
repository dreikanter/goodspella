Rails.application.routes.draw do
  resources :spell_checks, only: :index
end
