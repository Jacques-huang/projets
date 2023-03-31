class ArticlesController < ApplicationController
  def index
    @Oui = Oui.new
  end
  def create
    @Oui = Oui.new(params(:user))
    if @Oui.save
      redirect_to root_path, notice:"reussit!"
    else
      render :new
    end
  end

  private
  def Oui_params
    params.require(:user).permit(:nom,:prenom,:sujet)

  end
end