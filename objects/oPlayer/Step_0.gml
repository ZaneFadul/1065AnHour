/// @description Insert description here
// You can write your code in this editor
//-----------------------------------------------KEYBOARD INPUT

if(!instance_exists(oCutscene)){
	keyLeft = global.keyLeft;
	keyRight = global.keyRight;
	keyUp = global.keyUp;
	keyDown = global.keyDown;
	
	keyInteract = global.keyInteract;
	keyShoot = global.keyShoot;
	keyDash = global.keyDash;
	keyTimeStop = global.keyTimeStop;
} else {
	if(oCutscene.cutscene){
		keyLeft = 0;
		keyRight = 0;
		keyUp = 0;
		keyDown = 0;
		keyTimeStop = 0;
		keyJump = 0;
	}
}

if(keyLeft > 0){
	moveLeft = 1;
	moveRight = 0;
	lookUp = 0;
	lookDown = 0;
}
if(keyRight > 0){
	moveLeft = 0;
	moveRight = 1;
	lookUp = 0;
	lookDown = 0;
}
if(keyUp > 0){
	moveLeft = 0;
	moveRight = 0;
	lookUp = 1;
	lookDown = 0;
}
if(keyDown > 0){
	moveLeft = 0;
	moveRight = 0;
	lookUp = 0;
	lookDown = 1;
}

//-----------------------------------------------PLAYER INPUT
//move left and right
move = keyRight - keyLeft;

if(abs(xVel) <= walkSpeed){
xVel += move*(walkSpeed/16);
} else if (move != xVel/abs(xVel)){
	xVel += move*(walkSpeed/16);
}

if(move > 0){
		faceRight = 1;
		faceLeft = 0;
}
if(move < 0){
		faceLeft = 1;
		faceRight = 0;
}


//Initial acceleration and turning

	if (move == 0 && xVel > 0){
		xVel -= xVel/4;
	} else if (move == 0 && xVel < 0){
		xVel -= xVel/4;
	}
	if(move == -1 && xVel > 0){
		xVel -= walkSpeed/4;
	}
	if(move == 1 && xVel < 0){
		xVel += walkSpeed/4;
	} 


//-----------------------------------------------ENVIRONMENT INPUT
//------------------------Check Physics

checkCollisions(self,listOfCollisions);

x += xVel;
y += yVel;


if(instance_exists(oCutscene)){
if((xVel > 1 || xVel < -1)){
	sprite_index = sGaleR;
	image_speed = 1;
} else {
	sprite_index = sGaleS;

}
} else {
	if ((keyLeft || keyRight) && xVel != 0){
		sprite_index = sGaleR; 
		image_speed = 1;
	} else {
		sprite_index = sGaleS;

}
}

	if (move != 0) image_xscale = xscale * move; else image_xscale = xscale;
	
image_yscale = yscale;