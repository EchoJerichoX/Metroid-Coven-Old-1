// Runs within oItem.
// Mark the item acquired so we can't obtain it again.
// See switch statement case numbers for argument0 meaning.
switch (argument0)
{
    // --- Energy Tanks ---
    case 1:
        break;
    // --- Missile Expansions ---
    case 2:
        if (room = BarriaLandingSite) eId.HasBarriaLandingSiteME = true;
        if (room = BarriaCacheMissile) eId.HasBarriaCacheMissileME = true;
        break;
    // --- Super Missile Expansions ---
    case 3:
        break;
    // --- Power Bomb Expansions ---
    case 4:
        break;
}
