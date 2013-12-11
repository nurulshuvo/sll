class CreateHowIsBestApps < ActiveRecord::Migration
  def change
    create_table :how_is_best_apps do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
