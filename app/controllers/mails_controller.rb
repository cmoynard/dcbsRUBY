class MailsController < ApplicationController

    def index
        @mails = mails.new(mails_params)
        @fournis = Fourni.all
        @savforms = Savform.all

        if @mail.save
            MailSavMailer.with(mail: @mail).new_envoiemail

            flash[:success] = "L'email a bien été envoyé !"
    end

    def envoie
        
    end

    def mails_params
        params.require(:mail).permit(:numcom, :nomf)
    end
    
end