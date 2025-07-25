AnimData131::
	frame_table AnimFrameTable55
	frame_data 0, 2, -14, -64
	frame_data 1, 2, 4, 8
	frame_data 0, 2, 4, 8
	frame_data 1, 2, 2, 8
	frame_data 0, 2, 2, 8
	frame_data 1, 2, 1, 8
	frame_data 0, 2, 1, 8
	frame_data 1, 2, 0, 8
	frame_data 0, 2, 0, 8
	frame_data 2, 3, 0, 0
	frame_data 3, 5, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 4, 4, 0, 2
	frame_data 3, 5, 0, 4
	frame_data 2, 3, 0, 4
	frame_data 1, 2, 0, 4
	frame_data 0, 2, 0, 4
	frame_data 5, 2, 0, 4
	frame_data 6, 2, 0, 4
	frame_data 6, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable55::
	dw .data_b0065
	dw .data_b008a
	dw .data_b00af
	dw .data_b00f0
	dw .data_b0141
	dw .data_b0192
	dw .data_b01a3

.data_b0065
	db 9 ; size
	db -12, -13, 0, $0
	db -12, -5, 1, $0
	db -12, 3, 2, $0
	db -4, -13, 3, $0
	db -4, -5, 4, $0
	db -4, 3, 5, $0
	db 4, -13, 6, $0
	db 4, -5, 7, $0
	db 4, 3, 8, $0

.data_b008a
	db 9 ; size
	db 4, 4, 0, OAM_XFLIP | OAM_YFLIP
	db 4, -4, 1, OAM_XFLIP | OAM_YFLIP
	db 4, -12, 2, OAM_XFLIP | OAM_YFLIP
	db -4, 4, 3, OAM_XFLIP | OAM_YFLIP
	db -4, -4, 4, OAM_XFLIP | OAM_YFLIP
	db -4, -12, 5, OAM_XFLIP | OAM_YFLIP
	db -12, 4, 6, OAM_XFLIP | OAM_YFLIP
	db -12, -4, 7, OAM_XFLIP | OAM_YFLIP
	db -12, -12, 8, OAM_XFLIP | OAM_YFLIP

.data_b00af
	db 16 ; size
	db -20, 4, 9, $0
	db -12, -4, 10, $0
	db -12, 4, 11, $0
	db -12, 12, 12, $0
	db -4, 4, 13, $0
	db 12, -12, 9, OAM_XFLIP | OAM_YFLIP
	db 4, -12, 11, OAM_XFLIP | OAM_YFLIP
	db 4, -20, 12, OAM_XFLIP | OAM_YFLIP
	db -4, -12, 13, OAM_XFLIP | OAM_YFLIP
	db -20, -12, 9, OAM_XFLIP
	db -12, -12, 11, OAM_XFLIP
	db -12, -20, 12, OAM_XFLIP
	db 12, 4, 9, OAM_YFLIP
	db 4, -4, 10, OAM_YFLIP
	db 4, 4, 11, OAM_YFLIP
	db 4, 12, 12, OAM_YFLIP

.data_b00f0
	db 20 ; size
	db 12, -12, 14, OAM_XFLIP | OAM_YFLIP
	db 12, -20, 15, OAM_XFLIP | OAM_YFLIP
	db 4, -4, 16, OAM_XFLIP | OAM_YFLIP
	db 4, -12, 17, OAM_XFLIP | OAM_YFLIP
	db 4, -20, 18, OAM_XFLIP | OAM_YFLIP
	db -4, -12, 19, OAM_XFLIP | OAM_YFLIP
	db -20, 4, 14, $0
	db -20, 12, 15, $0
	db -12, -4, 16, $0
	db -12, 4, 17, $0
	db -12, 12, 18, $0
	db -4, 4, 19, $0
	db -20, -12, 14, OAM_XFLIP
	db -20, -20, 15, OAM_XFLIP
	db -12, -12, 17, OAM_XFLIP
	db -12, -20, 18, OAM_XFLIP
	db 12, 4, 14, OAM_YFLIP
	db 12, 12, 15, OAM_YFLIP
	db 4, 4, 17, OAM_YFLIP
	db 4, 12, 18, OAM_YFLIP

.data_b0141
	db 20 ; size
	db 16, -16, 20, OAM_XFLIP | OAM_YFLIP
	db 16, -24, 21, OAM_XFLIP | OAM_YFLIP
	db 8, -8, 22, OAM_XFLIP | OAM_YFLIP
	db 8, -16, 23, OAM_XFLIP | OAM_YFLIP
	db 8, -24, 24, OAM_XFLIP | OAM_YFLIP
	db 0, -16, 25, OAM_XFLIP | OAM_YFLIP
	db -16, 0, 20, $0
	db -16, 8, 21, $0
	db -8, -8, 22, $0
	db -8, 0, 23, $0
	db -8, 8, 24, $0
	db 0, 0, 25, $0
	db -16, -16, 20, OAM_XFLIP
	db -16, -24, 21, OAM_XFLIP
	db -8, -16, 23, OAM_XFLIP
	db -8, -24, 24, OAM_XFLIP
	db 16, 0, 20, OAM_YFLIP
	db 16, 8, 21, OAM_YFLIP
	db 8, 0, 23, OAM_YFLIP
	db 8, 8, 24, OAM_YFLIP

.data_b0192
	db 4 ; size
	db 0, 0, 0, OAM_XFLIP | OAM_YFLIP
	db 0, -8, 2, OAM_XFLIP | OAM_YFLIP
	db -8, 1, 6, OAM_XFLIP | OAM_YFLIP
	db -8, -7, 8, OAM_XFLIP | OAM_YFLIP

.data_b01a3
	db 4 ; size
	db -8, -8, 0, $0
	db -8, 0, 2, $0
	db 0, -9, 6, $0
	db 0, -1, 8, $0

AnimData132::
	frame_table AnimFrameTable56
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 9, 4, 0, 0
	frame_data 10, 4, 0, 0
	frame_data 11, 4, 0, 0
	frame_data 12, 4, 0, 0
	frame_data 13, 4, 0, 0
	frame_data 14, 4, 0, 0
	frame_data 15, 4, 0, 0
	frame_data 16, 4, 0, 0
	frame_data -1, 4, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable56::
	dw .data_b0239
	dw .data_b0252
	dw .data_b0277
	dw .data_b02a8
	dw .data_b02d9
	dw .data_b030a
	dw .data_b0347
	dw .data_b0388
	dw .data_b03c9
	dw .data_b042e
	dw .data_b048f
	dw .data_b04e0
	dw .data_b0521
	dw .data_b0552
	dw .data_b0573
	dw .data_b0594
	dw .data_b05a5

.data_b0239
	db 6 ; size
	db -20, -28, 2, $0
	db -12, 12, 0, $0
	db 0, -16, 3, $0
	db 0, -8, 3, OAM_XFLIP
	db 8, -16, 3, OAM_YFLIP
	db 8, -8, 3, OAM_XFLIP | OAM_YFLIP

.data_b0252
	db 9 ; size
	db -12, 12, 2, $0
	db 0, -16, 5, $0
	db 0, -8, 5, OAM_XFLIP
	db 8, -16, 5, OAM_YFLIP
	db 8, -8, 5, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 4, $0
	db -24, -24, 4, OAM_XFLIP
	db -16, -24, 4, OAM_XFLIP | OAM_YFLIP
	db -16, -32, 4, OAM_YFLIP

.data_b0277
	db 12 ; size
	db -16, 8, 4, $0
	db -16, 16, 4, OAM_XFLIP
	db -8, 16, 4, OAM_XFLIP | OAM_YFLIP
	db -8, 8, 4, OAM_YFLIP
	db 0, -16, 6, $0
	db 0, -8, 6, OAM_XFLIP
	db 8, -16, 6, OAM_YFLIP
	db 8, -8, 6, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 7, $0
	db -24, -24, 7, OAM_XFLIP
	db -16, -24, 7, OAM_XFLIP | OAM_YFLIP
	db -16, -32, 7, OAM_YFLIP

.data_b02a8
	db 12 ; size
	db -24, -32, 6, $0
	db -24, -24, 6, OAM_XFLIP
	db -16, -32, 6, OAM_YFLIP
	db -16, -24, 6, OAM_XFLIP | OAM_YFLIP
	db 0, -16, 7, $0
	db 0, -8, 7, OAM_XFLIP
	db 8, -8, 7, OAM_XFLIP | OAM_YFLIP
	db 8, -16, 7, OAM_YFLIP
	db -16, 8, 6, $0
	db -16, 16, 6, OAM_XFLIP
	db -8, 8, 6, OAM_YFLIP
	db -8, 16, 6, OAM_XFLIP | OAM_YFLIP

.data_b02d9
	db 12 ; size
	db 0, -16, 6, $0
	db 0, -8, 6, OAM_XFLIP
	db 8, -16, 6, OAM_YFLIP
	db 8, -8, 6, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 7, $0
	db -24, -24, 7, OAM_XFLIP
	db -16, -24, 7, OAM_XFLIP | OAM_YFLIP
	db -16, -32, 7, OAM_YFLIP
	db -16, 8, 7, $0
	db -16, 16, 7, OAM_XFLIP
	db -8, 16, 7, OAM_XFLIP | OAM_YFLIP
	db -8, 8, 7, OAM_YFLIP

.data_b030a
	db 15 ; size
	db -24, -32, 6, $0
	db -24, -24, 6, OAM_XFLIP
	db -16, -32, 6, OAM_YFLIP
	db -16, -24, 6, OAM_XFLIP | OAM_YFLIP
	db 0, -16, 7, $0
	db 0, -8, 7, OAM_XFLIP
	db 8, -8, 7, OAM_XFLIP | OAM_YFLIP
	db 8, -16, 7, OAM_YFLIP
	db -16, 8, 6, $0
	db -16, 16, 6, OAM_XFLIP
	db -8, 8, 6, OAM_YFLIP
	db -8, 16, 6, OAM_XFLIP | OAM_YFLIP
	db -24, 0, 0, $0
	db -8, -16, 0, $0
	db 8, 24, 0, $0

.data_b0347
	db 16 ; size
	db 0, -16, 6, $0
	db 0, -8, 6, OAM_XFLIP
	db 8, -16, 6, OAM_YFLIP
	db 8, -8, 6, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 7, $0
	db -24, -24, 7, OAM_XFLIP
	db -16, -24, 7, OAM_XFLIP | OAM_YFLIP
	db -16, -32, 7, OAM_YFLIP
	db -16, 8, 7, $0
	db -16, 16, 7, OAM_XFLIP
	db -8, 16, 7, OAM_XFLIP | OAM_YFLIP
	db -8, 8, 7, OAM_YFLIP
	db -8, -16, 1, $0
	db -24, 0, 1, $0
	db 8, 24, 1, $0
	db 16, -32, 0, $0

.data_b0388
	db 16 ; size
	db -24, -32, 6, $0
	db -24, -24, 6, OAM_XFLIP
	db -16, -32, 6, OAM_YFLIP
	db -16, -24, 6, OAM_XFLIP | OAM_YFLIP
	db -16, 8, 6, $0
	db -16, 16, 6, OAM_XFLIP
	db -8, 8, 6, OAM_YFLIP
	db -8, 16, 6, OAM_XFLIP | OAM_YFLIP
	db 16, -32, 1, $0
	db -8, -16, 2, $0
	db -24, 0, 2, $0
	db 8, 24, 2, $0
	db 0, -16, 8, $0
	db 0, -8, 8, OAM_XFLIP
	db 8, -16, 8, OAM_YFLIP
	db 8, -8, 8, OAM_XFLIP | OAM_YFLIP

.data_b03c9
	db 25 ; size
	db -16, 8, 7, $0
	db -16, 16, 7, OAM_XFLIP
	db -8, 16, 7, OAM_XFLIP | OAM_YFLIP
	db -8, 8, 7, OAM_YFLIP
	db 16, -32, 2, $0
	db -2, -18, 9, $0
	db -2, -6, 9, OAM_XFLIP
	db 10, -18, 9, OAM_YFLIP
	db 10, -6, 9, OAM_XFLIP | OAM_YFLIP
	db -12, -20, 3, $0
	db -12, -12, 3, OAM_XFLIP
	db -4, -20, 3, OAM_YFLIP
	db -4, -12, 3, OAM_XFLIP | OAM_YFLIP
	db 4, 20, 3, $0
	db 4, 28, 3, OAM_XFLIP
	db 12, 20, 3, OAM_YFLIP
	db 12, 28, 3, OAM_XFLIP | OAM_YFLIP
	db -28, -4, 3, $0
	db -28, 4, 3, OAM_XFLIP
	db -20, -4, 3, OAM_YFLIP
	db -20, 4, 3, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 8, $0
	db -24, -24, 8, OAM_XFLIP
	db -16, -32, 8, OAM_YFLIP
	db -16, -24, 8, OAM_XFLIP | OAM_YFLIP

.data_b042e
	db 24 ; size
	db -26, -34, 9, $0
	db -26, -22, 9, OAM_XFLIP
	db -14, -34, 9, OAM_YFLIP
	db -14, -22, 9, OAM_XFLIP | OAM_YFLIP
	db -16, 8, 8, $0
	db -16, 16, 8, OAM_XFLIP
	db -8, 8, 8, OAM_YFLIP
	db -8, 16, 8, OAM_XFLIP | OAM_YFLIP
	db 12, -36, 3, $0
	db 12, -28, 3, OAM_XFLIP
	db 20, -36, 3, OAM_YFLIP
	db 20, -28, 3, OAM_XFLIP | OAM_YFLIP
	db -12, -20, 4, $0
	db -12, -12, 4, OAM_XFLIP
	db -4, -20, 4, OAM_YFLIP
	db -4, -12, 4, OAM_XFLIP | OAM_YFLIP
	db -28, -4, 4, $0
	db -28, 4, 4, OAM_XFLIP
	db -20, -4, 4, OAM_YFLIP
	db -20, 4, 4, OAM_XFLIP | OAM_YFLIP
	db 4, 20, 4, $0
	db 4, 28, 4, OAM_XFLIP
	db 12, 20, 4, OAM_YFLIP
	db 12, 28, 4, OAM_XFLIP | OAM_YFLIP

.data_b048f
	db 20 ; size
	db 12, -36, 4, $0
	db 12, -28, 4, OAM_XFLIP
	db 20, -36, 4, OAM_YFLIP
	db 20, -28, 4, OAM_XFLIP | OAM_YFLIP
	db -18, 6, 9, $0
	db -18, 18, 9, OAM_XFLIP
	db -6, 6, 9, OAM_YFLIP
	db -6, 18, 9, OAM_XFLIP | OAM_YFLIP
	db -28, -4, 5, $0
	db -28, 4, 5, OAM_XFLIP
	db -20, -4, 5, OAM_YFLIP
	db -20, 4, 5, OAM_XFLIP | OAM_YFLIP
	db -12, -20, 8, $0
	db -12, -12, 8, OAM_XFLIP
	db -4, -20, 8, OAM_YFLIP
	db -4, -12, 8, OAM_XFLIP | OAM_YFLIP
	db 4, 20, 5, $0
	db 4, 28, 5, OAM_XFLIP
	db 12, 20, 5, OAM_YFLIP
	db 12, 28, 5, OAM_XFLIP | OAM_YFLIP

.data_b04e0
	db 16 ; size
	db -14, -22, 9, $0
	db -14, -10, 9, OAM_XFLIP
	db -2, -22, 9, OAM_YFLIP
	db -2, -10, 9, OAM_XFLIP | OAM_YFLIP
	db 4, 20, 8, $0
	db 4, 28, 8, OAM_XFLIP
	db 12, 20, 8, OAM_YFLIP
	db 12, 28, 8, OAM_XFLIP | OAM_YFLIP
	db 12, -36, 5, $0
	db 12, -28, 5, OAM_XFLIP
	db 20, -36, 5, OAM_YFLIP
	db 20, -28, 5, OAM_XFLIP | OAM_YFLIP
	db -28, -4, 6, $0
	db -28, 4, 6, OAM_XFLIP
	db -20, -4, 6, OAM_YFLIP
	db -20, 4, 6, OAM_XFLIP | OAM_YFLIP

.data_b0521
	db 12 ; size
	db 2, 18, 9, $0
	db 2, 30, 9, OAM_XFLIP
	db 14, 18, 9, OAM_YFLIP
	db 14, 30, 9, OAM_XFLIP | OAM_YFLIP
	db 12, -36, 6, $0
	db 12, -28, 6, OAM_XFLIP
	db 20, -36, 6, OAM_YFLIP
	db 20, -28, 6, OAM_XFLIP | OAM_YFLIP
	db -28, -4, 7, $0
	db -28, 4, 7, OAM_XFLIP
	db -20, 4, 7, OAM_XFLIP | OAM_YFLIP
	db -20, -4, 7, OAM_YFLIP

.data_b0552
	db 8 ; size
	db 12, -36, 8, $0
	db 12, -28, 8, OAM_XFLIP
	db 20, -36, 8, OAM_YFLIP
	db 20, -28, 8, OAM_XFLIP | OAM_YFLIP
	db -28, -4, 6, $0
	db -28, 4, 6, OAM_XFLIP
	db -20, -4, 6, OAM_YFLIP
	db -20, 4, 6, OAM_XFLIP | OAM_YFLIP

.data_b0573
	db 8 ; size
	db -28, -4, 7, $0
	db -28, 4, 7, OAM_XFLIP
	db -20, 4, 7, OAM_XFLIP | OAM_YFLIP
	db -20, -4, 7, OAM_YFLIP
	db 10, -38, 9, $0
	db 10, -26, 9, OAM_XFLIP
	db 22, -38, 9, OAM_YFLIP
	db 22, -26, 9, OAM_XFLIP | OAM_YFLIP

.data_b0594
	db 4 ; size
	db -28, -4, 8, $0
	db -28, 4, 8, OAM_XFLIP
	db -20, -4, 8, OAM_YFLIP
	db -20, 4, 8, OAM_XFLIP | OAM_YFLIP

.data_b05a5
	db 4 ; size
	db -30, -6, 9, $0
	db -30, 6, 9, OAM_XFLIP
	db -18, -6, 9, OAM_YFLIP
	db -18, 6, 9, OAM_XFLIP | OAM_YFLIP

AnimData133::
	frame_table AnimFrameTable57
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 16, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 9, 4, 0, 0
	frame_data 10, 4, 0, 0
	frame_data 11, 16, 0, 0
	frame_data 11, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable57::
	dw .data_b0609
	dw .data_b0622
	dw .data_b0643
	dw .data_b0674
	dw .data_b06b5
	dw .data_b06fe
	dw .data_b073b
	dw .data_b0790
	dw .data_b07ed
	dw .data_b085a
	dw .data_b08d7
	dw .data_b095c

.data_b0609
	db 6 ; size
	db -29, -16, 0, $0
	db -29, -8, 1, $0
	db -29, 0, 2, $0
	db -29, 8, 3, $0
	db -21, -7, 13, $0
	db -21, 3, 13, $0

.data_b0622
	db 8 ; size
	db -27, -16, 4, $0
	db -27, -8, 5, $0
	db -27, 0, 6, $0
	db -27, 8, 7, $0
	db -19, -23, 8, $0
	db -19, -9, 9, $0
	db -19, 1, 10, $0
	db -23, -20, 4, $0

