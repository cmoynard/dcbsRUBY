class MailsController < ApplicationController

    def index
        @fournis = Fourni.all
        @savforms = Savform.all
    end

    def envoie
        @sav_content = Savform.find(params[:numcom])
        @sav_fournis = Fourni.find_by(nom_f: @sav_content.fournisseur)

        data = [@sav_fournis, @sav_content]


        MailSavMailer.new_envoiemail(data).deliver_later
        redirect_to "/"
    end

end
