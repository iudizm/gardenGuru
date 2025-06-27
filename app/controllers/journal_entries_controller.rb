class JournalEntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_journal_entry, only: [:show, :edit, :update, :destroy]
  before_action :set_plant, only: [:index, :new, :create]

  def index
    @journal_entries = if @plant
      @plant.journal_entries.order(created_at: :desc)
    else
      current_user.journal_entries.includes(:plant).order(created_at: :desc)
    end
  end

  def show
  end

  def new
    @journal_entry = if @plant
      @plant.journal_entries.build
    else
      current_user.journal_entries.build
    end
  end

  def create
    @journal_entry = if @plant
      @plant.journal_entries.build(journal_entry_params)
    else
      current_user.journal_entries.build(journal_entry_params)
    end

    if @journal_entry.save
      redirect_to @journal_entry, notice: 'Journal entry was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @journal_entry.update(journal_entry_params)
      redirect_to @journal_entry, notice: 'Journal entry was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @journal_entry.destroy
    redirect_to journal_entries_url, notice: 'Journal entry was successfully deleted.'
  end

  private

  def set_journal_entry
    @journal_entry = current_user.journal_entries.find(params[:id])
  end

  def set_plant
    @plant = current_user.plants.find(params[:plant_id]) if params[:plant_id]
  end

  def journal_entry_params
    params.require(:journal_entry).permit(:content, :entry_type, :plant_id, :photo_url)
  end
end
