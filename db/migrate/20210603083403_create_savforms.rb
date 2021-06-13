class CreateSavforms < ActiveRecord::Migration[6.1]
  def change
    create_table :savforms do |t|
      t.string :nom
      t.string :prenom
      t.string :mail
      t.string :adresse
      t.string :ville
      t.string :postal
      t.string :numCommande
      t.string :numTel
      t.text :contenue

      t.timestamps
    end
  end
end
