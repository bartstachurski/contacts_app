class Api::ContactsController < ApplicationController

  def index
    if current_user
      if params[:group]
        group = Group.find_by(name: params[:group])
        @contacts = group.contacts
        @contacts = @contacts.where(user_id: current_user.id)
      else
        @contacts = current_user.contacts
      end
    else
      @contacts = []
    end
    render 'index.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      middle_name: params[:middle_name],
      bio: params[:bio],
      user_id: current_user.id
      )
    if @contact.save
      render 'create.json.jb'
    else
      render 'error.json.jb'
    end
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render 'destroy.json.jb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @phone_number.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.bio = params[:bio] || @contact.bio
    @contact.save
    if @contact.save
      render 'update.json.jb'
    else
      render 'error.json.jb'
    end
  end
end
