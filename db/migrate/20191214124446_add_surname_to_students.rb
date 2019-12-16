class AddSurnameToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :surname, :string
  end
end
