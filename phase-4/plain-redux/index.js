function handleIncrease() {
  console.log('increase')
  store.dispatch(increaseCountBy(2));
}

function handleDecrease() {
  console.log('decrease')
  store.dispatch(decreaseCountBy(1))
}

store.subscribe(() => {
  document.getElementById("value").innerHTML = store.getState().counter
})

store.subscribe((listener) => {
  
  console.log('subscriber 2')
})
store.subscribe(() => {
  console.log('subscriber 3')
})
store.subscribe(() => {
  console.log('subscriber 4')
})
store.subscribe(() => {
  console.log('greetings@!')
})