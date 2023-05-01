class ChangeToInt < ActiveRecord::Migration[7.0]
  def change
    remove_column :master_claims, :billing_medicaid_id
    add_column :master_claims, :billing_medicaid_id, :int
    remove_column :master_claims, :billing_provider_id
    add_column :master_claims, :billing_provider_id, :int, null: false
    remove_column :master_client_registries, :billing_medicaid_id
    add_column :master_client_registries, :billing_medicaid_id, :int
    remove_column :master_client_registries, :billing_provider_id
    add_column :master_client_registries, :billing_provider_id, :int
  end
end
