class MailSavMailer < ApplicationMailer
    def new_envoiemail(data) #définition de la méthode new_envoiemail avec en paramètre le tableau de mails_controller

        @data = data #variable avec les données du tableau data

        delivery_options = { #options du mailer pour envoyer le mail d'une adresse
            port: 587,
            user_name: "testdcbs2022@gmail.com",
            password: "Dcbs12345678",
            address: "smtp.gmail.com",
            authentication: "plain",
            enable_starttls_auto: "true"
        }

        mail(to: data[0].mail_f, from: delivery_options[:user_name], subject: "Demande de SAV DCBS pour commande : #{data[1].numCommande}", delivery_method_options: delivery_options)
        # envoie du mail au mail du client sav avec les options définies dans delivery_options
    end
end
