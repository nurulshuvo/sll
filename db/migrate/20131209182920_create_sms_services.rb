class CreateSmsServices < ActiveRecord::Migration
  def change
    create_table :sms_services do |t|
      t.text :body

      t.timestamps
    end
  end
end
