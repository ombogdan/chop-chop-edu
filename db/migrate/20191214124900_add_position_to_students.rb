class AddPositionToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :position, :string
  end
end
