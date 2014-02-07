assert = chai.assert
expect = chai.expect

describe 'click', ->
  it 'plays a click', (d)->
    inc = Math.PI  / 3
    counter = 0
    d = 0

    o = osc('sine')
    base = 3000

    int = ()->
      counter += inc
      hz = base * Math.abs(Math.sin(counter))
      console.log hz
      o.frequency.value = parseInt(hz, 10)

    setInterval(int,  20)

    # setTimeout(d, 3500)

  it 'plays another click', (d)->
    inc = Math.PI  / 13
    counter = 0
    d = 0

    o = osc('sine')
    base = 300

    int = ()->
      counter += inc
      hz = base * Math.abs(Math.sin(counter))
      console.log hz
      o.frequency.value = parseInt(hz, 10)

    setInterval(int,  2)

    # setTimeout(d, 3500)

