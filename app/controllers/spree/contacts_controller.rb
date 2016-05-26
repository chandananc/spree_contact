module Spree
  class ContactsController < Spree::StoreController
  
   def index
     @contacts = Spree::Contact.all
   end
   
   def show
     @contact = Spree::Contact.find(params[:id])
   end
   
   def new
     @contact =Spree::Contact.new
   end
   
   def create
    @contact = Spree::Contact.new(contact_params)
    if @contact.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
   end
   
   def edit
   end
   
   def update
    @contact = Spree::Contact.find(params[:id])
    if @contact.update_attributes(contact_param)
      redirect_to :action => 'show', :id => @contact
    else
      render :action => 'edit'
    end
   end
   
   def delete
      Spree::Contact.find(params[:id]).destroy
      redirect_to :action => 'index'
   end
    
   def contact_params
    params.require(:contact).permit(:firstname, :lastname, :birthday, :sex, :email, :phone, :address, :city, :province, :country, :postalcode)
   end
     
  end
end