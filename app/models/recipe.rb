class Recipe < ApplicationRecord
  belongs_to :user

  has_many :likes
  has_many :recepies, through: :like
end
