class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @q = User.search(params[:q])
    @users = @q.result(distinct: true) 
  end

# def index
#   @users = User.all
# end
end
