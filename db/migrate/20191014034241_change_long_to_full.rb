class ChangeLongToFull < ActiveRecord::Migration[6.0]
  def change
    rename_column :short_urls, :long_url, :full_url
    rename_column :short_urls, :short_url, :short_code
    rename_column :short_urls, :count, :click_count
  end
end
