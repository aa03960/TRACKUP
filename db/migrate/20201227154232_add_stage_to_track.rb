class AddStageToTrack < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :notes, :string
  end
end
