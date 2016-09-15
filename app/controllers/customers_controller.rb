class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end  

  def create
    @customer = Customer.create(customer_params)
    if @customer.valid?
        redirect_to root_path
    else
        render :new, :status => :unprocessable_entity
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :password, :project_name, :org_name)
  end
  
end
