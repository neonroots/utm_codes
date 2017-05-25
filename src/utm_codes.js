window.addEventListener('load', function() {
  var $forms;

  $forms = $('form.utm-tracker-required');

  $.each($forms, function(_formIndex, form) {
    var $form, url, urlParams, utmParams;

    $form = $(form);
    url = new URL(location);
    urlParams = url.searchParams;
    utmParams = ['utm_source', 'utm_medium', 'utm_content', 'utm_campaign'];

    $.each(utmParams, function(_paramsIndex, utmParam) {
      var utmParamValue;
      utmParamValue = urlParams.get(utmParam);

      if (utmParamValue) {
        $('<input>').attr({
          type: 'hidden',
          id: utmParam,
          name: utmParam,
          value: utmParamValue
        }).appendTo($form);
      }
    });
  });
});
