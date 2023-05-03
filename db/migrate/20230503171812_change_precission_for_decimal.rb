class ChangePrecissionForDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :master_claims, :billed_amount, :decimal, precision: 18, scale: 2
    change_column :master_claims, :mco_encounter_paid_amount, :decimal, precision: 18, scale: 2
    change_column :master_claims, :paid_amount, :decimal, precision: 18, scale: 2
    change_column :mmis_medicaid_claims, :mmis_billed_amount, :decimal, precision: 18, scale: 2
    change_column :mmis_medicaid_claims, :mmis_paid_amount, :decimal, precision: 18, scale: 2
    change_column :dw_medicaid_claims, :dw_mco_encounter_paid_amount, :decimal, precision: 18, scale: 2
    change_column :dw_medicaid_claims, :dw_billed_amount, :decimal, precision: 18, scale: 2
    change_column :dw_medicaid_claims, :dw_paid_amount, :decimal, precision: 18, scale: 2
  end
end
