$(function(){
  $('body').on('click', '.delete-picture', function(){
    $(this).parents('fieldset').fadeOut(500);
  });

  $('body').on('change', '.fileUpload', function(e){
    $(e.target).parent($('form')).submit();
  });
})