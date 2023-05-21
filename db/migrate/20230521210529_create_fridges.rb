class CreateFridges < ActiveRecord::Migration[7.1]
  def change
    create_table :fridges do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :has_refrig
      t.boolean :has_freezer
      t.boolean :is_healthy
      t.datetime :last_alerted
      t.datetime :last_reported
      t.integer :report_frequency

      t.timestamps
    end
  end
end
