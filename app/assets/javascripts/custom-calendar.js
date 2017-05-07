$(document).on('turbolinks:load ajaxCompleted', function() {
  $('.body-user').on('click', '.day:not(.header) a', function() {
    if (!$(this).data('disabled')) {
      id = $('.modal').data('id');
      day = $(this).data('day');
      month = $(this).data('month');
      year = $(this).data('year');
      date = year + '-' + month + '-' + day;
      slot = $(this).data('event');
      console.log(id, date, slot);
      $.ajax({
        url: '/master_course_schedules/',
        type: "POST",
        dataType: "json",
        data: {master_course_schedule: {master_class_subject_id: id, date: date,
          slot: slot}},
        success: function(data) {
          $('.day:not(.header) a.' + data.master_course_schedule.slot).each(function() {
            if ($(this).data('day') == data.master_course_schedule.date.substring(8,10) &&
              $(this).data('month') == data.master_course_schedule.date.substring(5,7) &&
              $(this).data('year') == data.master_course_schedule.date.substring(0,4)) {
              $(this).css('background-color', 'red');
            }
          });
        }
      });
    }
  });
})

var handleCalendar = function() {
  $('.day.mon a.afternoon, .day.tue a.afternoon, .day.wed a.afternoon,\
    .day.thu a.afternoon, .day.fri a.afternoon').data('disabled', true);
  $('.day.mon a.morning, .day.tue a.morning, .day.wed a.morning,\
    .day.thu a.morning, .day.fri a.morning').data('disabled', true);
}

var handleClickOption = function(data, parent) {
  parent = parent ? parent : $('.responsive-calendar')[0]
  if (parseInt($(parent).data('start-course').substring(5, 7)) >= data.currentMonth + 1) {
    $($('.pull-left', $(parent))[0]).hide();
  } else {
    $($('.pull-left', $(parent))[0]).show();
  }
  if (parseInt($(parent).data('end-course').substring(5, 7)) <= data.currentMonth + 1) {
    $($('.pull-right', $(parent))[0]).hide();
  } else {
    $($('.pull-right', $(parent))[0]).show();
  }
}
