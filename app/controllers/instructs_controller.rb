class InstructsController < ApplicationController
  before_action :set_instruct, only: [:show, :edit, :update, :destroy]
  before_action :set_instructors, only: [:new, :edit, :update, :create]
  
  load_and_authorize_resource

  respond_to :html

  def index
    @instructs = Instruct.all
    respond_with(@instructs)
  end

  def show
    respond_with(@instruct)
  end

  def new
    @instruct = Instruct.new
    respond_with(@instruct)
  end

  def edit
  end

  def create
    @instruct = Instruct.new(instruct_params)
    @instruct.save
    respond_with(@instruct)
  end

  def update
    @instruct.update(instruct_params)
    respond_with(@instruct)
  end

  def destroy
    @instruct.destroy
    respond_with(@instruct)
  end

  private
    def set_instruct
      @instruct = Instruct.find(params[:id])
    end

    def set_instructors
      @instructors = User.instructors
    end

    def instruct_params
      params.require(:instruct).permit(:course_id, :user_id, :level)
    end
end
