class CreateFavorits < ActiveRecord::Migration[5.0]
  def change
    create_table :favorits do |t|
      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
