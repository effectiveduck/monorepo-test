export function roundTo(number: number, places: number = 2) {
  const thing = Math.pow(10, places)
  return Math.round((number + Number.EPSILON) * thing) / thing
}