class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content,  :null => false, :limit => 140
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
