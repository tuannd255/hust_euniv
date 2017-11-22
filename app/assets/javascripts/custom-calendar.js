$(document).on('turbolinks:load ajaxCompleted', function() {
  $('.body-user').on('click', '.day:not(.header) a', function() {
    if (!$(this).data('disabled')) {
      id = $('.modal').data('id');
      day = $(this).data('day');
      month = $(this).data('month');
      year = $(this).data('year');
      date = year + '-' + month + '-' + day;
      slot = $(this).data('event');
      $.ajax({
        url: '/master_course_schedules/',
        type: "POST",
        dataType: "json",
        data: {master_course_schedule: {master_class_subject_id: id, date: date,
          slot: slot}},
        success: function(data) {
          if (data.status !== 500) {
            date = data.master_course_schedule.date.substring(0, 10).split('-');
            $('.day:not(.header) a.' + data.master_course_schedule.slot).each(function() {
              if ($(this).data('day') == date[2] &&
                $(this).data('month') == date[1] &&
                $(this).data('year') == date[0]) {
                $(this).addClass('background-picked');
                $(this).data('disabled', true);
                $(this).data('id', data.master_course_schedule.id);
              }
            });
            $('.picked-schedules').html(data.picked_schedules);
          } else {
            if (data.schedule) {
              date = data.schedule.date.substring(0, 10).split('-');
              $('.day:not(.header) a.' + data.schedule.slot).each(function() {
                if ($(this).data('day') == date[2] &&
                  $(this).data('month') == date[1] &&
                  $(this).data('year') == date[0]) {
                  $(this).addClass('background-gray');
                  $(this).data('disabled', true);
                }
              });
            }
            alert(data.errors);
          }
        }
      });
    }

    if ($(this).data('disabled') && $(this).hasClass('background-picked')) {
      id = $(this).data('id');
      $.ajax({
        url: '/master_course_schedules/' + id,
        type: "DELETE",
        dataType: "json",
        success: function(data) {
          if (data.status !== 500) {
            date = data.master_course_schedule.date.substring(0, 10).split('-');
            $('.day:not(.header) a.' + data.master_course_schedule.slot).each(function() {
              if ($(this).data('day') == date[2] &&
                $(this).data('month') == date[1] &&
                $(this).data('year') == date[0]) {
                $(this).removeClass('background-picked');
                $(this).data('disabled', false);
              }
            });
            $('.picked-schedules').html(data.picked_schedules);
          } else {
            alert(data.errors);
          }
        }
      });
    }
  });

  $('.body-user').on('mouseover', '.day:not(.header)', function() {
    $('a', this).each(function() {
      $(this).html(I18n.t("days." + $(this).data('event')));
    });

    if ($(this).hasClass('mon') || $(this).hasClass('tue') ||
      $(this).hasClass('wed') ||$(this).hasClass('thu') ||
      $(this).hasClass('fri')) {
      $('.morning', this).addClass('background-gray');
      $('.afternoon', this).addClass('background-gray');
    }
  });

  $('.body-user').on('mouseout', '.day:not(.header)', function() {
    $('a', this).each(function() {
      $(this).html('&nbsp;');
    })
    $($('a', this)[1]).html($($('a', this)[1]).data('day'));

    if ($(this).hasClass('mon') || $(this).hasClass('tue') ||
      $(this).hasClass('wed') ||$(this).hasClass('thu') ||
      $(this).hasClass('fri')) {
      $('.morning', this).removeClass('background-gray');
      $('.afternoon', this).removeClass('background-gray');
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
  start_date = $(parent).data('start-course').split('/');
  end_date = $(parent).data('end-course').split('/');
  if ((start_date[1] >= data.currentMonth + 1) && start_date[0] >= data.currentYear) {
    $($('.pull-left', $(parent))[0]).hide();
  } else {
    $($('.pull-left', $(parent))[0]).show();
  }
  if ((end_date[1] <= data.currentMonth + 1) && end_date[0] <= data.currentYear) {
    $($('.pull-right', $(parent))[0]).hide();
  } else {
    $($('.pull-right', $(parent))[0]).show();
  }
}
