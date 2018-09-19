class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :company, index: true
      t.string :name
      t.boolean :customer_confirm
      t.boolean :company_confirm
      t.date :date
      t.float :price

      t.timestamps
    end
  end
end