.data_b0643
	db 12 ; size
	db -27, -16, 4, $0
	db -27, -8, 5, $0
	db -27, 0, 6, $0
	db -27, 8, 7, $0
	db -19, -8, 12, $0
	db -19, -23, 11, $0
	db -11, -24, 14, $0
	db -11, -11, 15, $0
	db -11, 0, 16, $0
	db -3, 0, 17, $0
	db -19, 6, 35, $0
	db -23, -20, 4, $0

.data_b0674
	db 16 ; size
	db -25, 8, 18, $0
	db -25, -16, 4, $0
	db -25, -8, 5, $0
	db -25, 0, 26, $0
	db -17, -23, 19, $0
	db -17, -8, 20, $0
	db -17, 2, 21, $0
	db -9, -8, 22, $0
	db -9, 1, 21, $0
	db -1, 1, 21, $0
	db -1, -24, 23, $0
	db 7, -12, 24, $0
	db 7, 0, 25, $0
	db -1, -12, 16, $0
	db -9, -20, 35, $0
	db -21, -20, 4, $0

.data_b06b5
	db 18 ; size
	db -24, 8, 29, $0
	db -24, 0, 28, $0
	db -24, -8, 27, $0
	db -16, -13, 30, $0
	db -16, -4, 31, $0
	db -16, 3, 32, $0
	db -8, -20, 33, $0
	db -8, -8, 34, $0
	db -8, 1, 21, $0
	db 0, -8, 35, $0
	db 8, -25, 36, $0
	db 8, -9, 37, $0
	db 16, -31, 38, $0
	db 0, 0, 21, $0
	db 8, 0, 21, $0
	db 16, 0, 21, $0
	db 16, -16, 21, $0
	db 0, -22, 42, $0

.data_b06fe
	db 15 ; size
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0

.data_b073b
	db 21 ; size
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0
	db -29, 8, 0, OAM_XFLIP
	db -29, 0, 1, OAM_XFLIP
	db -29, -8, 2, OAM_XFLIP
	db -29, -16, 3, OAM_XFLIP
	db -21, -7, 13, $0
	db -21, 3, 13, $0

.data_b0790
	db 23 ; size
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0
	db -27, 8, 4, OAM_XFLIP
	db -27, 0, 5, OAM_XFLIP
	db -27, -8, 6, OAM_XFLIP
	db -27, -16, 7, OAM_XFLIP
	db -19, 15, 8, OAM_XFLIP
	db -23, 12, 4, OAM_XFLIP
	db -19, 1, 9, OAM_XFLIP
	db -19, -9, 10, OAM_XFLIP

.data_b07ed
	db 27 ; size
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0
	db -27, 8, 4, OAM_XFLIP
	db -27, 0, 5, OAM_XFLIP
	db -27, -8, 6, OAM_XFLIP
	db -27, -16, 7, OAM_XFLIP
	db -23, 11, 4, OAM_XFLIP
	db -19, 0, 12, OAM_XFLIP
	db -11, 16, 14, OAM_XFLIP
	db -11, 3, 15, OAM_XFLIP
	db -11, -8, 16, OAM_XFLIP
	db -3, -8, 17, OAM_XFLIP
	db -19, -14, 35, OAM_XFLIP
	db -19, 14, 11, OAM_XFLIP

.data_b085a
	db 31 ; size
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0
	db -25, -16, 18, OAM_XFLIP
	db -25, 8, 4, OAM_XFLIP
	db -25, 0, 5, OAM_XFLIP
	db -25, -8, 26, OAM_XFLIP
	db -17, 8, 4, OAM_YFLIP
	db -17, 15, 19, OAM_XFLIP
	db -17, 0, 20, OAM_XFLIP
	db -17, -10, 21, OAM_XFLIP
	db -9, 0, 22, OAM_XFLIP
	db -9, -9, 21, OAM_XFLIP
	db -1, -9, 21, OAM_XFLIP
	db -1, 16, 23, OAM_XFLIP
	db 7, 4, 24, OAM_XFLIP
	db 7, -8, 25, OAM_XFLIP
	db -1, 4, 16, OAM_XFLIP
	db -9, 12, 35, OAM_XFLIP

.data_b08d7
	db 33 ; size
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0
	db -24, -16, 29, OAM_XFLIP
	db -24, -8, 28, OAM_XFLIP
	db -24, 0, 27, OAM_XFLIP
	db -16, 5, 30, OAM_XFLIP
	db -16, -4, 31, OAM_XFLIP
	db -16, -11, 32, OAM_XFLIP
	db -8, 12, 33, OAM_XFLIP
	db -8, 0, 34, OAM_XFLIP
	db -8, -9, 21, OAM_XFLIP
	db 0, 0, 35, OAM_XFLIP
	db 8, 17, 36, OAM_XFLIP
	db 8, 1, 37, OAM_XFLIP
	db 16, 23, 38, OAM_XFLIP
	db 0, -8, 21, OAM_XFLIP
	db 8, -8, 21, OAM_XFLIP
	db 16, -8, 21, OAM_XFLIP
	db 16, 8, 21, OAM_XFLIP
	db 0, 14, 42, OAM_XFLIP

.data_b095c
	db 30 ; size
	db -24, -17, 39, OAM_XFLIP
	db -16, -8, 40, OAM_XFLIP
	db -16, -16, 41, OAM_XFLIP
	db -8, -14, 38, OAM_XFLIP
	db 0, -7, 42, OAM_XFLIP
	db 0, -16, 43, OAM_XFLIP
	db 8, 11, 44, OAM_XFLIP
	db 16, 18, 44, OAM_XFLIP
	db 8, 0, 45, OAM_XFLIP
	db 16, 4, 45, OAM_XFLIP
	db 8, -16, 37, OAM_XFLIP
	db 16, -13, 43, OAM_XFLIP
	db 0, 4, 44, OAM_XFLIP
	db -8, -11, 42, OAM_XFLIP
	db -8, -3, 44, OAM_XFLIP
	db -24, 9, 39, $0
	db -16, 0, 40, $0
	db -16, 8, 41, $0
	db -8, 6, 38, $0
	db 0, -1, 42, $0
	db 0, 8, 43, $0
	db 8, -19, 44, $0
	db 16, -26, 44, $0
	db 8, -8, 45, $0
	db 16, -12, 45, $0
	db 8, 8, 37, $0
	db 16, 5, 43, $0
	db 0, -12, 44, $0
	db -8, 3, 42, $0
	db -8, -5, 44, $0

AnimData134::
	frame_table AnimFrameTable58
	frame_data 0, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 7, 6, 0, 0
	frame_data 8, 6, 0, 0
	frame_data 9, 6, 0, 0
	frame_data 10, 8, 0, 0
	frame_data 6, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 11, 8, 0, 0
	frame_data 12, 8, 0, 0
	frame_data 12, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable58::
	dw .data_b0a36
	dw .data_b0a57
	dw .data_b0a90
	dw .data_b0ac9
	dw .data_b0aea
	dw .data_b0b23
	dw .data_b0b5c
	dw .data_b0b7d
	dw .data_b0bb6
	dw .data_b0bef
	dw .data_b0c10
	dw .data_b0c39
	dw .data_b0c5a

.data_b0a36
	db 8 ; size
	db -32, -40, 2, $0
	db -24, -40, 3, $0
	db -32, -32, 2, OAM_XFLIP
	db -24, -32, 3, OAM_XFLIP
	db -32, 24, 2, $0
	db -24, 24, 3, $0
	db -32, 32, 2, OAM_XFLIP
	db -24, 32, 3, OAM_XFLIP

.data_b0a57
	db 14 ; size
	db -32, -40, 2, $0
	db -24, -40, 3, $0
	db -32, -32, 2, OAM_XFLIP
	db -24, -32, 3, OAM_XFLIP
	db -32, 24, 2, $0
	db -24, 24, 3, $0
	db -32, 32, 2, OAM_XFLIP
	db -24, 32, 3, OAM_XFLIP
	db -24, 16, 0, $0
	db -24, -24, 0, OAM_XFLIP
	db -16, -32, 1, $0
	db -16, 16, 1, $0
	db -16, -24, 1, OAM_XFLIP
	db -16, 24, 1, OAM_XFLIP

.data_b0a90
	db 14 ; size
	db -24, -32, 2, $0
	db -16, -32, 3, $0
	db -24, -24, 2, OAM_XFLIP
	db -16, -24, 3, OAM_XFLIP
	db -24, 16, 2, $0
	db -16, 16, 3, $0
	db -24, 24, 2, OAM_XFLIP
	db -16, 24, 3, OAM_XFLIP
	db -32, -40, 0, $0
	db -32, 24, 0, $0
	db -24, -40, 1, $0
	db -32, -32, 0, OAM_XFLIP
	db -32, 32, 0, OAM_XFLIP
	db -24, 32, 1, OAM_XFLIP

.data_b0ac9
	db 8 ; size
	db -24, -32, 2, $0
	db -16, -32, 3, $0
	db -24, -24, 2, OAM_XFLIP
	db -16, -24, 3, OAM_XFLIP
	db -24, 16, 2, $0
	db -16, 16, 3, $0
	db -24, 24, 2, OAM_XFLIP
	db -16, 24, 3, OAM_XFLIP

.data_b0aea
	db 14 ; size
	db -24, -32, 2, $0
	db -16, -32, 3, $0
	db -24, -24, 2, OAM_XFLIP
	db -16, -24, 3, OAM_XFLIP
	db -24, 16, 2, $0
	db -16, 16, 3, $0
	db -24, 24, 2, OAM_XFLIP
	db -16, 24, 3, OAM_XFLIP
	db -16, 8, 0, $0
	db -8, -24, 1, $0
	db -8, 8, 1, $0
	db -16, -16, 0, OAM_XFLIP
	db -8, -16, 1, OAM_XFLIP
	db -8, 16, 1, OAM_XFLIP

.data_b0b23
	db 14 ; size
	db -16, -24, 2, $0
	db -8, -24, 3, $0
	db -16, -16, 2, OAM_XFLIP
	db -8, -16, 3, OAM_XFLIP
	db -16, 8, 2, $0
	db -8, 8, 3, $0
	db -16, 16, 2, OAM_XFLIP
	db -8, 16, 3, OAM_XFLIP
	db -24, -32, 0, $0
	db -24, 16, 0, $0
	db -16, -32, 1, $0
	db -24, -24, 0, OAM_XFLIP
	db -24, 24, 0, OAM_XFLIP
	db -16, 24, 1, OAM_XFLIP

.data_b0b5c
	db 8 ; size
	db -16, -24, 2, $0
	db -8, -24, 3, $0
	db -16, -16, 2, OAM_XFLIP
	db -8, -16, 3, OAM_XFLIP
	db -16, 8, 2, $0
	db -8, 8, 3, $0
	db -16, 16, 2, OAM_XFLIP
	db -8, 16, 3, OAM_XFLIP

.data_b0b7d
	db 14 ; size
	db -16, -24, 2, $0
	db -8, -24, 3, $0
	db -16, -16, 2, OAM_XFLIP
	db -8, -16, 3, OAM_XFLIP
	db -16, 8, 2, $0
	db -8, 8, 3, $0
	db -16, 16, 2, OAM_XFLIP
	db -8, 16, 3, OAM_XFLIP
	db -8, 0, 0, $0
	db 0, 0, 1, $0
	db 0, -16, 1, $0
	db -8, -8, 0, OAM_XFLIP
	db 0, -8, 1, OAM_XFLIP
	db 0, 8, 1, OAM_XFLIP

.data_b0bb6
	db 14 ; size
	db -8, -16, 2, $0
	db 0, -16, 3, $0
	db -8, -8, 2, OAM_XFLIP
	db 0, -8, 3, OAM_XFLIP
	db -8, 0, 2, $0
	db 0, 0, 3, $0
	db -8, 8, 2, OAM_XFLIP
	db 0, 8, 3, OAM_XFLIP
	db -16, -24, 0, $0
	db -8, -24, 1, $0
	db -16, -16, 0, OAM_XFLIP
	db -16, 16, 0, OAM_XFLIP
	db -16, 8, 0, $0
	db -8, 16, 1, OAM_XFLIP

.data_b0bef
	db 8 ; size
	db -8, -16, 2, $0
	db 0, -16, 3, $0
	db -8, -8, 2, OAM_XFLIP
	db 0, -8, 3, OAM_XFLIP
	db -8, 0, 2, $0
	db 0, 0, 3, $0
	db -8, 8, 2, OAM_XFLIP
	db 0, 8, 3, OAM_XFLIP

.data_b0c10
	db 10 ; size
	db 0, -8, 4, $0
	db 0, 0, 5, $0
	db 8, -8, 6, $0
	db 8, 0, 7, $0
	db -8, -16, 0, $0
	db -8, 0, 0, $0
	db -8, -8, 0, OAM_XFLIP
	db -8, 8, 0, OAM_XFLIP
	db 0, -16, 1, $0
	db 0, 8, 1, OAM_XFLIP

.data_b0c39
	db 8 ; size
	db -22, -37, 2, $0
	db -14, -37, 3, $0
	db -22, -29, 2, OAM_XFLIP
	db -14, -29, 3, OAM_XFLIP
	db -22, 21, 2, $0
	db -14, 21, 3, $0
	db -22, 29, 2, OAM_XFLIP
	db -14, 29, 3, OAM_XFLIP

.data_b0c5a
	db 8 ; size
	db -16, -40, 2, $0
	db -8, -40, 3, $0
	db -16, -32, 2, OAM_XFLIP
	db -8, -32, 3, OAM_XFLIP
	db -16, 24, 2, $0
	db -8, 24, 3, $0
	db -16, 32, 2, OAM_XFLIP
	db -8, 32, 3, OAM_XFLIP

AnimData135::
	frame_table AnimFrameTable59
	frame_data 0, 12, 0, 0
	frame_data 1, 9, 0, 0
	frame_data 2, 9, 0, 0
	frame_data 3, 9, 0, 0
	frame_data 4, 9, 0, 0
	frame_data 5, 9, 0, 0
	frame_data 6, 9, 0, 0
	frame_data 7, 9, 0, 0
	frame_data 7, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable59::
	dw .data_b0cb6
	dw .data_b0ccf
	dw .data_b0ce8
	dw .data_b0d0d
	dw .data_b0d32
	dw .data_b0d57
	dw .data_b0d7c
	dw .data_b0da1

.data_b0cb6
	db 6 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 2, 0, $0
	db -4, 10, 1, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0

.data_b0ccf
	db 6 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0

.data_b0ce8
	db 9 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0
	db -5, 23, 5, $0
	db 3, 19, 6, $0
	db -5, 15, 5, OAM_XFLIP

.data_b0d0d
	db 9 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0
	db -13, 26, 5, $0
	db -5, 22, 6, $0
	db -13, 18, 5, OAM_XFLIP

.data_b0d32
	db 9 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0
	db -21, 24, 5, $0
	db -13, 20, 6, $0
	db -21, 16, 5, OAM_XFLIP

.data_b0d57
	db 9 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0
	db -29, 24, 5, $0
	db -21, 20, 6, $0
	db -29, 16, 5, OAM_XFLIP

.data_b0d7c
	db 9 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0
	db -32, 32, 5, $0
	db -24, 28, 6, $0
	db -32, 24, 5, OAM_XFLIP

.data_b0da1
	db 9 ; size
	db -4, -18, 0, $0
	db -4, -10, 1, $0
	db -4, 3, 2, $0
	db -4, 11, 3, $0
	db 4, -14, 4, $0
	db 4, 6, 4, $0
	db -32, 40, 5, $0
	db -24, 36, 6, $0
	db -32, 32, 5, OAM_XFLIP

AnimData136::
	frame_table AnimFrameTable60
	frame_data 0, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 0, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 0, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 0, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable60::
	dw .data_b0e19
	dw .data_b0e52
	dw .data_b0e8b
	dw .data_b0ec4

.data_b0e19
	db 14 ; size
	db -16, -16, 0, $0
	db -16, -8, 1, $0
	db -16, 0, 2, $0
	db -16, 8, 3, $0
	db -8, -16, 4, $0
	db -8, -8, 5, $0
	db -8, 0, 6, $0
	db -8, 8, 7, $0
	db 0, -16, 8, $0
	db 0, -8, 9, $0
	db 0, 0, 10, $0
	db 0, 8, 11, $0
	db 8, -8, 12, $0
	db 8, 0, 13, $0

.data_b0e52
	db 14 ; size
	db -16, 8, 0, OAM_XFLIP
	db -16, 0, 1, OAM_XFLIP
	db -16, -8, 2, OAM_XFLIP
	db -16, -16, 3, OAM_XFLIP
	db -8, 8, 4, OAM_XFLIP
	db -8, 0, 5, OAM_XFLIP
	db -8, -8, 6, OAM_XFLIP
	db -8, -16, 7, OAM_XFLIP
	db 0, 8, 8, OAM_XFLIP
	db 0, 0, 9, OAM_XFLIP
	db 0, -8, 10, OAM_XFLIP
	db 0, -16, 11, OAM_XFLIP
	db 8, 0, 12, OAM_XFLIP
	db 8, -8, 13, OAM_XFLIP

.data_b0e8b
	db 14 ; size
	db -16, -16, 14, $0
	db -16, -8, 15, $0
	db -16, 0, 16, $0
	db -16, 8, 17, $0
	db -8, -16, 18, $0
	db -8, -8, 19, $0
	db -8, 0, 20, $0
	db -8, 8, 21, $0
	db 0, -16, 22, $0
	db 0, -8, 23, $0
	db 0, 0, 24, $0
	db 0, 8, 25, $0
	db 8, -8, 26, $0
	db 8, 0, 27, $0

.data_b0ec4
	db 14 ; size
	db -16, 8, 14, OAM_XFLIP
	db -16, 0, 15, OAM_XFLIP
	db -16, -8, 16, OAM_XFLIP
	db -16, -16, 17, OAM_XFLIP
	db -8, 8, 18, OAM_XFLIP
	db -8, 0, 19, OAM_XFLIP
	db -8, -8, 20, OAM_XFLIP
	db -8, -16, 21, OAM_XFLIP
	db 0, 8, 22, OAM_XFLIP
	db 0, 0, 23, OAM_XFLIP
	db 0, -8, 24, OAM_XFLIP
	db 0, -16, 25, OAM_XFLIP
	db 8, 0, 26, OAM_XFLIP
	db 8, -8, 27, OAM_XFLIP

AnimData137::
	frame_table AnimFrameTable61
	frame_data 0, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 5, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable61::
	dw .data_b0f34
	dw .data_b0f39
	dw .data_b0f42
	dw .data_b0f5b
	dw .data_b0f80
	dw .data_b0fb1

.data_b0f34
	db 1 ; size
	db -16, 8, 0, $0

.data_b0f39
	db 2 ; size
	db -16, 8, 1, $0
	db 8, -16, 0, $0

.data_b0f42
	db 6 ; size
	db -20, 4, 2, $0
	db -20, 12, 2, OAM_XFLIP
	db -12, 12, 2, OAM_XFLIP | OAM_YFLIP
	db -12, 4, 2, OAM_YFLIP
	db 8, -16, 1, $0
	db 8, 16, 0, $0

