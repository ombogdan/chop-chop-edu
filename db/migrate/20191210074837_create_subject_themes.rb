class CreateSubjectThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :subject_themes do |t|

      t.timestamps
    end
  end
end
