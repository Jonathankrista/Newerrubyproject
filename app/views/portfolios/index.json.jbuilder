json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :title, :description, :image_url, :category, :subcategory
  json.url portfolio_url(portfolio, format: :json)
end
