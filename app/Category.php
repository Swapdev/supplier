<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Category extends Model
{
    protected $guarded = [];

    protected $table = 'category';

    /**
     *  Relation with many products
     */

    public function products()
    {
        return $this->belongsToMany('App\Product');
    }

    /**
     * Relation with the self category
     */

    public function parent()
    {
      return $this->hasOne('App\Category', 'parent');
    }

    /**
     * Relation with the sub category
     */

    public function children()
    {
         return $this->hasMany('App\Category', 'sub_category_id');
    }
}
