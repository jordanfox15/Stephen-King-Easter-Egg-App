class Repeater < ActiveRecord::Base

  has_many :associations
  has_many :books, through: :associations

end
