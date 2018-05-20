require 'test_helper'

class QuizControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get quiz_new_url
    assert_response :success
  end

  test "should get index" do
    get quiz_index_url
    assert_response :success
  end

  test "should get answer" do
    get quiz_answer_url
    assert_response :success
  end

  test "should get result" do
    get quiz_result_url
    assert_response :success
  end

end
