class LoginController < ApplicationController
    def create
        account = Account.find_by(email: (params[:email].downcase))
        
        if account && account.authenticate(params[:password])
          render json: { token: token(account.id), account_id: account.id, user: account.user, user_type: account.user_type }
        else 
          render json: { error: "You done messed up!"}
        end 
        
      end    
end 