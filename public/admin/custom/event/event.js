$(document).on('change','#add_event_form #has_start_date',function(){
    if($(this).is(':checked')){
        $('#add_event_form #event_start_date_div').show('slow');
        $('#add_event_form #has_end_date_div').show('slow');
    }else{
        $('#add_event_form #event_start_date_div').hide('slow');
        $('#add_event_form #has_end_date_div').hide('slow');
    }
})

$(document).on('change','#edit_event_form #has_start_date',function(){
    if($(this).is(':checked')){
        $('#edit_event_form #event_start_date_div').show('slow');
        $('#edit_event_form #has_end_date_div').show('slow');
    }else{
        $('#edit_event_form #event_start_date_div').hide('slow');
        $('#edit_event_form #has_end_date_div').hide('slow');
    }
})

$(document).on('change','#add_event_form #has_end_date',function(){
    if($(this).is(':checked')){
        $('#add_event_form #event_end_date_div').show('slow');
    }else{
        $('#add_event_form #event_end_date_div').hide('slow');
    }
})

$(document).on('change','#edit_event_form #has_end_date',function(){
    if($(this).is(':checked')){
        $('#edit_event_form #event_end_date_div').show('slow');
    }else{
        $('#edit_event_form #event_end_date_div').hide('slow');
    }
})

$(document).on('change','#add_event_form #has_time',function(){
    if($(this).is(':checked')){
        $('#add_event_form #has_time_div').show('slow');
    }else{
        $('#add_event_form #has_time_div').hide('slow');
    }
})

$(document).on('change','#edit_event_form #has_time',function(){
    if($(this).is(':checked')){
        $('#edit_event_form #has_time_div').show('slow');
    }else{
        $('#edit_event_form #has_time_div').hide('slow');
    }
})

$(document).on('change','#add_event_form #has_video',function(){
    if($(this).is(':checked')){
        $('#add_event_form #event_video_div').show('slow');
    }else{
        $('#add_event_form #event_video_div').hide('slow');
    }
})

$(document).on('change','#edit_event_form #has_video',function(){
    if($(this).is(':checked')){
        $('#edit_event_form #event_video_div').show('slow');
    }else{
        $('#edit_event_form #event_video_div').hide('slow');
    }
})


$(document).on('submit','#add_event_form',function(e){
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after+'....');
    $('button[type=submit]', this).addClass('disabled');
    var formData = new FormData(this);
    $.ajax({
        type: "POST",
        url: form_url,
        data: formData,
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (rdata) {
            $('button[type=submit]', '#add_event_form').html(submit_btn_before);
            $('button[type=submit]', '#add_event_form').removeClass('disabled');
            swal({
                icon: "success",
                title: rdata.title,
                text: rdata.text,
                confirmButtonText: rdata.confirmButtonText,
            }).then(function(){
                window.location.reload();
            })
        },
        error: function (err) {
            $('button[type=submit]', '#add_event_form').html(submit_btn_before);
            $('button[type=submit]', '#add_event_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#add_event_form').click();
                });

            }

            $('#add_event_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).prev('span').find('.select2-selection--single').attr('id','')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#add_course_form #'+idx);
                var exp = idx.replace('.','_');
                var exp2 = exp.replace('_0','');

                $('#add_event_form #'+exp).addClass('border-danger is-invalid')
                $('#add_event_form #'+exp2).addClass('border-danger is-invalid')
                $('#add_event_form #'+exp).next('span').find('.select2-selection--single').attr('id','invalid-selec2')
                $('#add_event_form #'+exp).next('.err-mgs').empty().append(val);

                $('#add_event_form #'+exp+"_err").empty().append(val);
            })
        },
    })
});


//update status
$(document).on('change','#status_change',function(){
    var status = $(this).data('status');
    var update_id = $(this).closest('tr').data('id');
    var cat_td = $(this).parent();
    cat_td.empty().append(`<i class="fa fa-refresh fa-spin"></i>`);
    $.ajax({
        type: "get",
        url: 'event/update/status/'+update_id+"/"+status,
        success: function (data) {
            cat_td.empty().append(`<span class="mx-2">${data.status==0?'Inactive':'Active'}</span><input data-status="${data.status==1?0:1}" id="status_change" type="checkbox" data-toggle="switchery" data-color="green"  data-secondary-color="red" data-size="small" ${data.status==1?'checked':''} />`);
            // parent_td.children('input').each(function (idx, obj) {
            //     new Switchery($(this)[0], $(this).data());
            // });
            new Switchery(cat_td.find('input')[0], cat_td.find('input').data());
        },
        error: function (err) {
            var err_message = err.responseJSON.message.split("(");
            swal({
                icon: "warning",
                title: "Warning !",
                text: err_message[0],
                confirmButtonText: "Ok",
            });
        }
    });
});

