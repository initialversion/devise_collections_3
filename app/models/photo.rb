class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Vote",
             :dependent => :destroy

  belongs_to :owner,
             :class_name => "Photographer"

  # Indirect associations

  # Validations

end
