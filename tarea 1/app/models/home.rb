class Home < ApplicationRecord
  include HTTParty
  @@format = 'json'

  base_uri = "https://swapi.co/api/"
  format :json

  # def swapi
  #   # self.class.get('/films?format=' + @@json)['results']['0']
  #   # get("", query = { query : term})["results"]
  # end
  
end
