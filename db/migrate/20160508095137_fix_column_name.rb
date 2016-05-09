class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :places, :longtitude, :longitude
  end
end
