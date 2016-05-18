{div, span} = React.DOM

@Pages = React.createClass

  displayName: 'Page'

  animateBalls: ->
    $balls = $('.ball')
    $balls.each (index, el) ->
      $ball = $(el)
      movement = Math.random() * 50
      timing = Math.random() + 1
      scale = Math.random() * 0.5 + 1
      console.log movement
      tween = TweenMax.to($ball, timing, {y:movement, scale:scale, repeat:-1, yoyo:true, repeatDelay:0});

  componentDidMount: ->
    @animateBalls()


  render: ->
    div className: 'page',
      div className: 'ball pink',
        span className:"text", "Richard"
        span className:"text", "& Steph"

      div className:'ball blue',
        span className:"text", "are getting married!"

      div className:"ball light-blue",
        span className:"text", "venue"

      div className:"ball dark-yellow",
        span className:"text", "gift list"

      div className:"ball yellow",
        span className:"text", "information"

      div className:"ball grey",
        span className:"text", "R.S.V.P."

      div className:"ball mauve",
        span className:"text", "22.10.2016"
