class AddMasterClientChildTables < ActiveRecord::Migration[7.0]
  def change
    create_table 'claim_medicaid_ids' do |t|
      t.string 'medicaid_id_id'
      t.string 'master_client_id'
      t.string 'medicaid_id'
      t.string 'eligibility_program_code'
      t.date 'record_source_date'
      t.timestamps
      t.index ['medicaid_id_id'], name: 'index_medicaid_id_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

    create_table 'claim_phone_numbers' do |t|
      t.string 'phone_number_id'
      t.string 'master_client_id'
      t.string 'phone_number'
      t.date 'record_source_date'
      t.timestamps
      t.index ['phone_number_id'], name: 'index_phone_number_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

    create_table 'claim_addresses' do |t|
      t.string 'address_id'
      t.string 'master_client_id'
      t.string 'full_address'
      t.date 'record_source_date'
      t.timestamps
      t.index ['master_address_id'], name: 'index_address_id'
      t.index ['master_client_id'], name: 'index_master_client_id'
    end

  end
end
