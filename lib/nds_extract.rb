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
  gross = 0
  i = 0
  movie_data = director_data[i][:movies]
  while i< movie_data do
    gross += movie_data[i][:worldwide_gross]
    i += 1
  end
  gross
end