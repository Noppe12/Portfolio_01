Rails.application.routes.draw do

  root 'public/homes#top'
  get 'topafter' => 'public/homes#topafter'
  get 'private/top' => 'private/homes#top'
  get 'admin/top' => 'admin/homes#top'
  get 'searches' => 'search#search'

  devise_for :admins, :controllers => {
    :sessions => 'admins/sessions',
    :registrations => 'admins/registrations',
    :passwords => 'admins/passwords'
  }

  devise_for :creators, :controllers => {
    :sessions => 'creators/sessions',
    :passwords => 'creators/passwords',
    :registrations => 'creators/registrations'
  }
  get '/creators/mypage' => 'private/creators#show'
  #get '/creators/edit/:id' => 'private/creators#edit', as: 'creators_edit'
  #patch 'private/creators' => 'private/creators#update'
  get '/creators/check' => 'private/creators#check'
  patch '/creators/withdraw' => 'private/creators#withdraw'

  devise_for :members, :controllers => {
    :sessions => 'members/sessions',
    :passwords => 'members/passwords',
    :registrations => 'members/registrations'
  }
  get '/members/mypage' => 'public/members#show'
  get '/members/edit/:id' => 'public/members#edit', as: 'members_edit'
  patch 'public/members' => 'public/members#update'
  get '/members/check' => 'public/members#check'
  patch '/members/withdraw' => 'public/members#withdraw'

  resources :items, only: [:index, :show], module: "public" do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end
  resources :creators, only: [:index, :show], module: "public"

  namespace :private do
    resources :items, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :contacts, only: [:new, :create]
    resources :creators, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    resources :items, only: [:index, :show]
    resources :members, only: [:index, :show, :edit, :update]
    resources :creators, only: [:index, :show, :edit, :update]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
