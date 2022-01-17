class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.string :RSID
      t.string :chromosome
      t.string :allele

      t.timestamps
    end
  end
end
