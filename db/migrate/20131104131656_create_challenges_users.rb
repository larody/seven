class CreateChallengesUsers < ActiveRecord::Migration
  def change
    create_table :challenges_users, id: false do |t|
      t.references :challenge
      t.references :user

      t.timestamps
    end

    add_index :challenges_users, :challenge_id
    add_index :challenges_users, :user_id
  end
end
