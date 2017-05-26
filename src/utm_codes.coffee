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

      if paramName
        utmFieldId = paramName + '_' + utmParam
        utmFieldName = paramName + '[' + utmParam + ']'
      else
        utmFieldId = utmParam
        utmFieldName = utmParam

      if utmParamValue
        $('<input>').attr(
          type: 'hidden'
          id: utmFieldId
          name: utmFieldName
          value: utmParamValue
        ).appendTo $form

