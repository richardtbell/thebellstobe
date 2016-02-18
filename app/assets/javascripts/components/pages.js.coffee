{div, h1, a} = React.DOM

@Pages = React.createClass

  displayName: 'Page'

  componentDidMount: ->
    console.log 'mounted'
    vw = $(window).width()
    tl = new TimelineMax()
    tl.from('.enter-right--date', 1, {
      x: vw
      })
    tl.from('.grow.date', 2, {
      scale: 0,
      ease: Back.easeOut
      })
    tl.from('.grow.date', 0.5, {
      opacity: 0,
      ease: Power0.easeNone
      }, '-=2')
    tl.from('.enter-right--location', 1, {
      x: vw
      })
    tl.from('.grow.location', 2, {
      scale: 0,
      ease: Back.easeOut
      })
    tl.from('.grow.location', 0.5, {
      opacity: 0,
      ease: Power0.easeNone
      }, '-=2')

  render: ->
    div className: 'card',
      h1 className: 'title', 'Richard and Steph are getting married!'
      div className: 'enter-right enter-right--date', 'on'
      div className: 'date grow', '22nd October 2016'
      div className: 'enter-right enter-right--location', 'at'
      div className: 'location grow', 'Central Hall'
      a className: 'btn btn-primary', 'Directions'
      a className: 'btn btn-primary', 'Accomodation'
      a className: 'btn btn-primary', 'Gallery'
      a className: 'btn btn-primary', 'Our Story'
      a className: 'btn btn-primary', 'Gift List'
      a className: 'btn btn-primary', 'Agenda'
