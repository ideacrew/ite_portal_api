class AddProviderGatewayReferenceColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :provider_gateway_id, :string
    add_column :phones, :provider_gateway_id, :string
    add_column :substance_uses, :provider_gateway_id, :string
    add_column :episodes, :provider_gateway_id, :string
    add_column :clients, :provider_gateway_id, :string
    add_column :diagnoses, :provider_gateway_id, :string
    add_column :dla20s, :provider_gateway_id, :string
    add_column :clinical_profiles, :provider_gateway_id, :string
    add_column :client_profiles, :provider_gateway_id, :string
    add_column :cafas_pecfases, :provider_gateway_id, :string
  end
end
