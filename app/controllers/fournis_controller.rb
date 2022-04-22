class FournisController < ApplicationController

  def accueil
    #definition des méthodes pour la route fournis#accueil (vide car il n'y en a pas besoin)
  end

  def index
    @fournis = Fourni.all #variable comprenant toutes les données de la table Fourni
    @fourni = Fourni.new #variable comprenant une nouvelle ligne dans la table Fourni
  end

  def show
    @fourni = Fourni.find(params[:id]) #variable avec la Fourni correspondant à l'id donnée dans index
  end

  def new
    @fourni = Fourni.new #variable comprenant une nouvelle ligne dans la table Fourni
  end

  def create
    @fourni = Fourni.new(fourni_params) #nouveau fourni avec les paramètres donnés

    if @fourni.save
      redirect_to @fourni #redirection vers la page show si le form est valide
    else
      render :new #sinon on revient sur la page new
    end
  end

  def edit
    @fourni = Fourni.find(params[:id]) #variable avec le Fourni correspondant à l'id donnée dans show
  end

  def update
    @fourni = Fourni.find(params[:id]) #variable avec le Fourni correspondant à l'id donnée dans show

    if @fourni.update(fourni_params)
      redirect_to @fourni #redirection vers la page show si l'update est valide
    else 
      render :edit #sinon on revient sur la page edit
    end
  end

  def destroy
    @fourni = Fourni.find(params[:id])
    @fourni.destroy #suppression de la ligne dans la table Fourni

    redirect_to fournis_path #redirection vers la page index
  end

  private
    def fourni_params #méthode pour définir les paramètres autorisés
      params.require(:fourni).permit(:nom_f, :mail_f, :num_f)
    end

end
