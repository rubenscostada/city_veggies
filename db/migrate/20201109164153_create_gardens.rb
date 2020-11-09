class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.text :description
      t.boolean :booking_status
      t.integer :price_per_month
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
