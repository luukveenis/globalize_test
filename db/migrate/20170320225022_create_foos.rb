class CreateFoos < ActiveRecord::Migration[5.0]
  def change
    create_table :foos do |t|

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Foo.create_translation_table! name: :string
      end

      dir.down do
        Foo.drop_translation_table!
      end
    end
  end
end
