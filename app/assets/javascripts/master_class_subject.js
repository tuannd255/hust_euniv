$(document).on('turbolinks:load', function() {
  if ($('#master_class_subjects').length > 0) {
    master_course_code = $('#master_class_subjects').data('course-code');
    $('#master_class_subjects #master_class_subject_code').val(master_course_code + '-');

    $('#master_class_subjects').on('click', '.update-master-class-subject', function(){
      parent = $(this).closest('.master-class-subject');
      id = parent.data('id');
      name = $('.master_class_subject_name', parent).val();
      master_subject_id = $('#master_subject_id', parent).val();
      master_class_id = $('#master_class_id', parent).val();
      master_course_id = $('#master_course_id', parent).val();
      url = '/admin/master_class_subjects/' + id;
      $.ajax({
        url: url,
        type: "PUT",
        dataType: "json",
        data: {master_class_subject: {name: name, master_subject_id: master_subject_id,
          master_class_id: master_class_id, master_course_id: master_course_id}},
        success: function(data) {
          $('#master_class_subjects .master-class-subject.master-class-subject-' +
            data.master_class_subject.id).html('\
            <td>' + data.master_class_subject.code + '</td>\
            <td>' + data.master_class_subject.name + '</td>\
            <td>' + data.master_class_subject.master_subject_name + '</td>\
            <td>' + data.master_class_subject.master_class_name + '</td>\
            <td class="text-center">' +
              '<a class="fa fa-pencil-square-o edit-master-class-subject index-button" title="' +
                I18n.t('buttons.edit') + '" data-remote="true" href="/admin/master_class_subjects/'+
                data.master_class_subject.id +'/edit"></a>\
              <a class="fa fa-times index-button" title="' + I18n.t('buttons.delete') +
                '"data-method="delete" data-confirm="' + I18n.t('confirm') +
                '" href="/admin/master_class_subjects/' +
                data.master_class_subject.id + '"></a>\
            </td>');
        }
      });
    });
  }
})

