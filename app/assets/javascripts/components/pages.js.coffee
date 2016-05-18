{div, span} = React.DOM

@Pages = React.createClass

  displayName: 'Page'


  render: ->
    div className: 'page',
      div className: 'ball pink',
        span className:"text", "Richard"
        span className:"text", "& Steph"

      div className:'ball blue',
        span className:"text", "are getting"
        span className:"text", "married"

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
