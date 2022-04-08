require "test_helper"

class FitnessClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fitness_class = fitness_classes(:one)
  end

  test "should get index" do
    get fitness_classes_url, as: :json
    assert_response :success
  end

  test "should create fitness_class" do
    assert_difference("FitnessClass.count") do
      post fitness_classes_url, params: { fitness_class: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show fitness_class" do
    get fitness_class_url(@fitness_class), as: :json
    assert_response :success
  end

  test "should update fitness_class" do
    patch fitness_class_url(@fitness_class), params: { fitness_class: {  } }, as: :json
    assert_response :success
  end

  test "should destroy fitness_class" do
    assert_difference("FitnessClass.count", -1) do
      delete fitness_class_url(@fitness_class), as: :json
    end

    assert_response :no_content
  end
end
