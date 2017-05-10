class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Merci pour votre message, nous vous recontacterons ASAP !'
      render :create
    else
      flash.now[:error] = "Votre message n'a pas être envoyé..."
      render :new
    end
  end
end
