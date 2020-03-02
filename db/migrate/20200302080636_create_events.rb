class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title    ,null: false, default: "",index: true
      t.string :text    ,null: false, default: ""
      t.string :googlemap    
      t.string :instagram
      t.integer :user_id, foregin_key: true, null: false,index: true
      t.timestamps
    end
  end
end
