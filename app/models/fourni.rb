class Fourni < ApplicationRecord
    validates :nom_f, :presence => {message: "Veuillez entrer un nom." }, :uniqueness => {message: "Ce fournisseur est déjà enregistré." }
    validates :mail_f, :presence => {message: "Veuillez entrer un mail." }, :format => { with: URI::MailTo::EMAIL_REGEXP, message: "L'email n'est pas valide"}
    validates :num_f, :presence => {message: "Veuillez entrer un numero." }, :numericality => {message: "Il faut des chiffres." }, :length => { minimum: 10, maximum: 10, message: "Veuillez entrer un numero correct (10 chiffres)." }
end
