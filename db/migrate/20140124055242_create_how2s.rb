class CreateHow2s < ActiveRecord::Migration
  def change
    create_table :how2s do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
