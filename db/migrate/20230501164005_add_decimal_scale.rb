class AddDecimalScale < ActiveRecord::Migration[7.0]
  def change
    remove_column :master_claims, :billed_amount
    remove_column :master_claims, :mco_encounter_paid_amount
    remove_column :master_claims, :paid_amount
    remove_column :mmis_medicaid_claims, :mmis_billed_amount
    remove_column :mmis_medicaid_claims, :mmis_paid_amount
    remove_column :dw_medicaid_claims, :dw_mco_encounter_paid_amount
    remove_column :dw_medicaid_claims, :dw_billed_amount
    remove_column :dw_medicaid_claims, :dw_paid_amount
    add_column :master_claims, :billed_amount, :decimal, precision: 10, scale: 2
    add_column :master_claims, :mco_encounter_paid_amount, :decimal, precision: 10, scale: 2
    add_column :master_claims, :paid_amount, :decimal, precision: 10, scale: 2
    add_column :mmis_medicaid_claims, :mmis_billed_amount, :decimal, precision: 10, scale: 2
    add_column :mmis_medicaid_claims, :mmis_paid_amount, :decimal, precision: 10, scale: 2
    add_column :dw_medicaid_claims, :dw_mco_encounter_paid_amount, :decimal, precision: 10, scale: 2
    add_column :dw_medicaid_claims, :dw_billed_amount, :decimal, precision: 10, scale: 2
    add_column :dw_medicaid_claims, :dw_paid_amount, :decimal, precision: 10, scale: 2
  end
end
