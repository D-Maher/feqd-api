class Card < ApplicationRecord
	has_many :card_memberships
	has_many :decks, through: :card_memberships

	require 'csv'

	def self.create_from_csv(file)
	  CSV.foreach(file.path, headers: true) do |row|
		binding.pry
		Card.create!({ card: row.to_hash })
	  end
	end

end
