class CreateLabs < ActiveRecord::Migration[6.0]
  def change
    create_table :labs do |t|
      t.string :theme_name, null: false
      t.integer :subject_theme_id, null: true
      t.string :goal, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
