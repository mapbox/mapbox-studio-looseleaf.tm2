@water: #8bdcd4;
@park: #b5d378;
@tan: #f1edcd;
@darkblue: #000363;
@red: #ff5f51;

Map {
  background-color:#fefef1;
}

// Political boundaries //
#admin {
  line-width: 0.4;
  line-dasharray: 10,3,3,3;
	[admin_level>=3] {
		line-join: round;
		line-color: rgba(0,0,0,0.25);
		line-dasharray:8,1,8,1;
		line-cap:round;
		line-width: 0.8;
		[zoom>=6] { line-width: 1; }
		[zoom>=12] { line-width: 2; }
    	[disputed=1] { line-dasharray: 4,4; }
		[maritime=1] { line-color: darken(@water, 25%); }
  }
}

#country_label_line {
	line-color: #324;
	line-opacity: 0.05;
}

// Water Features //
#water { polygon-fill: @water; }
#waterway {
	[type='river'],
	[type='canal'] {
		line-color: @water;
		line-width: 0.5;
		[zoom>=12] { line-width: 1; }
		[zoom>=14] { line-width: 2; }
		[zoom>=16] { line-width: 3; }
  	}
  	[type='stream'] {
    	line-color: @water;
    	line-width: 0.5;
    	[zoom>=14] { line-width: 1; }
    	[zoom>=16] { line-width: 2; }
    	[zoom>=18] { line-width: 3; }
  	}
}

#landuse_overlay[class='wetland'][zoom>=11] {
	polygon-pattern-file:url(img/wetland.png);
	polygon-pattern-alignment:local;
	polygon-pattern-opacity:0.25;
  	[zoom>=16] { polygon-pattern-file:url(img/wetland-lrg.png); }
}

#landuse {
	polygon-pattern-file:url(img/noise.png);
	polygon-pattern-alignment:global;
	[class='park'][zoom>=9] {
    	polygon-fill: @park;
    	polygon-opacity: 0.75;
  	}
  	[class='industrial'][zoom>=11] {
    	polygon-fill: #fbb958;
    	polygon-opacity:0.75;
  	}
  	[class='cemetery'][zoom>=12] {
		polygon-fill: darken(@tan, 10%);
  	}
}

#building {
	polygon-fill: @tan;
  	[zoom>=17] {
  		line-width: 0.1px;
  		line-color: darken(@tan, 50%);
    }
}
