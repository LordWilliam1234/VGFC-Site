Rails.application.routes.draw do
  root 'main_pages#home'
  get 'ryu' => 'fighters#ryu'
  get 'kim' => 'fighters#kim'
end
