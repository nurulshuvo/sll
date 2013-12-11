class CreateIvrBaseds < ActiveRecord::Migration
  def change
    create_table :ivr_baseds do |t|
      t.text :body

      t.timestamps
    end
  end
end
