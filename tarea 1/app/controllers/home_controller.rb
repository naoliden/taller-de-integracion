class HomeController < ApplicationController
  include HTTParty
  @@format = '&format=json'

  def index
    @calls = HTTParty.get('https://swapi.co/api/films?format=json', :headers =>{'Content-Type' => 'application/json'})['results']
    # @calls = Home.swapi
  end

  def query
    @type = params[:type]
    @info = '?search=' + params[:info].to_s
    @url = [@type, @info].join('/')
    @url = [@url, @@format].join('')
    @calls = HTTParty.get('https://swapi.co/api/' + @url, :headers =>{'Content-Type' => 'application/json'})['results']
  end

  def search
    @type = params[:type] + '/'
    @url = '?search=' + params[:info].to_s
    @url = [@url, @@format].join('')

    @people = HTTParty.get('https://swapi.co/api/people' + @url, :headers =>{'Content-Type' => 'application/json'})['results']
    @starships = HTTParty.get('https://swapi.co/api/starships' + @url, :headers =>{'Content-Type' => 'application/json'})['results']
    @films = HTTParty.get('https://swapi.co/api/films' + @url, :headers =>{'Content-Type' => 'application/json'})['results']
    @planets = HTTParty.get('https://swapi.co/api/planets' + @url, :headers =>{'Content-Type' => 'application/json'})['results']

    @response = HTTParty.get('https://swapi.co/api/' + @type + @url, :headers =>{'Content-Type' => 'application/json'})['results']

  end

end
