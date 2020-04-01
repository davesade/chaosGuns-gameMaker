var currentDirection = argument0
var pointOfInterestX = argument1
var pointOfInterestY = argument2

var newDirection = point_direction(x, y, pointOfInterestX, pointOfInterestY)
var dd = angle_difference(newDirection, currentDirection); //determine the angle difference between the new and current directions
currentDirection += min(abs(dd), rotationSpeed) * sign(dd); //turn the object slowly towards the target direction; replace 10 with how quickly you want the object to turn
return currentDirection