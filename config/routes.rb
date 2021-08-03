Rails.application.routes.draw do
  root 'home#index'
  get 'cardapio' => 'menu#index'
  get 'presentes' => 'gifts#index'
  get 'comprar' => 'gifts#buy'
  post 'finalizar' => 'gifts#purchase'
  get 'purchases' => 'purchases#index'
  get 'checked' => 'purchases#checked'
  get 'canceled' => 'purchases#canceled'
  get 'guest_search' => 'guests#search'
  post 'confirmation' => 'guests#update'
  get 'guests' => 'guests#index'
end
