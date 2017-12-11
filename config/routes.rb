Rails.application.routes.draw do

  mount ActionCable.server => "/cable"

  devise_for :users, path: "", controllers: {sessions: "users/sessions"}, path_names: {sign_in: "login",sign_out: "logout"}
  namespace :admin do
    root "master_courses#index"
    resources :master_classes
    resources :master_subjects
    resources :master_class_subjects
    resources :rooms
    resources :master_course_schedules
    resources :users
    resources :master_courses
    resources :master_course_send_mails, only: :index
  end
  root "master_courses#index"
  resources :master_courses, only: [:index, :show] do
    resources :master_course_schedules, only: :index
  end
  resources :master_class_subjects, only: :edit
  resources :master_course_schedules, only: [:create, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :notifications, only: [:index, :show]
end
