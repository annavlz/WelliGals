var React = require("react")

var MeetupForm = require('./meetupForm')
var MeetupCreate = React.createClass({
  handleMeetupSubmit: function(meetup) {
    console.log(meetup);
    $.ajax({
      url: "/meetups",
      dataType: 'json',
      type: 'POST',
      data: meetup,
      success: function(meetup) {
        console.log('Meetup created');
      }.bind(this),
      error: function(xhr, status, err) {
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },
  render: function() {
    return (
      <div className="createMeetup">
        <h1>Create a meetup</h1>
        <MeetupForm onMeetupSubmit={this.handleMeetupSubmit} />
      </div>
    );
  }

});

module.exports = MeetupCreate
