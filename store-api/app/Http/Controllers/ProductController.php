<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\LoggingInfo;
use Log;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class ProductController extends Controller
{
    /**
     * Display and Search Product by name
     *
     * @param string $name
     * @return List|Product
     */
    public function index($name = null)
    {
        if ($name != null) {
            $products = DB::table('products')->where('name', '=', $name)->orderBy('name', 'ASC')->paginate(10);
            return response($products, 200)->header('Content-Type', 'application/json');
        }
        $products = DB::table('products')->orderBy('name', 'ASC')->paginate(10);
        return response($products, 200)->header('Content-Type', 'application/json');
    }

    /**
     * Show Sorted Product
     *
     * @param string $name
     * @param int $likes
     * @return List|Product
     */
    public function sort($name = null, $likes = null)
    {
        $products = [];
        if ($name != null) {
            if ($likes != null) {
                $products = DB::table('products')->orderBy('name', 'ASC')->orderBy('likes', 'ASC')->paginate(10);
            } else {
                $products = DB::table('products')->orderBy('name', 'ASC')->paginate(10);
            }
        } else {
            if ($likes != null) {
                $products = DB::table('products')->orderBy('likes', 'ASC')->paginate(10);
            } else {
                $products = DB::table('products')->paginate(10);
            }
         }
        return response($products, 200)->header('Content-Type', 'application/json');
    }

    /**
     * Add a Product
     *
     * If user is admin
     * 
     * @param string $request
     * @return string
     */
    public function store(Request $request)
    {
        try {
            if (Gate::allows('admin-only', auth()->user())) {
                Product::create($request->all());
                return response("", 201)->header('Content-Type', 'application/json');
            }

            return response("Only Administrator Users can Access this Resource", 405)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Delete a Product
     *
     * If user is admin
     * 
     * @param int $id
     * @return string
     */
    public function delete($id)
    {
        try {
            if (Gate::allows('admin-only', auth()->user())) {
                $product = Product::find($id);
                if ($product == null) {
                    return response("", 404)->header('Content-Type', 'application/json');
                }
                $product->delete();

                return response("", 202)->header('Content-Type', 'application/json');
            }

            return response("Only Administrator Users can Access this Resource", 405)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Update a Product
     *
     * If user is admin
     * 
     * @param int $id
     * @return string
     */
    public function update(Request $request, $id)
    {
        try {
            if (Gate::allows('admin-only', auth()->user())) {
                $product = Product::find($id);
                if ($product == null) {
                    return response("", 404)->header('Content-Type', 'application/json');
                }
                $product->update($request->all());

                //Save Log Data
                $quantity = $request->input('quantity');
                $price = $request->input('price');
                $log_data = "Controller ProductController. Action update. Product id: $id, Quantity $quantity, Quantity $price";
                Log::info($log_data);
                $log_info = new LoggingInfo();
                $log_info->user_id = auth()->guard('api')->user()->id;
                $log_info->title = "Product Update";
                $log_info->description = "";
                $log_info->data = $log_data;
                $log_info->save();

                return response("", 202)->header('Content-Type', 'application/json');
            }

            return response("Only Administrator Users can Access this Resource", 405)->header('Content-Type', 'application/json');
        } catch (\Exception $ex) {
            Log::error($ex);
            return response($ex->getMessage(), 400)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Like a Product
     *
     * @param int $id
     * @return string
     */
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
