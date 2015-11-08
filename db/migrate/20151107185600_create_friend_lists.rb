class CreateFriendLists < ActiveRecord::Migration
  def change
    create_table :friend_lists do |t|
      t.integer :user_id
      t.string :list, array: true

      t.timestamps null: false
    end
  end
end
