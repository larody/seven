class CreateDones < ActiveRecord::Migration
  def change
    create_table :dones do |t|
      t.date :done_date, null: false
      t.references :challenge, null: false
      t.references :user, null: false

      t.timestamps
    end

    add_index :dones, :challenge_id
    add_index :dones, :user_id
  end
end
