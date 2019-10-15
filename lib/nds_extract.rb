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
#def total_value_of_spinner(nds, row_index, column_index)
  gross = 0
  i = 0
  while i< director_data do
    gross += director_data[i][:worldwide_gross]
    i += 1
  end
  gross
end