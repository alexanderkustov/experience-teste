require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { benefits: @product.benefits, benefits_clients: @product.benefits_clients, bp_link: @product.bp_link, desc: @product.desc, dt: @product.dt, estimated_rsp: @product.estimated_rsp, fixed_costs: @product.fixed_costs, gross_margin: @product.gross_margin, l_price: @product.l_price, photos: @product.photos, pp_link: @product.pp_link, producer_id: @product.producer_id, refp_number: @product.refp_number, sr2l: @product.sr2l, users: @product.users, videos: @product.videos }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { benefits: @product.benefits, benefits_clients: @product.benefits_clients, bp_link: @product.bp_link, desc: @product.desc, dt: @product.dt, estimated_rsp: @product.estimated_rsp, fixed_costs: @product.fixed_costs, gross_margin: @product.gross_margin, l_price: @product.l_price, photos: @product.photos, pp_link: @product.pp_link, producer_id: @product.producer_id, refp_number: @product.refp_number, sr2l: @product.sr2l, users: @product.users, videos: @product.videos }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
