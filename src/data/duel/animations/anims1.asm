AnimData0::
	frame_table AnimFrameTable0
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable0::
	dw .data_a8e7f
	dw .data_a8e90
	dw .data_a8ea1
	dw .data_a8eb2
	dw .data_a8ec3
	dw .data_a8ed4
	dw .data_a8ee5
	dw .data_a8ef6
	dw .data_a8f07
	dw .data_a8f18

.data_a8e7f
	db 4 ; size
	db 0, 0, 8, $0
	db 0, 8, 9, $0
	db 8, 0, 10, $0
	db 8, 8, 11, $0

.data_a8e90
	db 4 ; size
	db 0, 0, 6, $0
	db 8, 0, 7, $0
	db 8, 8, 7, OAM_XFLIP
	db 0, 8, 6, OAM_XFLIP

.data_a8ea1
	db 4 ; size
	db 0, 0, 9, OAM_XFLIP
	db 8, 0, 11, OAM_XFLIP
	db 0, 8, 8, OAM_XFLIP
	db 8, 8, 10, OAM_XFLIP

.data_a8eb2
	db 4 ; size
	db 0, 0, 12, $0
	db 0, 8, 13, $0
	db 8, 0, 14, $0
	db 8, 8, 15, $0

.data_a8ec3
	db 4 ; size
	db 0, 0, 16, $0
	db 0, 8, 17, $0
	db 8, 0, 18, $0
	db 8, 8, 19, $0

.data_a8ed4
	db 4 ; size
	db 0, 0, 2, $0
	db 0, 8, 3, $0
	db 8, 0, 4, $0
	db 8, 8, 5, $0

.data_a8ee5
	db 4 ; size
	db 0, 0, 0, $0
	db 8, 0, 1, $0
	db 0, 8, 0, OAM_XFLIP
	db 8, 8, 1, OAM_XFLIP

.data_a8ef6
	db 4 ; size
	db 0, 0, 3, OAM_XFLIP
	db 8, 0, 5, OAM_XFLIP
	db 0, 8, 2, OAM_XFLIP
	db 8, 8, 4, OAM_XFLIP

.data_a8f07
	db 4 ; size
	db 0, 0, 13, OAM_XFLIP
	db 8, 0, 15, OAM_XFLIP
	db 0, 8, 12, OAM_XFLIP
	db 8, 8, 14, OAM_XFLIP

.data_a8f18
	db 4 ; size
	db 0, 0, 17, OAM_XFLIP
	db 8, 0, 19, OAM_XFLIP
	db 0, 8, 16, OAM_XFLIP
	db 8, 8, 18, OAM_XFLIP

AnimData4::
	frame_table AnimFrameTable1
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable1::
	dw .data_a8f54
	dw .data_a8f65
	dw .data_a8f76
	dw .data_a8f87
	dw .data_a8f98
	dw .data_a8fa9
	dw .data_a8fba
	dw .data_a8fcb
	dw .data_a8fdc
	dw .data_a8fed

.data_a8f54
	db 4 ; size
	db 0, 0, 8, OAM_PAL1
	db 0, 8, 9, OAM_PAL1
	db 8, 0, 10, OAM_PAL1
	db 8, 8, 11, OAM_PAL1

.data_a8f65
	db 4 ; size
	db 0, 0, 6, OAM_PAL1
	db 8, 0, 7, OAM_PAL1
	db 8, 8, 7, OAM_PAL1 | OAM_XFLIP
	db 0, 8, 6, OAM_PAL1 | OAM_XFLIP

.data_a8f76
	db 4 ; size
	db 0, 0, 9, OAM_PAL1 | OAM_XFLIP
	db 8, 0, 11, OAM_PAL1 | OAM_XFLIP
	db 0, 8, 8, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 10, OAM_PAL1 | OAM_XFLIP

.data_a8f87
	db 4 ; size
	db 0, 0, 12, OAM_PAL1
	db 0, 8, 13, OAM_PAL1
	db 8, 0, 14, OAM_PAL1
	db 8, 8, 15, OAM_PAL1

.data_a8f98
	db 4 ; size
	db 0, 0, 16, OAM_PAL1
	db 0, 8, 17, OAM_PAL1
	db 8, 0, 18, OAM_PAL1
	db 8, 8, 19, OAM_PAL1

.data_a8fa9
	db 4 ; size
	db 0, 0, 2, OAM_PAL1
	db 0, 8, 3, OAM_PAL1
	db 8, 0, 4, OAM_PAL1
	db 8, 8, 5, OAM_PAL1

.data_a8fba
	db 4 ; size
	db 0, 0, 0, OAM_PAL1
	db 8, 0, 1, OAM_PAL1
	db 0, 8, 0, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 1, OAM_PAL1 | OAM_XFLIP

.data_a8fcb
	db 4 ; size
	db 0, 0, 3, OAM_PAL1 | OAM_XFLIP
	db 8, 0, 5, OAM_PAL1 | OAM_XFLIP
	db 0, 8, 2, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 4, OAM_PAL1 | OAM_XFLIP

.data_a8fdc
	db 4 ; size
	db 0, 0, 13, OAM_PAL1 | OAM_XFLIP
	db 8, 0, 15, OAM_PAL1 | OAM_XFLIP
	db 0, 8, 12, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 14, OAM_PAL1 | OAM_XFLIP

.data_a8fed
	db 4 ; size
	db 0, 0, 17, OAM_PAL1 | OAM_XFLIP
	db 8, 0, 19, OAM_PAL1 | OAM_XFLIP
	db 0, 8, 16, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 18, OAM_PAL1 | OAM_XFLIP

AnimData7::
	frame_table AnimFrameTable1
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData8::
	frame_table AnimFrameTable2
	frame_data 0, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable2::
	dw .data_a9020
	dw .data_a9031
	dw .data_a9042
	dw .data_a9053

.data_a9020
	db 4 ; size
	db -2, 7, 20, OAM_PAL1
	db -2, 15, 21, OAM_PAL1
	db 6, 7, 22, OAM_PAL1
	db 6, 15, 23, OAM_PAL1

.data_a9031
	db 4 ; size
	db 5, 4, 24, OAM_PAL1
	db 5, 12, 25, OAM_PAL1
	db -3, 4, 13, OAM_PAL1 | OAM_XFLIP
	db -3, 12, 12, OAM_PAL1 | OAM_XFLIP

.data_a9042
	db 4 ; size
	db 5, 2, 25, OAM_PAL1
	db -3, -6, 13, OAM_PAL1 | OAM_XFLIP
	db -3, 2, 12, OAM_PAL1 | OAM_XFLIP
	db 5, -6, 26, OAM_PAL1

.data_a9053
	db 4 ; size
	db 0, -16, 0, OAM_PAL1
	db 8, -16, 1, OAM_PAL1
	db 0, -8, 0, OAM_PAL1 | OAM_XFLIP
	db 8, -8, 1, OAM_PAL1 | OAM_XFLIP

AnimData9::
	frame_table AnimFrameTable2
	frame_data 1, 9, 0, 0
	frame_data 2, 7, 0, 0
	frame_data 3, 16, 0, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData10::
	frame_table AnimFrameTable3
	frame_data 0, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable3::
	dw .data_a908e
	dw .data_a909f
	dw .data_a90b0
	dw .data_a90c1

.data_a908e
	db 4 ; size
	db 0, 0, 6, $0
	db 8, 0, 7, $0
	db 0, 8, 6, OAM_XFLIP
	db 8, 8, 7, OAM_XFLIP

.data_a909f
	db 4 ; size
	db 0, 0, 2, $0
	db 0, 8, 3, $0
	db 8, 0, 4, $0
	db 8, 8, 5, $0

.data_a90b0
	db 4 ; size
	db 0, 0, 0, $0
	db 8, 0, 1, $0
	db 0, 8, 0, OAM_XFLIP
	db 8, 8, 1, OAM_XFLIP

.data_a90c1
	db 4 ; size
	db 0, 0, 3, OAM_XFLIP
	db 8, 0, 5, OAM_XFLIP
	db 0, 8, 2, OAM_XFLIP
	db 8, 8, 4, OAM_XFLIP

AnimData13::
	frame_table AnimFrameTable3
	frame_data 3, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData14::
	frame_table AnimFrameTable4
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable4::
	dw .data_a9108
	dw .data_a9119
	dw .data_a912a
	dw .data_a913b
	dw .data_a914c
	dw .data_a915d
	dw .data_a916e
	dw .data_a917f
	dw .data_a9190
	dw .data_a91a1

.data_a9108
	db 4 ; size
	db 0, 0, 8, $0
	db 0, 8, 9, $0
	db 8, 0, 10, $0
	db 8, 8, 11, $0

.data_a9119
	db 4 ; size
	db 0, 0, 6, $0
	db 8, 0, 7, $0
	db 8, 8, 7, OAM_XFLIP
	db 0, 8, 6, OAM_XFLIP

.data_a912a
	db 4 ; size
	db 0, 0, 9, OAM_XFLIP
	db 8, 0, 11, OAM_XFLIP
	db 0, 8, 8, OAM_XFLIP
	db 8, 8, 10, OAM_XFLIP

.data_a913b
	db 4 ; size
	db 0, 0, 12, $0
	db 0, 8, 13, $0
	db 8, 0, 14, $0
	db 8, 8, 15, $0

.data_a914c
	db 4 ; size
	db 0, 0, 16, $0
	db 0, 8, 17, $0
	db 8, 0, 18, $0
	db 8, 8, 19, $0

.data_a915d
	db 4 ; size
	db 0, 0, 2, $0
	db 0, 8, 3, $0
	db 8, 0, 4, $0
	db 8, 8, 5, $0

.data_a916e
	db 4 ; size
	db 0, 0, 0, $0
	db 8, 0, 1, $0
	db 0, 8, 0, OAM_XFLIP
	db 8, 8, 1, OAM_XFLIP

.data_a917f
	db 4 ; size
	db 0, 0, 3, OAM_XFLIP
	db 8, 0, 5, OAM_XFLIP
	db 0, 8, 2, OAM_XFLIP
	db 8, 8, 4, OAM_XFLIP

.data_a9190
	db 4 ; size
	db 0, 0, 13, OAM_XFLIP
	db 8, 0, 15, OAM_XFLIP
	db 0, 8, 12, OAM_XFLIP
	db 8, 8, 14, OAM_XFLIP

.data_a91a1
	db 4 ; size
	db 0, 0, 17, OAM_XFLIP
	db 8, 0, 19, OAM_XFLIP
	db 0, 8, 16, OAM_XFLIP
	db 8, 8, 18, OAM_XFLIP

AnimData15::
	frame_table AnimFrameTable4
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData16::
	frame_table AnimFrameTable4
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData17::
	frame_table AnimFrameTable4
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData18::
	frame_table AnimFrameTable5
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable5::
	dw .data_a9212
	dw .data_a9223
	dw .data_a9234
	dw .data_a9245
	dw .data_a9256
	dw .data_a9267
	dw .data_a9278
	dw .data_a9289
	dw .data_a929a
	dw .data_a92ab

.data_a9212
	db 4 ; size
	db 0, 0, 8, %001 | OAM_PAL1
	db 0, 8, 9, %001 | OAM_PAL1
	db 8, 0, 10, %001 | OAM_PAL1
	db 8, 8, 11, %001 | OAM_PAL1

.data_a9223
	db 4 ; size
	db 0, 0, 6, %001 | OAM_PAL1
	db 8, 0, 7, %001 | OAM_PAL1
	db 8, 8, 7, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 6, %001 | OAM_PAL1 | OAM_XFLIP

.data_a9234
	db 4 ; size
	db 0, 0, 9, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 11, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 8, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 10, %001 | OAM_PAL1 | OAM_XFLIP

.data_a9245
	db 4 ; size
	db 0, 0, 12, %001 | OAM_PAL1
	db 0, 8, 13, %001 | OAM_PAL1
	db 8, 0, 14, %001 | OAM_PAL1
	db 8, 8, 15, %001 | OAM_PAL1

.data_a9256
	db 4 ; size
	db 0, 0, 16, %001 | OAM_PAL1
	db 0, 8, 17, %001 | OAM_PAL1
	db 8, 0, 18, %001 | OAM_PAL1
	db 8, 8, 19, %001 | OAM_PAL1

.data_a9267
	db 4 ; size
	db 0, 0, 2, %001 | OAM_PAL1
	db 0, 8, 3, %001 | OAM_PAL1
	db 8, 0, 4, %001 | OAM_PAL1
	db 8, 8, 5, %001 | OAM_PAL1

.data_a9278
	db 4 ; size
	db 0, 0, 0, %001 | OAM_PAL1
	db 8, 0, 1, %001 | OAM_PAL1
	db 0, 8, 0, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 1, %001 | OAM_PAL1 | OAM_XFLIP

.data_a9289
	db 4 ; size
	db 0, 0, 3, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 5, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 2, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 4, %001 | OAM_PAL1 | OAM_XFLIP

.data_a929a
	db 4 ; size
	db 0, 0, 13, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 15, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 12, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 14, %001 | OAM_PAL1 | OAM_XFLIP

.data_a92ab
	db 4 ; size
	db 0, 0, 17, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 19, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 16, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 18, %001 | OAM_PAL1 | OAM_XFLIP

AnimData19::
	frame_table AnimFrameTable5
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData20::
	frame_table AnimFrameTable5
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData21::
	frame_table AnimFrameTable5
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData22::
	frame_table AnimFrameTable6
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable6::
	dw .data_a931c
	dw .data_a932d
	dw .data_a933e
	dw .data_a934f
	dw .data_a9360
	dw .data_a9371
	dw .data_a9382
	dw .data_a9393
	dw .data_a93a4
	dw .data_a93b5

.data_a931c
	db 4 ; size
	db 0, 0, 8, %010
	db 0, 8, 9, %010
	db 8, 0, 10, %010
	db 8, 8, 11, %010

.data_a932d
	db 4 ; size
	db 0, 0, 6, %010
	db 8, 0, 7, %010
	db 8, 8, 7, %010 | OAM_XFLIP
	db 0, 8, 6, %010 | OAM_XFLIP

