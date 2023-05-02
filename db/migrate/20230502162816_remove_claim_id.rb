class RemoveClaimId < ActiveRecord::Migration[7.0]
  def change
    remove_column :master_claims, :master_claim_id
    remove_column :mmis_medicaid_claims, :mmis_claim_id
    remove_column :dw_medicaid_claims, :dw_claim_id
  end
end
