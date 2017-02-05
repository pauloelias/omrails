class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :title
      t.text :desscription
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
