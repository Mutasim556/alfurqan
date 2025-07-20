<?php

namespace App\Http\Controllers\Admin\Settings;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Setting\HomepageSettingUpdateRequest;
use App\Http\Requests\Admin\Setting\HomepageSliderUpdateRequest;
use App\Models\Admin\HomeAboutus;
use App\Models\Admin\HomepageCounter;
use App\Models\Admin\HomepageSilder;
use App\Models\Admin\Language;
use App\Models\Admin\SliderText;
use App\Models\Admin\Translation;
use App\Models\Admin\VideoGallery;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use Stichoza\GoogleTranslate\GoogleTranslate;

class HomepageSettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:homepage-slider-update,admin')->only(['mainSlider']);
    }

    public function mainSlider(){
        $sliders = HomepageSilder::where([['status',1],['delete',0]])->get();
        $sliderText = SliderText::first();
        // dd($sliderText);
        if($sliderText==null){
            $create = new SliderText(); 
            $create->title = NULL;
            $create->short_details = NULL;
            $create->button_text = NULL;
            $create->save();
        }
        $sliderText = SliderText::first();
        // dd($sliders);
        return view('backend.blade.settings.homepage.main_slider',compact('sliders','sliderText'));
    }


    public function mainSliderStore(Request $data){
        // dd($data->all());
        $data->validate([
            // 'slider_title'=>'required',
            // 'slider_short_description'=>'required',
            // 'slider_button_text'=>'required',
            'slider_image'=>'required|mimes:png,jpg,jpeg',
        ]);
        $slider = new HomepageSilder();
        // $slider->slider_title= $data->slider_title;
        // $slider->slider_short_description= $data->slider_short_description;
        // $slider->slider_link= $data->slider_link;
        // $slider->slider_button_text= $data->slider_button_text;
        $slider->status= 1;
        $slider->created_by = LoggedAdmin()->id;
        $slider->updated_by = LoggedAdmin()->id;

        $dir = getDirectoryLink('hompage/slider-images');
        $makeDir = createDirectory($dir);
        if($data->slider_image){
            $files = $data->slider_image;
            $file = time().'img1.'.$files->getClientOriginalExtension();
            $file_name = $dir.'/'.$file;
            $manager = new ImageManager(new Driver);
            $manager->read($data->slider_image)->resize(1980,900)->save($file_name);
        }else{
            $file_name = "";
        }

        $slider->slider_image = $file_name;

        // if($data->slider_image2){
        //     $files = $data->slider_image2;
        //     $file = time().'img2.'.$files->getClientOriginalExtension();
        //     $file_name = $dir.'/'.$file;
        //     $manager = new ImageManager(new Driver);
        //     $manager->read($data->slider_image2)->resize(660,660)->save($file_name);
        // }else{
        //     $file_name = "";
        // }

        // $slider->slider_image2 = $file_name;


        $slider->save();

        // $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        // foreach ($languages as $lang) {
        //     Translation::updateOrInsert([
        //         'translationable_type'  => 'App\Models\Admin\HomepageSilder',
        //         'translationable_id'    => $slider->id,
        //         'locale'                => $lang->lang,
        //         'key'                   => 'slider_title',
        //     ],[
        //         'value'                 =>  GoogleTranslate::trans($data->slider_title, $lang->lang, 'en'),
        //         'updated_at'            => Carbon::now(),
        //     ]);

        //     Translation::updateOrInsert([
        //         'translationable_type'  => 'App\Models\Admin\HomepageSilder',
        //         'translationable_id'    => $slider->id,
        //         'locale'                => $lang->lang,
        //         'key'                   => 'slider_short_description',
        //     ],[
        //         'value'                 =>  GoogleTranslate::trans($data->slider_short_description, $lang->lang, 'en'),
        //         'updated_at'            => Carbon::now(),
        //     ]);

        //     Translation::updateOrInsert([
        //         'translationable_type'  => 'App\Models\Admin\HomepageSilder',
        //         'translationable_id'    => $slider->id,
        //         'locale'                => $lang->lang,
        //         'key'                   => 'button_text',
        //     ],[
        //         'value'                 =>  GoogleTranslate::trans($data->button_text, $lang->lang, 'en'),
        //         'updated_at'            => Carbon::now(),
        //     ]);
        // }

        return response([
            'slider' => HomepageSilder::findOrFail($slider->id),
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Slider added successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['homepage-slider-update', 'homepage-slider-delete']),
            'hasEditPermission' => hasPermission(['homepage-slider-update']),
            'hasDeletePermission' => hasPermission(['homepage-slider-delete']),
        ], 200);
    }

    public function destroySlider(string $id)
    {
        $slider = HomepageSilder::findOrFail($id);
        $slider->delete=1;
        $slider->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Slider deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateSliderStatus(Request $data){
        // dd($data->id);
        $slider = HomepageSilder::findOrFail($data->id);
        $slider->status=$data->status;
        $slider->updated_at=Carbon::now();
        $slider->save();
        return response($slider);
    }

    public function edit(string $id)
    {
       $slider = HomepageSilder::findOrFail($id);
       return response($slider);
    }

    public function update(Request $data,string $id){
        $data->validate([
            // 'slider_title'=>'required',
            // 'slider_short_description'=>'required',
            // 'slider_button_text'=>'required',
            'slider_image'=>'mimes:png,jpg,jpeg',
            // 'slider_image'=>'mimes:png,jpg,jpeg|dimensions:min_width=2376,min_height=807',
        ]);

        $slider = HomepageSilder::findOrFail($id);
        // $slider->slider_title= $data->slider_title;
        // $slider->slider_short_description= $data->slider_short_description;
        // $slider->slider_link= $data->slider_link;
        // $slider->slider_button_text= $data->slider_button_text;
        $slider->status= 1;
        $slider->updated_by = LoggedAdmin()->id;

        $dir = getDirectoryLink('hompage/slider-images');
        $makeDir = createDirectory($dir);
        if($data->slider_image){
            $files = $data->slider_image;
            $file = time().'img1.'.$files->getClientOriginalExtension();
            $file_name = $dir."/".$file;
            $manager = new ImageManager(new Driver);
            $manager->read($data->slider_image)->resize(1920,800)->save($file_name);
        }else{
            $file_name = $slider->slider_image;
        }

        $slider->slider_image = $file_name;

        // if($data->slider_image2){
        //     $files = $data->slider_image2;
        //     $file = time().'img2.'.$files->getClientOriginalExtension();
        //     $file_name = 'bipebd/files/settings/homepage/slider/'.$file;
        //     $manager = new ImageManager(new Driver);
        //     $manager->read($data->slider_image2)->resize(660,660)->save(env('ASSET_DIRECTORY').'/'.'bipebd/files/settings/homepage/slider/'.$file);
        // }else{
        //     $file_name = $slider->slider_image2;
        // }

        // $slider->slider_image2 = $file_name;

        $slider->save();

        // $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        // foreach ($languages as $lang) {
        //     Translation::updateOrInsert([
        //         'translationable_type'  => 'App\Models\Admin\HomepageSilder',
        //         'translationable_id'    => $slider->id,
        //         'locale'                => $lang->lang,
        //         'key'                   => 'slider_title',
        //     ],[
        //         'value'                 =>  GoogleTranslate::trans($data->slider_title, $lang->lang, 'en'),
        //         'updated_at'            => Carbon::now(),
        //     ]);

        //     Translation::updateOrInsert([
        //         'translationable_type'  => 'App\Models\Admin\HomepageSilder',
        //         'translationable_id'    => $slider->id,
        //         'locale'                => $lang->lang,
        //         'key'                   => 'slider_short_description',
        //     ],[
        //         'value'                 =>  GoogleTranslate::trans($data->slider_short_description, $lang->lang, 'en'),
        //         'updated_at'            => Carbon::now(),
        //     ]);

        //     Translation::updateOrInsert([
        //         'translationable_type'  => 'App\Models\Admin\HomepageSilder',
        //         'translationable_id'    => $slider->id,
        //         'locale'                => $lang->lang,
        //         'key'                   => 'slider_button_text',
        //     ],[
        //         'value'                 =>  GoogleTranslate::trans($data->slider_button_text, $lang->lang, 'en'),
        //         'updated_at'            => Carbon::now(),
        //     ]);
        // }

        return response([
            'slider' => HomepageSilder::findOrFail($id),
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Slider updated successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ],200);
    }


    public function updateSliderText(Request $data){
        $update = SliderText::findOrFail(1);
        $update->title = $data->title;
        $update->short_details = $data->short_details;
        $update->button_text = $data->button_text;
        $update->save();

        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        foreach ($languages as $lang) {
            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\SliderText',
                'translationable_id'    => 1,
                'locale'                => $lang->lang,
                'key'                   => 'title',
            ],[
                'value'                 =>  GoogleTranslate::trans($data->title, $lang->lang, 'en'),
                'updated_at'            => Carbon::now(),
            ]);

            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\SliderText',
                'translationable_id'    => 1,
                'locale'                => $lang->lang,
                'key'                   => 'short_details',
            ],[
                'value'                 =>  GoogleTranslate::trans($data->short_details, $lang->lang, 'en'),
                'updated_at'            => Carbon::now(),
            ]);

            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\SliderText',
                'translationable_id'    => 1,
                'locale'                => $lang->lang,
                'key'                   => 'button_text',
            ],[
                'value'                 =>  GoogleTranslate::trans($data->button_text, $lang->lang, 'en'),
                'updated_at'            => Carbon::now(),
            ]);
        }
        return back();
    }

    public function videoGallery(){
        $videos = VideoGallery::where([['status',1],['delete',0]])->get();
        return view('backend.blade.videoGallery.index',compact('videos'));
    }

    public function videoGalleryStore(Request $data){
        $data->validate([
            'video_title'=>'required',
            'video_embeded_code'=>'required',
            'video_date'=>'required',
            'video_thumbnail'=>'required',
        ],[
            'video_title.required'=>__('admin_local.Title is required'),
            'video_embeded_code.required'=>__('admin_local.Embeded code is required'),
            'video_date.required'=>__('admin_local.Video date is required'),
            'video_thumbnail.required'=>__('admin_local.Video thumbnail is required'),
        ]);

        $video = new VideoGallery();
        $video->video_title = $data->video_title;
        $video->video_embeded_code = $data->video_embeded_code;
        $video->video_date = $data->video_date;
        $video->video_location = $data->video_location;

        $dir = getDirectoryLink('video/thumbnail');
        $makeDir = createDirectory($dir);
        if($data->video_thumbnail) {
            $image = $data->video_thumbnail;
            $imageName = 'thumbnail'.time().'.'.$image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $imageName  =  $dir . '/' . $imageName;
            $manager->read($image)->resize(375,444)->save($imageName);
            $thumbnail = $imageName;
        }else {
            $thumbnail = null;
        }

        $video->video_thumbnail = $thumbnail;
        $video->created_by = Auth::guard('admin')->user()->id;

        $video->save();

        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        $datas = [];
        foreach ($languages as $lang) {
            $video_title = $lang->lang != 'en' ? 'video_title_' . $lang->lang : 'video_title';
            if ($data->$video_title != null) {
                array_push($datas, array(
                    'translationable_type'  => 'App\Models\Admin\VideoGallery',
                    'translationable_id'    => $video->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'video_title',
                    'value'                 => $data->$video_title,
                    'created_at'            => Carbon::now(),
                ));
            }

         }
         Translation::insert($datas);

        return response([
            'video' => $video,
            'title' => __('admin_local.Created successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['video-gallery-update', 'video-gallery-delete']),
            'hasEditPermission' => hasPermission(['video-gallery-update']),
            'hasDeletePermission' => hasPermission(['video-gallery-delete']),
        ], 200);
    }

    public function updateGalleryStatus(Request $data){
        VideoGallery::where('id',$data->id)->update(['status'=>$data->status,'updated_at'=>Carbon::now()]);
        $video = VideoGallery::where('id',$data->id)->first();
        return $video;
    }

    public function editGallery(string $id){
        $video = VideoGallery::withoutGlobalScope('translate')->findOrFail($id);
        return response($video);
    }

    public function updateGallery(Request $data,string $id){
        $data->validate([
            'video_title'=>'required',
            'video_embeded_code'=>'required',
            'video_date'=>'required',
        ],[
            'video_title.required'=>__('admin_local.Title is required'),
            'video_embeded_code.required'=>__('admin_local.Embeded code is required'),
            'video_date.required'=>__('admin_local.Video date is required'),
        ]);

        $video = VideoGallery::findOrFail($id);
        $video->video_title = $data->video_title;
        $video->video_embeded_code = $data->video_embeded_code;
        $video->video_date = $data->video_date;
        $video->video_location = $data->video_location;

        $dir = getDirectoryLink('video/thumbnail');
        $makeDir = createDirectory($dir);
        if($data->video_thumbnail) {
            $image = $data->video_thumbnail;
            $imageName = 'thumbnail'.time().'.'.$image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $imageName  =  $dir . '/' . $imageName;
            $manager->read($image)->resize(375,444)->save($imageName);
            $thumbnail = $imageName;
        }else {
            $thumbnail = $video->video_thumbnail;
        }

        $video->video_thumbnail = $thumbnail;
        $video->updated_by = Auth::guard('admin')->user()->id;

        $video->save();

        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        foreach ($languages as $lang) {
            $video_title = $lang->lang != 'en' ? 'video_title_' . $lang->lang : 'video_title';
            if ($data->$video_title != null) {
                Translation::updateOrInsert([
                    'translationable_type'  => 'App\Models\Admin\VideoGallery',
                     'translationable_id'    => $video->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'video_title',
                ],[
                    'value'                 => $data->$video_title,
                    'updated_at'            => Carbon::now(),
                ]);
            }
        }
        return response([
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Updated successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
        ], 200);
    }

    public function destroyGallery(string $id){
        $video = VideoGallery::findOrFail($id);
        $video->delete=1;
        $video->updated_at=Carbon::now();
        $video->updated_by=Auth::guard('admin')->user()->id;
        $video->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }
}
