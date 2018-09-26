class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.belongs_to :person, index: true
      t.string :cpf
      t.string :nickname

      t.timestamps
    end
  end
end