.data_a933e
	db 4 ; size
	db 0, 0, 9, %010 | OAM_XFLIP
	db 8, 0, 11, %010 | OAM_XFLIP
	db 0, 8, 8, %010 | OAM_XFLIP
	db 8, 8, 10, %010 | OAM_XFLIP

.data_a934f
	db 4 ; size
	db 0, 0, 12, %010
	db 0, 8, 13, %010
	db 8, 0, 14, %010
	db 8, 8, 15, %010

.data_a9360
	db 4 ; size
	db 0, 0, 16, %010
	db 0, 8, 17, %010
	db 8, 0, 18, %010
	db 8, 8, 19, %010

.data_a9371
	db 4 ; size
	db 0, 0, 2, %010
	db 0, 8, 3, %010
	db 8, 0, 4, %010
	db 8, 8, 5, %010

.data_a9382
	db 4 ; size
	db 0, 0, 0, %010
	db 8, 0, 1, %010
	db 0, 8, 0, %010 | OAM_XFLIP
	db 8, 8, 1, %010 | OAM_XFLIP

.data_a9393
	db 4 ; size
	db 0, 0, 3, %010 | OAM_XFLIP
	db 8, 0, 5, %010 | OAM_XFLIP
	db 0, 8, 2, %010 | OAM_XFLIP
	db 8, 8, 4, %010 | OAM_XFLIP

.data_a93a4
	db 4 ; size
	db 0, 0, 13, %010 | OAM_XFLIP
	db 8, 0, 15, %010 | OAM_XFLIP
	db 0, 8, 12, %010 | OAM_XFLIP
	db 8, 8, 14, %010 | OAM_XFLIP

.data_a93b5
	db 4 ; size
	db 0, 0, 17, %010 | OAM_XFLIP
	db 8, 0, 19, %010 | OAM_XFLIP
	db 0, 8, 16, %010 | OAM_XFLIP
	db 8, 8, 18, %010 | OAM_XFLIP

AnimData23::
	frame_table AnimFrameTable6
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData24::
	frame_table AnimFrameTable6
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData25::
	frame_table AnimFrameTable6
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData26::
	frame_table AnimFrameTable7
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable7::
	dw .data_a9426
	dw .data_a9437
	dw .data_a9448
	dw .data_a9459
	dw .data_a946a
	dw .data_a947b
	dw .data_a948c
	dw .data_a949d
	dw .data_a94ae
	dw .data_a94bf

.data_a9426
	db 4 ; size
	db 0, 0, 8, %011 | OAM_PAL1
	db 0, 8, 9, %011 | OAM_PAL1
	db 8, 0, 10, %011 | OAM_PAL1
	db 8, 8, 11, %011 | OAM_PAL1

.data_a9437
	db 4 ; size
	db 0, 0, 6, %011 | OAM_PAL1
	db 8, 0, 7, %011 | OAM_PAL1
	db 8, 8, 7, %011 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 6, %011 | OAM_PAL1 | OAM_XFLIP

.data_a9448
	db 4 ; size
	db 0, 0, 9, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 11, %011 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 8, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 10, %011 | OAM_PAL1 | OAM_XFLIP

.data_a9459
	db 4 ; size
	db 0, 0, 6, %011 | OAM_PAL1
	db 0, 8, 13, %011 | OAM_PAL1
	db 8, 0, 14, %011 | OAM_PAL1
	db 8, 8, 15, %011 | OAM_PAL1

.data_a946a
	db 4 ; size
	db 0, 0, 8, %011 | OAM_PAL1
	db 0, 8, 17, %011 | OAM_PAL1
	db 8, 0, 18, %011 | OAM_PAL1
	db 8, 8, 19, %011 | OAM_PAL1

.data_a947b
	db 4 ; size
	db 0, 0, 2, %011 | OAM_PAL1
	db 0, 8, 3, %011 | OAM_PAL1
	db 8, 0, 4, %011 | OAM_PAL1
	db 8, 8, 5, %011 | OAM_PAL1

.data_a948c
	db 4 ; size
	db 0, 0, 0, %011 | OAM_PAL1
	db 8, 0, 1, %011 | OAM_PAL1
	db 0, 8, 0, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 1, %011 | OAM_PAL1 | OAM_XFLIP

.data_a949d
	db 4 ; size
	db 0, 0, 3, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 5, %011 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 2, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 4, %011 | OAM_PAL1 | OAM_XFLIP

.data_a94ae
	db 4 ; size
	db 0, 0, 13, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 15, %011 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 6, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 14, %011 | OAM_PAL1 | OAM_XFLIP

.data_a94bf
	db 4 ; size
	db 0, 0, 17, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 19, %011 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 8, %011 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 18, %011 | OAM_PAL1 | OAM_XFLIP

AnimData27::
	frame_table AnimFrameTable7
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData28::
	frame_table AnimFrameTable7
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData29::
	frame_table AnimFrameTable7
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData30::
	frame_table AnimFrameTable8
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable8::
	dw .data_a9530
	dw .data_a9541
	dw .data_a9552
	dw .data_a9563
	dw .data_a9574
	dw .data_a9585
	dw .data_a9596
	dw .data_a95a7
	dw .data_a95b8
	dw .data_a95c9

.data_a9530
	db 4 ; size
	db 0, 0, 8, %100
	db 0, 8, 9, %100
	db 8, 0, 10, %100
	db 8, 8, 11, %100

.data_a9541
	db 4 ; size
	db 0, 0, 6, %100
	db 8, 0, 7, %100
	db 8, 8, 7, %100 | OAM_XFLIP
	db 0, 8, 6, %100 | OAM_XFLIP

.data_a9552
	db 4 ; size
	db 0, 0, 9, %100 | OAM_XFLIP
	db 8, 0, 11, %100 | OAM_XFLIP
	db 0, 8, 8, %100 | OAM_XFLIP
	db 8, 8, 10, %100 | OAM_XFLIP

.data_a9563
	db 4 ; size
	db 0, 0, 12, %100
	db 0, 8, 13, %100
	db 8, 0, 14, %100
	db 8, 8, 15, %100

.data_a9574
	db 4 ; size
	db 0, 0, 16, %100
	db 0, 8, 17, %100
	db 8, 0, 18, %100
	db 8, 8, 19, %100

.data_a9585
	db 4 ; size
	db 0, 0, 2, %100
	db 0, 8, 3, %100
	db 8, 0, 4, %100
	db 8, 8, 5, %100

.data_a9596
	db 4 ; size
	db 0, 0, 0, %100
	db 8, 0, 1, %100
	db 0, 8, 0, %100 | OAM_XFLIP
	db 8, 8, 1, %100 | OAM_XFLIP

.data_a95a7
	db 4 ; size
	db 0, 0, 3, %100 | OAM_XFLIP
	db 8, 0, 5, %100 | OAM_XFLIP
	db 0, 8, 2, %100 | OAM_XFLIP
	db 8, 8, 4, %100 | OAM_XFLIP

.data_a95b8
	db 4 ; size
	db 0, 0, 13, %100 | OAM_XFLIP
	db 8, 0, 15, %100 | OAM_XFLIP
	db 0, 8, 12, %100 | OAM_XFLIP
	db 8, 8, 14, %100 | OAM_XFLIP

.data_a95c9
	db 4 ; size
	db 0, 0, 17, %100 | OAM_XFLIP
	db 8, 0, 19, %100 | OAM_XFLIP
	db 0, 8, 16, %100 | OAM_XFLIP
	db 8, 8, 18, %100 | OAM_XFLIP

AnimData31::
	frame_table AnimFrameTable8
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData32::
	frame_table AnimFrameTable8
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData33::
	frame_table AnimFrameTable8
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData34::
	frame_table AnimFrameTable9
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable9::
	dw .data_a963a
	dw .data_a964b
	dw .data_a965c
	dw .data_a966d
	dw .data_a967e
	dw .data_a968f
	dw .data_a96a0
	dw .data_a96b1
	dw .data_a96c2
	dw .data_a96d3

.data_a963a
	db 4 ; size
	db 0, 0, 8, %101 | OAM_PAL1
	db 0, 8, 9, %101 | OAM_PAL1
	db 8, 0, 10, %101 | OAM_PAL1
	db 8, 8, 11, %101 | OAM_PAL1

.data_a964b
	db 4 ; size
	db 0, 0, 6, %101 | OAM_PAL1
	db 8, 0, 7, %101 | OAM_PAL1
	db 8, 8, 7, %101 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 6, %101 | OAM_PAL1 | OAM_XFLIP

.data_a965c
	db 4 ; size
	db 0, 0, 9, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 11, %101 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 8, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 10, %101 | OAM_PAL1 | OAM_XFLIP

.data_a966d
	db 4 ; size
	db 0, 0, 12, %101 | OAM_PAL1
	db 0, 8, 13, %101 | OAM_PAL1
	db 8, 0, 14, %101 | OAM_PAL1
	db 8, 8, 15, %101 | OAM_PAL1

.data_a967e
	db 4 ; size
	db 0, 0, 16, %101 | OAM_PAL1
	db 0, 8, 17, %101 | OAM_PAL1
	db 8, 0, 18, %101 | OAM_PAL1
	db 8, 8, 19, %101 | OAM_PAL1

.data_a968f
	db 4 ; size
	db 0, 0, 2, %101 | OAM_PAL1
	db 0, 8, 3, %101 | OAM_PAL1
	db 8, 0, 4, %101 | OAM_PAL1
	db 8, 8, 5, %101 | OAM_PAL1

.data_a96a0
	db 4 ; size
	db 0, 0, 0, %101 | OAM_PAL1
	db 8, 0, 1, %101 | OAM_PAL1
	db 0, 8, 0, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 1, %101 | OAM_PAL1 | OAM_XFLIP

.data_a96b1
	db 4 ; size
	db 0, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 5, %101 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 2, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 4, %101 | OAM_PAL1 | OAM_XFLIP

.data_a96c2
	db 4 ; size
	db 0, 0, 13, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 15, %101 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 12, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 14, %101 | OAM_PAL1 | OAM_XFLIP

.data_a96d3
	db 4 ; size
	db 0, 0, 17, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 19, %101 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 16, %101 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 18, %101 | OAM_PAL1 | OAM_XFLIP

AnimData35::
	frame_table AnimFrameTable9
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData36::
	frame_table AnimFrameTable9
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData37::
	frame_table AnimFrameTable9
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData38::
	frame_table AnimFrameTable10
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable10::
	dw .data_a9744
	dw .data_a9755
	dw .data_a9766
	dw .data_a9777
	dw .data_a9788
	dw .data_a9799
	dw .data_a97aa
	dw .data_a97bb
	dw .data_a97cc
	dw .data_a97dd

.data_a9744
	db 4 ; size
	db 0, 0, 8, %110
	db 0, 8, 9, %110
	db 8, 0, 10, %110
	db 8, 8, 11, %110

.data_a9755
	db 4 ; size
	db 0, 0, 6, %110
	db 8, 0, 7, %110
	db 8, 8, 7, %110 | OAM_XFLIP
	db 0, 8, 6, %110 | OAM_XFLIP

.data_a9766
	db 4 ; size
	db 0, 0, 9, %110 | OAM_XFLIP
	db 8, 0, 11, %110 | OAM_XFLIP
	db 0, 8, 8, %110 | OAM_XFLIP
	db 8, 8, 10, %110 | OAM_XFLIP

.data_a9777
	db 4 ; size
	db 0, 0, 12, %110
	db 0, 8, 13, %110
	db 8, 0, 14, %110
	db 8, 8, 15, %110

.data_a9788
	db 4 ; size
	db 0, 0, 16, %110
	db 0, 8, 17, %110
	db 8, 0, 18, %110
	db 8, 8, 19, %110

.data_a9799
	db 4 ; size
	db 0, 0, 2, %110
	db 0, 8, 3, %110
	db 8, 0, 4, %110
	db 8, 8, 5, %110

.data_a97aa
	db 4 ; size
	db 0, 0, 0, %110
	db 8, 0, 1, %110
	db 0, 8, 0, %110 | OAM_XFLIP
	db 8, 8, 1, %110 | OAM_XFLIP

.data_a97bb
	db 4 ; size
	db 0, 0, 3, %110 | OAM_XFLIP
	db 8, 0, 5, %110 | OAM_XFLIP
	db 0, 8, 2, %110 | OAM_XFLIP
	db 8, 8, 4, %110 | OAM_XFLIP

.data_a97cc
	db 4 ; size
	db 0, 0, 13, %110 | OAM_XFLIP
	db 8, 0, 15, %110 | OAM_XFLIP
	db 0, 8, 12, %110 | OAM_XFLIP
	db 8, 8, 14, %110 | OAM_XFLIP

.data_a97dd
	db 4 ; size
	db 0, 0, 17, %110 | OAM_XFLIP
	db 8, 0, 19, %110 | OAM_XFLIP
	db 0, 8, 16, %110 | OAM_XFLIP
	db 8, 8, 18, %110 | OAM_XFLIP

AnimData39::
	frame_table AnimFrameTable10
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData40::
	frame_table AnimFrameTable10
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData41::
	frame_table AnimFrameTable10
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData42::
	frame_table AnimFrameTable11
	frame_data 0, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 2, 16, 0, 0
	frame_data 1, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable11::
	dw .data_a984e
	dw .data_a985f
	dw .data_a9870
	dw .data_a9881
	dw .data_a9892
	dw .data_a98a3
	dw .data_a98b4
	dw .data_a98c5
	dw .data_a98d6
	dw .data_a98e7

.data_a984e
	db 4 ; size
	db 0, 0, 8, %111 | OAM_PAL1
	db 0, 8, 9, %111 | OAM_PAL1
	db 8, 0, 10, %111 | OAM_PAL1
	db 8, 8, 11, %111 | OAM_PAL1

.data_a985f
	db 4 ; size
	db 0, 0, 6, %111 | OAM_PAL1
	db 8, 0, 7, %111 | OAM_PAL1
	db 8, 8, 7, %111 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 6, %111 | OAM_PAL1 | OAM_XFLIP

.data_a9870
	db 4 ; size
	db 0, 0, 9, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 11, %111 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 8, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 10, %111 | OAM_PAL1 | OAM_XFLIP

.data_a9881
	db 4 ; size
	db 0, 0, 12, %111 | OAM_PAL1
	db 0, 8, 13, %111 | OAM_PAL1
	db 8, 0, 14, %111 | OAM_PAL1
	db 8, 8, 15, %111 | OAM_PAL1

