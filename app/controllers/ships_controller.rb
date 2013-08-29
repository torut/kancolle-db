class ShipsController < ApplicationController
  # GET /ships
  # GET /ships.json
  def index
    @sort = params[:sort].nil? ? 'number' : params[:sort]
    @direction = params[:direction].nil? ? 'asc' : params[:direction]

    @search_types = params[:types] || []

    if !@search_types.empty?
      @ships = Ship.find(:all, {
        :conditions => {:ship_type => @search_types},
        :order => ActiveRecord::Base.connection.quote_column_name(@sort) + ' ' + @direction
      })
    else
      @ships = Ship.order(ActiveRecord::Base.connection.quote_column_name(@sort) + ' ' + @direction)
    end

    @ship_types = Ship.get_ship_types

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ships }
    end
  end

  # GET /ships/1
  # GET /ships/1.json
  def show
    @ship = Ship.find(params[:id])

    respond_to do |format|
      format.html { render layout: 'dialog'} # show.html.erb
      format.json { render json: @ship }
    end
  end

end
