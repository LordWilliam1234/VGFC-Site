Rails.application.routes.draw do
  root 'main_pages#home'
  get 'fighters/ryu' => 'fighters#ryu'
  get 'fighters/kim' => 'fighters#kim'
end