.data_a9892
	db 4 ; size
	db 0, 0, 16, %111 | OAM_PAL1
	db 0, 8, 17, %111 | OAM_PAL1
	db 8, 0, 18, %111 | OAM_PAL1
	db 8, 8, 19, %111 | OAM_PAL1

.data_a98a3
	db 4 ; size
	db 0, 0, 2, %111 | OAM_PAL1
	db 0, 8, 3, %111 | OAM_PAL1
	db 8, 0, 4, %111 | OAM_PAL1
	db 8, 8, 5, %111 | OAM_PAL1

.data_a98b4
	db 4 ; size
	db 0, 0, 0, %111 | OAM_PAL1
	db 8, 0, 1, %111 | OAM_PAL1
	db 0, 8, 0, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 1, %111 | OAM_PAL1 | OAM_XFLIP

.data_a98c5
	db 4 ; size
	db 0, 0, 3, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 5, %111 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 2, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 4, %111 | OAM_PAL1 | OAM_XFLIP

.data_a98d6
	db 4 ; size
	db 0, 0, 13, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 15, %111 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 12, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 14, %111 | OAM_PAL1 | OAM_XFLIP

.data_a98e7
	db 4 ; size
	db 0, 0, 17, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 19, %111 | OAM_PAL1 | OAM_XFLIP
	db 0, 8, 16, %111 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 18, %111 | OAM_PAL1 | OAM_XFLIP

AnimData43::
	frame_table AnimFrameTable11
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData44::
	frame_table AnimFrameTable11
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData45::
	frame_table AnimFrameTable11
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData46::
	frame_table AnimFrameTable12
	frame_data 0, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable12::
	dw .data_a9940
	dw .data_a9951
	dw .data_a9962
	dw .data_a9973

.data_a9940
	db 4 ; size
	db -2, 7, 20, $0
	db -2, 15, 21, $0
	db 6, 7, 22, $0
	db 6, 15, 23, $0

.data_a9951
	db 4 ; size
	db 5, 4, 24, $0
	db 5, 12, 25, $0
	db -3, 4, 13, OAM_XFLIP
	db -3, 12, 12, OAM_XFLIP

.data_a9962
	db 4 ; size
	db 5, 2, 25, $0
	db -3, -6, 13, OAM_XFLIP
	db -3, 2, 12, OAM_XFLIP
	db 5, -6, 26, $0

.data_a9973
	db 4 ; size
	db 0, -16, 0, $0
	db 8, -16, 1, $0
	db 0, -8, 0, OAM_XFLIP
	db 8, -8, 1, OAM_XFLIP

AnimData47::
	frame_table AnimFrameTable12
	frame_data 1, 9, 0, 0
	frame_data 2, 7, 0, 0
	frame_data 3, 16, 0, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData48::
	frame_table AnimFrameTable13
	frame_data 0, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable13::
	dw .data_a99ae
	dw .data_a99bf
	dw .data_a99d0
	dw .data_a99e1

.data_a99ae
	db 4 ; size
	db 0, 0, 6, $0
	db 8, 0, 7, $0
	db 0, 8, 6, OAM_XFLIP
	db 8, 8, 7, OAM_XFLIP

.data_a99bf
	db 4 ; size
	db 0, 0, 2, $0
	db 0, 8, 3, $0
	db 8, 0, 4, $0
	db 8, 8, 5, $0

.data_a99d0
	db 4 ; size
	db 0, 0, 0, $0
	db 8, 0, 1, $0
	db 0, 8, 0, OAM_XFLIP
	db 8, 8, 1, OAM_XFLIP

.data_a99e1
	db 4 ; size
	db 0, 0, 3, OAM_XFLIP
	db 8, 0, 5, OAM_XFLIP
	db 0, 8, 2, OAM_XFLIP
	db 8, 8, 4, OAM_XFLIP

AnimData49::
	frame_table AnimFrameTable13
	frame_data 1, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData50::
	frame_table AnimFrameTable13
	frame_data 2, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData51::
	frame_table AnimFrameTable13
	frame_data 3, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData52::
	frame_table AnimFrameTable14
	frame_data 0, 13, 0, 0
	frame_data 1, 13, 0, 0
	frame_data 2, 13, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable14::
	dw .data_a9a30
	dw .data_a9a39
	dw .data_a9a4a
	dw .data_a9a5b
	dw .data_a9a60

.data_a9a30
	db 2 ; size
	db 0, 0, 0, $0
	db 0, 8, 0, OAM_XFLIP

.data_a9a39
	db 4 ; size
	db 0, 0, 1, $0
	db 8, 0, 2, $0
	db 0, 8, 1, OAM_XFLIP
	db 8, 8, 2, OAM_XFLIP

.data_a9a4a
	db 4 ; size
	db 0, 0, 3, $0
	db 8, 0, 4, $0
	db 0, 8, 3, OAM_XFLIP
	db 8, 8, 4, OAM_XFLIP

.data_a9a5b
	db 1 ; size
	db 4, 4, 5, $0

.data_a9a60
	db 4 ; size
	db 0, 0, 6, $0
	db 8, 0, 7, $0
	db 0, 8, 6, OAM_XFLIP
	db 8, 8, 7, OAM_XFLIP

AnimData53::
	frame_table AnimFrameTable14
	frame_data 4, 5, 0, 0
	frame_data 3, 10, 0, 0
	frame_data 0, 0, 0, 0

AnimData54::
	frame_table AnimFrameTable14
	frame_data 4, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 0, 0, 0, 0

AnimData55::
	frame_table AnimFrameTable15
	frame_data 0, 13, 0, 0
	frame_data 1, 13, 0, 0
	frame_data 2, 13, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable15::
	dw .data_a9aac
	dw .data_a9ab5
	dw .data_a9ac6
	dw .data_a9ad7
	dw .data_a9adc

.data_a9aac
	db 2 ; size
	db 0, 0, 0, %110
	db 0, 8, 0, %110 | OAM_XFLIP

.data_a9ab5
	db 4 ; size
	db 0, 0, 1, %110
	db 8, 0, 2, %110
	db 0, 8, 1, %110 | OAM_XFLIP
	db 8, 8, 2, %110 | OAM_XFLIP

.data_a9ac6
	db 4 ; size
	db 0, 0, 3, %110
	db 8, 0, 4, %110
	db 0, 8, 3, %110 | OAM_XFLIP
	db 8, 8, 4, %110 | OAM_XFLIP

.data_a9ad7
	db 1 ; size
	db 4, 4, 5, %100

.data_a9adc
	db 4 ; size
	db 0, 0, 6, %100
	db 8, 0, 7, %100
	db 0, 8, 6, %100 | OAM_XFLIP
	db 8, 8, 7, %100 | OAM_XFLIP

AnimData56::
	frame_table AnimFrameTable15
	frame_data 4, 5, 0, 0
	frame_data 3, 10, 0, 0
	frame_data 0, 0, 0, 0

AnimData57::
	frame_table AnimFrameTable15
	frame_data 4, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 0, 0, 0, 0

AnimData58::
	frame_table AnimFrameTable16
	frame_data 0, 6, 0, 0
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable16::
	dw .data_a9b2a
	dw .data_a9b3b
	dw .data_a9b4c
	dw .data_a9b5d

.data_a9b2a
	db 4 ; size
	db 0, 0, 0, OAM_PAL1
	db 0, 8, 1, OAM_PAL1
	db 8, 0, 2, OAM_PAL1
	db 8, 8, 3, OAM_PAL1

.data_a9b3b
	db 4 ; size
	db 0, 8, 0, OAM_PAL1 | OAM_XFLIP
	db 0, 0, 1, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 2, OAM_PAL1 | OAM_XFLIP
	db 8, 0, 3, OAM_PAL1 | OAM_XFLIP

.data_a9b4c
	db 4 ; size
	db 0, 0, 4, OAM_PAL1
	db 0, 8, 5, OAM_PAL1
	db 8, 0, 6, OAM_PAL1
	db 8, 8, 7, OAM_PAL1

.data_a9b5d
	db 4 ; size
	db 0, 8, 4, OAM_PAL1 | OAM_XFLIP
	db 0, 0, 5, OAM_PAL1 | OAM_XFLIP
	db 8, 8, 6, OAM_PAL1 | OAM_XFLIP
	db 8, 0, 7, OAM_PAL1 | OAM_XFLIP

AnimData59::
	frame_table AnimFrameTable17
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable17::
	dw .data_a9bf9
	dw .data_a9c0a
	dw .data_a9c0f
	dw .data_a9c20
	dw .data_a9c25
	dw .data_a9c36
	dw .data_a9c3b
	dw .data_a9c4c
	dw .data_a9c51
	dw .data_a9c62
	dw .data_a9c67
	dw .data_a9c78
	dw .data_a9c7d
	dw .data_a9c86
	dw .data_a9c97
	dw .data_a9c9c
	dw .data_a9cad
	dw .data_a9cb2
	dw .data_a9cc3
	dw .data_a9cc8
	dw .data_a9cd9
	dw .data_a9cde
	dw .data_a9cef
	dw .data_a9cf4
	dw .data_a9d05
	dw .data_a9d0a

.data_a9bf9
	db 4 ; size
	db 0, 0, 0, $0
	db 0, 8, 1, $0
	db 8, 0, 2, $0
	db 8, 8, 3, OAM_PAL1

.data_a9c0a
	db 1 ; size
	db 8, 8, 4, OAM_PAL1

.data_a9c0f
	db 4 ; size
	db -1, 0, 0, $0
	db -1, 8, 1, $0
	db 7, 0, 2, $0
	db 7, 8, 3, OAM_PAL1

.data_a9c20
	db 1 ; size
	db 7, 8, 4, OAM_PAL1

.data_a9c25
	db 4 ; size
	db 1, 0, 0, $0
	db 1, 8, 1, $0
	db 9, 0, 2, $0
	db 9, 8, 3, OAM_PAL1

.data_a9c36
	db 1 ; size
	db 9, 8, 4, OAM_PAL1

.data_a9c3b
	db 4 ; size
	db 0, 8, 0, OAM_XFLIP
	db 0, 0, 1, OAM_XFLIP
	db 8, 8, 2, OAM_XFLIP
	db 8, 0, 3, OAM_PAL1 | OAM_XFLIP

.data_a9c4c
	db 1 ; size
	db 8, 0, 4, OAM_PAL1 | OAM_XFLIP

.data_a9c51
	db 4 ; size
	db -1, 8, 0, OAM_XFLIP
	db -1, 0, 1, OAM_XFLIP
	db 7, 8, 2, OAM_XFLIP
	db 7, 0, 3, OAM_PAL1 | OAM_XFLIP

.data_a9c62
	db 1 ; size
	db 7, 0, 4, OAM_PAL1 | OAM_XFLIP

.data_a9c67
	db 4 ; size
	db 1, 8, 0, OAM_XFLIP
	db 1, 0, 1, OAM_XFLIP
	db 9, 8, 2, OAM_XFLIP
	db 9, 0, 3, OAM_PAL1 | OAM_XFLIP

.data_a9c78
	db 1 ; size
	db 9, 0, 4, OAM_PAL1 | OAM_XFLIP

.data_a9c7d
	db 2 ; size
	db 0, 8, 5, $0
	db 8, 8, 6, $0

.data_a9c86
	db 4 ; size
	db 0, 0, 7, $0
	db 8, 8, 9, $0
	db 8, 0, 8, $0
	db 0, 8, 3, OAM_PAL1 | OAM_YFLIP

.data_a9c97
	db 1 ; size
	db 0, 8, 4, OAM_PAL1 | OAM_YFLIP

.data_a9c9c
	db 4 ; size
	db -1, 0, 7, $0
	db 7, 8, 9, $0
	db 7, 0, 8, $0
	db -1, 8, 3, OAM_PAL1 | OAM_YFLIP

.data_a9cad
	db 1 ; size
	db -1, 8, 4, OAM_PAL1 | OAM_YFLIP

.data_a9cb2
	db 4 ; size
	db 1, 0, 7, $0
	db 9, 8, 9, $0
	db 9, 0, 8, $0
	db 1, 8, 3, OAM_PAL1 | OAM_YFLIP

.data_a9cc3
	db 1 ; size
	db 1, 8, 4, OAM_PAL1 | OAM_YFLIP

.data_a9cc8
	db 4 ; size
	db 0, 8, 7, OAM_XFLIP
	db 8, 0, 9, OAM_XFLIP
	db 8, 8, 8, OAM_XFLIP
	db 0, 0, 3, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_a9cd9
	db 1 ; size
	db 0, 0, 4, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_a9cde
	db 4 ; size
	db -1, 8, 7, OAM_XFLIP
	db 7, 0, 9, OAM_XFLIP
	db 7, 8, 8, OAM_XFLIP
	db -1, 0, 3, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_a9cef
	db 1 ; size
	db -1, 0, 4, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_a9cf4
	db 4 ; size
	db 1, 8, 7, OAM_XFLIP
	db 9, 0, 9, OAM_XFLIP
	db 9, 8, 8, OAM_XFLIP
	db 1, 0, 3, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_a9d05
	db 1 ; size
	db 1, 0, 4, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_a9d0a
	db 2 ; size
	db 0, 0, 5, OAM_XFLIP
	db 8, 0, 6, OAM_XFLIP

