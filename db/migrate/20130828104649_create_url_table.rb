class CreateUrlTable < ActiveRecord::Migration

  def change
    create_table :urls do |t|
      t.text :long_url
      t.string :short_url
    end
  end
end
