class FaqsController < ApplicationController
  require 'open-uri'
  def index
    faqs_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec?sheet=faqs").read
    @faqs = JSON.parse(faqs_json)
  end
end