.data_b0f5b
	db 9 ; size
	db -20, 4, 3, $0
	db -20, 12, 3, OAM_XFLIP
	db -12, 4, 3, OAM_YFLIP
	db -12, 12, 3, OAM_XFLIP | OAM_YFLIP
	db 4, -20, 2, $0
	db 4, -12, 2, OAM_XFLIP
	db 12, -12, 2, OAM_XFLIP | OAM_YFLIP
	db 12, -20, 2, OAM_YFLIP
	db 8, 16, 1, $0

.data_b0f80
	db 12 ; size
	db 4, -20, 3, $0
	db 4, -12, 3, OAM_XFLIP
	db 12, -20, 3, OAM_YFLIP
	db 12, -12, 3, OAM_XFLIP | OAM_YFLIP
	db 4, 12, 2, $0
	db 4, 20, 2, OAM_XFLIP
	db 12, 20, 2, OAM_XFLIP | OAM_YFLIP
	db 12, 12, 2, OAM_YFLIP
	db -20, 4, 2, $0
	db -20, 12, 2, OAM_XFLIP
	db -12, 12, 2, OAM_XFLIP | OAM_YFLIP
	db -12, 4, 2, OAM_YFLIP

.data_b0fb1
	db 12 ; size
	db 4, 12, 3, $0
	db 4, 20, 3, OAM_XFLIP
	db 12, 12, 3, OAM_YFLIP
	db 12, 20, 3, OAM_XFLIP | OAM_YFLIP
	db -20, 4, 3, $0
	db -20, 12, 3, OAM_XFLIP
	db -12, 4, 3, OAM_YFLIP
	db -12, 12, 3, OAM_XFLIP | OAM_YFLIP
	db 4, -20, 2, $0
	db 4, -12, 2, OAM_XFLIP
	db 12, -12, 2, OAM_XFLIP | OAM_YFLIP
	db 12, -20, 2, OAM_YFLIP

AnimData138::
	frame_table AnimFrameTable62
	frame_data 0, 6, -8, -4
	frame_data 0, 6, 0, 4
	frame_data 1, 6, 0, -4
	frame_data 1, 6, 0, 4
	frame_data 2, 6, 0, -4
	frame_data 2, 6, 0, 4
	frame_data 3, 6, 0, -4
	frame_data 3, 6, 0, 4
	frame_data 4, 6, 0, -4
	frame_data 4, 6, 0, 4
	frame_data 5, 6, 0, -4
	frame_data 5, 6, 0, 4
	frame_data 6, 6, 0, -4
	frame_data 6, 6, 0, 4
	frame_data 7, 6, 0, -4
	frame_data 7, 6, 0, 4
	frame_data 7, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable62::
	dw .data_b103d
	dw .data_b1046
	dw .data_b1067
	dw .data_b1088
	dw .data_b10b9
	dw .data_b10ea
	dw .data_b1113
	dw .data_b1134

.data_b103d
	db 2 ; size
	db -24, -8, 2, OAM_YFLIP
	db -16, -8, 0, $0

.data_b1046
	db 8 ; size
	db -16, 0, 2, OAM_YFLIP
	db -21, -16, 1, $0
	db -25, 17, 3, OAM_XFLIP
	db -8, 0, 0, $0
	db -16, -16, 2, $0
	db -26, 25, 3, $0
	db -17, 15, 0, $0
	db -18, 24, 0, $0

.data_b1067
	db 8 ; size
	db -8, 4, 2, OAM_YFLIP
	db -13, -22, 1, $0
	db -19, 21, 3, OAM_XFLIP
	db 0, 4, 0, $0
	db -8, -22, 2, $0
	db -11, 19, 0, $0
	db -12, 28, 0, $0
	db -20, 29, 3, $0

.data_b1088
	db 12 ; size
	db 5, 2, 2, OAM_YFLIP
	db -5, -24, 1, $0
	db -12, 24, 3, OAM_XFLIP
	db 13, 2, 0, $0
	db 0, -24, 2, $0
	db -4, 22, 0, $0
	db -5, 31, 0, $0
	db -13, 32, 3, $0
	db -20, -10, 7, $0
	db -28, -16, 5, $0
	db -28, -8, 6, $0
	db -36, -8, 4, $0

.data_b10b9
	db 12 ; size
	db 16, -2, 2, OAM_YFLIP
	db 10, -22, 1, $0
	db 0, 19, 3, OAM_XFLIP
	db 24, -2, 0, $0
	db 15, -22, 2, $0
	db -1, 27, 3, $0
	db 7, 26, 0, $0
	db 8, 17, 0, $0
	db -8, -5, 7, $0
	db -16, -11, 5, $0
	db -16, -3, 6, $0
	db -24, -3, 4, $0

.data_b10ea
	db 10 ; size
	db 21, -16, 1, $0
	db 10, 14, 3, OAM_XFLIP
	db 26, -16, 2, $0
	db 9, 22, 3, $0
	db 18, 12, 0, $0
	db 17, 21, 0, $0
	db 0, -9, 7, $0
	db -8, -15, 5, $0
	db -8, -7, 6, $0
	db -16, -7, 4, $0

.data_b1113
	db 8 ; size
	db 18, 10, 3, OAM_XFLIP
	db 17, 18, 3, $0
	db 26, 8, 0, $0
	db 25, 17, 0, $0
	db 12, -13, 7, $0
	db 4, -19, 5, $0
	db 4, -11, 6, $0
	db -4, -11, 4, $0

.data_b1134
	db 4 ; size
	db 24, -17, 7, $0
	db 16, -23, 5, $0
	db 16, -15, 6, $0
	db 8, -15, 4, $0

AnimData139::
	frame_table AnimFrameTable63
	frame_data 0, 16, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 0, 8, 0, 0
	frame_data 9, 4, 0, 0
	frame_data 10, 4, 0, 0
	frame_data 11, 4, 0, 0
	frame_data 12, 4, 0, 0
	frame_data 13, 4, 0, 0
	frame_data 14, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 0, 8, 0, 0
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable63::
	dw .data_b11d2
	dw .data_b11f3
	dw .data_b1218
	dw .data_b123d
	dw .data_b1262
	dw .data_b1287
	dw .data_b12ac
	dw .data_b12d1
	dw .data_b12f6
	dw .data_b131b
	dw .data_b1340
	dw .data_b1365
	dw .data_b139a
	dw .data_b13bf
	dw .data_b13ec

.data_b11d2
	db 8 ; size
	db -7, -32, 0, $0
	db -7, -24, 0, $0
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0

.data_b11f3
	db 9 ; size
	db -7, -24, 0, $0
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0
	db -8, -32, 1, $0
	db 0, -32, 1, OAM_YFLIP

.data_b1218
	db 9 ; size
	db -7, -32, 0, $0
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0
	db -8, -24, 1, $0
	db 0, -24, 1, OAM_YFLIP

.data_b123d
	db 9 ; size
	db -7, -32, 0, $0
	db -7, -24, 0, $0
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0
	db -8, -16, 1, $0
	db 0, -16, 1, OAM_YFLIP

.data_b1262
	db 9 ; size
	db -7, -24, 0, $0
	db -7, -16, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0
	db -8, -8, 1, $0
	db -7, -32, 0, $0
	db 0, -8, 1, OAM_YFLIP

.data_b1287
	db 9 ; size
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0
	db -8, 0, 1, $0
	db -7, -24, 0, $0
	db -7, -32, 0, $0
	db 0, 0, 1, OAM_YFLIP

.data_b12ac
	db 9 ; size
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 16, 0, $0
	db -7, 24, 0, $0
	db -7, -24, 0, $0
	db -7, 0, 0, $0
	db -8, 8, 1, $0
	db -7, -32, 0, $0
	db 0, 8, 1, OAM_YFLIP

.data_b12d1
	db 9 ; size
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 24, 0, $0
	db -7, -16, 0, $0
	db -7, 8, 0, $0
	db -8, 16, 1, $0
	db -7, -24, 0, $0
	db -7, -32, 0, $0
	db 0, 16, 1, OAM_YFLIP

.data_b12f6
	db 9 ; size
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, -8, 0, $0
	db -7, 16, 0, $0
	db -8, 24, 1, $0
	db -7, -16, 0, $0
	db -7, -24, 0, $0
	db -7, -32, 0, $0
	db 0, 24, 1, OAM_YFLIP

.data_b131b
	db 9 ; size
	db -7, 24, 0, $0
	db -8, -24, 5, $0
	db -7, -32, 0, $0
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db 0, -24, 5, OAM_YFLIP

.data_b1340
	db 9 ; size
	db -7, 24, 0, $0
	db -8, -16, 6, $0
	db -7, -32, 0, $0
	db -7, -24, 0, $0
	db -7, -8, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db 0, -16, 6, OAM_YFLIP

.data_b1365
	db 13 ; size
	db -7, 24, 0, $0
	db -8, -8, 7, $0
	db -7, -32, 0, $0
	db -7, -24, 0, $0
	db -7, -16, 0, $0
	db -7, 0, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db 0, -8, 7, OAM_YFLIP
	db -16, -8, 4, $0
	db 8, -8, 4, OAM_YFLIP
	db -24, -8, 2, $0
	db 16, -8, 2, OAM_YFLIP

.data_b139a
	db 9 ; size
	db -7, 24, 0, $0
	db -8, 0, 8, $0
	db -7, -32, 0, $0
	db -7, -24, 0, $0
	db -7, -16, 0, $0
	db -7, -8, 0, $0
	db -7, 8, 0, $0
	db -7, 16, 0, $0
	db 0, 0, 8, OAM_YFLIP

.data_b13bf
	db 11 ; size
	db -7, 24, 0, $0
	db -16, 8, 3, $0
	db -8, 8, 9, $0
	db -7, -32, 0, $0
	db -7, 16, 0, $0
	db -7, 0, 0, $0
	db -7, -8, 0, $0
	db -7, -16, 0, $0
	db -7, -24, 0, $0
	db 8, 8, 3, OAM_YFLIP
	db 0, 8, 9, OAM_YFLIP

.data_b13ec
	db 13 ; size
	db -7, 24, 0, $0
	db -24, 16, 2, $0
	db -16, 16, 4, $0
	db -8, 16, 10, $0
	db -7, -32, 0, $0
	db -7, 8, 0, $0
	db -7, 0, 0, $0
	db -7, -8, 0, $0
	db -7, -16, 0, $0
	db -7, -24, 0, $0
	db 16, 16, 2, OAM_YFLIP
	db 8, 16, 4, OAM_YFLIP
	db 0, 16, 10, OAM_YFLIP

AnimData140::
	frame_table AnimFrameTable64
	frame_data 0, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 7, 6, 0, 0
	frame_data 8, 6, 0, 0
	frame_data 9, 6, 0, 0
	frame_data 10, 6, 0, 0
	frame_data 11, 6, 0, 0
	frame_data 12, 6, 0, 0
	frame_data 13, 6, 0, 0
	frame_data 14, 6, 0, 0
	frame_data 14, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable64::
	dw .data_b1486
	dw .data_b1497
	dw .data_b14b0
	dw .data_b14c5
	dw .data_b14e2
	dw .data_b1503
	dw .data_b152c
	dw .data_b1559
	dw .data_b158a
	dw .data_b15bb
	dw .data_b15f4
	dw .data_b1631
	dw .data_b166e
	dw .data_b16a3
	dw .data_b16d4

.data_b1486
	db 4 ; size
	db -72, 0, 0, $0
	db -72, -64, 0, OAM_XFLIP
	db -64, 40, 0, $0
	db -72, 24, 0, OAM_XFLIP

.data_b1497
	db 6 ; size
	db -66, -22, 0, $0
	db -66, -42, 0, OAM_XFLIP
	db -50, 18, 0, $0
	db -72, -8, 0, OAM_XFLIP
	db -72, 40, 0, $0
	db -66, 54, 0, OAM_XFLIP

.data_b14b0
	db 5 ; size
	db -64, -32, 0, OAM_XFLIP
	db -48, 8, 0, $0
	db -66, 22, 0, OAM_XFLIP
	db -58, 2, 0, $0
	db -64, 56, 0, OAM_XFLIP

.data_b14c5
	db 7 ; size
	db -56, -24, 0, OAM_XFLIP
	db -56, -40, 0, $0
	db -40, 16, 0, OAM_XFLIP
	db -64, 32, 0, OAM_XFLIP
	db -56, -8, 0, $0
	db -56, 48, 0, $0
	db -66, -62, 0, $0

.data_b14e2
	db 8 ; size
	db -50, 6, 0, OAM_XFLIP
	db -50, -62, 0, $0
	db -26, 46, 0, OAM_XFLIP
	db -56, 24, 0, $0
	db -48, 0, 0, OAM_XFLIP
	db -42, 18, 0, $0
	db -64, -72, 0, $0
	db -64, -24, 0, $0

.data_b1503
	db 10 ; size
	db -48, 16, 0, OAM_XFLIP
	db -48, -72, 0, $0
	db -24, 56, 0, OAM_XFLIP
	db -50, -6, 0, $0
	db -34, 38, 0, OAM_XFLIP
	db -40, 0, 0, $0
	db -56, -64, 0, OAM_XFLIP
	db -64, -32, 0, $0
	db -72, 48, 0, $0
	db -72, 0, 0, $0

.data_b152c
	db 11 ; size
	db -40, 8, 0, $0
	db -40, -64, 0, OAM_XFLIP
	db -16, 48, 0, $0
	db -48, -16, 0, $0
	db -32, 56, 0, OAM_XFLIP
	db -32, 8, 0, OAM_XFLIP
	db -42, -34, 0, OAM_XFLIP
	db -56, -24, 0, OAM_XFLIP
	db -64, 24, 0, $0
	db -72, -48, 0, OAM_XFLIP
	db -64, -32, 0, $0

.data_b1559
	db 12 ; size
	db -34, -18, 0, $0
	db -26, -30, 0, OAM_XFLIP
	db -2, 14, 0, $0
	db -40, -8, 0, OAM_XFLIP
	db -24, 48, 0, $0
	db -18, 50, 0, OAM_XFLIP
	db -40, -24, 0, OAM_XFLIP
	db -48, 8, 0, OAM_XFLIP
	db -64, 16, 0, $0
	db -72, -72, 0, OAM_XFLIP
	db -64, -8, 0, OAM_XFLIP
	db -64, -40, 0, $0

.data_b158a
	db 12 ; size
	db -32, -40, 0, $0
	db -24, -16, 0, OAM_XFLIP
	db 0, 0, 0, $0
	db -26, 18, 0, OAM_XFLIP
	db -10, 14, 0, $0
	db -16, 64, 0, OAM_XFLIP
	db -32, -32, 0, $0
	db -48, 16, 0, OAM_XFLIP
	db -56, 24, 0, OAM_XFLIP
	db -64, -40, 0, OAM_XFLIP
	db -64, 0, 0, OAM_XFLIP
	db -56, -32, 0, OAM_XFLIP

.data_b15bb
	db 14 ; size
	db -24, -24, 0, OAM_XFLIP
	db -16, -24, 0, $0
	db 8, 8, 0, OAM_XFLIP
	db -24, 32, 0, OAM_XFLIP
	db -8, 0, 0, $0
	db -8, 56, 0, $0
	db -10, -58, 0, $0
	db -40, 8, 0, $0
	db -48, 64, 0, OAM_XFLIP
	db -72, -16, 0, $0
	db -64, -32, 0, OAM_XFLIP
	db -56, -8, 0, $0
	db -48, 24, 0, OAM_XFLIP
	db -72, 48, 0, $0

.data_b15f4
	db 15 ; size
	db -18, 14, 0, OAM_XFLIP
	db -2, -58, 0, $0
	db 14, 46, 0, OAM_XFLIP
	db -16, 24, 0, $0
	db 0, 8, 0, OAM_XFLIP
	db 6, 30, 0, $0
	db -8, -72, 0, $0
	db -32, -24, 0, $0
	db -48, 72, 0, OAM_XFLIP
	db -64, -56, 0, $0
	db -56, -40, 0, $0
	db -48, -56, 0, $0
	db -48, 32, 0, OAM_XFLIP
	db -72, 16, 0, $0
	db -64, 8, 0, $0

.data_b1631
	db 15 ; size
	db -16, 24, 0, OAM_XFLIP
	db 0, -72, 0, $0
	db 16, 56, 0, OAM_XFLIP
	db -2, -10, 0, $0
	db 14, 54, 0, OAM_XFLIP
	db 8, 16, 0, $0
	db 0, -64, 0, OAM_XFLIP
	db -32, -32, 0, $0
	db -40, 64, 0, $0
	db -64, -64, 0, $0
	db -48, -80, 0, $0
	db -48, -64, 0, $0
	db -40, 24, 0, $0
	db -64, -24, 0, $0
	db -64, 0, 0, $0

.data_b166e
	db 13 ; size
	db -8, 16, 0, $0
	db 8, -64, 0, OAM_XFLIP
	db 0, -24, 0, $0
	db 16, 72, 0, OAM_XFLIP
	db 16, 24, 0, OAM_XFLIP
	db 14, -18, 0, OAM_XFLIP
	db -24, -24, 0, OAM_XFLIP
	db -24, 32, 0, $0
	db -56, -56, 0, OAM_XFLIP
	db -40, -56, 0, OAM_XFLIP
	db -32, -16, 0, $0
	db -64, -32, 0, $0
	db -56, 8, 0, OAM_XFLIP

.data_b16a3
	db 12 ; size
	db 6, -26, 0, $0
	db 22, -22, 0, OAM_XFLIP
	db 8, -16, 0, OAM_XFLIP
	db 16, 0, 0, OAM_XFLIP
	db -16, 16, 0, OAM_XFLIP
	db -32, 24, 0, $0
	db -48, -24, 0, OAM_XFLIP
	db -40, -80, 0, OAM_XFLIP
	db -24, -16, 0, OAM_XFLIP
	db -32, -24, 0, $0
	db -56, -24, 0, OAM_XFLIP
	db -48, 48, 0, OAM_XFLIP

.data_b16d4
	db 11 ; size
	db 16, -48, 0, $0
	db 22, 26, 0, OAM_XFLIP
	db 24, -8, 0, $0
	db -16, 24, 0, OAM_XFLIP
	db -24, 32, 0, OAM_XFLIP
	db -40, -32, 0, $0
	db -24, -40, 0, OAM_XFLIP
	db -24, -8, 0, OAM_XFLIP
	db -24, -16, 0, OAM_XFLIP
	db -48, 24, 0, OAM_XFLIP
	db -48, 64, 0, OAM_XFLIP

AnimData141::
	frame_table AnimFrameTable65
	frame_data 0, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 8, 8, 0, 0
	frame_data 9, 8, 0, 0
	frame_data 10, 8, 0, 0
	frame_data 11, 16, 0, 0
	frame_data 11, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable65::
	dw .data_b1754
	dw .data_b1785
	dw .data_b17b6
	dw .data_b17e7
	dw .data_b1818
	dw .data_b1849
	dw .data_b187a
	dw .data_b18ab
	dw .data_b18dc
	dw .data_b194d
	dw .data_b19be
	dw .data_b1a2f

