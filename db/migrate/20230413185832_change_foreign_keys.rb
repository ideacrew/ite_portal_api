class ChangeForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_index :episodes, :episode_key, unique: true
    remove_foreign_key :diagnoses, column: :episode_id
    remove_foreign_key :dla20s, column: :episode_id
    remove_foreign_key :substance_uses, column: :episode_id
    remove_foreign_key :cafas_pecfases, column: :episode_id
    add_foreign_key :diagnoses, :episodes, column: :episode_key, primary_key: "episode_key"
    add_foreign_key :dla20s, :episodes, column: :episode_key, primary_key: "episode_key"
    add_foreign_key :substance_uses, :episodes, column: :episode_key, primary_key: "episode_key"
    add_foreign_key :cafas_pecfases, :episodes, column: :episode_key, primary_key: "episode_key"
  end
end
