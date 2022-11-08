class CreateGuesthouseTags < ActiveRecord::Migration[6.1]
  def change
    create_table :guesthouse_tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
