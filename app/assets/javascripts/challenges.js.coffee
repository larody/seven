jQuery ->
  dones = parseInt( $('.dones').text() )

  $('.progressbar').each ->
    element = this
    $(element).progressbar({
      value: parseInt( $(element).attr("rel") ) / 7 * 100
    })
