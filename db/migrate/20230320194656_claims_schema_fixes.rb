class ClaimsSchemaFixes < ActiveRecord::Migration[7.0]
  def change
    change_column :master_claims, :claim_tcn, :string, limit: 17
    change_column :master_claims, :original_tcn_of_adjusted_claim, :string, limit: 17

    rename_column :master_claims, :modifiers, :modifier
    rename_column :master_claims, :other_diagnosis, :other_diagnosis_code

    add_index :master_claims, :claim_tcn
    add_index :master_claims, :billing_medicaid_id

    add_index :master_clients, :full_name
  end
end
