Boxroom::Application.routes.draw do
  resources :clinic_cr_conditions
  resources :clinic_cr_docs
  resources :surg_hosp_cr_conditions
  resources :surg_hosp_cr_docs
  resources :surg_hosp_crs
  resources :clinic_cr_forms
  resources :clinic_conditions
  resources :account_pat_types
  resources :acct_pat_types
  resources :shf_actual_conditions
  resources :surg_hosp_form_conditions
  resources :surg_hosp_form_docs
  resources :surg_hosp_form_hospitals
  resources :surg_hosp_forms
  resources :clinic_docs
  resources :clinics
  resources :surgery_docs do
    collection { post :import }
  end

  resources :surgery_conditions do
    collection { post :import }
  end

  resources :clinic_docs do
    collection { post :import }
  end

  resources :clinic_conditions do
    collection { post :import }
  end

  resources :surg_hosp_form_hospitals do
    collection { post :import }
  end

  resources :surg_hosp_form_docs do
    collection { post :import }
  end

  resources :surg_hosp_form_conditions do
    collection { post :import }
  end

  resources :shf_actual_conditions do
    collection { post :import }
  end

  resources :shf_omitted_conditions do
    collection { post :import }
  end

  resources :shf_dnmc_conditions do
    collection { post :import }
  end

  resources :clinic_omitted_conditions do
    collection { post :import }
  end

  resources :clinic_misdiagnosed_conditions do
    collection { post :import }
  end

  resources :clinic_accurate_conditions do
    collection { post :import }
  end

  get '/file_exists', :to => 'files#exists'
  get '/signin', :to => 'sessions#new', :as => 'signin'
  delete '/signout', :to => 'sessions#destroy'

  # Resources
  resources :admins, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :destroy]
  resources :reset_password, :except => [:index, :show, :destroy]
  resources :signup, :only => [:edit, :update]
  resources :groups, :except => :show
  resources :files, :except => [:index, :new, :create]
  resources :share_links, :only => [:index, :show, :destroy]

  resources :users, :except => :show do
    put :extend, :on => :member
  end

  resources :clipboard, :only => [:create, :destroy] do
    post :copy, :on => :member
    post :move, :on => :member
    put :reset, :on => :member
  end

  # Update a collection of permissions
  resources :permissions, :only => :update_multiple do
    put :update_multiple, :on => :collection
  end

  # Nested resources
  resources :folders, :shallow => true, :except => [:new, :create] do
    resources :folders, :only => [:new, :create]
    resources :files, :only => [:new, :create]
  end

  resources :files, :shallow => :true, :only => :show do
    resources :share_links, :only => [:new, :create]
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "folders#index"
end
