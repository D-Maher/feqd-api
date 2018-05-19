namespace :card_membership do
	desc "Generate 200 Card Memberships"
	task :generate_card_memberships => :environment do
		200.times do
			CardMembership.create(
				deck_id: (1..5).to_a.sample,
				card_id: (1..50).to_a.sample
			)
		end
	end
end
