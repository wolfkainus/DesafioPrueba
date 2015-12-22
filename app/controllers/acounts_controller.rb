class AcountsController < ApplicationController
  before_action :set_acount, only: [:show, :edit, :update, :destroy]

  # GET /acounts
  # GET /acounts.json
  def index
    @acounts = Acount.all
  end

  # GET /acounts/1
  # GET /acounts/1.json
  def show
  end

  # GET /acounts/new
  def new
    @acount = Acount.new
  end

  # GET /acounts/1/edit
  def edit
  end

  # POST /acounts
  # POST /acounts.json
  def create
    @acount = Acount.new(acount_params)

    respond_to do |format|
      if @acount.save
        format.html { redirect_to @acount, notice: 'Acount was successfully created.' }
        format.json { render :show, status: :created, location: @acount }
      else
        format.html { render :new }
        format.json { render json: @acount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acounts/1
  # PATCH/PUT /acounts/1.json
  def update
    respond_to do |format|
      if @acount.update(acount_params)
        format.html { redirect_to @acount, notice: 'Acount was successfully updated.' }
        format.json { render :show, status: :ok, location: @acount }
      else
        format.html { render :edit }
        format.json { render json: @acount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acounts/1
  # DELETE /acounts/1.json
  def destroy
    @acount.destroy
    respond_to do |format|
      format.html { redirect_to acounts_url, notice: 'Acount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acount
      @acount = Acount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acount_params
      params.require(:acount).permit(:client, :description, :balance, :acount_tipe, :date, :amount)
    end
end
