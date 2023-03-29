class AddLookupTables27thru30 < ActiveRecord::Migration[7.0]
  def change
    create_table "list_substance_names" do |t|
      t.string "substance_name_code", null: false
      t.string "substance_name"
      t.string "detail_substance_name_code"
      t.string "detail_substance_name"
      t.timestamps
      t.index ["substance_name_code"], name: "index_substance_name_code"
      t.index ["detail_substance_name_code"], name: "index_detail_substance_name_code"
    end

    create_table "list_substance_use_frequencies" do |t|
      t.string "primary_su_frequency_admission_code", null: false
      t.string "primary_su_frequency_admission"
      t.timestamps
      t.index ["primary_su_frequency_admission_code"], name: "index_primary_su_frequency_admission_code"
    end

    create_table "list_substance_use_routes" do |t|
      t.string "primary_su_route_code", null: false
      t.string "primary_su_route"
      t.timestamps
      t.index ["primary_su_route_code"], name: "index_primary_su_route_code"
    end

    create_table "list_opioid_therapy_uses" do |t|
      t.string "opioid_therapy_code", null: false
      t.string "opioid_therapy"
      t.timestamps
      t.index ["opioid_therapy_code"], name: "index_opioid_therapy_code"
    end
  end
end
