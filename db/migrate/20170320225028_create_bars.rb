class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Bar.create_translation_table! name: :string
      end

      dir.down do
        Bar.drop_translation_table!
      end
    end
  end
end
