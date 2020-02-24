# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  min_players :integer          default("0"), not null
#  prompt      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class CardTest < ActiveSupport::TestCase
end
