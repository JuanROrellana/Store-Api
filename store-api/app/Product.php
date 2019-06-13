<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function orderItems()
    {
      return $this->hasMany(OrderItem::class);
    }
}
