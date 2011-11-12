class MealsController < ApplicationController
  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meals }
    end
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @meal = Meal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/new
  # GET /meals/new.json
  def new
    @meal_time_tags = TagType.find_by_name("meal_times").tags
    @meal = Meal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/1/edit
  def edit
    @meal_time_tags = TagType.find_by_name("meal_times").tags
    @meal = Meal.find(params[:id])
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(params[:meal])
    @meal.update_meal_times(params[:meal_times])

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: 'Meal was successfully created.' }
        format.json { render json: @meal, status: :created, location: @meal }
      else
        format.html { render action: "new" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meals/1
  # PUT /meals/1.json
  def update
    @meal = Meal.find(params[:id])
    @meal.update_meal_times(params[:meal_times])

    respond_to do |format|
      if @meal.update_attributes(params[:meal])
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /meals/1/deactivate
  # POST /meals/1/deactivate.json
  def deactivate
    @meal = Meal.find(params[:id])
    @meal.active = false
    @meal.save

    respond_to do |format|
      format.html { redirect_to meals_url }
      format.json { head :ok }
    end
  end

  # POST /meals/1/activate
  # POST /meals/1/activate.json
  def activate
    @meal = Meal.find(params[:id])
    @meal.active = true
    @meal.save

    respond_to do |format|
      format.html { redirect_to meals_url }
      format.json { head :ok }
    end

  end
end
