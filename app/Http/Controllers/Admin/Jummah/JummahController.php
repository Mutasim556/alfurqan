<?php

namespace App\Http\Controllers\Admin\Jummah;

use App\Http\Controllers\Controller;
use App\Models\Admin\Jummah;
use App\Models\Admin\Language;
use App\Models\Admin\Translation;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class JummahController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $jummahs = Jummah::where([['delete',0]])->get();
        return view('backend.blade.jummah.index',compact('jummahs'));
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
            'jummah_khutba_topic'=>'required',
            'jummah_khutba_details'=>'required',
            'jummah_date'=>'required',
            'jummah_imam'=>'required',
            'jummah_azan_time'=>'required',
            'jummah_khutba_time'=>'required',
            'jummah_prayer_time'=>'required',
        ],[
            'jummah_khutba_topic.required'=>__('admin_local.Khutba topic is required'),
            'jummah_khutba_details.required'=>__('admin_local.Khutba details is required'),
            'jummah_date.required'=>__('admin_local.Khutba date is required'),
            'jummah_imam.required'=>__('admin_local.Imam is required'),
            'jummah_azan_time.required'=>__('admin_local.Azan time is required'),
            'jummah_khutba_time.required'=>__('admin_local.Khutba time is required'),
            'jummah_prayer_time.required'=>__('admin_local.Prayer time is required'),
        ]);

        $jummah = new Jummah();
        $jummah->jummah_khutba_topic = $data->jummah_khutba_topic;
        $jummah->jummah_khutba_details = $data->jummah_khutba_details;
        $jummah->jummah_date = $data->jummah_date;
        $jummah->jummah_imam = $data->jummah_imam;
        $jummah->jummah_azan_time = $data->jummah_azan_time;
        $jummah->jummah_khutba_time = $data->jummah_khutba_time;
        $jummah->jummah_prayer_time = $data->jummah_prayer_time;

        $dir = getDirectoryLink('jummahs/jummah-images');
        $makeDir = createDirectory($dir);
        if($data->image) {
            $images = $data->image;
            $image_names = [];
            foreach ($images as $key => $image) {
                $imageName = 'jummah'.$key.time().'.'.$image->getClientOriginalExtension();
                $manager = new ImageManager(new Driver());
                $imageName  =  $dir . '/' . $imageName;
                $manager->read($image)->resize(300, 300)->save($imageName);
                $image_names[] = $imageName;
            }
            $jummah_images = implode(",", $image_names);
        }else {
            $jummah_images = null;
        }

        $jummah->image = $jummah_images;
        $jummah->created_by = Auth::guard('admin')->user()->id;

        $jummah->save();

        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        $datas = [];
        foreach ($languages as $lang) {
            $jummah_khutba_topic = $lang->lang != 'en' ? 'jummah_khutba_topic_' . $lang->lang : 'jummah_khutba_topic';
            $jummah_khutba_details = $lang->lang != 'en' ? 'jummah_khutba_details_' . $lang->lang : 'jummah_khutba_details';
            if ($data->$jummah_khutba_topic != null) {
                array_push($datas, array(
                    'translationable_type'  => 'App\Models\Admin\Jummah',
                    'translationable_id'    => $jummah->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'jummah_khutba_topic',
                    'value'                 => $data->$jummah_khutba_topic,
                    'created_at'            => Carbon::now(),
                ));
            }
            if ($data->$jummah_khutba_details != null) {
                array_push($datas, array(
                    'translationable_type'  => 'App\Models\Admin\Jummah',
                    'translationable_id'    => $jummah->id,
                    'locale'                => $lang->lang,
                    'key'                   => 'jummah_khutba_details',
                    'value'                 => $data->$jummah_khutba_details,
                    'created_at'            => Carbon::now(),
                ));
            }


         }
         Translation::insert($datas);

        return response([
            'jummah' => $jummah,
            'title' => __('admin_local.Created successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['jummah-update', 'jummah-delete']),
            'hasEditPermission' => hasPermission(['jummah-update']),
            'hasDeletePermission' => hasPermission(['jummah-delete']),
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
        $jummah = Jummah::withoutGlobalScope('translate')->findOrFail($id);
        return response($jummah);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $data, string $id)
    {
        $data->validate([
            'jummah_khutba_topic'=>'required',
            'jummah_khutba_details'=>'required',
            'jummah_date'=>'required',
            'jummah_imam'=>'required',
            'jummah_azan_time'=>'required',
            'jummah_khutba_time'=>'required',
            'jummah_prayer_time'=>'required',
        ],[
            'jummah_khutba_topic.required'=>__('admin_local.Khutba topic is required'),
            'jummah_khutba_details.required'=>__('admin_local.Khutba details is required'),
            'jummah_date.required'=>__('admin_local.Khutba date is required'),
            'jummah_imam.required'=>__('admin_local.Imam is required'),
            'jummah_azan_time.required'=>__('admin_local.Azan time is required'),
            'jummah_khutba_time.required'=>__('admin_local.Khutba time is required'),
            'jummah_prayer_time.required'=>__('admin_local.Prayer time is required'),
        ]);

        $jummah = Jummah::findOrFail($id);
        $jummah->jummah_khutba_topic = $data->jummah_khutba_topic;
        $jummah->jummah_khutba_details = $data->jummah_khutba_details;
        $jummah->jummah_date = $data->jummah_date;
        $jummah->jummah_imam = $data->jummah_imam;
        $jummah->jummah_azan_time = $data->jummah_azan_time;
        $jummah->jummah_khutba_time = $data->jummah_khutba_time;
        $jummah->jummah_prayer_time = $data->jummah_prayer_time;

        $dir = getDirectoryLink('jummahs/jummah-images');
        $makeDir = createDirectory($dir);
        if($data->image) {
            $images = $data->image;
            $image_names = [];
            foreach ($images as $key => $image) {
                $imageName = 'jummah'.$key.time().'.'.$image->getClientOriginalExtension();
                $manager = new ImageManager(new Driver());
                $imageName  =  $dir . '/' . $imageName;
                $manager->read($image)->resize(300, 300)->save($imageName);
                $image_names[] = $imageName;
            }
            $jummah_images = implode(",", $image_names);
        }else {
            $jummah_images = $jummah->image;
        }

        $jummah->image = $jummah_images;
        $jummah->created_by = Auth::guard('admin')->user()->id;

        $jummah->save();


        $languages =  Language::where([['status', 1], ['delete', 0]])->get();
        foreach ($languages as $lang) {
            $jummah_khutba_topic = $lang->lang != 'en' ? 'jummah_khutba_topic_' . $lang->lang : 'jummah_khutba_topic';
            $jummah_khutba_details = $lang->lang != 'en' ? 'jummah_khutba_details_' . $lang->lang : 'jummah_khutba_details';
            if ($data->$jummah_khutba_topic != null) {
                Translation::updateOrInsert([
                    'translationable_type'  => 'App\Models\Admin\Jummah',
                     'translationable_id'    => $jummah->id,
                     'locale'                => $lang->lang,
                     'key'                   => 'jummah_khutba_topic',
                ],[
                    'value'                 => $data->$jummah_khutba_topic,
                    'updated_at'            => Carbon::now(),
                ]);
            }
            if ($data->$jummah_khutba_details != null) {
                Translation::updateOrInsert([
                    'translationable_type'  => 'App\Models\Admin\Jummah',
                        'translationable_id'    => $jummah->id,
                        'locale'                => $lang->lang,
                        'key'                   => 'jummah_khutba_details',
                ],[
                    'value'                 => $data->$jummah_khutba_details,
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

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $jummah = Jummah::findOrFail($id);
        $jummah->delete=1;
        $jummah->updated_at=Carbon::now();
        $jummah->updated_by=Auth::guard('admin')->user()->id;
        $jummah->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

     public function updateStatus(Request $data){
        Jummah::where('id',$data->id)->update(['status'=>$data->status,'updated_at'=>Carbon::now()]);
        $jummah = Jummah::where('id',$data->id)->first();
        return $jummah;
    }
}
