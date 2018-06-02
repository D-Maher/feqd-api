class Card < ApplicationRecord
  has_many :card_memberships
  has_many :decks, through: :card_memberships
end
