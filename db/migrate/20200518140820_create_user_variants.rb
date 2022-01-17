class CreateUserVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :user_variants do |t|
      t.references :user, null: false, foreign_key: true
      t.references :variant, null: false, foreign_key: true
      t.references :user_row, null: false, foreign_key: true

      t.timestamps
    end
  end
end
