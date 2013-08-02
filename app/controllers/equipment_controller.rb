class EquipmentController < ApplicationController
  # GET /equipment
  # GET /equipment.json
  def index
    @sort = params[:sort].nil? ? 'number' : params[:sort]
    @direction = params[:direction].nil? ? 'asc' : params[:direction]

    @equipment = Equipment.order(ActiveRecord::Base.connection.quote_column_name(@sort) + ' ' + @direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipment }
    end
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      format.html { render layout: 'dialog'} # show.html.erb
      format.json { render json: @equipment }
    end
  end
end
