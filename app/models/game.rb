class Game < ApplicationRecord
  belongs_to :player_one, class_name: "Player"
  belongs_to :player_two, class_name: "Player"
  has_many :scores
  has_many :players, through: :scores
end
