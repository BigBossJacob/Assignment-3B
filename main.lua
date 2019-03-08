--Just some basic cosmetic stuff (background, title)
display.setDefault( "background", 7/255, 177/255, 239/255 )

local myText = display.newText( "Order a Pizza", 160, -20, native.systemFont, 30 )
myText:setFillColor( 255/255, 255/255, 255/255 )

--This is the button where you will place your order
local calculateButton1 = display.newImageRect( "Assets/order.png", 200, 100 )
calculateButton1.x = 160
calculateButton1.y = 50
calculateButton1.id = "calculate button"

--More cosmetics (picture of pizza0)
local image = display.newImageRect( "Assets/pizzaclipart.png", 100, 100 )
image.x = 160
image.y = 150

--The heading and options regarding the size of the pizza
local myText = display.newText( "Size of Pizza:", 160, 225, native.systemFont, 30 )
myText:setFillColor( 255/255, 255/255, 255/255 )

local calculateButton2 = display.newImageRect( "Assets/large.PNG", 100, 50 )
calculateButton2.x = 85
calculateButton2.y = 270
calculateButton2.id = "large button"

local calculateButton3 = display.newImageRect( "Assets/extralarge.PNG", 100, 50 )
calculateButton3.x = 235
calculateButton3.y = 270
calculateButton3.id = "extra large button"

--The heading and options regarding the number of toppings
local myText = display.newText( "Number of Toppings:", 160, 320, native.systemFont, 30 )
myText:setFillColor( 255/255, 255/255, 255/255 )

local calculateButton4 = display.newImageRect( "Assets/one.PNG", 40, 40 )
calculateButton4.x = 85
calculateButton4.y = 370
calculateButton4.id = "one button"

local calculateButton5 = display.newImageRect( "Assets/two.PNG", 40, 40 )
calculateButton5.x = 235
calculateButton5.y = 370
calculateButton5.id = "two button"

local calculateButton6 = display.newImageRect( "Assets/three.PNG", 40, 40 )
calculateButton6.x = 85
calculateButton6.y = 420
calculateButton6.id = "three button"

local calculateButton7 = display.newImageRect( "Assets/four.PNG", 40, 40 )
calculateButton7.x = 235
calculateButton7.y = 420
calculateButton7.id = "four button"

--The textfield where the cost will be displayed
local costOfPizzaTextField = display.newText( "Cost", display.contentCenterX, display.contentCenterY + 230, native.systemFont, 25 )
costOfPizzaTextField.id = "cost textField"
costOfPizzaTextField:setFillColor( 1, 1, 1 )

--Global Variables
sizeOfPizza = 0
costOfPizza = 0
numberOfToppings = 0
        
--The functions related to how the value of each variable will change when the specific button (option) is chosen         
function calculateButtonTouch2 ( event )
	sizeOfPizza = 6
	print "large pizza requested"
	return true
end

function calculateButtonTouch3 ( event )
	sizeOfPizza = 10
	print "extra large pizza requested"
end

function calculateButtonTouch4 ( event )
	numberOfToppings = 1
	print "1 topping requested"
end

function calculateButtonTouch5 ( event )
	numberOfToppings = 1.75
	print "2 toppings requested"
end

function calculateButtonTouch6 ( event )
	numberOfToppings = 2.50
	print "3 toppings requested"
end

function calculateButtonTouch7 ( event )
	numberOfToppings = 3.35
	print "4 toppings requested"
end

--The function related to calculating the price of the pizza when the order button is pressed
function calculateButtonTouch1( event )  
    costOfPizza = (sizeOfPizza + numberOfToppings)*1.13
costOfPizzaTextField.text = "The cost is $" .. costOfPizza
print "order inputed"
end

--The event listeners watching to see if any of the buttons are pressed   
calculateButton1:addEventListener( "touch", calculateButtonTouch1 )

calculateButton2:addEventListener( "touch", calculateButtonTouch2 )

calculateButton3:addEventListener( "touch", calculateButtonTouch3 )

calculateButton4:addEventListener( "touch", calculateButtonTouch4 )

calculateButton5:addEventListener( "touch", calculateButtonTouch5 )

calculateButton6:addEventListener( "touch", calculateButtonTouch6 )

calculateButton7:addEventListener( "touch", calculateButtonTouch7 )