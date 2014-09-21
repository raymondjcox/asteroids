`import FpsCounter from 'asteroids/fps-counter'`

class State
  transition: null

  constructor: (canvas, images) ->
    @canvas = canvas
    @images = images
    @ctx    = @canvas[0].getContext('2d')
    @cw     = parseInt(@canvas.attr('width'))
    @ch     = parseInt(@canvas.attr('height'))
    @fpsCounter = new FpsCounter()
    @setup()

  setup: ->

  render: ->
    @fpsCounter.tick()
    @ctx.fillStyle = '#000000'
    @ctx.clearRect(0, 0, @cw, @ch)

  cleanup: ->
    @canvas = null
    @ctx    = null
    @cw     = null
    @ch     = null

`export default State`
