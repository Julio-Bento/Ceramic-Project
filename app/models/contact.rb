class Contact
  include ActiveModel::Model
  attr_accessor :first_name, :last_name, :email, :phone_number, :agreement, :body
  validates :name, :email, :phone_number, :body, presence: true
end
