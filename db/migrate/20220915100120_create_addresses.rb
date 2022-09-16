class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string     :postal_code,   nill: false
      t.integer    :prefecture_id, nill: false
      t.string     :city,          nill: false
      t.string     :house_number,  nill: false
      t.string     :building,      nill: false
      t.string     :phone_number,  nill: false
      t.references :order,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
