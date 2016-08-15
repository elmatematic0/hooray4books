class StorytimesController < ApplicationController
 require 'open-uri'
  def index
    storytimes_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec?sheet=storytimes").read
    @storytimes = JSON.parse(storytimes_json)
  end
end
