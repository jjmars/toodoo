// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Turbolinks NÃO recarrega a página. 
// Leia mais: http://guides.rubyonrails.org/working_with_javascript_in_rails.html#page-change-events
// Trocar $(document).ready(function() {...}) por $(document).on('page:change', function() {...})
$(document).on('page:change', function() {
  $('#new_task').hide();
  $('.task_description').hide();
  
  $('#show_new_task').click(function(e) {
    e.preventDefault();
    
    let newTaskIsVisible = $('#new_task').is(':visible')
    if (newTaskIsVisible) {
      // Se o form está visível, FECHA o form e coloca texto do botão para ABRIR
      $(this).text('New Task');
      $('#new_task').hide();
    } else {
      // Se o form NÃO está visível, ABRE o form e coloca texto do botão para FECHAR
      $(this).text('Close');
      $('#new_task').show();
      $('#task_title').focus();
    }
  });

  $('form')
    .on('submit', function() {
      $('.field_with_errors').remove();
    })
    .on('ajax:success', function(e, data, status, xhr) {
      $('#task_title').val('');
      $('#task_description').val('');
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
