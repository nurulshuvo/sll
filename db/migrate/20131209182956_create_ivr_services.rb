class CreateIvrServices < ActiveRecord::Migration
  def change
    create_table :ivr_services do |t|
      t.text :body

      t.timestamps
    end
  end
end
