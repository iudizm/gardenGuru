class PlantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index
    @plants = current_user.plants.includes(:plant_species).order(created_at: :desc)
  end

  def show
    @journal_entries = @plant.journal_entries.includes(:user).order(created_at: :desc).limit(5)
    @reminders = @plant.reminders.active.order(next_due_at: :asc).limit(5)
    @health_checks = @plant.plant_health_checks.includes(:user).order(created_at: :desc).limit(3)
  end

  def new
    @plant = current_user.plants.build
    @plant_species = PlantSpecies.order(:common_name)
  end

  def create
    @plant = current_user.plants.build(plant_params)
    @plant_species = PlantSpecies.order(:common_name)

    if @plant.save
      redirect_to @plant, notice: 'Plant was successfully added to your collection! 🌱'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plant_species = PlantSpecies.order(:common_name)
  end

  def update
    if @plant.update(plant_params)
      redirect_to @plant, notice: 'Plant was successfully updated! 🌿'
    else
      @plant_species = PlantSpecies.order(:common_name)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    plant_name = @plant.display_name
    @plant.destroy
    redirect_to plants_path, notice: "#{plant_name} was removed from your collection."
  end

  private

  def set_plant
    @plant = current_user.plants.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :plant_species_id, :acquired_on, :photo_url, :notes, :is_public)
  end
end
