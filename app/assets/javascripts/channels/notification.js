if (email = getCookie()) {
  App.notification = App.cable.subscriptions.create({
    channel: "NotificationChannel",
    email: email
  }, {
    received: function(data) {
      if (data.unread_notification !== undefined) {
        $('.nht-notification-count').text(data.unread_notification)
      }
    },

    speak: function(data) {
      this.perform('speak', data);
    }
  });
}

function getCookie() {
  var email = "";
  var value = decodeURIComponent(document.cookie);
  if (value.startsWith("current_user_email=")) {
    email = value.substr(19)
  }
  return email
}
