class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :commentaire
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
