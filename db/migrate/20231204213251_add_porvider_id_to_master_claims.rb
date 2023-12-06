class AddPorviderIdToMasterClaims < ActiveRecord::Migration[7.0]
  def change
    add_column :master_claims, :rendering_provider_id, :string
  end
end
