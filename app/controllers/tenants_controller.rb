class TenantsController < ApplicationController
    def index
        tenants = Tenant.all
        render json: tenants
    end 

    def show 
        tenant = Tenant.find(params[:id])
        render json: tenant
    end 

    def create 
        tenant = Tenant.create(tenant_params)
        if tenant.valid?
            render json: {token: token(tenant.id), tenant_id: tenant.id}
        else
            render json: {error: tenant.errors.full_messages}, status: :unprocessable_entity
        end
    end 

    def update
        tenant = Tenant.find(params[:id])
        tenant.update(tenant_params)
        if tenant.valid?
            render json: tenant
        else
            render json: {errors: tenant.errors}
        end
    end 

    private

    def tenant_params
        params.permit(:first_name, :last_name, :email, :password, :move_in_date, :budget, :phone)
    end 
end
