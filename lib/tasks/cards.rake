namespace :cards do
	desc "Generate 50 cards with prompts based on HIMYM quotes"
	task :generate_cards => :environment do
		50.times do
			Card.create(
				deck_id: (1..5).to_a.sample,
				prompt: Faker::HowIMetYourMother.quote	
			)
		end
	end
end
