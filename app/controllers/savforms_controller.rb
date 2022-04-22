class SavformsController < ApplicationController
  def index
    @savforms=Savform.all #variable comprenant toute les données de la table savform
  end

  def show
    @savform=Savform.find(params[:id]) #variable contenant le savform correspondant à l'id donnée dans index
  end

  def new
    @savform = Savform.new #variable comprenant une nouvelle ligne dans la table savform
    @fournis = Fourni.all #variable contenant toutes les données de la table fourni
  end

  def create
    @fournis = Fourni.all #variable contenant toutes les données de la table fourni
    @savform = Savform.new(savform_params) #nouveau savform avec les paramètres donnés
    if @savform.save
      ReponseMailer.repondre(@savform).deliver_later #envoie d'un mail de confirmation avec le savform en paramètre
      redirect_to root_path #redirection vers la page index si le form est valide
    else
      render :new, fournis: @fournis #sinon on refait un new, en gardant les données des fournisseurs
    end
  end

  def destroy
    @savform = Savform.find(params[:id]) #variable contenant le savform correspondant à l'id donnée dans show
    @savform.destroy

    redirect_to savforms_path #redirection vers la page index après suppression du savform
  end

  private
    def savform_params #méthode pour définir les paramètres autorisés de savform
      params.require(:savform).permit(:nom, :prenom, :mail, :adresse, :ville, :postal, :numCommande, :numTel, :contenue, :fournisseur, :facture)
    end
end