AnimData60::
	frame_table AnimFrameTable17
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData61::
	frame_table AnimFrameTable17
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData62::
	frame_table AnimFrameTable17
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 16, 2, 0, 0
	frame_data 15, 2, 0, 0
	frame_data 16, 2, 0, 0
	frame_data 15, 2, 0, 0
	frame_data 16, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 18, 2, 0, 0
	frame_data 17, 2, 0, 0
	frame_data 18, 2, 0, 0
	frame_data 17, 2, 0, 0
	frame_data 18, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData63::
	frame_table AnimFrameTable17
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 22, 2, 0, 0
	frame_data 21, 2, 0, 0
	frame_data 22, 2, 0, 0
	frame_data 21, 2, 0, 0
	frame_data 22, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 24, 2, 0, 0
	frame_data 23, 2, 0, 0
	frame_data 24, 2, 0, 0
	frame_data 23, 2, 0, 0
	frame_data 24, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData64::
	frame_table AnimFrameTable17
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData65::
	frame_table AnimFrameTable18
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 0, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable18::
	dw .data_a9f51
	dw .data_a9f62
	dw .data_a9f67
	dw .data_a9f78
	dw .data_a9f7d
	dw .data_a9f8e
	dw .data_a9f93
	dw .data_a9fa4
	dw .data_a9fa9
	dw .data_a9fba
	dw .data_a9fbf
	dw .data_a9fd0
	dw .data_a9fd5
	dw .data_a9fde
	dw .data_a9fef
	dw .data_a9ff4
	dw .data_aa005
	dw .data_aa00a
	dw .data_aa01b
	dw .data_aa020
	dw .data_aa031
	dw .data_aa036
	dw .data_aa047
	dw .data_aa04c
	dw .data_aa05d
	dw .data_aa062

.data_a9f51
	db 4 ; size
	db 0, 0, 0, %001 | OAM_PAL1
	db 0, 8, 1, %001 | OAM_PAL1
	db 8, 0, 2, %001 | OAM_PAL1
	db 8, 8, 3, %101 | OAM_PAL1

.data_a9f62
	db 1 ; size
	db 8, 8, 4, %101 | OAM_PAL1

.data_a9f67
	db 4 ; size
	db -1, 0, 0, %001 | OAM_PAL1
	db -1, 8, 1, %001 | OAM_PAL1
	db 7, 0, 2, %001 | OAM_PAL1
	db 7, 8, 3, %101 | OAM_PAL1

.data_a9f78
	db 1 ; size
	db 7, 8, 4, %101 | OAM_PAL1

.data_a9f7d
	db 4 ; size
	db 1, 0, 0, %001 | OAM_PAL1
	db 1, 8, 1, %001 | OAM_PAL1
	db 9, 0, 2, %001 | OAM_PAL1
	db 9, 8, 3, %101 | OAM_PAL1

.data_a9f8e
	db 1 ; size
	db 9, 8, 4, %101 | OAM_PAL1

.data_a9f93
	db 4 ; size
	db 0, 8, 0, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 0, 1, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 2, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP

.data_a9fa4
	db 1 ; size
	db 8, 0, 4, %101 | OAM_PAL1 | OAM_XFLIP

.data_a9fa9
	db 4 ; size
	db -1, 8, 0, %001 | OAM_PAL1 | OAM_XFLIP
	db -1, 0, 1, %001 | OAM_PAL1 | OAM_XFLIP
	db 7, 8, 2, %001 | OAM_PAL1 | OAM_XFLIP
	db 7, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP

.data_a9fba
	db 1 ; size
	db 7, 0, 4, %101 | OAM_PAL1 | OAM_XFLIP

.data_a9fbf
	db 4 ; size
	db 1, 8, 0, %001 | OAM_PAL1 | OAM_XFLIP
	db 1, 0, 1, %001 | OAM_PAL1 | OAM_XFLIP
	db 9, 8, 2, %001 | OAM_PAL1 | OAM_XFLIP
	db 9, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP

.data_a9fd0
	db 1 ; size
	db 9, 0, 4, %101 | OAM_PAL1 | OAM_XFLIP

.data_a9fd5
	db 2 ; size
	db 0, 8, 5, %001 | OAM_PAL1
	db 8, 8, 6, %001 | OAM_PAL1

.data_a9fde
	db 4 ; size
	db 0, 0, 7, %001 | OAM_PAL1
	db 8, 8, 9, %001 | OAM_PAL1
	db 8, 0, 8, %001 | OAM_PAL1
	db 0, 8, 3, %101 | OAM_PAL1 | OAM_YFLIP

.data_a9fef
	db 1 ; size
	db 0, 8, 4, %101 | OAM_PAL1 | OAM_YFLIP

.data_a9ff4
	db 4 ; size
	db -1, 0, 7, %001 | OAM_PAL1
	db 7, 8, 9, %001 | OAM_PAL1
	db 7, 0, 8, %001 | OAM_PAL1
	db -1, 8, 3, %101 | OAM_PAL1 | OAM_YFLIP

.data_aa005
	db 1 ; size
	db -1, 8, 4, %101 | OAM_PAL1 | OAM_YFLIP

.data_aa00a
	db 4 ; size
	db 1, 0, 7, %001 | OAM_PAL1
	db 9, 8, 9, %001 | OAM_PAL1
	db 9, 0, 8, %001 | OAM_PAL1
	db 1, 8, 3, %101 | OAM_PAL1 | OAM_YFLIP

.data_aa01b
	db 1 ; size
	db 1, 8, 4, %101 | OAM_PAL1 | OAM_YFLIP

.data_aa020
	db 4 ; size
	db 0, 8, 7, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 9, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 8, 8, %001 | OAM_PAL1 | OAM_XFLIP
	db 0, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_aa031
	db 1 ; size
	db 0, 0, 4, %101 | OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_aa036
	db 4 ; size
	db -1, 8, 7, %001 | OAM_PAL1 | OAM_XFLIP
	db 7, 0, 9, %001 | OAM_PAL1 | OAM_XFLIP
	db 7, 8, 8, %001 | OAM_PAL1 | OAM_XFLIP
	db -1, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_aa047
	db 1 ; size
	db -1, 0, 4, %101 | OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_aa04c
	db 4 ; size
	db 1, 8, 7, %001 | OAM_PAL1 | OAM_XFLIP
	db 9, 0, 9, %001 | OAM_PAL1 | OAM_XFLIP
	db 9, 8, 8, %001 | OAM_PAL1 | OAM_XFLIP
	db 1, 0, 3, %101 | OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_aa05d
	db 1 ; size
	db 1, 0, 4, %101 | OAM_PAL1 | OAM_XFLIP | OAM_YFLIP

.data_aa062
	db 2 ; size
	db 0, 0, 5, %001 | OAM_PAL1 | OAM_XFLIP
	db 8, 0, 6, %001 | OAM_PAL1 | OAM_XFLIP

AnimData66::
	frame_table AnimFrameTable18
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 9, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 10, 2, 0, 0
	frame_data 11, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData67::
	frame_table AnimFrameTable18
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 12, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData68::
	frame_table AnimFrameTable18
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 16, 2, 0, 0
	frame_data 15, 2, 0, 0
	frame_data 16, 2, 0, 0
	frame_data 15, 2, 0, 0
	frame_data 16, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 14, 2, 0, 0
	frame_data 13, 2, 0, 0
	frame_data 18, 2, 0, 0
	frame_data 17, 2, 0, 0
	frame_data 18, 2, 0, 0
	frame_data 17, 2, 0, 0
	frame_data 18, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData69::
	frame_table AnimFrameTable18
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 22, 2, 0, 0
	frame_data 21, 2, 0, 0
	frame_data 22, 2, 0, 0
	frame_data 21, 2, 0, 0
	frame_data 22, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 20, 2, 0, 0
	frame_data 19, 2, 0, 0
	frame_data 24, 2, 0, 0
	frame_data 23, 2, 0, 0
	frame_data 24, 2, 0, 0
	frame_data 23, 2, 0, 0
	frame_data 24, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData70::
	frame_table AnimFrameTable18
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 25, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 0, 0, 0, 0

AnimData71::
	frame_table AnimFrameTable19
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

AnimFrameTable19::
	dw .data_aa253
	dw .data_aa284
	dw .data_aa2c5

.data_aa253
	db 12 ; size
	db -8, -8, 9, $0
	db -16, -8, 8, $0
	db -8, -16, 10, $0
	db -8, 0, 9, OAM_XFLIP
	db -16, 0, 8, OAM_XFLIP
	db -8, 8, 10, OAM_XFLIP
	db 0, -8, 9, OAM_YFLIP
	db 8, -8, 8, OAM_YFLIP
	db 0, -16, 10, OAM_YFLIP
	db 0, 0, 9, OAM_XFLIP | OAM_YFLIP
	db 8, 0, 8, OAM_XFLIP | OAM_YFLIP
	db 0, 8, 10, OAM_XFLIP | OAM_YFLIP

.data_aa284
	db 16 ; size
	db -16, -16, 4, $0
	db -16, -8, 5, $0
	db -8, -8, 7, $0
	db -8, -16, 6, $0
	db -16, 8, 4, OAM_XFLIP
	db -16, 0, 5, OAM_XFLIP
	db -8, 0, 7, OAM_XFLIP
	db -8, 8, 6, OAM_XFLIP
	db 8, -16, 4, OAM_YFLIP
	db 8, -8, 5, OAM_YFLIP
	db 0, -8, 7, OAM_YFLIP
	db 0, -16, 6, OAM_YFLIP
	db 8, 8, 4, OAM_XFLIP | OAM_YFLIP
	db 8, 0, 5, OAM_XFLIP | OAM_YFLIP
	db 0, 0, 7, OAM_XFLIP | OAM_YFLIP
	db 0, 8, 6, OAM_XFLIP | OAM_YFLIP

.data_aa2c5
	db 16 ; size
	db -16, -16, 0, $0
	db -16, -8, 1, $0
	db -8, -16, 2, $0
	db -8, -8, 3, $0
	db -16, 8, 0, OAM_XFLIP
	db -16, 0, 1, OAM_XFLIP
	db -8, 8, 2, OAM_XFLIP
	db -8, 0, 3, OAM_XFLIP
	db 8, 8, 0, OAM_XFLIP | OAM_YFLIP
	db 8, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 0, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 0, 0, 3, OAM_XFLIP | OAM_YFLIP
	db 8, -16, 0, OAM_YFLIP
	db 8, -8, 1, OAM_YFLIP
	db 0, -16, 2, OAM_YFLIP
	db 0, -8, 3, OAM_YFLIP

AnimData72::
	frame_table AnimFrameTable20
	frame_data 0, 7, 0, 0
	frame_data 1, 7, 0, 0
	frame_data 0, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable20::
	dw .data_aa325
	dw .data_aa386

.data_aa325
	db 24 ; size
	db -24, -32, 0, $0
	db -24, -24, 1, $0
	db -24, -16, 2, $0
	db -24, 24, 3, $0
	db -16, 24, 4, $0
	db -8, 24, 5, $0
	db -24, -8, 1, $0
	db -24, 0, 2, $0
	db -24, 8, 1, $0
	db -24, 16, 2, $0
	db 0, 24, 4, $0
	db 8, 24, 5, $0
	db 16, 24, 0, OAM_XFLIP | OAM_YFLIP
	db 16, 16, 1, OAM_XFLIP | OAM_YFLIP
	db 16, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 16, -32, 3, OAM_XFLIP | OAM_YFLIP
	db 16, 0, 1, OAM_XFLIP | OAM_YFLIP
	db 16, -8, 2, OAM_XFLIP | OAM_YFLIP
	db 16, -16, 1, OAM_XFLIP | OAM_YFLIP
	db 16, -24, 2, OAM_XFLIP | OAM_YFLIP
	db 8, -32, 4, OAM_XFLIP | OAM_YFLIP
	db 0, -32, 5, OAM_XFLIP | OAM_YFLIP
	db -8, -32, 4, OAM_XFLIP | OAM_YFLIP
	db -16, -32, 5, OAM_XFLIP | OAM_YFLIP

.data_aa386
	db 24 ; size
	db -24, 24, 0, OAM_XFLIP
	db -24, 16, 1, OAM_XFLIP
	db -24, 8, 2, OAM_XFLIP
	db -24, -32, 3, OAM_XFLIP
	db -16, -32, 4, OAM_XFLIP
	db -8, -32, 5, OAM_XFLIP
	db -24, 0, 1, OAM_XFLIP
	db -24, -8, 2, OAM_XFLIP
	db -24, -16, 1, OAM_XFLIP
	db -24, -24, 2, OAM_XFLIP
	db 0, -32, 4, OAM_XFLIP
	db 8, -32, 5, OAM_XFLIP
	db 16, -32, 0, OAM_YFLIP
	db 16, -24, 1, OAM_YFLIP
	db 16, -16, 2, OAM_YFLIP
	db 16, 24, 3, OAM_YFLIP
	db 16, -8, 1, OAM_YFLIP
	db 16, 0, 2, OAM_YFLIP
	db 16, 8, 1, OAM_YFLIP
	db 16, 16, 2, OAM_YFLIP
	db 8, 24, 4, OAM_YFLIP
	db 0, 24, 5, OAM_YFLIP
	db -8, 24, 4, OAM_YFLIP
	db -16, 24, 5, OAM_YFLIP

AnimData73::
	frame_table AnimFrameTable21
	frame_data 0, 10, 0, 0
	frame_data 1, 14, 0, 0
	frame_data 2, 10, 0, 0
	frame_data 3, 7, 0, 0
	frame_data 4, 7, 0, 0
	frame_data 3, 7, 0, -1
	frame_data 4, 7, 0, 0
	frame_data 3, 7, 0, 1
	frame_data 4, 7, 0, 0
	frame_data 3, 7, 0, -1
	frame_data 4, 7, 0, 0
	frame_data 4, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable21::
	dw .data_aa428
	dw .data_aa449
	dw .data_aa46a
	dw .data_aa48b
	dw .data_aa4b0

.data_aa428
	db 8 ; size
	db 0, 8, 2, OAM_XFLIP
	db 0, 0, 2, $0
	db -8, 0, 2, OAM_YFLIP
	db -8, 8, 2, OAM_XFLIP | OAM_YFLIP
	db 0, -16, 2, $0
	db 0, -8, 2, OAM_XFLIP
	db -8, -8, 2, OAM_XFLIP | OAM_YFLIP
	db -8, -16, 2, OAM_YFLIP

.data_aa449
	db 8 ; size
	db -7, -8, 0, OAM_XFLIP
	db -7, -16, 1, OAM_XFLIP
	db 1, -8, 2, OAM_XFLIP
	db 1, -16, 3, OAM_XFLIP
	db -7, 0, 0, $0
	db -7, 8, 1, $0
	db 1, 0, 2, $0
	db 1, 8, 3, $0

.data_aa46a
	db 8 ; size
	db -6, -16, 1, OAM_XFLIP
	db -6, -8, 1, $0
	db 2, -16, 5, OAM_XFLIP
	db 2, -8, 4, OAM_XFLIP
	db -6, 8, 1, $0
	db -6, 0, 1, OAM_XFLIP
	db 2, 8, 5, $0
	db 2, 0, 4, $0

