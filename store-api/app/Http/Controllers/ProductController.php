<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Log;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index($name = null)
    {
        // $current_user = auth()->guard('api')->user();
        // return response($current_user, 200)->header('Content-Type', 'application/json');
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
            $product = Product::create($request->all())->id;
            return response("Product Created with id $product", 201)->header('Content-Type', 'application/json');
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

            return response("", 204)->header('Content-Type', 'application/json');
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
            Log::info("Product Update" . $request);
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
            Log::info("Product $id Like");
            return response("", 204)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }
}
