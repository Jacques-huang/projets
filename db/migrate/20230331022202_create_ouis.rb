class CreateOuis < ActiveRecord::Migration[7.0]
  def change
    create_table :ouis do |t|
      t.string :nom
      t.string :prenom
      t.string :sujet

      t.timestamps
    end
  end
end
