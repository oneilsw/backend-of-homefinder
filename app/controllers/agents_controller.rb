class AgentsController < ApplicationController
    def index
        agents = Agent.all 
        render json: agents
    end 

    def show
        agent = Agent.find(params[:id])
        render json: agent
    end 

    def create
        agent = Agent.create(agent_params)
        if agent.valid?
            render json: agent
        else
            render json: {errors: agent.errors.full_messages}, status: :unprocessable_entity
        end
    end 

    def update 
        agent = Agent.find(params[:id])
        agent.update(agent_params)
        if agent.valid?
            render json: agent
        else
            render json: {errors: agent.errors.full_messages}, status: :unprocessable_entity
        end
    end 

     

    private

    def agent_params
        params.permit(:first_name, :last_name, :phone, :image, :bio, :brokerage)
    end 
end
