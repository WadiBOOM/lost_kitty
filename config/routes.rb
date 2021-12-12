Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    #Read all my Pets
    get "/pets", to: "pets#index"

        #create one pet
    get "/pets/new", to: "pets#new", as: :new_pet
    post "/pets", to: "pets#create"

    #Read One Pet
    get "/pets/:id", to: "pets#show", as: :pet

    #Update One Pet
    get "/pets/:id/edit", to: "pets#edit", as: :edit_pet
    patch "/pets/:id", to: "pets#update"

    #Delete one pet
    delete "pets/:id", to: "pets#destroy", as: :destroy_pet


end
