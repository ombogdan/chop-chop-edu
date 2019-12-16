class AddGroupnameToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :groupname, :string
    add_index :students, :groupname, unique: true
  end
end
