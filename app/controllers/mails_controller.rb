class MailsController < ApplicationController

    def index
        @fournis = Fourni.all
        @savforms = Savform.all #deux variables avec les données des tables savform et fourni
    end

    def envoie #page en post défini dans les routes en tant que mails#envoie, exécuté quand le formualaire de mails#index est validé
        @sav_content = Savform.find(params[:numcom]) #variable avec le savform correspondant au num de commande du formulaire dans index
        @sav_fournis = Fourni.find_by(nom_f: @sav_content.fournisseur) #variable avec le nomf correspondant au nom du fournisseur dans savform

        data = [@sav_fournis, @sav_content] #tableau avec les données de savform et fourni


        MailSavMailer.new_envoiemail(data).deliver_later
        redirect_to "/" #redirection vers la page root après l'envoi du mail avec les data en paramètre
    end

end
