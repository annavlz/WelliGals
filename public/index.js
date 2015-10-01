var React = require('react')
var MeetupCreate = require('./source/components/meetupCreate')
var domready = require('domready')

domready(function () {
  $('#new-meetup').click(function(e) {
    e.preventDefault()
    React.render(
      <MeetupCreate />,
      document.getElementById('meetup-form')
    )
  })
})

