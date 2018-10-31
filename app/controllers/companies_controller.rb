class CompaniesController < ApplicationController

  def index

    @companies = Companie.all

  end

  def new

  end

  def create

    @person = Person.new
    @person.name = param_companie[:name]

    @companie = Companie.new
    @companie.person = @person
    @companie.cnpj = param_companie[:cnpj]
    @companie.nickname = param_companie[:nickname]
    @companie.save
    redirect_to @companie

  end


  def show

    @companie = Companie.find(params[:id])

  end

   def edit

    @companie = Companie.find(params[:id])

  end

  def update

    @companie = Companie.find(params[:id])
    flash[:notice] = "#was successfully updated."
    redirect_to company_path(@companie)
  end

  def destroy

    @companie = Companie.find(params[:id])
    @companie.destroy

    redirect_to companies_path

  end

  private

  def param_companie

   (params.require(:companie).permit(:name, :cnpj, :nickname))

  end

end
