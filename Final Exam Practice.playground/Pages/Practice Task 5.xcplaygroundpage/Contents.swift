//: # Exam Prep 5
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)


// Begin your solution here...

canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

canvas.fillColor = limeGreen

var switchToGreen = 80


// loops
for y in stride(from: 400, to: -40, by: -40) {
    for x in stride(from: 0, to: 440, by: 40) {
        

        canvas.drawEllipse(centreX: x, centreY: y, width: 35, height: 35)
        
    }
}

var whiteNegative = 0

for Y in stride(from: 40, to: 400, by: 40) {
    for X in stride(from: 40, to: 400, by: 40) {
    
    canvas.fillColor = offWhite
    
    canvas.drawEllipse(centreX: X, centreY: Y - whiteNegative, width: 35, height: 35)
    
    
    
    
    

    
}
    whiteNegative -= 40
}
/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
