trail = ds_grid_create(argument0,2);                            // Create trail as ds_ structure


for (i=0; i<argument0; i+=1)                                    
{
    ds_grid_add(trail,i,0,argument1);                          // Set initial ds_ grid x fragments as target.x
    ds_grid_add(trail,i,1,argument2);                          // Set initial ds_ grid y fragments as target.y

}

return trail; 
