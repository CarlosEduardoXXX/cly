class CustomersController < ApplicationController

  def index

    @customers = Customer.all

  end

  def new

  end

  def create

    puts param_customer
    @person = Person.new
    @person.name = param_customer[:name]

    @customer = Customer.new
    @customer.person = @person
    @customer.cpf = param_customer[:cpf]
    @customer.nickname = param_customer[:nickname]
    @customer.save
    redirect_to @customer

  end

  def show

    @customer = Customer.find(params[:id])


  end

  def edit

    @customer = Customer.find(params[:id])


  end

  def update
    @customer = Customer.find(params[:id])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to customer_path(@customer)
  end

  def destroy

    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_path

  end

  private

  def param_customer

    (params.require(:customer).permit(:name, :cpf, :nickname))

  end

end