// Show data on edit modal
$(document).on('click', '#edit_button', function () {
    $('#edit_event_form').trigger('reset');
    $('#edit_event_form .err-mgs').each(function(id,val){
        $(this).prev('input').removeClass('border-danger is-invalid')
        $(this).prev('textarea').removeClass('border-danger is-invalid')
        $(this).empty();
    })
    let cat = $(this).closest('tr').data('id'); 
    $.ajax({
        type: "get",
        url: 'event/' + cat + "/edit",
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (data) {
            $('#edit_event_form #event_id').val(data.id);
            $('#edit_event_form #event_title').val(data.title);
            $('#edit_event_form #short_details').val(data.short_details);
            $('#edit_event_form #details2').val(data.details);
            CKEDITOR.instances['details2'].setData(data.details);

            $.each(data.translations,function(key,val){
                if(val.locale=='en'){
                    $('#edit_event_form #event_title').val(data.title);
                    $('#edit_event_form #short_details').val(data.short_details);
                    $('#edit_event_form #details2').val(data.details);
                }else{
                    if(val.key=='title'){
                        $('#edit_event_form #event_title_'+val.locale).val(val.value);
                    }
                    if(val.key=='short_details'){
                        $('#edit_event_form #short_details_'+val.locale).val(val.value);
                    }
                    if(val.key=='details'){
                        CKEDITOR.instances['details2_'+val.locale].setData(val.value);
                    }
                }
            })
            $('#edit_event_form #has_start_date').prop('checked',false);
            if(data.has_start_date==1){
                $('#edit_event_form #has_start_date').click();
                $('#edit_event_form #event_start_date').val(data.event_start_date);
            }else{
                $('#edit_event_form #event_start_date_div').hide();
                $('#edit_event_form #has_end_date_div').hide();
            }

            if(data.has_start_date==1 && data.has_end_date==1){
                $('#edit_event_form #has_end_date').prop('checked',true);
                $('#edit_event_form #event_end_date_div').show();
                $('#edit_event_form #event_end_date').val(data.event_end_date);
            }else{
                $('#edit_event_form #has_end_date').prop('checked',false);
                $('#edit_event_form #event_end_date_div').hide();
            }

            // $('#edit_event_form #parent_event').trigger('change');
            // if(data.event_image==''){
            //     $('#edit_event_form #image_preview').empty().append(no_file);
            // }else{
            //     $('#edit_event_form #image_preview').empty().append(`<img src="${base_url+'/'+data.event_image}">`);
            // }

            if(data.has_time==1){
                $('#edit_event_form #has_time').prop('checked',true);
                $('#edit_event_form #has_time_div').show();
                $('#edit_event_form #event_schedule').val(data.event_schedule);
                $('#edit_event_form #event_start_time').val(data.event_start_time);
                $('#edit_event_form #event_end_time').val(data.event_end_time);
            }else{
                $('#edit_event_form #has_time_div').hide();
                $('#edit_event_form #has_time').prop('checked',false);
                $('#edit_event_form #event_schedule').val('');
                $('#edit_event_form #event_start_time').val('');
                $('#edit_event_form #event_end_time').val('');
            }

            $('#edit_event_form #event_location').val(data.event_location);
            if(data.event_videos!=''){
                 $('#edit_event_form #has_video').prop('checked',true);
                 $('#edit_event_form #event_video_div').show();
            }else{
                $('#edit_event_form #has_video').prop('checked',false);
                $('#edit_event_form #event_video_div').hide();
            }

        },
        error: function (err) {
            if(err.status===403){
                let err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#edit_event_form').click();
                });

            }else{
                let err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                });
            }
        }
    });

});


$('#edit_event_form').submit(function (e) {
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after+'....');
    $('button[type=submit]', this).addClass('disabled');
    var trid = '#trid-'+$('#event_id', this).val();
    var formData = new FormData(this);
    formData.append("_method","PUT");
    $.ajax({
        type: "post",
        url: 'event/' + $('#event_id','#edit_event_form').val(),
        data: formData,
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            $('button[type=submit]', '#edit_event_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_event_form').removeClass('disabled');
            swal({
                icon: "success",
                title: data.title,
                text: data.text,
                confirmButtonText: data.confirmButtonText,
            }).then(function () {
                window.location.reload();
            });
        },
        error: function (err) {
            $('button[type=submit]', '#edit_event_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_event_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#edit_event_form').click();
                });

            }

            $('#edit_event_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })

            $.each(err.responseJSON.errors,function(idx,val){

                $('#edit_event_form #'+idx).addClass('border-danger is-invalid')
                $('#edit_event_form #'+idx).next('.err-mgs').empty().append(val);
            })
        }
    });
});


//delete data
$(document).on('click','#delete_button',function(){
    var delete_id = $(this).closest('tr').data('id');
    swal({
        title: delete_swal_title,
        text: delete_swal_text,
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: 'event/'+delete_id,
                data: {
                    _token : $("input[name=_token]").val(),
                },
                success: function (data) {
                    swal({
                        icon: "success",
                        title: data.title,
                        text: data.text,
                        confirmButtonText: data.confirmButtonText,
                    }).then(function () {
                        $('#trid-'+delete_id).hide();
                    });
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    });
                }
            });

        } else {
            swal(delete_swal_cancel_text);
        }
    })
});


$(document).on('click', '#view_button', function () {
    let cat = $(this).closest('tr').data('id');
    $.ajax({
        type: "get",
        url: 'event/' + cat + "/edit",
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (data) {
            var images =  data.event_images.split(",");
            var append_images = ``;
            $.each(images,function(key,val){
                append_images = append_images +`<img style="margin-right:10px;margin-bottom:10px;" src="${base_url+'/'+val}" alt="Slide ${key+1}" />`;
            })
            $('#view-event-modal #append_event_images').empty().append(append_images);

            const video = `
                <video width="400" controls>
                <source src="${base_url+'/'+data.event_videos}" type="video/mp4">
                Your browser does not support the video tag.
                </video>
            `;
            $('#append_event_video').empty().append(data.event_videos!=''?video:'');
        },
        error: function (err) {
            if(err.status===403){
                let err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#edit_event_form').click();
                });

            }else{
                let err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                });
            }
        }
    });

});

