class BarberImagesController < ApplicationController
  before_action :set_barber_image, only: [:show, :edit, :update, :destroy]

  # GET /barber_images
  # GET /barber_images.json
  def index
    @barber_images = BarberImage.all
  end

  # GET /barber_images/1
  # GET /barber_images/1.json
  def show
  end

  # GET /barber_images/new
  def new
    @barber_image = BarberImage.new
  end

  # GET /barber_images/1/edit
  def edit
  end

  # POST /barber_images
  # POST /barber_images.json
  def create
    @barber_image = BarberImage.new(barber_image_params)

    respond_to do |format|
      if @barber_image.save
        format.html { redirect_to @barber_image, notice: 'Barber image was successfully created.' }
        format.json { render :show, status: :created, location: @barber_image }
      else
        format.html { render :new }
        format.json { render json: @barber_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barber_images/1
  # PATCH/PUT /barber_images/1.json
  def update
    respond_to do |format|
      if @barber_image.update(barber_image_params)
        format.html { redirect_to @barber_image, notice: 'Barber image was successfully updated.' }
        format.json { render :show, status: :ok, location: @barber_image }
      else
        format.html { render :edit }
        format.json { render json: @barber_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barber_images/1
  # DELETE /barber_images/1.json
  def destroy
    @barber_image.destroy
    respond_to do |format|
      format.html { redirect_to barber_images_url, notice: 'Barber image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barber_image
      @barber_image = BarberImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barber_image_params
      params.require(:barber_image).permit(:customerID_id)
    end
end
