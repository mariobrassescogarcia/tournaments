function deleteTournament (event){
  event.preventDefault();
  var tournamentId = $(".[data-hook~=tourney-delete]").currentTarget()
  debugger;
  var request = $.ajax({
    url: "api/tournaments",
    type: "DELETE",
    data: {id: tournamentId}
  });
  request.fail(showErrorDelete)
  request.done(respondDelete)

  function showErrorDelete (error) {
    console.error('Error deleting the tournament.', '\n' + error.responseText);
    var message = 'There was a problem deleting the tournament.';
    $formAlerts.prepend(buildErrorHtml(message));
  };

  function respondNewTourney (tourney) {
    var message

    if (!tourney.id) {
      message = 'Your API didn\'t return a tournament id!'
      $formAlerts.prepend(buildErrorHtml(message))
    }

    if (request.status !== 201) {
      message = 'Your API didn\'t send a 201 status code!'
      $formAlerts.prepend(buildErrorHtml(message))
    }

    if (message) {
      return
    }

    $formAlerts.empty()
    $form.trigger('reset')


    showTourney(tourney)
  }

}
