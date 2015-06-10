jQuery(function($){
    $("td.amount select").change(function(){
        var selected = $(this);
        var selected_select = selected.children("option:selected");
        var selected_value = selected_select.val();
        var selected_tr_parent = selected.parents('tr')[0];
        $.ajax({
            url: '/line_items/' + $(selected_tr_parent).attr('data-item-id'),
            type: 'POST',
            data: {_method: 'PUT', line_item: {count: parseInt(selected_value)} },
            success: function(){
                //
            }
        });
    });
});