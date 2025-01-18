/// @description Insert description here
// You can write your code in this editor
enemy = noone
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
if instance_place(x,y,EnemyParentObject) {
enemy = instance_place(x,y,EnemyParentObject)
}