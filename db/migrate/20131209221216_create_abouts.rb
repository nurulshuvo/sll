class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :image

      t.timestamps
    end
  end
end
