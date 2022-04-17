class SavformsController < ApplicationController
  def index
    @savforms=Savform.all
  end

  def show
    @savform=Savform.find(params[:id])
  end

  def new
    @savform = Savform.new
    @fournis = Fourni.all
  end

  def create
    @fournis = Fourni.all
    @savform = Savform.new(savform_params)
    if @savform.save
      ReponseMailer.repondre(@savform).deliver_later
      redirect_to root_path
    else
      render :new, fournis: @fournis
    end
  end

  def destroy
    @savform = Savform.find(params[:id])
    @savform.destroy

    redirect_to savforms_path
  end

  private
    def savform_params
      params.require(:savform).permit(:nom, :prenom, :mail, :adresse, :ville, :postal, :numCommande, :numTel, :contenue, :fournisseur, :facture)
    end
end

