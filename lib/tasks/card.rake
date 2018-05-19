namespace :card do
	desc "Generate 50 cards with prompts based on HIMYM quotes"
	task :generate_cards => :environment do
		50.times do
			Card.create(
				prompt: Faker::HowIMetYourMother.quote	
			)
		end
	end
end
