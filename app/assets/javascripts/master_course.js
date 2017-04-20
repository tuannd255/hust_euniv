$(document).on('turbolinks:load', function() {
  if ($('#master_courses').length > 0) {
    $('#master_courses').on('click', '.update-master-course', function(){
      parent = $(this).closest('.master-course');
      id = parent.data('id');
      code = parent.find('.master_course_code').val();
      name = parent.find('.master_course_name').val();
      start_date = parent.find('.master_course_start_date').val();
      end_date = parent.find('.master_course_end_date').val();
      url = '/admin/master_courses/' + id;
      $.ajax({
        url: url,
        type: "PUT",
        dataType: "json",
        data: {master_course: {code: code, name: name, start_date: start_date,
          end_date: end_date}},
        success: function(data) {
          $('#master_courses .master-course.master-course-' + data.master_course.id).html('\
            <td>' + data.master_course.code + '</td><td><a href="/admin/master_courses/' +
            data.master_course.id + '">' + data.master_course.name + '</a></td><td>' +
            data.master_course.start_date + '</td><td>' + data.master_course.end_date +
            '</td><td class="text-center">' +
            '<a class="fa fa-pencil-square-o edit-master-course index-button" title="' +
            I18n.t('buttons.edit') + '" data-remote="true" href="/admin/master_courses/'+
            data.master_course.id +'/edit"></a>\
            <a class="fa fa-times index-button" title="' + I18n.t('buttons.delete') +
            '"data-method="delete" data-confirm="' + I18n.t('confirm') +
            '" href="/admin/master_courses/' +
            data.master_course.id + '"></a>\
          </td>');
        }
      });
    });
  }
})

