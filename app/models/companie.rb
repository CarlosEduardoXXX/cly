class Companie < ApplicationRecord

  belongs_to :person

   has_many :events
   has_many :customers, through: :events
end