.data_b1754
	db 12 ; size
	db -24, -32, 0, $0
	db -24, -24, 1, $0
	db -16, -32, 2, $0
	db -24, 24, 0, OAM_XFLIP
	db -24, 16, 1, OAM_XFLIP
	db -16, 24, 2, OAM_XFLIP
	db 16, -32, 0, OAM_YFLIP
	db 16, -24, 1, OAM_YFLIP
	db 8, -32, 2, OAM_YFLIP
	db 16, 24, 0, OAM_XFLIP | OAM_YFLIP
	db 16, 16, 1, OAM_XFLIP | OAM_YFLIP
	db 8, 24, 2, OAM_XFLIP | OAM_YFLIP

.data_b1785
	db 12 ; size
	db -24, -32, 3, $0
	db -24, -24, 4, $0
	db -16, -32, 5, $0
	db -24, 24, 3, OAM_XFLIP
	db -24, 16, 4, OAM_XFLIP
	db -16, 24, 5, OAM_XFLIP
	db 16, -32, 3, OAM_YFLIP
	db 16, -24, 4, OAM_YFLIP
	db 8, -32, 5, OAM_YFLIP
	db 16, 24, 3, OAM_XFLIP | OAM_YFLIP
	db 16, 16, 4, OAM_XFLIP | OAM_YFLIP
	db 8, 24, 5, OAM_XFLIP | OAM_YFLIP

.data_b17b6
	db 12 ; size
	db -24, -32, 6, $0
	db -24, -24, 7, $0
	db -16, -32, 8, $0
	db -24, 24, 6, OAM_XFLIP
	db -24, 16, 7, OAM_XFLIP
	db -16, 24, 8, OAM_XFLIP
	db 16, -32, 6, OAM_YFLIP
	db 16, -24, 7, OAM_YFLIP
	db 8, -32, 8, OAM_YFLIP
	db 16, 24, 6, OAM_XFLIP | OAM_YFLIP
	db 16, 16, 7, OAM_XFLIP | OAM_YFLIP
	db 8, 24, 8, OAM_XFLIP | OAM_YFLIP

.data_b17e7
	db 12 ; size
	db -24, -32, 9, $0
	db -24, -24, 10, $0
	db -16, -32, 11, $0
	db -24, 24, 9, OAM_XFLIP
	db -24, 16, 10, OAM_XFLIP
	db -16, 24, 11, OAM_XFLIP
	db 16, -32, 9, OAM_YFLIP
	db 16, -24, 10, OAM_YFLIP
	db 8, -32, 11, OAM_YFLIP
	db 16, 24, 9, OAM_XFLIP | OAM_YFLIP
	db 16, 16, 10, OAM_XFLIP | OAM_YFLIP
	db 8, 24, 11, OAM_XFLIP | OAM_YFLIP

.data_b1818
	db 12 ; size
	db -21, -28, 9, $0
	db -21, -20, 10, $0
	db -13, -28, 11, $0
	db -21, 20, 9, OAM_XFLIP
	db -21, 12, 10, OAM_XFLIP
	db -13, 20, 11, OAM_XFLIP
	db 13, -28, 9, OAM_YFLIP
	db 13, -20, 10, OAM_YFLIP
	db 5, -28, 11, OAM_YFLIP
	db 13, 20, 9, OAM_XFLIP | OAM_YFLIP
	db 13, 12, 10, OAM_XFLIP | OAM_YFLIP
	db 5, 20, 11, OAM_XFLIP | OAM_YFLIP

.data_b1849
	db 12 ; size
	db -18, -24, 9, $0
	db -18, -16, 10, $0
	db -10, -24, 11, $0
	db -18, 16, 9, OAM_XFLIP
	db -18, 8, 10, OAM_XFLIP
	db -10, 16, 11, OAM_XFLIP
	db 10, -24, 9, OAM_YFLIP
	db 10, -16, 10, OAM_YFLIP
	db 2, -24, 11, OAM_YFLIP
	db 10, 16, 9, OAM_XFLIP | OAM_YFLIP
	db 10, 8, 10, OAM_XFLIP | OAM_YFLIP
	db 2, 16, 11, OAM_XFLIP | OAM_YFLIP

.data_b187a
	db 12 ; size
	db -15, -20, 9, $0
	db -15, -12, 10, $0
	db -7, -20, 11, $0
	db -15, 12, 9, OAM_XFLIP
	db -15, 4, 10, OAM_XFLIP
	db -7, 12, 11, OAM_XFLIP
	db 7, -20, 9, OAM_YFLIP
	db 7, -12, 10, OAM_YFLIP
	db -1, -20, 11, OAM_YFLIP
	db 7, 12, 9, OAM_XFLIP | OAM_YFLIP
	db 7, 4, 10, OAM_XFLIP | OAM_YFLIP
	db -1, 12, 11, OAM_XFLIP | OAM_YFLIP

.data_b18ab
	db 12 ; size
	db 4, -16, 9, OAM_YFLIP
	db 4, -8, 10, OAM_YFLIP
	db -4, -16, 11, OAM_YFLIP
	db 4, 8, 9, OAM_XFLIP | OAM_YFLIP
	db 4, 0, 10, OAM_XFLIP | OAM_YFLIP
	db -4, 8, 11, OAM_XFLIP | OAM_YFLIP
	db -12, -16, 9, $0
	db -12, -8, 10, $0
	db -4, -16, 11, $0
	db -12, 8, 9, OAM_XFLIP
	db -12, 0, 10, OAM_XFLIP
	db -4, 8, 11, OAM_XFLIP

.data_b18dc
	db 28 ; size
	db -20, -16, 12, $0
	db -20, -8, 13, $0
	db -20, 8, 12, OAM_XFLIP
	db -20, 0, 13, OAM_XFLIP
	db 12, -16, 12, OAM_YFLIP
	db 12, -8, 13, OAM_YFLIP
	db 12, 8, 12, OAM_XFLIP | OAM_YFLIP
	db 12, 0, 13, OAM_XFLIP | OAM_YFLIP
	db -16, 16, 20, $0
	db -8, 16, 21, $0
	db 0, 16, 21, $0
	db 8, 16, 20, OAM_YFLIP
	db -16, -24, 20, OAM_XFLIP
	db -8, -24, 21, OAM_XFLIP
	db 0, -24, 21, OAM_XFLIP
	db 8, -24, 20, OAM_XFLIP | OAM_YFLIP
	db 4, -16, 9, OAM_YFLIP
	db 4, -8, 10, OAM_YFLIP
	db -4, -16, 11, OAM_YFLIP
	db 4, 8, 9, OAM_XFLIP | OAM_YFLIP
	db 4, 0, 10, OAM_XFLIP | OAM_YFLIP
	db -4, 8, 11, OAM_XFLIP | OAM_YFLIP
	db -12, -16, 9, $0
	db -12, -8, 10, $0
	db -4, -16, 11, $0
	db -12, 8, 9, OAM_XFLIP
	db -12, 0, 10, OAM_XFLIP
	db -4, 8, 11, OAM_XFLIP

.data_b194d
	db 28 ; size
	db 12, 8, 14, OAM_XFLIP | OAM_YFLIP
	db 12, 0, 15, OAM_XFLIP | OAM_YFLIP
	db 8, 16, 22, OAM_YFLIP
	db 0, 16, 23, OAM_YFLIP
	db 12, -16, 14, OAM_YFLIP
	db 12, -8, 15, OAM_YFLIP
	db 8, -24, 22, OAM_XFLIP | OAM_YFLIP
	db 0, -24, 23, OAM_XFLIP | OAM_YFLIP
	db -20, 8, 14, OAM_XFLIP
	db -20, 0, 15, OAM_XFLIP
	db -16, 16, 22, $0
	db -8, 16, 23, $0
	db -20, -16, 14, $0
	db -20, -8, 15, $0
	db -16, -24, 22, OAM_XFLIP
	db -8, -24, 23, OAM_XFLIP
	db 4, -16, 9, OAM_YFLIP
	db 4, -8, 10, OAM_YFLIP
	db -4, -16, 11, OAM_YFLIP
	db 4, 8, 9, OAM_XFLIP | OAM_YFLIP
	db 4, 0, 10, OAM_XFLIP | OAM_YFLIP
	db -4, 8, 11, OAM_XFLIP | OAM_YFLIP
	db -12, -16, 9, $0
	db -12, -8, 10, $0
	db -4, -16, 11, $0
	db -12, 8, 9, OAM_XFLIP
	db -12, 0, 10, OAM_XFLIP
	db -4, 8, 11, OAM_XFLIP

.data_b19be
	db 28 ; size
	db 12, 8, 16, OAM_XFLIP | OAM_YFLIP
	db 12, 0, 17, OAM_XFLIP | OAM_YFLIP
	db 8, 16, 24, OAM_YFLIP
	db 0, 16, 25, OAM_YFLIP
	db 12, -16, 16, OAM_YFLIP
	db 12, -8, 17, OAM_YFLIP
	db 8, -24, 24, OAM_XFLIP | OAM_YFLIP
	db 0, -24, 25, OAM_XFLIP | OAM_YFLIP
	db -20, 8, 16, OAM_XFLIP
	db -20, 0, 17, OAM_XFLIP
	db -16, 16, 24, $0
	db -8, 16, 25, $0
	db -20, -16, 16, $0
	db -20, -8, 17, $0
	db -16, -24, 24, OAM_XFLIP
	db -8, -24, 25, OAM_XFLIP
	db 4, -16, 9, OAM_YFLIP
	db 4, -8, 10, OAM_YFLIP
	db -4, -16, 11, OAM_YFLIP
	db 4, 8, 9, OAM_XFLIP | OAM_YFLIP
	db 4, 0, 10, OAM_XFLIP | OAM_YFLIP
	db -4, 8, 11, OAM_XFLIP | OAM_YFLIP
	db -12, -16, 9, $0
	db -12, -8, 10, $0
	db -4, -16, 11, $0
	db -12, 8, 9, OAM_XFLIP
	db -12, 0, 10, OAM_XFLIP
	db -4, 8, 11, OAM_XFLIP

.data_b1a2f
	db 28 ; size
	db 12, 8, 18, OAM_XFLIP | OAM_YFLIP
	db 12, 0, 19, OAM_XFLIP | OAM_YFLIP
	db 8, 16, 26, OAM_YFLIP
	db 0, 16, 27, OAM_YFLIP
	db 12, -16, 18, OAM_YFLIP
	db 12, -8, 19, OAM_YFLIP
	db 8, -24, 26, OAM_XFLIP | OAM_YFLIP
	db 0, -24, 27, OAM_XFLIP | OAM_YFLIP
	db -20, 8, 18, OAM_XFLIP
	db -20, 0, 19, OAM_XFLIP
	db -16, 16, 26, $0
	db -8, 16, 27, $0
	db -20, -16, 18, $0
	db -20, -8, 19, $0
	db -16, -24, 26, OAM_XFLIP
	db -8, -24, 27, OAM_XFLIP
	db 4, -16, 9, OAM_YFLIP
	db 4, -8, 10, OAM_YFLIP
	db -4, -16, 11, OAM_YFLIP
	db 4, 8, 9, OAM_XFLIP | OAM_YFLIP
	db 4, 0, 10, OAM_XFLIP | OAM_YFLIP
	db -4, 8, 11, OAM_XFLIP | OAM_YFLIP
	db -12, -16, 9, $0
	db -12, -8, 10, $0
	db -4, -16, 11, $0
	db -12, 8, 9, OAM_XFLIP
	db -12, 0, 10, OAM_XFLIP
	db -4, 8, 11, OAM_XFLIP

AnimData142::
	frame_table AnimFrameTable66
	frame_data 0, 5, 0, 0
	frame_data 1, 5, 0, 0
	frame_data 2, 5, 0, 0
	frame_data 3, 5, 0, 0
	frame_data 4, 5, 0, 0
	frame_data 5, 5, 0, 0
	frame_data 6, 26, 0, 0
	frame_data 6, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable66::
	dw .data_b1ad5
	dw .data_b1aee
	dw .data_b1b17
	dw .data_b1b50
	dw .data_b1b99
	dw .data_b1bf2
	dw .data_b1c5b

.data_b1ad5
	db 6 ; size
	db -24, -8, 21, $0
	db -24, 0, 21, $0
	db -24, -24, 20, $0
	db -24, -16, 21, $0
	db -24, 8, 21, $0
	db -24, 16, 20, OAM_XFLIP

.data_b1aee
	db 10 ; size
	db -24, -16, 0, $0
	db -24, -8, 1, $0
	db -24, 0, 1, $0
	db -24, 8, 2, $0
	db -16, -8, 21, $0
	db -16, 0, 21, $0
	db -16, -24, 20, $0
	db -16, -16, 21, $0
	db -16, 8, 21, $0
	db -16, 16, 20, OAM_XFLIP

.data_b1b17
	db 14 ; size
	db -24, -16, 0, $0
	db -24, -8, 1, $0
	db -24, 0, 1, $0
	db -16, -16, 3, $0
	db -16, -8, 4, $0
	db -16, 0, 5, $0
	db -24, 8, 2, $0
	db -16, 8, 6, $0
	db -8, -8, 21, $0
	db -8, 0, 21, $0
	db -8, -24, 20, $0
	db -8, -16, 21, $0
	db -8, 8, 21, $0
	db -8, 16, 20, OAM_XFLIP

.data_b1b50
	db 18 ; size
	db -24, -16, 0, $0
	db -24, -8, 1, $0
	db -24, 0, 1, $0
	db -16, -16, 3, $0
	db -16, -8, 4, $0
	db -16, 0, 5, $0
	db -8, -16, 7, $0
	db -8, -8, 5, $0
	db -8, 0, 8, $0
	db -24, 8, 2, $0
	db -16, 8, 6, $0
	db -8, 8, 9, $0
	db 0, -8, 21, $0
	db 0, 0, 21, $0
	db 0, -24, 20, $0
	db 0, -16, 21, $0
	db 0, 8, 21, $0
	db 0, 16, 20, OAM_XFLIP

.data_b1b99
	db 22 ; size
	db -24, -16, 0, $0
	db -24, -8, 1, $0
	db -24, 0, 1, $0
	db -16, -16, 3, $0
	db -16, -8, 4, $0
	db -16, 0, 5, $0
	db -8, -16, 7, $0
	db -8, -8, 5, $0
	db -8, 0, 8, $0
	db 0, -16, 10, $0
	db 0, -8, 8, $0
	db 0, 0, 11, $0
	db -24, 8, 2, $0
	db -16, 8, 6, $0
	db -8, 8, 9, $0
	db 0, 8, 12, $0
	db 8, -8, 21, $0
	db 8, 0, 21, $0
	db 8, -24, 20, $0
	db 8, -16, 21, $0
	db 8, 8, 21, $0
	db 8, 16, 20, OAM_XFLIP

.data_b1bf2
	db 26 ; size
	db -24, -16, 0, $0
	db -24, -8, 1, $0
	db -24, 0, 1, $0
	db -16, -16, 3, $0
	db -16, -8, 4, $0
	db -16, 0, 5, $0
	db -8, -16, 7, $0
	db -8, -8, 5, $0
	db -8, 0, 8, $0
	db 0, -16, 10, $0
	db 0, -8, 8, $0
	db 0, 0, 11, $0
	db 8, -16, 13, $0
	db 8, -8, 11, $0
	db 8, 0, 14, $0
	db -24, 8, 2, $0
	db -16, 8, 6, $0
	db -8, 8, 9, $0
	db 0, 8, 12, $0
	db 8, 8, 15, $0
	db 16, -8, 21, $0
	db 16, 0, 21, $0
	db 16, -24, 20, $0
	db 16, -16, 21, $0
	db 16, 8, 21, $0
	db 16, 16, 20, OAM_XFLIP

.data_b1c5b
	db 24 ; size
	db -24, -16, 0, $0
	db -24, -8, 1, $0
	db -24, 0, 1, $0
	db -16, -16, 3, $0
	db -16, -8, 4, $0
	db -16, 0, 5, $0
	db -8, -16, 7, $0
	db -8, -8, 5, $0
	db -8, 0, 8, $0
	db 0, -16, 10, $0
	db 0, -8, 8, $0
	db 0, 0, 11, $0
	db 8, -16, 13, $0
	db 8, -8, 11, $0
	db 8, 0, 14, $0
	db -24, 8, 2, $0
	db -16, 8, 6, $0
	db -8, 8, 9, $0
	db 0, 8, 12, $0
	db 8, 8, 15, $0
	db 16, -16, 16, $0
	db 16, -8, 17, $0
	db 16, 0, 18, $0
	db 16, 8, 19, $0

AnimData143::
	frame_table AnimFrameTable67
	frame_data 0, 2, 0, 0
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data 0, 2, 20, 7
	frame_data -1, 8, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, 2, -20, -7
	frame_data 1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable67::
	dw .data_b1d17
	dw .data_b1d64

.data_b1d17
	db 19 ; size
	db -44, -104, 3, $0
	db -43, -96, 4, $0
	db -42, -88, 14, $0
	db -41, -80, 15, $0
	db -51, -96, 10, $0
	db -50, -88, 11, $0
	db -49, -80, 12, $0
	db -48, -72, 13, $0
	db -59, -96, 6, $0
	db -58, -88, 7, $0
	db -57, -80, 8, $0
	db -56, -72, 9, $0
	db -67, -96, 3, $0
	db -66, -88, 4, $0
	db -65, -80, 5, $0
	db -74, -88, 0, $0
	db -73, -80, 1, $0
	db -72, -72, 2, $0
	db -64, -72, 2, OAM_YFLIP

.data_b1d64
	db 19 ; size
	db -36, -64, 3, OAM_XFLIP
	db -37, -72, 4, OAM_XFLIP
	db -38, -80, 14, OAM_XFLIP
	db -39, -88, 15, OAM_XFLIP
	db -45, -72, 10, OAM_XFLIP
	db -46, -80, 11, OAM_XFLIP
	db -47, -88, 12, OAM_XFLIP
	db -48, -96, 13, OAM_XFLIP
	db -53, -72, 6, OAM_XFLIP
	db -54, -80, 7, OAM_XFLIP
	db -55, -88, 8, OAM_XFLIP
	db -56, -96, 9, OAM_XFLIP
	db -61, -72, 3, OAM_XFLIP
	db -62, -80, 4, OAM_XFLIP
	db -63, -88, 5, OAM_XFLIP
	db -70, -80, 0, OAM_XFLIP
	db -71, -88, 1, OAM_XFLIP
	db -72, -96, 2, OAM_XFLIP
	db -64, -96, 2, OAM_XFLIP | OAM_YFLIP

AnimData144::
	frame_table AnimFrameTable68
	frame_data 0, 8, -24, 16
	frame_data 0, 8, 32, 0
	frame_data 1, 8, 8, -10
	frame_data 2, 8, -16, -16
	frame_data 2, 8, -20, 0
	frame_data 1, 8, 0, 16
	frame_data 1, 8, 14, -6
	frame_data 1, 8, 14, -8
	frame_data 1, 8, 8, -10
	frame_data 1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable68::
	dw .data_b1de6
	dw .data_b1df7
	dw .data_b1e24

.data_b1de6
	db 4 ; size
	db -7, -7, 0, $0
	db -7, 1, 1, $0
	db 1, -7, 2, $0
	db 1, 1, 3, $0

