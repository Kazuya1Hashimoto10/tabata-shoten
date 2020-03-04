class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title    ,null: false, default: "",index: true
      t.text  :instagram
      t.integer :user_id, foregin_key: true, null: false,index: true
      t.timestamps
    end
  end
end
