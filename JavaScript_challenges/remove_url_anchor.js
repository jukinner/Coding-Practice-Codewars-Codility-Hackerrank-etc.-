// Complete the function/method so that it returns the url with anything after the anchor (#) removed.

// Examples:

// // returns 'www.codewars.com'
// removeUrlAnchor('www.codewars.com#about')

// // returns 'www.codewars.com?page=1' 
// removeUrlAnchor('www.codewars.com?page=1')


// first pass
function removeUrlAnchor(url){
  if (url.includes('#')) {
    let place = url.indexOf('#');
    return url.slice(0, place);
   } else {
    return url 
  }
}

// second pass
function removeUrlAnchor(url){
  let place = url.indexOf('#');
  url.includes('#') ? url.slice(0, place) : url 
}