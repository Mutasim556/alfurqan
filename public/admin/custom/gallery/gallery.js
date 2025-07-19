$(document).on('submit','#add_video_form',function(e){
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
            $('button[type=submit]', '#add_video_form').html(submit_btn_before);
            $('button[type=submit]', '#add_video_form').removeClass('disabled');
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
            $('button[type=submit]', '#add_video_form').html(submit_btn_before);
            $('button[type=submit]', '#add_video_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#add_video_form').click();
                });

            }

            $('#add_video_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).prev('span').find('.select2-selection--single').attr('id','')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#add_course_form #'+idx);
                var exp = idx.replace('.','_');
                var exp2 = exp.replace('_0','');

                $('#add_video_form #'+exp).addClass('border-danger is-invalid')
                $('#add_video_form #'+exp2).addClass('border-danger is-invalid')
                $('#add_video_form #'+exp).next('span').find('.select2-selection--single').attr('id','invalid-selec2')
                $('#add_video_form #'+exp).next('.err-mgs').empty().append(val);

                $('#add_video_form #'+exp+"_err").empty().append(val);
            })
        },
    })
});
