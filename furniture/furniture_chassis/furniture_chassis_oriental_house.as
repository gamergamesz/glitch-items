﻿var item_inited:Boolean;
var item_ran:Boolean;

var house_mc:MovieClip;
var door:MovieClip;
var housedeco:MovieClip;
var roof:MovieClip;
var topdeco:MovieClip;
var baseboard:MovieClip;

var config_options:Object;
var config_option_names:Object;

itemInit();

function itemInit():void {
	if (item_inited) return;
	animatee = this;
	animated_mcs = [];
	animations = ['1'];
	loopers = [];
	myAnim = '1';
        
        config_option_names = {
                door: 'Door',
                housedeco: 'Decorations',
                roof: 'Roof',
                topdeco: 'Top',
				baseboard: 'Siding'
        }
        
	config_options = {
		door: [
			'door_black_japanese',
			'door_black_wooden',
			'door_creamy_cement',
			'door_green_curtain',
			'door_red_round',
			'door_red_wooden',
			'door_rock',
			'door_white_round',
			'door_yellow_wooden'
		],
		housedeco: [
			'housedeco_black_lamp',
			'housedeco_japanesebell',
			'housedeco_red_lamp',
			'housedeco_sunnydoll',
			'housedeco_white_bell',
			'housedeco_white_lamp',
			'housedeco_empty'
		],
		roof: [
			'roofContainer_black_japanese',
			'roofContainer_green',
			'roofContainer_green_painting',
			'roofContainer_indianstyle',
			'roofContainer_indianstyle_gold',
			'roofContainer_red_painting',
			'roofContainer_withoutwindows',
			'roofContainer_wood',
			'roofContainer_wood_black'
		],
		topdeco: [
			'topdeco_black',
			'topdeco_grass_rock',
			'topdeco_grass_wood',
			'topdeco_green_rock',
			'topdeco_lotus',
			'topdeco_lotus_painting',
			'topdeco_ramen',
			'topdeco_red_rock',
			'topdeco_white_rock',
			'topdeco_yellow',
			'topdeco_empty'
		],
		baseboard: [
			'baseboard_cement',
			'baseboard_japanese_black',
			'baseboard_redbrick',
			'baseboard_whitebrick',
			'baseboard_wooden',
			'baseboard_wooden_black'
		]
	}
	
	house_mc = maincontainer_mc.house_mc;
	door = house_mc.doorContainer_mc.getChildAt(0) as MovieClip;
	housedeco = house_mc.housedecoContainer_mc.getChildAt(0) as MovieClip;
	roof = house_mc.roofContainer_mc.getChildAt(0) as MovieClip;
	topdeco = house_mc.topdecoContainer_mc.getChildAt(0) as MovieClip;
	baseboard = house_mc.baseboardContainer_mc.getChildAt(0) as MovieClip;
	
	
	if (true) {
		var temp_ob4:Object = {};
		var index:int = 0;
		for (var k:String in config_options) {
			var which:int = index
			if (which >= config_options[k].length) which = config_options[k].length-1
			trace(k+' '+which+' '+config_options[k][which]);
			temp_ob4[k] = config_options[k][which]
		}
		
		initializehead(temp_ob4);
	}
	
	
	item_inited = true;
}

//itemRun()

function itemRun():void {
	if (item_ran) return;
	//do_trace = true
	// DEFAULT!
	
	//stopAll();
	//trackFrames();
	//playAnimation('warriorPose');
	//playAnimationSeq(['idle']);
	item_ran = true;
	//LogCoords(animatee, 20)
	
}



function initializehead(ob:Object) {
	log(112, 'initializehead '+ob)
	if (!ob) return;
	door = addArticleToContainer(ob.door, house_mc, 'doorContainer_mc') || door;
	housedeco = addArticleToContainer(ob.housedeco, house_mc, 'housedecoContainer_mc') || housedeco;
	roof = addArticleToContainer(ob.roof, house_mc, 'roofContainer_mc') || roof;
	topdeco = addArticleToContainer(ob.topdeco, house_mc, 'topdecoContainer_mc') || topdeco;
	baseboard = addArticleToContainer(ob.baseboard, house_mc, 'baseboardContainer_mc') || baseboard;
}


