class Photo < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "Photographer"

  # Indirect associations

  # Validations

end
