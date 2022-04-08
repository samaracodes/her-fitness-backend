class CreateFitnessClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :fitness_classes do |t|

      t.timestamps
      t.string :name
      t.string :description
      t.string :location
      t.integer :price
    end
  end
end
