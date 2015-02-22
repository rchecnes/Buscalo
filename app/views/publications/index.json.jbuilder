json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :direction, :description, :image, :qt_entrance, :price_entrance, :price_sales, :important, :status
  json.url publication_url(publication, format: :json)
end
