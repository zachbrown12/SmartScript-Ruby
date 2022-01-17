class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :use
      t.string :category
      t.string :image
      t.string :effect

      t.timestamps
    end
  end
end
