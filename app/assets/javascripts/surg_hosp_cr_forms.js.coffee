# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  shfhospitals = $('#surg_hosp_cr_form_surg_hosp_form_hospital_id').html()
  $('#surg_hosp_cr_form_surg_hosp_form_id').change ->
    surghospform = $('#surg_hosp_cr_form_surg_hosp_form_id :selected').text()
    options = $(shfhospitals).filter("optgroup[label='#{surghospform}']").html()
    if options
      $('#surg_hosp_cr_form_surg_hosp_form_hospital_id').html(options)
      $('#surg_hosp_cr_form_surg_hosp_form_hospital_id').parent().show()
    else
      $('#surg_hosp_cr_form_surg_hosp_form_hospital_id').empty()
      $('#surg_hosp_cr_form_surg_hosp_form_hospital_id').parent().hide()


  shfaccounts = $('#surg_hosp_cr_form_account_pat_type_id').html()
  $('#surg_hosp_cr_form_surg_hosp_form_id').change ->
    surghospform = $('#surg_hosp_cr_form_surg_hosp_form_id :selected').text()
    options = $(shfaccounts).filter("optgroup[label='#{surghospform}']").html()
    if options
      $('#surg_hosp_cr_form_account_pat_type_id').html(options)
    else
      $('#surg_hosp_cr_form_account_pat_type_id').empty()

  shfdocs = $('#surg_hosp_cr_form_surg_hosp_form_doc_id').html()
  $('#surg_hosp_cr_form_surg_hosp_form_id').change ->
    surghospform = $('#surg_hosp_cr_form_surg_hosp_form_id :selected').text()
    options = $(shfdocs).filter("optgroup[label='#{surghospform}']").html()
    if options
      $('#surg_hosp_cr_form_surg_hosp_form_doc_id').html(options)
    else
      $('#surg_hosp_cr_form_surg_hosp_form_doc_id').empty()

  shfomitted = $('#surg_hosp_cr_form_shf_omitted_condition_id').html()
  $('#surg_hosp_cr_form_surg_hosp_form_id').change ->
    surghospform = $('#surg_hosp_cr_form_surg_hosp_form_id :selected').text()
    options = $(shfomitted).filter("optgroup[label='#{surghospform}']").html()
    if options
      $('#surg_hosp_cr_form_shf_omitted_condition_id').html(options)
    else
      $('#surg_hosp_cr_form_shf_omitted_conditions_id').empty()

  shfdnmc = $('#surg_hosp_cr_form_shf_dnmc_condition_id').html()
  $('#surg_hosp_cr_form_surg_hosp_form_id').change ->
    surghospform = $('#surg_hosp_cr_form_surg_hosp_form_id :selected').text()
    options = $(shfdnmc).filter("optgroup[label='#{surghospform}']").html()
    if options
      $('#surg_hosp_cr_form_shf_dnmc_condition_id').html(options)
    else
      $('#surg_hosp_cr_form_shf_dnmc_conditions_id').empty()

  shfaccurate = $('#surg_hosp_cr_form_shf_actual_condition_id').html()
  $('#surg_hosp_cr_form_surg_hosp_form_id').change ->
    surghospform = $('#surg_hosp_cr_form_surg_hosp_form_id :selected').text()
    options = $(shfaccurate).filter("optgroup[label='#{surghospform}']").html()
    if options
      $('#surg_hosp_cr_form_shf_actual_condition_id').html(options)
    else
      $('#surg_hosp_cr_form_shf_actual_condition_id').empty()

