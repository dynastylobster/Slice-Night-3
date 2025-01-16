/// @description Insert description here
// You can write your code in this editor
enemy = noone
enemytype = noone
enemy_y = y 
enemy_x = x 

if instance_place(x,y,EnemyParentObject) {
enemy = instance_place(x,y,EnemyParentObject)
enemytype = instance_place(x,y,EnemyParentObject).object_index
enemy_y = enemy.y 
enemy_x = enemy.x
	}
alarm[0] = 5