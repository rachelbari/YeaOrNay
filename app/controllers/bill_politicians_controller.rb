class BillPoliticiansController < ApplicationController
  before_action :set_bill_politician, only: [:show, :edit, :update, :destroy]

  # GET /bill_politicians
  # GET /bill_politicians.json
  def index
    @bill_politicians = BillPolitician.all
  end

  # GET /bill_politicians/1
  # GET /bill_politicians/1.json
  def show
  end

  # GET /bill_politicians/new
  def new
    @bill_politician = BillPolitician.new
  end

  # GET /bill_politicians/1/edit
  def edit
  end

  # POST /bill_politicians
  # POST /bill_politicians.json
  def create
    @bill_politician = BillPolitician.new(bill_politician_params)

    respond_to do |format|
      if @bill_politician.save
        format.html { redirect_to @bill_politician, notice: 'Bill politician was successfully created.' }
        format.json { render :show, status: :created, location: @bill_politician }
      else
        format.html { render :new }
        format.json { render json: @bill_politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_politicians/1
  # PATCH/PUT /bill_politicians/1.json
  def update
    respond_to do |format|
      if @bill_politician.update(bill_politician_params)
        format.html { redirect_to @bill_politician, notice: 'Bill politician was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_politician }
      else
        format.html { render :edit }
        format.json { render json: @bill_politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_politicians/1
  # DELETE /bill_politicians/1.json
  def destroy
    @bill_politician.destroy
    respond_to do |format|
      format.html { redirect_to bill_politicians_url, notice: 'Bill politician was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_politician
      @bill_politician = BillPolitician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_politician_params
      params.require(:bill_politician).permit(:bill_id, :politican_id, :yea, :nay)
    end
end
