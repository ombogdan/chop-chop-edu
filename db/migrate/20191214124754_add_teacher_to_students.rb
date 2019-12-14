class AddTeacherToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :teacher, :string
  end
end
