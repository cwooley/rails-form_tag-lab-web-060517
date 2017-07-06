Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/:id', to: 'students#show', as: 'student'
  get '/new_student', to: 'students#new'
  post '/students', to: 'students#create'
end
