class MealPlanMealsController < ApplicationController
  # GET /meal_plan_meals
  # GET /meal_plan_meals.json
  def index
    @meal_plan_meals = MealPlanMeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meal_plan_meals }
    end
  end

  # GET /meal_plan_meals/1
  # GET /meal_plan_meals/1.json
  def show
    @meal_plan_meal = MealPlanMeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal_plan_meal }
    end
  end

  # GET /meal_plan_meals/new
  # GET /meal_plan_meals/new.json
  def new
    @meal_plan_meal = MealPlanMeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal_plan_meal }
    end
  end

  # GET /meal_plan_meals/1/edit
  def edit
    @meal_plan_meal = MealPlanMeal.find(params[:id])
  end

  # POST /meal_plan_meals
  # POST /meal_plan_meals.json
  def create
    @meal_plan_meal = MealPlanMeal.new(params[:meal_plan_meal])

    respond_to do |format|
      if @meal_plan_meal.save
        format.html { redirect_to @meal_plan_meal, notice: 'Meal plan meal was successfully created.' }
        format.json { render json: @meal_plan_meal, status: :created, location: @meal_plan_meal }
      else
        format.html { render action: "new" }
        format.json { render json: @meal_plan_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meal_plan_meals/1
  # PUT /meal_plan_meals/1.json
  def update
    @meal_plan_meal = MealPlanMeal.find(params[:id])

    respond_to do |format|
      if @meal_plan_meal.update_attributes(params[:meal_plan_meal])
        format.html { redirect_to @meal_plan_meal, notice: 'Meal plan meal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal_plan_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_plan_meals/1
  # DELETE /meal_plan_meals/1.json
  def destroy
    @meal_plan_meal = MealPlanMeal.find(params[:id])
    @meal_plan_meal.destroy

    respond_to do |format|
      format.html { redirect_to meal_plan_meals_url }
      format.json { head :ok }
    end
  end
end
