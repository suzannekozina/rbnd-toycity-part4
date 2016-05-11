require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata


  # Return an array of Product objects representing all the data in the database
  def self.all
    products = []
    products.each do
    end
  end


  def self.create(attributes = nil)
  # If the object's data is already in the database
  # create the object
  # return the object

  # If the object's data is not in the database
  # create the object
  # save the data in the database
  # return the object
  end

  # Return a Product object that represents the first product in the database
  def first
  end

  # Return an array of Product objects for the first n products in the database
  def first(n)
  end

  # Return a Product object that represents the last product in the database
  def last
  end

  # Return an array of Product objects for the last n products in the database
  def last(n)
  end

  # Delete the product corresponding to the given id from the database, and
  # return a Product object for the product that was deleted.
  # Add a ProductNotFoundError and raise the error when the product can’t be
  # destroyed because the given ID does not exist
  def destroy
  end

  # Change the information for a given Product object, and save the new data to the database

  def update
  end

  # Return a Product object for the product with a given product id
  # Add a ProductNotFoundError error class to errors.rb and raise the error
  # when the product ID can’t be found
  def find
  end

  # return a Product object for the first product in the database that has a
  # matching brand or product name. Note: Use metaprogramming techniques to define these methods.
  def find_by#{attribute}
  end

  # Return an array of Product objects that match a given brand or product name
  def where
  end
end
