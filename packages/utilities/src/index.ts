export function roundTo(number: number, places = 2): number {
  const rounder = Math.pow(10, places)
  return Math.round((number + Number.EPSILON) * rounder) / rounder
}
