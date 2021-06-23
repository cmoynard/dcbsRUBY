class Savform < ApplicationRecord
    validates :nom, :presence => {message: "Veuillez entrer votre nom." }
    validates :prenom, :presence => {message: "Veuillez entrer votre prénom." }
    validates :mail, :presence => {message: "Veuillez entrer votre mail." }, :format => { with: URI::MailTo::EMAIL_REGEXP, message: "L'email n'est pas valide"}
    validates :ville, :presence => {message: "Veuillez entrer une ville." }
    validates :postal, :presence => {message: "Veuillez entrer votre code postal" }, :numericality => {message: "Il faut des chiffres." }, :length => { minimum: 5, maximum: 5, message: "Veuillez entrer un code postal correct (5 chiffres)." }
    validates :numCommande, :presence => {message: "Veuillez entrer votre numéro de commande." }, :numericality => {message: "Il faut des chiffres." }, :length => { minimum: 5, maximum: 5, message: "Veuillez entrer un numéro de commmande correct (5 chiffres)." }
    validates :fournisseur, :presence => {message: "Veuillez entrer votre numéro de commande." }
    validates :numTel, :presence => {message: "Veuillez entrer un numéro." }, :numericality => {message: "Il faut des chiffres." }, :length => { minimum: 10, maximum: 10, message: "Veuillez entrer un numéro correct (10 chiffres)." }
    validates :contenue, :presence => {message: "Veuillez donnez des détails de votre soucis." }, :length => { minimum: 10, maximum: 1300, message: "Minimum 10 caractères." }
    has_one_attached :facture
    validates :facture, :presence => {message: "Veuillez donner une photo de votre facture." }
end
