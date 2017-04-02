require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  setup do
    @index = index(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:index)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create index" do
    assert_difference('Index.count') do
      post :create, index: { index: @index.index }
    end

    assert_redirected_to index_path(assigns(:index))
  end

  test "should show index" do
    get :show, id: @index
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @index
    assert_response :success
  end

  test "should update index" do
    patch :update, id: @index, index: { index: @index.index }
    assert_redirected_to index_path(assigns(:index))
  end

  test "should destroy index" do
    assert_difference('Index.count', -1) do
      delete :destroy, id: @index
    end

    assert_redirected_to index_index_path
  end
end
