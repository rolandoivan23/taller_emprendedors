require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { client_id: @order.client_id, fecha_entrega: @order.fecha_entrega, fecha_liberacion_pedido: @order.fecha_liberacion_pedido, monto_total: @order.monto_total, order_status_id: @order.order_status_id, payment_status_id: @order.payment_status_id }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { client_id: @order.client_id, fecha_entrega: @order.fecha_entrega, fecha_liberacion_pedido: @order.fecha_liberacion_pedido, monto_total: @order.monto_total, order_status_id: @order.order_status_id, payment_status_id: @order.payment_status_id }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
