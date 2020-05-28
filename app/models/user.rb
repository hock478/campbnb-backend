class User < ApplicationRecord
    has_secure_password
    validates :username, :uniqueness => {:case_sensitive => false}

    has_many :messages
    has_many :communities

    has_many :reservations
    has_many :reviews
    has_many :properties, :class_name => 'Property', :foreign_key => 'owner_id'

    

end