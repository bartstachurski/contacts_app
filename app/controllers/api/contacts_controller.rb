class Api::ContactsController < ApplicationController

  def show_contact
    @contact = Contact.first
    render 'contact.json.jb'
  end

  def all_contacts
    @contacts = Contact.all

    render 'all_contacts.json.jb'
  end
end
