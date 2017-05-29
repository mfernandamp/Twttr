class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :mail
      t.string :biography

      t.timestamps
    end
  end
end
