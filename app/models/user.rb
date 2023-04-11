class User < ApplicationRecord

    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: {minimum: 3}

    has_secure_password

end