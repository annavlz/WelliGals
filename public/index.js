var React = require('react')
var MeetupCreate = require('./source/components/meetupCreate')
var domready = require('domready')

domready(function () {
 React.render(
  <MeetupCreate />,
  document.getElementById('meetup-form')
  )
})

