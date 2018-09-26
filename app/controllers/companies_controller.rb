class CompaniesController < ApplicationController

  def index

    @companies = Companie.all

  end

  def new

  end

  def create

  end

end
