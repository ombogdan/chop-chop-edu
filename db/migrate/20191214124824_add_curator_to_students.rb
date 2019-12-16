class AddCuratorToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :curator, :string
  end
end
