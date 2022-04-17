class MailSavMailer < ApplicationMailer
    def new_envoiemail(data)
        @data = data

        mail(to: @data[0], subject: "Demande de SAV DCBS pour commande : "@data[1].numCommande )
    end
