class CreateGetConnectedAndLetKnows < ActiveRecord::Migration
  def change
    create_table :get_connected_and_let_knows do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
