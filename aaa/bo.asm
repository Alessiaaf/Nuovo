

	public start    ;Make the entry point public
	org $2000       ;Place the origin at $2000


start:
	
;int s1 = -325, s2, s3 = 826;
	move.w	#-325,d1
	move.w	#0,d2
	move.w	#826,d3

;	t1 = s1 + 22;
	move.w	d1,d4
	add.w	#22,d4

;	t1 = 2048 - t1;
	move.w	d4,d6
	move.w	#2048,d4
	sub.w	d6,d4

;	t2 = s3 - 329;
	move.w	d3,d5
	sub.w	#329,d5

;	t1 += t2;
	add.w	d5,d4

;	s2 = t1;
	move.w	d4,d2

;	t1 = s1 + 9;
	move.w	#9,d4
	add.w	d1,d4

;	s3 = s2 - t1;
	move.w	d2,d3
	sub.w	d4,d3

;	t2 = s1 - 345;
	move.w	d1,d5
	sub.w	#345,d5

;	t1 = t2 - s3;
	move.w	d5,d4
	sub.w	d3,d4

;	s1 -= t1;
	sub.w	d4,d1

	end


