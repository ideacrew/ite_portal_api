class AddLookupTable11 < ActiveRecord::Migration[7.0]
  def change
    create_table "list_diagnosis_icd10_codes" do |t|
      t.string "diagnosis_code", null: false
      t.string "diagnosis_short_description"
      t.string "diagnosis_long_description"
      t.timestamps
      t.index ["diagnosis_code"], name: "index_diagnosis_code"
    end
  end
end
