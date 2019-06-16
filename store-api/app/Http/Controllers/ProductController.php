<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\LoggingInfo;
use Log;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index($name = null)
    {
        if ($name != null) {
            $products = DB::table('products')->where('name', '=', $name)->orderBy('name', 'ASC')->paginate(10);
            return response($products, 200)->header('Content-Type', 'application/json');
        }
        $products = DB::table('products')->orderBy('name', 'ASC')->paginate(10);
        return response($products, 200)->header('Content-Type', 'application/json');
    }

    public function store(Request $request)
    {
        try {
            $product = Product::create($request->all());
            return response("", 201)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }

    public function delete($id)
    {
        try {
            $product = Product::find($id);
            if ($product == null) {
                return response("", 404)->header('Content-Type', 'application/json');
            }
            $product->delete();

            return response("", 202)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $product = Product::find($id);
            if ($product == null) {
                return response("", 404)->header('Content-Type', 'application/json');
            }
            $product->update($request->all());

            //Save Log Data
            $log_data = "Controller ProductController. Action update. Data: $request";
            Log::info($log_data);
            $log_info = new LoggingInfo();
            $log_info->user_id = auth()->guard('api')->user()->id;
            $log_info->title = "Product Update";
            $log_info->description = "";
            $log_info->data = $log_data;
            $log_info->save();
            Log::info($log_data);

            return response("", 202)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }

    public function like($id)
    {
        try {
            $product = Product::find($id);
            if ($product == null) {
                return response("", 404)->header('Content-Type', 'application/json');
            }
            $product->likes = $product->likes + 1;
            $product->save();
            $user = auth()->guard('api')->user()->id;
            Log::info("Product $id Like by User with Id: $user");
            return response("", 202)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }
}
