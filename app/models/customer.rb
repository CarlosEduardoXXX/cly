class Customer < ApplicationRecord

  belongs_to :person

   has_many :events
   has_many :companies, through: :events

end
