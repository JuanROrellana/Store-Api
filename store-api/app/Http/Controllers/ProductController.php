<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Log;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index($title = null, $likes = null)
    {
        $products = DB::table('products')->paginate(10);
        if ($title != null) {
            if ($likes != null) {
                $products = DB::table('products')->where('title', '=', $title)->where('likes', '=', $likes)->paginate(10);
            } else {
                $products = DB::table('products')->where('title', '=', $title)->paginate(10);
            }
        }
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
}