.data_aa48b
	db 9 ; size
	db -5, -16, 1, OAM_XFLIP
	db 3, -16, 5, OAM_XFLIP
	db -5, -8, 1, $0
	db 3, -8, 5, $0
	db -5, 8, 1, $0
	db 3, 8, 5, $0
	db -5, 0, 1, OAM_XFLIP
	db 3, 0, 5, OAM_XFLIP
	db -14, 11, 6, $0

.data_aa4b0
	db 9 ; size
	db -5, -16, 1, OAM_XFLIP
	db 3, -16, 5, OAM_XFLIP
	db -5, -8, 1, $0
	db 3, -8, 5, $0
	db -5, 8, 1, $0
	db 3, 8, 5, $0
	db -5, 0, 1, OAM_XFLIP
	db 3, 0, 5, OAM_XFLIP
	db -18, 15, 7, $0

AnimData74::
	frame_table AnimFrameTable22
	frame_data 0, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 5, 8, 0, 0
	frame_data 6, 8, 0, 0
	frame_data 7, 8, 0, 0
	frame_data 7, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable22::
	dw .data_aa510
	dw .data_aa531
	dw .data_aa552
	dw .data_aa573
	dw .data_aa594
	dw .data_aa5b5
	dw .data_aa5d6
	dw .data_aa5f7

.data_aa510
	db 8 ; size
	db -8, -8, 0, $0
	db -8, 0, 0, OAM_XFLIP
	db -24, -8, 0, $0
	db -24, 0, 0, OAM_XFLIP
	db -16, -8, 1, $0
	db 0, -8, 1, $0
	db -16, 0, 1, OAM_XFLIP
	db 0, 0, 1, OAM_XFLIP

.data_aa531
	db 8 ; size
	db -16, -24, 0, $0
	db -16, -16, 0, OAM_XFLIP
	db -16, 8, 0, $0
	db -16, 16, 0, OAM_XFLIP
	db -8, -24, 1, $0
	db -8, -16, 1, OAM_XFLIP
	db -8, 8, 1, $0
	db -8, 16, 1, OAM_XFLIP

.data_aa552
	db 8 ; size
	db -24, -32, 0, $0
	db -24, -24, 0, OAM_XFLIP
	db -8, 16, 0, $0
	db -8, 24, 0, OAM_XFLIP
	db -16, -32, 1, $0
	db -16, -24, 1, OAM_XFLIP
	db 0, 16, 1, $0
	db 0, 24, 1, OAM_XFLIP

.data_aa573
	db 8 ; size
	db -32, -24, 0, $0
	db -32, -16, 0, OAM_XFLIP
	db 0, 8, 0, $0
	db 0, 16, 0, OAM_XFLIP
	db -24, -24, 1, $0
	db 8, 8, 1, $0
	db -24, -16, 1, OAM_XFLIP
	db 8, 16, 1, OAM_XFLIP

.data_aa594
	db 8 ; size
	db -24, -8, 0, $0
	db -24, 0, 0, OAM_XFLIP
	db -8, -8, 0, $0
	db -8, 0, 0, OAM_XFLIP
	db -16, -8, 1, $0
	db 0, -8, 1, $0
	db -16, 0, 1, OAM_XFLIP
	db 0, 0, 1, OAM_XFLIP

.data_aa5b5
	db 8 ; size
	db -16, 8, 0, $0
	db -16, 16, 0, OAM_XFLIP
	db -16, -24, 0, $0
	db -16, -16, 0, OAM_XFLIP
	db -8, -24, 1, $0
	db -8, -16, 1, OAM_XFLIP
	db -8, 8, 1, $0
	db -8, 16, 1, OAM_XFLIP

.data_aa5d6
	db 8 ; size
	db -8, 16, 0, $0
	db -8, 24, 0, OAM_XFLIP
	db -24, -32, 0, $0
	db -24, -24, 0, OAM_XFLIP
	db -16, -32, 1, $0
	db -16, -24, 1, OAM_XFLIP
	db 0, 16, 1, $0
	db 0, 24, 1, OAM_XFLIP

.data_aa5f7
	db 8 ; size
	db 0, 8, 0, $0
	db 0, 16, 0, OAM_XFLIP
	db -32, -24, 0, $0
	db -32, -16, 0, OAM_XFLIP
	db -24, -24, 1, $0
	db -24, -16, 1, OAM_XFLIP
	db 8, 8, 1, $0
	db 8, 16, 1, OAM_XFLIP

AnimData75::
	frame_table AnimFrameTable23
	frame_data 0, 10, 1, 1
	frame_data 1, 10, 0, 0
	frame_data 2, 10, 0, 0
	frame_data 3, 32, 0, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable23::
	dw .data_aa63b
	dw .data_aa64c
	dw .data_aa675
	dw .data_aa6b6

.data_aa63b
	db 4 ; size
	db -24, -8, 3, $0
	db -24, 24, 3, $0
	db -24, -32, 1, $0
	db -24, 8, 1, $0

.data_aa64c
	db 10 ; size
	db -16, -8, 3, $0
	db -24, -8, 2, $0
	db -24, 8, 0, $0
	db -16, 24, 3, $0
	db -24, 24, 2, $0
	db -16, -32, 1, $0
	db -24, -32, 0, $0
	db -24, -16, 1, OAM_XFLIP
	db -16, 8, 1, $0
	db -24, 0, 3, $0

.data_aa675
	db 16 ; size
	db -8, -8, 3, $0
	db -16, 8, 0, $0
	db -16, -8, 2, $0
	db -24, 8, 0, $0
	db -24, -8, 2, $0
	db -8, 24, 3, $0
	db -16, 24, 2, $0
	db -24, 24, 2, $0
	db -24, 0, 2, $0
	db -24, -16, 0, OAM_XFLIP
	db -8, -32, 1, $0
	db -16, -32, 0, $0
	db -24, -32, 0, $0
	db -16, -16, 1, OAM_XFLIP
	db -8, 8, 1, $0
	db -16, 0, 3, $0

.data_aa6b6
	db 22 ; size
	db 0, -8, 3, $0
	db -8, 8, 0, $0
	db -8, -8, 2, $0
	db -16, 8, 0, $0
	db -16, -8, 2, $0
	db 0, 24, 3, $0
	db -8, 24, 2, $0
	db -16, 24, 2, $0
	db -24, 8, 0, $0
	db -24, -8, 2, $0
	db -24, 24, 2, $0
	db -16, 0, 2, $0
	db -24, 0, 2, $0
	db -24, -16, 0, OAM_XFLIP
	db -16, -16, 0, OAM_XFLIP
	db 0, -32, 1, $0
	db -8, -32, 0, $0
	db -16, -32, 0, $0
	db -24, -32, 0, $0
	db -8, -16, 1, OAM_XFLIP
	db 0, 8, 1, $0
	db -8, 0, 3, $0

AnimData76::
	frame_table AnimFrameTable24
	frame_data 0, 5, 0, 0
	frame_data 1, 5, 0, 0
	frame_data 0, 5, 0, 0
	frame_data 1, 5, 0, 0
	frame_data -1, 16, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable24::
	dw .data_aa73c
	dw .data_aa74d
	dw .data_aa772
	dw .data_aa7a7
	dw .data_aa7dc
	dw .data_aa821
	dw .data_aa866

.data_aa73c
	db 4 ; size
	db -8, -8, 0, $0
	db -8, 0, 1, $0
	db 0, -8, 2, $0
	db 0, 0, 3, $0

.data_aa74d
	db 9 ; size
	db -12, -12, 4, $0
	db -12, -4, 5, $0
	db -4, -12, 6, $0
	db -4, -4, 7, $0
	db -12, 4, 4, OAM_XFLIP
	db -4, 4, 6, OAM_XFLIP
	db 4, -12, 4, OAM_YFLIP
	db 4, -4, 5, OAM_YFLIP
	db 4, 4, 4, OAM_XFLIP | OAM_YFLIP

.data_aa772
	db 13 ; size
	db -8, 8, 0, $0
	db -8, 16, 1, $0
	db 0, 8, 2, $0
	db 0, 16, 3, $0
	db -20, -28, 4, $0
	db -20, -20, 5, $0
	db -12, -28, 6, $0
	db -12, -20, 7, $0
	db -20, -12, 4, OAM_XFLIP
	db -12, -12, 6, OAM_XFLIP
	db -4, -28, 4, OAM_YFLIP
	db -4, -20, 5, OAM_YFLIP
	db -4, -12, 4, OAM_XFLIP | OAM_YFLIP

.data_aa7a7
	db 13 ; size
	db 0, -12, 0, $0
	db 0, -4, 1, $0
	db 8, -12, 2, $0
	db 8, -4, 3, $0
	db -12, 4, 4, $0
	db -12, 12, 5, $0
	db -4, 4, 6, $0
	db -4, 12, 7, $0
	db -12, 20, 4, OAM_XFLIP
	db -4, 20, 6, OAM_XFLIP
	db 4, 4, 4, OAM_YFLIP
	db 4, 12, 5, OAM_YFLIP
	db 4, 20, 4, OAM_XFLIP | OAM_YFLIP

.data_aa7dc
	db 17 ; size
	db 4, 8, 0, $0
	db 4, 16, 1, $0
	db 12, 8, 2, $0
	db 12, 16, 3, $0
	db -24, -32, 4, $0
	db -24, -24, 5, $0
	db -16, -32, 6, $0
	db -16, -24, 7, $0
	db -24, -16, 4, OAM_XFLIP
	db -16, -16, 6, OAM_XFLIP
	db -8, -32, 4, OAM_YFLIP
	db -8, -24, 5, OAM_YFLIP
	db -8, -16, 4, OAM_XFLIP | OAM_YFLIP
	db -29, -11, 8, $0
	db -29, -37, 8, OAM_XFLIP
	db -3, -11, 8, OAM_YFLIP
	db -3, -37, 8, OAM_XFLIP | OAM_YFLIP

.data_aa821
	db 17 ; size
	db 0, -24, 0, $0
	db 0, -16, 1, $0
	db 8, -24, 2, $0
	db 8, -16, 3, $0
	db 0, 4, 4, $0
	db 0, 12, 5, $0
	db 8, 4, 6, $0
	db 8, 12, 7, $0
	db 0, 20, 4, OAM_XFLIP
	db 8, 20, 6, OAM_XFLIP
	db 16, 4, 4, OAM_YFLIP
	db 16, 12, 5, OAM_YFLIP
	db 16, 20, 4, OAM_XFLIP | OAM_YFLIP
	db -5, 25, 8, $0
	db -5, -1, 8, OAM_XFLIP
	db 21, 25, 8, OAM_YFLIP
	db 21, -1, 8, OAM_XFLIP | OAM_YFLIP

.data_aa866
	db 13 ; size
	db -4, -28, 4, $0
	db -4, -20, 5, $0
	db 4, -28, 6, $0
	db 4, -20, 7, $0
	db -4, -12, 4, OAM_XFLIP
	db 4, -12, 6, OAM_XFLIP
	db 12, -28, 4, OAM_YFLIP
	db 12, -20, 5, OAM_YFLIP
	db 12, -12, 4, OAM_XFLIP | OAM_YFLIP
	db -9, -7, 8, $0
	db -9, -33, 8, OAM_XFLIP
	db 17, -7, 8, OAM_YFLIP
	db 17, -33, 8, OAM_XFLIP | OAM_YFLIP

AnimData77::
	frame_table AnimFrameTable24
	frame_data 0, 5, -16, -8
	frame_data 2, 5, 16, 8
	frame_data 3, 5, 0, 0
	frame_data 1, 5, -4, 8
	frame_data -1, 16, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData78::
	frame_table AnimFrameTable24
	frame_data 0, 5, -20, -12
	frame_data 4, 5, 20, 12
	frame_data 5, 5, 0, 0
	frame_data 6, 5, 0, 0
	frame_data 1, 5, 8, -8
	frame_data 6, 5, 16, -8
	frame_data -1, 16, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData79::
	frame_table AnimFrameTable25
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, 1, 0, 0
	frame_data 0, 1, 0, -1
	frame_data 0, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable25::
	dw .data_aa982
	dw .data_aa987
	dw .data_aa98c
	dw .data_aa991
	dw .data_aa996
	dw .data_aa99b
	dw .data_aa9a0
	dw .data_aa9a5
	dw .data_aa9aa
	dw .data_aa9af
	dw .data_aa9b4
	dw .data_aa9c5
	dw .data_aa9d2

.data_aa982
	db 1 ; size
	db 0, 0, 0, $0

.data_aa987
	db 1 ; size
	db 0, 0, 1, $0

.data_aa98c
	db 1 ; size
	db 0, 0, 2, $0

.data_aa991
	db 1 ; size
	db 0, 0, 3, $0

.data_aa996
	db 1 ; size
	db 0, 0, 4, $0

.data_aa99b
	db 1 ; size
	db 0, 0, 5, $0

.data_aa9a0
	db 1 ; size
	db 0, 0, 6, $0

.data_aa9a5
	db 1 ; size
	db 0, 0, 7, $0

.data_aa9aa
	db 1 ; size
	db 0, 0, 8, $0

.data_aa9af
	db 1 ; size
	db 0, 0, 9, $0

.data_aa9b4
	db 4 ; size
	db 1, -3, 14, $0
	db 1, 5, 15, $0
	db 1, 13, 16, $0
	db 1, 21, 17, $0

.data_aa9c5
	db 3 ; size
	db 1, -3, 11, $0
	db 1, 5, 12, $0
	db 1, 13, 13, $0

.data_aa9d2
	db 1 ; size
	db 0, 0, 10, $0

