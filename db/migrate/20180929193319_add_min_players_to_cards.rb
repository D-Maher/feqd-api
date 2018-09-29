class AddMinPlayersToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :min_players, :integer, null: false, default: 0
  end
end