.data_b1df7
	db 11 ; size
	db -23, -8, 4, $0
	db -23, 0, 5, $0
	db -23, 8, 6, $0
	db -15, -8, 7, $0
	db -15, 0, 8, $0
	db -15, 8, 9, $0
	db -7, -8, 10, $0
	db -7, 0, 11, $0
	db -7, 8, 12, $0
	db 1, 0, 13, $0
	db 1, 8, 14, $0

.data_b1e24
	db 11 ; size
	db -23, 16, 4, OAM_XFLIP
	db -23, 8, 5, OAM_XFLIP
	db -23, 0, 6, OAM_XFLIP
	db -15, 16, 7, OAM_XFLIP
	db -15, 8, 8, OAM_XFLIP
	db -15, 0, 9, OAM_XFLIP
	db -7, 16, 10, OAM_XFLIP
	db -7, 8, 11, OAM_XFLIP
	db -7, 0, 12, OAM_XFLIP
	db 1, 8, 13, OAM_XFLIP
	db 1, 0, 14, OAM_XFLIP

AnimData145::
	frame_table AnimFrameTable68
	frame_data 1, 6, -80, -58
	frame_data 1, 6, 32, 0
	frame_data 1, 6, 32, 0
	frame_data 1, 6, 32, 0
	frame_data 1, 6, 32, 0
	frame_data 1, 4, 16, 8
	frame_data 2, 4, 0, 8
	frame_data 2, 6, -32, 0
	frame_data 2, 6, -32, 0
	frame_data 2, 6, -32, 0
	frame_data 2, 6, -32, 0
	frame_data 2, 4, -16, 8
	frame_data 1, 4, 0, 8
	frame_data 1, 6, 32, 0
	frame_data 1, 6, 32, 0
	frame_data 1, 6, 32, 0
	frame_data 1, 6, 32, 0
	frame_data 1, 4, 16, 8
	frame_data 2, 4, 0, 8
	frame_data 2, 6, -32, 0
	frame_data 2, 6, -32, 0
	frame_data 2, 6, -32, 0
	frame_data 2, 6, -32, 0
	frame_data 2, 4, -16, 8
	frame_data 1, 4, 0, 8
	frame_data 1, 3, 32, 0
	frame_data 1, 3, 32, 0
	frame_data 1, 3, 32, 0
	frame_data 1, 3, 32, 0
	frame_data 1, 3, 32, 0
	frame_data 1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData146::
	frame_table AnimFrameTable69
	frame_data 0, 9, 0, 0
	frame_data 1, 9, 0, 0
	frame_data 0, 9, 0, 0
	frame_data 1, 9, 0, 0
	frame_data 0, 9, 0, 0
	frame_data 1, 9, 0, 0
	frame_data 0, 9, 0, 0
	frame_data 1, 9, 0, 0
	frame_data 2, 9, 0, 0
	frame_data 3, 9, 0, 0
	frame_data 4, 9, 0, 0
	frame_data 5, 9, 0, 0
	frame_data 6, 9, 0, 0
	frame_data 5, 9, 0, 0
	frame_data 4, 9, 0, 0
	frame_data 5, 9, 0, 0
	frame_data 6, 9, 0, 0
	frame_data 6, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable69::
	dw .data_b1f31
	dw .data_b1f4a
	dw .data_b1f63
	dw .data_b1f8c
	dw .data_b1fb9
	dw .data_b1ffa
	dw .data_b203b

.data_b1f31
	db 6 ; size
	db -8, -16, 0, $0
	db -8, 8, 2, $0
	db -8, 16, 3, OAM_YFLIP
	db -8, 0, 1, OAM_XFLIP
	db -8, -24, 1, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 3, $0

.data_b1f4a
	db 6 ; size
	db -8, -16, 2, $0
	db -8, 8, 0, $0
	db -8, 16, 1, OAM_YFLIP
	db -8, 0, 3, OAM_XFLIP
	db -8, -24, 3, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 1, $0

.data_b1f63
	db 10 ; size
	db 0, -20, 5, $0
	db 8, -20, 6, $0
	db -8, -16, 0, $0
	db -8, 8, 2, $0
	db -8, 16, 3, OAM_YFLIP
	db -8, 0, 1, OAM_XFLIP
	db -8, -24, 1, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 3, $0
	db 0, -12, 5, OAM_XFLIP
	db 8, -12, 6, OAM_XFLIP

.data_b1f8c
	db 11 ; size
	db 0, -16, 4, $0
	db 8, -20, 5, $0
	db 16, -20, 6, $0
	db -8, -16, 2, $0
	db -8, 8, 0, $0
	db -8, 16, 1, OAM_YFLIP
	db -8, 0, 3, OAM_XFLIP
	db -8, -24, 3, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 1, $0
	db 8, -12, 5, OAM_XFLIP
	db 16, -12, 6, OAM_XFLIP

.data_b1fb9
	db 16 ; size
	db 0, -16, 4, $0
	db 8, -16, 4, $0
	db 16, -20, 5, $0
	db 0, 4, 5, $0
	db 8, 4, 6, $0
	db 24, -20, 6, $0
	db -8, -16, 0, $0
	db -8, 8, 2, $0
	db -8, 16, 3, OAM_YFLIP
	db -8, 0, 1, OAM_XFLIP
	db -8, -24, 1, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 3, $0
	db 16, -12, 5, OAM_XFLIP
	db 24, -12, 6, OAM_XFLIP
	db 0, 12, 5, OAM_XFLIP
	db 8, 12, 6, OAM_XFLIP

.data_b1ffa
	db 16 ; size
	db 0, -16, 4, $0
	db 0, 8, 4, $0
	db 8, 4, 5, $0
	db 16, 4, 6, $0
	db 8, -20, 5, $0
	db 16, -20, 6, $0
	db -8, -16, 2, $0
	db -8, 8, 0, $0
	db -8, 16, 1, OAM_YFLIP
	db -8, 0, 3, OAM_XFLIP
	db -8, -24, 3, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 1, $0
	db 8, -12, 5, OAM_XFLIP
	db 16, -12, 6, OAM_XFLIP
	db 8, 12, 5, OAM_XFLIP
	db 16, 12, 6, OAM_XFLIP

.data_b203b
	db 16 ; size
	db 0, 8, 4, $0
	db 8, 8, 4, $0
	db 0, -20, 5, $0
	db 8, -20, 6, $0
	db 16, 4, 5, $0
	db 24, 4, 6, $0
	db -8, -16, 0, $0
	db -8, 8, 2, $0
	db -8, 16, 3, OAM_YFLIP
	db -8, 0, 1, OAM_XFLIP
	db -8, -24, 1, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 3, $0
	db 0, -12, 5, OAM_XFLIP
	db 8, -12, 6, OAM_XFLIP
	db 16, 12, 5, OAM_XFLIP
	db 24, 12, 6, OAM_XFLIP

AnimData147::
	frame_table AnimFrameTable70
	frame_data 0, 4, 0, 0
	frame_data -1, 4, 0, 0
	frame_data 0, 6, 0, 0
	frame_data -1, 4, 0, 0
	frame_data 0, 6, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 0, 16, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 7, 10, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 7, 12, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 7, 16, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 7, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable70::
	dw .data_b20e7
	dw .data_b2128
	dw .data_b2169
	dw .data_b21a6
	dw .data_b21e3
	dw .data_b2220
	dw .data_b2261
	dw .data_b22a2

.data_b20e7
	db 16 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, -16, 2, OAM_YFLIP
	db -7, -8, 3, OAM_YFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, -16, 0, OAM_YFLIP
	db 1, -8, 1, OAM_YFLIP
	db 1, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP

.data_b2128
	db 16 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, -8, 3, OAM_YFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, -16, 0, OAM_YFLIP
	db 1, -8, 1, OAM_YFLIP
	db 1, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 4, $0

.data_b2169
	db 15 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 5, $0
	db -4, -13, 6, $0
	db 1, -8, 7, $0

.data_b21a6
	db 15 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 5, $0
	db -1, -14, 6, $0
	db 1, -8, 7, $0

.data_b21e3
	db 15 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 5, $0
	db 6, -13, 6, $0
	db 1, -8, 7, $0

.data_b2220
	db 16 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 5, $0
	db 12, -4, 6, $0
	db 1, -8, 8, $0
	db 1, 0, 9, $0
	db 9, -5, 5, $0

.data_b2261
	db 16 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 5, $0
	db 17, -4, 6, $0
	db 1, -8, 8, $0
	db 1, 0, 9, $0
	db 9, -5, 5, $0

.data_b22a2
	db 16 ; size
	db -23, -16, 0, $0
	db -23, -8, 1, $0
	db -23, 0, 1, OAM_XFLIP
	db -23, 8, 0, OAM_XFLIP
	db -15, -16, 2, $0
	db -15, -8, 3, $0
	db -15, 0, 3, OAM_XFLIP
	db -15, 8, 2, OAM_XFLIP
	db -7, 0, 3, OAM_XFLIP | OAM_YFLIP
	db -7, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 1, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 5, $0
	db 14, -4, 6, $0
	db 1, -8, 8, $0
	db 1, 0, 9, $0
	db 9, -5, 5, $0

AnimData148::
	frame_table AnimFrameTable71
	frame_data 6, 5, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 7, 8, 0, 0
	frame_data 7, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable71::
	dw .data_b230a
	dw .data_b230f
	dw .data_b2340
	dw .data_b2351
	dw .data_b23d2
	dw .data_b2453
	dw .data_b2474
	dw .data_b24b5

.data_b230a
	db 1 ; size
	db -4, -4, 5, $0

.data_b230f
	db 12 ; size
	db -8, -16, 6, $0
	db 0, -16, 6, OAM_YFLIP
	db -8, -8, 7, $0
	db 0, -8, 7, OAM_YFLIP
	db -16, -8, 8, $0
	db 8, -8, 8, OAM_YFLIP
	db -8, 8, 6, OAM_XFLIP
	db 0, 8, 6, OAM_XFLIP | OAM_YFLIP
	db -8, 0, 7, OAM_XFLIP
	db 0, 0, 7, OAM_XFLIP | OAM_YFLIP
	db -16, 0, 8, OAM_XFLIP
	db 8, 0, 8, OAM_XFLIP | OAM_YFLIP

.data_b2340
	db 4 ; size
	db -8, -8, 2, $0
	db -8, 0, 3, $0
	db 0, -8, 0, $0
	db 0, 0, 1, $0

.data_b2351
	db 32 ; size
	db -40, -8, 2, $0
	db -40, 0, 3, $0
	db -32, -8, 0, $0
	db -32, 0, 1, $0
	db -8, -32, 3, $0
	db 0, -32, 1, $0
	db 24, -8, 2, $0
	db 24, 0, 3, $0
	db 32, -8, 0, $0
	db 32, 0, 1, $0
	db -8, 24, 2, $0
	db -8, 32, 3, $0
	db 0, 24, 0, $0
	db 0, 32, 1, $0
	db -32, -32, 2, $0
	db -32, -24, 3, $0
	db -24, -32, 0, $0
	db -24, -24, 1, $0
	db -32, 16, 2, $0
	db -32, 24, 3, $0
	db -24, 16, 0, $0
	db -24, 24, 1, $0
	db 16, -32, 2, $0
	db 16, -24, 3, $0
	db 24, -32, 0, $0
	db 24, -24, 1, $0
	db 16, 16, 2, $0
	db 16, 24, 3, $0
	db 24, 16, 0, $0
	db 24, 24, 1, $0
	db -8, -40, 2, $0
	db 0, -40, 0, $0

.data_b23d2
	db 32 ; size
	db -48, -8, 2, $0
	db -48, 0, 3, $0
	db -40, -8, 0, $0
	db -40, 0, 1, $0
	db 32, -8, 2, $0
	db 32, 0, 3, $0
	db 40, -8, 0, $0
	db 40, 0, 1, $0
	db -8, 32, 2, $0
	db -8, 40, 3, $0
	db 0, 32, 0, $0
	db 0, 40, 1, $0
	db -40, -32, 3, $0
	db -32, -32, 1, $0
	db -40, 24, 2, $0
	db -40, 32, 3, $0
	db -32, 24, 0, $0
	db -32, 32, 1, $0
	db 24, -32, 3, $0
	db 32, -32, 1, $0
	db 24, 24, 2, $0
	db 24, 32, 3, $0
	db 32, 24, 0, $0
	db 32, 32, 1, $0
	db -8, -48, 2, $0
	db -8, -40, 3, $0
	db 0, -48, 0, $0
	db 0, -40, 1, $0
	db -40, -40, 2, $0
	db -32, -40, 0, $0
	db 24, -40, 2, $0
	db 32, -40, 0, $0

.data_b2453
	db 8 ; size
	db -56, -4, 4, $0
	db -4, 48, 4, $0
	db -44, 36, 4, $0
	db 28, 36, 4, $0
	db -44, -44, 4, $0
	db 28, -44, 4, $0
	db -4, -56, 4, $0
	db 40, -4, 4, $0

.data_b2474
	db 16 ; size
	db -16, -8, 2, $0
	db -16, 0, 3, $0
	db -8, -8, 0, $0
	db -8, 0, 1, $0
	db 0, -8, 2, $0
	db 0, 0, 3, $0
	db 8, -8, 0, $0
	db 8, 0, 1, $0
	db -8, 0, 2, $0
	db -8, 8, 3, $0
	db 0, 0, 0, $0
	db 0, 8, 1, $0
	db -8, -16, 2, $0
	db -8, -8, 3, $0
	db 0, -16, 0, $0
	db 0, -8, 1, $0

.data_b24b5
	db 7 ; size
	db -40, -4, 4, $0
	db -4, 32, 4, $0
	db -32, 24, 4, $0
	db 24, 24, 4, $0
	db -32, -32, 4, $0
	db 24, -32, 4, $0
	db -4, -40, 4, $0

AnimData151::
	frame_table AnimFrameTable72
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, -6
	frame_data 2, 3, 0, 0
	frame_data 2, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable72::
	dw .data_b2533
	dw .data_b2548
	dw .data_b2569
	dw .data_b258a
	dw .data_b25bf

.data_b2533
	db 5 ; size
	db 20, -32, 1, $0
	db 20, -16, 1, $0
	db 20, -8, 1, $0
	db 20, 8, 1, $0
	db 20, 24, 1, $0

.data_b2548
	db 8 ; size
	db 20, -24, 1, $0
	db 20, 0, 1, $0
	db 20, 16, 1, $0
	db 20, -32, 0, $0
	db 20, -16, 0, $0
	db 20, -8, 0, $0
	db 20, 8, 0, $0
	db 20, 24, 0, $0

.data_b2569
	db 8 ; size
	db 20, -32, 1, $0
	db 20, -16, 1, $0
	db 20, -8, 1, $0
	db 20, 8, 1, $0
	db 20, 24, 1, $0
	db 20, -24, 0, $0
	db 20, 0, 0, $0
	db 20, 16, 0, $0

.data_b258a
	db 13 ; size
	db -64, -8, 1, $0
	db 8, 8, 1, $0
	db -48, 0, 1, $0
	db -24, -8, 1, $0
	db -16, 0, 1, $0
	db 0, 0, 1, $0
	db -56, -16, 0, $0
	db -32, -8, 0, $0
	db 0, 0, 0, $0
	db -12, -4, 0, $0
	db -44, -8, 0, $0
	db -32, -32, 0, $0
	db 8, -24, 0, $0

.data_b25bf
	db 13 ; size
	db -64, -16, 0, $0
	db -48, -8, 0, $0
	db -24, -16, 0, $0
	db -16, -8, 0, $0
	db 0, -8, 0, $0
	db 8, 0, 0, $0
	db -56, -8, 1, $0
	db -44, 0, 1, $0
	db -32, 0, 1, $0
	db -12, 4, 1, $0
	db 0, 8, 1, $0
	db -36, -32, 0, $0
	db 4, -24, 0, $0

AnimData152::
	frame_table AnimFrameTable72
	frame_data 3, 4, -96, 0
	frame_data 4, 4, 8, -2
	frame_data 3, 4, 8, -1
	frame_data 4, 4, 8, 0
	frame_data 3, 4, 8, 1
	frame_data 4, 4, 8, 2
	frame_data 3, 4, 8, 2
	frame_data 4, 4, 8, 1
	frame_data 3, 4, 8, 0
	frame_data 4, 4, 8, -1
	frame_data 3, 4, 8, -2
	frame_data 4, 4, 8, -2
	frame_data 3, 4, 8, -1
	frame_data 4, 4, 8, 0
	frame_data 3, 4, 8, 1
	frame_data 4, 4, 8, 2
	frame_data 3, 4, 8, 2
	frame_data 4, 4, 8, 1
	frame_data 3, 4, 8, 0
	frame_data 4, 4, 8, -1
	frame_data 3, 4, 8, -2
	frame_data 4, 4, 8, 0
	frame_data 3, 4, 8, 0
	frame_data 4, 4, 8, 0
	frame_data 3, 4, 8, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData153::
	frame_table AnimFrameTable73
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 1, 3, 0, 6
	frame_data 2, 3, 0, 0
	frame_data 2, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable73::
	dw .data_b26c0
	dw .data_b26d5
	dw .data_b26f6

.data_b26c0
	db 5 ; size
	db -28, 24, 1, OAM_XFLIP | OAM_YFLIP
	db -28, 8, 1, OAM_XFLIP | OAM_YFLIP
	db -28, 0, 1, OAM_XFLIP | OAM_YFLIP
	db -28, -16, 1, OAM_XFLIP | OAM_YFLIP
	db -28, -32, 1, OAM_XFLIP | OAM_YFLIP

.data_b26d5
	db 8 ; size
	db -28, 16, 1, OAM_XFLIP | OAM_YFLIP
	db -28, -8, 1, OAM_XFLIP | OAM_YFLIP
	db -28, -24, 1, OAM_XFLIP | OAM_YFLIP
	db -28, 24, 0, OAM_XFLIP | OAM_YFLIP
	db -28, 8, 0, OAM_XFLIP | OAM_YFLIP
	db -28, 0, 0, OAM_XFLIP | OAM_YFLIP
	db -28, -16, 0, OAM_XFLIP | OAM_YFLIP
	db -28, -32, 0, OAM_XFLIP | OAM_YFLIP

.data_b26f6
	db 8 ; size
	db -28, 24, 1, OAM_XFLIP | OAM_YFLIP
	db -28, 8, 1, OAM_XFLIP | OAM_YFLIP
	db -28, 0, 1, OAM_XFLIP | OAM_YFLIP
	db -28, -16, 1, OAM_XFLIP | OAM_YFLIP
	db -28, -32, 1, OAM_XFLIP | OAM_YFLIP
	db -28, 16, 0, OAM_XFLIP | OAM_YFLIP
	db -28, -8, 0, OAM_XFLIP | OAM_YFLIP
	db -28, -24, 0, OAM_XFLIP | OAM_YFLIP

AnimData154::
	frame_table AnimFrameTable74
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 2, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable74::
	dw .data_b274c
	dw .data_b275d
	dw .data_b276e

.data_b274c
	db 4 ; size
	db -8, -8, 0, $0
	db 0, -8, 0, OAM_YFLIP
	db -8, 0, 0, OAM_XFLIP
	db 0, 0, 0, OAM_XFLIP | OAM_YFLIP

