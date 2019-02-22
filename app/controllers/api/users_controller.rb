class Api::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            
        else

        end
    end

    private

    def user_params
        params.requre(:user).permit(:username, :password)
    end

end
