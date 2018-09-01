myid = argument0;
switch(myid)
{
    case Enemies.eZoomer:
        ActorSprite = sprZoomer;
        ActorSpriteHit = sprZoomerHit;
        MaxSpeed = 2.25;
        HitPoints = choose(1.5,2,2.5,3);
        destdir = random(360);
        depth = 7;
        alarm[1] = random(100);
        break;
    case Enemies.eGeemer:
        ActorSprite = sprGeemer;
        MaxSpeed = 1.5;
        destdir = random(360);
        depth = 7;
        state = 1; // Wandering.
        AnimationStart = 0;
        AnimationEnd = 7;
        break;
}

sprite_index = ActorSprite;
aiLastHitPoints = HitPoints;
CantTakeDamageFrom = noone;
ImmuneToPowerBomb = 0;