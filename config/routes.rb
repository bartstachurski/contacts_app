Rails.application.routes.draw do
  namespace :api do
    get "/contact_1" => "contacts#show_contact"

    get "/all_contacts" => "contacts#all_contacts"
  end
end
