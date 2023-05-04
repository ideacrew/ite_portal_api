class RemoveIdColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :denied_claims_with_reasons, :claim_id
    remove_column :denied_claims_with_reasons, :tcn_line_item_number
    remove_column :master_client_registries, :master_client_registry_id
    remove_column :claim_medicaid_ids, :medicaid_id_id
    remove_column :claim_phone_numbers, :phone_number_id
    remove_column :claim_addresses, :address_id
  end
end
