/// @desc applies the pose at the given time in the timeline
/// @param keyframes
/// @param target
/// @param time (the time to search for)
/// @param timeLast (the previous frame time)
/// @param frameA
/// @param frameB
/// @param frameA_time
/// @param frameB_time
/// @param mixPose
/// @param alpha
var sk_keyframes = argument0;
var sk_target = argument1;
var sk_time = argument2;
var sk_timeLast = argument3;
var sk_keyframe_prev = argument4;
var sk_keyframe_next = argument5;
var sk_keyframe_prev_time = argument6;
var sk_keyframe_next_time = argument7;
var sk_mix = argument8;
var sk_alpha = argument9;
// interpolate
var sk_interpolation = sk_erp(sk_keyframe_prev_time,sk_keyframe_next_time,sk_time,sk_keyframes[| sk_keyframe_prev+SK_TIMELINE_FRAMES_TRANSFORM.tweenEasing]);
var sk_translate = lerp(sk_keyframes[| sk_keyframe_prev+SK_TIMELINE_FRAMES_TRANSFORM.translateMix],sk_keyframes[| sk_keyframe_next+SK_TIMELINE_FRAMES_TRANSFORM.translateMix],sk_interpolation);
var sk_scale = lerp(sk_keyframes[| sk_keyframe_prev+SK_TIMELINE_FRAMES_TRANSFORM.scaleMix],sk_keyframes[| sk_keyframe_next+SK_TIMELINE_FRAMES_TRANSFORM.scaleMix],sk_interpolation);
var sk_shear = lerp(sk_keyframes[| sk_keyframe_prev+SK_TIMELINE_FRAMES_TRANSFORM.shearMix],sk_keyframes[| sk_keyframe_next+SK_TIMELINE_FRAMES_TRANSFORM.shearMix],sk_interpolation);
var sk_rotate = lerp(sk_keyframes[| sk_keyframe_prev+SK_TIMELINE_FRAMES_TRANSFORM.rotateMix],sk_keyframes[| sk_keyframe_next+SK_TIMELINE_FRAMES_TRANSFORM.rotateMix],sk_interpolation);
// apply
switch(sk_mix){
	case sk_mixPose_mix: case sk_mixPose_add:
		sk_target[@ SK_CONSTRAINT_TRANSFORM.translateMixFinal] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.translateMixFinal],sk_translate,sk_alpha);
		sk_target[@ SK_CONSTRAINT_TRANSFORM.scaleMixFinal] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.scaleMixFinal],sk_scale,sk_alpha);
		sk_target[@ SK_CONSTRAINT_TRANSFORM.shearMixFinal] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.shearMixFinal],sk_shear,sk_alpha);
		sk_target[@ SK_CONSTRAINT_TRANSFORM.rotateMixFinal] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.rotateMixFinal],sk_rotate,sk_alpha);
	break;
	case sk_mixPose_overwrite:
		sk_target[@ SK_CONSTRAINT_TRANSFORM.translateMix] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.translateMix],sk_translate,sk_alpha);
		sk_target[@ SK_CONSTRAINT_TRANSFORM.scaleMix] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.scaleMix],sk_scale,sk_alpha);
		sk_target[@ SK_CONSTRAINT_TRANSFORM.shearMix] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.shearMix],sk_shear,sk_alpha);
		sk_target[@ SK_CONSTRAINT_TRANSFORM.rotateMix] = lerp(sk_target[SK_CONSTRAINT_TRANSFORM.rotateMix],sk_rotate,sk_alpha);
	break;
}