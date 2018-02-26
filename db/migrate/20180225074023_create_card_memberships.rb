class CreateCardMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :card_memberships do |t|
      t.bigint :card_id
      t.bigint :deck_id
      t.timestamps
    end
  end
end
