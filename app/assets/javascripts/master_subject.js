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
            '<a class="edit-master-subject" data-remote="true" href="/admin/master_subjects/'+
            data.master_subject.id +'/edit">' + I18n.t('buttons.edit') + '</a></td><td>\
            <a data-method="delete" data-remote="true" data-confirm="' + I18n.t('confirm') +
            '" href="/admin/master_subjects/' +
            data.master_subject.id + '">' + I18n.t('buttons.delete') + '</a>\
          </td>');
        }
      });
    });
  }
})

