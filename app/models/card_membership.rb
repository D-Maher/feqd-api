# == Schema Information
#
# Table name: card_memberships
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  card_id    :bigint
#  deck_id    :bigint
#
class CardMembership < ApplicationRecord

  belongs_to :card
  belongs_to :deck

end
