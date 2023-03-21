class AddLookupTables < ActiveRecord::Migration[7.0]
  def change

    create_table 'denial_reasons' do |t|
      t.string 'denial_reason_code', null: false
      t.string 'denial_reason_description', null: false
      t.index ['denial_reason_code'], name: 'index_denial_reason_code'
      t.timestamps
    end

    create_table 'provider_type' do |t|
      t.string 'provider_type_code', null: false
      t.string 'provider_type_description', null: false
      t.index ['provider_type_code'], name: 'index_provider_type_code'
      t.timestamps
    end

    create_table 'procedures' do |t|
      t.string 'procedure_code', null: false
      t.string 'procedure_description', null: false
      t.string 'payment_unit'
      t.index ['procedure_code'], name: 'index_procedure_code'
      t.timestamps
    end

    create_table 'procedure_modifiers' do |t|
      t.string 'modifier_code', null: false
      t.string 'modifier_description', null: false
      t.index ['modifier_code'], name: 'index_modifier_code'
      t.timestamps
    end

    create_table 'place_of_services' do |t|
      t.integer 'place_of_service_code', null: false
      t.string 'place_of_service_name', null: false
      t.text 'place_of_service_description', null: false
      t.text 'special_considerations'
      t.date 'effective_date'
      t.boolean 'effective_prior_to_2003'
      t.index ['place_of_service_code'], name: 'index_place_of_service_code'
      t.timestamps
    end
  end
end
