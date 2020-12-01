/// @desc On end, destroy self, spawn player

instance_create_layer(Obj_playerrespawn.x, Obj_playerrespawn.y, "Instances", obj_player);

instance_destroy(Obj_playerrespawn);
