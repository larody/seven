jQuery ->
  $('.progressbar').each ->
   $(this).progressbar({
     value: parseInt( $(this).attr("data-dones") ) / parseInt($(this).attr("data-quota")) * 100
   })

  $('.status').each ->
    value = (parseInt($(this).attr("data-dones")) / parseInt($(this).attr("data-quota")) * 100).toFixed(1)
    value = if value >= 100 then 100 else value
    $(this).animate({
     width: value + "%"
    }, 1200)
