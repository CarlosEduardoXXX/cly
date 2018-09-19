class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.belongs_to :person, index: true
      t.integer :cnpj
      t.string :nickname
      t.string :descrition

      t.timestamps
    end
  end
end
