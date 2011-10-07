class SocialContractsController < ApplicationController
  # GET /social_contracts
  # GET /social_contracts.json
  def index
    @social_contracts = SocialContract.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @social_contracts }
    end
  end

  # GET /social_contracts/1
  # GET /social_contracts/1.json
  def show
    @social_contract = SocialContract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @social_contract }
    end
  end

  # GET /social_contracts/new
  # GET /social_contracts/new.json
  def new
    @social_contract = SocialContract.new
    @social_contract.build_referendum


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @social_contract }
    end
  end

  # GET /social_contracts/1/edit
  def edit
    @social_contract = SocialContract.find(params[:id])
  end

  # POST /social_contracts
  # POST /social_contracts.json
  def create
    @social_contract = SocialContract.new(params[:social_contract])

    respond_to do |format|
      if @social_contract.save
        format.html { redirect_to @social_contract, notice: 'Social contract was successfully created.' }
        format.json { render json: @social_contract, status: :created, location: @social_contract }
      else
        format.html { render action: "new" }
        format.json { render json: @social_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /social_contracts/1
  # PUT /social_contracts/1.json
  def update
    @social_contract = SocialContract.find(params[:id])

    respond_to do |format|
      if @social_contract.update_attributes(params[:social_contract])
        format.html { redirect_to @social_contract, notice: 'Social contract was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @social_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_contracts/1
  # DELETE /social_contracts/1.json
  def destroy
    @social_contract = SocialContract.find(params[:id])
    @social_contract.destroy

    respond_to do |format|
      format.html { redirect_to social_contracts_url }
      format.json { head :ok }
    end
  end
end
