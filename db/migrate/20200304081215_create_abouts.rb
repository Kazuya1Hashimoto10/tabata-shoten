class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :content    ,null: false
      t.integer :user_id, foregin_key: true, null: false,index: true
      t.timestamps
    end
  end
end
