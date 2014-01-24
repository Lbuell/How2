class How2sController < ApplicationController
  before_action :set_how2, only: [:show, :edit, :update, :destroy]

  # GET /how2s
  # GET /how2s.json
  def index
    @how2s = How2.all
  end

  # GET /how2s/1
  # GET /how2s/1.json
  def show
    how2 = How2.find(params[:id])
    @steps = how2.steps
  end

  # GET /how2s/new
  def new
    @how2 = How2.new(params[:how2])
  end

  # GET /how2s/1/edit
  def edit
  end

  # POST /how2s
  # POST /how2s.json
  def create
    @how2 = How2.new(how2_params)

    respond_to do |format|
      if @how2.save
        format.html { redirect_to @how2, notice: 'How2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @how2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @how2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /how2s/1
  # PATCH/PUT /how2s/1.json
  def update
    respond_to do |format|
      if @how2.update(how2_params)
        format.html { redirect_to @how2, notice: 'How2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @how2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how2s/1
  # DELETE /how2s/1.json
  def destroy
    @how2.destroy
    respond_to do |format|
      format.html { redirect_to how2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_how2
      @how2 = How2.find(params[:id])
      @steps = @how2.steps
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def how2_params
      params.require(:how2).permit(:name, :description, :id)
    end
end
