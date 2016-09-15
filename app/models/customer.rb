class Customer < ApplicationRecord
  validates :first_name, presence: { message: "First Name must have a value" }
  validates :last_name, presence: { message: "Last Name must have a value" }
  validates :email, presence: { message: "Email must have a value" }, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
    message: "Enter a valid email format" }, if: :new_customer?
  validates :password, presence: { message: "Password must have a value" }, length: { minimum: 6 }
  validates :project_name, presence: { message: "Project Name must have a value" }
  validates :org_name, presence: { message: "Organization Name must have a value" }

  def new_customer?
    true
  end
end
