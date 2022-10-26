/* eslint-disable import/no-anonymous-default-export */

// Create our number formatter.
const formatterUS = (money: string): string => {
  return parseInt(money).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'); 
};

export default {
  formatterUS,
};
