class FournisController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "dcbsadmin123"

  def accueil
    
  end

  def index
    @fournis = Fourni.all
  end

  def show
    @fourni = Fourni.find(params[:id])
  end

  def new
    @fourni = Fourni.new
  end

  def create
    @fourni = Fourni.new(fourni_params)

    if @fourni.save
      redirect_to @fourni
    else
      render :new
    end
  end

  def edit
    @fourni = Fourni.find(params[:id])
  end

  def update
    @fourni = Fourni.find(params[:id])

    if @fourni.update(fourni_params)
      redirect_to @fourni
    else 
      render :edit
    end
  end

  def destroy
    @fourni = Fourni.find(params[:id])
    @fourni.destroy

    redirect_to fournis_path
  end

  private
    def fourni_params
      params.require(:fourni).permit(:nom_f, :mail_f, :num_f)
    end

end
