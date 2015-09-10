class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :category
      t.datetime :start_date
      t.datetime :end_date
      t.string :dif_rating
      t.string :list, array: true, default: []
      t.integer :points
      t.integer :user_id

      t.timestamps 
    end
  end
end
