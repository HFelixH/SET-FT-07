

/**
 * store: basically represent current state of the application
 * actions: 
 *  INCREASE_COUNT, DECREASE_COUNT
 *  {
 *    type: 'INCREASE_COUNT' //action_type, required
 *    payload:  boolean|number|... //data, optional
 *  }
 * reducer: Is a pure that takes an action and returns a new state
*/

const state = {
  user: {},
  cart: {},
  items: {}
};


function userReducer(params) {
  
}

function cartReducer(params) {
  
}

function itemsReducer(params) {
  
}

const action = { type: 'INCREASE_COUNT' };

function counterReducer(state, action) {
  const {type, payload} = action;
  const newState = {...state};

  switch(type) {
    case 'INCREASE_COUNT':
      newState.count++;
      break
    case 'DECREASE_COUNT':
      newState.count--;
      break
    default:
      return state;
  }

  return newState;
}

counterReducer(state, action)
