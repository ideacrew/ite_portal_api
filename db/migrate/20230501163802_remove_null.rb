class RemoveNull < ActiveRecord::Migration[7.0]
  def change
    remove_column :master_claims, :adjudication_status
    add_column :master_claims, :adjudication_status, :string
    remove_column :master_claims, :claim_information_source
    add_column :master_claims, :claim_information_source, :string
  end
end
