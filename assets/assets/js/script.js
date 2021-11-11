// bootstrap Remote Modal
var BootstrapRemoteModal = function () {
    // private function 
    var remoteModalInit = function () {
        $('body').on('click', '[data-toggle="modal"]', function () {
            var attr = $(this).attr('href');
            if (typeof attr !== typeof undefined && attr !== false) {
                $($(this).data("target") + ' .modal-content').load($(this).attr('href'));
            }
        });
    };
    return {
        init: function () {
            remoteModalInit();
        }
    };
}();

jQuery(function () {
    // bootstrap 4 remote modal
    BootstrapRemoteModal.init();

    // datatable
    $('#data-table').DataTable({
        pageLength: 50,
        stateSave: true,
        pagingType: "full_numbers",
        columnDefs: [{
                "targets": 'no-sort',
                "orderable": false
            }]
    });
    // show loading
    $(".showLoading").click(function () {
        $('.fullPageLoading').show();
    });
});

jQuery('body .select2').select2({
    placeholder: "Select option"
});

$('.ajax_user_search').select2({
    minimumInputLength: 3,
    theme: 'bootstrap4',
    placeholder: $(this).attr('placeholder'),
    ajax: {
        url: baseurl + 'user/ajax_get_user_list',
        dataType: 'json',
        data: function (params)
        {
            var role = $(this).attr('data-role');

            var query = {
                search: params.term,
                role: role
            };
            return query;
        },
        processResults: function (data)
        {
            return {results: data};
        }
    }

});

//start search filter
var user_id=0;
// funnel search
$('.ajax_user_funnel_search').select2({
    
    minimumInputLength: 3,
    theme: 'bootstrap4',
    placeholder: $(this).attr('placeholder'),
    ajax: {
        url: baseurl + 'message/ajax_get_funnel_list',
        dataType: 'json',
        data: function (params)
        {
            var query = {
                search: params.term,
                user_id:user_id

            };
            return query;
        },
        processResults: function (data)
        {
            return {results: data};
        }
    }

});
//contact search
$('.ajax_user_funnel_contact_search').select2({
    minimumInputLength: 3,
    theme: 'bootstrap4',
    placeholder: $(this).attr('placeholder'),
    ajax: {
        url: baseurl + 'message/ajax_get_funnel_contact',
        dataType: 'json',
        data: function (params)
        {

            var query = {
                search: params.term,
                 user_id:user_id

            };
            return query;
        },
        processResults: function (data)
        {
            return {results: data};
        }
    }

});

//gym owner search

$('.ajax_gym_owner_user_search').select2({

    minimumInputLength: 3,
    theme: 'bootstrap4',
    placeholder: $(this).attr('placeholder'),
    ajax: {
        url: baseurl + 'message/ajax_gym_owner_search',
        dataType: 'json',
        data: function (params)
        {
            var role = $(this).attr('data-role');

            var query = {
                search: params.term,
                role: role
            };
            return query;
        },
        processResults: function (data)
        {
            return {results: data};
        }
    }

});

$('.ajax_gym_owner_user_search').change(function(){
    user_id=$(this).val();
  });

//gym owner search
$('.ajax_campaign_search').select2({
    minimumInputLength: 3,
    theme: 'bootstrap4',
    placeholder: $(this).attr('placeholder'),
    ajax: {
        url: baseurl + 'message/ajax_campaign_searchs',
        dataType: 'json',
        data: function (params)
        {
            var role = $(this).attr('data-role');

            var query = {
                search: params.term,
                role: role
            };
            return query;
        },
        processResults: function (data)
        {
            return {results: data};
        }
    }

});

//end search filter


function showFilemanagerPopUp(id) {
    jQuery.fancybox.open({
        src: baseurl + 'filemanager/dialog.php?field_id=' + id,
        'type': 'iframe',
        'width': 800,
        'height': 600,
        'autoScale': false,
        opts: {
            afterShow: function (instance, current) {
                console.info('show File manager!');
            }
        }
    });
}
function responsive_filemanager_callback(field_id) {
    console.info('responsive filemanager callback!');
    var url = jQuery('#' + field_id).val();
    jQuery('#' + field_id).val(url);
}

function close_window() {
    console.info('Close Window!');
    parent.jQuery.fancybox.getInstance().close();
}

//$('#filemanager_modal').on('show.bs.modal', function (event) {
//  var button = $(event.relatedTarget); // Button that triggered the modal
//  var field_id = button.data('field_id'); // Extract info from data-* attributes
//  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
//  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
//  var modal = $(this);
//  modal.find('.modal-body iframe').attr('src',field_id);
//});
