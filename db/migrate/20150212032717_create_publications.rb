class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :qt_entrance
      t.decimal :price_entrance
      t.decimal :price_sales
      t.boolean :important
      t.boolean :status
      t.string :direction
      t.float :latitude
      t.float :longitude
      t.integer :district_id
      t.integer :province_id
      t.integer :department_id
      t.integer :country_id

      t.timestamps
    end
  end
end
