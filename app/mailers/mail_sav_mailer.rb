class MailSavMailer < ApplicationMailer
    def new_envoiemail
        @mails = params[:mails]

        mail(to: , subject: "Demande de SAV DCBS pour commande : "@savforms.numCommande )
    end
