class AddStudentToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :student, :string
  end
end
