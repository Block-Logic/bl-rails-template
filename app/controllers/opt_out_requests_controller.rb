class OptOutRequestsController < ApplicationController
  before_action :set_opt_out_request, only: %i[ show edit update destroy ]

  # GET /opt_out_requests or /opt_out_requests.json
  def index
    @opt_out_requests = OptOutRequest.all
  end

  # GET /opt_out_requests/1 or /opt_out_requests/1.json
  def show
  end

  # GET /opt_out_requests/new
  def new
    @opt_out_request = OptOutRequest.new
  end

  # GET /opt_out_requests/1/edit
  def edit
  end

  # POST /opt_out_requests or /opt_out_requests.json
  def create
    @opt_out_request = OptOutRequest.new(opt_out_request_params)

    respond_to do |format|
      if @opt_out_request.save
        format.html { redirect_to opt_out_request_url(@opt_out_request), notice: "Opt out request was successfully created." }
        format.json { render :show, status: :created, location: @opt_out_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @opt_out_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt_out_requests/1 or /opt_out_requests/1.json
  def update
    respond_to do |format|
      if @opt_out_request.update(opt_out_request_params)
        format.html { redirect_to opt_out_request_url(@opt_out_request), notice: "Opt out request was successfully updated." }
        format.json { render :show, status: :ok, location: @opt_out_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opt_out_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt_out_requests/1 or /opt_out_requests/1.json
  def destroy
    @opt_out_request.destroy

    respond_to do |format|
      format.html { redirect_to opt_out_requests_url, notice: "Opt out request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt_out_request
      @opt_out_request = OptOutRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opt_out_request_params
      params.require(:opt_out_request).permit(:request_type, :meta_data, :name_encrypted, :street_address_encrypted, :city_encrypted, :postal_code_encrypted, :state_encrypted, :name_encrypted_iv, :street_address_encrypted_iv, :city_encrypted_iv, :postal_code_encrypted_iv, :state_encrypted_iv)
    end
end
