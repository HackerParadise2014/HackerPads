$(document).ready(function() {
  var $region = $('#region-selection');

  $region.on('click', '.image-button', function (e) {
    $region.find('.image-button').each(function () {
      $(this)[e.currentTarget === this ? 'addClass' : 'removeClass']('selected');
    });

    $region.find('input').val(this.getAttribute('data-region'));
  });
});
