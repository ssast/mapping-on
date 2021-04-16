@water: #DCDCDC;
@roads: #C0C0C0;
@admin: #A9A9A9;
@sans-bold:"Arial Bold","Liberation Sans Bold","DejaVu Sans Bold";

Map {
  background-color: @water;
}

#countries {
  polygon-fill: #fff;
}

#admin-level {
  line-color: @admin;
  line-width: 2;
  polygon-opacity: 0;
}

#osm-waterways [zoom > 10] {
  line-width: 1;
  line-color: @water;
}

#osm-waterways-gen1 [zoom = 10] {
  line-width: 1;
  line-color: @water;
}

#osm-waterways-gen0 [zoom = 9] {
  line-width: 1;
  line-color: @water;
}

#osm-waterways-gen0 [zoom = 8] {
  line-width: 0.5;
  line-color: @water;
}

#osm-waterareas [zoom > 10] {
  polygon-fill: @water;
}

#osm-waterareas-gen1 [zoom = 10] {
  polygon-fill: @water;
}

#osm-waterareas-gen0 [zoom >= 8][zoom < 10] {
  polygon-fill: @water;
}

#osm-waterareas-gen0 [zoom = 7][area > 1000000] {
  polygon-fill: @water;
}

#osm-waterareas-gen0 [zoom = 6][area > 10000000] {
  polygon-fill: @water;
}

#osm-waterareas-gen0 [zoom = 5][area > 50000000] {
  polygon-fill: @water;
}

#osm-roads [zoom > 10] {
  line-width: 0.5;
  line-color: @roads;
  [type ='motorway'],[type = 'trunk'],[type = 'motorway_link'],[type = 'secondary_link'],[type = 'primary_link'],[type = 'trunk_link'],[type = 'secondary'],[type = 'primary'] {
    line-width: 1;
   }
}

#osm-roads-gen1 [zoom = 10] {
  line-width: 0.5;
  line-color: @roads;
  [type ='motorway'],[type = 'trunk'],[type = 'motorway_link'],[type = 'secondary_link'],[type = 'primary_link'],[type = 'trunk_link'],[type = 'secondary'],[type = 'primary'] {
    line-width: 1;
   }
}

#osm-roads-gen0 [zoom >= 8][zoom < 10] {
  line-width: 0.5;
  line-color: @roads;
  [type ='motorway'],[type = 'trunk'],[type = 'motorway_link'],[type = 'secondary_link'],[type = 'primary_link'],[type = 'trunk_link'],[type = 'secondary'],[type = 'primary'] {
    line-width: 1;
   }
}

#osm-roads-gen0 [zoom = 7] {
  [type ='motorway'],[type = 'trunk'],[type = 'motorway_link'],[type = 'secondary_link'],[type = 'primary_link'],[type = 'trunk_link'],[type = 'secondary'],[type = 'primary'] {    line-width: 0.5;
    line-width: 0.5;
    line-color: @roads;
  }
}

#osm-roads-gen0 [zoom = 6] {
  [type ='motorway'],[type = 'trunk'],[type = 'motorway_link'],[type = 'primary_link'],[type = 'trunk_link'],[type = 'primary'] {    line-width: 0.5;
    line-width: 0.5;
    line-color: @roads;
  }
}

#osm-roads-gen0 [zoom = 5] {
  [type ='motorway'],[type = 'trunk'],[type = 'motorway_link'],[type = 'trunk_link'] {    line-width: 0.5;
    line-width: 0.5;
    line-color: @roads;
  }
}

#osm-places [zoom >= 10][type = 'village'] {
  text-name:"[name]";
  text-face-name:@sans-bold;
  text-allow-overlap:false;
  text-character-spacing:1;
  text-line-spacing:4;
  text-size:8;
  text-wrap-width:120;
  text-allow-overlap:true;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
  text-fill:darkgrey;
  text-min-distance: 30;
}

#osm-places [zoom >= 8][type = 'town'] {
  text-name:"[name]";
  text-face-name:@sans-bold;
  text-allow-overlap:false;
  text-character-spacing:1;
  text-line-spacing:4;
  text-size:8;
  text-wrap-width:120;
  text-allow-overlap:true;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
  text-fill:darkgrey;
  text-min-distance: 30;
}

#osm-places [zoom >= 7][type = 'city'] {
  [population < 100000],[population = null] {
    text-name:"[name]";
    text-face-name:@sans-bold;
    text-allow-overlap:false;
    text-character-spacing:1;
    text-line-spacing:4;
    text-size:10;
    text-wrap-width:120;
    text-allow-overlap:true;
    text-halo-radius:2;
    text-halo-fill:rgba(255,255,255,0.75);
    text-fill:darkgrey;
    text-min-distance: 30;
  }
}

#osm-places [zoom >= 6][type = 'city'][population >= 100000][population < 500000] {
  text-name:"[name]";
  text-face-name:@sans-bold;
  text-allow-overlap:false;
  text-transform:uppercase;
  text-character-spacing:1;
  text-line-spacing:4;
  text-size:10;
  text-wrap-width:120;
  text-allow-overlap:true;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
  text-fill:darkgrey;
  text-min-distance: 30; 
}

#osm-places [zoom >= 5][type = 'city'][population >= 500000] {
  text-name:"[name]";
  text-face-name:@sans-bold;
  text-allow-overlap:false;
  text-transform:uppercase;
  text-character-spacing:1;
  text-line-spacing:4;
  text-size:12;
  text-wrap-width:120;
  text-allow-overlap:true;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
  text-fill:darkgrey;
}