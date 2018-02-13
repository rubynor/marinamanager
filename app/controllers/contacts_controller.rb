class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
			flash.now[:notice] = 'Takk for beskjeden!'
		else
			flash.now[:error] = 'Noe gikk galt.'
			render :new
		end
	end

end
