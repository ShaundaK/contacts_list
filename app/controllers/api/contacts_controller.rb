class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def show
    contact_id =params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  # def destroy
  #   @product_id = params[:id]
  #   @product = Product.find_by(id: product_id)
  #   @product.destry
  #   render "destroy.json.jbuilder"
end