AnimData80::
	frame_table AnimFrameTable25
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, 1, 0, 0
	frame_data 1, 1, 0, -1
	frame_data 1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData81::
	frame_table AnimFrameTable25
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, 1, 0, 0
	frame_data 2, 1, 0, -1
	frame_data 2, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData82::
	frame_table AnimFrameTable25
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, 1, 0, 0
	frame_data 3, 1, 0, -1
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData83::
	frame_table AnimFrameTable25
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, 1, 0, 0
	frame_data 4, 1, 0, -1
	frame_data 4, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData84::
	frame_table AnimFrameTable25
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, 1, 0, 0
	frame_data 5, 1, 0, -1
	frame_data 5, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData85::
	frame_table AnimFrameTable25
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, 1, 0, 0
	frame_data 6, 1, 0, -1
	frame_data 6, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData86::
	frame_table AnimFrameTable25
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, 1, 0, 0
	frame_data 7, 1, 0, -1
	frame_data 7, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData87::
	frame_table AnimFrameTable25
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, 1, 0, 0
	frame_data 8, 1, 0, -1
	frame_data 8, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData88::
	frame_table AnimFrameTable25
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, 1, 0, 0
	frame_data 9, 1, 0, -1
	frame_data 9, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData89::
	frame_table AnimFrameTable25
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, 1, 0, 0
	frame_data 10, 1, 0, -1
	frame_data 10, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData90::
	frame_table AnimFrameTable25
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, 1, 0, 0
	frame_data 11, 1, 0, -1
	frame_data 11, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData91::
	frame_table AnimFrameTable25
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, 1, 0, 0
	frame_data 12, 1, 0, -1
	frame_data 12, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData92::
	frame_table AnimFrameTable26
	frame_data 0, 2, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 1, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 2, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 6, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable26::
	dw .data_ab074
	dw .data_ab07d
	dw .data_ab09a
	dw .data_ab0b7
	dw .data_ab0c8
	dw .data_ab0d9
	dw .data_ab0ea

.data_ab074
	db 2 ; size
	db -32, -5, 0, $0
	db -24, -4, 1, OAM_XFLIP

.data_ab07d
	db 7 ; size
	db -32, -3, 0, OAM_XFLIP
	db -24, -4, 1, OAM_XFLIP
	db -16, -2, 2, OAM_XFLIP
	db -8, 0, 3, OAM_XFLIP
	db -8, -8, 4, OAM_XFLIP
	db 0, 0, 5, OAM_XFLIP
	db 0, -8, 6, OAM_XFLIP

.data_ab09a
	db 7 ; size
	db -32, -5, 0, $0
	db -24, -4, 1, $0
	db -16, -6, 2, $0
	db -8, -8, 3, $0
	db -8, 0, 4, $0
	db 0, -8, 5, $0
	db 0, 0, 6, $0

.data_ab0b7
	db 4 ; size
	db -12, -14, 8, $0
	db 4, 6, 8, $0
	db 4, -14, 7, $0
	db -12, 6, 7, $0

.data_ab0c8
	db 4 ; size
	db -16, 10, 8, OAM_XFLIP
	db 8, -18, 8, OAM_XFLIP
	db 8, 10, 7, OAM_XFLIP
	db -16, -18, 7, OAM_XFLIP

.data_ab0d9
	db 4 ; size
	db -18, -22, 8, $0
	db 10, 14, 8, $0
	db 10, -22, 7, $0
	db -18, 14, 7, $0

.data_ab0ea
	db 4 ; size
	db -22, 18, 8, OAM_XFLIP
	db 14, -26, 8, OAM_XFLIP
	db 14, 18, 7, OAM_XFLIP
	db -22, -26, 7, OAM_XFLIP

AnimData93::
	frame_table AnimFrameTable26
	frame_data 8, 8, 0, 0
	frame_data 0, 0, 0, 0

AnimData94::
	frame_table AnimFrameTable27
	frame_data 0, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 1, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 2, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 3, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 4, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 5, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable27::
	dw .data_ab14d
	dw .data_ab17a
	dw .data_ab1c7
	dw .data_ab1f4
	dw .data_ab241
	dw .data_ab26e

.data_ab14d
	db 11 ; size
	db -40, -8, 0, $0
	db -40, 0, 1, $0
	db -32, -12, 2, $0
	db -32, -4, 3, $0
	db -24, -20, 4, $0
	db -24, -12, 5, $0
	db -24, -4, 6, $0
	db -16, -4, 9, $0
	db -16, 4, 10, $0
	db -8, 0, 13, $0
	db -8, 8, 14, $0

.data_ab17a
	db 19 ; size
	db -40, -8, 0, $0
	db -40, 0, 1, $0
	db -32, -12, 2, $0
	db -32, -4, 3, $0
	db -24, -20, 4, $0
	db -24, -12, 5, $0
	db -24, -4, 6, $0
	db -16, -4, 9, $0
	db -16, 4, 10, $0
	db -8, 0, 13, $0
	db -8, 8, 14, $0
	db -16, -24, 7, $0
	db -16, -16, 8, $0
	db -8, -24, 11, $0
	db -8, -16, 12, $0
	db 0, 8, 15, $0
	db 0, 16, 16, $0
	db 8, 16, 11, OAM_XFLIP
	db 8, 8, 12, OAM_XFLIP

.data_ab1c7
	db 11 ; size
	db -40, 0, 0, OAM_XFLIP
	db -40, -8, 1, OAM_XFLIP
	db -32, 4, 2, OAM_XFLIP
	db -32, -4, 3, OAM_XFLIP
	db -24, 12, 4, OAM_XFLIP
	db -24, 4, 5, OAM_XFLIP
	db -24, -4, 6, OAM_XFLIP
	db -16, -4, 9, OAM_XFLIP
	db -16, -12, 10, OAM_XFLIP
	db -8, -8, 13, OAM_XFLIP
	db -8, -16, 14, OAM_XFLIP

.data_ab1f4
	db 19 ; size
	db -40, 0, 0, OAM_XFLIP
	db -40, -8, 1, OAM_XFLIP
	db -32, 4, 2, OAM_XFLIP
	db -32, -4, 3, OAM_XFLIP
	db -24, 12, 4, OAM_XFLIP
	db -24, 4, 5, OAM_XFLIP
	db -24, -4, 6, OAM_XFLIP
	db -16, -4, 9, OAM_XFLIP
	db -16, -12, 10, OAM_XFLIP
	db -8, -8, 13, OAM_XFLIP
	db -8, -16, 14, OAM_XFLIP
	db -16, 16, 7, OAM_XFLIP
	db -16, 8, 8, OAM_XFLIP
	db -8, 16, 11, OAM_XFLIP
	db -8, 8, 12, OAM_XFLIP
	db 0, -16, 15, OAM_XFLIP
	db 0, -24, 16, OAM_XFLIP
	db 8, -24, 11, $0
	db 8, -16, 12, $0

.data_ab241
	db 11 ; size
	db -40, -8, 0, $0
	db -40, 0, 1, $0
	db -32, -12, 2, $0
	db -32, -4, 3, $0
	db -24, -4, 4, OAM_XFLIP
	db -24, -12, 5, OAM_XFLIP
	db -24, -20, 6, OAM_XFLIP
	db -16, -20, 9, OAM_XFLIP
	db -16, -28, 10, OAM_XFLIP
	db -8, -32, 13, $0
	db -8, -24, 14, $0

.data_ab26e
	db 19 ; size
	db -40, -8, 0, $0
	db -40, 0, 1, $0
	db -32, -12, 2, $0
	db -32, -4, 3, $0
	db -24, -4, 4, OAM_XFLIP
	db -24, -12, 5, OAM_XFLIP
	db -24, -20, 6, OAM_XFLIP
	db -16, -20, 9, OAM_XFLIP
	db -16, -28, 10, OAM_XFLIP
	db -8, -32, 13, $0
	db -8, -24, 14, $0
	db 0, -24, 15, $0
	db 0, -16, 16, $0
	db 8, -16, 11, OAM_XFLIP
	db 8, -24, 12, OAM_XFLIP
	db -16, 0, 7, OAM_XFLIP
	db -16, -8, 8, OAM_XFLIP
	db -8, 0, 11, OAM_XFLIP
	db -8, -8, 12, OAM_XFLIP

AnimData95::
	frame_table AnimFrameTable28
	frame_data 0, 2, 0, 0
	frame_data 1, 2, 0, 0
	frame_data 2, 2, 0, 0
	frame_data 3, 2, 0, 0
	frame_data 4, 2, 0, 0
	frame_data 5, 2, 0, 0
	frame_data 6, 2, 0, 0
	frame_data 7, 2, 0, 0
	frame_data 8, 2, 0, 0
	frame_data 8, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable28::
	dw .data_ab2fc
	dw .data_ab305
	dw .data_ab31e
	dw .data_ab33f
	dw .data_ab360
	dw .data_ab381
	dw .data_ab3a2
	dw .data_ab3c3
	dw .data_ab3e4

.data_ab2fc
	db 2 ; size
	db -27, -35, 0, $0
	db 20, 28, 0, $0

.data_ab305
	db 6 ; size
	db -27, -27, 1, $0
	db 20, 20, 1, $0
	db -19, -35, 0, $0
	db 12, 28, 0, $0
	db -27, -35, 0, $0
	db 20, 28, 0, $0

.data_ab31e
	db 8 ; size
	db -27, -20, 0, OAM_XFLIP
	db 20, 11, 0, OAM_XFLIP
	db -15, -35, 2, $0
	db 8, 28, 2, $0
	db -27, -27, 1, $0
	db 20, 20, 1, $0
	db -19, -35, 0, $0
	db 12, 28, 0, $0

.data_ab33f
	db 8 ; size
	db -27, -11, 2, $0
	db 20, 4, 2, $0
	db -12, -35, 0, OAM_YFLIP
	db 3, 28, 0, OAM_YFLIP
	db -27, -20, 0, OAM_XFLIP
	db 20, 11, 0, OAM_XFLIP
	db -15, -35, 2, $0
	db 8, 28, 2, $0

.data_ab360
	db 8 ; size
	db 19, -4, 0, OAM_XFLIP | OAM_YFLIP
	db -28, -5, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -35, 1, $0
	db 0, 29, 1, $0
	db -27, -11, 2, $0
	db 20, 4, 2, $0
	db -12, -35, 0, OAM_YFLIP
	db 3, 28, 0, OAM_YFLIP

.data_ab381
	db 8 ; size
	db -27, 3, 1, OAM_XFLIP
	db 20, -12, 1, OAM_XFLIP
	db -4, -36, 0, OAM_XFLIP | OAM_YFLIP
	db -5, 27, 0, OAM_XFLIP | OAM_YFLIP
	db 19, -4, 0, OAM_XFLIP | OAM_YFLIP
	db -28, -5, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -35, 1, $0
	db 0, 29, 1, $0

.data_ab3a2
	db 8 ; size
	db 19, -19, 0, OAM_YFLIP
	db -28, 12, 0, OAM_YFLIP
	db 1, -35, 2, $0
	db -8, 28, 2, $0
	db -27, 3, 1, OAM_XFLIP
	db 20, -12, 1, OAM_XFLIP
	db -4, -36, 0, OAM_XFLIP | OAM_YFLIP
	db -5, 27, 0, OAM_XFLIP | OAM_YFLIP

.data_ab3c3
	db 8 ; size
	db -27, 19, 2, OAM_XFLIP
	db 20, -28, 2, OAM_XFLIP
	db 5, -36, 0, OAM_XFLIP
	db -12, 27, 0, OAM_XFLIP
	db 19, -19, 0, OAM_YFLIP
	db -28, 12, 0, OAM_YFLIP
	db 1, -35, 2, $0
	db -8, 28, 2, $0

.data_ab3e4
	db 8 ; size
	db 20, -35, 0, $0
	db -27, 28, 0, $0
	db 8, -35, 1, $0
	db -16, 28, 1, $0
	db -27, 19, 2, OAM_XFLIP
	db 20, -28, 2, OAM_XFLIP
	db 5, -36, 0, OAM_XFLIP
	db -12, 27, 0, OAM_XFLIP

AnimData96::
	frame_table AnimFrameTable29
	frame_data 0, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 1, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 2, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 3, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 4, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data 5, 4, 0, 0
	frame_data -1, 2, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable29::
	dw .data_ab44c
	dw .data_ab4b5
	dw .data_ab506
	dw .data_ab583
	dw .data_ab5b4
	dw .data_ab5fd

.data_ab44c
	db 26 ; size
	db -72, -8, 0, $0
	db -72, 0, 1, $0
	db -64, 1, 2, OAM_XFLIP
	db -64, -7, 3, OAM_XFLIP
	db -56, -9, 4, $0
	db -56, -1, 5, $0
	db -48, -9, 15, $0
	db -48, -1, 16, $0
	db -48, 7, 17, $0
	db -48, 15, 18, $0
	db -40, -14, 19, $0
	db -40, -6, 20, $0
	db -40, 1, 21, $0
	db -40, 9, 22, $0
	db -40, 17, 23, $0
	db -32, -8, 25, $0
	db -32, 0, 26, $0
	db -24, -8, 27, $0
	db -24, 0, 28, $0
	db -16, -8, 29, $0
	db -16, 0, 30, $0
	db -16, 8, 31, $0
	db -8, -8, 32, $0
	db -8, 0, 33, $0
	db -8, 8, 34, $0
	db -32, 8, 24, $0

.data_ab4b5
	db 20 ; size
	db -72, 0, 0, OAM_XFLIP
	db -72, -8, 1, OAM_XFLIP
	db -64, 8, 2, OAM_XFLIP
	db -64, 0, 3, OAM_XFLIP
	db -56, 9, 4, OAM_XFLIP
	db -56, 1, 5, OAM_XFLIP
	db -48, 9, 15, OAM_XFLIP
	db -40, 14, 19, OAM_XFLIP
	db -40, 6, 20, OAM_XFLIP
	db -32, 8, 25, OAM_XFLIP
	db -32, 0, 26, OAM_XFLIP
	db -24, 8, 27, OAM_XFLIP
	db -24, 0, 28, OAM_XFLIP
	db -48, 1, 35, OAM_XFLIP
	db -16, -8, 36, $0
	db -16, 0, 37, $0
	db -16, 8, 38, $0
	db -8, -8, 39, $0
	db -8, 0, 40, $0
	db -8, 8, 41, $0

