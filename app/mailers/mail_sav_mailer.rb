class MailSavMailer < ApplicationMailer
    def new_envoiemail(data)

        @data = data

        delivery_options = {
            port: 587,
            user_name: "testdcbs2022@gmail.com",
            password: "Dcbs12345678",
            address: "smtp.gmail.com",
            authentication: "plain",
            enable_starttls_auto: "true"
        }

        mail(to: data[0].mail_f, from: delivery_options[:user_name], subject: "Demande de SAV DCBS pour commande : #{data[1].numCommande}", delivery_method_options: delivery_options)
    end
end
