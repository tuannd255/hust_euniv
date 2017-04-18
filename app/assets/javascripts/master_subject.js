$(document).on('turbolinks:load', function() {
  if ($('#master_subjects').length > 0) {
    $('#master_subjects').on('click', '.update-master-subject', function(){
      parent = $(this).closest('.master-subject');
      id = parent.data('id');
      code = parent.find('.master_subject_code').val();
      name = parent.find('.master_subject_name').val();
      creadit = parent.find('.master_subject_creadit').val();
      url = '/admin/master_subjects/' + id;
      $.ajax({
        url: url,
        type: "PUT",
        dataType: "json",
        data: {master_subject: {code: code, name: name, creadit: creadit}},
        success: function(data) {
          $('#master_subjects .master-subject.master-subject-' + data.master_subject.id).html('\
            <td>' + data.master_subject.code + '</td><td>' + data.master_subject.name + '</td><td>' +
            data.master_subject.creadit + '</td><td>' +
            '<a class="fa fa-pencil-square-o edit-master-subject index-button" title="' +
            I18n.t('buttons.edit') + '" data-remote="true" href="/admin/master_subjects/'+
            data.master_subject.id +'/edit"></a>\
            <a class="fa fa-times index-button" title="' + I18n.t('buttons.delete') +
            '"data-method="delete" data-remote="true" data-confirm="' + I18n.t('confirm') +
            '" href="/admin/master_subjects/' +
            data.master_subject.id + '"></a>\
          </td>');
        }
      });
    });
  }
})

