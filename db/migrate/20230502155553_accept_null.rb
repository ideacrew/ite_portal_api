class AcceptNull < ActiveRecord::Migration[7.0]
  def change
    change_column :master_claims, :full_address, :text
    change_column :master_claims, :procedure_code, :string
    change_column :mmis_medicaid_claims, :mmis_procedure_code, :string
    change_column :dw_medicaid_claims, :dw_procedure_code, :string
  end
end
