class ChangeForeignKeyForClinicalProfile < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :clinical_profiles, :episodes, column: :episode_key, primary_key: "episode_key"
  end
end
