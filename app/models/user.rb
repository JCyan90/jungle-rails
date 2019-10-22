class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email, :case_sensitive => false

  # This validation serves for the tests. Without validation, a nil value would mean that the confirmation is not needed and thus a user would be created
  validates :password_confirmation, presence: true, length: { minimum: 5 }
end
