// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require app.min.js
//= require i18n
//= require i18n/translations
//= require i18n.js
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.ja.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.en-GB.js
//= require master_subject
//= require select2.min.js
//= require_tree ../../../vendor/assets/javascripts/i18n
//= require master_class
//= require master_course

$(document).on('turbolinks:load ajaxComplete', function() {
  $('.alert').delay(1000).fadeOut();
  $('table tbody tr td p.validation-error').delay(3000).slideUp();
  $('.datepicker').datepicker({
    format: I18n.t("datepicker.time.default"),
    enableOnReadonly: true,
    orientation: "auto",
    forceParse: false,
    todayHighlight: true
  });
});
