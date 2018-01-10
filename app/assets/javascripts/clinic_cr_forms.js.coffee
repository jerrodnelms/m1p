# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  clinicdocs = $('#clinic_cr_form_clinic_doc_id').html()
  $('#clinic_cr_form_clinic_id').change ->
    clinic = $('#clinic_cr_form_clinic_id :selected').text()
    options = $(clinicdocs).filter("optgroup[label='#{clinic}']").html()
    if options
      $('#clinic_cr_form_clinic_doc_id').html(options)
    else
      $('#clinic_cr_form_clinic_doc_id').empty()

  $('form').on 'click', 'remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()
