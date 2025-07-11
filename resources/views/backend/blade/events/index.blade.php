@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Events') }}
@endpush
@push('css')
    <link rel="stylesheet" href="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/assets/css/custom.css') }}">
@endpush
@push('page_css')
    <style>
        .loader-box {
            height: auto;
            padding: 10px 0px;
        }

        .loader-box .loader-35:after {
            height: 20px;
            width: 10px;
        }

        .loader-box .loader-35:before {
            width: 20px;
            height: 10px;
        }

        .cke_contents {
            border: 2px dashed #5c61f2 !important;
            border-radius: 0px 0px 10px 10px
        }

        .cke_top {
            border: 2px dashed #5c61f2 !important;
            border-bottom: 0px !important;
            border-radius: 10px 10px 0px 0px
        }

        .invalid-selec2 {
            border-color: red !important;
        }

    </style>
@endpush
@section('content')
    {{-- Add User Modal Start --}}

    <div class="modal fade" id="add-event-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Add Course event') }}
                    </h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <p class="px-3 text-danger"><i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form method="POSt" action="" id="add_event_form" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-sm-12 col-xl-12">
                                <ul class="nav nav-pills nav-primary my-0" id="pills-successtab" role="tablist">
                                    @php
                                        $lang = \App\Models\Admin\Language::where([
                                            ['status', 1],
                                            ['delete', 0],
                                            ['default', 1],
                                        ])->first();
                                    @endphp
                                    <li class="nav-item"><a class="nav-link active" id="pills-defaultLang-tab"
                                            data-bs-toggle="pill" href="#pills-defaultLang" role="tab"
                                            aria-controls="pills-defaultLang" aria-selected="true">{{ $lang->name }}
                                            ( {{ __('admin_local.Default') }} )</a></li>
                                    @foreach (getLangs() as $lang)
                                        <li class="nav-item"><a class="nav-link" id="pills-{{ $lang->name }}-tab"
                                                data-bs-toggle="pill" href="#pills-{{ $lang->name }}" role="tab"
                                                aria-controls="pills-{{ $lang->name }}"
                                                aria-selected="true">{{ $lang->name }}</a></li>
                                    @endforeach
                                </ul>
                                <div class="tab-content mt-3" id="pills-successtabContent">
                                    <div class="tab-pane fade show active" id="pills-defaultLang" role="tabpanel"
                                        aria-labelledby="pills-defaultLang-tab">
                                        <div class="form-group">
                                            <label for="">{{ __('admin_local.Event Title') }} (
                                                {{ __('admin_local.Default') }} ) *</label>
                                            <input type="text" class="form-control" name="event_title"
                                                id="event_title">
                                            <span class="text-danger err-mgs" id="event_title_err"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="">{{ __('admin_local.Short Details') }} (
                                                {{ __('admin_local.Default') }} ) *</label>
                                            <input type="text" class="form-control" name="short_details"
                                                id="short_details">
                                            <span class="text-danger err-mgs" id="short_details_err"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="">{{ __('admin_local.Details') }} (
                                                {{ __('admin_local.Default') }} ) *</label>
                                            <textarea class="form-control ckeditorappend" name="details" id="details"></textarea>
                                            <span class="text-danger err-mgs" id="details_err"></span>
                                        </div>
                                    </div>
                                    <script>
                                        var langCode = [];
                                    </script>
                                    @foreach (getLangs() as $lang)
                                        <script>

                                            langCode.push("{{ $lang->lang }}");
                                        </script>
                                        <div class="tab-pane fade" id="pills-{{ $lang->name }}" role="tabpanel"
                                            aria-labelledby="pills-{{ $lang->name }}-tab">
                                            <div class="form-group">
                                                <label for="">{{ __('admin_local.Event Title') }} (
                                                    {{ $lang->name }} )</label>
                                                <input type="text" class="form-control"
                                                    name="event_title_{{ $lang->lang }}"
                                                    id="event_title_{{ $lang->lang }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="">{{ __('admin_local.Short Details') }} (
                                                    {{ $lang->name }} )</label>
                                                <input type="text" class="form-control"
                                                    name="short_details_{{ $lang->lang }}"
                                                    id="short_details_{{ $lang->lang }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="">{{ __('admin_local.Details') }} (
                                                    {{ $lang->name }} ) </label>
                                                <textarea class="form-control" name="details_{{ $lang->lang }}"
                                                    id="details_{{ $lang->lang }}"></textarea>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="checkbox" name="has_start_date"
                                    id="has_start_date">
                                <label for="">{{ __('admin_local.Has Start Date ?') }}</label>
                                <span class="text-danger err-mgs" id="has_start_date_err"></span>
                            </div>
                            <div class="form-group col-md-6" id="event_start_date_div" style="display:none;">
                                <label for="">{{ __('admin_local.Event Start Date') }}</label>
                                <input type="date" class="form-control" name="event_start_date"
                                    id="event_start_date">
                                <span class="text-danger err-mgs" id="event_start_date_err"></span>
                            </div>
                        </div>
                        <div class="row" id="has_end_date_div" style="display:none;">
                            <div class="form-group col-md-6">
                                <input type="checkbox" name="has_end_date"
                                    id="has_end_date">
                                <label for="">{{ __('admin_local.Has End Date ?') }}</label>
                                <span class="text-danger err-mgs" id="has_end_date_err"></span>
                            </div>
                            <div class="form-group col-md-6" id="event_end_date_div" style="display:none;">
                                <label for="">{{ __('admin_local.Event End Date') }}</label>
                                <input type="date" class="form-control" name="event_end_date"
                                    id="event_end_date">
                                <span class="text-danger err-mgs" id="event_end_date_err"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3">
                                <input type="checkbox" name="has_time"
                                    id="has_time">
                                <label for="">{{ __('admin_local.Has Time ?') }}</label>
                                <span class="text-danger err-mgs" id="has_time_err"></span> 
                            </div>
                            <div class="col-md-9" id="has_time_div" style="display:none;">
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <label for="">{{ __('admin_local.Schedule') }}</label>
                                        <input type="text" class="form-control" name="event_schedule"
                                            id="event_schedule">
                                        <span class="text-danger err-mgs" id="event_schedule_err"></span>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="">{{ __('admin_local.Start Time') }}</label>
                                        <input type="time" class="form-control" name="event_start_time"
                                            id="event_start_time">
                                        <span class="text-danger err-mgs" id="event_start_time_err"></span>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="">{{ __('admin_local.End Time') }}</label>
                                        <input type="time" class="form-control" name="event_end_time"
                                            id="event_end_time">
                                        <span class="text-danger err-mgs" id="event_end_time_err"></span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="">{{ __('admin_local.Event Location') }}</label>
                                <input type="text" class="form-control" name="event_location"
                                    id="event_location" >
                                <span class="text-danger err-mgs" id="event_location_err"></span>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ __('admin_local.Event Images') }}</label>
                                <input type="file" class="form-control" name="event_images[]"
                                    id="event_images" multiple>
                                <span class="text-danger err-mgs" id="event_images_err"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="checkbox" name="has_video"
                                    id="has_video">
                                <label for="">{{ __('admin_local.Has Video ?') }}</label>
                                <span class="text-danger err-mgs" id="has_video_err"></span>
                            </div>
                            <div class="form-group col-md-6" id="event_video_div" style="display:none">
                                <label for="">{{ __('admin_local.Event Video') }}</label>
                                <input type="file" class="form-control" name="event_video"
                                    id="event_video">
                                <span class="text-danger err-mgs" id="event_video_err"></span>
                            </div>
                        </div>
                        <div class="row mt-4 mb-2">
                            <div class="form-group col-lg-12">

                                <button class="btn btn-danger text-white font-weight-medium waves-effect text-start"
                                    data-bs-dismiss="modal" style="float: right" type="button">{{ __('admin_local.Close') }}</button>
                                <button class="btn btn-primary mx-2" style="float: right"
                                    type="submit">{{ __('admin_local.Submit') }}</button>
                            </div>

                        </div>
                    </form>
                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    {{-- Add User Modal End --}}

    {{-- Add User Modal Start --}}

    <div class="modal fade" id="edit-event-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Edit Course event') }}
                    </h4>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <p class="px-3 text-danger"><i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form id="edit_event_form" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <input type="hidden" id="event_id" name="event_id" value="">
                        <div class="row">
                            <div class="col-sm-12 col-xl-12">
                                <ul class="nav nav-pills nav-primary my-0" id="pills-successtab" role="tablist">
                                    @php
                                        $lang = \App\Models\Admin\Language::where([
                                            ['status', 1],
                                            ['delete', 0],
                                            ['default', 1],
                                        ])->first();
                                    @endphp
                                    <li class="nav-item"><a class="nav-link active" id="epills-defaultLang-tab"
                                            data-bs-toggle="pill" href="#epills-defaultLang" role="tab"
                                            aria-controls="epills-defaultLang" aria-selected="true">{{ $lang->name }}
                                            ( {{ __('admin_local.Default') }} )</a></li>
                                    @foreach (getLangs() as $lang)
                                        <li class="nav-item"><a class="nav-link" id="pills-{{ $lang->name }}-tab"
                                                data-bs-toggle="pill" href="#epills-{{ $lang->name }}" role="tab"
                                                aria-controls="epills-{{ $lang->name }}"
                                                aria-selected="true">{{ $lang->name }}</a></li>
                                    @endforeach
                                </ul>
                                <div class="tab-content mt-3" id="pills-successtabContent">
                                    <div class="tab-pane fade show active" id="epills-defaultLang" role="tabpanel"
                                        aria-labelledby="epills-defaultLang-tab">
                                        <div class="form-group">
                                            <label for="">{{ __('admin_local.Event Title') }} (
                                                {{ __('admin_local.Default') }} ) *</label>
                                            <input type="text" class="form-control" name="event_title"
                                                id="event_title">
                                            <span class="text-danger err-mgs" id="event_title_err"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="">{{ __('admin_local.Short Details') }} (
                                                {{ __('admin_local.Default') }} ) *</label>
                                            <input type="text" class="form-control" name="short_details"
                                                id="short_details">
                                            <span class="text-danger err-mgs" id="short_details_err"></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="">{{ __('admin_local.Details') }} (
                                                {{ __('admin_local.Default') }} ) *</label>
                                            <textarea class="form-control ckeditorappend" name="details" id="details2"></textarea>
                                            <span class="text-danger err-mgs" id="details_err"></span>
                                        </div>
                                    </div>
                                    <script>
                                        var langCode = [];
                                    </script>
                                    @foreach (getLangs() as $lang)
                                        <script>

                                            langCode.push("{{ $lang->lang }}");
                                        </script>
                                        <div class="tab-pane fade" id="epills-{{ $lang->name }}" role="tabpanel"
                                            aria-labelledby="epills-{{ $lang->name }}-tab">
                                            <div class="form-group">
                                                <label for="">{{ __('admin_local.Event Title') }} (
                                                    {{ $lang->name }} )</label>
                                                <input type="text" class="form-control"
                                                    name="event_title_{{ $lang->lang }}"
                                                    id="event_title_{{ $lang->lang }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="">{{ __('admin_local.Short Details') }} (
                                                    {{ $lang->name }} )</label>
                                                <input type="text" class="form-control"
                                                    name="short_details_{{ $lang->lang }}"
                                                    id="short_details_{{ $lang->lang }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="">{{ __('admin_local.Details') }} (
                                                    {{ $lang->name }} ) </label>
                                                <textarea class="form-control ckeditorappend" name="details2_{{ $lang->lang }}"
                                                    id="details2_{{ $lang->lang }}"></textarea>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="checkbox" name="has_start_date"
                                    id="has_start_date">
                                <label for="">{{ __('admin_local.Has Start Date ?') }}</label>
                                <span class="text-danger err-mgs" id="has_start_date_err"></span>
                            </div>
                            <div class="form-group col-md-6" id="event_start_date_div" style="display:none;">
                                <label for="">{{ __('admin_local.Event Start Date') }}</label>
                                <input type="date" class="form-control" name="event_start_date"
                                    id="event_start_date">
                                <span class="text-danger err-mgs" id="event_start_date_err"></span>
                            </div>
                        </div>
                        <div class="row" id="has_end_date_div" style="display:none;">
                            <div class="form-group col-md-6">
                                <input type="checkbox" name="has_end_date"
                                    id="has_end_date">
                                <label for="">{{ __('admin_local.Has End Date ?') }}</label>
                                <span class="text-danger err-mgs" id="has_end_date_err"></span>
                            </div>
                            <div class="form-group col-md-6" id="event_end_date_div" style="display:none;">
                                <label for="">{{ __('admin_local.Event End Date') }}</label>
                                <input type="date" class="form-control" name="event_end_date"
                                    id="event_end_date">
                                <span class="text-danger err-mgs" id="event_end_date_err"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3">
                                <input type="checkbox" name="has_time"
                                    id="has_time">
                                <label for="">{{ __('admin_local.Has Time ?') }}</label>
                                <span class="text-danger err-mgs" id="has_time_err"></span>
                            </div>
                            <div class="col-md-9" id="has_time_div" style="display:none;">
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <label for="">{{ __('admin_local.Schedule') }}</label>
                                        <input type="text" class="form-control" name="event_schedule"
                                            id="event_schedule">
                                        <span class="text-danger err-mgs" id="event_schedule_err"></span>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="">{{ __('admin_local.Start Time') }}</label>
                                        <input type="time" class="form-control" name="event_start_time"
                                            id="event_start_time">
                                        <span class="text-danger err-mgs" id="event_start_time_err"></span>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="">{{ __('admin_local.End Time') }}</label>
                                        <input type="time" class="form-control" name="event_end_time"
                                            id="event_end_time">
                                        <span class="text-danger err-mgs" id="event_end_time_err"></span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="">{{ __('admin_local.Event Location') }}</label>
                                <input type="text" class="form-control" name="event_location"
                                    id="event_location" >
                                <span class="text-danger err-mgs" id="event_location_err"></span>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ __('admin_local.Event Images') }}</label>
                                <input type="file" class="form-control" name="event_images[]"
                                    id="event_images" multiple>
                                <span class="text-danger err-mgs" id="event_images_err"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="checkbox" name="has_video"
                                    id="has_video">
                                <label for="">{{ __('admin_local.Has Video ?') }}</label>
                                <span class="text-danger err-mgs" id="has_video_err"></span>
                            </div>
                            <div class="form-group col-md-6" id="event_video_div" style="display:none">
                                <label for="">{{ __('admin_local.Event Video') }}</label>
                                <input type="file" class="form-control" name="event_video"
                                    id="event_video">
                                <span class="text-danger err-mgs" id="event_video_err"></span>
                            </div>
                        </div>

                        <div class="row mt-4 mb-2">
                            <div class="form-group col-lg-12">
                                <button class="btn btn-danger text-white font-weight-medium waves-effect text-start"
                                    data-bs-dismiss="modal" style="float: right"
                                    type="button">{{ __('admin_local.Close') }}</button>
                                <button class="btn btn-primary mx-2" style="float: right"
                                    type="submit">{{ __('admin_local.Submit') }}</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    {{-- Add User Modal End --}}

     <div class="modal fade" id="view-event-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.View Event') }}
                    </h4>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <h4 class="text-center">{{ __('admin_local.Event Images') }}</h4>
                <div class="modal-body" id="append_event_images">

                </div>
                <h4 class="text-center">{{ __('admin_local.Event Video') }}</h4>
                <div class="modal-body"  id="append_event_video">

                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>



    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-12 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Events') }}</h3>
                    </div>

                    <div class="card-body">
                        @if (hasPermission(['event-create']))
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <button class="btn btn-success" type="btn" data-bs-toggle="modal"
                                        data-bs-target="#add-event-modal">+ {{ __('admin_local.Add Event') }}</button>
                                </div>
                            </div>
                        @endif

                        <div class="table-responsive theme-scrollbar">
                            <table id="basic-1" class="display table-bordered">
                                <thead>
                                    <tr>
                                        <th>{{ __('admin_local.Event Title') }}</th>
                                        <th>{{ __('admin_local.Short Details') }}</th>
                                        <th>{{ __('admin_local.Details') }}</th>
                                        <th>{{ __('admin_local.Image') }}</th>
                                        <th>{{ __('admin_local.Event Date') }}</th>
                                        <th>{{ __('admin_local.Event Time') }}</th>
                                        <th>{{ __('admin_local.Event Location') }}</th>
                                        {{-- <th>{{ __('admin_local.Show Contents') }}</th> --}}
                                        <th>{{ __('admin_local.Status') }}</th>
                                        <th>{{ __('admin_local.Action') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($events as $event)
                                        <tr id="trid-{{ $event->id }}"
                                            data-id="{{ $event->id }}">
                                            <td>{{ $event->title }}</td>
                                            <td>{{ $event->short_details }}</td>
                                            <td>{!! $event->details !!}</td>
                                            <td>
                                                @if ($event->event_images)
                                                    @php
                                                        $img=explode(',',$event->event_images)
                                                    @endphp
                                                    <img src="{{ asset($img[0]) }}"
                                                        alt="" style="height:100px">
                                                @else
                                                    {{ __('admin_local.No file') }}
                                                @endif
                                            </td>
                                            <td>
                                                @if ($event->has_start_date==1 && $event->event_end_date==NULL)
                                                    {{ $event->event_start_date }}
                                                @elseif ($event->has_start_date==1 && $event->event_end_date!=NULL && $event->event_start_date!=NULL)
                                                    {{ $event->event_start_date }} <br> to <br> {{ $event->event_end_date }}
                                                @endif
                                            </td>
                                            <td>
                                                @if ($event->has_time==1)
                                                    {{ $event->event_schedule }} <br>
                                                    {{ date('h:i A',strtotime($event->event_start_time)) }}
                                                    {{ $event->event_end_time?" to ".date('h:i A',strtotime($event->event_end_time)):'' }}

                                                @else
                                                    N/A
                                                @endif
                                            </td>
                                            <td>{{ $event->event_location }}</td>
                                            <td class="text-center">
                                                @if (hasPermission(['event-update']))
                                                    <span
                                                        class="mx-2">{{ $event->status == 0 ? 'Inactive' : 'Active' }}</span><input
                                                        data-status="{{ $event->status == 0 ? 1 : 0 }}"
                                                        id="status_change" type="checkbox" data-toggle="switchery"
                                                        data-color="green" data-secondary-color="red" data-size="small"
                                                        {{ $event->status == 1 ? 'checked' : '' }} />
                                                @else
                                                    <span class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if (hasPermission(['event-update','event-delete']))
                                                <div class="dropdown">
                                                    <button
                                                        class="btn btn-info text-white px-2 py-1 dropbtn">{{ __('admin_local.Action') }}
                                                        <i class="fa fa-angle-down"></i></button>
                                                    <div class="dropdown-content">
                                                        @if (hasPermission(['event-update']))
                                                        <a data-bs-toggle="modal" style="cursor: pointer;"
                                                            data-bs-target="#edit-event-modal" class="text-primary"
                                                            id="edit_button"><i class=" fa fa-edit mx-1"></i>{{ __('admin_local.Edit') }}</a>
                                                        @endif
                                                        @if (hasPermission(['event-delete']))
                                                        <a class="text-danger" id="delete_button"
                                                            style="cursor: pointer;"><i class="fa fa-trash mx-1"></i>
                                                            {{ __('admin_local.Delete') }}</a>
                                                        @endif

                                                        <a class="text-success" id="view_button" data-bs-toggle="modal" data-bs-target="#view-event-modal"
                                                            style="cursor: pointer;"><i class="fa fa-desktop mx-1"></i>
                                                            {{ __('admin_local.View') }}</a>
                                                    </div>
                                                </div>
                                                @else
                                                <span class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            @csrf
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Row -->
    </div>
@endsection
@push('js')
    <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/assets/js/sweet-alert/sweetalert.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/assets/js/datatable/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/plugins/switchery/switchery.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/assets/js/select2/select2.full.min.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'inventory/assets/js/select2/select2-custom.js') }}"></script> --}}
        <script src="{{ asset(env('ASSET_DIRECTORY','public') . '/' . 'admin/assets/js/dropzone/dropzone.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public') . '/' . 'admin/assets/js/editor/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public') . '/' . 'admin/assets/js/editor/ckeditor/adapters/jquery.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public') . '/' . 'admin/assets/js/editor/ckeditor/styles.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public') . '/' . 'admin/assets/js/editor/ckeditor/ckeditor.custom.js') }}"></script>
    @foreach (getLangs() as $lang)
        <script>
            CKEDITOR.replace('details_' + '{{ $lang->lang }}', {
                on: {
                    contentDom: function(evt) {
                        // Allow custom context menu only with table elemnts.
                        evt.editor.editable().on('contextmenu', function(contextEvent) {
                            var path = evt.editor.elementPath();

                            if (!path.contains('table')) {
                                contextEvent.cancel();
                            }
                        }, null, null, 5);
                    }
                }
            });
        </script>
        <script>
            CKEDITOR.replace('details2_' + '{{ $lang->lang }}', {
                on: {
                    contentDom: function(evt) {
                        // Allow custom context menu only with table elemnts.
                        evt.editor.editable().on('contextmenu', function(contextEvent) {
                            var path = evt.editor.elementPath();

                            if (!path.contains('table')) {
                                contextEvent.cancel();
                            }
                        }, null, null, 5);
                    }
                }
            });
        </script>
    @endforeach
    <script>
        const slides = document.getElementById('slides');
        const totalSlides = slides.children.length;
        let currentIndex = 0;

        function showSlide(index) {
        if (index >= totalSlides) currentIndex = 0;
        else if (index < 0) currentIndex = totalSlides - 1;
        else currentIndex = index;
        slides.style.transform = `translateX(-${currentIndex * 400}px)`;
        }

        function nextSlide() {
        showSlide(currentIndex + 1);
        }

        function prevSlide() {
        showSlide(currentIndex - 1);
        }

        // Optional: Auto slide every 5 seconds
        // setInterval(nextSlide, 5000);
    </script>
    <script>
        CKEDITOR.replace('details', {
            on: {
                contentDom: function(evt) {
                    // Allow custom context menu only with table elemnts.
                    evt.editor.editable().on('contextmenu', function(contextEvent) {
                        var path = evt.editor.elementPath();

                        if (!path.contains('table')) {
                            contextEvent.cancel();
                        }
                    }, null, null, 5);
                }
            }
        });

        CKEDITOR.replace('details2', {
            on: {
                contentDom: function(evt) {
                    // Allow custom context menu only with table elemnts.
                    evt.editor.editable().on('contextmenu', function(contextEvent) {
                        var path = evt.editor.elementPath();

                        if (!path.contains('table')) {
                            contextEvent.cancel();
                        }
                    }, null, null, 5);
                }
            }
        });

        $('[data-toggle="switchery"]').each(function(idx, obj) {
            new Switchery($(this)[0], $(this).data());
        });
        $('.js-example-basic-single').select2({
            dropdownParent: $('#add-brand-modal')
        });
        $('.js-example-basic-single1').select2({
            dropdownParent: $('#edit-brand-modal')
        });
        $(document).on('select2:open', () => {
            document.querySelector('.select2-search__field').focus();
        });
        var oTable = $("#basic-1").DataTable({
            "language": {
                "decimal": "",
                "emptyTable": "{{ __('admin_local.No size available in table') }}",
                "info": "Showing _START_ to _END_ of _TOTAL_ entries",
                "infoEmpty": "Showing 0 to 0 of 0 entries",
                "infoFiltered": "(filtered from _MAX_ total entries)",
                "infoPostFix": "",
                "thousands": ",",
                "lengthMenu": "Show _MENU_ entries",
                "loadingRecords": "Loading...",
                "processing": "",
                "search": "Search:",
                "zeroRecords": "No matching records found",
                "paginate": {
                    "first": "First",
                    "last": "Last",
                    "next": "Next",
                    "previous": "Previous"
                },
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                }
            }
        });

        var form_url = "{{ route('admin.event.store') }}";
        var submit_btn_after = `<strong>{{ __('admin_local.Saving Event') }} &nbsp; <i class="fa fa-rotate-right fa-spin"></i></strong>`;
        var submit_btn_before = `<strong><i class="fa fa-paper-plane"></i> &nbsp; {{ __('admin_local.Submit') }}</strong>`;
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;
        var comfirm_btn = `{{ __('admin_local.Ok') }}`;


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
        var no_file = `{{ __('admin_local.No file') }}`;
        var base_url = `{{ baseUrl() }}`;
        var translate_url = `{{ route('admin.translateString') }}`;
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/custom/event/event.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush
