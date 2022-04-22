class ApplicationMailer < ActionMailer::Base
  default from: 'testdcbsruby@gmail.com' #definition de l'adresse mail par defaut pour les mails envoyés
  layout 'mailer'
end
