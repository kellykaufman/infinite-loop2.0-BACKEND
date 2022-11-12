class AddsUserIdToAnxietiesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :anxieties, :user_id, :string
  end
end
