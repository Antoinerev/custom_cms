Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :rhs_contacts
end


#           Prefix Verb   URI Pattern                      Controller#Action
#             root GET    /                                pages#home
#     rhs_contacts GET    /rhs_contacts(.:format)          rhs_contacts#index
#                  POST   /rhs_contacts(.:format)          rhs_contacts#create
#  new_rhs_contact GET    /rhs_contacts/new(.:format)      rhs_contacts#new
# edit_rhs_contact GET    /rhs_contacts/:id/edit(.:format) rhs_contacts#edit
#      rhs_contact GET    /rhs_contacts/:id(.:format)      rhs_contacts#show
#                  PATCH  /rhs_contacts/:id(.:format)      rhs_contacts#update
#                  PUT    /rhs_contacts/:id(.:format)      rhs_contacts#update
#                  DELETE /rhs_contacts/:id(.:format)      rhs_contacts#destroy
