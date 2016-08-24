class PronumsController < ApplicationController
    load_and_authorize_resource
    before_action :authenticate_user!
  before_action :set_pronum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pronums = Pronum.all
    respond_with(@pronums)
  end

  def show
    respond_with(@pronum)
  end

  def new
    @pronum = Pronum.new
    respond_with(@pronum)
  end

  def edit
  end

  def create
    @pronum = Pronum.new(pronum_params)
    flash[:notice] = 'Suerte con estos números.' if @pronum.save
    respond_with(@pronum)
  end

  def update
    flash[:notice] = 'Nuevas probabilidades.' if @pronum.update(pronum_params)
    respond_with(@pronum)
  end

  def destroy
    @pronum.destroy
    respond_with(@pronum)
  end

  private
    def set_pronum
      @pronum = Pronum.find(params[:id])
    end

    def pronum_params
      params.require(:pronum).permit(:num1, :num2, :num3, :num4)
    end
end
