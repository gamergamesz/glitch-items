﻿//if (!animatee) animatee = HiOverlayContainer_mc;animations = ['1','hi'];loopers = [];var item_inited:Boolean;var item_ran:Boolean;var config_options:Object = {	variant: [		"bats",		"bats2x",		"birds",		"birds2x",		"butterflies",		"butterflies2x",		"cubes",		"cubes2x",		"flowers",		"flowers2x",		"hands",		"hands2x",		"hearts",		"hearts2x",		"hi",		"hi2x",		"pigs",		"pigs2x",		"rocketships",		"rocketships2x",		"stars",		"stars2x"	]}if (!item_inited) itemInit();function itemInit():void {	myAnim = 'hi';	animatee = HiOverlayContainer_mc.getChildAt(0) as MovieClip;	item_inited = true;}itemRun()function itemRun():void {	if (item_ran) return;	do_trace = true	// DEFAULT!	var temp_ob4:Object = {		variant: 'birds'	}		//initializehead(temp_ob4);	//stopAll();	trackFrames();	//playAnimation('move');	//playAnimationSeq(['idle']);	item_ran = true;	//LogCoords(animatee, 20)	}function initializehead(ob:Object) {	log(112, 'initializehead '+ob)	if (!ob) return;	animatee = addArticleToContainer(ob.variant, this, 'HiOverlayContainer_mc') || animatee;}