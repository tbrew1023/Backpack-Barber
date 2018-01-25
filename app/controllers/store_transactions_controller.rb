class StoreTransactionsController < ApplicationController
  before_action :set_store_transaction, only: [:show, :edit, :update, :destroy]

  # GET /store_transactions
  # GET /store_transactions.json
  def index
    @store_transactions = StoreTransaction.all
  end

  # GET /store_transactions/1
  # GET /store_transactions/1.json
  def show
  end

  # GET /store_transactions/new
  def new
    @store_transaction = StoreTransaction.new
  end

  # GET /store_transactions/1/edit
  def edit
  end

  # POST /store_transactions
  # POST /store_transactions.json
  def create
    @store_transaction = StoreTransaction.new(store_transaction_params)

    respond_to do |format|
      if @store_transaction.save
        format.html { redirect_to @store_transaction, notice: 'Store transaction was successfully created.' }
        format.json { render :show, status: :created, location: @store_transaction }
      else
        format.html { render :new }
        format.json { render json: @store_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_transactions/1
  # PATCH/PUT /store_transactions/1.json
  def update
    respond_to do |format|
      if @store_transaction.update(store_transaction_params)
        format.html { redirect_to @store_transaction, notice: 'Store transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_transaction }
      else
        format.html { render :edit }
        format.json { render json: @store_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_transactions/1
  # DELETE /store_transactions/1.json
  def destroy
    @store_transaction.destroy
    respond_to do |format|
      format.html { redirect_to store_transactions_url, notice: 'Store transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_transaction
      @store_transaction = StoreTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_transaction_params
      params.require(:store_transaction).permit(:dateTime, :charge, :customerID_id, :productID_id)
    end
end
