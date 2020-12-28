class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.date :date
      t.boolean :favourite

      t.timestamps
    end
  end
end
