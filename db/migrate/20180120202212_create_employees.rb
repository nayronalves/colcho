class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :nome
      t.string :lastname
      t.string :telephone
      t.string :identity
      t.string :cpf
      t.string :address
      t.string :function
      t.string :salary

      t.timestamps
    end
  end
end
