class AddLookupTables5thru10 < ActiveRecord::Migration[7.0]
  def change
    create_table 'list_races' do |t|
      t.string 'race_code', null: false
      t.string 'race'
      t.timestamps
      t.index ['race_code'], name: 'index_race_code'
    end

    create_table 'list_ethnicities' do |t|
      t.string 'ethnicity_code', null: false
      t.string 'ethnicity'
      t.timestamps
      t.index ['ethnicity_code'], name: 'index_ethnicity_code'
    end

    create_table 'list_living_arrangements' do |t|
      t.string 'living_arrangements_code', null: false
      t.string 'living_arrangements'
      t.timestamps
      t.index ['living_arrangements_code'], name: 'index_living_arrangements_code'
    end

    create_table 'list_discharge_reasons' do |t|
      t.string 'discharge_reason_code', null: false
      t.string 'discharge_reason'
      t.timestamps
      t.index ['discharge_reason_code'], name: 'index_discharge_reason_code'
    end

    create_table 'list_educations' do |t|
      t.string 'education_code', null: false
      t.string 'education'
      t.timestamps
      t.index ['education_code'], name: 'index_education_code'
    end

    create_table 'list_employments' do |t|
      t.string 'employment_code', null: false
      t.string 'employment'
      t.timestamps
      t.index ['employment_code'], name: 'index_employment_code'
    end

  end
end
