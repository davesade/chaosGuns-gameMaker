// Staying too long in this state without attacking will result lost of interest in target
attentionTime += 1
if (attentionTime >= maxAttentionTime) {
	state = STATE.free
	attentionTime = 0
}