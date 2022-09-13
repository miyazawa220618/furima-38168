class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :name,                  nill: false
      t.text    :info,                   nill: false
      t.integer :category_id,            nill: false
      t.integer :sales_status_id,        nill: false
      t.integer :shipping_fee_status_id, nill: false
      t.integer :prefecture_id,          nill: false
      t.integer :scheduled_delivery_id,  nill: false
      t.integer :price,                  nill: false
      t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
