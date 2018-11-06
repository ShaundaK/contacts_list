class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
     @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      user_id: 1
      )
    @contact.save
    redirect_to "/contacts"
     end

  def new
    render "new.html.erb"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.save!
    redirect_to "/contacts"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
