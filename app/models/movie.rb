class Movie < ApplicationRecord

  has_many :actors
  
  validates :title, :plot, presence: true

end
