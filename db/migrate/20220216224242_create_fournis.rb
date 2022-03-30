class CreateFournis < ActiveRecord::Migration[6.1]
  def change
    create_table :fournis do |t|
      t.string :nom_f
      t.string :mail_f
      t.integer :num_f

      t.timestamps
    end
  end
end
