class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name, null: false
      t.integer :status, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date
      t.integer :quota, null: false
      t.string :reward

      t.timestamps
    end
  end
end
