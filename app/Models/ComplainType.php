<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ComplainType extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'slug', 'description', 'status',
    ];

    public function complains()
    {
        return $this->hasMany(Complain::class, 'type_id', 'id');
    }
}
