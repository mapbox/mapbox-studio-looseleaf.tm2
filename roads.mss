// Roads & Railways //
#tunnel { opacity: 0.5; }

#road [class='motorway'] {
	line-color:@red;
    [zoom>=10] { line-width: 1.5; }
}

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2][zoom>=10] {
    [class='motorway'] {
	  line-color:@red;
	  [zoom>=12] { line-width: 2; }
	  [zoom>=14] { line-width: 3; }
	  [zoom>=16] { line-width: 5; }
	}
    [class='main'] {
      line-color: @darkblue;
	  [zoom=10] { line-width: 0.1; }
	  [zoom=11] { line-width: 0.5; }
	  [zoom=12] { line-width: 0.6; }
      [zoom>=13] { line-width: 1; }
	  [zoom>=15] { line-width: 2; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'][zoom>=13],
    [class='street_limited'][zoom>=13] {
      	line-color: @darkblue;
		line-width: 0.25;
		[zoom>=14] { line-width: 1; }
		[zoom>=16] { line-width: 2; }
    }
    [class='street_limited'][zoom>=14] { line-dasharray: 8,1,8,1; }
  }
}