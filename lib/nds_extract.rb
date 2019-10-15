require 'pry'
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

# def directors_totals(nds)
#   result = {}
#   nil
# end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #binding.pry
  gross_hash ={} 
  gross = 0 
  i = 0 
  while i < director_data.length do 
    key = director_data[i][:name]
    gross += director_data[i][:worldwide_gross]
  end
   gross_hash[:key] = gross
end