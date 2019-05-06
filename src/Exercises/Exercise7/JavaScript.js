// x: number | null, y: number | null
exports.addXY_ = function(x, y) {
  return handleNull(x, y, plus)
}

function handleNull(x, y, callback) {
  if (x === null || y === null) {
    return null
  }
  return callback(x, y)
}

function plus(x, y) {
  return x + y
}
