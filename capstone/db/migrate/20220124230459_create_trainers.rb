class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :level

      t.timestamps
    end
  end
end
