<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
  protected $fillable = ['comments'];

  public function orderItems()
  {
    return $this->hasMany(OrderItem::class);
  }

  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
