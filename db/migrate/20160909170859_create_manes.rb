class CreateManes < ActiveRecord::Migration[5.0]
  def change
    create_table :manes do |t|
      t.string :index

      t.timestamps
    end
  end
end
