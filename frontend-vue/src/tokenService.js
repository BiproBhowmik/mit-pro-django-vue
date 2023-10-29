// tokenService.js

import Cookies from 'js-cookie';

const TOKEN_KEY = 'your_token_key';

export const getToken = () => {
  return Cookies.get(TOKEN_KEY);
};

export const setToken = (token) => {
  return Cookies.set(TOKEN_KEY, token, { expires: 7 });
};

export const removeToken = (token) => {
//   return Cookies.remove(TOKEN_KEY);
  return Cookies.remove(token);
};
