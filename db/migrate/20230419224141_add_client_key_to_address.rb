class AddClientKeyToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :client_key, :string
  end
end
