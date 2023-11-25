class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :booktitle
      t.string :bookimg

      t.timestamps
    end
  end
end
