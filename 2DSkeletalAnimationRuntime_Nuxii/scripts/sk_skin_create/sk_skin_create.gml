#macro sk_type_skin "ofSkin"
enum SK_SKIN{
	displays,
	remaps,
	remapStack,
	sizeof
}
#macro sk_tuple_skinRecord_slot 0 /* this could be a slot, but it could also be a symbol */
#macro sk_tuple_skinRecord_attachment 1
#macro sk_tuple_skinRecord_attachmentKey 2
#macro sk_tuple_skinRecord_ENTRIES 3
gml_pragma("global","sk_struct_type_add(sk_type_skin,SK_SKIN.sizeof,sk_construct_skin,sk_destruct_skin);");
/// @desc creates a structure
/// @param name
var sk_structure = sk_struct_create(sk_type_skin,argument0);
return sk_structure;