class RequiredStatus < ActiveRecord::Migration[7.0]
  def change
    remove_column :dw_medicaid_claims, :dw_adjudication_status
    add_column :dw_medicaid_claims, :dw_adjudication_status, :string, null: false
    remove_column :master_claims, :adjudication_status
    add_column :master_claims, :adjudication_status, :string, null: false
    remove_column :mmis_medicaid_claims, :mmis_adjudication_status
    add_column :mmis_medicaid_claims, :mmis_adjudication_status, :string, null: false
    remove_column :master_claims, :claim_information_source
    add_column :master_claims, :claim_information_source, :string, null: false
  end
end
