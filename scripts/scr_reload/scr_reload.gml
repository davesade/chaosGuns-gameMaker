// Intended game mechanics - to reload, you have to wait in idle state - cannot reload when walking - subject of change?
if (weapon.maxClipCapacity > weapon.clipCapacity) {
	reloading += 1
	if (reloading >= weapon.reloadTime) {
		reloading = 0
		// Emptying magazine
		if (!weapon.singleAmmoClip) {
			var drops = weapon.maxClipCapacity - weapon.clipCapacity
		} else {
			var drops = 1
		}
		repeat(drops) {
			dropOffsetX = random_range(-8, 8)
			dropOffsetY = random_range(-8, 8)
			var drop = instance_create_layer(x + dropOffsetX, y + dropOffsetY, "Items", obj_parent_decoration);
			var dropSprite = weapon.clip_sprite
			with (drop){
				sprite_index = dropSprite
				image_angle = random_range(0,359)
			}
		}
		// Filling magazine
		weapon.clipCapacity = weapon.maxClipCapacity
	}
}
