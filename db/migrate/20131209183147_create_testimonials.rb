class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :who_said
      t.string :about
      t.string :body

      t.timestamps
    end
  end
end
