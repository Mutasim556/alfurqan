
// $(document).ready(function(){
//     alert('assasas');
// })
$(document).on('submit','#add_jummah_form',function(e){
    e.prjummahDefault();
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
            $('button[type=submit]', '#add_jummah_form').html(submit_btn_before);
            $('button[type=submit]', '#add_jummah_form').removeClass('disabled');
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
            $('button[type=submit]', '#add_jummah_form').html(submit_btn_before);
            $('button[type=submit]', '#add_jummah_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#add_jummah_form').click();
                });

            }

            $('#add_jummah_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).prev('span').find('.select2-selection--single').attr('id','')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#add_course_form #'+idx);
                var exp = idx.replace('.','_');
                var exp2 = exp.replace('_0','');

                $('#add_jummah_form #'+exp).addClass('border-danger is-invalid')
                $('#add_jummah_form #'+exp2).addClass('border-danger is-invalid')
                $('#add_jummah_form #'+exp).next('span').find('.select2-selection--single').attr('id','invalid-selec2')
                $('#add_jummah_form #'+exp).next('.err-mgs').empty().append(val);

                $('#add_jummah_form #'+exp+"_err").empty().append(val);
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
        url: 'jummah/update/status/'+update_id+"/"+status,
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
    $('#edit_jummah_form').trigger('reset');
    $('#edit_jummah_form .err-mgs').each(function(id,val){
        $(this).prev('input').removeClass('border-danger is-invalid')
        $(this).prev('textarea').removeClass('border-danger is-invalid')
        $(this).empty();
    })
    let cat = $(this).closest('tr').data('id');
    $.ajax({
        type: "get",
        url: 'jummah/' + cat + "/edit",
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (data) {
            $('#edit_jummah_form #jummah_id').val(data.id);
            $('#edit_jummah_form #jummah_khutba_topic').val(data.jummah_khutba_topic);
            CKEDITOR.instances['jummah_khutba_details2'].setData(data.jummah_khutba_details);

            $.each(data.translations,function(key,val){
                if(val.locale=='en'){

                }else{
                    if(val.key=='jummah_khutba_topic'){
                        $('#edit_jummah_form #jummah_khutba_topic_'+val.locale).val(val.value);
                    }
                    if(val.key=='jummah_khutba_details'){
                        CKEDITOR.instances['jummah_khutba_details2_'+val.locale].setData(val.value);
                    }
                }
            })

            $('#edit_jummah_form #jummah_date').val(data.jummah_date);
            $('#edit_jummah_form #jummah_imam').val(data.jummah_imam);
            $('#edit_jummah_form #jummah_azan_time').val(data.jummah_azan_time);
            $('#edit_jummah_form #jummah_khutba_time').val(data.jummah_khutba_time);
            $('#edit_jummah_form #jummah_prayer_time').val(data.jummah_prayer_time);


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
                    $('button[type=button]', '#edit_jummah_form').click();
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


$('#edit_jummah_form').submit(function (e) {
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after+'....');
    $('button[type=submit]', this).addClass('disabled');
    var trid = '#trid-'+$('#jummah_id', this).val();
    var formData = new FormData(this);
    formData.append("_method","PUT");
    $.ajax({
        type: "post",
        url: 'jummah/' + $('#jummah_id','#edit_jummah_form').val(),
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
            $('button[type=submit]', '#edit_jummah_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_jummah_form').removeClass('disabled');
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
            $('button[type=submit]', '#edit_jummah_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_jummah_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#edit_jummah_form').click();
                });

            }

            $('#edit_jummah_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })

            $.each(err.responseJSON.errors,function(idx,val){

                $('#edit_jummah_form #'+idx).addClass('border-danger is-invalid')
                $('#edit_jummah_form #'+idx).next('.err-mgs').empty().append(val);
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
                url: 'jummah/'+delete_id,
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
