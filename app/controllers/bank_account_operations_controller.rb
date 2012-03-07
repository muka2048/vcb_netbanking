class BankAccountOperationsController < ApplicationController
  # GET /bank_account_operations
  # GET /bank_account_operations.json
  def index
    @bank_account_operations = BankAccountOperation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bank_account_operations }
    end
  end

  # GET /bank_account_operations/1
  # GET /bank_account_operations/1.json
  def show
    @bank_account_operation = BankAccountOperation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bank_account_operation }
    end
  end

  # GET /bank_account_operations/new
  # GET /bank_account_operations/new.json
  def new
    @bank_account_operation = BankAccountOperation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bank_account_operation }
    end
  end

  # GET /bank_account_operations/1/edit
  def edit
    @bank_account_operation = BankAccountOperation.find(params[:id])
  end

  # POST /bank_account_operations
  # POST /bank_account_operations.json
  def create
    @bank_account_operation = BankAccountOperation.new(params[:bank_account_operation])

    respond_to do |format|
      if @bank_account_operation.save
        format.html { redirect_to @bank_account_operation, notice: 'Bank account operation was successfully created.' }
        format.json { render json: @bank_account_operation, status: :created, location: @bank_account_operation }
      else
        format.html { render action: "new" }
        format.json { render json: @bank_account_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bank_account_operations/1
  # PUT /bank_account_operations/1.json
  def update
    @bank_account_operation = BankAccountOperation.find(params[:id])

    respond_to do |format|
      if @bank_account_operation.update_attributes(params[:bank_account_operation])
        format.html { redirect_to @bank_account_operation, notice: 'Bank account operation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bank_account_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_account_operations/1
  # DELETE /bank_account_operations/1.json
  def destroy
    @bank_account_operation = BankAccountOperation.find(params[:id])
    @bank_account_operation.destroy

    respond_to do |format|
      format.html { redirect_to bank_account_operations_url }
      format.json { head :ok }
    end
  end
end
