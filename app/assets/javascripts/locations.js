$(document).ready(function() {
  var $region = $('#region-selection');

  $region.on('click', '.image-button', function (e) {
    $region.find('.image-button').each(function () {
      $(this)[e.currentTarget === this ? 'addClass' : 'removeClass']('selected');
    });

    $region.find('input').val(this.getAttribute('data-region'));
  });

  $( "#from" ).datepicker({
      defaultDate: "+1w",
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      defaultDate: "+1m 1w",
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });

});
