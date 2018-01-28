class BillsPoliticiansController < ApplicationController
  before_action :set_bills_politician, only: [:show, :edit, :update, :destroy]

  # GET /bills_politicians
  # GET /bills_politicians.json
  def index
    @bills_politicians = BillsPolitician.all
  end

  # GET /bills_politicians/1
  # GET /bills_politicians/1.json
  def show
  end

  # GET /bills_politicians/new
  def new
    @bills_politician = BillsPolitician.new
  end

  # GET /bills_politicians/1/edit
  def edit
  end

  # POST /bills_politicians
  # POST /bills_politicians.json
  def create
    @bills_politician = BillsPolitician.new(bills_politician_params)

    respond_to do |format|
      if @bills_politician.save
        format.html { redirect_to @bills_politician, notice: 'Bills politician was successfully created.' }
        format.json { render :show, status: :created, location: @bills_politician }
      else
        format.html { render :new }
        format.json { render json: @bills_politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bills_politicians/1
  # PATCH/PUT /bills_politicians/1.json
  def update
    respond_to do |format|
      if @bills_politician.update(bills_politician_params)
        format.html { redirect_to @bills_politician, notice: 'Bills politician was successfully updated.' }
        format.json { render :show, status: :ok, location: @bills_politician }
      else
        format.html { render :edit }
        format.json { render json: @bills_politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills_politicians/1
  # DELETE /bills_politicians/1.json
  def destroy
    @bills_politician.destroy
    respond_to do |format|
      format.html { redirect_to bills_politicians_url, notice: 'Bills politician was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bills_politician
      @bills_politician = BillsPolitician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bills_politician_params
      params.require(:bills_politician).permit(:bill_id, :politician_id, :yea, :nay)
    end
end
