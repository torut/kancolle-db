class ShipsController < ApplicationController
  # GET /ships
  # GET /ships.json
  def index
    @sort = params[:sort].nil? ? 'number' : params[:sort]
    @direction = params[:direction].nil? ? 'asc' : params[:direction]

    @ships = Ship.order(ActiveRecord::Base.connection.quote_column_name(@sort) + ' ' + @direction)

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
