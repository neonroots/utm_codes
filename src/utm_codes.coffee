window.addEventListener 'load', ->
  $forms = $('form.utm-tracker-required')
  $.each $forms, (_formIndex, form) ->
    $form = $(form)
    url = new URL(location)
    urlParams = url.searchParams

    utmParams = [
      'utm_source'
      'utm_medium'
      'utm_content'
      'utm_campaign'
    ]

    $.each utmParams, (_paramsIndex, utmParam) ->
      utmParamValue = urlParams.get(utmParam)
      paramName = $form.data('utm-tracker-param-name')
      utmFieldID = if paramName then paramName + '[' + utmParam + ']' else utmParamValue

      if utmParamValue
        $('<input>').attr(
          type: 'hidden'
          id: utmFieldID
          name: utmFieldID
          value: utmParamValue
        ).appendTo $form

