class MailsController < ApplicationController

    def index
        @mails = mails.new(mails_params)
        @fournis = Fourni.all
        @savforms = Savform.all

        if @mails.save
            MailSavMailer.with(mails: @mails).new_envoiemail

            flash[:success] = "L'email a bien été envoyé !"
            redirect_to email_path
        else 
            flash[:error] = "L'email n'as pas été envoyé !"
            redirect_to email_path
        end
    end

    def envoie
        
    end

    def mails_params
        params.require(:mails).permit(:numcom, :nomf)
    end

end
