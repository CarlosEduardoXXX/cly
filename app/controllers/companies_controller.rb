class CompaniesController < ApplicationController

  def index

    @companies = Companie.all

  end

  def new

    #@companie = Companie.new

  end

  def create

    @companie = Companie.new(param_companie)

  @companie.save
  redirect_to @companie

  end

  def show

    @companie = Companie.find(params[:id])

  end

  private

  def param_companie

  (params.require(:companie).permit(:cnpj, :nickname))

  end

end
