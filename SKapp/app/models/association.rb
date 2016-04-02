class Association < ActiveRecord::Base

  belongs_to :book
  belongs_to :repeater

end
