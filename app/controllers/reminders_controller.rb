class RemindersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]
  before_action :set_plant, only: [:index, :new, :create]

  def index
    @reminders = if @plant
      @plant.reminders.order(due_date: :asc)
    else
      current_user.reminders.includes(:plant).order(due_date: :asc)
    end
  end

  def show
  end

  def new
    @reminder = if @plant
      @plant.reminders.build
    else
      current_user.reminders.build
    end
  end

  def create
    @reminder = if @plant
      @plant.reminders.build(reminder_params)
    else
      current_user.reminders.build(reminder_params)
    end

    if @reminder.save
      redirect_to @reminder, notice: 'Reminder was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @reminder.update(reminder_params)
      redirect_to @reminder, notice: 'Reminder was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @reminder.destroy
    redirect_to reminders_url, notice: 'Reminder was successfully deleted.'
  end

  private

  def set_reminder
    @reminder = current_user.reminders.find(params[:id])
  end

  def set_plant
    @plant = current_user.plants.find(params[:plant_id]) if params[:plant_id]
  end

  def reminder_params
    params.require(:reminder).permit(:title, :description, :schedule_type, :next_due_at, :recurrence_rule, :plant_id)
  end
end
