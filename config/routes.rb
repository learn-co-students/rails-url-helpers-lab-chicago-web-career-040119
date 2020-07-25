Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :update]
  get 'students/:id/activate_student', to: 'students#activate_student', as: 'activate_student'
end
