// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Turbolinks NÃO recarrega a página. 
// Leia mais: http://guides.rubyonrails.org/working_with_javascript_in_rails.html#page-change-events
// Trocar $(document).ready(function() {...}) por $(document).on('page:change', function() {...})
$(document).on('page:change', function() {
  $('.task_description').hide();

  $('form')
    .on('submit', function() {
      $('.field_with_errors').remove();
    })
    .on('ajax:success', function(e, data, status, xhr) {
      $('#task_title').val('');
      $('#task_description').val('');
      $('#task_title').focus();
    })
    .on('ajax:error', function(e, xhr, status, error) {
      let errors = JSON.parse(xhr.responseText);
      Object.keys(errors).forEach(function(attr) {
        errors[attr].forEach(function(error) {
          $('#task_' + attr).after('<div class="field_with_errors"><small>' + error + '</small></div>');
        })
      });
    });
});
