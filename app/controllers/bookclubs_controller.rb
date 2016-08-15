class BookclubsController < ApplicationController
  require 'open-uri'
  def index
    bookclubs_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec?sheet=bookclubs").read
    @bookclubs = JSON.parse(bookclubs_json)
  end
end
