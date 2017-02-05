class SpacesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /spaces
  def index
    @spaces = Space.all
  end

  # GET /spaces/1
  def show
    @space = Space.find(params[:id])
  end

  # GET /spaces/new
  def new
    @space = current_user.spaces.new
  end

  # GET /spaces/1/edit
  def edit
    @space = current_user.spaces.find(params[:id])
  end

  # POST /spaces
  def create
    @space = current_user.spaces.new(space_params)
    if @space.save
      redirect_to @space, notice: 'Space was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spaces/1
  def update
    @space = current_user.spaces.find(params[:id])    
    if @space.update(space_params)
      redirect_to @space, notice: 'Space was successfully updated.'
    else
      render :edit
    end
    
  end

  # DELETE /spaces/1
  def destroy
    @space = current_user.spaces.find(params[:id])
    @space.destroy
    redirect_to spaces_url, notice: 'Space was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(:title, :desscription, :rating, :user_id)
    end
end
