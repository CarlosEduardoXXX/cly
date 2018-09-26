class CustomersController < ApplicationController

  def index

    @customers = Customer.all

  end

  def new

  end

  def create

  end

end


