class Customer < ApplicationRecord
  include ActiveModel::Validations

  validates :first_name, presence: { message: "First Name must have a value" }
  validates :last_name, presence: { message: "Last Name must have a value" }
  validates :email, presence: { message: "Email must have a value" }, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
    message: "Enter a valid email format" }
  validates :password, presence: { message: "Password must have a value" }, length: { minimum: 6 , message: "Password must be at least 6 characters" }
  validates :project_name, presence: { message: "Project Name must have a value" }
  validates :org_name, presence: { message: "Organization Name must have a value" }
  validate  :new_customer

  # Custon validation for new customer
  def new_customer
    customers = Customer.all
    customers.each do |c|
      if c.email == self.email
        errors.add(:email, 'Do you have an account with us already? <a href="#">Sign in.</a>'.html_safe)
        return  
      end
    end
  end
end
