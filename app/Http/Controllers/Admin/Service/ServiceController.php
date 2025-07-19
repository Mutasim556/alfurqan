<?php

namespace App\Http\Controllers\Admin\Service;

use App\Http\Controllers\Controller;
use App\Models\Admin\Language;
use App\Models\Admin\Service;
use App\Models\Admin\Translation;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use Illuminate\Support\Str;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $services = Service::where([['delete',0]])->get();
        return view('backend.blade.service.index',compact('services'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $data)
    {
        $data->validate([
            'service_name'=>'required',
            'service_short_details'=>'required',
            'service_details'=>'required',
        ],[
            'service_name.required'=>__('admin_local.Service name required'),
            'service_short_details.required'=>__('admin_local.Service short details required'),
            'service_details.required'=>__('admin_local.Service details required'),
        ]);

        $service = new Service();
        $service->service_name = $data->service_name;
        $service->service_name_slug = Str::slug($data->service_name,'-');
        $service->service_short_details = $data->service_short_details;
        $service->service_details = $data->service_details;
        $dir = getDirectoryLink('services/service-images');
        $makeDir = createDirectory($dir);
        if($data->service_image) {
            $images = $data->service_image;
            $image_names = [];
            foreach ($images as $key => $image) {
                $imageName = 'service'.$key.time().'.'.$image->getClientOriginalExtension();
                $manager = new ImageManager(new Driver());
                $imageName  =  $dir . '/' . $imageName;
                $manager->read($image)->resize(300, 300)->save($imageName);
                $image_names[] = $imageName;
            }
            $service_images = implode(",", $image_names);
        }else {
            $service_images =  null;
        }

        $service->service_image = $service_images;

        $service->save();


        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        $datas = [];
        foreach ($languages as $lang) {
            $service_name = $lang->lang != 'en' ? 'service_name_' . $lang->lang : 'service_name';
            $service_short_details = $lang->lang != 'en' ? 'service_short_details_' . $lang->lang : 'service_short_details';
            $service_details = $lang->lang != 'en' ? 'service_details_' . $lang->lang : 'service_details';
            if ($data->$service_name != null) {
                array_push($datas, array(
                    'translationable_type'  => 'App\Models\Admin\Service',
                    'translationable_id'    => $service->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'service_name',
                    'value'                 => $data->$service_name,
                    'created_at'            => Carbon::now(),
                ));
            }
            if ($data->$service_short_details != null) {
                array_push($datas, array(
                    'translationable_type'  => 'App\Models\Admin\Service',
                    'translationable_id'    => $service->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'service_short_details',
                    'value'                 => $data->$service_short_details,
                    'created_at'            => Carbon::now(),
                ));
            }
            if ($data->$service_details != null) {
                array_push($datas, array(
                    'translationable_type'  => 'App\Models\Admin\Service',
                    'translationable_id'    => $service->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'service_details',
                    'value'                 => $data->$service_details,
                    'created_at'            => Carbon::now(),
                ));
            }

        }
        Translation::insert($datas);

        return response([
            'service' => $service,
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Service create successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['service-update', 'service-delete']),
            'hasEditPermission' => hasPermission(['service-update']),
            'hasDeletePermission' => hasPermission(['service-delete']),
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
        $service = Service::withoutGlobalScope('translate')->findOrFail($id);
        // dd(app()->getLocale());
        return response($service);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $data, string $id)
    {
        // dd($data->service_image);
        $data->validate([
            'service_name'=>'required',
            'service_short_details'=>'required',
            'service_details'=>'required',
        ],[
            'service_name.required'=>__('admin_local.Service name required'),
            'service_short_details.required'=>__('admin_local.Service short details required'),
            'service_details.required'=>__('admin_local.Service details required'),
        ]);

        $service = Service::findOrFail($id);
        $service->service_name = $data->service_name;
        $service->service_name_slug = Str::slug($data->service_name,'-');
        $service->service_short_details = $data->service_short_details;
        $service->service_details = $data->service_details;
        $dir = getDirectoryLink('services/service-images');
        $makeDir = createDirectory($dir);
        if($data->service_image) {
            $image = $data->service_image;
            $image_names = [];

            $imageName = 'service'.time().'.'.$image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $imageName  =  $dir . '/' . $imageName;
            $manager->read($image)->resize(300, 300)->save($imageName);
            $service_images = $imageName;
            // dd($service_images);
        }else {
            $service_images = $service->service_image;
        }

        $service->service_image = $service_images;

        $service->save();
        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        foreach ($languages as $lang) {
            $service_name = $lang->lang != 'en' ? 'service_name_' . $lang->lang : 'service_name';
            $service_short_details = $lang->lang != 'en' ? 'service_short_details_' . $lang->lang : 'service_short_details';
            $service_details = $lang->lang != 'en' ? 'service_details_' . $lang->lang : 'service_details';
            if ($data->$service_name != null) {
                Translation::updateOrInsert([
                    'translationable_type'  => 'App\Models\Admin\Service',
                     'translationable_id'    => $service->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'service_name',
                ],[
                    'value'                 => $data->$service_name,
                    'updated_at'            => Carbon::now(),
                ]);
            }
            if ($data->$service_short_details != null) {
            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\Service',
                    'translationable_id'    => $service->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'service_short_details',
            ],[
                'value'                 => $data->$service_short_details,
                'updated_at'            => Carbon::now(),
            ]);
            }
            if ($data->$service_details != null) {
            Translation::updateOrInsert([
                'translationable_type'  => 'App\Models\Admin\Service',
                    'translationable_id'    => $service->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'service_details',
            ],[
                'value'                 => $data->$service_details,
                'updated_at'            => Carbon::now(),
            ]);
            }

        }
        return response([
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Service updated successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $service = Service::findOrFail($id);
        $service->delete=1;
        $service->updated_at=Carbon::now();
        $service->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Service deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data){
        Service::where('id',$data->id)->update(['status'=>$data->status,'updated_at'=>Carbon::now()]);
        $service = Service::where('id',$data->id)->first();
        return $service;
    }
}
