class CreateFoosbars < ActiveRecord::Migration[5.0]
  def change
    create_table :foos_bars do |t|
      t.references :foo
      t.references :bar

      t.timestamps
    end
  end
end
