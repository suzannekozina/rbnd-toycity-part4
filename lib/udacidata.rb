require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata
  # CONSTANT for datasource and pseudovariable for datasource-file
  CSV_DATA  = File.dirname(__FILE__) + "/../data/data.csv"

  def self.create(options = {})
    product = new(options)
      unless all.any? { |item| item.id == product.id }
        CSV.open(CSV_DATA, 'a+') { |csv| csv << [product.id, product.brand,
                                  product.name, product.price] }
      end
    product
  end

  # Return an array of Product objects representing all the data in the database
  def self.all
    products = []
    CSV.foreach(CSV_DATA, headers: true) do |arr|
      products << new(id: arr['id'].to_i, brand: arr['brand'],
                      name: arr['product'], price: arr['price'].to_f)
    end
    products
  end

  # Return an array of Product objects for the first n products in the database
  def self.first(n=1)
    n > 1 ? all.take(n) : all.first
  end

  # Return an array of Product objects for the last n products in the database
  def self.last(n=1)
    n > 1 ? all.reverse.take(n) : all.last
  end

  # Delete the product corresponding to the given id from the database, and
  # return a Product object for the product that was deleted.
  # Add a ProductNotFoundError and raise the error when the product can’t be
  # destroyed because the given ID does not exist
  def destroy
  end

  # Change the information for a given Product object, and save to the database
  def update
  end

  # Return a Product object for the product with a given product id
  # Add a ProductNotFoundError error class to errors.rb and raise the error
  # when the product ID can’t be found
  def self.find(id)
    if found_product = all.find{ |product| product.id == id }
    else raise ProductNotFoundError, "Product id NOT found"
    end
    found_product
  end

  # return a Product object for the first product in the database that has a
  # matching brand or product name. Note: Use metaprogramming techniques to define these methods.
  def find_by#{attribute}
  end

  # Return an array of Product objects that match a given brand or product name
  def where
  end
end
