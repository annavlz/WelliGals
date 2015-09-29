var React = require("react")

var MeetupForm = React.createClass({
  handleSubmit: function(e) {
    e.preventDefault();
    var title = React.findDOMNode(this.refs.title).value.trim();
    var description = React.findDOMNode(this.refs.description).value.trim();
    var place = React.findDOMNode(this.refs.place).value.trim();
    var date = React.findDOMNode(this.refs.date).value.trim();
    var duration = React.findDOMNode(this.refs.duration).value.trim();
    var capacity = React.findDOMNode(this.refs.capacity).value.trim();

    this.props.onMeetupSubmit({title: title, description: description,
                               place: place, date: date, duration: duration,
                               capacity: capacity });

    React.findDOMNode(this.refs.title).value = '';
    React.findDOMNode(this.refs.description).value = '';
    React.findDOMNode(this.refs.place).value = '';
    React.findDOMNode(this.refs.date).value = '';
    React.findDOMNode(this.refs.duration).value = '';
    React.findDOMNode(this.refs.capacity).value = '';
    return;
  },
  render: function() {
    return (
      <form className="meetupForm" onSubmit={this.handleSubmit}>
        <input type="text" placeholder="Title" ref="title" />
        <textarea placeholder="Description" ref="description" />
        <input type="text" placeholder="Place" ref="place" />
        <input type="date" placeholder="Date" ref="date" />
        <input type="number" placeholder="Duration" ref="duration" />
        <input type="number" placeholder="Capacity" ref="capacity" />
        <input type="submit" value="Create" />
      </form>
    );
  }
});

module.exports = MeetupForm
