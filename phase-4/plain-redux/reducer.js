function reducer(state, action) {
  const {type, payload} = action;
  const newState = {...state};

  switch(type) {
    case increaseCount:
      newState.counter+= payload;
      break
    case decreaseCount:
      newState.counter-= payload;
      break
    default:
      return state;
  }

  return newState;
}