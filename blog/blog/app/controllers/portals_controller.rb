class PortalsController < ApplicationController
  before_action :set_portal, except: [:index, :new, :create]

  def index
    @portals = Portal.all
  end

  def show
  end

  def new
    @portal = Portal.new
  end

  def create
    @portal = Portal.new(portal_params)
    if @portal.save
      redirect_to portal_path(@portal)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @portal.update(portal_params)
      redirect_to portal_path(@portal)
    else
      render :edit
    end
  end

  def destroy
    @portal.destroy
    redirect_to portals_path
  end

  private

  def portal_params
    params.require(:portal).permit(:title, :text)
  end

  def set_portal
    @portal = Portal.find(params[:id])
  end
end
