class Deck < ApplicationRecord
	has_many :card_memberships
	has_many :cards, through: :card_memberships
end
