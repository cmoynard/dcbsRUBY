class AddFournisseurToSavforms < ActiveRecord::Migration[6.1]
  def change
    add_column :savforms, :fournisseur, :string
  end
end
