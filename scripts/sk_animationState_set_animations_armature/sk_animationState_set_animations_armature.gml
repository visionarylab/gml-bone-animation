__SK_OBJECT_DEBUG_ASSERT_EXISTENCE = !sk_animationState_exists(argument0);
/// @desc sets a property
/// @param state
/// @param armature
var sk_animations = ds_list_create();
if(sk_armature_exists(argument1)) then sk_armature_get_animations(argument1,sk_animations);
sk_animationState_set_animations(argument0,sk_animations);
ds_list_destroy(sk_animations);