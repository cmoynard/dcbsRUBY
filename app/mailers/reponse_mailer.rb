class ReponseMailer < ApplicationMailer
    def repondre(data) #méthode pour envoyer un mail de confirmation avec le savform en paramètre
        @data = data #variable contenant le savform

        delivery_options = { #options de l'envoie du mail
            port: 587,
            user_name: "testdcbs2022@gmail.com",
            password: "Dcbs12345678",
            address: "smtp.gmail.com",
            authentication: "plain",
            enable_starttls_auto: "true"
        }

        mail(to: data.mail, from: delivery_options[:user_name], subject: "DCBS : Nous prenons en compte votre demande", delivery_method_options: delivery_options)
        # envoie du mail au mail renseigné dans le savform, avec les paramètres donnés dans delivery_options
    end
    
end
