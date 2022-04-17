class ReponseMailer < ApplicationMailer
    def repondre(data)
        @data = data

        delivery_options = {
            port: 587,
            user_name: "testdcbs2022@gmail.com",
            password: "Dcbs12345678",
            address: "smtp.gmail.com",
            authentication: "plain",
            enable_starttls_auto: "true"
        }

        mail(to: data.mail, from: delivery_options[:user_name], subject: "DCBS : Nous prenons en compte votre demande", delivery_method_options: delivery_options)
    end
    
end
