class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false

      t.belongs_to :distributor, index: true
      t.belongs_to :company, index: true
    end
  end
end
