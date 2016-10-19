class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Vote",
             :dependent => :destroy

  belongs_to :owner,
             :class_name => "Photographer"

  # Indirect associations

  has_many   :fans,
             :through => :likes,
             :source => :user

  # Validations

end
