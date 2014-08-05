class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :name
      t.string :description
      t.string :slide
      t.string :images
      t.references :user, index: true

      t.timestamps
    end
  end
end
