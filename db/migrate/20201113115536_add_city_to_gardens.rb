class AddCityToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :city, :string
  end
end
