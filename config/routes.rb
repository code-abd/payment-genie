Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users,
    controllers: {
      registrations: "users/registrations",
      sessions: "users/sessions"
    },
    defaults: { format: :json }
end
