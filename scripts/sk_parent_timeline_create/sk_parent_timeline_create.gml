/// @desc create
/// @param [slot]
var sk_obj = sk_object_create(SK_TYPE_PARENT_TIMELINE,SK_INTERFACE_TIMELINE);
if(argument_count>0) then sk_parent_timeline_set_slot(sk_obj,argument[0]);
return sk_obj;