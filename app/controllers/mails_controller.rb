class MailsController < ApplicationController

    def index
        @fournis = Fourni.all
        @savforms = Savform.all
    end

    def envoie
        @mailsf = Fourni.find(params[:nomf]).mail_f
        @sav_content = Savform.find(params[:numcom])
        
        data = [@mailsf, @sav_content]

        MailSavMailer.new_envoiemail(data).deliver_now
        redirect_to "/"
    end

end
