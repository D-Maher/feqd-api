# == Schema Information
#
# Table name: rules
#
#  id          :bigint           not null, primary key
#  body        :text
#  min_players :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class RuleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end