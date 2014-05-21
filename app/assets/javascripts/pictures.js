$(function(){
  $('body').on('click', '.delete-picture', function(){
    console.log('click');
    $(this).parents('fieldset').fadeOut(500);
  })
})