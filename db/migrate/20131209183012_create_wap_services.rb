class CreateWapServices < ActiveRecord::Migration
  def change
    create_table :wap_services do |t|
      t.text :body

      t.timestamps
    end
  end
end
