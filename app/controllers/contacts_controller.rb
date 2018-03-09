class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
        flash.now[:notice] = 'Takk for din beskjed, du vil få svar så snart som mulig!'
      else
        flash.now[:error] = 'Meldingen kan ikke sendes'
        render :new
      end
  end
end
