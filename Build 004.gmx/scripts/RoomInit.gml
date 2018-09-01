// Runs in "Room Start" of eId as well as "Create" event of oLE.
// 1: Determine weather type.
// 2: Build vector collisions.

if (object_index = eId)
{
    switch (room)
    {
        case BarriaLandingSite:
            if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaLandingSitePath1,0,0,0);
            break;
        case BarriaIntWest:
            if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaIntWestPath1,0,0,0);
            break;
        case BarriaCacheMissile:
            if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaCacheMissilePath1,0,0,0);
            vector_path_add(oVectorLine,BarriaCacheMissilePath2,0,0,0);
            break;
        case BarriaCacheMorphBall:
            if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaCacheMorphBallPath1,0,0,0);
            vector_path_add(oVectorLine,BarriaCacheMorphBallPath2,0,0,0);
            break;
    }
}
// 3: Set ambient brightness of light engine.
// LightAlphaMult of 1 for outdoor areas, 0.75 for indoor areas.
else
{
    switch (room)
    {
        case BarriaLandingSite:
        case BarriaIntWest:
        case BarriaCacheMissile:
            eId.LightAlphaMult = 1; break;
        case BarriaCacheMorphBall:
            eId.LightAlphaMult = 0.75; break;
    }
}
