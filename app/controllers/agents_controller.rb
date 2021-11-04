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

  def show_agent_houses
    p params
    p '///////////'
    @agent = Agent.find(params[:agent_id])
    render json: @agent.houses
  end
end
