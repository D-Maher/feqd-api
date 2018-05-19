namespace :decks do
	desc "Generate 5 decks with Titles, and descriptions"
	task :generate_decks => :environment do
		5.times do
			Deck.create(
				Title: Faker::Beer.name	
				Description: Faker::Beer.style
			)
		end
	end
end