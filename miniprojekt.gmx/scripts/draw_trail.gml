/// draw_trail(trail,w1,w2,c1,c2,a1,a2)

trail       = argument0; 
w1          = argument1; 
w2          = argument2;
c1          = argument3;
c2          = argument4;
a1          = argument5; 
a2          = argument6;
traillength = ds_grid_width(trail); 
linewidth   = w1; 


for(i=traillength-2; i>=0; i-=1)
{
    linewidth = w1*(traillength-1-i)/(traillength-1) + w2*(i+1)/(traillength-1); 
    draw_set_color(merge_color(c2,c1,(traillength-1-i)/(traillength-1))); 
    draw_set_alpha(a1*(traillength-1-i)/(traillength-1) + a2*(i+1)/(traillength-1));

    if ((ds_grid_get(trail,i,0)!=ds_grid_get(trail,i+1,0) || ds_grid_get(trail,i,1)!=ds_grid_get(trail,i+1,1)) && (ds_grid_get(trail,i,0)!=-1000 || ds_grid_get(trail,i,1)!=-1000) && (ds_grid_get(trail,i+1,0)!=-1000 or ds_grid_get(trail,i+1,1)!=-1000))
    {draw_line_width(ds_grid_get(trail,i,0),ds_grid_get(trail,i,1),ds_grid_get(trail,i+1,0),ds_grid_get(trail,i+1,1),linewidth);} 
}
