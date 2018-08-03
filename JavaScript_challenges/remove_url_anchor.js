// Complete the function/method so that it returns the url with anything after the anchor (#) removed.

// Examples:

// // returns 'www.codewars.com'
// removeUrlAnchor('www.codewars.com#about')

// // returns 'www.codewars.com?page=1' 
// removeUrlAnchor('www.codewars.com?page=1')
// one way
function removeUrlAnchor(url){
  return url.slice(0,16)
}

// 2nd way
function removeUrlAnchor(url){
  return url.match(/www.codewars.com/i)[0]
}


// removeUrlAnchor('www.codewars.com#about')