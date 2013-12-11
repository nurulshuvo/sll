class CreateSmsBaseds < ActiveRecord::Migration
  def change
    create_table :sms_baseds do |t|
      t.text :body

      t.timestamps
    end
  end
end
