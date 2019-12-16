class AddPhoneToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :phone, :integer
  end
end
