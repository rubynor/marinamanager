class Contact < MailForm::Base
	attribute :navn,      :validate => true
	attribute :epostadresse,     :validate =>  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :melding

	def headers
		{
				:subject => "My Contact Form",
				:to => "test@gmail.com",
				:from => %("#{navn}" <#{epostadresse}>)
		}
	end

end