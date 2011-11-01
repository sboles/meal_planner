require 'test_helper'

class MealPlanMealsControllerTest < ActionController::TestCase
  setup do
    @meal_plan_meal = meal_plan_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_plan_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_plan_meal" do
    assert_difference('MealPlanMeal.count') do
      post :create, meal_plan_meal: @meal_plan_meal.attributes
    end

    assert_redirected_to meal_plan_meal_path(assigns(:meal_plan_meal))
  end

  test "should show meal_plan_meal" do
    get :show, id: @meal_plan_meal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_plan_meal.to_param
    assert_response :success
  end

  test "should update meal_plan_meal" do
    put :update, id: @meal_plan_meal.to_param, meal_plan_meal: @meal_plan_meal.attributes
    assert_redirected_to meal_plan_meal_path(assigns(:meal_plan_meal))
  end

  test "should destroy meal_plan_meal" do
    assert_difference('MealPlanMeal.count', -1) do
      delete :destroy, id: @meal_plan_meal.to_param
    end

    assert_redirected_to meal_plan_meals_path
  end
end
