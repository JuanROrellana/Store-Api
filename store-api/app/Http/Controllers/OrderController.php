<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
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
        $product_id = $request->input('product_id');
        $product = Product::find($product_id);

        if ($product == null) {
            return response("The product with $product_id was not found.", 404)->header('Content-Type', 'application/json');
        }

        $quantity = $request->input('quantity');
        $current_user = auth()->guard('api')->user();

        if (($product->quantity - $quantity) < 0) {
            return response("Not enough quantity to deliver. Current Quantity $product->quantity", 404)->header('Content-Type', 'application/json');
        }

        $product->quantity = $product->quantity - $quantity;
        $product->save();

        return response("Correct Order Placed", 200)->header('Content-Type', 'application/json');
    }
}
