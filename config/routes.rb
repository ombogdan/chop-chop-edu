Rails.application.routes.draw do

  get '/chop-chop-edu', to: 'courses#homepage'

  resources :courses, path: '/chop-chop-edu/courses'
  get '/chop-chop-edu/courses-for-group', to: 'courses#forgroup'


  resources :lectures, path: '/chop-chop-edu/lectures'


  resources :students, path: '/chop-chop-edu/students'


  resources :groups, path: '/chop-chop-edu/group'
  get '/chop-chop-edu/students-in-group', to: 'teachers#all'


  resources :teachers, path: '/chop-chop-edu/teachers'
  get '/chop-chop-edu/teachers', to: 'teachers#all'
  get '/chop-chop-edu/teachers-for-courses', to: 'teachers#forcourses'


  resources :labs, path: '/chop-chop-edu/labs'


  resources :practices, path: '/chop-chop-edu/practice'


  resources :themes, path: '/chop-chop-edu/themes'


end

