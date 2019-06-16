<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Order;
use App\OrderItem;
use App\LoggingInfo;
use Log;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    //Buy a product
    //Buying a product should reduce its stock.
    //Keep a log of all the purchases (who bought it, how many, when).
    public function buy(Request $request)
    {
        try {
            $order_items = $request->input('orderItem');

            //Validate Items in Order
            if (count($order_items) < 1) {
                return response("No products found.", 404)->header('Content-Type', 'application/json');
            }

            //Create Order
            $order = new Order();
            $order->comments = "First Order";
            $order->user_id = auth()->guard('api')->user()->id;


            foreach ($order_items as $item) {
                $product_id = $item['product_id'];
                $quantity = $item['quantity'];

                //Validate Product
                $product = Product::find($product_id);
                if ($product == null) {
                    return response("The product with $product_id was not found.", 404)->header('Content-Type', 'application/json');
                }

                //Validate Quantity
                if (($product->quantity - $quantity) < 0) {
                    return response("Not enough quantity to deliver. Current Quantity $product->quantity", 404)->header('Content-Type', 'application/json');
                }

                //Insert Order Items
                $order_item = new OrderItem();
                $order_item->quantity = $quantity;
                $order_item->order_id = $order->id;
                $order_item->product_id = $product_id;

                //Discount Product
                $product->quantity = $product->quantity - $quantity;

                //Save Data
                $order_item->save();
                $order->save();
                $product->save();

                $log_data = "Controller OrderController. Action buy. BuyId: $order->id, ProductId: $product_id, User: $order->user_id, Quantity: $quantity";
                Log::info($log_data);



            }
            return response("Order Placed with Id $order->id", 200)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }
}
