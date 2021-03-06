class CreateOts < ActiveRecord::Migration[5.0]
  def change
    create_table :ots do |t|
      t.string :description
      t.date :date
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
