$(document).on('turbolinks:load', function() {
  if ($('#master_classes').length > 0) {
    $('#master_classes').on('click', '.update-master-class', function(){
      parent = $(this).closest('.master-class');
      id = parent.data('id');
      code = parent.find('.master_class_code').val();
      name = parent.find('.master_class_name').val();
      url = '/admin/master_classes/' + id;
      $.ajax({
        url: url,
        type: "PUT",
        dataType: "json",
        data: {master_class: {code: code, name: name}},
        success: function(data) {
          $('#master_classes .master-class.master-class-' + data.master_class.id).html('\
            <td>' + data.master_class.code + '</td><td>' + data.master_class.name + '</td><td class="icon-link text-center">' +
            '<a class="fa fa-pencil-square-o edit-master-subject index-button" title="' +
            I18n.t('buttons.edit') + '" data-remote="true" href="/admin/master_classes/'+
            data.master_class.id +'/edit"></a>\
            <a class="fa fa-times index-button" title="' + I18n.t('buttons.delete') +
            '"data-method="delete" data-confirm="' + I18n.t('confirm') +
            '" href="/admin/master_classes/' +
            data.master_class.id + '"></a>\
          </td>');
        }
      });
    });
  }
})

