class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :place_id

      t.timestamps
    end
  end
end