.data_b275d
	db 4 ; size
	db -8, -8, 1, $0
	db 0, -8, 1, OAM_YFLIP
	db -8, 0, 1, OAM_XFLIP
	db 0, 0, 1, OAM_XFLIP | OAM_YFLIP

.data_b276e
	db 4 ; size
	db -8, -8, 2, $0
	db -8, 0, 2, OAM_XFLIP
	db 0, -8, 2, OAM_YFLIP
	db 0, 0, 2, OAM_XFLIP | OAM_YFLIP

AnimData155::
	frame_table AnimFrameTable75
	frame_data 0, 4, 0, 0
	frame_data 1, 5, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 6, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable75::
	dw .data_b27cc
	dw .data_b27fd
	dw .data_b282e
	dw .data_b2867
	dw .data_b28a4
	dw .data_b28e1
	dw .data_b2922

.data_b27cc
	db 12 ; size
	db 8, 8, 6, OAM_YFLIP
	db 0, 16, 0, OAM_XFLIP
	db 8, 16, 0, OAM_XFLIP | OAM_YFLIP
	db 8, -16, 6, OAM_YFLIP
	db 8, -8, 6, OAM_YFLIP
	db 8, 0, 6, OAM_YFLIP
	db 0, 8, 6, $0
	db 0, -16, 6, $0
	db 0, -8, 6, $0
	db 0, 0, 6, $0
	db 8, -24, 0, OAM_YFLIP
	db 0, -24, 0, $0

.data_b27fd
	db 12 ; size
	db 8, 0, 1, OAM_YFLIP
	db 8, 8, 2, OAM_YFLIP
	db 0, 0, 3, OAM_YFLIP
	db 0, 8, 4, OAM_YFLIP
	db -8, 0, 0, $0
	db -8, 8, 0, OAM_XFLIP
	db 0, -24, 0, $0
	db 8, -24, 0, OAM_YFLIP
	db 8, -16, 6, OAM_YFLIP
	db 8, -8, 6, OAM_YFLIP
	db 0, -16, 6, $0
	db 0, -8, 6, $0

.data_b282e
	db 14 ; size
	db 8, 0, 1, OAM_YFLIP
	db 8, 8, 2, OAM_YFLIP
	db 0, 0, 3, OAM_YFLIP
	db 0, 8, 4, OAM_YFLIP
	db -16, 0, 1, $0
	db -16, 8, 2, $0
	db -8, 0, 3, $0
	db -8, 8, 4, $0
	db -16, -8, 0, $0
	db -8, -8, 0, OAM_YFLIP
	db 0, -16, 0, $0
	db 8, -16, 0, OAM_YFLIP
	db 8, -8, 6, OAM_YFLIP
	db 0, -8, 6, $0

.data_b2867
	db 15 ; size
	db 8, -8, 0, OAM_YFLIP
	db -16, 0, 1, $0
	db -16, 8, 2, $0
	db -8, 8, 4, $0
	db -16, -8, 1, OAM_XFLIP
	db -16, -16, 2, OAM_XFLIP
	db -8, -16, 4, OAM_XFLIP
	db 0, -16, 0, OAM_YFLIP
	db 8, 0, 1, OAM_YFLIP
	db 8, 8, 2, OAM_YFLIP
	db 0, 8, 4, OAM_YFLIP
	db 0, 0, 5, OAM_XFLIP | OAM_YFLIP
	db -8, 0, 5, OAM_XFLIP | OAM_YFLIP
	db -8, -8, 5, OAM_XFLIP | OAM_YFLIP
	db 0, -8, 7, OAM_XFLIP | OAM_YFLIP

.data_b28a4
	db 15 ; size
	db 8, 0, 0, OAM_XFLIP | OAM_YFLIP
	db -16, -8, 1, OAM_XFLIP
	db -16, -16, 2, OAM_XFLIP
	db -8, -16, 4, OAM_XFLIP
	db -16, 0, 1, $0
	db -16, 8, 2, $0
	db -8, 8, 4, $0
	db 0, 8, 0, OAM_XFLIP | OAM_YFLIP
	db 8, -8, 1, OAM_XFLIP | OAM_YFLIP
	db 8, -16, 2, OAM_XFLIP | OAM_YFLIP
	db 0, -16, 4, OAM_XFLIP | OAM_YFLIP
	db 0, -8, 5, OAM_YFLIP
	db -8, -8, 5, OAM_YFLIP
	db -8, 0, 5, OAM_YFLIP
	db 0, 0, 7, OAM_YFLIP

.data_b28e1
	db 16 ; size
	db 7, -8, 1, OAM_XFLIP | OAM_YFLIP
	db 7, -16, 2, OAM_XFLIP | OAM_YFLIP
	db -1, -16, 4, OAM_XFLIP | OAM_YFLIP
	db 7, 0, 1, OAM_YFLIP
	db 7, 8, 2, OAM_YFLIP
	db -1, 8, 4, OAM_YFLIP
	db -15, -8, 1, OAM_XFLIP
	db -15, -16, 2, OAM_XFLIP
	db -7, -16, 4, OAM_XFLIP
	db -7, -8, 5, $0
	db -1, -8, 5, $0
	db -1, 0, 5, $0
	db -15, 0, 1, $0
	db -15, 8, 2, $0
	db -7, 8, 4, $0
	db -7, 0, 5, OAM_XFLIP

.data_b2922
	db 16 ; size
	db -16, -7, 1, OAM_XFLIP
	db -16, -15, 2, OAM_XFLIP
	db -8, -15, 4, OAM_XFLIP
	db 8, -7, 1, OAM_XFLIP | OAM_YFLIP
	db 8, -15, 2, OAM_XFLIP | OAM_YFLIP
	db 0, -15, 4, OAM_XFLIP | OAM_YFLIP
	db 0, -7, 5, OAM_YFLIP
	db -8, -7, 5, OAM_YFLIP
	db -16, -1, 1, $0
	db -16, 7, 2, $0
	db -8, 7, 4, $0
	db 8, -1, 1, OAM_YFLIP
	db 8, 7, 2, OAM_YFLIP
	db 0, 7, 4, OAM_YFLIP
	db 0, -1, 5, OAM_XFLIP | OAM_YFLIP
	db -8, -1, 5, OAM_XFLIP | OAM_YFLIP

AnimData156::
	frame_table AnimFrameTable76
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 5, 0, 0
	frame_data 2, 10, 0, 0
	frame_data 3, 16, 0, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable76::
	dw .data_b2992
	dw .data_b2997
	dw .data_b29a8
	dw .data_b29d1

.data_b2992
	db 1 ; size
	db -3, -4, 4, $0

.data_b2997
	db 4 ; size
	db -8, -8, 2, $0
	db -8, 0, 2, OAM_XFLIP
	db 0, -8, 3, $0
	db 0, 0, 3, OAM_XFLIP

.data_b29a8
	db 10 ; size
	db -11, -12, 6, $0
	db -11, -4, 7, $0
	db -11, 4, 8, $0
	db -3, -12, 9, $0
	db -3, -4, 10, $0
	db -3, 4, 11, $0
	db 5, -12, 12, $0
	db 5, -4, 13, $0
	db 5, 4, 14, $0
	db -14, 12, 5, OAM_XFLIP

.data_b29d1
	db 6 ; size
	db -7, -8, 0, $0
	db -7, 0, 0, OAM_XFLIP
	db 1, -8, 1, $0
	db 1, 0, 1, OAM_XFLIP
	db -7, -16, 5, $0
	db -7, 8, 5, OAM_XFLIP

AnimData157::
	frame_table AnimFrameTable77
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 5, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable77::
	dw .data_b2ab9
	dw .data_b2afa
	dw .data_b2b3b
	dw .data_b2b7c
	dw .data_b2bbd
	dw .data_b2bee
	dw .data_b2c1f
	dw .data_b2c50
	dw .data_b2c81
	dw .data_b2cb2
	dw .data_b2ce3
	dw .data_b2d24
	dw .data_b2d65
	dw .data_b2da6

.data_b2ab9
	db 16 ; size
	db -24, -1, 0, $0
	db -32, 0, 0, $0
	db -40, 1, 0, $0
	db -48, 2, 0, $0
	db 16, -7, 0, OAM_YFLIP
	db 24, -8, 0, OAM_YFLIP
	db 32, -9, 0, OAM_YFLIP
	db 40, -10, 0, OAM_YFLIP
	db -1, 16, 1, $0
	db 0, 24, 1, $0
	db 1, 32, 1, $0
	db 2, 40, 1, $0
	db -7, -24, 1, OAM_XFLIP
	db -8, -32, 1, OAM_XFLIP
	db -9, -40, 1, OAM_XFLIP
	db -10, -48, 1, OAM_XFLIP

.data_b2afa
	db 16 ; size
	db -24, -1, 0, OAM_XFLIP
	db -32, 0, 0, OAM_XFLIP
	db -40, 1, 0, OAM_XFLIP
	db -48, 2, 0, OAM_XFLIP
	db 16, -7, 0, OAM_XFLIP | OAM_YFLIP
	db 24, -8, 0, OAM_XFLIP | OAM_YFLIP
	db 32, -9, 0, OAM_XFLIP | OAM_YFLIP
	db 40, -10, 0, OAM_XFLIP | OAM_YFLIP
	db -1, 16, 1, OAM_YFLIP
	db 0, 24, 1, OAM_YFLIP
	db 1, 32, 1, OAM_YFLIP
	db 2, 40, 1, OAM_YFLIP
	db -7, -24, 1, OAM_XFLIP | OAM_YFLIP
	db -8, -32, 1, OAM_XFLIP | OAM_YFLIP
	db -9, -40, 1, OAM_XFLIP | OAM_YFLIP
	db -10, -48, 1, OAM_XFLIP | OAM_YFLIP

.data_b2b3b
	db 16 ; size
	db -22, 5, 0, $0
	db -30, 8, 0, $0
	db -38, 11, 0, $0
	db -46, 14, 0, $0
	db 14, -13, 0, OAM_YFLIP
	db 22, -16, 0, OAM_YFLIP
	db 30, -19, 0, OAM_YFLIP
	db 38, -22, 0, OAM_YFLIP
	db 5, 14, 1, $0
	db 8, 22, 1, $0
	db 11, 30, 1, $0
	db 14, 38, 1, $0
	db -13, -22, 1, OAM_XFLIP
	db -16, -30, 1, OAM_XFLIP
	db -19, -38, 1, OAM_XFLIP
	db -22, -46, 1, OAM_XFLIP

.data_b2b7c
	db 16 ; size
	db -22, 5, 0, OAM_XFLIP
	db -30, 8, 0, OAM_XFLIP
	db -38, 11, 0, OAM_XFLIP
	db -46, 14, 0, OAM_XFLIP
	db 14, -13, 0, OAM_XFLIP | OAM_YFLIP
	db 22, -16, 0, OAM_XFLIP | OAM_YFLIP
	db 30, -19, 0, OAM_XFLIP | OAM_YFLIP
	db 38, -22, 0, OAM_XFLIP | OAM_YFLIP
	db 5, 14, 1, OAM_YFLIP
	db 8, 22, 1, OAM_YFLIP
	db 11, 30, 1, OAM_YFLIP
	db 14, 38, 1, OAM_YFLIP
	db -13, -22, 1, OAM_XFLIP | OAM_YFLIP
	db -16, -30, 1, OAM_XFLIP | OAM_YFLIP
	db -19, -38, 1, OAM_XFLIP | OAM_YFLIP
	db -22, -46, 1, OAM_XFLIP | OAM_YFLIP

.data_b2bbd
	db 12 ; size
	db -42, 22, 2, OAM_XFLIP | OAM_YFLIP
	db -32, 16, 2, OAM_XFLIP | OAM_YFLIP
	db -22, 10, 2, OAM_XFLIP | OAM_YFLIP
	db 10, 14, 2, OAM_YFLIP
	db 16, 24, 2, OAM_YFLIP
	db 22, 34, 2, OAM_YFLIP
	db 34, -30, 2, $0
	db 24, -24, 2, $0
	db 14, -18, 2, $0
	db -18, -22, 2, OAM_XFLIP
	db -24, -32, 2, OAM_XFLIP
	db -30, -42, 2, OAM_XFLIP

.data_b2bee
	db 12 ; size
	db -22, 10, 2, $0
	db -32, 16, 2, $0
	db -42, 22, 2, $0
	db 22, 34, 2, OAM_XFLIP
	db 16, 24, 2, OAM_XFLIP
	db 10, 14, 2, OAM_XFLIP
	db 14, -18, 2, OAM_XFLIP | OAM_YFLIP
	db 24, -24, 2, OAM_XFLIP | OAM_YFLIP
	db 34, -30, 2, OAM_XFLIP | OAM_YFLIP
	db -30, -42, 2, OAM_YFLIP
	db -24, -32, 2, OAM_YFLIP
	db -18, -22, 2, OAM_YFLIP

.data_b2c1f
	db 12 ; size
	db -36, 28, 2, OAM_XFLIP | OAM_YFLIP
	db -28, 20, 2, OAM_XFLIP | OAM_YFLIP
	db -20, 12, 2, OAM_XFLIP | OAM_YFLIP
	db 12, 12, 2, OAM_YFLIP
	db 20, 20, 2, OAM_YFLIP
	db 28, 28, 2, OAM_YFLIP
	db 28, -36, 2, $0
	db 20, -28, 2, $0
	db 12, -20, 2, $0
	db -20, -20, 2, OAM_XFLIP
	db -28, -28, 2, OAM_XFLIP
	db -36, -36, 2, OAM_XFLIP

.data_b2c50
	db 12 ; size
	db -20, 12, 2, $0
	db -28, 20, 2, $0
	db -36, 28, 2, $0
	db 28, 28, 2, OAM_XFLIP
	db 20, 20, 2, OAM_XFLIP
	db 12, 12, 2, OAM_XFLIP
	db 12, -20, 2, OAM_XFLIP | OAM_YFLIP
	db 20, -28, 2, OAM_XFLIP | OAM_YFLIP
	db 28, -36, 2, OAM_XFLIP | OAM_YFLIP
	db -36, -36, 2, OAM_YFLIP
	db -28, -28, 2, OAM_YFLIP
	db -20, -20, 2, OAM_YFLIP

.data_b2c81
	db 12 ; size
	db -22, -18, 2, OAM_XFLIP
	db -32, -24, 2, OAM_XFLIP
	db -42, -30, 2, OAM_XFLIP
	db 22, -42, 2, $0
	db 16, -32, 2, $0
	db 10, -22, 2, $0
	db 14, 10, 2, OAM_YFLIP
	db 24, 16, 2, OAM_YFLIP
	db 34, 22, 2, OAM_YFLIP
	db -30, 34, 2, OAM_XFLIP | OAM_YFLIP
	db -24, 24, 2, OAM_XFLIP | OAM_YFLIP
	db -18, 14, 2, OAM_XFLIP | OAM_YFLIP

.data_b2cb2
	db 12 ; size
	db -42, -30, 2, OAM_YFLIP
	db -32, -24, 2, OAM_YFLIP
	db -22, -18, 2, OAM_YFLIP
	db 10, -22, 2, OAM_XFLIP | OAM_YFLIP
	db 16, -32, 2, OAM_XFLIP | OAM_YFLIP
	db 22, -42, 2, OAM_XFLIP | OAM_YFLIP
	db 34, 22, 2, OAM_XFLIP
	db 24, 16, 2, OAM_XFLIP
	db 14, 10, 2, OAM_XFLIP
	db -18, 14, 2, $0
	db -24, 24, 2, $0
	db -30, 34, 2, $0

.data_b2ce3
	db 16 ; size
	db -22, -13, 0, $0
	db -30, -16, 0, $0
	db -38, -19, 0, $0
	db -46, -22, 0, $0
	db 5, -22, 1, OAM_XFLIP | OAM_YFLIP
	db 8, -30, 1, OAM_XFLIP | OAM_YFLIP
	db 11, -38, 1, OAM_XFLIP | OAM_YFLIP
	db 14, -46, 1, OAM_XFLIP | OAM_YFLIP
	db 14, 5, 0, OAM_XFLIP | OAM_YFLIP
	db 22, 8, 0, OAM_XFLIP | OAM_YFLIP
	db 30, 11, 0, OAM_XFLIP | OAM_YFLIP
	db 38, 14, 0, OAM_XFLIP | OAM_YFLIP
	db -13, 14, 1, $0
	db -16, 22, 1, $0
	db -19, 30, 1, $0
	db -22, 38, 1, $0

.data_b2d24
	db 16 ; size
	db -22, -13, 0, OAM_XFLIP
	db -30, -16, 0, OAM_XFLIP
	db -38, -19, 0, OAM_XFLIP
	db -46, -22, 0, OAM_XFLIP
	db 5, -22, 1, OAM_XFLIP
	db 8, -30, 1, OAM_XFLIP
	db 11, -38, 1, OAM_XFLIP
	db 14, -46, 1, OAM_XFLIP
	db 14, 5, 0, OAM_YFLIP
	db 22, 8, 0, OAM_YFLIP
	db 30, 11, 0, OAM_YFLIP
	db 38, 14, 0, OAM_YFLIP
	db -13, 14, 1, OAM_YFLIP
	db -16, 22, 1, OAM_YFLIP
	db -19, 30, 1, OAM_YFLIP
	db -22, 38, 1, OAM_YFLIP

.data_b2d65
	db 16 ; size
	db -24, -7, 0, $0
	db -32, -8, 0, $0
	db -40, -9, 0, $0
	db -48, -10, 0, $0
	db -7, 16, 1, $0
	db -8, 24, 1, $0
	db -9, 32, 1, $0
	db -10, 40, 1, $0
	db -1, -24, 1, OAM_XFLIP | OAM_YFLIP
	db 0, -32, 1, OAM_XFLIP | OAM_YFLIP
	db 1, -40, 1, OAM_XFLIP | OAM_YFLIP
	db 2, -48, 1, OAM_XFLIP | OAM_YFLIP
	db 16, -1, 0, OAM_XFLIP | OAM_YFLIP
	db 24, 0, 0, OAM_XFLIP | OAM_YFLIP
	db 32, 1, 0, OAM_XFLIP | OAM_YFLIP
	db 40, 2, 0, OAM_XFLIP | OAM_YFLIP

.data_b2da6
	db 16 ; size
	db -24, -7, 0, OAM_XFLIP
	db -32, -8, 0, OAM_XFLIP
	db -40, -9, 0, OAM_XFLIP
	db -48, -10, 0, OAM_XFLIP
	db 16, -1, 0, OAM_XFLIP | OAM_YFLIP
	db 24, 0, 0, OAM_XFLIP | OAM_YFLIP
	db 32, 1, 0, OAM_XFLIP | OAM_YFLIP
	db 40, 2, 0, OAM_XFLIP | OAM_YFLIP
	db -7, 16, 1, OAM_YFLIP
	db -8, 24, 1, OAM_YFLIP
	db -9, 32, 1, OAM_YFLIP
	db -10, 40, 1, OAM_YFLIP
	db -1, -24, 1, OAM_XFLIP | OAM_YFLIP
	db 0, -32, 1, OAM_XFLIP | OAM_YFLIP
	db 1, -40, 1, OAM_XFLIP | OAM_YFLIP
	db 2, -48, 1, OAM_XFLIP | OAM_YFLIP

