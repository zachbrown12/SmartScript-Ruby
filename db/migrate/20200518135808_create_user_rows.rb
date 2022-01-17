class CreateUserRows < ActiveRecord::Migration[6.0]
  def change
    create_table :user_rows do |t|
      t.string :RSID
      t.string :chromosome
      t.string :genotype

      t.timestamps
    end
  end
end
