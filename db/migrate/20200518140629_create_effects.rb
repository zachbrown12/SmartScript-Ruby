class CreateEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :effects do |t|
      t.references :variant, null: false, foreign_key: true
      t.references :chemical, null: false, foreign_key: true
      t.string :medical_effect
      t.string :notes

      t.timestamps
    end
  end
end