AnimData158::
	frame_table AnimFrameTable78
	frame_data 0, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 0, 6, 0, 0
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable78::
	dw .data_b2e68
	dw .data_b2e89
	dw .data_b2eaa
	dw .data_b2ecb
	dw .data_b2eec
	dw .data_b2f0d
	dw .data_b2f2e
	dw .data_b2f4f
	dw .data_b2f78
	dw .data_b2fa1
	dw .data_b2fd2
	dw .data_b2ffb
	dw .data_b3024
	dw .data_b3045
	dw .data_b306e
	dw .data_b3097
	dw .data_b30c8
	dw .data_b30f1
	dw .data_b311a
	dw .data_b314b
	dw .data_b317c
	dw .data_b31bd
	dw .data_b31ee
	dw .data_b321f
	dw .data_b3240
	dw .data_b3261
	dw .data_b3282
	dw .data_b32a3
	dw .data_b32c4
	dw .data_b32e5
	dw .data_b3306
	dw .data_b3327
	dw .data_b3338
	dw .data_b3349
	dw .data_b335a
	dw .data_b336b
	dw .data_b337c
	dw .data_b338d
	dw .data_b339e
	dw .data_b33af
	dw .data_b33c0
	dw .data_b33d1
	dw .data_b33e2

.data_b2e68
	db 8 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP

.data_b2e89
	db 8 ; size
	db -14, -24, 0, $0
	db -14, -16, 1, $0
	db -46, 8, 0, $0
	db -46, 16, 1, $0
	db -38, 8, 3, $0
	db -38, 16, 3, OAM_XFLIP
	db -6, -24, 3, $0
	db -6, -16, 3, OAM_XFLIP

.data_b2eaa
	db 8 ; size
	db -14, -8, 0, $0
	db -14, 0, 1, $0
	db -46, -8, 0, $0
	db -46, 0, 1, $0
	db -38, -8, 3, $0
	db -38, 0, 3, OAM_XFLIP
	db -6, -8, 3, $0
	db -6, 0, 3, OAM_XFLIP

.data_b2ecb
	db 8 ; size
	db -22, 8, 0, $0
	db -22, 16, 1, $0
	db -38, -24, 0, $0
	db -38, -16, 1, $0
	db -30, -24, 3, $0
	db -30, -16, 3, OAM_XFLIP
	db -14, 8, 3, $0
	db -14, 16, 3, OAM_XFLIP

.data_b2eec
	db 8 ; size
	db -30, 8, 0, $0
	db -30, 16, 1, $0
	db -30, -24, 0, $0
	db -30, -16, 1, $0
	db -22, -24, 3, $0
	db -22, -16, 3, OAM_XFLIP
	db -22, 8, 3, $0
	db -22, 16, 3, OAM_XFLIP

.data_b2f0d
	db 8 ; size
	db -38, 8, 0, $0
	db -38, 16, 1, $0
	db -22, -24, 0, $0
	db -22, -16, 1, $0
	db -14, -24, 3, $0
	db -14, -16, 3, OAM_XFLIP
	db -30, 8, 3, $0
	db -30, 16, 3, OAM_XFLIP

.data_b2f2e
	db 8 ; size
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP
	db -14, -24, 0, $0
	db -14, -16, 1, $0
	db -6, -24, 3, $0
	db -6, -16, 3, OAM_XFLIP

.data_b2f4f
	db 10 ; size
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP
	db -15, -24, 0, $0
	db -15, -16, 1, $0
	db -7, -24, 3, $0
	db -7, -16, 3, OAM_XFLIP
	db -2, -24, 3, $0
	db -2, -16, 3, OAM_XFLIP

.data_b2f78
	db 10 ; size
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 3, $0
	db -8, -16, 3, OAM_XFLIP
	db -3, -24, 4, $0
	db -3, -16, 1, OAM_YFLIP

.data_b2fa1
	db 12 ; size
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP
	db -17, -24, 0, $0
	db -17, -16, 1, $0
	db -9, -24, 3, $0
	db -9, -16, 3, OAM_XFLIP
	db -4, -24, 0, $0
	db -4, -16, 1, $0
	db 4, -24, 3, $0
	db 4, -16, 3, OAM_XFLIP

.data_b2fd2
	db 10 ; size
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -7, -24, 0, $0
	db -7, -16, 1, $0
	db 1, -24, 3, $0
	db 1, -16, 3, OAM_XFLIP

.data_b2ffb
	db 10 ; size
	db -48, 8, 0, $0
	db -48, 16, 1, $0
	db -40, 8, 2, $0
	db -40, 16, 2, OAM_XFLIP
	db -10, -24, 0, $0
	db -10, -16, 1, $0
	db -2, -24, 3, $0
	db -2, -16, 3, OAM_XFLIP
	db -19, -24, 3, OAM_YFLIP
	db -19, -16, 3, OAM_XFLIP | OAM_YFLIP

.data_b3024
	db 8 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -46, 8, 0, $0
	db -46, 16, 1, $0
	db -38, 8, 3, $0
	db -38, 16, 3, OAM_XFLIP

.data_b3045
	db 10 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -45, 8, 0, $0
	db -45, 16, 1, $0
	db -37, 8, 3, $0
	db -37, 16, 3, OAM_XFLIP
	db -54, 8, 3, OAM_YFLIP
	db -54, 16, 3, OAM_XFLIP | OAM_YFLIP

.data_b306e
	db 10 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -44, 8, 0, $0
	db -44, 16, 1, $0
	db -36, 8, 3, $0
	db -36, 16, 3, OAM_XFLIP
	db -53, 8, 0, $0
	db -53, 16, 1, $0

.data_b3097
	db 12 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -43, 8, 0, $0
	db -43, 16, 1, $0
	db -35, 8, 3, $0
	db -35, 16, 3, OAM_XFLIP
	db -56, 8, 0, $0
	db -56, 16, 1, $0
	db -48, 8, 3, $0
	db -48, 16, 3, OAM_XFLIP

.data_b30c8
	db 10 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -40, 16, 1, OAM_YFLIP
	db -53, 8, 0, $0
	db -53, 16, 1, $0
	db -45, 8, 3, $0
	db -45, 16, 3, OAM_XFLIP
	db -40, 8, 4, $0

.data_b30f1
	db 10 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 2, $0
	db -8, -16, 2, OAM_XFLIP
	db -50, 8, 0, $0
	db -50, 16, 1, $0
	db -42, 8, 3, $0
	db -42, 16, 3, OAM_XFLIP
	db -37, 8, 3, $0
	db -37, 16, 3, OAM_XFLIP

.data_b311a
	db 12 ; size
	db -15, -24, 0, $0
	db -15, -16, 1, $0
	db -7, -24, 3, $0
	db -7, -16, 3, OAM_XFLIP
	db -2, -24, 3, $0
	db -2, -16, 3, OAM_XFLIP
	db -45, 8, 0, $0
	db -45, 16, 1, $0
	db -37, 8, 3, $0
	db -37, 16, 3, OAM_XFLIP
	db -54, 8, 3, OAM_YFLIP
	db -54, 16, 3, OAM_XFLIP | OAM_YFLIP

.data_b314b
	db 12 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -8, -24, 3, $0
	db -8, -16, 3, OAM_XFLIP
	db -3, -24, 4, $0
	db -3, -16, 1, OAM_YFLIP
	db -44, 8, 0, $0
	db -44, 16, 1, $0
	db -36, 8, 3, $0
	db -36, 16, 3, OAM_XFLIP
	db -53, 8, 0, $0
	db -53, 16, 1, $0

.data_b317c
	db 16 ; size
	db -17, -24, 0, $0
	db -17, -16, 1, $0
	db -9, -24, 3, $0
	db -9, -16, 3, OAM_XFLIP
	db -4, -24, 0, $0
	db -4, -16, 1, $0
	db 4, -24, 3, $0
	db 4, -16, 3, OAM_XFLIP
	db -43, 8, 0, $0
	db -43, 16, 1, $0
	db -35, 8, 3, $0
	db -35, 16, 3, OAM_XFLIP
	db -56, 8, 0, $0
	db -56, 16, 1, $0
	db -48, 8, 3, $0
	db -48, 16, 3, OAM_XFLIP

.data_b31bd
	db 12 ; size
	db -16, -24, 0, $0
	db -16, -16, 1, $0
	db -7, -24, 0, $0
	db -7, -16, 1, $0
	db 1, -24, 3, $0
	db 1, -16, 3, OAM_XFLIP
	db -40, 16, 1, OAM_YFLIP
	db -53, 8, 0, $0
	db -53, 16, 1, $0
	db -45, 8, 3, $0
	db -45, 16, 3, OAM_XFLIP
	db -40, 8, 4, $0

.data_b31ee
	db 12 ; size
	db -10, -24, 0, $0
	db -10, -16, 1, $0
	db -2, -24, 3, $0
	db -2, -16, 3, OAM_XFLIP
	db -19, -24, 3, OAM_YFLIP
	db -19, -16, 3, OAM_XFLIP | OAM_YFLIP
	db -50, 8, 0, $0
	db -50, 16, 1, $0
	db -42, 8, 3, $0
	db -42, 16, 3, OAM_XFLIP
	db -37, 8, 3, $0
	db -37, 16, 3, OAM_XFLIP

.data_b321f
	db 8 ; size
	db -8, -24, 0, $0
	db -8, -16, 1, $0
	db 0, -24, 2, $0
	db 0, -16, 2, OAM_XFLIP
	db -56, -4, 0, $0
	db -56, 4, 1, $0
	db -48, -4, 2, $0
	db -48, 4, 2, OAM_XFLIP

.data_b3240
	db 8 ; size
	db 0, -24, 0, $0
	db 0, -16, 1, $0
	db 8, -24, 2, $0
	db 8, -16, 2, OAM_XFLIP
	db -56, -16, 0, $0
	db -56, -8, 1, $0
	db -48, -16, 2, $0
	db -48, -8, 2, OAM_XFLIP

.data_b3261
	db 8 ; size
	db -1, -20, 0, $0
	db -1, -12, 1, $0
	db -57, -20, 0, $0
	db -57, -12, 1, $0
	db -49, -20, 3, $0
	db -49, -12, 3, OAM_XFLIP
	db 7, -20, 3, $0
	db 7, -12, 3, OAM_XFLIP

.data_b3282
	db 8 ; size
	db -3, -12, 0, $0
	db -3, -4, 1, $0
	db -59, -28, 0, $0
	db -59, -20, 1, $0
	db -51, -28, 3, $0
	db -51, -20, 3, OAM_XFLIP
	db 5, -12, 3, $0
	db 5, -4, 3, OAM_XFLIP

.data_b32a3
	db 8 ; size
	db -4, -4, 0, $0
	db -4, 4, 1, $0
	db -60, -36, 0, $0
	db -60, -28, 1, $0
	db -52, -36, 3, $0
	db -52, -28, 3, OAM_XFLIP
	db 4, -4, 3, $0
	db 4, 4, 3, OAM_XFLIP

.data_b32c4
	db 8 ; size
	db -4, 4, 0, $0
	db -4, 12, 1, $0
	db -60, -44, 0, $0
	db -60, -36, 1, $0
	db -52, -44, 3, $0
	db -52, -36, 3, OAM_XFLIP
	db 4, 4, 3, $0
	db 4, 12, 3, OAM_XFLIP

.data_b32e5
	db 8 ; size
	db -3, 12, 0, $0
	db -3, 20, 1, $0
	db -59, -52, 0, $0
	db -59, -44, 1, $0
	db -51, -52, 3, $0
	db -51, -44, 3, OAM_XFLIP
	db 5, 12, 3, $0
	db 5, 20, 3, OAM_XFLIP

.data_b3306
	db 8 ; size
	db -1, 20, 0, $0
	db -1, 28, 1, $0
	db -57, -60, 0, $0
	db -57, -52, 1, $0
	db -49, -60, 3, $0
	db -49, -52, 3, OAM_XFLIP
	db 7, 20, 3, $0
	db 7, 28, 3, OAM_XFLIP

.data_b3327
	db 4 ; size
	db -1, -20, 0, $0
	db -1, -12, 1, $0
	db 7, -20, 3, $0
	db 7, -12, 3, OAM_XFLIP

.data_b3338
	db 4 ; size
	db -3, -12, 0, $0
	db -3, -4, 1, $0
	db 5, -12, 3, $0
	db 5, -4, 3, OAM_XFLIP

.data_b3349
	db 4 ; size
	db -4, -4, 0, $0
	db -4, 4, 1, $0
	db 4, -4, 3, $0
	db 4, 4, 3, OAM_XFLIP

.data_b335a
	db 4 ; size
	db -4, 4, 0, $0
	db -4, 12, 1, $0
	db 4, 4, 3, $0
	db 4, 12, 3, OAM_XFLIP

.data_b336b
	db 4 ; size
	db -3, 12, 0, $0
	db -3, 20, 1, $0
	db 5, 12, 3, $0
	db 5, 20, 3, OAM_XFLIP

.data_b337c
	db 4 ; size
	db -1, 20, 0, $0
	db -1, 28, 1, $0
	db 7, 20, 3, $0
	db 7, 28, 3, OAM_XFLIP

.data_b338d
	db 4 ; size
	db -57, -20, 0, $0
	db -57, -12, 1, $0
	db -49, -20, 3, $0
	db -49, -12, 3, OAM_XFLIP

.data_b339e
	db 4 ; size
	db -59, -28, 0, $0
	db -59, -20, 1, $0
	db -51, -28, 3, $0
	db -51, -20, 3, OAM_XFLIP

.data_b33af
	db 4 ; size
	db -60, -36, 0, $0
	db -60, -28, 1, $0
	db -52, -36, 3, $0
	db -52, -28, 3, OAM_XFLIP

.data_b33c0
	db 4 ; size
	db -60, -44, 0, $0
	db -60, -36, 1, $0
	db -52, -44, 3, $0
	db -52, -36, 3, OAM_XFLIP

.data_b33d1
	db 4 ; size
	db -59, -52, 0, $0
	db -59, -44, 1, $0
	db -51, -52, 3, $0
	db -51, -44, 3, OAM_XFLIP

.data_b33e2
	db 4 ; size
	db -57, -60, 0, $0
	db -57, -52, 1, $0
	db -49, -60, 3, $0
	db -49, -52, 3, OAM_XFLIP

AnimData159::
	frame_table AnimFrameTable78
	frame_data 6, 3, 0, 0
	frame_data 7, 3, 0, 0
	frame_data 8, 3, 0, 0
	frame_data 9, 4, 0, 0
	frame_data 10, 3, 0, 0
	frame_data 11, 3, 0, 0
	frame_data 6, 3, 0, 0
	frame_data 0, 1, 0, 0
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData160::
	frame_table AnimFrameTable78
	frame_data 12, 3, 0, 0
	frame_data 13, 3, 0, 0
	frame_data 14, 3, 0, 0
	frame_data 15, 3, 0, 0
	frame_data 16, 3, 0, 0
	frame_data 17, 3, 0, 0
	frame_data 12, 3, 0, 0
	frame_data 0, 1, 0, 0
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData161::
	frame_table AnimFrameTable78
	frame_data 1, 3, 0, 0
	frame_data 18, 3, 0, 0
	frame_data 19, 3, 0, 0
	frame_data 20, 3, 0, 0
	frame_data 21, 3, 0, 0
	frame_data 22, 3, 0, 0
	frame_data 1, 3, 0, 0
	frame_data 0, 1, 0, 0
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData163::
	frame_table AnimFrameTable78
	frame_data 25, 6, 0, 0
	frame_data 26, 6, 0, 0
	frame_data 27, 6, 0, 0
	frame_data 28, 6, 0, 0
	frame_data 29, 6, 0, 0
	frame_data 30, 6, 0, 0
	frame_data 30, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData164::
	frame_table AnimFrameTable78
	frame_data 31, 6, 0, 0
	frame_data 32, 6, 0, 0
	frame_data 33, 6, 0, 0
	frame_data 34, 6, 0, 0
	frame_data 35, 6, 0, 0
	frame_data 36, 6, 0, 0
	frame_data 36, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData165::
	frame_table AnimFrameTable78
	frame_data 37, 6, 0, 0
	frame_data 38, 6, 0, 0
	frame_data 39, 6, 0, 0
	frame_data 40, 6, 0, 0
	frame_data 41, 6, 0, 0
	frame_data 42, 6, 0, 0
	frame_data 42, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData167::
	frame_table AnimFrameTable79
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable79::
	dw .data_b3512
	dw .data_b3537
	dw .data_b3550
	dw .data_b355d
	dw .data_b3576
	dw .data_b359b
	dw .data_b35b4

.data_b3512
	db 9 ; size
	db -12, -12, 0, $0
	db -12, -4, 1, $0
	db -12, 4, 2, $0
	db -4, -12, 3, $0
	db -4, -4, 4, $0
	db -4, 4, 5, $0
	db 4, -12, 6, $0
	db 4, -4, 7, $0
	db 4, 4, 8, $0

.data_b3537
	db 6 ; size
	db -8, -12, 17, $0
	db -8, -4, 18, $0
	db -8, 4, 17, OAM_XFLIP
	db 0, -12, 19, $0
	db 0, -4, 20, $0
	db 0, 4, 19, OAM_XFLIP

.data_b3550
	db 3 ; size
	db -4, -12, 21, $0
	db -4, -4, 22, $0
	db -4, 4, 21, OAM_XFLIP

.data_b355d
	db 6 ; size
	db -8, -12, 13, $0
	db -8, -4, 14, $0
	db -8, 4, 13, OAM_XFLIP
	db 0, -12, 15, $0
	db 0, -4, 16, $0
	db 0, 4, 15, OAM_XFLIP

.data_b3576
	db 9 ; size
	db -12, -12, 9, $0
	db -12, -4, 10, $0
	db -12, 4, 9, OAM_XFLIP
	db -4, -12, 11, $0
	db -4, -4, 12, $0
	db -4, 4, 11, OAM_XFLIP
	db 4, -12, 9, OAM_YFLIP
	db 4, -4, 10, OAM_YFLIP
	db 4, 4, 9, OAM_XFLIP | OAM_YFLIP

.data_b359b
	db 6 ; size
	db 0, -12, 13, OAM_YFLIP
	db 0, -4, 14, OAM_YFLIP
	db 0, 4, 13, OAM_XFLIP | OAM_YFLIP
	db -8, -12, 15, OAM_YFLIP
	db -8, -4, 16, OAM_YFLIP
	db -8, 4, 15, OAM_XFLIP | OAM_YFLIP

.data_b35b4
	db 6 ; size
	db 0, -12, 17, OAM_YFLIP
	db 0, -4, 18, OAM_YFLIP
	db 0, 4, 17, OAM_XFLIP | OAM_YFLIP
	db -8, -12, 19, OAM_YFLIP
	db -8, -4, 20, OAM_YFLIP
	db -8, 4, 19, OAM_XFLIP | OAM_YFLIP

