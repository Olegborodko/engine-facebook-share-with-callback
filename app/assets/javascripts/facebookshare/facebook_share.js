(function($){

  jQuery.fn.facebook_share = function(option){

    var setting={ };

    var make = function(){

      if (option){ $.extend(setting,option);}

      if (setting.app_id) {
        callFB(setting.app_id);
      }

      $(this).click(function () {
        if (setting.app_id) {
          facebook_dialog(setting.callback,
            setting.url, setting.title, setting.description, setting.image,
            setting.image_width, setting.image_height, setting.image_type);
        }
      });

    };

    return this.each(make);
  };

  function facebook_dialog(callback, url, title, description, image, image_width, image_height, image_type){
    parameters = {};
    parameters["object"] = {};
    if (url) { j["object"]["og:url"] = url; }
    if (title) { j["object"]["og:url"] = title; }
    if (description) { j["object"]["og:url"] = description; }
    if (image) { j["object"]["og:url"] = image; }
    if (image_width) { j["object"]["og:url"] = image_width; }
    if (image_height) { j["object"]["og:url"] = image_height; }
    if (image_type) { j["object"]["og:url"] = image_type; }

    FB.ui({
        method: 'share_open_graph',
        action_type: 'og.shares',
        action_properties: JSON.stringify(parameters)
      },
// callback
      function(response) {
        if (response && !response.error_message) {
// then get post content
          if (callback) {
            $.ajax({
              type: "POST",
              url: callback,
              success: function () {
                console.log('success')
              }
            });
          }
        } else {
          console.log('don\'t success')
        }
      });
  }
  // $("#"+id).attr("data-result","false");

  function callFB(app_id) {
    window.fbAsyncInit = function () {
      FB.init({
        appId: app_id,
        autoLogAppEvents: true,
        xfbml: true,
        version: 'v2.9'
      });
      FB.AppEvents.logPageView();
    };

    (function (d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {
        return;
      }
      js = d.createElement(s);
      js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  }

})(jQuery);