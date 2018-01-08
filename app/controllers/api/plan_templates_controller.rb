class PlanTemplatesController < ApplicationController
  def index
    render json: PlanTemplate.all
  end
end
