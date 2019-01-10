Rails.application.routes.draw do
  root to: 'pages#login'
  get '/home'  => 'pages#home'
  get '/courses' => 'pages#courses'
  get '/instructors' => 'pages#instructors'
  get '/students' => 'pages#students'
  post '/students' => 'pages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
