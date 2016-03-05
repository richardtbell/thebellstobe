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
          path d:"M1055 2415 c-261 -58 -414 -164 -626 -436 -88 -114 -95 -124 -183 -281 -142 -254 -218 -463 -237 -654 -6 -65 -9 -141 -6 -169 13 -125 127 -384 202 -457 37 -37 58 -49 111 -62 35 -9 106 -34 157 -57 319 -139 679 -252 892 -279 127 -16 332 -14 400 5 119 32 391 159 665 311 25 14 117 61 206 104 183 90 254 140 276 197 27 67 39 211 40 498 2 250 0 290 -19 375 -26 122 -70 225 -108 256 -16 14 -230 169 -475 344 l-445 319 -395 0 c-291 0 -411 -4 -455 -14z"
        text className:"text", x:"35%", y:"40%", "Richard"
        text className:"text", x:"35%", y:"60%", "& Steph"

      svg className:'pane blue', version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"660pt", height:"450pt", viewBox:"0 0 660 450", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,450) scale(0.1,-0.1)", stroke:"none",
          path d:"M5847 4451 c-83 -9 -111 -28 -149 -102 -35 -66 -85 -298 -122 -569 -68 -481 -129 -692 -316 -1075 -72 -147 -178 -403 -300 -725 -206 -543 -296 -720 -398 -783 -59 -37 -265 -103 -407 -131 -486 -96 -768 -132 -1300 -166 -282 -18 -422 -20 -1542 -20 -760 0 -1233 -4 -1233 -9 0 -6 -12 -112 -26 -237 -14 -125 -23 -237 -20 -249 12 -48 53 -71 213 -123 210 -68 372 -105 642 -147 l224 -35 466 0 c256 0 583 5 726 11 143 5 519 14 835 19 617 9 650 11 965 71 222 42 302 81 570 279 321 237 520 439 875 888 80 101 158 202 175 225 16 23 84 116 151 207 66 91 136 188 154 215 19 28 61 82 93 120 65 78 148 233 194 365 17 47 49 164 72 260 23 96 50 207 61 245 11 39 31 135 46 215 24 131 26 160 21 310 -5 136 -11 188 -36 293 -74 311 -138 482 -212 562 -69 75 -104 88 -239 91 -63 1 -146 -1 -183 -5z"
        text className:"text", x:"35%", y:"90%", "are getting"
        text className:"text", x:"500", y:"350", transform:"rotate(-60 500, 350)", "married"

      svg className:"pane light-blue", version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"363pt", height:"116pt", viewBox:"0 0 363 116", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,116) scale(0.1,-0.1)", stroke:"none",
          path d:"M158 1143 c-40 -47 -102 -151 -109 -182 -4 -20 -17 -72 -29 -116 -33 -120 -25 -192 31 -291 26 -45 65 -95 94 -120 l50 -44 85 0 c47 0 143 7 215 15 222 24 425 37 484 30 31 -3 94 -17 141 -30 47 -13 117 -31 155 -40 39 -8 129 -33 200 -54 263 -79 300 -84 690 -92 401 -7 338 4 738 -131 l267 -90 123 4 c107 3 129 7 180 31 81 37 133 81 147 123 14 40 6 163 -15 259 -13 56 -19 65 -85 125 -40 36 -132 120 -205 187 -174 160 -257 203 -519 272 -194 52 -301 76 -381 86 -27 4 -93 15 -145 26 -252 49 -244 49 -1198 49 -844 0 -900 -1 -914 -17z"
        text className:"text", x:"35%", y:"40%", "venue"

      svg className:"pane dark-yellow", version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"170pt", height:"225pt", viewBox:"0 0 170 225", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,225) scale(0.1,-0.1)", stroke:"none",
          path d:"m 0,0 z m 1519,2133 c 58,-42 112,-83 119,-91 21,-27 16,-273 -8,-357 -11,-38 -20,-94 -20,-123 0,-29 -12,-108 -26,-175 -15,-71 -29,-181 -34,-262 C 1537,908 1471,682 1381,546 1321,455 1268,355 1240,278 1211,200 1193,180 1102,127 980,56 942,47 798,52 678,57 672,58 553,107 430,157 382,187 282,275 234,316 212,348 143,480 97,565 55,651 48,670 c -17,53 -4,563 17,655 41,176 117,346 214,480 63,87 194,223 263,273 77,56 147,85 273,112 74,15 135,19 344,19 l 253,1 z"
        text className:"text", x:"60", y:"150", transform:"rotate(-55 60, 150)", "gift list"


      svg className:"pane yellow", version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"355pt", height:"284pt", viewBox:"0 0 355 284", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,284) scale(0.1,-0.1)", stroke:"none",
          path d:"M2819 2826 c-2 -2 -56 -11 -119 -20 -169 -25 -233 -42 -340 -90 -52 -23 -147 -60 -210 -80 -63 -21 -170 -63 -238 -92 -68 -30 -169 -73 -225 -95 -197 -78 -320 -169 -493 -364 -236 -267 -582 -753 -635 -894 -11 -31 -30 -92 -41 -136 -82 -331 -103 -383 -180 -431 -93 -59 -162 -84 -247 -91 -77 -6 -82 -7 -77 -27 2 -12 17 -99 32 -195 l27 -175 46 -48 c41 -43 49 -48 91 -48 25 -1 63 -7 85 -15 56 -21 275 -20 341 0 27 9 65 21 84 27 44 14 100 51 215 143 50 39 117 90 150 112 70 48 152 123 187 173 29 41 81 174 139 355 54 171 160 377 272 530 48 66 119 164 158 218 39 53 103 125 141 160 39 34 103 92 142 128 166 154 261 230 323 261 57 28 79 33 157 36 50 2 127 -1 171 -6 73 -10 83 -14 108 -44 48 -56 60 -89 65 -174 5 -97 -3 -127 -96 -334 -77 -170 -81 -203 -36 -271 16 -24 51 -57 78 -74 43 -26 61 -30 135 -34 47 -2 108 2 137 8 45 10 61 22 121 84 119 124 202 279 245 457 22 95 1 434 -35 537 -31 89 -210 293 -377 428 -95 77 -116 85 -213 85 -46 0 -86 -2 -88 -4z"
        text className:"text", x:"100", y:"190", transform:"rotate(-50 100, 190)", "information"


      svg className:"pane grey", version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"289pt", height:"240pt", viewBox:"0 0 289 240", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,240) scale(0.1,-0.1)", stroke:"none",
          path d:"M2203 2380 c-57 -10 -129 -26 -160 -35 -32 -10 -148 -37 -258 -61, -110 -24 -274 -64 -365 -89 -91 -25 -199 -50 -240 -56 -41 -6 -118 -24 -170, -41 -98 -31 -361 -157 -440 -211 -67 -46 -204 -191 -266 -282 -30 -44 -86, -123 -124 -175 -138 -191 -170 -267 -170 -404 0 -112 14 -145 100 -245 34 -39, 87 -120 119 -179 31 -59 63 -118 71 -131 25 -39 180 -159 265 -203 115 -60, 200 -115 279 -180 78 -66 124 -82 212 -75 79 6 156 47 247 130 67 61 69 64 88, 142 24 101 26 358 4 450 -10 41 -14 118 -15 245 l0 185 40 71 c28 50 54 83 87, 107 66 48 254 140 334 164 79 24 164 80 256 168 37 36 93 82 123 102 30 20 64, 44 75 53 55 48 272 119 365 120 49 1 139 40 161 70 22 30 68 286 61 343 l-4, 37 -287 -1 c-229 -1 -306 -5 -388 -19z"
        text className:"text", x:"60", y:"150", transform:"rotate(-40 60, 150)", "R.S.V.P."


      svg className:"pane mauve", version:"1.0", xmlns:"http://www.w3.org/2000/svg", width:"230pt", height:"130pt", viewBox:"0 0 230 130", preserveAspectRatio:"xMidYMid meet",
        g transform:"translate(0,130) scale(0.1,-0.1)", stroke:"none",
          path d:"m 0,0 z m 1515,1187 c 44,-18 96,-44 116,-57 118,-80 186,-135 284,-229 61,-58 143,-137 183,-174 61,-59 72,-74 72,-102 0,-19 20,-91 45,-161 25,-69 45,-132 45,-138 0,-19 -59,-104 -99,-143 -38,-37 -86,-61 -196,-98 -130,-43 -175,-47 -471,-43 -271,5 -282,6 -369,33 -152,47 -162,48 -455,56 -320,8 -401,17 -434,48 -76.57431,74.72655 -22.4152,23.92021 -71,74 -22,23 -55,70 -72,104 -31,57 -33,67 -33,159 0,55 3,109 6,121 6,21 52,54 194,138 69,41 164,113 270,207 36,32 86,76 113,99 131.1317,106.825 38.47809,45.7154 125,101 46,28 118,34 432,36 l 236,2 z"
        text className:"text", x:"20%", y:"70%", "22.10.2016"
