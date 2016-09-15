class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end  

  def create
    Customer.create(customer_params)
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :password, :project_name, :org_name)
  end
  
end
