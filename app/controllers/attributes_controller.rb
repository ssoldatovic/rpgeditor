class AttributesController < ApplicationController
  before_action :set_attribute, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @attributes = Attribute.all
    respond_with(@attributes)
  end

  def show
    respond_with(@attribute)
  end

  def new
    @attribute = Attribute.new
    respond_with(@attribute)
  end

  def edit
  end

  def create
    @attribute = Attribute.new(attribute_params)
    @attribute.save
    respond_with(@attribute)
  end

  def update
    @attribute.update(attribute_params)
    respond_with(@attribute)
  end

  def destroy
    @attribute.destroy
    respond_with(@attribute)
  end

  private
    def set_attribute
      @attribute = Attribute.find(params[:id])
    end

    def attribute_params
      params.require(:attribute).permit(:name, :value, :icon)
    end
end
