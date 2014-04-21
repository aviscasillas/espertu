class ContactsController < ApplicationController
  respond_to :js

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      @contact = Contact.new
      flash.now[:notice] = 'Yeha! Message sent'
    else
      flash.now[:error] = 'Fuck! Sending error'
    end
  end
end
