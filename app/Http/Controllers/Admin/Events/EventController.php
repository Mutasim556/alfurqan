<?php

namespace App\Http\Controllers\Admin\Events;

use App\Http\Controllers\Controller;
use App\Models\Admin\Event;
use App\Models\Admin\Language;
use App\Models\Admin\Translation;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $events = Event::where([['delete',0]])->get();
        return view('backend.blade.events.index',compact('events'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $data)
    {
        $data->validate([
            'event_title'=>'required',
            'short_details'=>'required',
            'details'=>'required',
            'event_images'=>'required',
        ],[
            'event_title.required'=>__('admin_local.Event title is required'),
            'short_details.required'=>__('admin_local.Event short details is required'),
            'details.required'=>__('admin_local.Event details is required'),
            'event_images.required'=>__('admin_local.Event image is required'),
        ]);

        $event = new Event();
        $event->title = $data->event_title;
        $event->short_details = $data->short_details;
         $event->details = $data->details;
        $event->has_start_date = $data->has_start_date?1:0;
        $event->event_start_date = $data->event_start_date;
        $event->has_end_date = $data->has_end_date?1:0;
        $event->event_end_date = $data->event_end_date;
        $event->has_time = $data->has_time?1:0;
        $event->event_schedule = $data->event_schedule;
        $event->event_start_time = $data->event_start_time;
        $event->event_end_time = $data->event_end_time;
        $event->event_location = $data->event_location;
        $event->has_location = $data->event_location?1:0;

        $dir = getDirectoryLink('events/event-images');
        $makeDir = createDirectory($dir);
        if($data->event_images) {
            $images = $data->event_images;
            $image_names = [];
            foreach ($images as $key => $image) {
                $imageName = 'EVENT'.$key.time().'.'.$image->getClientOriginalExtension();
                $manager = new ImageManager(new Driver());
                $imageName  =  $dir . '/' . $imageName;
                $manager->read($image)->resize(300, 300)->save($imageName);
                $image_names[] = $imageName;
            }
            $event_images = implode(",", $image_names);
        }else {
            $event_images = null;
        }

        $event->event_images = $event_images;

        $dir = getDirectoryLink('events/event-videos');
        $makeDir = createDirectory($dir);
        if ($data->hasFile('event_video')) {
            $file = $data->file('event_video');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move($dir , $filename);

            $filename = $dir . '/' .$filename;
        }else{
            $filename=null;
        }

        $event->event_videos = $data->has_video?$filename:null;
        $event->has_videos = $data->has_video?1:0;

        $event->save();

         $languages =  Language::where([['status', 1], ['delete', 0]])->get();
         $datas = [];
         foreach ($languages as $lang) {
             $title = $lang->lang != 'en' ? 'event_title_' . $lang->lang : 'event_title';
             $short_details = $lang->lang != 'en' ? 'short_details_' . $lang->lang : 'short_details';
             $details = $lang->lang != 'en' ? 'details_' . $lang->lang : 'details';
             if ($data->$title != null) {
                 array_push($datas, array(
                     'translationable_type'  => 'App\Models\Admin\Event',
                     'translationable_id'    => $event->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'title',
                     'value'                 => $data->$title,
                     'created_at'            => Carbon::now(),
                 ));
             }
             if ($data->$short_details != null) {
                 array_push($datas, array(
                     'translationable_type'  => 'App\Models\Admin\Event',
                     'translationable_id'    => $event->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'short_details',
                     'value'                 => $data->$short_details,
                     'created_at'            => Carbon::now(),
                 ));
             }
             if ($data->$details != null) {
                 array_push($datas, array(
                     'translationable_type'  => 'App\Models\Admin\Event',
                     'translationable_id'    => $event->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'details',
                     'value'                 => $data->$details,
                     'created_at'            => Carbon::now(),
                 ));
             }

         }
         Translation::insert($datas);

        return response([
            'sub_category' => $event,
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Event create successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['event-update', 'event-delete']),
            'hasEditPermission' => hasPermission(['event-update']),
            'hasDeletePermission' => hasPermission(['event-delete']),
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $event = Event::withoutGlobalScope('translate')->findOrFail($id);
        // dd($category->category_name);
        return response($event);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $data, string $id)
    {
        $data->validate([
            'event_title'=>'required',
            'short_details'=>'required',
            'details'=>'required',
        ],[
            'event_title.required'=>__('admin_local.Event title is required'),
            'short_details.required'=>__('admin_local.Event short details is required'),
            'details.required'=>__('admin_local.Event details is required'),
        ]);

        $event = Event::findOrFail($id);
        $event->title = $data->event_title;
        $event->short_details = $data->short_details;
        $event->details = $data->details;
        $event->has_start_date = $data->has_start_date?1:0;
        $event->event_start_date = $data->event_start_date;
        $event->has_end_date = $data->has_end_date?1:0;
        $event->event_end_date = $data->event_end_date;
        $event->has_time = $data->has_time?1:0;
        $event->event_schedule = $data->event_schedule;
        $event->event_start_time = $data->event_start_time;
        $event->event_end_time = $data->event_end_time;
        $event->event_location = $data->event_location;
        $event->has_location = $data->event_location?1:0;

        $dir = getDirectoryLink('events/event-images');
        $makeDir = createDirectory($dir);
        if($data->event_images) {
            $images = $data->event_images;
            $image_names = [];
            foreach ($images as $key => $image) {
                $imageName = 'EVENT'.$key.time().'.'.$image->getClientOriginalExtension();
                $manager = new ImageManager(new Driver());
                $imageName  =  $dir . '/' . $imageName;
                $manager->read($image)->resize(300, 300)->save($imageName);
                $image_names[] = $imageName;
            }
            $event_images = implode(",", $image_names);
        }else {
            $event_images =  $event->event_images;
        }

        $event->event_images = $event_images;

        $dir = getDirectoryLink('events/event-videos');
        $makeDir = createDirectory($dir);
        if ($data->hasFile('event_video')) {
            $file = $data->file('event_video');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move($dir , $filename);

            $filename = $dir . '/' .$filename;
        }else{
            $filename=$event->event_videos;
        }

        $event->event_videos = $data->has_video?$filename:$event->event_videos;
        $event->has_videos = $data->has_video?1:0;

        $event->save();

        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        foreach ($languages as $lang) {
            $title = $lang->lang != 'en' ? 'event_title_' . $lang->lang : 'event_title';
            $short_details = $lang->lang != 'en' ? 'short_details_' . $lang->lang : 'short_details';
            $details = $lang->lang != 'en' ? 'details_' . $lang->lang : 'details';
            if ($data->$title != null) {
                Translation::updateOrInsert([
                    'translationable_type'  => 'App\Models\Admin\Event',
                     'translationable_id'    => $event->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'title',
                ],[
                    'value'                 => $data->$title,
                    'updated_at'            => Carbon::now(),
                ]);
            }
            if ($data->$short_details != null) {
            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\Event',
                    'translationable_id'    => $event->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'short_details',
            ],[
                'value'                 => $data->$short_details,
                'updated_at'            => Carbon::now(),
            ]);
            }
            if ($data->$details != null) {
            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\Event',
                    'translationable_id'    => $event->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'details',
            ],[
                'value'                 => $data->$details,
                'updated_at'            => Carbon::now(),
            ]);
            }

        }
        return response([
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Event updated successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $event = Event::findOrFail($id);
        $event->delete=1;
        $event->updated_at=Carbon::now();
        $event->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Event deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data){
        Event::where('id',$data->id)->update(['status'=>$data->status,'updated_at'=>Carbon::now()]);
        $event = Event::where('id',$data->id)->first();
        return $event;
    }
}