.data_ab506
	db 31 ; size
	db -72, -8, 0, $0
	db -72, 0, 1, $0
	db -64, -16, 2, $0
	db -64, -8, 3, $0
	db -56, -16, 4, $0
	db -56, -8, 5, $0
	db -48, -2, 6, OAM_XFLIP
	db -48, -10, 7, OAM_XFLIP
	db -48, -18, 8, OAM_XFLIP
	db -40, 3, 9, OAM_XFLIP
	db -40, -5, 10, OAM_XFLIP
	db -40, -13, 11, OAM_XFLIP
	db -40, -21, 12, OAM_XFLIP
	db -32, -8, 13, $0
	db -32, 1, 14, $0
	db -32, -24, 15, $0
	db -32, -16, 35, $0
	db -24, -19, 19, OAM_XFLIP
	db -24, -27, 20, OAM_XFLIP
	db -16, -30, 25, $0
	db -16, -22, 26, $0
	db -8, -33, 25, $0
	db -8, -25, 26, $0
	db 0, -33, 27, OAM_XFLIP
	db 0, -41, 28, OAM_XFLIP
	db 8, -49, 36, $0
	db 8, -41, 37, $0
	db 8, -33, 38, $0
	db 16, -49, 39, $0
	db 16, -41, 40, $0
	db 16, -33, 41, $0

.data_ab583
	db 12 ; size
	db -72, 8, 0, OAM_XFLIP
	db -72, 0, 1, OAM_XFLIP
	db -64, 8, 44, OAM_XFLIP | OAM_YFLIP
	db -64, 16, 42, $0
	db -64, 24, 43, $0
	db -64, 32, 44, $0
	db -56, 25, 29, $0
	db -56, 33, 30, $0
	db -56, 41, 31, $0
	db -48, 25, 32, $0
	db -48, 33, 33, $0
	db -48, 41, 34, $0

.data_ab5b4
	db 18 ; size
	db -72, 8, 0, $0
	db -72, 16, 1, $0
	db -64, 8, 44, OAM_YFLIP
	db -64, 0, 42, OAM_XFLIP
	db -64, -8, 43, OAM_XFLIP
	db -64, -16, 44, OAM_XFLIP
	db -56, -16, 27, OAM_XFLIP
	db -56, -24, 28, OAM_XFLIP
	db -48, -23, 44, OAM_YFLIP
	db -46, -31, 42, OAM_XFLIP | OAM_YFLIP
	db -45, -39, 43, OAM_XFLIP | OAM_YFLIP
	db -44, -47, 44, OAM_XFLIP
	db -36, -57, 36, $0
	db -36, -49, 37, $0
	db -36, -41, 38, $0
	db -28, -57, 39, $0
	db -28, -49, 40, $0
	db -28, -41, 41, $0

.data_ab5fd
	db 28 ; size
	db -72, -8, 0, OAM_XFLIP
	db -16, 32, 27, $0
	db -16, 40, 28, $0
	db -8, 32, 29, $0
	db -8, 40, 30, $0
	db 0, 32, 32, $0
	db 0, 40, 33, $0
	db -8, 48, 31, $0
	db 0, 48, 34, $0
	db -24, 32, 25, OAM_XFLIP
	db -24, 24, 26, OAM_XFLIP
	db -32, 21, 19, $0
	db -32, 29, 20, $0
	db -40, 26, 15, OAM_XFLIP
	db -40, 18, 16, OAM_XFLIP
	db -40, 10, 17, OAM_XFLIP
	db -40, 2, 18, OAM_XFLIP
	db -32, 16, 21, OAM_XFLIP
	db -32, 8, 22, OAM_XFLIP
	db -32, 0, 23, OAM_XFLIP
	db -24, 8, 24, OAM_XFLIP
	db -48, 15, 11, $0
	db -48, 23, 12, $0
	db -64, 8, 2, OAM_XFLIP
	db -64, 0, 3, OAM_XFLIP
	db -56, 18, 44, $0
	db -56, 2, 44, OAM_XFLIP | OAM_YFLIP
	db -56, 10, 42, $0

AnimData97::
	frame_table AnimFrameTable30
	frame_data 0, 4, 0, 0
	frame_data 1, 5, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 5, 0, 0
	frame_data 0, 6, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 5, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 5, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 8, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable30::
	dw .data_ab6d5
	dw .data_ab6e6
	dw .data_ab6f7
	dw .data_ab708
	dw .data_ab719
	dw .data_ab74a
	dw .data_ab773
	dw .data_ab79c
	dw .data_ab7c5
	dw .data_ab7da
	dw .data_ab7ef
	dw .data_ab808
	dw .data_ab82d
	dw .data_ab856
	dw .data_ab88b
	dw .data_ab8cc
	dw .data_ab90d
	dw .data_ab94e
	dw .data_ab98f
	dw .data_ab9b0

.data_ab6d5
	db 4 ; size
	db -8, -8, 0, $0
	db 0, -8, 1, $0
	db -8, 0, 4, OAM_XFLIP
	db 0, 0, 5, OAM_XFLIP

.data_ab6e6
	db 4 ; size
	db -8, -8, 2, $0
	db 0, -8, 3, $0
	db -8, 0, 6, OAM_XFLIP
	db 0, 0, 7, OAM_XFLIP

.data_ab6f7
	db 4 ; size
	db -8, -8, 4, $0
	db 0, -8, 5, $0
	db -8, 0, 0, OAM_XFLIP
	db 0, 0, 1, OAM_XFLIP

.data_ab708
	db 4 ; size
	db -8, -8, 6, $0
	db 0, -8, 7, $0
	db -8, 0, 2, OAM_XFLIP
	db 0, 0, 3, OAM_XFLIP

.data_ab719
	db 12 ; size
	db -8, -8, 0, $0
	db 0, -8, 1, $0
	db -8, 0, 4, OAM_XFLIP
	db 0, 0, 5, OAM_XFLIP
	db -19, 2, 8, $0
	db 1, -10, 8, $0
	db -12, 2, 9, $0
	db 9, -10, 9, $0
	db -19, -10, 10, $0
	db -11, -10, 11, $0
	db 1, 2, 10, $0
	db 9, 2, 11, $0

.data_ab74a
	db 10 ; size
	db -24, -14, 8, $0
	db -16, -14, 9, $0
	db 4, 6, 9, $0
	db -4, 6, 8, $0
	db -23, 6, 10, $0
	db -4, -14, 10, $0
	db 4, -14, 11, $0
	db -15, 6, 11, $0
	db -8, -4, 8, $0
	db 0, -4, 9, $0

.data_ab773
	db 10 ; size
	db -28, -18, 10, $0
	db -20, -18, 11, $0
	db 6, 10, 11, $0
	db -2, 10, 10, $0
	db -28, 10, 8, $0
	db -2, -18, 8, $0
	db 6, -18, 9, $0
	db -20, 10, 9, $0
	db -8, -4, 10, $0
	db 0, -4, 11, $0

.data_ab79c
	db 10 ; size
	db -24, -20, 10, $0
	db -16, -20, 11, $0
	db 8, 12, 11, $0
	db 0, 12, 10, $0
	db -24, 12, 8, $0
	db 0, -20, 8, $0
	db 8, -20, 9, $0
	db -16, 12, 9, $0
	db -8, -4, 10, $0
	db 0, -4, 11, $0

.data_ab7c5
	db 5 ; size
	db -1, -4, 12, $0
	db -16, -20, 12, $0
	db 8, -20, 12, $0
	db -16, 12, 12, $0
	db 8, 12, 12, $0

.data_ab7da
	db 5 ; size
	db -8, 10, 4, $0
	db 0, 10, 5, $0
	db -8, 18, 0, OAM_XFLIP
	db 0, 18, 1, OAM_XFLIP
	db -16, 12, 12, $0

.data_ab7ef
	db 6 ; size
	db 2, 8, 6, $0
	db 10, 8, 7, $0
	db 2, 16, 2, OAM_XFLIP
	db 10, 16, 3, OAM_XFLIP
	db -19, 12, 10, $0
	db -11, 12, 11, $0

.data_ab808
	db 9 ; size
	db 6, -8, 0, $0
	db 14, -8, 1, $0
	db 6, 0, 4, OAM_XFLIP
	db 14, 0, 5, OAM_XFLIP
	db 8, 12, 12, $0
	db -21, 8, 0, $0
	db -13, 8, 1, $0
	db -21, 16, 4, OAM_XFLIP
	db -13, 16, 5, OAM_XFLIP

.data_ab82d
	db 10 ; size
	db 2, -22, 2, $0
	db 10, -22, 3, $0
	db 2, -14, 6, OAM_XFLIP
	db 10, -14, 7, OAM_XFLIP
	db 5, 12, 8, $0
	db 13, 12, 9, $0
	db -21, 9, 2, $0
	db -13, 9, 3, $0
	db -21, 17, 6, OAM_XFLIP
	db -13, 17, 7, OAM_XFLIP

.data_ab856
	db 13 ; size
	db -8, -26, 4, $0
	db 0, -26, 5, $0
	db -8, -18, 0, OAM_XFLIP
	db 0, -18, 1, OAM_XFLIP
	db 8, -20, 12, $0
	db -20, 8, 4, $0
	db -12, 8, 5, $0
	db -20, 16, 0, OAM_XFLIP
	db -12, 16, 1, OAM_XFLIP
	db 5, 8, 4, $0
	db 13, 8, 5, $0
	db 5, 16, 0, OAM_XFLIP
	db 13, 16, 1, OAM_XFLIP

.data_ab88b
	db 16 ; size
	db -20, -24, 6, $0
	db -12, -24, 7, $0
	db -20, -16, 2, OAM_XFLIP
	db -12, -16, 3, OAM_XFLIP
	db -20, 8, 6, $0
	db -12, 8, 7, $0
	db -20, 16, 2, OAM_XFLIP
	db -12, 16, 3, OAM_XFLIP
	db 5, 8, 6, $0
	db 13, 8, 7, $0
	db 5, 16, 2, OAM_XFLIP
	db 13, 16, 3, OAM_XFLIP
	db 5, -24, 6, $0
	db 13, -24, 7, $0
	db 5, -16, 2, OAM_XFLIP
	db 13, -16, 3, OAM_XFLIP

.data_ab8cc
	db 16 ; size
	db -20, -24, 0, $0
	db -12, -24, 1, $0
	db -20, -16, 4, OAM_XFLIP
	db -12, -16, 5, OAM_XFLIP
	db -20, 8, 0, $0
	db -12, 8, 1, $0
	db -20, 16, 4, OAM_XFLIP
	db -12, 16, 5, OAM_XFLIP
	db 5, -25, 0, $0
	db 13, -25, 1, $0
	db 5, -17, 4, OAM_XFLIP
	db 13, -17, 5, OAM_XFLIP
	db 6, 6, 0, $0
	db 14, 6, 1, $0
	db 6, 14, 4, OAM_XFLIP
	db 14, 14, 5, OAM_XFLIP

.data_ab90d
	db 16 ; size
	db -20, 16, 6, OAM_XFLIP
	db -12, 16, 7, OAM_XFLIP
	db -20, 8, 2, $0
	db -12, 8, 3, $0
	db -20, -16, 6, OAM_XFLIP
	db -12, -16, 7, OAM_XFLIP
	db -20, -24, 2, $0
	db -12, -24, 3, $0
	db 5, -16, 6, OAM_XFLIP
	db 13, -16, 7, OAM_XFLIP
	db 5, -24, 2, $0
	db 13, -24, 3, $0
	db 5, 16, 6, OAM_XFLIP
	db 13, 16, 7, OAM_XFLIP
	db 5, 8, 2, $0
	db 13, 8, 3, $0

.data_ab94e
	db 16 ; size
	db -20, -24, 4, $0
	db -12, -24, 5, $0
	db -20, -16, 0, OAM_XFLIP
	db -12, -16, 1, OAM_XFLIP
	db -19, 8, 4, $0
	db -11, 8, 5, $0
	db -19, 16, 0, OAM_XFLIP
	db -11, 16, 1, OAM_XFLIP
	db 4, 8, 4, $0
	db 12, 8, 5, $0
	db 4, 16, 0, OAM_XFLIP
	db 12, 16, 1, OAM_XFLIP
	db 5, -24, 4, $0
	db 13, -24, 5, $0
	db 5, -16, 0, OAM_XFLIP
	db 13, -16, 1, OAM_XFLIP

.data_ab98f
	db 8 ; size
	db -20, -20, 8, $0
	db -20, 12, 8, $0
	db 4, 12, 8, $0
	db 4, -20, 8, $0
	db -12, -20, 9, $0
	db -12, 12, 9, $0
	db 12, 12, 9, $0
	db 12, -20, 9, $0

.data_ab9b0
	db 4 ; size
	db -16, -20, 12, $0
	db -16, 12, 12, $0
	db 8, 12, 12, $0
	db 8, -20, 12, $0

AnimData98::
	frame_table AnimFrameTable30
	frame_data 0, 5, 0, 0
	frame_data 1, 5, 0, 0
	frame_data 2, 5, 0, 0
	frame_data 3, 5, 0, 0
	frame_data 0, 4, 6, -6
	frame_data 1, 4, 8, -4
	frame_data 9, 4, -14, 10
	frame_data 10, 4, 0, 0
	frame_data 11, 4, 0, 0
	frame_data 12, 4, 0, 0
	frame_data 13, 4, 0, 0
	frame_data 14, 4, 0, 0
	frame_data 15, 4, 0, 0
	frame_data 17, 4, 0, 0
	frame_data 18, 5, 0, 0
	frame_data 19, 5, 0, 0
	frame_data 19, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData99::
	frame_table AnimFrameTable31
	frame_data 0, 5, 0, 0
	frame_data 1, 5, 0, 0
	frame_data 2, 5, 0, 0
	frame_data 3, 5, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 4, 2, -8, 0
	frame_data 4, 2, 16, 0
	frame_data 5, 2, -16, 0
	frame_data 5, 2, 16, 0
	frame_data 6, 2, -16, 0
	frame_data 6, 2, 16, 0
	frame_data 7, 2, -16, 0
	frame_data 7, 2, 16, 0
	frame_data 4, 2, -32, 0
	frame_data 4, 2, 48, 0
	frame_data 5, 2, -48, 0
	frame_data 5, 2, 48, 0
	frame_data 6, 2, -48, 0
	frame_data 6, 2, 48, 0
	frame_data 7, 2, -48, 0
	frame_data 7, 2, 48, 0
	frame_data 4, 2, -64, 0
	frame_data 4, 2, 80, 0
	frame_data 5, 2, -80, 0
	frame_data 5, 2, 80, 0
	frame_data 6, 2, -80, 0
	frame_data 6, 2, 80, 0
	frame_data 7, 2, -80, 0
	frame_data 7, 2, 80, 0
	frame_data 0, 2, -80, 0
	frame_data 0, 2, 80, 0
	frame_data 1, 2, -80, 0
	frame_data 1, 2, 80, 0
	frame_data 2, 2, -80, 0
	frame_data 2, 2, 80, 0
	frame_data 3, 2, -80, 0
	frame_data 3, 2, 80, 0
	frame_data 3, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable31::
	dw .data_abac7
	dw .data_abad8
	dw .data_abae9
	dw .data_abafa
	dw .data_abb0b
	dw .data_abb38
	dw .data_abb6d
	dw .data_abb9a

