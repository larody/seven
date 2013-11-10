jQuery ->
  $('.progressbar').each ->
    element = this
    $(element).progressbar({
      value: parseInt( $(element).attr("data-dones") ) / parseInt($(element).attr("data-quota")) * 100
    })
