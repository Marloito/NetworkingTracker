$(document).ready(() => {
  $('.register-button').click((e) => {
    e.preventDefault();
    const url = $(e.target).attr('href')

    $.ajax({
      url
    }).done((response) => {
      $('.register-form').html(response)
    })
  });
});
