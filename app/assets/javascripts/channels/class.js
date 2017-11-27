var regex = /(\d+)/g;
var master_class_ids = $(".actioncable").attr('master-class-ids');
if (master_class_ids !== 'undefined') {
  master_class_ids.match(regex).forEach(function (element) {
    App.room = App.cable.subscriptions.create({
      channel: "ClassChannel",
      class_id: element
    }, {
      received: function(data) {
      var master_class_subject_id = $(".actioncable").attr('master-class-subject-id')
        if (data.reg_type == "add") {
          add_element(data, master_class_subject_id);
        } else {
          remove_element(data);
        }
      }
    });
    // body...
  })
}

function add_element(data, master_class_subject_id) {
  if (data.master_class_subject_id == master_class_subject_id) {
    date = data.date.substring(0, 10).split('-');
    $('.day:not(.header) a.' + data.slot).each(function() {
      if ($(this).data('day') == date[2] &&
        $(this).data('month') == date[1] &&
        $(this).data('year') == date[0]) {
        $(this).addClass('background-picked');
        $(this).data('disabled', true);
        $(this).data('id', data.id);
      }
    });
  } else {
    date = data.date.substring(0, 10).split('-');
    $('.day:not(.header) a.' + data.slot).each(function() {
      if ($(this).data('day') == date[2] &&
        $(this).data('month') == date[1] &&
        $(this).data('year') == date[0]) {
        $(this).addClass('background-gray');
        $(this).data('disabled', true);
      }
    });
  }
}

function remove_element(data) {
  date = data.date.substring(0, 10).split('-');
  $('.day:not(.header) a.' + data.slot).each(function() {
    if ($(this).data('day') == date[2] &&
      $(this).data('month') == date[1] &&
      $(this).data('year') == date[0]) {
      $(this).removeClass('background-gray');
      $(this).data('disabled', false);
    }
  });
}
