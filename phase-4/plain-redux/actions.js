const increaseCount = 'INCREASE_COUNT';
const decreaseCount = 'DECREASE_COUNT'

const increaseCountBy = (number) => {
  return {
    type: increaseCount,
    payload: number || 0
  }
}

const decreaseCountBy = (number) => {
  return {
    type: decreaseCount,
    payload: number || 0
  }
}