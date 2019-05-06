// x: number | null, y: number | null
exports.addXY_ = function(x, y) {
  if (x === null || y === null) {
    return null
  }

  return x + y
}
