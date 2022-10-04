class CreateAnxieties < ActiveRecord::Migration[7.0]
  def change
    create_table :anxieties do |t|
      t.string :life_theme
      t.string :intrusive_thought_or_feeling
      t.string :obsessional_theme
      t.string :opposite_thought
      t.string :opposite_action
      t.integer :timer
      t.string :progress

      t.timestamps
    end
  end
end
