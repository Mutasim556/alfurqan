<?php

namespace App\Models\Admin;

use Illuminate\Contracts\Database\Query\Builder;
use Illuminate\Database\Eloquent\Model;

class VideoGallery extends Model
{
    public function translations()
    {
        return $this->morphMany(Translation::class, 'translationable');
    }
    public function getVideoTitleAttribute($value){
        if (count($this->translations) > 0) {
            foreach ($this->translations as $translation) {
                if ($translation['key'] == 'video_title') {
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
