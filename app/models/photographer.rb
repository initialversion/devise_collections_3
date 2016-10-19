class Photographer < ApplicationRecord
  # Direct associations

  has_many   :votes,
             :foreign_key => "user_id",
             :dependent => :destroy

  has_many   :photos,
             :foreign_key => "owner_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :liked_photos,
             :through => :votes,
             :source => :liked_photo

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
