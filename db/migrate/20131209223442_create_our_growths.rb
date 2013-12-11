class CreateOurGrowths < ActiveRecord::Migration
  def change
    create_table :our_growths do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
