class Api::ContactsController < ApplicationController
  def index
    p 'current_user'
    p current_user
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def show
    contact_id =params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name], 
      middle_name: params[:middle_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      phone_number: params[:phone_number]
      )
      # user_id: current_user.id 
    @contact.save
    render "show.json.jbuilder"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:input_first_name],
      middle_name: params[:input_middle_name]
      # last_name: params[:input_last_name],
      # email: params[:input_email],
      # phone_number: params[:input_phone_number],
      )
    render "show.json.jbuilder"
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render "destroy.json.jbuilder"
  end
end 


