class ChangeIdtoInt < ActiveRecord::Migration[7.0]
  def change
    change_column :mmis_medicaid_claims, :mmis_billing_medicaid_id, :int
    change_column :mmis_medicaid_claims, :mmis_billing_provider_id, :int
    change_column :dw_medicaid_claims, :dw_billing_medicaid_id, :int
    change_column :dw_medicaid_claims, :dw_billing_provider_id, :int
  end
end
