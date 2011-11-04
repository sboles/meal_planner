class MealPlansController < ApplicationController
  # GET /meal_plans
  # GET /meal_plans.json
  def index
    @meal_plans = MealPlan.order(:starting_at)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meal_plans }
    end
  end

  # GET /meal_plans/1
  # GET /meal_plans/1.json
  def show
    @meal_plan = MealPlan.find(params[:id])
    @meal_plan_meals = @meal_plan.meal_plan_meals
    @lunch_meals = @meal_plan.lunch_meals
    @dinner_meals = @meal_plan.dinner_meals

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal_plan }
    end
  end

  # GET /meal_plans/new
  # GET /meal_plans/new.json
  def new
    @meal_plan = MealPlan.new
    last_meal_plan = MealPlan.order(:starting_at).last

    if(last_meal_plan && last_meal_plan.starting_at)
      @meal_plan.starting_at = last_meal_plan.starting_at.next_week.monday
    else 
      @meal_plan.starting_at = Time.now.next_week.monday
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal_plan }
    end
  end

  # GET /meal_plans/1/edit
  def edit
    @meal_plan = MealPlan.find(params[:id])
  end

  # POST /meal_plans
  # POST /meal_plans.json
  def create
    @meal_plan = MealPlan.new(params[:meal_plan])
    @meal_plan.fill_meal_plan

    respond_to do |format|
      if @meal_plan.save
        format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully created.' }
        format.json { render json: @meal_plan, status: :created, location: @meal_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meal_plans/1
  # PUT /meal_plans/1.json
  def update
    @meal_plan = MealPlan.find(params[:id])

    respond_to do |format|
      if @meal_plan.update_attributes(params[:meal_plan])
        format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_plans/1
  # DELETE /meal_plans/1.json
  def destroy
    @meal_plan = MealPlan.find(params[:id])
    @meal_plan.destroy

    respond_to do |format|
      format.html { redirect_to meal_plans_url }
      format.json { head :ok }
    end
  end
end
