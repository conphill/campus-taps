# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Create Regions
table = 'regions'
ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
baltimore_regions = Region.create([
          {:name => 'Loyola', :state_id => 21},
          {:name => 'Towson', :state_id => 21},
          {:name => 'Johns Hopkins', :state_id => 21},
          {:name => 'Downtown Baltimore', :state_id => 21},
          {:name => 'Fells Point', :state_id => 21},
          {:name => 'Federal Hill', :state_id => 21}])