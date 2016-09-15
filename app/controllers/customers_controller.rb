class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end  

  def create
    @customer = Customer.new(customer_params)
    if @customer.valid?
      @customer.save
      redirect_to confirmation_path
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def confirmation
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :password, :project_name, :org_name)
  end
  
end
