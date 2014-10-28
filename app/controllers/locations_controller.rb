class LocationsController < ApplicationController

  before_filter :validate_dates, :validate_participants, only: :search

  def index
  end

  def search
    render :results
  end

  def results
  end

  private

  def validate_dates
    # changed validation checks to look for "" and not true, 
    # as default values were evaluating to true, causing errors.
    if params[:from] != "" && params[:to] != ""
      @date_from = Date.strptime(params[:from], "%m/%d/%Y")
      @date_to = Date.strptime(params[:to], "%m/%d/%Y")
    else
      @date_from = Date.today
      @date_to = Date.today + 1.month
    end
  end

  def validate_participants
    # check that particiapants is a positive integer
    if params[:participants].to_i >= 1
      @participants = params[:participants].to_i
    else
      # set to default value of 1 for negative numbers, text, etc
      @participants = 1
    end
  end

end
