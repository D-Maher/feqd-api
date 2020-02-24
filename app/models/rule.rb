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
class Rule < ApplicationRecord
end
