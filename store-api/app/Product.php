<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
  protected $fillable = ['name', 'description', 'code', 'quantity', 'price', 'likes'];

  public function orderItems()
  {
    return $this->hasMany(OrderItem::class);
  }
}
