namespace :test_data do
  desc "Generate all test data"
  task seed: :environment do
    Rake::Task["deck:generate_decks"].invoke
    Rake::Task["card:generate_cards"].invoke
    Rake::Task["card_membership:generate_card_memberships"].invoke
  end
end
