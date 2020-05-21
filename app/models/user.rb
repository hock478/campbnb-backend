class User < ApplicationRecord
    has_many :reservations
    has_many :reviews
    has_many :properties, :class_name => 'Property', :foreign_key => 'owner_id'

    

end