

	public start    ;Make the entry point public
	org $2000       ;Place the origin at $2000


start:
	move.l	#$12345678,d6
	move.l	#$12345678,d7

* Conversione di formato sul risultato di una divisione tra numeri con segno:
; - vogliamo ottenere quoziente in d6 e il resto in d7,
;	 entrambi in formato long
; - in caso di overflow, quoziente vale 65535 e il resto vale 0
	move.l	#$18120,d2
	move.w	#-$1000,d3
	divs	d3,d2
	bvc	no_overflow_divs
	move.l	#$65535,d6
	clr.l	d7
	bra	divs_end

no_overflow_divs:
	; sign extension quoziente
	move.w	d2,d6
	ext.l	d6

	; porta il resto in d2 in formato word
	swap	d2

	; sign extension resto
	move.w	d2,d7
	ext.l	d7
divs_end:

	end

