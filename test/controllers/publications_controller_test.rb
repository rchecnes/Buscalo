require 'test_helper'

class PublicationsControllerTest < ActionController::TestCase
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post :create, publication: { description: @publication.description, image: @publication.image, important: @publication.important, price_entrance: @publication.price_entrance, price_sales: @publication.price_sales, qt_entrance: @publication.qt_entrance, status: @publication.status, title: @publication.title }
    end

    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should show publication" do
    get :show, id: @publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publication
    assert_response :success
  end

  test "should update publication" do
    patch :update, id: @publication, publication: { description: @publication.description, image: @publication.image, important: @publication.important, price_entrance: @publication.price_entrance, price_sales: @publication.price_sales, qt_entrance: @publication.qt_entrance, status: @publication.status, title: @publication.title }
    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete :destroy, id: @publication
    end

    assert_redirected_to publications_path
  end
end
