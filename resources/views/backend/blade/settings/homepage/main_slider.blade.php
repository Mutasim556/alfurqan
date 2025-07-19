@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Homepage Main Slider') }}
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
    </style>
@endpush
@section('content')

    {{-- Add slider Modal Start --}}

    <div class="modal fade" id="add-slider-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Add Slider Image') }}
                    </h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <p class="px-3 text-danger">
                    <i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form method="POST" action="" id="add_slider_form" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            {{-- <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Title') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_title" id="slider_title">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Short Description') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_short_description" id="slider_short_description">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Link ( If Any )') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_link" id="slider_link">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Button Text') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_button_text" id="slider_button_text">
                                <span class="text-danger err-mgs"></span>
                            </div> --}}
                            <div class="col-lg-12 mt-2">
                                <label for="slider_image"><strong>{{ __('admin_local.Slider Image') }} ( 1980px x 900px )
                                    </strong></label>
                                <input type="file" class="form-control" name="slider_image" id="slider_image" onchange="document.getElementById('preview_image').src = window.URL.createObjectURL(this.files[0])">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2 mb-4">
                                <label for="parent_slider_image"><strong>{{ __('admin_local.Preview Image') }}
                                    </strong></label>
                                <img src="" id="preview_image" style="height: 100%;width:100%" alt="preview image">
                            </div>
                             {{-- <div class="col-lg-12 mt-2">
                                <label for="slider_image"><strong>{{ __('admin_local.Slider Image 2') }} ( 660px x 660px )
                                    </strong></label>
                                <input type="file" class="form-control" name="slider_image2" id="slider_image2" onchange="document.getElementById('preview_image3').src = window.URL.createObjectURL(this.files[0])">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2 mb-4">
                                <label for="parent_slider_image"><strong>{{ __('admin_local.Preview Image') }}
                                    </strong></label>
                                <img src="" id="preview_image3" style="height: 100%;width:100%" alt="preview image">
                            </div> --}}
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

    {{-- Add slider Modal End --}}

    {{-- Edit slider Modal Start --}}

    <div class="modal fade" id="edit-slider-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Edit Support slider') }}
                    </h4>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <p class="px-3 text-danger">
                    <i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form id="edit_slider_form" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <input type="hidden" id="slider_id" name="slider_id" value="">
                        <div class="row">
                            {{-- <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Title') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_title" id="slider_title">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Short Description') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_short_description" id="slider_short_description">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Link ( If Any )') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_link" id="slider_link">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="slider_name"><strong>{{ __('admin_local.Slider Button Text') }} *</strong></label>
                                <input type="text" class="form-control" name="slider_button_text" id="slider_button_text">
                                <span class="text-danger err-mgs"></span>
                            </div> --}}
                            <div class="col-lg-12 mt-2">
                                <label for="slider_image"><strong>{{ __('admin_local.Slider Image') }} ( 1980px x 900px )
                                    </strong></label>
                                <input type="file" class="form-control" name="slider_image" id="slider_image" onchange="document.getElementById('preview_image2').src = window.URL.createObjectURL(this.files[0])">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2 mb-4">
                                <label for="parent_slider_image"><strong>{{ __('admin_local.Preview Image') }}
                                    </strong></label>
                                <img src="" id="preview_image2" style="height: 100%;width:100%" alt="preview image">
                            </div>

                            {{-- <div class="col-lg-12 mt-2">
                                <label for="slider_image"><strong>{{ __('admin_local.Slider Image 2') }} ( 660px x 660px )
                                    </strong></label>
                                <input type="file" class="form-control" name="slider_image2" id="slider_image2" onchange="document.getElementById('preview_image4').src = window.URL.createObjectURL(this.files[0])">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2 mb-4">
                                <label for="parent_slider_image"><strong>{{ __('admin_local.Preview Image') }}
                                    </strong></label>
                                <img src="" id="preview_image4" style="height: 100%;width:100%" alt="preview image">
                            </div> --}}
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

    {{-- Edit slider Modal End --}}



    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-10 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Slider Image List') }}</h3>
                    </div>

                    <div class="card-body">
                        <ul class="nav nav-tabs nav-primary" id="pills-warningtab" role="tablist">
                             <li class="nav-item"><a class="nav-link active" id="pills-payments-tab" data-bs-toggle="pill"
                                     href="#pills-payments" role="tab" aria-controls="pills-payments"
                                     aria-selected="true"><i class="icofont icofont-notepad"
                                         style="font-size:22px"></i>{{__('admin_local.Texts')}}</a></li>
                             <li class="nav-item"><a class="nav-link" id="pills-makepayment-tab" data-bs-toggle="pill"
                                     href="#pills-makepayment" role="tab" aria-controls="pills-makepayment"
                                     aria-selected="false"><i class="icofont icofont-pay" style="font-size:22px"></i>{{__('admin_local.Images')}}</a></li>
                         </ul>
                         <div class="tab-content px-0 " id="pills-warningtabContent">
                             <div class="tab-pane fade show active" id="pills-payments" role="tabpanel"
                                 aria-labelledby="pills-payments-tab">
                                 <form action="{{ route('admin.settings.homepage.updateSliderText') }}" class="my-3" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <label for="">{{ __('admin_local.Title') }}</label>
                                        <input type="text" class="form-control" name="title" value="{{ $sliderText->title }}">
                                    </div>
                                    <div class="form-group">
                                        <label for="">{{ __('admin_local.Short Details') }}</label>
                                        <input type="text" class="form-control" name="short_details" value="{{ $sliderText->short_details }}">
                                    </div>
                                    <div class="form-group">
                                        <label for="">{{ __('admin_local.Button Text') }}</label>
                                        <input type="text" class="form-control" name="button_text" value="{{ $sliderText->button_text }}">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-success" value="{{ __('admin_local.Update') }}">
                                    </div>
                                 </form>
                             </div>
                             <div class="tab-pane fade py-4" id="pills-makepayment" role="tabpanel"
                                 aria-labelledby="pills-makepayment-tab">
                                    <div class="table-responsive theme-scrollbar">
                                        @if (hasPermission(['homepage-slider-store']))
                                            <div class="row mb-3">
                                                <div class="col-md-3">
                                                    <button class="btn btn-success" type="btn" data-bs-toggle="modal"
                                                        data-bs-target="#add-slider-modal">+
                                                        {{ __('admin_local.Add Slider Image') }}</button>
                                                </div>
                                            </div>
                                        @endif
                                        <table id="basic-1" class="display table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>{{ __('admin_local.Image') }}</th>
                                                    {{-- <th>{{ __('admin_local.Image 2') }}</th>
                                                    <th>{{ __('admin_local.Title') }}</th>
                                                    <th>{{ __('admin_local.Details') }}</th>
                                                    <th>{{ __('admin_local.Button Text') }}</th> --}}
                                                    <th>{{ __('admin_local.Status') }}</th>
                                                    <th>{{ __('admin_local.Action') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($sliders as $slider)
                                                    <tr id="trid-{{ $slider->id }}" data-id="{{ $slider->id }}">
                                                        <td>
                                                            @if ($slider->slider_image)
                                                                <img height="40px" src="{{ \URL::to('/').'/'.$slider->slider_image }}" alt=""
                                                                    style="height:">
                                                            @else
                                                                {{ __('admin_local.No File') }}
                                                            @endif
                                                        </td>
                                                        {{-- <td>
                                                            @if ($slider->slider_image2)
                                                                <img height="40px" src="{{ asset(env('ASSET_DIRECTORY','public').'/'.$slider->slider_image2) }}" alt=""
                                                                    style="height:">
                                                            @else
                                                                {{ __('admin_local.No File') }}
                                                            @endif
                                                        </td>
                                                        <td>{{ $slider->slider_title }}</td>
                                                        <td>{{ $slider->slider_short_description != '' ? $slider->slider_short_description : 'N/A' }}</td>
                                                        <td>
                                                            {{ $slider->slider_button_text != '' ? $slider->slider_button_text : 'N/A' }}
                                                        </td> --}}
                                                        <td class="text-center">
                                                            @if (hasPermission(['homepage-slider-update']))
                                                                <span
                                                                    class="mx-2">{{ $slider->status == 0 ? 'Inactive' : 'Active' }}</span><input
                                                                    data-status="{{ $slider->status == 0 ? 1 : 0 }}"
                                                                    id="status_change" type="checkbox" data-toggle="switchery"
                                                                    data-color="green" data-secondary-color="red" data-size="small"
                                                                    {{ $slider->status == 1 ? 'checked' : '' }} />
                                                            @else
                                                                <span
                                                                    class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if (hasPermission(['homepage-slider-update', 'homepage-slider-delete']))
                                                                <div class="dropdown">
                                                                    <button
                                                                        class="btn btn-info text-white px-2 py-1 dropbtn">{{ __('admin_local.Action') }}
                                                                        <i class="fa fa-angle-down"></i></button>
                                                                    <div class="dropdown-content">
                                                                        @if (hasPermission(['homepage-slider-update']))
                                                                            <a data-bs-toggle="modal" style="cursor: pointer;"
                                                                                data-bs-target="#edit-slider-modal"
                                                                                class="text-primary" id="edit_button"><i
                                                                                    class=" fa fa-edit mx-1"></i>{{ __('admin_local.Edit') }}</a>
                                                                        @endif
                                                                        @if (hasPermission(['homepage-slider-delete']))
                                                                            <a class="text-danger" id="delete_button"
                                                                                style="cursor: pointer;"><i
                                                                                    class="fa fa-trash mx-1"></i>
                                                                                {{ __('admin_local.Delete') }}</a>
                                                                        @endif
                                                                    </div>
                                                                </div>
                                                            @else
                                                                <span
                                                                    class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                            @endif
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                </div>
                             </div>

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
    <script>
        $('[data-toggle="switchery"]').each(function(idx, obj) {
            new Switchery($(this)[0], $(this).data());
        });
        $('.js-example-basic-single').select2({
            dropdownParent: $('#add-slider-modal')
        });
        $('.js-example-basic-single1').select2({
            dropdownParent: $('#edit-slider-modal')
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

        var form_url = "{{ route('admin.settings.homepage.main_slider_store') }}";
        var submit_btn_after = `{{ __('admin_local.Submitting') }}`;
        var submit_btn_before = `{{ __('admin_local.Submit') }}`;
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;
        var base_url = '{{ URL::to("/") }}';
        var asset_url = '{{ URL::to("/")."/".env("ASSET_DIRECTORY")."/" }}';


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this size data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
        var no_file = `{{ __('admin_local.No file') }}`;
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'admin/custom/settings/slider.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY','public').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush
