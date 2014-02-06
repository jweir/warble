assert = chai.assert
expect = chai.expect

describe 'click', ->
  it 'plays a click', (d)->
    i = 0
    while i++ < 10
      window.click('sine', i * 0.1, (i * 0.1)+0.9);

    i = 0
    while i++ < 10
      v = i + 10
      window.click('triangle', v * 0.1, (v * 0.1)+0.9);

    setTimeout(d, 3500)

