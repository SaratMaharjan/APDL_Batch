
// default Values
var link = function(height = 50, color = 'red', url = 'http://azat.co') {

  // ...

}

// template literals ( with backticks )
var name = `Your name is ${first} ${last}.`
var url = `http://localhost:3000/api/messages/${id}`


// multiline strings
var roadPoem = `Then took the other, as just as fair,
    And having perhaps the better claim
    Because it was grassy and wanted wear,
    Though as for that the passing there
    Had worn them really about the same,`

// destructuring
var { house, mouse} = $('body').data() // we'll get house and mouse variables from data
var [col1, col2]  = $('.column'),
[line1, line2, line3, , line5] = file.split('\n')