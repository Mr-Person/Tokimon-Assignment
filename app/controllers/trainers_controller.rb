class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update, :destroy]

  # GET /trainers
  # GET /trainers.json
  def index
    @trainers = Trainer.order("id")
    @trainers.each do |trainer| get_level(trainer) end
  end

  # GET /trainers/1
  # GET /trainers/1.json
  def show
    get_level(@trainer)
  end

  # GET /trainers/new
  def new
    @trainer = Trainer.new
  end

  # GET /trainers/1/edit
  def edit
  end

  def get_level(t)
    count = 0
    t.level = 1
    t.tokimons.each do |i|
      count += 1
      t.level += 1 if count%3 == 0
    end
  end

  def redo_form(note, delete)
    @trainer.destroy if delete
    respond_to do |format|
      flash.now[:notice] = note
      format.html { render :new }
      format.json { render json: @tokimon.errors, status: :unprocessable_entity }
    end
  end

  # POST /trainers
  # POST /trainers.json
  def create
    @trainer = Trainer.new(trainer_params)
    return redo_form("Name cannot be blank", true) if @trainer.name.blank?
    respond_to do |format|
      if @trainer.save
        format.html { redirect_to @trainer, notice: 'Trainer was successfully created.' }
        format.json { render :show, status: :created, location: @trainer }
      else
        format.html { render :new }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainers/1
  # PATCH/PUT /trainers/1.json
  def update
    respond_to do |format|
      if @trainer.update(trainer_params)
        return redo_form("Name cannot be blank", false) if @trainer.name.blank?
        format.html { redirect_to @trainer, notice: 'Trainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainer }
      else
        format.html { render :edit }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainers/1
  # DELETE /trainers/1.json
  def destroy
    @trainer.destroy
    respond_to do |format|
      format.html { redirect_to trainers_url, notice: 'Trainer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainer_params
      params.require(:trainer).permit(:name, :description, :level)
    end
end
