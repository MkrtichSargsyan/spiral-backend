class AgentsController < ApplicationController
  skip_before_action :authorized

  def index
    @agents = Agent.all
    render json: @agents
  end

  def show
    @agent = Agent.find(params[:id])
    render json: @agent
  end
end
