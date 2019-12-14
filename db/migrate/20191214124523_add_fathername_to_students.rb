class AddFathernameToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :fathername, :string
  end
end
