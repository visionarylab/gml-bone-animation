/// @desc create
/// @param [constraint]
var sk_obj = sk_object_create(SK_TYPE_TRANSFORMATION_TIMELINE,SK_INTERFACE_TIMELINE);
if(argument_count>0) then sk_transformation_timeline_set_constraint(sk_obj,argument[0]);
return sk_obj;