<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Restauran extends Model
{
    use HasFactory;
    protected $table = 'restaurans';

    public function Category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
}