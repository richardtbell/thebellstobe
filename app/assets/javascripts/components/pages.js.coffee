{div, a, span, svg, g, text, path} = React.DOM

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
    div className: 'page',
      svg className:'pane pink', version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"296pt", height:"243pt", viewBox:"0 0 296 243", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,243) scale(0.1,-0.1)", stroke:"none",
          path d:"M0, 1115 c17, 154 105, 389 235, 620 88, 157 95, 167 183, 281 212, 272 365, 378 626, 436 L1911, 2428  c100, -10 202 -147 444 -320 242 -173 452 -324 467 -336 54 -41 112 -211 127 -372 5 -52 9 125 10 475 L2950 973 c0 -153 -19 -302 -44 -350 -25 -49 -97 -98 -271 -183 -88 -44 -180 -90 -205 -104 -190 -105 -304 -163 -425 -216 -174 -77 -204 -88 -285 -105 L1226 10 c-157, 15 -389, 105 -620, 235 -157, 88 -167, 95 -281, 183 -272, 212 -378, 365 -325, 625"
        text className:"text", x:"35%", y:"40%", "Richard"
        text className:"text", x:"35%", y:"60%", "& Steph"

      svg className:'pane blue', version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"660pt", height:"450pt", viewBox:"0 0 660 450", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,450) scale(0.1,-0.1)", fill:"#000000", stroke:"none",
          path d:"M5847 4451 c-83 -9 -111 -28 -149 -102 -35 -66 -85 -298 -122 -569 -68 -481 -129 -692 -316 -1075 -72 -147 -178 -403 -300 -725 -206 -543 -296 -720 -398 -783 -59 -37 -265 -103 -407 -131 -486 -96 -768 -132 -1300 -166 -282 -18 -422 -20 -1542 -20 -760 0 -1233 -4 -1233 -9 0 -6 -12 -112 -26 -237 -14 -125 -23 -237 -20 -249 12 -48 53 -71 213 -123 210 -68 372 -105 642 -147 l224 -35 466 0 c256 0 583 5 726 11 143 5 519 14 835 19 617 9 650 11 965 71 222 42 302 81 570 279 321 237 520 439 875 888 80 101 158 202 175 225 16 23 84 116 151 207 66 91 136 188 154 215 19 28 61 82 93 120 65 78 148 233 194 365 17 47 49 164 72 260 23 96 50 207 61 245 11 39 31 135 46 215 24 131 26 160 21 310 -5 136 -11 188 -36 293 -74 311 -138 482 -212 562 -69 75 -104 88 -239 91 -63 1 -146 -1 -183 -5z"
        text className:"text", x:"35%", y:"90%", "are getting"
        text className:"text", x:"75%", y:"60%", transform:"rotate(-60 75, 60)", "married"
      a className: 'pane light-blue',
        span null, 'venue'
      a className: 'pane dark-yellow',
        span null, 'gift list'
      a className: 'pane yellow',
        span null, 'information'
      a className: 'pane grey',
        span null, 'R.S.V.P'
      a className: 'pane mauve',
        span null, '22.10.2016'