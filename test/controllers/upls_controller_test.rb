require "test_helper"

class UplsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upl = upls(:one)
  end

  test "should get index" do
    get upls_url
    assert_response :success
  end

  test "should get new" do
    get new_upl_url
    assert_response :success
  end

  test "should create upl" do
    assert_difference("Upl.count") do
      post upls_url, params: { upl: { name: @upl.name, project_id: @upl.project_id } }
    end

    assert_redirected_to upl_url(Upl.last)
  end

  test "should show upl" do
    get upl_url(@upl)
    assert_response :success
  end

  test "should get edit" do
    get edit_upl_url(@upl)
    assert_response :success
  end

  test "should update upl" do
    patch upl_url(@upl), params: { upl: { name: @upl.name, project_id: @upl.project_id } }
    assert_redirected_to upl_url(@upl)
  end

  test "should destroy upl" do
    assert_difference("Upl.count", -1) do
      delete upl_url(@upl)
    end

    assert_redirected_to upls_url
  end
end
