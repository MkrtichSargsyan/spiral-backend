class AgentsController < ApplicationController

  skip_before_action :authorized

  def index
    @agents = Agent.all
    # json_response(@agents)
    render json: @agents
  end
end
