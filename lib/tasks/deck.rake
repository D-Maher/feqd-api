namespace :deck do
	desc "Generate 5 decks with Titles, and descriptions"
	task :generate_decks => :environment do
		5.times do
			Deck.create(
				title: Faker::Beer.name,
				description: Faker::Beer.style
			)
		end
	end
end