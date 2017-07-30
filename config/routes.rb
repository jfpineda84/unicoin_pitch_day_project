Rails.application.routes.draw do
  resources :response_types
  resources :user_responses
  resources :questions
  resources :forms

  root 'page#index'

  get '/' => 'sessions#create'

  get '/myfafsa' => 'forms#generate_pdf'
  get '/live_chat' => 'page#live_chat'
  get '/secret' => 'page#secret'
  get '/about_us' => 'page#about_us'
  get '/faq' => 'page#faq'
  post '/tokens' => "tokens#create"

  get '/register' => 'users#new'
  resources :users

  # These routes will be for showing a login form, logging in, and logging out
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # This route will allow a user to see all of the quesitons on the FAFSA form.
  get '/questions/index' => 'questions#index'
  get '/brand_new' => 'user_responses#brand_new', as: :brand_new
  post "image_upload" => "user_responses#image_upload"
end
