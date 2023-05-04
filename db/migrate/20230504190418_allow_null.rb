class AllowNull < ActiveRecord::Migration[7.0]
  def change
    change_column :dw_medicaid_claims, :dw_date_of_birth, :date
    change_column :master_claims, :date_of_birth, :date
    change_column :master_client_registries, :date_of_birth, :date
    change_column :master_clients, :date_of_birth, :date
    change_column :mhgps_enrollments, :date_of_birth, :date
    change_column :mmis_medicaid_claims, :mmis_date_of_birth, :date
    change_column :dw_medicaid_claims, :dw_gender, :string
    change_column :master_claims, :gender, :string
    change_column :master_client_registries, :gender, :string
    change_column :master_clients, :gender, :string
    change_column :mmis_medicaid_claims, :mmis_gender, :string
  end
end
