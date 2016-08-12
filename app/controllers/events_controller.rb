class EventsController < ApplicationController
  require 'open-uri'
  def index
    events_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec").read
    @events = JSON.parse(events_json)
  end
def show
    events_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec").read
    events_hash = JSON.parse(events_json)
    @event = events_hash['results'][params[:id].to_i - 1]
    
end

 
  def new
    
  end

  # GET /collections/1/edit
  def edit
    events_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec").read
    events_hash = JSON.parse(events_json)
    @event = events_hash['results'][params[:id].to_i - 1]
  end

  # POST /collections
  # POST /collections.json
  def create
  
  end 

  # PATCH/PUT /collections/1
  # PATCH/PUT /collections/1.json
  def update
    
  end

  def show
    events_json = open("https://script.google.com/macros/s/AKfycbydYNURhLWqtUaiPqn3VL4RXbHGKKp_ksDy21RUeXQDurNdghGO/exec").read
    events_hash = JSON.parse(events_json)
    @event = events_hash['results'][params[:id].to_i - 1]  
  end


end
