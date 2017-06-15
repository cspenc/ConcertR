class Concert < ApplicationRecord
  has_many :users, through: :reviews
end
