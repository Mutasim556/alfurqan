<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Event extends Model
{
    public function translations()
    {
        return $this->morphMany(Translation::class, 'translationable');
    }
    public function getTitleAttribute($value){
        if (count($this->translations) > 0) {
            foreach ($this->translations as $translation) {
                if ($translation['key'] == 'title') {
                    return $translation['value'];
                }
            }
        }

        return $value;
    }

    public function getShortDetailsAttribute($value){
        if (count($this->translations) > 0) {
            foreach ($this->translations as $translation) {
                if ($translation['key'] == 'short_details') {
                    return $translation['value'];
                }
            }
        }

        return $value;
    }

    public function getDetailsAttribute($value){
        if (count($this->translations) > 0) {
            foreach ($this->translations as $translation) {
                if ($translation['key'] == 'details') {
                    return $translation['value'];
                }
            }
        }

        return $value;
    }

    protected static function booted()
    {
        static::addGlobalScope('translate', function (Builder $builder) {
            $builder->with(['translations' => function ($query) {
                return $query->where([['locale',app()->getLocale()]]);
            }]);
        });
    }
}
