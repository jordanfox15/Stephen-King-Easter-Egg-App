class Book < ActiveRecord::Base

  has_many :associations
  has_many :repeaters, through: :associations

end