AnimData168::
	frame_table AnimFrameTable79
	frame_data 0, 2, 0, -7
	frame_data 1, 2, 0, -7
	frame_data 2, 2, 0, -6
	frame_data 3, 2, 0, -6
	frame_data 4, 2, 0, -5
	frame_data 5, 2, 0, -5
	frame_data 2, 2, 0, -4
	frame_data 6, 2, 0, -4
	frame_data 0, 2, 0, -3
	frame_data 1, 2, 0, -2
	frame_data 2, 2, 0, -1
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 1
	frame_data 5, 2, 0, 2
	frame_data 2, 2, 0, 3
	frame_data 6, 2, 0, 4
	frame_data 0, 2, 0, 4
	frame_data 1, 2, 0, 5
	frame_data 2, 2, 0, 5
	frame_data 3, 2, 0, 6
	frame_data 4, 2, 0, 6
	frame_data 5, 2, 0, 7
	frame_data 2, 2, 0, 7
	frame_data 6, 2, 0, -5
	frame_data 0, 2, 0, -3
	frame_data 1, 2, 0, -2
	frame_data 2, 2, 0, -1
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 1
	frame_data 2, 2, 0, 2
	frame_data 6, 2, 0, 3
	frame_data 0, 2, 0, 5
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData169::
	frame_table AnimFrameTable79
	frame_data 0, 2, 0, -7
	frame_data 1, 2, 0, -7
	frame_data 2, 2, 0, -6
	frame_data 3, 2, 0, -6
	frame_data 4, 2, 0, -5
	frame_data 5, 2, 0, -5
	frame_data 2, 2, 0, -4
	frame_data 6, 2, 0, -4
	frame_data 0, 2, 0, -3
	frame_data 1, 2, 0, -2
	frame_data 2, 2, 0, -1
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 1
	frame_data 5, 2, 0, 2
	frame_data 2, 2, 0, 3
	frame_data 6, 2, 0, 4
	frame_data 0, 2, 0, 4
	frame_data 1, 2, 0, 5
	frame_data 2, 2, 0, 5
	frame_data 3, 2, 0, 6
	frame_data 4, 2, 0, 6
	frame_data 5, 2, 0, 7
	frame_data 2, 2, 0, 7
	frame_data 5, 2, 0, -5
	frame_data 4, 2, 0, -3
	frame_data 3, 2, 0, -2
	frame_data 2, 2, 0, -1
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 6, 2, 0, 1
	frame_data 2, 2, 0, 2
	frame_data 5, 2, 0, 3
	frame_data 4, 2, 0, 5
	frame_data 4, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData170::
	frame_table AnimFrameTable79
	frame_data 0, 1, 0, 0
	frame_data 0, 0, 0, 0

AnimData171::
	frame_table AnimFrameTable79
	frame_data 4, 1, 0, 0
	frame_data 0, 0, 0, 0

AnimData172::
	frame_table AnimFrameTable80
	frame_data 1, 30, 0, 0
	frame_data -1, 30, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable80::
	dw .data_b3716
	dw .data_b37b7
	dw .data_b3858

.data_b3716
	db 40 ; size
	db -56, 32, 0, $0
	db -56, 40, 1, $0
	db -56, 48, 2, $0
	db -56, 56, 3, $0
	db -48, 64, 9, $0
	db -48, 56, 19, $0
	db -48, 48, 18, $0
	db -48, 40, 17, $0
	db -48, 32, 16, $0
	db -48, 24, 8, $0
	db -40, 24, 24, $0
	db -32, 32, 48, $0
	db -40, 32, 32, $0
	db -40, 40, 33, $0
	db -32, 40, 49, $0
	db -32, 48, 50, $0
	db -32, 56, 51, $0
	db -40, 64, 25, $0
	db -40, 48, 34, $0
	db -40, 56, 35, $0
	db -16, -40, 9, $0
	db -16, -80, 8, $0
	db -8, -80, 24, $0
	db -8, -40, 25, $0
	db -24, -72, 4, $0
	db -16, -72, 20, $0
	db -8, -72, 36, $0
	db -24, -64, 5, $0
	db -16, -64, 21, $0
	db -8, -64, 37, $0
	db 0, -64, 53, $0
	db 0, -72, 52, $0
	db 0, -56, 40, $0
	db -8, -56, 38, $0
	db -16, -56, 22, $0
	db -24, -56, 6, $0
	db -24, -48, 7, $0
	db -16, -48, 23, $0
	db -8, -48, 39, $0
	db 0, -48, 41, $0

.data_b37b7
	db 40 ; size
	db -48, 64, 9, $0
	db -48, 24, 8, $0
	db -40, 24, 24, $0
	db -40, 64, 25, $0
	db -56, 32, 4, $0
	db -48, 32, 20, $0
	db -40, 32, 36, $0
	db -56, 40, 5, $0
	db -48, 40, 21, $0
	db -40, 40, 37, $0
	db -32, 40, 53, $0
	db -32, 32, 52, $0
	db -32, 48, 40, $0
	db -40, 48, 38, $0
	db -48, 48, 22, $0
	db -56, 48, 6, $0
	db -56, 56, 7, $0
	db -48, 56, 23, $0
	db -40, 56, 39, $0
	db -32, 56, 41, $0
	db -24, -72, 0, $0
	db -24, -64, 1, $0
	db -24, -56, 2, $0
	db -24, -48, 3, $0
	db -16, -40, 9, $0
	db -16, -48, 19, $0
	db -16, -56, 18, $0
	db -16, -64, 17, $0
	db -16, -72, 16, $0
	db -16, -80, 8, $0
	db -8, -80, 24, $0
	db 0, -72, 48, $0
	db -8, -72, 32, $0
	db -8, -64, 33, $0
	db 0, -64, 49, $0
	db 0, -56, 50, $0
	db 0, -48, 51, $0
	db -8, -40, 25, $0
	db -8, -56, 34, $0
	db -8, -48, 35, $0

.data_b3858
	db 36 ; size
	db -52, 24, 10, $0
	db -44, 24, 26, $0
	db -36, 24, 42, $0
	db -52, 32, 11, $0
	db -44, 32, 27, $0
	db -36, 32, 43, $0
	db -52, 40, 12, $0
	db -44, 40, 28, $0
	db -36, 40, 44, $0
	db -52, 48, 13, $0
	db -44, 56, 30, $0
	db -44, 48, 29, $0
	db -36, 48, 45, $0
	db -36, 56, 46, $0
	db -52, 56, 14, $0
	db -52, 64, 15, $0
	db -44, 64, 31, $0
	db -36, 64, 47, $0
	db -20, -80, 10, $0
	db -12, -80, 26, $0
	db -4, -80, 42, $0
	db -20, -72, 11, $0
	db -12, -72, 27, $0
	db -4, -72, 43, $0
	db -20, -64, 12, $0
	db -12, -64, 28, $0
	db -4, -64, 44, $0
	db -20, -56, 13, $0
	db -12, -48, 30, $0
	db -12, -56, 29, $0
	db -4, -56, 45, $0
	db -4, -48, 46, $0
	db -20, -48, 14, $0
	db -20, -40, 15, $0
	db -12, -40, 31, $0
	db -4, -40, 47, $0

AnimData173::
	frame_table AnimFrameTable80
	frame_data 0, 30, 0, 0
	frame_data -1, 30, 0, 0
	frame_data 0, 0, 0, 0

AnimData174::
	frame_table AnimFrameTable80
	frame_data 2, 30, 0, 0
	frame_data -1, 30, 0, 0
	frame_data 0, 0, 0, 0

AnimData175::
	frame_table AnimFrameTable81
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 9, 4, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable81::
	dw .data_b3982
	dw .data_b398b
	dw .data_b39a4
	dw .data_b39d5
	dw .data_b39fe
	dw .data_b3a17
	dw .data_b3a20
	dw .data_b3a39
	dw .data_b3a6a
	dw .data_b3a93
	dw .data_b3aac
	dw .data_b3ab1
	dw .data_b3aba
	dw .data_b3ac7
	dw .data_b3ad8
	dw .data_b3aed
	dw .data_b3b06
	dw .data_b3b23
	dw .data_b3b44
	dw .data_b3b69
	dw .data_b3b92
	dw .data_b3bbf
	dw .data_b3bf0
	dw .data_b3bf5
	dw .data_b3bfe
	dw .data_b3c0b
	dw .data_b3c1c
	dw .data_b3c31
	dw .data_b3c4a
	dw .data_b3c67
	dw .data_b3c88
	dw .data_b3cad
	dw .data_b3cd6
	dw .data_b3d03

.data_b3982
	db 2 ; size
	db -32, -31, 1, $0
	db -24, -31, 1, OAM_YFLIP

.data_b398b
	db 6 ; size
	db -32, -31, 1, $0
	db -24, -31, 1, OAM_YFLIP
	db -40, -22, 2, $0
	db -32, -20, 3, $0
	db -16, -22, 2, OAM_YFLIP
	db -24, -20, 3, OAM_YFLIP

.data_b39a4
	db 12 ; size
	db -32, -31, 1, $0
	db -24, -31, 1, OAM_YFLIP
	db -40, -22, 2, $0
	db -32, -20, 3, $0
	db -48, -13, 4, $0
	db -40, -9, 5, $0
	db -32, -8, 6, $0
	db -16, -22, 2, OAM_YFLIP
	db -24, -20, 3, OAM_YFLIP
	db -8, -13, 4, OAM_YFLIP
	db -16, -9, 5, OAM_YFLIP
	db -24, -8, 6, OAM_YFLIP

.data_b39d5
	db 10 ; size
	db -40, -22, 2, $0
	db -32, -20, 3, $0
	db -48, -13, 4, $0
	db -40, -9, 5, $0
	db -32, -8, 6, $0
	db -16, -22, 2, OAM_YFLIP
	db -24, -20, 3, OAM_YFLIP
	db -8, -13, 4, OAM_YFLIP
	db -16, -9, 5, OAM_YFLIP
	db -24, -8, 6, OAM_YFLIP

.data_b39fe
	db 6 ; size
	db -48, -13, 4, $0
	db -40, -9, 5, $0
	db -32, -8, 6, $0
	db -8, -13, 4, OAM_YFLIP
	db -16, -9, 5, OAM_YFLIP
	db -24, -8, 6, OAM_YFLIP

.data_b3a17
	db 2 ; size
	db -32, -9, 1, OAM_XFLIP
	db -24, -9, 1, OAM_XFLIP | OAM_YFLIP

.data_b3a20
	db 6 ; size
	db -32, -9, 1, OAM_XFLIP
	db -24, -9, 1, OAM_XFLIP | OAM_YFLIP
	db -40, -18, 2, OAM_XFLIP
	db -32, -20, 3, OAM_XFLIP
	db -16, -18, 2, OAM_XFLIP | OAM_YFLIP
	db -24, -20, 3, OAM_XFLIP | OAM_YFLIP

.data_b3a39
	db 12 ; size
	db -32, -9, 1, OAM_XFLIP
	db -24, -9, 1, OAM_XFLIP | OAM_YFLIP
	db -40, -18, 2, OAM_XFLIP
	db -32, -20, 3, OAM_XFLIP
	db -48, -27, 4, OAM_XFLIP
	db -40, -31, 5, OAM_XFLIP
	db -32, -32, 6, OAM_XFLIP
	db -16, -18, 2, OAM_XFLIP | OAM_YFLIP
	db -24, -20, 3, OAM_XFLIP | OAM_YFLIP
	db -8, -27, 4, OAM_XFLIP | OAM_YFLIP
	db -16, -31, 5, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 6, OAM_XFLIP | OAM_YFLIP

.data_b3a6a
	db 10 ; size
	db -40, -18, 2, OAM_XFLIP
	db -32, -20, 3, OAM_XFLIP
	db -48, -27, 4, OAM_XFLIP
	db -40, -31, 5, OAM_XFLIP
	db -32, -32, 6, OAM_XFLIP
	db -16, -18, 2, OAM_XFLIP | OAM_YFLIP
	db -24, -20, 3, OAM_XFLIP | OAM_YFLIP
	db -8, -27, 4, OAM_XFLIP | OAM_YFLIP
	db -16, -31, 5, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 6, OAM_XFLIP | OAM_YFLIP

.data_b3a93
	db 6 ; size
	db -48, -27, 4, OAM_XFLIP
	db -40, -31, 5, OAM_XFLIP
	db -32, -32, 6, OAM_XFLIP
	db -8, -27, 4, OAM_XFLIP | OAM_YFLIP
	db -16, -31, 5, OAM_XFLIP | OAM_YFLIP
	db -24, -32, 6, OAM_XFLIP | OAM_YFLIP

.data_b3aac
	db 1 ; size
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3ab1
	db 2 ; size
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3aba
	db 3 ; size
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3ac7
	db 4 ; size
	db -48, -4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3ad8
	db 5 ; size
	db -40, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3aed
	db 6 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3b06
	db 7 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3b23
	db 8 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3b44
	db 9 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3b69
	db 10 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3b92
	db 11 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3bbf
	db 12 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1
	db -48, -28, 7, %001 | OAM_PAL1

.data_b3bf0
	db 1 ; size
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3bf5
	db 2 ; size
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3bfe
	db 3 ; size
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3c0b
	db 4 ; size
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3c1c
	db 5 ; size
	db -16, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3c31
	db 6 ; size
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3c4a
	db 7 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3c67
	db 8 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3c88
	db 9 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1

.data_b3cad
	db 10 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1

.data_b3cd6
	db 11 ; size
	db -32, -4, 7, %001 | OAM_PAL1
	db -40, -4, 7, %001 | OAM_PAL1
	db -24, -4, 7, %001 | OAM_PAL1
	db -16, -4, 7, %001 | OAM_PAL1
	db -48, -4, 7, %001 | OAM_PAL1
	db -8, -4, 7, %001 | OAM_PAL1
	db -8, 4, 7, %001 | OAM_PAL1
	db -8, 12, 7, %001 | OAM_PAL1
	db -8, 20, 7, %001 | OAM_PAL1
	db -48, -12, 7, %001 | OAM_PAL1
	db -48, -20, 7, %001 | OAM_PAL1

.data_b3d03
	db 12 ; size
	db -24, -14, 8, $0
	db -24, -6, 9, $0
	db -16, -14, 10, $0
	db -24, 6, 8, OAM_XFLIP
	db -24, -2, 9, OAM_XFLIP
	db -16, 6, 10, OAM_XFLIP
	db -32, -14, 8, OAM_YFLIP
	db -32, -6, 9, OAM_YFLIP
	db -40, -14, 10, OAM_YFLIP
	db -32, 6, 8, OAM_XFLIP | OAM_YFLIP
	db -32, -2, 9, OAM_XFLIP | OAM_YFLIP
	db -40, 6, 10, OAM_XFLIP | OAM_YFLIP

AnimData176::
	frame_table AnimFrameTable81
	frame_data 10, 3, 0, 0
	frame_data 11, 3, 0, 0
	frame_data 12, 3, 0, 0
	frame_data 13, 3, 0, 0
	frame_data 14, 3, 0, 0
	frame_data 15, 3, 0, 0
	frame_data 16, 3, 0, 0
	frame_data 17, 3, 0, 0
	frame_data 18, 3, 0, 0
	frame_data 19, 3, 0, 0
	frame_data 20, 3, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 22, 3, 0, 0
	frame_data 23, 3, 0, 0
	frame_data 24, 3, 0, 0
	frame_data 25, 3, 0, 0
	frame_data 26, 3, 0, 0
	frame_data 27, 3, 0, 0
	frame_data 28, 3, 0, 0
	frame_data 29, 3, 0, 0
	frame_data 30, 3, 0, 0
	frame_data 31, 3, 0, 0
	frame_data 32, 3, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 0, 0, 0, 0

AnimData177::
	frame_table AnimFrameTable81
	frame_data 33, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData179::
	frame_table AnimFrameTable82
	frame_data 10, 3, 0, 0
	frame_data 11, 3, 0, 0
	frame_data 12, 3, 0, 0
	frame_data 13, 3, 0, 0
	frame_data 14, 3, 0, 0
	frame_data 15, 3, 0, 0
	frame_data 16, 3, 0, 0
	frame_data 17, 3, 0, 0
	frame_data 18, 3, 0, 0
	frame_data 19, 3, 0, 0
	frame_data 20, 3, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 22, 3, 0, 0
	frame_data 23, 3, 0, 0
	frame_data 24, 3, 0, 0
	frame_data 25, 3, 0, 0
	frame_data 26, 3, 0, 0
	frame_data 27, 3, 0, 0
	frame_data 28, 3, 0, 0
	frame_data 29, 3, 0, 0
	frame_data 30, 3, 0, 0
	frame_data 31, 3, 0, 0
	frame_data 32, 3, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 21, 6, 0, 0
	frame_data -1, 6, 0, 0
	frame_data 0, 0, 0, 0

AnimData180::
	frame_table AnimFrameTable82
	frame_data 33, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData182::
	frame_table AnimFrameTable83
	frame_data 18, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData184::
	frame_table AnimFrameTable84
	frame_data 18, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData186::
	frame_table AnimFrameTable85
	frame_data 8, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData188::
	frame_table AnimFrameTable86
	frame_data 8, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData189::
	frame_table AnimFrameTable87
	frame_data 0, 1, 0, 0
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable87::
	dw .data_b3ebd

.data_b3ebd
	db 32 ; size
	db 0, 0, 0, $0
	db 0, 8, 1, $0
	db 0, 16, 2, $0
	db 0, 24, 3, $0
	db 0, 32, 4, $0
	db 0, 40, 5, $0
	db 0, 48, 6, $0
	db 0, 56, 7, $0
	db 8, 0, 16, $0
	db 8, 8, 17, $0
	db 8, 16, 18, $0
	db 8, 24, 19, $0
	db 8, 32, 20, $0
	db 8, 40, 21, $0
	db 8, 48, 22, $0
	db 8, 56, 23, $0
	db 16, 0, 8, $0
	db 16, 8, 9, $0
	db 16, 16, 10, $0
	db 16, 24, 11, $0
	db 16, 32, 12, $0
	db 16, 40, 13, $0
	db 16, 48, 14, $0
	db 16, 56, 15, $0
	db 24, 0, 24, $0
	db 24, 8, 25, $0
	db 24, 16, 26, $0
	db 24, 24, 27, $0
	db 24, 32, 28, $0
	db 24, 40, 29, $0
	db 24, 48, 30, $0
	db 24, 56, 31, $0

AnimData190::
	frame_table AnimFrameTable88
	frame_data 0, 37, 0, 0
	frame_data -1, 26, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable88::
	dw .data_b3f4f

.data_b3f4f
	db 20 ; size
	db -2, -5, 0, $0
	db -2, 3, 1, $0
	db -2, 19, 3, $0
	db -2, 27, 4, $0
	db -2, 11, 2, $0
	db 6, -5, 5, $0
	db 6, 3, 6, $0
	db 6, 11, 7, $0
	db 6, 19, 8, $0
	db 6, 27, 9, $0
	db -2, 41, 10, $0
	db -2, 49, 11, $0
	db -2, 57, 12, $0
	db -2, 65, 13, $0
	db -2, 73, 14, $0
	db 6, 41, 15, $0
	db 6, 49, 16, $0
	db 6, 73, 19, $0
	db 6, 65, 18, $0
	db 6, 57, 17, $0

AnimData196::
	frame_table AnimFrameTable91
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, 1, 3, 2
	frame_data 0, 1, 3, 1
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0
