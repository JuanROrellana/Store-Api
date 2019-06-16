<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoggingInfo extends Model
{
    protected $fillable = ['user_id', 'title', 'description', 'data'];
}
