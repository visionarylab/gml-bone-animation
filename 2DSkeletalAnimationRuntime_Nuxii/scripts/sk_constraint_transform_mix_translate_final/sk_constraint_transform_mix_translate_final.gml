/// @desc gets or sets a property
/// @param constraint
/// @param [alpha]
var sk_struct = argument[0];
if(argument_count<2){
	// get
	return sk_struct[SK_CONSTRAINT_TRANSFORM.translateMixFinal];
}	// set
	sk_struct[@ SK_CONSTRAINT_TRANSFORM.translateMixFinal] = real(argument[1]);
	return undefined;