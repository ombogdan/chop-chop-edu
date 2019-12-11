class CreateSubjectThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :subject_themes do |t|
      t.string :theme_name
      t.integer :course_id, null: true

      t.timestamps
    end
  end
end
