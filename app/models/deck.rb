# == Schema Information
#
# Table name: decks
#
#  id          :bigint           not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Deck < ApplicationRecord

  has_many :card_memberships
  has_many :cards, through: :card_memberships

end
