d1 = [[0, 3], [4, 8], [8, 5], [9, 13]] #First data series

d2 = [[i, Math.sin(i)] for i in [0..14] by 0.5]

module.exports = {
  start: ->
    # Draw Graph
    graph = Flotr.draw document.getElementById('graph'), [d1, d2],
      lines:
        steps: true
        show: true
      xaxis:
        minorTickFreq: 4
      yaxis:
        autoscale: true
      grid:
        minorVerticalLines: true
      mouse:
        track: true
        relative: true
}
