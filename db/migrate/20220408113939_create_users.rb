class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :name
      t.string :password_digest
      t.string :location
      
    end
  end
end
