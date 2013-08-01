NgEntrepernology::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :startups
    end
  end

  root :to => "static#root"
  get '*anything' => "static#root"
end