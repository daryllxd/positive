Positive::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :home
    end
  end
end
