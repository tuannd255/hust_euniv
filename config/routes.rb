Rails.application.routes.draw do
  devise_for :tblusers, path: "", path_names: {sign_in: "login",sign_out: "logout"}
  root "static_pages#home"
end
