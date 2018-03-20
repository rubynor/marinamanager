$(document).ready(function() {
  var input = document.getElementById("calcInput");
  var feetInMeters = 3.2802399;

  $('#calcInput').on('keyup', function() {
    $('#calcSolution').val(($(this).val() / feetInMeters).toFixed(2));
  })
})
