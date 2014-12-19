class EnrollsController < ApplicationController
  before_action :set_enroll, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  respond_to :html

  def index
    @enrolls = Enroll.all
    respond_with(@enrolls)
  end

  def show
    respond_with(@enroll)
  end

  def new
    @enroll = Enroll.new
    respond_with(@enroll)
  end

  def edit
  end

  def create
    @enroll = Enroll.new(enroll_params)
    @enroll.save
    respond_with(@enroll)
  end

  def update
    @enroll.update(enroll_params)
    respond_with(@enroll)
  end

  def destroy
    @enroll.destroy
    respond_with(@enroll)
  end

  private
    def set_enroll
      @enroll = Enroll.find(params[:id])
    end

    def enroll_params
      params.require(:enroll).permit(:course_id, :user_id, :payment_status)
    end
end
