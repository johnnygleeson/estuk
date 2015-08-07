class IphonesController < ApplicationController
  before_action :set_iphone, only: [:show, :edit, :update, :destroy]

  # GET /iphones
  # GET /iphones.json
  def index
    @iphones = Iphone.all
  end

  # GET /iphones/1
  # GET /iphones/1.json
  def show
  end

  # GET /iphones/new
  def new
    @iphone = Iphone.new
  end

  # GET /iphones/1/edit
  def edit
  end

  # POST /iphones
  # POST /iphones.json
  def create
    @iphone = Iphone.new(iphone_params)

    respond_to do |format|
      if @iphone.save
        format.html { redirect_to @iphone, notice: 'Iphone was successfully created.' }
        format.json { render :show, status: :created, location: @iphone }
      else
        format.html { render :new }
        format.json { render json: @iphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iphones/1
  # PATCH/PUT /iphones/1.json
  def update
    respond_to do |format|
      if @iphone.update(iphone_params)
        format.html { redirect_to @iphone, notice: 'Iphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @iphone }
      else
        format.html { render :edit }
        format.json { render json: @iphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iphones/1
  # DELETE /iphones/1.json
  def destroy
    @iphone.destroy
    respond_to do |format|
      format.html { redirect_to iphones_url, notice: 'Iphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iphone
      @iphone = Iphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iphone_params
      params.require(:iphone).permit(:model, :GBs, :Memory, :condition, :price, :availability)
    end
end
