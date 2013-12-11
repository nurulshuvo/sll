class CreateWapBaseds < ActiveRecord::Migration
  def change
    create_table :wap_baseds do |t|
      t.text :body

      t.timestamps
    end
  end
end