.data_abac7
	db 4 ; size
	db -42, -10, 24, OAM_XFLIP
	db -42, -18, 25, OAM_XFLIP
	db -34, -10, 26, OAM_XFLIP
	db -34, -18, 27, OAM_XFLIP

.data_abad8
	db 4 ; size
	db -14, -10, 24, OAM_XFLIP | OAM_YFLIP
	db -14, -18, 25, OAM_XFLIP | OAM_YFLIP
	db -22, -10, 26, OAM_XFLIP | OAM_YFLIP
	db -22, -18, 27, OAM_XFLIP | OAM_YFLIP

.data_abae9
	db 4 ; size
	db -14, 2, 24, OAM_YFLIP
	db -14, 10, 25, OAM_YFLIP
	db -22, 2, 26, OAM_YFLIP
	db -22, 10, 27, OAM_YFLIP

.data_abafa
	db 4 ; size
	db -42, 2, 24, $0
	db -42, 10, 25, $0
	db -34, 2, 26, $0
	db -34, 10, 27, $0

.data_abb0b
	db 11 ; size
	db -32, -24, 13, OAM_XFLIP | OAM_YFLIP
	db -32, -32, 14, OAM_XFLIP | OAM_YFLIP
	db -40, -32, 17, OAM_XFLIP | OAM_YFLIP
	db -48, -32, 20, OAM_XFLIP | OAM_YFLIP
	db -56, -28, 22, OAM_XFLIP | OAM_YFLIP
	db -56, -20, 21, OAM_XFLIP | OAM_YFLIP
	db -48, -16, 18, OAM_XFLIP | OAM_YFLIP
	db -48, -24, 19, OAM_XFLIP | OAM_YFLIP
	db -40, -24, 16, OAM_XFLIP | OAM_YFLIP
	db -40, -16, 15, OAM_XFLIP | OAM_YFLIP
	db -56, -8, 23, OAM_XFLIP | OAM_YFLIP

.data_abb38
	db 13 ; size
	db 1, -8, 0, OAM_XFLIP | OAM_YFLIP
	db -7, -8, 5, OAM_XFLIP | OAM_YFLIP
	db 1, -16, 1, OAM_XFLIP | OAM_YFLIP
	db -7, -16, 6, OAM_XFLIP | OAM_YFLIP
	db 0, -24, 2, OAM_XFLIP | OAM_YFLIP
	db -8, -24, 7, OAM_XFLIP | OAM_YFLIP
	db -16, -24, 10, OAM_XFLIP | OAM_YFLIP
	db -1, -32, 3, OAM_XFLIP | OAM_YFLIP
	db -1, -40, 4, OAM_XFLIP | OAM_YFLIP
	db -9, -40, 9, OAM_XFLIP | OAM_YFLIP
	db -17, -40, 12, OAM_XFLIP | OAM_YFLIP
	db -17, -32, 11, OAM_XFLIP | OAM_YFLIP
	db -9, -32, 8, OAM_XFLIP | OAM_YFLIP

.data_abb6d
	db 11 ; size
	db -24, 16, 13, $0
	db -24, 24, 14, $0
	db -16, 24, 17, $0
	db -8, 24, 20, $0
	db 0, 20, 22, $0
	db 0, 12, 21, $0
	db -8, 8, 18, $0
	db -8, 16, 19, $0
	db -16, 16, 16, $0
	db -16, 8, 15, $0
	db 0, 0, 23, $0

.data_abb9a
	db 13 ; size
	db -57, 0, 0, $0
	db -49, 0, 5, $0
	db -57, 8, 1, $0
	db -49, 8, 6, $0
	db -56, 16, 2, $0
	db -48, 16, 7, $0
	db -40, 16, 10, $0
	db -55, 24, 3, $0
	db -55, 32, 4, $0
	db -47, 32, 9, $0
	db -39, 32, 12, $0
	db -39, 24, 11, $0
	db -47, 24, 8, $0

AnimData101::
	frame_table AnimFrameTable32
	frame_data 0, 12, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 2, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData102::
	frame_table AnimFrameTable32
	frame_data 0, 8, 0, 0
	frame_data -1, 8, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData103::
	frame_table AnimFrameTable32
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 5, 8, 0, 0
	frame_data 6, 8, 0, 0
	frame_data 7, 8, 0, 0
	frame_data 8, 8, 0, 0
	frame_data 9, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 9, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 9, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 9, 8, 0, 0
	frame_data 9, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData104::
	frame_table AnimFrameTable32
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 3, 8, 0, 0
	frame_data 4, 8, 0, 0
	frame_data 5, 8, 0, 0
	frame_data 10, 8, 0, 0
	frame_data 11, 8, 0, 0
	frame_data 12, 8, 0, 0
	frame_data 13, 8, 0, 0
	frame_data 14, 8, 0, 0
	frame_data 15, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 15, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 15, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 15, 8, 0, 0
	frame_data 2, 8, 0, 0
	frame_data 2, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimData105::
	frame_table AnimFrameTable33
	frame_data 0, 6, 0, 4
	frame_data 1, 6, 0, 0
	frame_data 2, 6, 0, 0
	frame_data 3, 6, 0, 0
	frame_data 4, 6, 0, 0
	frame_data 5, 6, 0, 0
	frame_data 6, 6, 0, 0
	frame_data 7, 6, 0, 0
	frame_data 0, 4, 0, 0
	frame_data 1, 4, 0, 0
	frame_data 2, 4, 0, 0
	frame_data 3, 4, 0, 0
	frame_data 4, 4, 0, 0
	frame_data 5, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data -1, 4, 0, 0
	frame_data -1, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable33::
	dw .data_abd4a
	dw .data_abd57
	dw .data_abd70
	dw .data_abd99
	dw .data_abdda
	dw .data_abe23
	dw .data_abe64
	dw .data_abe95

.data_abd4a
	db 3 ; size
	db 17, -24, 1, $0
	db 17, 0, 1, $0
	db 17, 24, 1, $0

.data_abd57
	db 6 ; size
	db 13, -24, 1, $0
	db 18, 16, 1, $0
	db 10, 0, 2, $0
	db 11, 24, 2, $0
	db 16, -56, 1, $0
	db 16, 56, 1, $0

.data_abd70
	db 10 ; size
	db -10, 0, 0, $0
	db -7, 24, 0, $0
	db 8, -24, 2, $0
	db 12, 16, 2, $0
	db 16, -8, 1, $0
	db 12, -56, 2, $0
	db 16, 40, 1, $0
	db 12, 56, 2, $0
	db -2, 0, 0, OAM_YFLIP
	db 1, 24, 0, OAM_YFLIP

.data_abd99
	db 16 ; size
	db -7, 16, 0, $0
	db -17, -24, 0, $0
	db 16, -32, 1, $0
	db 16, 8, 1, $0
	db 8, -8, 2, $0
	db -26, 0, 0, $0
	db -24, 24, 0, $0
	db 0, -56, 0, $0
	db 8, 40, 2, $0
	db 0, 56, 0, $0
	db 8, -56, 0, OAM_YFLIP
	db -9, -24, 0, OAM_YFLIP
	db -18, 0, 0, OAM_YFLIP
	db -16, 24, 0, OAM_YFLIP
	db 1, 16, 0, OAM_YFLIP
	db 8, 56, 0, OAM_YFLIP

.data_abdda
	db 18 ; size
	db 8, -32, 2, $0
	db 5, 8, 2, $0
	db -12, -8, 0, $0
	db -27, -24, 0, $0
	db -21, 16, 0, $0
	db -50, 0, 0, $0
	db -34, 24, 0, $0
	db -8, 40, 0, $0
	db -16, -56, 0, $0
	db -8, 56, 0, $0
	db -8, -56, 0, OAM_YFLIP
	db -19, -24, 0, OAM_YFLIP
	db -4, -8, 0, OAM_YFLIP
	db -42, 0, 0, OAM_YFLIP
	db -13, 16, 0, OAM_YFLIP
	db -26, 24, 0, OAM_YFLIP
	db 0, 40, 0, OAM_YFLIP
	db 0, 56, 0, OAM_YFLIP

.data_abe23
	db 16 ; size
	db -19, -32, 0, $0
	db -9, 8, 0, $0
	db -51, -24, 0, $0
	db -32, -8, 0, $0
	db -29, 40, 0, $0
	db -40, -56, 0, $0
	db -40, 56, 0, $0
	db -64, 16, 0, $0
	db -32, -56, 0, OAM_YFLIP
	db -11, -32, 0, OAM_YFLIP
	db -43, -24, 0, OAM_YFLIP
	db -24, -8, 0, OAM_YFLIP
	db -1, 8, 0, OAM_YFLIP
	db -56, 16, 0, OAM_YFLIP
	db -21, 40, 0, OAM_YFLIP
	db -32, 56, 0, OAM_YFLIP

.data_abe64
	db 12 ; size
	db -32, 8, 0, $0
	db -48, -32, 0, $0
	db -64, -8, 0, $0
	db -61, 40, 0, $0
	db -40, -32, 0, OAM_YFLIP
	db -56, -8, 0, OAM_YFLIP
	db -24, 8, 0, OAM_YFLIP
	db -53, 40, 0, OAM_YFLIP
	db -80, -56, 0, $0
	db -72, -56, 0, OAM_YFLIP
	db -80, 56, 0, $0
	db -72, 56, 0, OAM_YFLIP

.data_abe95
	db 4 ; size
	db -64, 0, 0, $0
	db -56, 0, 0, OAM_YFLIP
	db -80, -32, 0, $0
	db -72, -32, 0, OAM_YFLIP

AnimData106::
	frame_table AnimFrameTable34
	frame_data 0, 3, 0, 12
	frame_data 1, 3, 0, 0
	frame_data 2, 3, 0, 0
	frame_data 3, 3, 0, 0
	frame_data 4, 3, 0, 0
	frame_data 5, 3, 0, 0
	frame_data 6, 3, 0, 0
	frame_data 7, 3, 0, 0
	frame_data 8, 3, 0, 0
	frame_data 6, 3, 0, 0
	frame_data 7, 3, 0, 0
	frame_data 8, 3, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 6, 4, 0, 0
	frame_data 7, 4, 0, 0
	frame_data 8, 4, 0, 0
	frame_data 8, -1, 0, 0
	frame_data 0, 0, 0, 0

AnimFrameTable34::
	dw .data_abf0b
	dw .data_abf1c
	dw .data_abf2d
	dw .data_abf3e
	dw .data_abf57
	dw .data_abf70
	dw .data_abf89
	dw .data_abfaa
	dw .data_abfcb

.data_abf0b
	db 4 ; size
	db -11, -8, 0, $0
	db -3, -8, 1, $0
	db -11, 0, 0, OAM_XFLIP
	db -3, 0, 1, OAM_XFLIP

.data_abf1c
	db 4 ; size
	db -11, -8, 2, $0
	db -3, -8, 3, $0
	db -11, 0, 2, OAM_XFLIP
	db -3, 0, 3, OAM_XFLIP

.data_abf2d
	db 4 ; size
	db -11, -8, 4, $0
	db -3, -8, 5, $0
	db -11, 0, 4, OAM_XFLIP
	db -3, 0, 5, OAM_XFLIP

.data_abf3e
	db 6 ; size
	db -19, -8, 6, $0
	db -11, -8, 7, $0
	db -3, -8, 8, $0
	db -19, 0, 6, OAM_XFLIP
	db -11, 0, 7, OAM_XFLIP
	db -3, 0, 8, OAM_XFLIP

.data_abf57
	db 6 ; size
	db -20, -8, 9, $0
	db -12, -8, 10, $0
	db -4, -8, 11, $0
	db -20, 0, 9, OAM_XFLIP
	db -12, 0, 10, OAM_XFLIP
	db -4, 0, 11, OAM_XFLIP

.data_abf70
	db 6 ; size
	db -19, -8, 12, $0
	db -11, -8, 13, $0
	db -3, -8, 14, $0
	db -19, 0, 12, OAM_XFLIP
	db -11, 0, 13, OAM_XFLIP
	db -3, 0, 14, OAM_XFLIP

.data_abf89
	db 8 ; size
	db -27, -8, 15, $0
	db -19, -8, 16, $0
	db -11, -8, 17, $0
	db -3, -8, 18, $0
	db -27, 0, 15, OAM_XFLIP
	db -19, 0, 16, OAM_XFLIP
	db -11, 0, 17, OAM_XFLIP
	db -3, 0, 18, OAM_XFLIP

.data_abfaa
	db 8 ; size
	db -27, -8, 19, $0
	db -19, -8, 20, $0
	db -11, -8, 21, $0
	db -3, -8, 22, $0
	db -19, 0, 20, OAM_XFLIP
	db -11, 0, 21, OAM_XFLIP
	db -3, 0, 22, OAM_XFLIP
	db -29, 0, 19, OAM_XFLIP

.data_abfcb
	db 8 ; size
	db -27, -8, 23, $0
	db -19, -8, 24, $0
	db -11, -8, 25, $0
	db -3, -8, 26, $0
	db -27, 0, 23, OAM_XFLIP
	db -19, 0, 24, OAM_XFLIP
	db -11, 0, 25, OAM_XFLIP
	db -3, 0, 26, OAM_XFLIP

AnimData149::
	frame_table AnimFrameTable71
	frame_data 0, 5, 0, 0
	frame_data 1, 8, 0, 0
	frame_data 1, -1, 0, 0
	frame_data 0, 0, 0, 0
