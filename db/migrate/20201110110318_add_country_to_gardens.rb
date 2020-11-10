class AddCountryToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :country, :string
  end
end
