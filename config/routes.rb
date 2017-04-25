Rails.application.routes.draw do

  devise_for :users, path: "", path_names: {sign_in: "login",sign_out: "logout"}
  root "static_pages#home"
  namespace :admin do
    root "static_pages#home"
    resources :master_classes
    resources :master_subjects
    resources :master_class_subjects
    resources :master_class_subject_teachers
    resources :rooms
    resources :master_course_schedules
    resources :users
    resources :master_courses
  end
end
