class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.string :theme_name, null: false
      t.integer :subject_theme_id, null: true
      t.text :text, null: false

      t.timestamps
    end
  end
end
