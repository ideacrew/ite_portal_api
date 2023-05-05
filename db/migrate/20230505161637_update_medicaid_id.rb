class UpdateMedicaidId < ActiveRecord::Migration[7.0]
  def change
    change_column :mhgps_enrollments, :medicaid_id, :int, null: false
    add_index :mhgps_enrollments, :medicaid_id
  end
end
