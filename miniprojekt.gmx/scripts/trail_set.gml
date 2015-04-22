/// trail_set(lenght,w1,w2,c1,c2,a1,a2,xscatter,yscatter,xdrift,ydrift);


    length  = 30;
    w1       = 5;
    w2       = 0;
    c1       = c_purple;
    c2       = c_fuchsia;
    a1       = 1;
    a2       = 0.1;
    xscatter = 1;
    yscatter = 1;
    xdrift   = 0;
    ydrift   = 0;
    
if (argument_count > 9)
   {
    lenght         = argument[0];
    w1             = argument[1];
    w2             = argument[2];
    c1             = argument[3];
    c2             = argument[4];
    a1             = argument[5];
    a2             = argument[6];
    xscatter       = argument[7];
    yscatter       = argument[8];
    xdrift         = argument[9];
    ydrift         = argument[10];       
   }
   
   else {show_message("Trail set - wrong number of argumnets!")}
   
   
trail = trail_create(length,x,y);


