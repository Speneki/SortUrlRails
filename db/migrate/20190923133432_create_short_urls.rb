class CreateShortUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :short_urls do |t|

      t.string :short_url
      t.string :long_url
      t.string :title
      t.integer :count, :default => 0
      
      t.timestamps
    end
    # add_index :short_urls, unique: true
  end
end
