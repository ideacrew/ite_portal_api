class RemoveEpisodeIds < ActiveRecord::Migration[7.0]
  def change
    remove_column :cafas_pecfases, :episode_id
    remove_column :clinical_profiles, :episode_id
    remove_column :diagnoses, :episode_id
    remove_column :dla20s, :episode_id
    remove_column :substance_uses, :episode_id
  end
end
