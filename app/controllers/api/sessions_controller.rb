class Api::SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            #login user
            #redirect to index
        else
            #redirect to signup/login
        end
    end

    def destroy
        
    end

    private

    def user_params
        params.requre(:user).permit(:username, :password)
    end

end
