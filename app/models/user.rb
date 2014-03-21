require 'bcrypt'
class User < ActiveRecord::Base
	# users.password_hash in the database is a :string
	include BCrypt

    attr_accessor :password
    has_many :favorites
    has_many :coffee_shops, through: :favorites
    
    validates :username, uniqueness: true
    

  def authenticate?(password)
    self.hashed_password == BCrypt::Engine.hash_secret(password, self.salt)
  end
  before_save :hash_word
    
  private
    def hash_word
      self.salt = BCrypt::Engine.generate_salt
      self.hashed_password = BCrypt::Engine.hash_secret self.password, self.salt
      self.password = nil
    end
end
