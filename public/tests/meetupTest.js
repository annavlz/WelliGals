var React = require('react')
var ReactTestUtils = React.addons.TestUtils
var MeetupCreate = require('../source/components/meetupCreate')
require('testdom')('<html><body></body></html>')
// console.log(document)

describe('CreateMeetup component', function() {
  before('render and locate element', function() {
    var renderedComponent = ReactTestUtils.renderIntoDocument(
      <MeetupCreate />
    )
  })

  var formComponent = ReactTestUtils.findRenderedDOMComponentWithTag(
    renderedComponent,
    'form'
  )

  this.formElement = formComponent.getDOMNode()
})

it()
