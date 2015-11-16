class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :image
      t.string :descripcion

      t.timestamps null: false
    end
    
  end
end
