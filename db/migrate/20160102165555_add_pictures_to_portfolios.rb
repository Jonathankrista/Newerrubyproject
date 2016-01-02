class AddPicturesToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :photos, :json
  end
end
