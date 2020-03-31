
if (angle_difference(direction, checkAngle) == 0) {
 checkAngle = -checkAngle
 
}

var angleDifference = angle_difference(checkAngle, direction)

image_angle -= min(abs(angleDifference), 10) * sign(angleDifference)
