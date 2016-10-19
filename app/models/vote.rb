class Vote < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :class_name => "Photographer"

  # Indirect associations

  # Validations

end
