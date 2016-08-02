class Book < ActiveRecord::Base
  belongs_to :genre
  belongs_to :author

  scope :crime, ->{where(genre_id:4)}


end
