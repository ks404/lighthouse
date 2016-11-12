class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :geo
      t.string :user
      t.float :date
      t.string :city_name
      t.string :link
      t.string :text

      t.timestamps null: false
    end
  end
end
