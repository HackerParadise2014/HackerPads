class LocationsController < ApplicationController

  before_filter :validate_dates, only: :search

  def index
  end

  def search
    render :results
  end

  def results
  end

  private

  def validate_dates
    if params && params[:from] && params[:to]
      @date_from = Date.strptime(params[:from], "%m/%d/%Y")
      @date_to = Date.strptime(params[:to], "%m/%d/%Y")
    else
      @date_from = Date.today
      @date_to = Date.today + 1.month
    end
  end

end
