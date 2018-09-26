class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.belongs_to :person, index: true
      t.string :cnpj
      t.string :nickname
      t.string :description

      t.timestamps
    end
  end
end
