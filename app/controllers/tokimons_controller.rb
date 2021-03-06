class TokimonsController < ApplicationController
  before_action :set_tokimon, only: [:show, :edit, :update, :destroy]

  # GET /tokimons
  # GET /tokimons.json
  def index
    @tokimons = Tokimon.order("id")
    @tokimons.each do |tokimon| get_total(tokimon) end
  end

  # GET /tokimons/1
  # GET /tokimons/1.json
  def show
    get_total(@tokimon)
  end

  # GET /tokimons/new
  def new
    @tokimon = Tokimon.new
  end

  # GET /tokimons/1/edit
  def edit
  end

  def get_total(t)
    t.total = t.fly + t.fight + t.fire + t.water + t.electric + t.ice
  end

  def redo_form(note, delete)
    @tokimon.destroy if delete
    respond_to do |format|
      flash.now[:notice] = note
      format.html { render :new }
      format.json { render json: @tokimon.errors, status: :unprocessable_entity }
    end
  end

  # POST /tokimons
  # POST /tokimons.json
  def create
    @tokimon = Tokimon.new(tokimon_params)
    list = [@tokimon.weight, @tokimon.height, @tokimon.fly, @tokimon.fight, @tokimon.fire, @tokimon.water, @tokimon.electric, @tokimon.ice]
    return redo_form("Name cannot be blank", true) if @tokimon.name.blank?
    for i in 0...list.size
      return redo_form("All attributes must be filled in", true) if list[i] == nil
      return redo_form("One or more attributes are out of range", true) if (list[i]>100 && i>=2) || list[i] < 0
    end
    respond_to do |format|
      if @tokimon.save
        format.html { redirect_to @tokimon, notice: 'Tokimon was successfully created.' }
        format.json { render :show, status: :created, location: @tokimon }
      else
        format.html { render :new }
        format.json { render json: @tokimon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tokimons/1
  # PATCH/PUT /tokimons/1.json
  def update
    respond_to do |format|
      if @tokimon.update(tokimon_params)
        list = [@tokimon.weight, @tokimon.height, @tokimon.fly, @tokimon.fight, @tokimon.fire, @tokimon.water, @tokimon.electric, @tokimon.ice]
        return redo_form("Name cannot be blank", true) if @tokimon.name.blank?
        for i in 0...list.size
          return redo_form("All attributes must be filled in", true) if list[i] == nil
          return redo_form("One or more attributes are out of range", true) if (list[i]>100 && i>=2) || list[i] < 0
        end
        format.html { redirect_to @tokimon, notice: 'Tokimon was successfully updated.' }
        format.json { render :show, status: :ok, location: @tokimon }
      else
        format.html { render :edit }
        format.json { render json: @tokimon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tokimons/1
  # DELETE /tokimons/1.json
  def destroy
    @tokimon.destroy
    respond_to do |format|
      format.html { redirect_to tokimons_url, notice: 'Tokimon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tokimon
      @tokimon = Tokimon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tokimon_params
      params.require(:tokimon).permit(:name, :description, :weight, :height, :fly, :fight, :fire, :water, :electric, :ice, :total, :trainer_id)
    end
end
