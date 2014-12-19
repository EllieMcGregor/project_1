class UserController < ApplicationController
   # before_action :set_user, only: [:edit]

   # def index
   #  @users = User.all
   
   # end

   # def edit
   # end

   def index
     @q = User.search(params[:q])
     @users = @q.result(distinct: true)
   end

   def show
    @user = current_user
   end
end



