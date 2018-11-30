class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
        t.string   :name, null: false
        t.text        :image
        t.text        :detail
        t.string :company
        t.text  :material
        t.text  :preservation
        t.text  :nutrition
        t.text  :recipe
        t.integer  :quantity
        t.integer :category_id
        t.integer :user_id
        t.timestamps null: false
    end
  end
end
