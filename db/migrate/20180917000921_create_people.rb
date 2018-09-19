class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :cep
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
