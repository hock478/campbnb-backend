class Property < ApplicationRecord
    
    belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
    has_many :reservations 
    has_many :reviews, through: :reservations 


end