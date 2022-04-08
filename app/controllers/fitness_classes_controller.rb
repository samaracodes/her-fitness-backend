class FitnessClassesController < ApplicationController
  before_action :set_fitness_class, only: %i[ show update destroy ]

  # GET /fitness_classes
  def index
    @fitness_classes = FitnessClass.all

    render json: @fitness_classes
  end

  # GET /fitness_classes/1
  def show
    render json: @fitness_class
  end

  # POST /fitness_classes
  def create
    @fitness_class = FitnessClass.new(fitness_class_params)

    if @fitness_class.save
      render json: @fitness_class, status: :created, location: @fitness_class
    else
      render json: @fitness_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fitness_classes/1
  def update
    if @fitness_class.update(fitness_class_params)
      render json: @fitness_class
    else
      render json: @fitness_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fitness_classes/1
  def destroy
    @fitness_class.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitness_class
      @fitness_class = FitnessClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fitness_class_params
      params.fetch(:fitness_class, {})
    end
end
