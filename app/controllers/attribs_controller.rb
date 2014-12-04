class AttribsController < ApplicationController
  before_action :set_attrib, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @attribs = Attrib.all
    respond_with(@attribs)
  end

  def show
    respond_with(@attrib)
  end

  def new
    @attrib = Attrib.new
    respond_with(@attrib)
  end

  def edit
  end

  def create
    @attrib = Attrib.new(attrib_params)
    @attrib.save
    respond_with(@attrib)
  end

  def update
    @attrib.update(attrib_params)
    respond_with(@attrib)
  end

  def destroy
    @attrib.destroy
    respond_with(@attrib)
  end

  private
    def set_attrib
      @attrib = Attrib.find(params[:id])
    end

    def attrib_params
      params.require(:attrib).permit(:name, :value, :icon)
    end
end
