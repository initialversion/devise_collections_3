class Vote < ApplicationRecord
  # Direct associations

  belongs_to :liked_photo,
             :class_name => "Photo",
             :foreign_key => "photo_id"

  belongs_to :user,
             :class_name => "Photographer"

  # Indirect associations

  # Validations

end
