class User < ApplicationRecord

    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: {minimum: 3}

    has_secure_password
    
    def self.authenticate_with_credentials(email, password)
        user = User.find_by_email(email.strip.downcase)
        if user && user.authenticate(password)
          user
        else
          nil
        end
      end
    end