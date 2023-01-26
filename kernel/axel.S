
axel.kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <deregister_tm_clones-0x10>:
  100000:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  100006:	00 00                	add    %al,(%eax)
  100008:	fb                   	sti    
  100009:	4f                   	dec    %edi
  10000a:	52                   	push   %edx
  10000b:	e4 66                	in     $0x66,%al
  10000d:	90                   	nop
  10000e:	66 90                	xchg   %ax,%ax

00100010 <deregister_tm_clones>:
  100010:	b8 30 a4 10 00       	mov    $0x10a430,%eax
  100015:	3d 30 a4 10 00       	cmp    $0x10a430,%eax
  10001a:	74 24                	je     100040 <deregister_tm_clones+0x30>
  10001c:	b8 00 00 00 00       	mov    $0x0,%eax
  100021:	85 c0                	test   %eax,%eax
  100023:	74 1b                	je     100040 <deregister_tm_clones+0x30>
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 14             	sub    $0x14,%esp
  10002b:	68 30 a4 10 00       	push   $0x10a430
  100030:	ff d0                	call   *%eax
  100032:	83 c4 10             	add    $0x10,%esp
  100035:	c9                   	leave  
  100036:	c3                   	ret    
  100037:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10003e:	66 90                	xchg   %ax,%ax
  100040:	c3                   	ret    
  100041:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100048:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10004f:	90                   	nop

00100050 <register_tm_clones>:
  100050:	b8 30 a4 10 00       	mov    $0x10a430,%eax
  100055:	2d 30 a4 10 00       	sub    $0x10a430,%eax
  10005a:	89 c2                	mov    %eax,%edx
  10005c:	c1 e8 1f             	shr    $0x1f,%eax
  10005f:	c1 fa 02             	sar    $0x2,%edx
  100062:	01 d0                	add    %edx,%eax
  100064:	d1 f8                	sar    %eax
  100066:	74 28                	je     100090 <register_tm_clones+0x40>
  100068:	ba 00 00 00 00       	mov    $0x0,%edx
  10006d:	85 d2                	test   %edx,%edx
  10006f:	74 1f                	je     100090 <register_tm_clones+0x40>
  100071:	55                   	push   %ebp
  100072:	89 e5                	mov    %esp,%ebp
  100074:	83 ec 10             	sub    $0x10,%esp
  100077:	50                   	push   %eax
  100078:	68 30 a4 10 00       	push   $0x10a430
  10007d:	ff d2                	call   *%edx
  10007f:	83 c4 10             	add    $0x10,%esp
  100082:	c9                   	leave  
  100083:	c3                   	ret    
  100084:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10008b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  10008f:	90                   	nop
  100090:	c3                   	ret    
  100091:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100098:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10009f:	90                   	nop

001000a0 <__do_global_dtors_aux>:
  1000a0:	80 3d 00 b0 10 00 00 	cmpb   $0x0,0x10b000
  1000a7:	75 67                	jne    100110 <__do_global_dtors_aux+0x70>
  1000a9:	55                   	push   %ebp
  1000aa:	a1 04 b0 10 00       	mov    0x10b004,%eax
  1000af:	89 e5                	mov    %esp,%ebp
  1000b1:	56                   	push   %esi
  1000b2:	be 28 a4 10 00       	mov    $0x10a428,%esi
  1000b7:	53                   	push   %ebx
  1000b8:	bb 2c a4 10 00       	mov    $0x10a42c,%ebx
  1000bd:	81 eb 28 a4 10 00    	sub    $0x10a428,%ebx
  1000c3:	c1 fb 02             	sar    $0x2,%ebx
  1000c6:	83 eb 01             	sub    $0x1,%ebx
  1000c9:	39 d8                	cmp    %ebx,%eax
  1000cb:	73 17                	jae    1000e4 <__do_global_dtors_aux+0x44>
  1000cd:	8d 76 00             	lea    0x0(%esi),%esi
  1000d0:	83 c0 01             	add    $0x1,%eax
  1000d3:	a3 04 b0 10 00       	mov    %eax,0x10b004
  1000d8:	ff 14 86             	call   *(%esi,%eax,4)
  1000db:	a1 04 b0 10 00       	mov    0x10b004,%eax
  1000e0:	39 d8                	cmp    %ebx,%eax
  1000e2:	72 ec                	jb     1000d0 <__do_global_dtors_aux+0x30>
  1000e4:	e8 27 ff ff ff       	call   100010 <deregister_tm_clones>
  1000e9:	b8 00 00 00 00       	mov    $0x0,%eax
  1000ee:	85 c0                	test   %eax,%eax
  1000f0:	74 10                	je     100102 <__do_global_dtors_aux+0x62>
  1000f2:	83 ec 0c             	sub    $0xc,%esp
  1000f5:	68 68 9c 10 00       	push   $0x109c68
  1000fa:	e8 01 ff ef ff       	call   0 <ALIGN-0x1>
  1000ff:	83 c4 10             	add    $0x10,%esp
  100102:	c6 05 00 b0 10 00 01 	movb   $0x1,0x10b000
  100109:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10010c:	5b                   	pop    %ebx
  10010d:	5e                   	pop    %esi
  10010e:	5d                   	pop    %ebp
  10010f:	c3                   	ret    
  100110:	c3                   	ret    
  100111:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100118:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10011f:	90                   	nop

00100120 <frame_dummy>:
  100120:	b8 00 00 00 00       	mov    $0x0,%eax
  100125:	85 c0                	test   %eax,%eax
  100127:	74 27                	je     100150 <frame_dummy+0x30>
  100129:	55                   	push   %ebp
  10012a:	89 e5                	mov    %esp,%ebp
  10012c:	83 ec 10             	sub    $0x10,%esp
  10012f:	68 08 b0 10 00       	push   $0x10b008
  100134:	68 68 9c 10 00       	push   $0x109c68
  100139:	e8 c2 fe ef ff       	call   0 <ALIGN-0x1>
  10013e:	83 c4 10             	add    $0x10,%esp
  100141:	c9                   	leave  
  100142:	e9 09 ff ff ff       	jmp    100050 <register_tm_clones>
  100147:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10014e:	66 90                	xchg   %ax,%ax
  100150:	e9 fb fe ff ff       	jmp    100050 <register_tm_clones>

00100155 <_start>:
  100155:	bc 20 f0 10 00       	mov    $0x10f020,%esp
  10015a:	54                   	push   %esp
  10015b:	50                   	push   %eax
  10015c:	53                   	push   %ebx
  10015d:	e8 c3 70 00 00       	call   107225 <kernel_main>
  100162:	fa                   	cli    
  100163:	f4                   	hlt    
  100164:	eb fd                	jmp    100163 <_start+0xe>

00100166 <vga_entry_color>:
  100166:	55                   	push   %ebp
  100167:	89 e5                	mov    %esp,%ebp
  100169:	8b 45 0c             	mov    0xc(%ebp),%eax
  10016c:	c1 e0 04             	shl    $0x4,%eax
  10016f:	89 c2                	mov    %eax,%edx
  100171:	8b 45 08             	mov    0x8(%ebp),%eax
  100174:	09 d0                	or     %edx,%eax
  100176:	5d                   	pop    %ebp
  100177:	c3                   	ret    

00100178 <vga_entry>:
  100178:	55                   	push   %ebp
  100179:	89 e5                	mov    %esp,%ebp
  10017b:	83 ec 08             	sub    $0x8,%esp
  10017e:	8b 55 08             	mov    0x8(%ebp),%edx
  100181:	8b 45 0c             	mov    0xc(%ebp),%eax
  100184:	88 55 fc             	mov    %dl,-0x4(%ebp)
  100187:	88 45 f8             	mov    %al,-0x8(%ebp)
  10018a:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  10018e:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  100192:	c1 e0 08             	shl    $0x8,%eax
  100195:	09 d0                	or     %edx,%eax
  100197:	c9                   	leave  
  100198:	c3                   	ret    

00100199 <tty_scroll>:
  100199:	55                   	push   %ebp
  10019a:	89 e5                	mov    %esp,%ebp
  10019c:	53                   	push   %ebx
  10019d:	83 ec 24             	sub    $0x24,%esp
  1001a0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1001a7:	eb 62                	jmp    10020b <tty_scroll+0x72>
  1001a9:	b8 50 00 00 00       	mov    $0x50,%eax
  1001ae:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  1001b2:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1001b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1001b8:	83 c0 01             	add    $0x1,%eax
  1001bb:	ba 50 00 00 00       	mov    $0x50,%edx
  1001c0:	0f af c2             	imul   %edx,%eax
  1001c3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1001c6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1001cd:	eb 2e                	jmp    1001fd <tty_scroll+0x64>
  1001cf:	8b 15 2c f2 10 00    	mov    0x10f22c,%edx
  1001d5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1001d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1001db:	01 c8                	add    %ecx,%eax
  1001dd:	01 c0                	add    %eax,%eax
  1001df:	01 d0                	add    %edx,%eax
  1001e1:	8b 0d 2c f2 10 00    	mov    0x10f22c,%ecx
  1001e7:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  1001ea:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1001ed:	01 da                	add    %ebx,%edx
  1001ef:	01 d2                	add    %edx,%edx
  1001f1:	01 ca                	add    %ecx,%edx
  1001f3:	0f b7 00             	movzwl (%eax),%eax
  1001f6:	66 89 02             	mov    %ax,(%edx)
  1001f9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1001fd:	b8 50 00 00 00       	mov    $0x50,%eax
  100202:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  100205:	72 c8                	jb     1001cf <tty_scroll+0x36>
  100207:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10020b:	b8 19 00 00 00       	mov    $0x19,%eax
  100210:	83 e8 01             	sub    $0x1,%eax
  100213:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100216:	72 91                	jb     1001a9 <tty_scroll+0x10>
  100218:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10021f:	eb 3f                	jmp    100260 <tty_scroll+0xc7>
  100221:	0f b6 05 28 f2 10 00 	movzbl 0x10f228,%eax
  100228:	0f b6 c0             	movzbl %al,%eax
  10022b:	8b 0d 2c f2 10 00    	mov    0x10f22c,%ecx
  100231:	ba 19 00 00 00       	mov    $0x19,%edx
  100236:	83 ea 01             	sub    $0x1,%edx
  100239:	bb 50 00 00 00       	mov    $0x50,%ebx
  10023e:	0f af da             	imul   %edx,%ebx
  100241:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100244:	01 da                	add    %ebx,%edx
  100246:	01 d2                	add    %edx,%edx
  100248:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  10024b:	83 ec 08             	sub    $0x8,%esp
  10024e:	50                   	push   %eax
  10024f:	6a 20                	push   $0x20
  100251:	e8 22 ff ff ff       	call   100178 <vga_entry>
  100256:	83 c4 10             	add    $0x10,%esp
  100259:	66 89 03             	mov    %ax,(%ebx)
  10025c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  100260:	b8 50 00 00 00       	mov    $0x50,%eax
  100265:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  100268:	72 b7                	jb     100221 <tty_scroll+0x88>
  10026a:	90                   	nop
  10026b:	90                   	nop
  10026c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10026f:	c9                   	leave  
  100270:	c3                   	ret    

00100271 <tty_update_cursor_position>:
  100271:	55                   	push   %ebp
  100272:	89 e5                	mov    %esp,%ebp
  100274:	83 ec 18             	sub    $0x18,%esp
  100277:	a1 20 f2 10 00       	mov    0x10f220,%eax
  10027c:	ba 50 00 00 00       	mov    $0x50,%edx
  100281:	0f af d0             	imul   %eax,%edx
  100284:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100289:	01 d0                	add    %edx,%eax
  10028b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10028e:	83 ec 08             	sub    $0x8,%esp
  100291:	6a 0f                	push   $0xf
  100293:	68 d4 03 00 00       	push   $0x3d4
  100298:	e8 39 04 00 00       	call   1006d6 <outb>
  10029d:	83 c4 10             	add    $0x10,%esp
  1002a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002a3:	0f b6 c0             	movzbl %al,%eax
  1002a6:	83 ec 08             	sub    $0x8,%esp
  1002a9:	50                   	push   %eax
  1002aa:	68 d5 03 00 00       	push   $0x3d5
  1002af:	e8 22 04 00 00       	call   1006d6 <outb>
  1002b4:	83 c4 10             	add    $0x10,%esp
  1002b7:	83 ec 08             	sub    $0x8,%esp
  1002ba:	6a 0e                	push   $0xe
  1002bc:	68 d4 03 00 00       	push   $0x3d4
  1002c1:	e8 10 04 00 00       	call   1006d6 <outb>
  1002c6:	83 c4 10             	add    $0x10,%esp
  1002c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002cc:	c1 e8 08             	shr    $0x8,%eax
  1002cf:	0f b6 c0             	movzbl %al,%eax
  1002d2:	83 ec 08             	sub    $0x8,%esp
  1002d5:	50                   	push   %eax
  1002d6:	68 d5 03 00 00       	push   $0x3d5
  1002db:	e8 f6 03 00 00       	call   1006d6 <outb>
  1002e0:	83 c4 10             	add    $0x10,%esp
  1002e3:	90                   	nop
  1002e4:	c9                   	leave  
  1002e5:	c3                   	ret    

001002e6 <tty_putchar>:
  1002e6:	55                   	push   %ebp
  1002e7:	89 e5                	mov    %esp,%ebp
  1002e9:	53                   	push   %ebx
  1002ea:	83 ec 24             	sub    $0x24,%esp
  1002ed:	8b 45 08             	mov    0x8(%ebp),%eax
  1002f0:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1002f3:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
  1002f7:	75 40                	jne    100339 <tty_putchar+0x53>
  1002f9:	c7 05 24 f2 10 00 00 	movl   $0x0,0x10f224
  100300:	00 00 00 
  100303:	a1 20 f2 10 00       	mov    0x10f220,%eax
  100308:	83 c0 01             	add    $0x1,%eax
  10030b:	a3 20 f2 10 00       	mov    %eax,0x10f220
  100310:	ba 19 00 00 00       	mov    $0x19,%edx
  100315:	a1 20 f2 10 00       	mov    0x10f220,%eax
  10031a:	39 c2                	cmp    %eax,%edx
  10031c:	0f 85 71 01 00 00    	jne    100493 <tty_putchar+0x1ad>
  100322:	e8 72 fe ff ff       	call   100199 <tty_scroll>
  100327:	b8 19 00 00 00       	mov    $0x19,%eax
  10032c:	83 e8 01             	sub    $0x1,%eax
  10032f:	a3 20 f2 10 00       	mov    %eax,0x10f220
  100334:	e9 5a 01 00 00       	jmp    100493 <tty_putchar+0x1ad>
  100339:	80 7d e4 0d          	cmpb   $0xd,-0x1c(%ebp)
  10033d:	75 0f                	jne    10034e <tty_putchar+0x68>
  10033f:	c7 05 24 f2 10 00 00 	movl   $0x0,0x10f224
  100346:	00 00 00 
  100349:	e9 45 01 00 00       	jmp    100493 <tty_putchar+0x1ad>
  10034e:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  100352:	75 2d                	jne    100381 <tty_putchar+0x9b>
  100354:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100359:	8b 0d 34 f2 10 00    	mov    0x10f234,%ecx
  10035f:	ba 00 00 00 00       	mov    $0x0,%edx
  100364:	f7 f1                	div    %ecx
  100366:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100369:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10036c:	8d 50 01             	lea    0x1(%eax),%edx
  10036f:	a1 34 f2 10 00       	mov    0x10f234,%eax
  100374:	0f af c2             	imul   %edx,%eax
  100377:	a3 24 f2 10 00       	mov    %eax,0x10f224
  10037c:	e9 12 01 00 00       	jmp    100493 <tty_putchar+0x1ad>
  100381:	80 7d e4 08          	cmpb   $0x8,-0x1c(%ebp)
  100385:	75 75                	jne    1003fc <tty_putchar+0x116>
  100387:	a1 24 f2 10 00       	mov    0x10f224,%eax
  10038c:	85 c0                	test   %eax,%eax
  10038e:	75 31                	jne    1003c1 <tty_putchar+0xdb>
  100390:	a1 20 f2 10 00       	mov    0x10f220,%eax
  100395:	85 c0                	test   %eax,%eax
  100397:	75 0c                	jne    1003a5 <tty_putchar+0xbf>
  100399:	c7 05 20 f2 10 00 00 	movl   $0x0,0x10f220
  1003a0:	00 00 00 
  1003a3:	eb 0d                	jmp    1003b2 <tty_putchar+0xcc>
  1003a5:	a1 20 f2 10 00       	mov    0x10f220,%eax
  1003aa:	83 e8 01             	sub    $0x1,%eax
  1003ad:	a3 20 f2 10 00       	mov    %eax,0x10f220
  1003b2:	b8 50 00 00 00       	mov    $0x50,%eax
  1003b7:	83 e8 01             	sub    $0x1,%eax
  1003ba:	a3 24 f2 10 00       	mov    %eax,0x10f224
  1003bf:	eb 0d                	jmp    1003ce <tty_putchar+0xe8>
  1003c1:	a1 24 f2 10 00       	mov    0x10f224,%eax
  1003c6:	83 e8 01             	sub    $0x1,%eax
  1003c9:	a3 24 f2 10 00       	mov    %eax,0x10f224
  1003ce:	a1 20 f2 10 00       	mov    0x10f220,%eax
  1003d3:	ba 50 00 00 00       	mov    $0x50,%edx
  1003d8:	0f af d0             	imul   %eax,%edx
  1003db:	a1 24 f2 10 00       	mov    0x10f224,%eax
  1003e0:	01 d0                	add    %edx,%eax
  1003e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1003e5:	8b 15 2c f2 10 00    	mov    0x10f22c,%edx
  1003eb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1003ee:	01 c0                	add    %eax,%eax
  1003f0:	01 d0                	add    %edx,%eax
  1003f2:	66 c7 00 20 00       	movw   $0x20,(%eax)
  1003f7:	e9 97 00 00 00       	jmp    100493 <tty_putchar+0x1ad>
  1003fc:	a1 20 f2 10 00       	mov    0x10f220,%eax
  100401:	ba 50 00 00 00       	mov    $0x50,%edx
  100406:	0f af d0             	imul   %eax,%edx
  100409:	a1 24 f2 10 00       	mov    0x10f224,%eax
  10040e:	01 d0                	add    %edx,%eax
  100410:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100413:	0f b6 05 28 f2 10 00 	movzbl 0x10f228,%eax
  10041a:	0f b6 d0             	movzbl %al,%edx
  10041d:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100421:	0f b6 c0             	movzbl %al,%eax
  100424:	8b 1d 2c f2 10 00    	mov    0x10f22c,%ebx
  10042a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10042d:	01 c9                	add    %ecx,%ecx
  10042f:	01 cb                	add    %ecx,%ebx
  100431:	83 ec 08             	sub    $0x8,%esp
  100434:	52                   	push   %edx
  100435:	50                   	push   %eax
  100436:	e8 3d fd ff ff       	call   100178 <vga_entry>
  10043b:	83 c4 10             	add    $0x10,%esp
  10043e:	66 89 03             	mov    %ax,(%ebx)
  100441:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100446:	83 c0 01             	add    $0x1,%eax
  100449:	a3 24 f2 10 00       	mov    %eax,0x10f224
  10044e:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100453:	ba 50 00 00 00       	mov    $0x50,%edx
  100458:	39 d0                	cmp    %edx,%eax
  10045a:	75 37                	jne    100493 <tty_putchar+0x1ad>
  10045c:	c7 05 24 f2 10 00 00 	movl   $0x0,0x10f224
  100463:	00 00 00 
  100466:	a1 20 f2 10 00       	mov    0x10f220,%eax
  10046b:	83 c0 01             	add    $0x1,%eax
  10046e:	a3 20 f2 10 00       	mov    %eax,0x10f220
  100473:	a1 20 f2 10 00       	mov    0x10f220,%eax
  100478:	ba 19 00 00 00       	mov    $0x19,%edx
  10047d:	39 d0                	cmp    %edx,%eax
  10047f:	75 12                	jne    100493 <tty_putchar+0x1ad>
  100481:	b8 19 00 00 00       	mov    $0x19,%eax
  100486:	83 e8 01             	sub    $0x1,%eax
  100489:	a3 20 f2 10 00       	mov    %eax,0x10f220
  10048e:	e8 06 fd ff ff       	call   100199 <tty_scroll>
  100493:	e8 d9 fd ff ff       	call   100271 <tty_update_cursor_position>
  100498:	90                   	nop
  100499:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10049c:	c9                   	leave  
  10049d:	c3                   	ret    

0010049e <tty_putchars>:
  10049e:	55                   	push   %ebp
  10049f:	89 e5                	mov    %esp,%ebp
  1004a1:	83 ec 18             	sub    $0x18,%esp
  1004a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1004ab:	eb 1e                	jmp    1004cb <tty_putchars+0x2d>
  1004ad:	8b 55 08             	mov    0x8(%ebp),%edx
  1004b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b3:	01 d0                	add    %edx,%eax
  1004b5:	0f b6 00             	movzbl (%eax),%eax
  1004b8:	0f be c0             	movsbl %al,%eax
  1004bb:	83 ec 0c             	sub    $0xc,%esp
  1004be:	50                   	push   %eax
  1004bf:	e8 22 fe ff ff       	call   1002e6 <tty_putchar>
  1004c4:	83 c4 10             	add    $0x10,%esp
  1004c7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1004cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004ce:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1004d1:	72 da                	jb     1004ad <tty_putchars+0xf>
  1004d3:	90                   	nop
  1004d4:	90                   	nop
  1004d5:	c9                   	leave  
  1004d6:	c3                   	ret    

001004d7 <tty_putstring>:
  1004d7:	55                   	push   %ebp
  1004d8:	89 e5                	mov    %esp,%ebp
  1004da:	83 ec 08             	sub    $0x8,%esp
  1004dd:	83 ec 0c             	sub    $0xc,%esp
  1004e0:	ff 75 08             	push   0x8(%ebp)
  1004e3:	e8 47 7e 00 00       	call   10832f <strlen>
  1004e8:	83 c4 10             	add    $0x10,%esp
  1004eb:	83 ec 08             	sub    $0x8,%esp
  1004ee:	50                   	push   %eax
  1004ef:	ff 75 08             	push   0x8(%ebp)
  1004f2:	e8 a7 ff ff ff       	call   10049e <tty_putchars>
  1004f7:	83 c4 10             	add    $0x10,%esp
  1004fa:	90                   	nop
  1004fb:	c9                   	leave  
  1004fc:	c3                   	ret    

001004fd <tty_init>:
  1004fd:	55                   	push   %ebp
  1004fe:	89 e5                	mov    %esp,%ebp
  100500:	53                   	push   %ebx
  100501:	83 ec 14             	sub    $0x14,%esp
  100504:	c7 05 20 f2 10 00 00 	movl   $0x0,0x10f220
  10050b:	00 00 00 
  10050e:	c7 05 24 f2 10 00 00 	movl   $0x0,0x10f224
  100515:	00 00 00 
  100518:	83 ec 08             	sub    $0x8,%esp
  10051b:	6a 00                	push   $0x0
  10051d:	6a 07                	push   $0x7
  10051f:	e8 42 fc ff ff       	call   100166 <vga_entry_color>
  100524:	83 c4 10             	add    $0x10,%esp
  100527:	a2 28 f2 10 00       	mov    %al,0x10f228
  10052c:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  100531:	a3 2c f2 10 00       	mov    %eax,0x10f22c
  100536:	c7 05 30 f2 10 00 08 	movl   $0x8,0x10f230
  10053d:	00 00 00 
  100540:	b8 50 00 00 00       	mov    $0x50,%eax
  100545:	8b 0d 30 f2 10 00    	mov    0x10f230,%ecx
  10054b:	ba 00 00 00 00       	mov    $0x0,%edx
  100550:	f7 f1                	div    %ecx
  100552:	a3 34 f2 10 00       	mov    %eax,0x10f234
  100557:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10055e:	eb 57                	jmp    1005b7 <tty_init+0xba>
  100560:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100567:	eb 40                	jmp    1005a9 <tty_init+0xac>
  100569:	b8 50 00 00 00       	mov    $0x50,%eax
  10056e:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  100572:	89 c2                	mov    %eax,%edx
  100574:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100577:	01 d0                	add    %edx,%eax
  100579:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10057c:	0f b6 05 28 f2 10 00 	movzbl 0x10f228,%eax
  100583:	0f b6 c0             	movzbl %al,%eax
  100586:	8b 0d 2c f2 10 00    	mov    0x10f22c,%ecx
  10058c:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10058f:	01 d2                	add    %edx,%edx
  100591:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  100594:	83 ec 08             	sub    $0x8,%esp
  100597:	50                   	push   %eax
  100598:	6a 20                	push   $0x20
  10059a:	e8 d9 fb ff ff       	call   100178 <vga_entry>
  10059f:	83 c4 10             	add    $0x10,%esp
  1005a2:	66 89 03             	mov    %ax,(%ebx)
  1005a5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1005a9:	b8 50 00 00 00       	mov    $0x50,%eax
  1005ae:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  1005b1:	72 b6                	jb     100569 <tty_init+0x6c>
  1005b3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1005b7:	b8 19 00 00 00       	mov    $0x19,%eax
  1005bc:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1005bf:	72 9f                	jb     100560 <tty_init+0x63>
  1005c1:	83 ec 04             	sub    $0x4,%esp
  1005c4:	68 00 02 00 00       	push   $0x200
  1005c9:	6a 00                	push   $0x0
  1005cb:	68 20 f0 10 00       	push   $0x10f020
  1005d0:	e8 27 7d 00 00       	call   1082fc <memset>
  1005d5:	83 c4 10             	add    $0x10,%esp
  1005d8:	90                   	nop
  1005d9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1005dc:	c9                   	leave  
  1005dd:	c3                   	ret    

001005de <tty_set_color>:
  1005de:	55                   	push   %ebp
  1005df:	89 e5                	mov    %esp,%ebp
  1005e1:	83 ec 08             	sub    $0x8,%esp
  1005e4:	83 ec 08             	sub    $0x8,%esp
  1005e7:	ff 75 0c             	push   0xc(%ebp)
  1005ea:	ff 75 08             	push   0x8(%ebp)
  1005ed:	e8 74 fb ff ff       	call   100166 <vga_entry_color>
  1005f2:	83 c4 10             	add    $0x10,%esp
  1005f5:	a2 28 f2 10 00       	mov    %al,0x10f228
  1005fa:	90                   	nop
  1005fb:	c9                   	leave  
  1005fc:	c3                   	ret    

001005fd <tty_row_up>:
  1005fd:	55                   	push   %ebp
  1005fe:	89 e5                	mov    %esp,%ebp
  100600:	83 ec 08             	sub    $0x8,%esp
  100603:	a1 20 f2 10 00       	mov    0x10f220,%eax
  100608:	85 c0                	test   %eax,%eax
  10060a:	74 0d                	je     100619 <tty_row_up+0x1c>
  10060c:	a1 20 f2 10 00       	mov    0x10f220,%eax
  100611:	83 e8 01             	sub    $0x1,%eax
  100614:	a3 20 f2 10 00       	mov    %eax,0x10f220
  100619:	e8 53 fc ff ff       	call   100271 <tty_update_cursor_position>
  10061e:	90                   	nop
  10061f:	c9                   	leave  
  100620:	c3                   	ret    

00100621 <tty_row_down>:
  100621:	55                   	push   %ebp
  100622:	89 e5                	mov    %esp,%ebp
  100624:	83 ec 08             	sub    $0x8,%esp
  100627:	a1 20 f2 10 00       	mov    0x10f220,%eax
  10062c:	ba 19 00 00 00       	mov    $0x19,%edx
  100631:	39 d0                	cmp    %edx,%eax
  100633:	73 0d                	jae    100642 <tty_row_down+0x21>
  100635:	a1 20 f2 10 00       	mov    0x10f220,%eax
  10063a:	83 c0 01             	add    $0x1,%eax
  10063d:	a3 20 f2 10 00       	mov    %eax,0x10f220
  100642:	e8 2a fc ff ff       	call   100271 <tty_update_cursor_position>
  100647:	90                   	nop
  100648:	c9                   	leave  
  100649:	c3                   	ret    

0010064a <tty_column_right>:
  10064a:	55                   	push   %ebp
  10064b:	89 e5                	mov    %esp,%ebp
  10064d:	83 ec 08             	sub    $0x8,%esp
  100650:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100655:	ba 50 00 00 00       	mov    $0x50,%edx
  10065a:	39 d0                	cmp    %edx,%eax
  10065c:	73 0d                	jae    10066b <tty_column_right+0x21>
  10065e:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100663:	83 c0 01             	add    $0x1,%eax
  100666:	a3 24 f2 10 00       	mov    %eax,0x10f224
  10066b:	e8 01 fc ff ff       	call   100271 <tty_update_cursor_position>
  100670:	90                   	nop
  100671:	c9                   	leave  
  100672:	c3                   	ret    

00100673 <tty_column_left>:
  100673:	55                   	push   %ebp
  100674:	89 e5                	mov    %esp,%ebp
  100676:	83 ec 08             	sub    $0x8,%esp
  100679:	a1 24 f2 10 00       	mov    0x10f224,%eax
  10067e:	85 c0                	test   %eax,%eax
  100680:	74 0d                	je     10068f <tty_column_left+0x1c>
  100682:	a1 24 f2 10 00       	mov    0x10f224,%eax
  100687:	83 e8 01             	sub    $0x1,%eax
  10068a:	a3 24 f2 10 00       	mov    %eax,0x10f224
  10068f:	e8 dd fb ff ff       	call   100271 <tty_update_cursor_position>
  100694:	90                   	nop
  100695:	c9                   	leave  
  100696:	c3                   	ret    

00100697 <tty_reset_column>:
  100697:	55                   	push   %ebp
  100698:	89 e5                	mov    %esp,%ebp
  10069a:	83 ec 08             	sub    $0x8,%esp
  10069d:	c7 05 24 f2 10 00 00 	movl   $0x0,0x10f224
  1006a4:	00 00 00 
  1006a7:	e8 c5 fb ff ff       	call   100271 <tty_update_cursor_position>
  1006ac:	90                   	nop
  1006ad:	c9                   	leave  
  1006ae:	c3                   	ret    

001006af <cli>:
  1006af:	55                   	push   %ebp
  1006b0:	89 e5                	mov    %esp,%ebp
  1006b2:	fa                   	cli    
  1006b3:	90                   	nop
  1006b4:	5d                   	pop    %ebp
  1006b5:	c3                   	ret    

001006b6 <sti>:
  1006b6:	55                   	push   %ebp
  1006b7:	89 e5                	mov    %esp,%ebp
  1006b9:	fb                   	sti    
  1006ba:	90                   	nop
  1006bb:	5d                   	pop    %ebp
  1006bc:	c3                   	ret    

001006bd <inb>:
  1006bd:	55                   	push   %ebp
  1006be:	89 e5                	mov    %esp,%ebp
  1006c0:	83 ec 10             	sub    $0x10,%esp
  1006c3:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
  1006c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1006ca:	89 c2                	mov    %eax,%edx
  1006cc:	ec                   	in     (%dx),%al
  1006cd:	88 45 ff             	mov    %al,-0x1(%ebp)
  1006d0:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  1006d4:	c9                   	leave  
  1006d5:	c3                   	ret    

001006d6 <outb>:
  1006d6:	55                   	push   %ebp
  1006d7:	89 e5                	mov    %esp,%ebp
  1006d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006dc:	8b 55 08             	mov    0x8(%ebp),%edx
  1006df:	ee                   	out    %al,(%dx)
  1006e0:	90                   	nop
  1006e1:	5d                   	pop    %ebp
  1006e2:	c3                   	ret    

001006e3 <inw>:
  1006e3:	55                   	push   %ebp
  1006e4:	89 e5                	mov    %esp,%ebp
  1006e6:	83 ec 10             	sub    $0x10,%esp
  1006e9:	66 c7 45 fe 00 00    	movw   $0x0,-0x2(%ebp)
  1006ef:	8b 45 08             	mov    0x8(%ebp),%eax
  1006f2:	89 c2                	mov    %eax,%edx
  1006f4:	66 ed                	in     (%dx),%ax
  1006f6:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  1006fa:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  1006fe:	c9                   	leave  
  1006ff:	c3                   	ret    

00100700 <outw>:
  100700:	55                   	push   %ebp
  100701:	89 e5                	mov    %esp,%ebp
  100703:	8b 45 0c             	mov    0xc(%ebp),%eax
  100706:	8b 55 08             	mov    0x8(%ebp),%edx
  100709:	66 ef                	out    %ax,(%dx)
  10070b:	90                   	nop
  10070c:	5d                   	pop    %ebp
  10070d:	c3                   	ret    

0010070e <inl>:
  10070e:	55                   	push   %ebp
  10070f:	89 e5                	mov    %esp,%ebp
  100711:	83 ec 10             	sub    $0x10,%esp
  100714:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10071b:	8b 45 08             	mov    0x8(%ebp),%eax
  10071e:	89 c2                	mov    %eax,%edx
  100720:	ed                   	in     (%dx),%eax
  100721:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100724:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100727:	c9                   	leave  
  100728:	c3                   	ret    

00100729 <outl>:
  100729:	55                   	push   %ebp
  10072a:	89 e5                	mov    %esp,%ebp
  10072c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10072f:	8b 55 08             	mov    0x8(%ebp),%edx
  100732:	ef                   	out    %eax,(%dx)
  100733:	90                   	nop
  100734:	5d                   	pop    %ebp
  100735:	c3                   	ret    

00100736 <write_tss>:
  100736:	55                   	push   %ebp
  100737:	89 e5                	mov    %esp,%ebp
  100739:	83 ec 28             	sub    $0x28,%esp
  10073c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10073f:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  100743:	c7 45 f4 80 f2 10 00 	movl   $0x10f280,-0xc(%ebp)
  10074a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10074d:	83 c0 68             	add    $0x68,%eax
  100750:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100753:	83 ec 0c             	sub    $0xc,%esp
  100756:	6a 00                	push   $0x0
  100758:	68 e9 00 00 00       	push   $0xe9
  10075d:	ff 75 f0             	push   -0x10(%ebp)
  100760:	ff 75 f4             	push   -0xc(%ebp)
  100763:	ff 75 08             	push   0x8(%ebp)
  100766:	e8 2b 01 00 00       	call   100896 <gdt_add_entry>
  10076b:	83 c4 20             	add    $0x20,%esp
  10076e:	83 ec 04             	sub    $0x4,%esp
  100771:	6a 68                	push   $0x68
  100773:	6a 00                	push   $0x0
  100775:	68 80 f2 10 00       	push   $0x10f280
  10077a:	e8 7d 7b 00 00       	call   1082fc <memset>
  10077f:	83 c4 10             	add    $0x10,%esp
  100782:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
  100786:	a3 88 f2 10 00       	mov    %eax,0x10f288
  10078b:	8b 45 10             	mov    0x10(%ebp),%eax
  10078e:	a3 84 f2 10 00       	mov    %eax,0x10f284
  100793:	c7 05 cc f2 10 00 0b 	movl   $0xb,0x10f2cc
  10079a:	00 00 00 
  10079d:	c7 05 dc f2 10 00 13 	movl   $0x13,0x10f2dc
  1007a4:	00 00 00 
  1007a7:	a1 dc f2 10 00       	mov    0x10f2dc,%eax
  1007ac:	a3 d8 f2 10 00       	mov    %eax,0x10f2d8
  1007b1:	a1 d8 f2 10 00       	mov    0x10f2d8,%eax
  1007b6:	a3 c8 f2 10 00       	mov    %eax,0x10f2c8
  1007bb:	a1 c8 f2 10 00       	mov    0x10f2c8,%eax
  1007c0:	a3 d4 f2 10 00       	mov    %eax,0x10f2d4
  1007c5:	a1 d4 f2 10 00       	mov    0x10f2d4,%eax
  1007ca:	a3 d0 f2 10 00       	mov    %eax,0x10f2d0
  1007cf:	90                   	nop
  1007d0:	c9                   	leave  
  1007d1:	c3                   	ret    

001007d2 <gdt_init>:
  1007d2:	55                   	push   %ebp
  1007d3:	89 e5                	mov    %esp,%ebp
  1007d5:	83 ec 08             	sub    $0x8,%esp
  1007d8:	b8 40 f2 10 00       	mov    $0x10f240,%eax
  1007dd:	a3 72 f2 10 00       	mov    %eax,0x10f272
  1007e2:	66 c7 05 70 f2 10 00 	movw   $0x2f,0x10f270
  1007e9:	2f 00 
  1007eb:	83 ec 0c             	sub    $0xc,%esp
  1007ee:	6a 00                	push   $0x0
  1007f0:	6a 00                	push   $0x0
  1007f2:	6a 00                	push   $0x0
  1007f4:	6a 00                	push   $0x0
  1007f6:	6a 00                	push   $0x0
  1007f8:	e8 99 00 00 00       	call   100896 <gdt_add_entry>
  1007fd:	83 c4 20             	add    $0x20,%esp
  100800:	83 ec 0c             	sub    $0xc,%esp
  100803:	68 cf 00 00 00       	push   $0xcf
  100808:	68 9a 00 00 00       	push   $0x9a
  10080d:	6a ff                	push   $0xffffffff
  10080f:	6a 00                	push   $0x0
  100811:	6a 01                	push   $0x1
  100813:	e8 7e 00 00 00       	call   100896 <gdt_add_entry>
  100818:	83 c4 20             	add    $0x20,%esp
  10081b:	83 ec 0c             	sub    $0xc,%esp
  10081e:	68 cf 00 00 00       	push   $0xcf
  100823:	68 92 00 00 00       	push   $0x92
  100828:	6a ff                	push   $0xffffffff
  10082a:	6a 00                	push   $0x0
  10082c:	6a 02                	push   $0x2
  10082e:	e8 63 00 00 00       	call   100896 <gdt_add_entry>
  100833:	83 c4 20             	add    $0x20,%esp
  100836:	83 ec 0c             	sub    $0xc,%esp
  100839:	68 cf 00 00 00       	push   $0xcf
  10083e:	68 fa 00 00 00       	push   $0xfa
  100843:	6a ff                	push   $0xffffffff
  100845:	6a 00                	push   $0x0
  100847:	6a 03                	push   $0x3
  100849:	e8 48 00 00 00       	call   100896 <gdt_add_entry>
  10084e:	83 c4 20             	add    $0x20,%esp
  100851:	83 ec 0c             	sub    $0xc,%esp
  100854:	68 cf 00 00 00       	push   $0xcf
  100859:	68 f2 00 00 00       	push   $0xf2
  10085e:	6a ff                	push   $0xffffffff
  100860:	6a 00                	push   $0x0
  100862:	6a 04                	push   $0x4
  100864:	e8 2d 00 00 00       	call   100896 <gdt_add_entry>
  100869:	83 c4 20             	add    $0x20,%esp
  10086c:	83 ec 04             	sub    $0x4,%esp
  10086f:	6a 00                	push   $0x0
  100871:	6a 10                	push   $0x10
  100873:	6a 05                	push   $0x5
  100875:	e8 bc fe ff ff       	call   100736 <write_tss>
  10087a:	83 c4 10             	add    $0x10,%esp
  10087d:	b8 70 f2 10 00       	mov    $0x10f270,%eax
  100882:	83 ec 0c             	sub    $0xc,%esp
  100885:	50                   	push   %eax
  100886:	e8 28 06 00 00       	call   100eb3 <store_gdt>
  10088b:	83 c4 10             	add    $0x10,%esp
  10088e:	e8 3d 06 00 00       	call   100ed0 <store_tss>
  100893:	90                   	nop
  100894:	c9                   	leave  
  100895:	c3                   	ret    

00100896 <gdt_add_entry>:
  100896:	55                   	push   %ebp
  100897:	89 e5                	mov    %esp,%ebp
  100899:	83 ec 08             	sub    $0x8,%esp
  10089c:	8b 55 14             	mov    0x14(%ebp),%edx
  10089f:	8b 45 18             	mov    0x18(%ebp),%eax
  1008a2:	88 55 fc             	mov    %dl,-0x4(%ebp)
  1008a5:	88 45 f8             	mov    %al,-0x8(%ebp)
  1008a8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008ab:	89 c2                	mov    %eax,%edx
  1008ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1008b0:	66 89 14 c5 42 f2 10 	mov    %dx,0x10f242(,%eax,8)
  1008b7:	00 
  1008b8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008bb:	c1 e8 10             	shr    $0x10,%eax
  1008be:	89 c2                	mov    %eax,%edx
  1008c0:	8b 45 08             	mov    0x8(%ebp),%eax
  1008c3:	88 14 c5 44 f2 10 00 	mov    %dl,0x10f244(,%eax,8)
  1008ca:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008cd:	c1 e8 18             	shr    $0x18,%eax
  1008d0:	89 c2                	mov    %eax,%edx
  1008d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1008d5:	88 14 c5 47 f2 10 00 	mov    %dl,0x10f247(,%eax,8)
  1008dc:	8b 45 10             	mov    0x10(%ebp),%eax
  1008df:	89 c2                	mov    %eax,%edx
  1008e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1008e4:	66 89 14 c5 40 f2 10 	mov    %dx,0x10f240(,%eax,8)
  1008eb:	00 
  1008ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1008ef:	c1 e8 10             	shr    $0x10,%eax
  1008f2:	83 e0 0f             	and    $0xf,%eax
  1008f5:	89 c2                	mov    %eax,%edx
  1008f7:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  1008fb:	83 e0 f0             	and    $0xfffffff0,%eax
  1008fe:	09 c2                	or     %eax,%edx
  100900:	8b 45 08             	mov    0x8(%ebp),%eax
  100903:	88 14 c5 46 f2 10 00 	mov    %dl,0x10f246(,%eax,8)
  10090a:	8b 45 08             	mov    0x8(%ebp),%eax
  10090d:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  100911:	88 14 c5 45 f2 10 00 	mov    %dl,0x10f245(,%eax,8)
  100918:	90                   	nop
  100919:	c9                   	leave  
  10091a:	c3                   	ret    

0010091b <gdt_set_kernel_stack>:
  10091b:	55                   	push   %ebp
  10091c:	89 e5                	mov    %esp,%ebp
  10091e:	8b 45 08             	mov    0x8(%ebp),%eax
  100921:	a3 84 f2 10 00       	mov    %eax,0x10f284
  100926:	90                   	nop
  100927:	5d                   	pop    %ebp
  100928:	c3                   	ret    

00100929 <idt_init>:
  100929:	55                   	push   %ebp
  10092a:	89 e5                	mov    %esp,%ebp
  10092c:	83 ec 18             	sub    $0x18,%esp
  10092f:	b8 f0 f2 10 00       	mov    $0x10f2f0,%eax
  100934:	a3 f2 fa 10 00       	mov    %eax,0x10faf2
  100939:	66 c7 05 f0 fa 10 00 	movw   $0x800,0x10faf0
  100940:	00 08 
  100942:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100949:	eb 1f                	jmp    10096a <idt_init+0x41>
  10094b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10094e:	c1 e0 03             	shl    $0x3,%eax
  100951:	05 f0 f2 10 00       	add    $0x10f2f0,%eax
  100956:	83 ec 04             	sub    $0x4,%esp
  100959:	6a 08                	push   $0x8
  10095b:	6a 00                	push   $0x0
  10095d:	50                   	push   %eax
  10095e:	e8 99 79 00 00       	call   1082fc <memset>
  100963:	83 c4 10             	add    $0x10,%esp
  100966:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10096a:	81 7d f4 ff 00 00 00 	cmpl   $0xff,-0xc(%ebp)
  100971:	7e d8                	jle    10094b <idt_init+0x22>
  100973:	b8 e0 0e 10 00       	mov    $0x100ee0,%eax
  100978:	83 ec 04             	sub    $0x4,%esp
  10097b:	68 8f 00 00 00       	push   $0x8f
  100980:	50                   	push   %eax
  100981:	6a 00                	push   $0x0
  100983:	e8 c7 04 00 00       	call   100e4f <idt_add_entry>
  100988:	83 c4 10             	add    $0x10,%esp
  10098b:	b8 ea 0e 10 00       	mov    $0x100eea,%eax
  100990:	83 ec 04             	sub    $0x4,%esp
  100993:	68 8f 00 00 00       	push   $0x8f
  100998:	50                   	push   %eax
  100999:	6a 01                	push   $0x1
  10099b:	e8 af 04 00 00       	call   100e4f <idt_add_entry>
  1009a0:	83 c4 10             	add    $0x10,%esp
  1009a3:	b8 f4 0e 10 00       	mov    $0x100ef4,%eax
  1009a8:	83 ec 04             	sub    $0x4,%esp
  1009ab:	68 8f 00 00 00       	push   $0x8f
  1009b0:	50                   	push   %eax
  1009b1:	6a 02                	push   $0x2
  1009b3:	e8 97 04 00 00       	call   100e4f <idt_add_entry>
  1009b8:	83 c4 10             	add    $0x10,%esp
  1009bb:	b8 fe 0e 10 00       	mov    $0x100efe,%eax
  1009c0:	83 ec 04             	sub    $0x4,%esp
  1009c3:	68 8f 00 00 00       	push   $0x8f
  1009c8:	50                   	push   %eax
  1009c9:	6a 03                	push   $0x3
  1009cb:	e8 7f 04 00 00       	call   100e4f <idt_add_entry>
  1009d0:	83 c4 10             	add    $0x10,%esp
  1009d3:	b8 08 0f 10 00       	mov    $0x100f08,%eax
  1009d8:	83 ec 04             	sub    $0x4,%esp
  1009db:	68 8f 00 00 00       	push   $0x8f
  1009e0:	50                   	push   %eax
  1009e1:	6a 04                	push   $0x4
  1009e3:	e8 67 04 00 00       	call   100e4f <idt_add_entry>
  1009e8:	83 c4 10             	add    $0x10,%esp
  1009eb:	b8 12 0f 10 00       	mov    $0x100f12,%eax
  1009f0:	83 ec 04             	sub    $0x4,%esp
  1009f3:	68 8f 00 00 00       	push   $0x8f
  1009f8:	50                   	push   %eax
  1009f9:	6a 05                	push   $0x5
  1009fb:	e8 4f 04 00 00       	call   100e4f <idt_add_entry>
  100a00:	83 c4 10             	add    $0x10,%esp
  100a03:	b8 1c 0f 10 00       	mov    $0x100f1c,%eax
  100a08:	83 ec 04             	sub    $0x4,%esp
  100a0b:	68 8f 00 00 00       	push   $0x8f
  100a10:	50                   	push   %eax
  100a11:	6a 06                	push   $0x6
  100a13:	e8 37 04 00 00       	call   100e4f <idt_add_entry>
  100a18:	83 c4 10             	add    $0x10,%esp
  100a1b:	b8 26 0f 10 00       	mov    $0x100f26,%eax
  100a20:	83 ec 04             	sub    $0x4,%esp
  100a23:	68 8f 00 00 00       	push   $0x8f
  100a28:	50                   	push   %eax
  100a29:	6a 07                	push   $0x7
  100a2b:	e8 1f 04 00 00       	call   100e4f <idt_add_entry>
  100a30:	83 c4 10             	add    $0x10,%esp
  100a33:	b8 30 0f 10 00       	mov    $0x100f30,%eax
  100a38:	83 ec 04             	sub    $0x4,%esp
  100a3b:	68 8f 00 00 00       	push   $0x8f
  100a40:	50                   	push   %eax
  100a41:	6a 08                	push   $0x8
  100a43:	e8 07 04 00 00       	call   100e4f <idt_add_entry>
  100a48:	83 c4 10             	add    $0x10,%esp
  100a4b:	b8 3a 0f 10 00       	mov    $0x100f3a,%eax
  100a50:	83 ec 04             	sub    $0x4,%esp
  100a53:	68 8f 00 00 00       	push   $0x8f
  100a58:	50                   	push   %eax
  100a59:	6a 09                	push   $0x9
  100a5b:	e8 ef 03 00 00       	call   100e4f <idt_add_entry>
  100a60:	83 c4 10             	add    $0x10,%esp
  100a63:	b8 44 0f 10 00       	mov    $0x100f44,%eax
  100a68:	83 ec 04             	sub    $0x4,%esp
  100a6b:	68 8f 00 00 00       	push   $0x8f
  100a70:	50                   	push   %eax
  100a71:	6a 0a                	push   $0xa
  100a73:	e8 d7 03 00 00       	call   100e4f <idt_add_entry>
  100a78:	83 c4 10             	add    $0x10,%esp
  100a7b:	b8 4e 0f 10 00       	mov    $0x100f4e,%eax
  100a80:	83 ec 04             	sub    $0x4,%esp
  100a83:	68 8f 00 00 00       	push   $0x8f
  100a88:	50                   	push   %eax
  100a89:	6a 0b                	push   $0xb
  100a8b:	e8 bf 03 00 00       	call   100e4f <idt_add_entry>
  100a90:	83 c4 10             	add    $0x10,%esp
  100a93:	b8 58 0f 10 00       	mov    $0x100f58,%eax
  100a98:	83 ec 04             	sub    $0x4,%esp
  100a9b:	68 8f 00 00 00       	push   $0x8f
  100aa0:	50                   	push   %eax
  100aa1:	6a 0c                	push   $0xc
  100aa3:	e8 a7 03 00 00       	call   100e4f <idt_add_entry>
  100aa8:	83 c4 10             	add    $0x10,%esp
  100aab:	b8 62 0f 10 00       	mov    $0x100f62,%eax
  100ab0:	83 ec 04             	sub    $0x4,%esp
  100ab3:	68 8f 00 00 00       	push   $0x8f
  100ab8:	50                   	push   %eax
  100ab9:	6a 0d                	push   $0xd
  100abb:	e8 8f 03 00 00       	call   100e4f <idt_add_entry>
  100ac0:	83 c4 10             	add    $0x10,%esp
  100ac3:	b8 6c 0f 10 00       	mov    $0x100f6c,%eax
  100ac8:	83 ec 04             	sub    $0x4,%esp
  100acb:	68 8f 00 00 00       	push   $0x8f
  100ad0:	50                   	push   %eax
  100ad1:	6a 0e                	push   $0xe
  100ad3:	e8 77 03 00 00       	call   100e4f <idt_add_entry>
  100ad8:	83 c4 10             	add    $0x10,%esp
  100adb:	b8 74 0f 10 00       	mov    $0x100f74,%eax
  100ae0:	83 ec 04             	sub    $0x4,%esp
  100ae3:	68 8f 00 00 00       	push   $0x8f
  100ae8:	50                   	push   %eax
  100ae9:	6a 0f                	push   $0xf
  100aeb:	e8 5f 03 00 00       	call   100e4f <idt_add_entry>
  100af0:	83 c4 10             	add    $0x10,%esp
  100af3:	b8 7e 0f 10 00       	mov    $0x100f7e,%eax
  100af8:	83 ec 04             	sub    $0x4,%esp
  100afb:	68 8f 00 00 00       	push   $0x8f
  100b00:	50                   	push   %eax
  100b01:	6a 10                	push   $0x10
  100b03:	e8 47 03 00 00       	call   100e4f <idt_add_entry>
  100b08:	83 c4 10             	add    $0x10,%esp
  100b0b:	b8 88 0f 10 00       	mov    $0x100f88,%eax
  100b10:	83 ec 04             	sub    $0x4,%esp
  100b13:	68 8f 00 00 00       	push   $0x8f
  100b18:	50                   	push   %eax
  100b19:	6a 11                	push   $0x11
  100b1b:	e8 2f 03 00 00       	call   100e4f <idt_add_entry>
  100b20:	83 c4 10             	add    $0x10,%esp
  100b23:	b8 90 0f 10 00       	mov    $0x100f90,%eax
  100b28:	83 ec 04             	sub    $0x4,%esp
  100b2b:	68 8f 00 00 00       	push   $0x8f
  100b30:	50                   	push   %eax
  100b31:	6a 12                	push   $0x12
  100b33:	e8 17 03 00 00       	call   100e4f <idt_add_entry>
  100b38:	83 c4 10             	add    $0x10,%esp
  100b3b:	b8 9a 0f 10 00       	mov    $0x100f9a,%eax
  100b40:	83 ec 04             	sub    $0x4,%esp
  100b43:	68 8f 00 00 00       	push   $0x8f
  100b48:	50                   	push   %eax
  100b49:	6a 13                	push   $0x13
  100b4b:	e8 ff 02 00 00       	call   100e4f <idt_add_entry>
  100b50:	83 c4 10             	add    $0x10,%esp
  100b53:	b8 a4 0f 10 00       	mov    $0x100fa4,%eax
  100b58:	83 ec 04             	sub    $0x4,%esp
  100b5b:	68 8f 00 00 00       	push   $0x8f
  100b60:	50                   	push   %eax
  100b61:	6a 14                	push   $0x14
  100b63:	e8 e7 02 00 00       	call   100e4f <idt_add_entry>
  100b68:	83 c4 10             	add    $0x10,%esp
  100b6b:	b8 ae 0f 10 00       	mov    $0x100fae,%eax
  100b70:	83 ec 04             	sub    $0x4,%esp
  100b73:	68 8f 00 00 00       	push   $0x8f
  100b78:	50                   	push   %eax
  100b79:	6a 15                	push   $0x15
  100b7b:	e8 cf 02 00 00       	call   100e4f <idt_add_entry>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	b8 b6 0f 10 00       	mov    $0x100fb6,%eax
  100b88:	83 ec 04             	sub    $0x4,%esp
  100b8b:	68 8f 00 00 00       	push   $0x8f
  100b90:	50                   	push   %eax
  100b91:	6a 16                	push   $0x16
  100b93:	e8 b7 02 00 00       	call   100e4f <idt_add_entry>
  100b98:	83 c4 10             	add    $0x10,%esp
  100b9b:	b8 c0 0f 10 00       	mov    $0x100fc0,%eax
  100ba0:	83 ec 04             	sub    $0x4,%esp
  100ba3:	68 8f 00 00 00       	push   $0x8f
  100ba8:	50                   	push   %eax
  100ba9:	6a 17                	push   $0x17
  100bab:	e8 9f 02 00 00       	call   100e4f <idt_add_entry>
  100bb0:	83 c4 10             	add    $0x10,%esp
  100bb3:	b8 ca 0f 10 00       	mov    $0x100fca,%eax
  100bb8:	83 ec 04             	sub    $0x4,%esp
  100bbb:	68 8f 00 00 00       	push   $0x8f
  100bc0:	50                   	push   %eax
  100bc1:	6a 18                	push   $0x18
  100bc3:	e8 87 02 00 00       	call   100e4f <idt_add_entry>
  100bc8:	83 c4 10             	add    $0x10,%esp
  100bcb:	b8 d4 0f 10 00       	mov    $0x100fd4,%eax
  100bd0:	83 ec 04             	sub    $0x4,%esp
  100bd3:	68 8f 00 00 00       	push   $0x8f
  100bd8:	50                   	push   %eax
  100bd9:	6a 19                	push   $0x19
  100bdb:	e8 6f 02 00 00       	call   100e4f <idt_add_entry>
  100be0:	83 c4 10             	add    $0x10,%esp
  100be3:	b8 de 0f 10 00       	mov    $0x100fde,%eax
  100be8:	83 ec 04             	sub    $0x4,%esp
  100beb:	68 8f 00 00 00       	push   $0x8f
  100bf0:	50                   	push   %eax
  100bf1:	6a 1a                	push   $0x1a
  100bf3:	e8 57 02 00 00       	call   100e4f <idt_add_entry>
  100bf8:	83 c4 10             	add    $0x10,%esp
  100bfb:	b8 e8 0f 10 00       	mov    $0x100fe8,%eax
  100c00:	83 ec 04             	sub    $0x4,%esp
  100c03:	68 8f 00 00 00       	push   $0x8f
  100c08:	50                   	push   %eax
  100c09:	6a 1b                	push   $0x1b
  100c0b:	e8 3f 02 00 00       	call   100e4f <idt_add_entry>
  100c10:	83 c4 10             	add    $0x10,%esp
  100c13:	b8 f2 0f 10 00       	mov    $0x100ff2,%eax
  100c18:	83 ec 04             	sub    $0x4,%esp
  100c1b:	68 8f 00 00 00       	push   $0x8f
  100c20:	50                   	push   %eax
  100c21:	6a 1c                	push   $0x1c
  100c23:	e8 27 02 00 00       	call   100e4f <idt_add_entry>
  100c28:	83 c4 10             	add    $0x10,%esp
  100c2b:	b8 fc 0f 10 00       	mov    $0x100ffc,%eax
  100c30:	83 ec 04             	sub    $0x4,%esp
  100c33:	68 8f 00 00 00       	push   $0x8f
  100c38:	50                   	push   %eax
  100c39:	6a 1d                	push   $0x1d
  100c3b:	e8 0f 02 00 00       	call   100e4f <idt_add_entry>
  100c40:	83 c4 10             	add    $0x10,%esp
  100c43:	b8 06 10 10 00       	mov    $0x101006,%eax
  100c48:	83 ec 04             	sub    $0x4,%esp
  100c4b:	68 8f 00 00 00       	push   $0x8f
  100c50:	50                   	push   %eax
  100c51:	6a 1e                	push   $0x1e
  100c53:	e8 f7 01 00 00       	call   100e4f <idt_add_entry>
  100c58:	83 c4 10             	add    $0x10,%esp
  100c5b:	b8 10 10 10 00       	mov    $0x101010,%eax
  100c60:	83 ec 04             	sub    $0x4,%esp
  100c63:	68 8f 00 00 00       	push   $0x8f
  100c68:	50                   	push   %eax
  100c69:	6a 1f                	push   $0x1f
  100c6b:	e8 df 01 00 00       	call   100e4f <idt_add_entry>
  100c70:	83 c4 10             	add    $0x10,%esp
  100c73:	b8 38 10 10 00       	mov    $0x101038,%eax
  100c78:	83 ec 04             	sub    $0x4,%esp
  100c7b:	68 8e 00 00 00       	push   $0x8e
  100c80:	50                   	push   %eax
  100c81:	6a 20                	push   $0x20
  100c83:	e8 c7 01 00 00       	call   100e4f <idt_add_entry>
  100c88:	83 c4 10             	add    $0x10,%esp
  100c8b:	b8 42 10 10 00       	mov    $0x101042,%eax
  100c90:	83 ec 04             	sub    $0x4,%esp
  100c93:	68 8e 00 00 00       	push   $0x8e
  100c98:	50                   	push   %eax
  100c99:	6a 21                	push   $0x21
  100c9b:	e8 af 01 00 00       	call   100e4f <idt_add_entry>
  100ca0:	83 c4 10             	add    $0x10,%esp
  100ca3:	b8 4c 10 10 00       	mov    $0x10104c,%eax
  100ca8:	83 ec 04             	sub    $0x4,%esp
  100cab:	68 8e 00 00 00       	push   $0x8e
  100cb0:	50                   	push   %eax
  100cb1:	6a 22                	push   $0x22
  100cb3:	e8 97 01 00 00       	call   100e4f <idt_add_entry>
  100cb8:	83 c4 10             	add    $0x10,%esp
  100cbb:	b8 56 10 10 00       	mov    $0x101056,%eax
  100cc0:	83 ec 04             	sub    $0x4,%esp
  100cc3:	68 8e 00 00 00       	push   $0x8e
  100cc8:	50                   	push   %eax
  100cc9:	6a 23                	push   $0x23
  100ccb:	e8 7f 01 00 00       	call   100e4f <idt_add_entry>
  100cd0:	83 c4 10             	add    $0x10,%esp
  100cd3:	b8 60 10 10 00       	mov    $0x101060,%eax
  100cd8:	83 ec 04             	sub    $0x4,%esp
  100cdb:	68 8e 00 00 00       	push   $0x8e
  100ce0:	50                   	push   %eax
  100ce1:	6a 24                	push   $0x24
  100ce3:	e8 67 01 00 00       	call   100e4f <idt_add_entry>
  100ce8:	83 c4 10             	add    $0x10,%esp
  100ceb:	b8 6a 10 10 00       	mov    $0x10106a,%eax
  100cf0:	83 ec 04             	sub    $0x4,%esp
  100cf3:	68 8e 00 00 00       	push   $0x8e
  100cf8:	50                   	push   %eax
  100cf9:	6a 25                	push   $0x25
  100cfb:	e8 4f 01 00 00       	call   100e4f <idt_add_entry>
  100d00:	83 c4 10             	add    $0x10,%esp
  100d03:	b8 74 10 10 00       	mov    $0x101074,%eax
  100d08:	83 ec 04             	sub    $0x4,%esp
  100d0b:	68 8e 00 00 00       	push   $0x8e
  100d10:	50                   	push   %eax
  100d11:	6a 26                	push   $0x26
  100d13:	e8 37 01 00 00       	call   100e4f <idt_add_entry>
  100d18:	83 c4 10             	add    $0x10,%esp
  100d1b:	b8 7e 10 10 00       	mov    $0x10107e,%eax
  100d20:	83 ec 04             	sub    $0x4,%esp
  100d23:	68 8e 00 00 00       	push   $0x8e
  100d28:	50                   	push   %eax
  100d29:	6a 27                	push   $0x27
  100d2b:	e8 1f 01 00 00       	call   100e4f <idt_add_entry>
  100d30:	83 c4 10             	add    $0x10,%esp
  100d33:	b8 88 10 10 00       	mov    $0x101088,%eax
  100d38:	83 ec 04             	sub    $0x4,%esp
  100d3b:	68 8e 00 00 00       	push   $0x8e
  100d40:	50                   	push   %eax
  100d41:	6a 28                	push   $0x28
  100d43:	e8 07 01 00 00       	call   100e4f <idt_add_entry>
  100d48:	83 c4 10             	add    $0x10,%esp
  100d4b:	b8 92 10 10 00       	mov    $0x101092,%eax
  100d50:	83 ec 04             	sub    $0x4,%esp
  100d53:	68 8e 00 00 00       	push   $0x8e
  100d58:	50                   	push   %eax
  100d59:	6a 29                	push   $0x29
  100d5b:	e8 ef 00 00 00       	call   100e4f <idt_add_entry>
  100d60:	83 c4 10             	add    $0x10,%esp
  100d63:	b8 9c 10 10 00       	mov    $0x10109c,%eax
  100d68:	83 ec 04             	sub    $0x4,%esp
  100d6b:	68 8e 00 00 00       	push   $0x8e
  100d70:	50                   	push   %eax
  100d71:	6a 2a                	push   $0x2a
  100d73:	e8 d7 00 00 00       	call   100e4f <idt_add_entry>
  100d78:	83 c4 10             	add    $0x10,%esp
  100d7b:	b8 a6 10 10 00       	mov    $0x1010a6,%eax
  100d80:	83 ec 04             	sub    $0x4,%esp
  100d83:	68 8e 00 00 00       	push   $0x8e
  100d88:	50                   	push   %eax
  100d89:	6a 2b                	push   $0x2b
  100d8b:	e8 bf 00 00 00       	call   100e4f <idt_add_entry>
  100d90:	83 c4 10             	add    $0x10,%esp
  100d93:	b8 b0 10 10 00       	mov    $0x1010b0,%eax
  100d98:	83 ec 04             	sub    $0x4,%esp
  100d9b:	68 8e 00 00 00       	push   $0x8e
  100da0:	50                   	push   %eax
  100da1:	6a 2c                	push   $0x2c
  100da3:	e8 a7 00 00 00       	call   100e4f <idt_add_entry>
  100da8:	83 c4 10             	add    $0x10,%esp
  100dab:	b8 ba 10 10 00       	mov    $0x1010ba,%eax
  100db0:	83 ec 04             	sub    $0x4,%esp
  100db3:	68 8e 00 00 00       	push   $0x8e
  100db8:	50                   	push   %eax
  100db9:	6a 2d                	push   $0x2d
  100dbb:	e8 8f 00 00 00       	call   100e4f <idt_add_entry>
  100dc0:	83 c4 10             	add    $0x10,%esp
  100dc3:	b8 c4 10 10 00       	mov    $0x1010c4,%eax
  100dc8:	83 ec 04             	sub    $0x4,%esp
  100dcb:	68 8e 00 00 00       	push   $0x8e
  100dd0:	50                   	push   %eax
  100dd1:	6a 2e                	push   $0x2e
  100dd3:	e8 77 00 00 00       	call   100e4f <idt_add_entry>
  100dd8:	83 c4 10             	add    $0x10,%esp
  100ddb:	b8 ce 10 10 00       	mov    $0x1010ce,%eax
  100de0:	83 ec 04             	sub    $0x4,%esp
  100de3:	68 8e 00 00 00       	push   $0x8e
  100de8:	50                   	push   %eax
  100de9:	6a 2f                	push   $0x2f
  100deb:	e8 5f 00 00 00       	call   100e4f <idt_add_entry>
  100df0:	83 c4 10             	add    $0x10,%esp
  100df3:	b8 1a 10 10 00       	mov    $0x10101a,%eax
  100df8:	83 ec 04             	sub    $0x4,%esp
  100dfb:	68 8f 00 00 00       	push   $0x8f
  100e00:	50                   	push   %eax
  100e01:	6a 50                	push   $0x50
  100e03:	e8 47 00 00 00       	call   100e4f <idt_add_entry>
  100e08:	83 c4 10             	add    $0x10,%esp
  100e0b:	b8 24 10 10 00       	mov    $0x101024,%eax
  100e10:	83 ec 04             	sub    $0x4,%esp
  100e13:	68 8f 00 00 00       	push   $0x8f
  100e18:	50                   	push   %eax
  100e19:	6a 51                	push   $0x51
  100e1b:	e8 2f 00 00 00       	call   100e4f <idt_add_entry>
  100e20:	83 c4 10             	add    $0x10,%esp
  100e23:	b8 2e 10 10 00       	mov    $0x10102e,%eax
  100e28:	83 ec 04             	sub    $0x4,%esp
  100e2b:	68 8f 00 00 00       	push   $0x8f
  100e30:	50                   	push   %eax
  100e31:	6a 52                	push   $0x52
  100e33:	e8 17 00 00 00       	call   100e4f <idt_add_entry>
  100e38:	83 c4 10             	add    $0x10,%esp
  100e3b:	b8 f0 fa 10 00       	mov    $0x10faf0,%eax
  100e40:	83 ec 0c             	sub    $0xc,%esp
  100e43:	50                   	push   %eax
  100e44:	e8 8f 00 00 00       	call   100ed8 <store_idt>
  100e49:	83 c4 10             	add    $0x10,%esp
  100e4c:	90                   	nop
  100e4d:	c9                   	leave  
  100e4e:	c3                   	ret    

00100e4f <idt_add_entry>:
  100e4f:	55                   	push   %ebp
  100e50:	89 e5                	mov    %esp,%ebp
  100e52:	83 ec 08             	sub    $0x8,%esp
  100e55:	8b 55 08             	mov    0x8(%ebp),%edx
  100e58:	8b 45 10             	mov    0x10(%ebp),%eax
  100e5b:	88 55 fc             	mov    %dl,-0x4(%ebp)
  100e5e:	88 45 f8             	mov    %al,-0x8(%ebp)
  100e61:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e65:	8b 55 0c             	mov    0xc(%ebp),%edx
  100e68:	66 89 14 c5 f0 f2 10 	mov    %dx,0x10f2f0(,%eax,8)
  100e6f:	00 
  100e70:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e73:	c1 e8 10             	shr    $0x10,%eax
  100e76:	89 c2                	mov    %eax,%edx
  100e78:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e7c:	66 89 14 c5 f6 f2 10 	mov    %dx,0x10f2f6(,%eax,8)
  100e83:	00 
  100e84:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e88:	66 c7 04 c5 f2 f2 10 	movw   $0x8,0x10f2f2(,%eax,8)
  100e8f:	00 08 00 
  100e92:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e96:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
  100e9a:	83 ca 60             	or     $0x60,%edx
  100e9d:	88 14 c5 f5 f2 10 00 	mov    %dl,0x10f2f5(,%eax,8)
  100ea4:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100ea8:	c6 04 c5 f4 f2 10 00 	movb   $0x0,0x10f2f4(,%eax,8)
  100eaf:	00 
  100eb0:	90                   	nop
  100eb1:	c9                   	leave  
  100eb2:	c3                   	ret    

00100eb3 <store_gdt>:
  100eb3:	8b 44 24 04          	mov    0x4(%esp),%eax
  100eb7:	0f 01 10             	lgdtl  (%eax)
  100eba:	66 b8 10 00          	mov    $0x10,%ax
  100ebe:	8e d8                	mov    %eax,%ds
  100ec0:	8e c0                	mov    %eax,%es
  100ec2:	8e e0                	mov    %eax,%fs
  100ec4:	8e e8                	mov    %eax,%gs
  100ec6:	8e d0                	mov    %eax,%ss
  100ec8:	ea cf 0e 10 00 08 00 	ljmp   $0x8,$0x100ecf

00100ecf <flush>:
  100ecf:	c3                   	ret    

00100ed0 <store_tss>:
  100ed0:	66 b8 2b 00          	mov    $0x2b,%ax
  100ed4:	0f 00 d8             	ltr    %ax
  100ed7:	c3                   	ret    

00100ed8 <store_idt>:
  100ed8:	8b 44 24 04          	mov    0x4(%esp),%eax
  100edc:	0f 01 18             	lidtl  (%eax)
  100edf:	c3                   	ret    

00100ee0 <isr0_entry_point>:
  100ee0:	fa                   	cli    
  100ee1:	6a 00                	push   $0x0
  100ee3:	6a 00                	push   $0x0
  100ee5:	e9 ee 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100eea <isr1_entry_point>:
  100eea:	fa                   	cli    
  100eeb:	6a 00                	push   $0x0
  100eed:	6a 01                	push   $0x1
  100eef:	e9 e4 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100ef4 <isr2_entry_point>:
  100ef4:	fa                   	cli    
  100ef5:	6a 00                	push   $0x0
  100ef7:	6a 02                	push   $0x2
  100ef9:	e9 da 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100efe <isr3_entry_point>:
  100efe:	fa                   	cli    
  100eff:	6a 00                	push   $0x0
  100f01:	6a 03                	push   $0x3
  100f03:	e9 d0 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f08 <isr4_entry_point>:
  100f08:	fa                   	cli    
  100f09:	6a 00                	push   $0x0
  100f0b:	6a 04                	push   $0x4
  100f0d:	e9 c6 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f12 <isr5_entry_point>:
  100f12:	fa                   	cli    
  100f13:	6a 00                	push   $0x0
  100f15:	6a 05                	push   $0x5
  100f17:	e9 bc 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f1c <isr6_entry_point>:
  100f1c:	fa                   	cli    
  100f1d:	6a 17                	push   $0x17
  100f1f:	6a 06                	push   $0x6
  100f21:	e9 b2 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f26 <isr7_entry_point>:
  100f26:	fa                   	cli    
  100f27:	6a 00                	push   $0x0
  100f29:	6a 07                	push   $0x7
  100f2b:	e9 a8 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f30 <isr8_entry_point>:
  100f30:	fa                   	cli    
  100f31:	6a 00                	push   $0x0
  100f33:	6a 08                	push   $0x8
  100f35:	e9 9e 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f3a <isr9_entry_point>:
  100f3a:	fa                   	cli    
  100f3b:	6a 00                	push   $0x0
  100f3d:	6a 09                	push   $0x9
  100f3f:	e9 94 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f44 <isr10_entry_point>:
  100f44:	fa                   	cli    
  100f45:	6a 00                	push   $0x0
  100f47:	6a 0a                	push   $0xa
  100f49:	e9 8a 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f4e <isr11_entry_point>:
  100f4e:	fa                   	cli    
  100f4f:	6a 00                	push   $0x0
  100f51:	6a 0b                	push   $0xb
  100f53:	e9 80 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f58 <isr12_entry_point>:
  100f58:	fa                   	cli    
  100f59:	6a 00                	push   $0x0
  100f5b:	6a 0c                	push   $0xc
  100f5d:	e9 76 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f62 <isr13_entry_point>:
  100f62:	fa                   	cli    
  100f63:	6a 00                	push   $0x0
  100f65:	6a 0d                	push   $0xd
  100f67:	e9 6c 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f6c <isr14_entry_point>:
  100f6c:	fa                   	cli    
  100f6d:	6a 0e                	push   $0xe
  100f6f:	e9 64 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f74 <isr15_entry_point>:
  100f74:	fa                   	cli    
  100f75:	6a 00                	push   $0x0
  100f77:	6a 0f                	push   $0xf
  100f79:	e9 5a 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f7e <isr16_entry_point>:
  100f7e:	fa                   	cli    
  100f7f:	6a 00                	push   $0x0
  100f81:	6a 10                	push   $0x10
  100f83:	e9 50 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f88 <isr17_entry_point>:
  100f88:	fa                   	cli    
  100f89:	6a 11                	push   $0x11
  100f8b:	e9 48 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f90 <isr18_entry_point>:
  100f90:	fa                   	cli    
  100f91:	6a 00                	push   $0x0
  100f93:	6a 12                	push   $0x12
  100f95:	e9 3e 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100f9a <isr19_entry_point>:
  100f9a:	fa                   	cli    
  100f9b:	6a 00                	push   $0x0
  100f9d:	6a 13                	push   $0x13
  100f9f:	e9 34 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fa4 <isr20_entry_point>:
  100fa4:	fa                   	cli    
  100fa5:	6a 00                	push   $0x0
  100fa7:	6a 14                	push   $0x14
  100fa9:	e9 2a 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fae <isr21_entry_point>:
  100fae:	fa                   	cli    
  100faf:	6a 15                	push   $0x15
  100fb1:	e9 22 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fb6 <isr22_entry_point>:
  100fb6:	fa                   	cli    
  100fb7:	6a 00                	push   $0x0
  100fb9:	6a 16                	push   $0x16
  100fbb:	e9 18 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fc0 <isr23_entry_point>:
  100fc0:	fa                   	cli    
  100fc1:	6a 00                	push   $0x0
  100fc3:	6a 17                	push   $0x17
  100fc5:	e9 0e 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fca <isr24_entry_point>:
  100fca:	fa                   	cli    
  100fcb:	6a 00                	push   $0x0
  100fcd:	6a 18                	push   $0x18
  100fcf:	e9 04 01 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fd4 <isr25_entry_point>:
  100fd4:	fa                   	cli    
  100fd5:	6a 00                	push   $0x0
  100fd7:	6a 19                	push   $0x19
  100fd9:	e9 fa 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fde <isr26_entry_point>:
  100fde:	fa                   	cli    
  100fdf:	6a 00                	push   $0x0
  100fe1:	6a 1a                	push   $0x1a
  100fe3:	e9 f0 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100fe8 <isr27_entry_point>:
  100fe8:	fa                   	cli    
  100fe9:	6a 00                	push   $0x0
  100feb:	6a 1b                	push   $0x1b
  100fed:	e9 e6 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100ff2 <isr28_entry_point>:
  100ff2:	fa                   	cli    
  100ff3:	6a 00                	push   $0x0
  100ff5:	6a 1c                	push   $0x1c
  100ff7:	e9 dc 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00100ffc <isr29_entry_point>:
  100ffc:	fa                   	cli    
  100ffd:	6a 00                	push   $0x0
  100fff:	6a 1d                	push   $0x1d
  101001:	e9 d2 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00101006 <isr30_entry_point>:
  101006:	fa                   	cli    
  101007:	6a 00                	push   $0x0
  101009:	6a 1e                	push   $0x1e
  10100b:	e9 c8 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00101010 <isr31_entry_point>:
  101010:	fa                   	cli    
  101011:	6a 00                	push   $0x0
  101013:	6a 1f                	push   $0x1f
  101015:	e9 be 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

0010101a <isr80_entry_point>:
  10101a:	fa                   	cli    
  10101b:	6a 00                	push   $0x0
  10101d:	6a 50                	push   $0x50
  10101f:	e9 b4 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00101024 <isr81_entry_point>:
  101024:	fa                   	cli    
  101025:	6a 00                	push   $0x0
  101027:	6a 51                	push   $0x51
  101029:	e9 aa 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

0010102e <isr82_entry_point>:
  10102e:	fa                   	cli    
  10102f:	6a 00                	push   $0x0
  101031:	6a 52                	push   $0x52
  101033:	e9 a0 00 00 00       	jmp    1010d8 <ll_int_dispatcher>

00101038 <irq0_entry_point>:
  101038:	fa                   	cli    
  101039:	6a 00                	push   $0x0
  10103b:	6a 20                	push   $0x20
  10103d:	e9 bf 00 00 00       	jmp    101101 <ll_irq_dispatcher>

00101042 <irq1_entry_point>:
  101042:	fa                   	cli    
  101043:	6a 00                	push   $0x0
  101045:	6a 21                	push   $0x21
  101047:	e9 b5 00 00 00       	jmp    101101 <ll_irq_dispatcher>

0010104c <irq2_entry_point>:
  10104c:	fa                   	cli    
  10104d:	6a 00                	push   $0x0
  10104f:	6a 22                	push   $0x22
  101051:	e9 ab 00 00 00       	jmp    101101 <ll_irq_dispatcher>

00101056 <irq3_entry_point>:
  101056:	fa                   	cli    
  101057:	6a 00                	push   $0x0
  101059:	6a 23                	push   $0x23
  10105b:	e9 a1 00 00 00       	jmp    101101 <ll_irq_dispatcher>

00101060 <irq4_entry_point>:
  101060:	fa                   	cli    
  101061:	6a 00                	push   $0x0
  101063:	6a 24                	push   $0x24
  101065:	e9 97 00 00 00       	jmp    101101 <ll_irq_dispatcher>

0010106a <irq5_entry_point>:
  10106a:	fa                   	cli    
  10106b:	6a 00                	push   $0x0
  10106d:	6a 25                	push   $0x25
  10106f:	e9 8d 00 00 00       	jmp    101101 <ll_irq_dispatcher>

00101074 <irq6_entry_point>:
  101074:	fa                   	cli    
  101075:	6a 00                	push   $0x0
  101077:	6a 26                	push   $0x26
  101079:	e9 83 00 00 00       	jmp    101101 <ll_irq_dispatcher>

0010107e <irq7_entry_point>:
  10107e:	fa                   	cli    
  10107f:	6a 00                	push   $0x0
  101081:	6a 27                	push   $0x27
  101083:	e9 79 00 00 00       	jmp    101101 <ll_irq_dispatcher>

00101088 <irq8_entry_point>:
  101088:	fa                   	cli    
  101089:	6a 00                	push   $0x0
  10108b:	6a 28                	push   $0x28
  10108d:	e9 6f 00 00 00       	jmp    101101 <ll_irq_dispatcher>

00101092 <irq9_entry_point>:
  101092:	fa                   	cli    
  101093:	6a 00                	push   $0x0
  101095:	6a 29                	push   $0x29
  101097:	e9 65 00 00 00       	jmp    101101 <ll_irq_dispatcher>

0010109c <irq10_entry_point>:
  10109c:	fa                   	cli    
  10109d:	6a 00                	push   $0x0
  10109f:	6a 2a                	push   $0x2a
  1010a1:	e9 5b 00 00 00       	jmp    101101 <ll_irq_dispatcher>

001010a6 <irq11_entry_point>:
  1010a6:	fa                   	cli    
  1010a7:	6a 00                	push   $0x0
  1010a9:	6a 2b                	push   $0x2b
  1010ab:	e9 51 00 00 00       	jmp    101101 <ll_irq_dispatcher>

001010b0 <irq12_entry_point>:
  1010b0:	fa                   	cli    
  1010b1:	6a 00                	push   $0x0
  1010b3:	6a 2c                	push   $0x2c
  1010b5:	e9 47 00 00 00       	jmp    101101 <ll_irq_dispatcher>

001010ba <irq13_entry_point>:
  1010ba:	fa                   	cli    
  1010bb:	6a 00                	push   $0x0
  1010bd:	6a 2d                	push   $0x2d
  1010bf:	e9 3d 00 00 00       	jmp    101101 <ll_irq_dispatcher>

001010c4 <irq14_entry_point>:
  1010c4:	fa                   	cli    
  1010c5:	6a 00                	push   $0x0
  1010c7:	6a 2e                	push   $0x2e
  1010c9:	e9 33 00 00 00       	jmp    101101 <ll_irq_dispatcher>

001010ce <irq15_entry_point>:
  1010ce:	fa                   	cli    
  1010cf:	6a 00                	push   $0x0
  1010d1:	6a 2f                	push   $0x2f
  1010d3:	e9 29 00 00 00       	jmp    101101 <ll_irq_dispatcher>

001010d8 <ll_int_dispatcher>:
  1010d8:	60                   	pusha  
  1010d9:	66 8c d8             	mov    %ds,%ax
  1010dc:	50                   	push   %eax
  1010dd:	66 b8 10 00          	mov    $0x10,%ax
  1010e1:	8e d8                	mov    %eax,%ds
  1010e3:	8e c0                	mov    %eax,%es
  1010e5:	8e e0                	mov    %eax,%fs
  1010e7:	8e e8                	mov    %eax,%gs
  1010e9:	e8 50 01 00 00       	call   10123e <hl_int_dispatcher>
  1010ee:	89 c1                	mov    %eax,%ecx
  1010f0:	58                   	pop    %eax
  1010f1:	8e d8                	mov    %eax,%ds
  1010f3:	8e c0                	mov    %eax,%es
  1010f5:	8e e0                	mov    %eax,%fs
  1010f7:	8e e8                	mov    %eax,%gs
  1010f9:	61                   	popa   
  1010fa:	83 c4 08             	add    $0x8,%esp
  1010fd:	fb                   	sti    
  1010fe:	89 c8                	mov    %ecx,%eax
  101100:	cf                   	iret   

00101101 <ll_irq_dispatcher>:
  101101:	60                   	pusha  
  101102:	66 8c d8             	mov    %ds,%ax
  101105:	50                   	push   %eax
  101106:	66 b8 10 00          	mov    $0x10,%ax
  10110a:	8e d8                	mov    %eax,%ds
  10110c:	8e c0                	mov    %eax,%es
  10110e:	8e e0                	mov    %eax,%fs
  101110:	8e e8                	mov    %eax,%gs
  101112:	e8 d7 02 00 00       	call   1013ee <hl_irq_dispatcher>
  101117:	58                   	pop    %eax
  101118:	8e d8                	mov    %eax,%ds
  10111a:	8e c0                	mov    %eax,%es
  10111c:	8e e0                	mov    %eax,%fs
  10111e:	8e e8                	mov    %eax,%gs
  101120:	61                   	popa   
  101121:	83 c4 08             	add    $0x8,%esp
  101124:	fb                   	sti    
  101125:	cf                   	iret   

00101126 <cpuid_get_model>:
  101126:	55                   	push   %ebp
  101127:	89 e5                	mov    %esp,%ebp
  101129:	53                   	push   %ebx
  10112a:	83 ec 10             	sub    $0x10,%esp
  10112d:	b8 00 00 00 00       	mov    $0x0,%eax
  101132:	0f a2                	cpuid  
  101134:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101137:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  10113a:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  10113d:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101140:	8b 45 08             	mov    0x8(%ebp),%eax
  101143:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101146:	89 10                	mov    %edx,(%eax)
  101148:	8b 45 0c             	mov    0xc(%ebp),%eax
  10114b:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10114e:	89 10                	mov    %edx,(%eax)
  101150:	8b 45 10             	mov    0x10(%ebp),%eax
  101153:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101156:	89 10                	mov    %edx,(%eax)
  101158:	90                   	nop
  101159:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10115c:	c9                   	leave  
  10115d:	c3                   	ret    

0010115e <cpuid_supported>:
  10115e:	9c                   	pushf  
  10115f:	9c                   	pushf  
  101160:	81 34 24 00 00 20 00 	xorl   $0x200000,(%esp)
  101167:	9d                   	popf   
  101168:	9c                   	pushf  
  101169:	58                   	pop    %eax
  10116a:	31 04 24             	xor    %eax,(%esp)
  10116d:	9d                   	popf   
  10116e:	25 00 00 20 00       	and    $0x200000,%eax
  101173:	c3                   	ret    

00101174 <enable_paging>:
  101174:	55                   	push   %ebp
  101175:	89 e5                	mov    %esp,%ebp
  101177:	0f 20 c0             	mov    %cr0,%eax
  10117a:	0d 00 00 00 80       	or     $0x80000000,%eax
  10117f:	0f 22 c0             	mov    %eax,%cr0
  101182:	89 ec                	mov    %ebp,%esp
  101184:	5d                   	pop    %ebp
  101185:	c3                   	ret    

00101186 <load_page_directory>:
  101186:	55                   	push   %ebp
  101187:	89 e5                	mov    %esp,%ebp
  101189:	8b 44 24 08          	mov    0x8(%esp),%eax
  10118d:	0f 22 d8             	mov    %eax,%cr3
  101190:	89 ec                	mov    %ebp,%esp
  101192:	5d                   	pop    %ebp
  101193:	c3                   	ret    

00101194 <copy_page_physical>:
  101194:	53                   	push   %ebx
  101195:	9c                   	pushf  
  101196:	fa                   	cli    
  101197:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  10119b:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  10119f:	0f 20 c2             	mov    %cr0,%edx
  1011a2:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  1011a8:	0f 22 c2             	mov    %edx,%cr0
  1011ab:	ba 00 04 00 00       	mov    $0x400,%edx

001011b0 <loop>:
  1011b0:	8b 03                	mov    (%ebx),%eax
  1011b2:	89 01                	mov    %eax,(%ecx)
  1011b4:	83 c3 04             	add    $0x4,%ebx
  1011b7:	83 c1 04             	add    $0x4,%ecx
  1011ba:	4a                   	dec    %edx
  1011bb:	75 f3                	jne    1011b0 <loop>
  1011bd:	0f 20 c2             	mov    %cr0,%edx
  1011c0:	81 ca 00 00 00 80    	or     $0x80000000,%edx
  1011c6:	0f 22 c2             	mov    %edx,%cr0
  1011c9:	9d                   	popf   
  1011ca:	5b                   	pop    %ebx
  1011cb:	c3                   	ret    

001011cc <flush_tlb>:
  1011cc:	0f 20 d8             	mov    %cr3,%eax
  1011cf:	0f 22 d8             	mov    %eax,%cr3

001011d2 <read_eip>:
  1011d2:	58                   	pop    %eax
  1011d3:	ff e0                	jmp    *%eax

001011d5 <context_switch>:
  1011d5:	55                   	push   %ebp
  1011d6:	89 e5                	mov    %esp,%ebp
  1011d8:	8b 44 24 08          	mov    0x8(%esp),%eax
  1011dc:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  1011e0:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  1011e4:	8b 54 24 14          	mov    0x14(%esp),%edx
  1011e8:	fa                   	cli    
  1011e9:	89 dc                	mov    %ebx,%esp
  1011eb:	89 cd                	mov    %ecx,%ebp
  1011ed:	0f 22 da             	mov    %edx,%cr3
  1011f0:	89 c3                	mov    %eax,%ebx
  1011f2:	b8 ed ad 10 7a       	mov    $0x7a10aded,%eax
  1011f7:	fb                   	sti    
  1011f8:	ff e3                	jmp    *%ebx

001011fa <enter_user_mode>:
  1011fa:	fa                   	cli    
  1011fb:	66 b8 23 00          	mov    $0x23,%ax
  1011ff:	8e d8                	mov    %eax,%ds
  101201:	8e c0                	mov    %eax,%es
  101203:	8e e0                	mov    %eax,%fs
  101205:	8e e8                	mov    %eax,%gs
  101207:	89 e0                	mov    %esp,%eax
  101209:	6a 23                	push   $0x23
  10120b:	50                   	push   %eax
  10120c:	9c                   	pushf  
  10120d:	58                   	pop    %eax
  10120e:	0d 00 02 00 00       	or     $0x200,%eax
  101213:	50                   	push   %eax
  101214:	6a 1b                	push   $0x1b
  101216:	68 a0 75 10 00       	push   $0x1075a0
  10121b:	cf                   	iret   

0010121c <panic>:
  10121c:	55                   	push   %ebp
  10121d:	89 e5                	mov    %esp,%ebp
  10121f:	8b 44 24 08          	mov    0x8(%esp),%eax
  101223:	50                   	push   %eax
  101224:	e8 ae f2 ff ff       	call   1004d7 <tty_putstring>
  101229:	fa                   	cli    
  10122a:	f4                   	hlt    

0010122b <isr_register>:
  10122b:	55                   	push   %ebp
  10122c:	89 e5                	mov    %esp,%ebp
  10122e:	8b 45 08             	mov    0x8(%ebp),%eax
  101231:	8b 55 0c             	mov    0xc(%ebp),%edx
  101234:	89 14 85 20 a0 10 00 	mov    %edx,0x10a020(,%eax,4)
  10123b:	90                   	nop
  10123c:	5d                   	pop    %ebp
  10123d:	c3                   	ret    

0010123e <hl_int_dispatcher>:
  10123e:	55                   	push   %ebp
  10123f:	89 e5                	mov    %esp,%ebp
  101241:	83 ec 18             	sub    $0x18,%esp
  101244:	8b 45 2c             	mov    0x2c(%ebp),%eax
  101247:	8b 04 85 20 a0 10 00 	mov    0x10a020(,%eax,4),%eax
  10124e:	85 c0                	test   %eax,%eax
  101250:	0f 84 a1 00 00 00    	je     1012f7 <hl_int_dispatcher+0xb9>
  101256:	8b 45 2c             	mov    0x2c(%ebp),%eax
  101259:	8b 04 85 20 a0 10 00 	mov    0x10a020(,%eax,4),%eax
  101260:	ff 75 44             	push   0x44(%ebp)
  101263:	ff 75 40             	push   0x40(%ebp)
  101266:	ff 75 3c             	push   0x3c(%ebp)
  101269:	ff 75 38             	push   0x38(%ebp)
  10126c:	ff 75 34             	push   0x34(%ebp)
  10126f:	ff 75 30             	push   0x30(%ebp)
  101272:	ff 75 2c             	push   0x2c(%ebp)
  101275:	ff 75 28             	push   0x28(%ebp)
  101278:	ff 75 24             	push   0x24(%ebp)
  10127b:	ff 75 20             	push   0x20(%ebp)
  10127e:	ff 75 1c             	push   0x1c(%ebp)
  101281:	ff 75 18             	push   0x18(%ebp)
  101284:	ff 75 14             	push   0x14(%ebp)
  101287:	ff 75 10             	push   0x10(%ebp)
  10128a:	ff 75 0c             	push   0xc(%ebp)
  10128d:	ff 75 08             	push   0x8(%ebp)
  101290:	ff d0                	call   *%eax
  101292:	83 c4 40             	add    $0x40,%esp
  101295:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101298:	83 ec 0c             	sub    $0xc,%esp
  10129b:	68 20 f0 10 00       	push   $0x10f020
  1012a0:	e8 95 63 00 00       	call   10763a <__redirect_printf__>
  1012a5:	83 c4 10             	add    $0x10,%esp
  1012a8:	83 ec 08             	sub    $0x8,%esp
  1012ab:	ff 75 f4             	push   -0xc(%ebp)
  1012ae:	68 0c 90 10 00       	push   $0x10900c
  1012b3:	e8 6f 6c 00 00       	call   107f27 <printf>
  1012b8:	83 c4 10             	add    $0x10,%esp
  1012bb:	83 ec 0c             	sub    $0xc,%esp
  1012be:	6a 00                	push   $0x0
  1012c0:	e8 75 63 00 00       	call   10763a <__redirect_printf__>
  1012c5:	83 c4 10             	add    $0x10,%esp
  1012c8:	83 ec 0c             	sub    $0xc,%esp
  1012cb:	68 20 f0 10 00       	push   $0x10f020
  1012d0:	e8 02 f2 ff ff       	call   1004d7 <tty_putstring>
  1012d5:	83 c4 10             	add    $0x10,%esp
  1012d8:	83 ec 04             	sub    $0x4,%esp
  1012db:	68 00 02 00 00       	push   $0x200
  1012e0:	6a 00                	push   $0x0
  1012e2:	68 20 f0 10 00       	push   $0x10f020
  1012e7:	e8 10 70 00 00       	call   1082fc <memset>
  1012ec:	83 c4 10             	add    $0x10,%esp
  1012ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012f2:	e9 f5 00 00 00       	jmp    1013ec <hl_int_dispatcher+0x1ae>
  1012f7:	83 ec 0c             	sub    $0xc,%esp
  1012fa:	68 80 04 13 00       	push   $0x130480
  1012ff:	e8 36 63 00 00       	call   10763a <__redirect_printf__>
  101304:	83 c4 10             	add    $0x10,%esp
  101307:	8b 45 2c             	mov    0x2c(%ebp),%eax
  10130a:	83 ec 08             	sub    $0x8,%esp
  10130d:	50                   	push   %eax
  10130e:	68 30 90 10 00       	push   $0x109030
  101313:	e8 0f 6c 00 00       	call   107f27 <printf>
  101318:	83 c4 10             	add    $0x10,%esp
  10131b:	83 ec 0c             	sub    $0xc,%esp
  10131e:	6a 00                	push   $0x0
  101320:	e8 15 63 00 00       	call   10763a <__redirect_printf__>
  101325:	83 c4 10             	add    $0x10,%esp
  101328:	83 ec 0c             	sub    $0xc,%esp
  10132b:	8d 45 ee             	lea    -0x12(%ebp),%eax
  10132e:	50                   	push   %eax
  10132f:	e8 92 16 00 00       	call   1029c6 <cmos_read_rtc>
  101334:	83 c4 10             	add    $0x10,%esp
  101337:	83 ec 04             	sub    $0x4,%esp
  10133a:	68 6c 08 13 00       	push   $0x13086c
  10133f:	83 ec 08             	sub    $0x8,%esp
  101342:	89 e0                	mov    %esp,%eax
  101344:	8b 55 ee             	mov    -0x12(%ebp),%edx
  101347:	89 10                	mov    %edx,(%eax)
  101349:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  10134d:	66 89 50 04          	mov    %dx,0x4(%eax)
  101351:	e8 9d 3b 00 00       	call   104ef3 <cmos_datetime_to_str>
  101356:	83 c4 10             	add    $0x10,%esp
  101359:	83 ec 0c             	sub    $0xc,%esp
  10135c:	68 80 00 13 00       	push   $0x130080
  101361:	e8 d4 62 00 00       	call   10763a <__redirect_printf__>
  101366:	83 c4 10             	add    $0x10,%esp
  101369:	83 ec 04             	sub    $0x4,%esp
  10136c:	68 80 04 13 00       	push   $0x130480
  101371:	68 6c 08 13 00       	push   $0x13086c
  101376:	68 6a 90 10 00       	push   $0x10906a
  10137b:	e8 a7 6b 00 00       	call   107f27 <printf>
  101380:	83 c4 10             	add    $0x10,%esp
  101383:	83 ec 0c             	sub    $0xc,%esp
  101386:	6a 00                	push   $0x0
  101388:	e8 ad 62 00 00       	call   10763a <__redirect_printf__>
  10138d:	83 c4 10             	add    $0x10,%esp
  101390:	83 ec 08             	sub    $0x8,%esp
  101393:	68 80 00 13 00       	push   $0x130080
  101398:	68 f8 03 00 00       	push   $0x3f8
  10139d:	e8 e8 11 00 00       	call   10258a <com_write>
  1013a2:	83 c4 10             	add    $0x10,%esp
  1013a5:	83 ec 04             	sub    $0x4,%esp
  1013a8:	68 00 04 00 00       	push   $0x400
  1013ad:	6a 00                	push   $0x0
  1013af:	68 80 00 13 00       	push   $0x130080
  1013b4:	e8 43 6f 00 00       	call   1082fc <memset>
  1013b9:	83 c4 10             	add    $0x10,%esp
  1013bc:	83 ec 04             	sub    $0x4,%esp
  1013bf:	68 ec 03 00 00       	push   $0x3ec
  1013c4:	6a 00                	push   $0x0
  1013c6:	68 80 04 13 00       	push   $0x130480
  1013cb:	e8 2c 6f 00 00       	call   1082fc <memset>
  1013d0:	83 c4 10             	add    $0x10,%esp
  1013d3:	83 ec 04             	sub    $0x4,%esp
  1013d6:	6a 14                	push   $0x14
  1013d8:	6a 00                	push   $0x0
  1013da:	68 6c 08 13 00       	push   $0x13086c
  1013df:	e8 18 6f 00 00       	call   1082fc <memset>
  1013e4:	83 c4 10             	add    $0x10,%esp
  1013e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1013ec:	c9                   	leave  
  1013ed:	c3                   	ret    

001013ee <hl_irq_dispatcher>:
  1013ee:	55                   	push   %ebp
  1013ef:	89 e5                	mov    %esp,%ebp
  1013f1:	83 ec 08             	sub    $0x8,%esp
  1013f4:	8b 45 2c             	mov    0x2c(%ebp),%eax
  1013f7:	83 f8 27             	cmp    $0x27,%eax
  1013fa:	76 05                	jbe    101401 <hl_irq_dispatcher+0x13>
  1013fc:	e8 f3 08 00 00       	call   101cf4 <pic_reset_slave>
  101401:	e8 c7 08 00 00       	call   101ccd <pic_reset_master>
  101406:	ff 75 44             	push   0x44(%ebp)
  101409:	ff 75 40             	push   0x40(%ebp)
  10140c:	ff 75 3c             	push   0x3c(%ebp)
  10140f:	ff 75 38             	push   0x38(%ebp)
  101412:	ff 75 34             	push   0x34(%ebp)
  101415:	ff 75 30             	push   0x30(%ebp)
  101418:	ff 75 2c             	push   0x2c(%ebp)
  10141b:	ff 75 28             	push   0x28(%ebp)
  10141e:	ff 75 24             	push   0x24(%ebp)
  101421:	ff 75 20             	push   0x20(%ebp)
  101424:	ff 75 1c             	push   0x1c(%ebp)
  101427:	ff 75 18             	push   0x18(%ebp)
  10142a:	ff 75 14             	push   0x14(%ebp)
  10142d:	ff 75 10             	push   0x10(%ebp)
  101430:	ff 75 0c             	push   0xc(%ebp)
  101433:	ff 75 08             	push   0x8(%ebp)
  101436:	e8 03 fe ff ff       	call   10123e <hl_int_dispatcher>
  10143b:	83 c4 40             	add    $0x40,%esp
  10143e:	c9                   	leave  
  10143f:	c3                   	ret    

00101440 <unhandled_interrupt>:
  101440:	55                   	push   %ebp
  101441:	89 e5                	mov    %esp,%ebp
  101443:	83 ec 18             	sub    $0x18,%esp
  101446:	83 ec 0c             	sub    $0xc,%esp
  101449:	68 80 04 13 00       	push   $0x130480
  10144e:	e8 e7 61 00 00       	call   10763a <__redirect_printf__>
  101453:	83 c4 10             	add    $0x10,%esp
  101456:	8b 45 2c             	mov    0x2c(%ebp),%eax
  101459:	83 ec 08             	sub    $0x8,%esp
  10145c:	50                   	push   %eax
  10145d:	68 70 90 10 00       	push   $0x109070
  101462:	e8 c0 6a 00 00       	call   107f27 <printf>
  101467:	83 c4 10             	add    $0x10,%esp
  10146a:	83 ec 0c             	sub    $0xc,%esp
  10146d:	6a 00                	push   $0x0
  10146f:	e8 c6 61 00 00       	call   10763a <__redirect_printf__>
  101474:	83 c4 10             	add    $0x10,%esp
  101477:	83 ec 0c             	sub    $0xc,%esp
  10147a:	8d 45 f2             	lea    -0xe(%ebp),%eax
  10147d:	50                   	push   %eax
  10147e:	e8 43 15 00 00       	call   1029c6 <cmos_read_rtc>
  101483:	83 c4 10             	add    $0x10,%esp
  101486:	83 ec 04             	sub    $0x4,%esp
  101489:	68 6c 08 13 00       	push   $0x13086c
  10148e:	83 ec 08             	sub    $0x8,%esp
  101491:	89 e0                	mov    %esp,%eax
  101493:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101496:	89 10                	mov    %edx,(%eax)
  101498:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  10149c:	66 89 50 04          	mov    %dx,0x4(%eax)
  1014a0:	e8 4e 3a 00 00       	call   104ef3 <cmos_datetime_to_str>
  1014a5:	83 c4 10             	add    $0x10,%esp
  1014a8:	83 ec 0c             	sub    $0xc,%esp
  1014ab:	68 80 00 13 00       	push   $0x130080
  1014b0:	e8 85 61 00 00       	call   10763a <__redirect_printf__>
  1014b5:	83 c4 10             	add    $0x10,%esp
  1014b8:	83 ec 04             	sub    $0x4,%esp
  1014bb:	68 80 04 13 00       	push   $0x130480
  1014c0:	68 6c 08 13 00       	push   $0x13086c
  1014c5:	68 6a 90 10 00       	push   $0x10906a
  1014ca:	e8 58 6a 00 00       	call   107f27 <printf>
  1014cf:	83 c4 10             	add    $0x10,%esp
  1014d2:	83 ec 0c             	sub    $0xc,%esp
  1014d5:	6a 00                	push   $0x0
  1014d7:	e8 5e 61 00 00       	call   10763a <__redirect_printf__>
  1014dc:	83 c4 10             	add    $0x10,%esp
  1014df:	83 ec 08             	sub    $0x8,%esp
  1014e2:	68 80 00 13 00       	push   $0x130080
  1014e7:	68 f8 03 00 00       	push   $0x3f8
  1014ec:	e8 99 10 00 00       	call   10258a <com_write>
  1014f1:	83 c4 10             	add    $0x10,%esp
  1014f4:	83 ec 04             	sub    $0x4,%esp
  1014f7:	68 00 04 00 00       	push   $0x400
  1014fc:	6a 00                	push   $0x0
  1014fe:	68 80 00 13 00       	push   $0x130080
  101503:	e8 f4 6d 00 00       	call   1082fc <memset>
  101508:	83 c4 10             	add    $0x10,%esp
  10150b:	83 ec 04             	sub    $0x4,%esp
  10150e:	68 ec 03 00 00       	push   $0x3ec
  101513:	6a 00                	push   $0x0
  101515:	68 80 04 13 00       	push   $0x130480
  10151a:	e8 dd 6d 00 00       	call   1082fc <memset>
  10151f:	83 c4 10             	add    $0x10,%esp
  101522:	83 ec 04             	sub    $0x4,%esp
  101525:	6a 14                	push   $0x14
  101527:	6a 00                	push   $0x0
  101529:	68 6c 08 13 00       	push   $0x13086c
  10152e:	e8 c9 6d 00 00       	call   1082fc <memset>
  101533:	83 c4 10             	add    $0x10,%esp
  101536:	b8 00 00 00 00       	mov    $0x0,%eax
  10153b:	c9                   	leave  
  10153c:	c3                   	ret    

0010153d <divide_by_zero_exception>:
  10153d:	55                   	push   %ebp
  10153e:	89 e5                	mov    %esp,%ebp
  101540:	83 ec 08             	sub    $0x8,%esp
  101543:	83 ec 0c             	sub    $0xc,%esp
  101546:	68 8c 90 10 00       	push   $0x10908c
  10154b:	e8 cc fc ff ff       	call   10121c <panic>

00101550 <undef_opcode_exception>:
  101550:	55                   	push   %ebp
  101551:	89 e5                	mov    %esp,%ebp
  101553:	83 ec 08             	sub    $0x8,%esp
  101556:	83 ec 0c             	sub    $0xc,%esp
  101559:	68 b4 90 10 00       	push   $0x1090b4
  10155e:	e8 b9 fc ff ff       	call   10121c <panic>

00101563 <gpf_exception>:
  101563:	55                   	push   %ebp
  101564:	89 e5                	mov    %esp,%ebp
  101566:	83 ec 08             	sub    $0x8,%esp
  101569:	83 ec 0c             	sub    $0xc,%esp
  10156c:	68 d8 90 10 00       	push   $0x1090d8
  101571:	e8 a6 fc ff ff       	call   10121c <panic>

00101576 <page_fault_exception>:
  101576:	55                   	push   %ebp
  101577:	89 e5                	mov    %esp,%ebp
  101579:	83 ec 28             	sub    $0x28,%esp
  10157c:	0f 20 d0             	mov    %cr2,%eax
  10157f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101582:	8b 45 30             	mov    0x30(%ebp),%eax
  101585:	83 e0 01             	and    $0x1,%eax
  101588:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10158b:	8b 45 30             	mov    0x30(%ebp),%eax
  10158e:	d1 e8                	shr    %eax
  101590:	83 e0 01             	and    $0x1,%eax
  101593:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101596:	8b 45 30             	mov    0x30(%ebp),%eax
  101599:	c1 e8 02             	shr    $0x2,%eax
  10159c:	83 e0 01             	and    $0x1,%eax
  10159f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1015a2:	8b 45 30             	mov    0x30(%ebp),%eax
  1015a5:	c1 e8 03             	shr    $0x3,%eax
  1015a8:	83 e0 01             	and    $0x1,%eax
  1015ab:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1015ae:	8b 45 30             	mov    0x30(%ebp),%eax
  1015b1:	c1 e8 04             	shr    $0x4,%eax
  1015b4:	83 e0 01             	and    $0x1,%eax
  1015b7:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1015ba:	83 ec 0c             	sub    $0xc,%esp
  1015bd:	68 20 f0 10 00       	push   $0x10f020
  1015c2:	e8 73 60 00 00       	call   10763a <__redirect_printf__>
  1015c7:	83 c4 10             	add    $0x10,%esp
  1015ca:	83 ec 04             	sub    $0x4,%esp
  1015cd:	ff 75 f4             	push   -0xc(%ebp)
  1015d0:	ff 75 e0             	push   -0x20(%ebp)
  1015d3:	ff 75 e4             	push   -0x1c(%ebp)
  1015d6:	ff 75 e8             	push   -0x18(%ebp)
  1015d9:	ff 75 ec             	push   -0x14(%ebp)
  1015dc:	ff 75 f0             	push   -0x10(%ebp)
  1015df:	68 04 91 10 00       	push   $0x109104
  1015e4:	e8 3e 69 00 00       	call   107f27 <printf>
  1015e9:	83 c4 20             	add    $0x20,%esp
  1015ec:	83 ec 0c             	sub    $0xc,%esp
  1015ef:	6a 00                	push   $0x0
  1015f1:	e8 44 60 00 00       	call   10763a <__redirect_printf__>
  1015f6:	83 c4 10             	add    $0x10,%esp
  1015f9:	83 ec 0c             	sub    $0xc,%esp
  1015fc:	68 20 f0 10 00       	push   $0x10f020
  101601:	e8 d1 ee ff ff       	call   1004d7 <tty_putstring>
  101606:	83 c4 10             	add    $0x10,%esp
  101609:	83 ec 04             	sub    $0x4,%esp
  10160c:	68 00 02 00 00       	push   $0x200
  101611:	6a 00                	push   $0x0
  101613:	68 20 f0 10 00       	push   $0x10f020
  101618:	e8 df 6c 00 00       	call   1082fc <memset>
  10161d:	83 c4 10             	add    $0x10,%esp
  101620:	83 ec 0c             	sub    $0xc,%esp
  101623:	68 5a 91 10 00       	push   $0x10915a
  101628:	e8 ef fb ff ff       	call   10121c <panic>

0010162d <sys_write>:
  10162d:	55                   	push   %ebp
  10162e:	89 e5                	mov    %esp,%ebp
  101630:	83 ec 38             	sub    $0x38,%esp
  101633:	8b 45 28             	mov    0x28(%ebp),%eax
  101636:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101639:	8b 45 1c             	mov    0x1c(%ebp),%eax
  10163c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10163f:	8b 45 24             	mov    0x24(%ebp),%eax
  101642:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101645:	8b 45 20             	mov    0x20(%ebp),%eax
  101648:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10164b:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  10164f:	0f 84 83 01 00 00    	je     1017d8 <sys_write+0x1ab>
  101655:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  101659:	0f 87 bc 01 00 00    	ja     10181b <sys_write+0x1ee>
  10165f:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
  101663:	0f 84 2e 01 00 00    	je     101797 <sys_write+0x16a>
  101669:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
  10166d:	0f 87 a8 01 00 00    	ja     10181b <sys_write+0x1ee>
  101673:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  101677:	74 0f                	je     101688 <sys_write+0x5b>
  101679:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
  10167d:	0f 84 d3 00 00 00    	je     101756 <sys_write+0x129>
  101683:	e9 93 01 00 00       	jmp    10181b <sys_write+0x1ee>
  101688:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10168b:	89 45 cc             	mov    %eax,-0x34(%ebp)
  10168e:	83 ec 0c             	sub    $0xc,%esp
  101691:	68 20 f0 10 00       	push   $0x10f020
  101696:	e8 9f 5f 00 00       	call   10763a <__redirect_printf__>
  10169b:	83 c4 10             	add    $0x10,%esp
  10169e:	83 ec 0c             	sub    $0xc,%esp
  1016a1:	ff 75 cc             	push   -0x34(%ebp)
  1016a4:	e8 7e 68 00 00       	call   107f27 <printf>
  1016a9:	83 c4 10             	add    $0x10,%esp
  1016ac:	83 ec 0c             	sub    $0xc,%esp
  1016af:	6a 00                	push   $0x0
  1016b1:	e8 84 5f 00 00       	call   10763a <__redirect_printf__>
  1016b6:	83 c4 10             	add    $0x10,%esp
  1016b9:	83 ec 0c             	sub    $0xc,%esp
  1016bc:	68 20 f0 10 00       	push   $0x10f020
  1016c1:	e8 11 ee ff ff       	call   1004d7 <tty_putstring>
  1016c6:	83 c4 10             	add    $0x10,%esp
  1016c9:	83 ec 04             	sub    $0x4,%esp
  1016cc:	68 00 02 00 00       	push   $0x200
  1016d1:	6a 00                	push   $0x0
  1016d3:	68 20 f0 10 00       	push   $0x10f020
  1016d8:	e8 1f 6c 00 00       	call   1082fc <memset>
  1016dd:	83 c4 10             	add    $0x10,%esp
  1016e0:	83 ec 0c             	sub    $0xc,%esp
  1016e3:	68 20 f0 10 00       	push   $0x10f020
  1016e8:	e8 4d 5f 00 00       	call   10763a <__redirect_printf__>
  1016ed:	83 c4 10             	add    $0x10,%esp
  1016f0:	83 ec 0c             	sub    $0xc,%esp
  1016f3:	ff 75 cc             	push   -0x34(%ebp)
  1016f6:	e8 34 6c 00 00       	call   10832f <strlen>
  1016fb:	83 c4 10             	add    $0x10,%esp
  1016fe:	83 ec 08             	sub    $0x8,%esp
  101701:	50                   	push   %eax
  101702:	68 75 91 10 00       	push   $0x109175
  101707:	e8 1b 68 00 00       	call   107f27 <printf>
  10170c:	83 c4 10             	add    $0x10,%esp
  10170f:	83 ec 0c             	sub    $0xc,%esp
  101712:	6a 00                	push   $0x0
  101714:	e8 21 5f 00 00       	call   10763a <__redirect_printf__>
  101719:	83 c4 10             	add    $0x10,%esp
  10171c:	83 ec 0c             	sub    $0xc,%esp
  10171f:	68 20 f0 10 00       	push   $0x10f020
  101724:	e8 ae ed ff ff       	call   1004d7 <tty_putstring>
  101729:	83 c4 10             	add    $0x10,%esp
  10172c:	83 ec 04             	sub    $0x4,%esp
  10172f:	68 00 02 00 00       	push   $0x200
  101734:	6a 00                	push   $0x0
  101736:	68 20 f0 10 00       	push   $0x10f020
  10173b:	e8 bc 6b 00 00       	call   1082fc <memset>
  101740:	83 c4 10             	add    $0x10,%esp
  101743:	83 ec 0c             	sub    $0xc,%esp
  101746:	ff 75 cc             	push   -0x34(%ebp)
  101749:	e8 e1 6b 00 00       	call   10832f <strlen>
  10174e:	83 c4 10             	add    $0x10,%esp
  101751:	e9 cb 00 00 00       	jmp    101821 <sys_write+0x1f4>
  101756:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101759:	89 45 d0             	mov    %eax,-0x30(%ebp)
  10175c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101763:	eb 22                	jmp    101787 <sys_write+0x15a>
  101765:	8b 55 d0             	mov    -0x30(%ebp),%edx
  101768:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10176b:	01 d0                	add    %edx,%eax
  10176d:	0f b6 00             	movzbl (%eax),%eax
  101770:	0f b6 d0             	movzbl %al,%edx
  101773:	8b 45 dc             	mov    -0x24(%ebp),%eax
  101776:	83 ec 08             	sub    $0x8,%esp
  101779:	52                   	push   %edx
  10177a:	50                   	push   %eax
  10177b:	e8 56 ef ff ff       	call   1006d6 <outb>
  101780:	83 c4 10             	add    $0x10,%esp
  101783:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  101787:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10178a:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  10178d:	72 d6                	jb     101765 <sys_write+0x138>
  10178f:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101792:	e9 8a 00 00 00       	jmp    101821 <sys_write+0x1f4>
  101797:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10179a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10179d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1017a4:	eb 25                	jmp    1017cb <sys_write+0x19e>
  1017a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1017a9:	8d 14 00             	lea    (%eax,%eax,1),%edx
  1017ac:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1017af:	01 d0                	add    %edx,%eax
  1017b1:	0f b7 00             	movzwl (%eax),%eax
  1017b4:	0f b7 d0             	movzwl %ax,%edx
  1017b7:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1017ba:	83 ec 08             	sub    $0x8,%esp
  1017bd:	52                   	push   %edx
  1017be:	50                   	push   %eax
  1017bf:	e8 3c ef ff ff       	call   100700 <outw>
  1017c4:	83 c4 10             	add    $0x10,%esp
  1017c7:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1017cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1017ce:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  1017d1:	72 d3                	jb     1017a6 <sys_write+0x179>
  1017d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1017d6:	eb 49                	jmp    101821 <sys_write+0x1f4>
  1017d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1017db:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1017de:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1017e5:	eb 27                	jmp    10180e <sys_write+0x1e1>
  1017e7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1017ea:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1017f1:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1017f4:	01 d0                	add    %edx,%eax
  1017f6:	8b 00                	mov    (%eax),%eax
  1017f8:	89 c2                	mov    %eax,%edx
  1017fa:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1017fd:	83 ec 08             	sub    $0x8,%esp
  101800:	52                   	push   %edx
  101801:	50                   	push   %eax
  101802:	e8 22 ef ff ff       	call   100729 <outl>
  101807:	83 c4 10             	add    $0x10,%esp
  10180a:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10180e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101811:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  101814:	72 d1                	jb     1017e7 <sys_write+0x1ba>
  101816:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101819:	eb 06                	jmp    101821 <sys_write+0x1f4>
  10181b:	90                   	nop
  10181c:	b8 00 00 00 00       	mov    $0x0,%eax
  101821:	c9                   	leave  
  101822:	c3                   	ret    

00101823 <sys_read>:
  101823:	55                   	push   %ebp
  101824:	89 e5                	mov    %esp,%ebp
  101826:	83 ec 38             	sub    $0x38,%esp
  101829:	8b 45 28             	mov    0x28(%ebp),%eax
  10182c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10182f:	8b 45 1c             	mov    0x1c(%ebp),%eax
  101832:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101835:	8b 45 24             	mov    0x24(%ebp),%eax
  101838:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10183b:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
  10183f:	74 15                	je     101856 <sys_read+0x33>
  101841:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
  101845:	0f 84 2b 01 00 00    	je     101976 <sys_read+0x153>
  10184b:	90                   	nop
  10184c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  101851:	e9 3b 02 00 00       	jmp    101a91 <sys_read+0x26e>
  101856:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101859:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10185c:	83 ec 04             	sub    $0x4,%esp
  10185f:	ff 75 ec             	push   -0x14(%ebp)
  101862:	ff 75 e0             	push   -0x20(%ebp)
  101865:	68 f8 03 00 00       	push   $0x3f8
  10186a:	e8 41 0e 00 00       	call   1026b0 <com_read>
  10186f:	83 c4 10             	add    $0x10,%esp
  101872:	89 45 dc             	mov    %eax,-0x24(%ebp)
  101875:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
  101879:	0f 84 ef 00 00 00    	je     10196e <sys_read+0x14b>
  10187f:	83 ec 0c             	sub    $0xc,%esp
  101882:	68 80 04 13 00       	push   $0x130480
  101887:	e8 ae 5d 00 00       	call   10763a <__redirect_printf__>
  10188c:	83 c4 10             	add    $0x10,%esp
  10188f:	83 ec 08             	sub    $0x8,%esp
  101892:	ff 75 e0             	push   -0x20(%ebp)
  101895:	68 90 91 10 00       	push   $0x109190
  10189a:	e8 88 66 00 00       	call   107f27 <printf>
  10189f:	83 c4 10             	add    $0x10,%esp
  1018a2:	83 ec 0c             	sub    $0xc,%esp
  1018a5:	6a 00                	push   $0x0
  1018a7:	e8 8e 5d 00 00       	call   10763a <__redirect_printf__>
  1018ac:	83 c4 10             	add    $0x10,%esp
  1018af:	83 ec 0c             	sub    $0xc,%esp
  1018b2:	8d 45 d6             	lea    -0x2a(%ebp),%eax
  1018b5:	50                   	push   %eax
  1018b6:	e8 0b 11 00 00       	call   1029c6 <cmos_read_rtc>
  1018bb:	83 c4 10             	add    $0x10,%esp
  1018be:	83 ec 04             	sub    $0x4,%esp
  1018c1:	68 6c 08 13 00       	push   $0x13086c
  1018c6:	83 ec 08             	sub    $0x8,%esp
  1018c9:	89 e0                	mov    %esp,%eax
  1018cb:	8b 55 d6             	mov    -0x2a(%ebp),%edx
  1018ce:	89 10                	mov    %edx,(%eax)
  1018d0:	0f b7 55 da          	movzwl -0x26(%ebp),%edx
  1018d4:	66 89 50 04          	mov    %dx,0x4(%eax)
  1018d8:	e8 16 36 00 00       	call   104ef3 <cmos_datetime_to_str>
  1018dd:	83 c4 10             	add    $0x10,%esp
  1018e0:	83 ec 0c             	sub    $0xc,%esp
  1018e3:	68 80 00 13 00       	push   $0x130080
  1018e8:	e8 4d 5d 00 00       	call   10763a <__redirect_printf__>
  1018ed:	83 c4 10             	add    $0x10,%esp
  1018f0:	83 ec 04             	sub    $0x4,%esp
  1018f3:	68 80 04 13 00       	push   $0x130480
  1018f8:	68 6c 08 13 00       	push   $0x13086c
  1018fd:	68 9e 91 10 00       	push   $0x10919e
  101902:	e8 20 66 00 00       	call   107f27 <printf>
  101907:	83 c4 10             	add    $0x10,%esp
  10190a:	83 ec 0c             	sub    $0xc,%esp
  10190d:	6a 00                	push   $0x0
  10190f:	e8 26 5d 00 00       	call   10763a <__redirect_printf__>
  101914:	83 c4 10             	add    $0x10,%esp
  101917:	83 ec 08             	sub    $0x8,%esp
  10191a:	68 80 00 13 00       	push   $0x130080
  10191f:	68 f8 03 00 00       	push   $0x3f8
  101924:	e8 61 0c 00 00       	call   10258a <com_write>
  101929:	83 c4 10             	add    $0x10,%esp
  10192c:	83 ec 04             	sub    $0x4,%esp
  10192f:	68 00 04 00 00       	push   $0x400
  101934:	6a 00                	push   $0x0
  101936:	68 80 00 13 00       	push   $0x130080
  10193b:	e8 bc 69 00 00       	call   1082fc <memset>
  101940:	83 c4 10             	add    $0x10,%esp
  101943:	83 ec 04             	sub    $0x4,%esp
  101946:	68 ec 03 00 00       	push   $0x3ec
  10194b:	6a 00                	push   $0x0
  10194d:	68 80 04 13 00       	push   $0x130480
  101952:	e8 a5 69 00 00       	call   1082fc <memset>
  101957:	83 c4 10             	add    $0x10,%esp
  10195a:	83 ec 04             	sub    $0x4,%esp
  10195d:	6a 14                	push   $0x14
  10195f:	6a 00                	push   $0x0
  101961:	68 6c 08 13 00       	push   $0x13086c
  101966:	e8 91 69 00 00       	call   1082fc <memset>
  10196b:	83 c4 10             	add    $0x10,%esp
  10196e:	8b 45 dc             	mov    -0x24(%ebp),%eax
  101971:	e9 1b 01 00 00       	jmp    101a91 <sys_read+0x26e>
  101976:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101979:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10197c:	83 ec 04             	sub    $0x4,%esp
  10197f:	ff 75 ec             	push   -0x14(%ebp)
  101982:	ff 75 e8             	push   -0x18(%ebp)
  101985:	68 f8 02 00 00       	push   $0x2f8
  10198a:	e8 21 0d 00 00       	call   1026b0 <com_read>
  10198f:	83 c4 10             	add    $0x10,%esp
  101992:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  101995:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  101999:	0f 84 ef 00 00 00    	je     101a8e <sys_read+0x26b>
  10199f:	83 ec 0c             	sub    $0xc,%esp
  1019a2:	68 80 04 13 00       	push   $0x130480
  1019a7:	e8 8e 5c 00 00       	call   10763a <__redirect_printf__>
  1019ac:	83 c4 10             	add    $0x10,%esp
  1019af:	83 ec 08             	sub    $0x8,%esp
  1019b2:	ff 75 e8             	push   -0x18(%ebp)
  1019b5:	68 a4 91 10 00       	push   $0x1091a4
  1019ba:	e8 68 65 00 00       	call   107f27 <printf>
  1019bf:	83 c4 10             	add    $0x10,%esp
  1019c2:	83 ec 0c             	sub    $0xc,%esp
  1019c5:	6a 00                	push   $0x0
  1019c7:	e8 6e 5c 00 00       	call   10763a <__redirect_printf__>
  1019cc:	83 c4 10             	add    $0x10,%esp
  1019cf:	83 ec 0c             	sub    $0xc,%esp
  1019d2:	8d 45 d0             	lea    -0x30(%ebp),%eax
  1019d5:	50                   	push   %eax
  1019d6:	e8 eb 0f 00 00       	call   1029c6 <cmos_read_rtc>
  1019db:	83 c4 10             	add    $0x10,%esp
  1019de:	83 ec 04             	sub    $0x4,%esp
  1019e1:	68 6c 08 13 00       	push   $0x13086c
  1019e6:	83 ec 08             	sub    $0x8,%esp
  1019e9:	89 e0                	mov    %esp,%eax
  1019eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  1019ee:	89 10                	mov    %edx,(%eax)
  1019f0:	0f b7 55 d4          	movzwl -0x2c(%ebp),%edx
  1019f4:	66 89 50 04          	mov    %dx,0x4(%eax)
  1019f8:	e8 f6 34 00 00       	call   104ef3 <cmos_datetime_to_str>
  1019fd:	83 c4 10             	add    $0x10,%esp
  101a00:	83 ec 0c             	sub    $0xc,%esp
  101a03:	68 80 00 13 00       	push   $0x130080
  101a08:	e8 2d 5c 00 00       	call   10763a <__redirect_printf__>
  101a0d:	83 c4 10             	add    $0x10,%esp
  101a10:	83 ec 04             	sub    $0x4,%esp
  101a13:	68 80 04 13 00       	push   $0x130480
  101a18:	68 6c 08 13 00       	push   $0x13086c
  101a1d:	68 9e 91 10 00       	push   $0x10919e
  101a22:	e8 00 65 00 00       	call   107f27 <printf>
  101a27:	83 c4 10             	add    $0x10,%esp
  101a2a:	83 ec 0c             	sub    $0xc,%esp
  101a2d:	6a 00                	push   $0x0
  101a2f:	e8 06 5c 00 00       	call   10763a <__redirect_printf__>
  101a34:	83 c4 10             	add    $0x10,%esp
  101a37:	83 ec 08             	sub    $0x8,%esp
  101a3a:	68 80 00 13 00       	push   $0x130080
  101a3f:	68 f8 03 00 00       	push   $0x3f8
  101a44:	e8 41 0b 00 00       	call   10258a <com_write>
  101a49:	83 c4 10             	add    $0x10,%esp
  101a4c:	83 ec 04             	sub    $0x4,%esp
  101a4f:	68 00 04 00 00       	push   $0x400
  101a54:	6a 00                	push   $0x0
  101a56:	68 80 00 13 00       	push   $0x130080
  101a5b:	e8 9c 68 00 00       	call   1082fc <memset>
  101a60:	83 c4 10             	add    $0x10,%esp
  101a63:	83 ec 04             	sub    $0x4,%esp
  101a66:	68 ec 03 00 00       	push   $0x3ec
  101a6b:	6a 00                	push   $0x0
  101a6d:	68 80 04 13 00       	push   $0x130480
  101a72:	e8 85 68 00 00       	call   1082fc <memset>
  101a77:	83 c4 10             	add    $0x10,%esp
  101a7a:	83 ec 04             	sub    $0x4,%esp
  101a7d:	6a 14                	push   $0x14
  101a7f:	6a 00                	push   $0x0
  101a81:	68 6c 08 13 00       	push   $0x13086c
  101a86:	e8 71 68 00 00       	call   1082fc <memset>
  101a8b:	83 c4 10             	add    $0x10,%esp
  101a8e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101a91:	c9                   	leave  
  101a92:	c3                   	ret    

00101a93 <sys_fork>:
  101a93:	55                   	push   %ebp
  101a94:	89 e5                	mov    %esp,%ebp
  101a96:	83 ec 08             	sub    $0x8,%esp
  101a99:	83 ec 0c             	sub    $0xc,%esp
  101a9c:	68 20 f0 10 00       	push   $0x10f020
  101aa1:	e8 94 5b 00 00       	call   10763a <__redirect_printf__>
  101aa6:	83 c4 10             	add    $0x10,%esp
  101aa9:	83 ec 0c             	sub    $0xc,%esp
  101aac:	68 b2 91 10 00       	push   $0x1091b2
  101ab1:	e8 71 64 00 00       	call   107f27 <printf>
  101ab6:	83 c4 10             	add    $0x10,%esp
  101ab9:	83 ec 0c             	sub    $0xc,%esp
  101abc:	6a 00                	push   $0x0
  101abe:	e8 77 5b 00 00       	call   10763a <__redirect_printf__>
  101ac3:	83 c4 10             	add    $0x10,%esp
  101ac6:	83 ec 0c             	sub    $0xc,%esp
  101ac9:	68 20 f0 10 00       	push   $0x10f020
  101ace:	e8 04 ea ff ff       	call   1004d7 <tty_putstring>
  101ad3:	83 c4 10             	add    $0x10,%esp
  101ad6:	83 ec 04             	sub    $0x4,%esp
  101ad9:	68 00 02 00 00       	push   $0x200
  101ade:	6a 00                	push   $0x0
  101ae0:	68 20 f0 10 00       	push   $0x10f020
  101ae5:	e8 12 68 00 00       	call   1082fc <memset>
  101aea:	83 c4 10             	add    $0x10,%esp
  101aed:	e8 5e 50 00 00       	call   106b50 <tasking_fork>
  101af2:	c9                   	leave  
  101af3:	c3                   	ret    

00101af4 <syscall_init>:
  101af4:	55                   	push   %ebp
  101af5:	89 e5                	mov    %esp,%ebp
  101af7:	83 ec 18             	sub    $0x18,%esp
  101afa:	83 ec 08             	sub    $0x8,%esp
  101afd:	68 23 18 10 00       	push   $0x101823
  101b02:	6a 50                	push   $0x50
  101b04:	e8 22 f7 ff ff       	call   10122b <isr_register>
  101b09:	83 c4 10             	add    $0x10,%esp
  101b0c:	83 ec 08             	sub    $0x8,%esp
  101b0f:	68 2d 16 10 00       	push   $0x10162d
  101b14:	6a 51                	push   $0x51
  101b16:	e8 10 f7 ff ff       	call   10122b <isr_register>
  101b1b:	83 c4 10             	add    $0x10,%esp
  101b1e:	83 ec 08             	sub    $0x8,%esp
  101b21:	68 93 1a 10 00       	push   $0x101a93
  101b26:	6a 52                	push   $0x52
  101b28:	e8 fe f6 ff ff       	call   10122b <isr_register>
  101b2d:	83 c4 10             	add    $0x10,%esp
  101b30:	83 ec 0c             	sub    $0xc,%esp
  101b33:	68 80 04 13 00       	push   $0x130480
  101b38:	e8 fd 5a 00 00       	call   10763a <__redirect_printf__>
  101b3d:	83 c4 10             	add    $0x10,%esp
  101b40:	83 ec 0c             	sub    $0xc,%esp
  101b43:	68 be 91 10 00       	push   $0x1091be
  101b48:	e8 da 63 00 00       	call   107f27 <printf>
  101b4d:	83 c4 10             	add    $0x10,%esp
  101b50:	83 ec 0c             	sub    $0xc,%esp
  101b53:	6a 00                	push   $0x0
  101b55:	e8 e0 5a 00 00       	call   10763a <__redirect_printf__>
  101b5a:	83 c4 10             	add    $0x10,%esp
  101b5d:	83 ec 0c             	sub    $0xc,%esp
  101b60:	8d 45 f2             	lea    -0xe(%ebp),%eax
  101b63:	50                   	push   %eax
  101b64:	e8 5d 0e 00 00       	call   1029c6 <cmos_read_rtc>
  101b69:	83 c4 10             	add    $0x10,%esp
  101b6c:	83 ec 04             	sub    $0x4,%esp
  101b6f:	68 6c 08 13 00       	push   $0x13086c
  101b74:	83 ec 08             	sub    $0x8,%esp
  101b77:	89 e0                	mov    %esp,%eax
  101b79:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101b7c:	89 10                	mov    %edx,(%eax)
  101b7e:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  101b82:	66 89 50 04          	mov    %dx,0x4(%eax)
  101b86:	e8 68 33 00 00       	call   104ef3 <cmos_datetime_to_str>
  101b8b:	83 c4 10             	add    $0x10,%esp
  101b8e:	83 ec 0c             	sub    $0xc,%esp
  101b91:	68 80 00 13 00       	push   $0x130080
  101b96:	e8 9f 5a 00 00       	call   10763a <__redirect_printf__>
  101b9b:	83 c4 10             	add    $0x10,%esp
  101b9e:	83 ec 04             	sub    $0x4,%esp
  101ba1:	68 80 04 13 00       	push   $0x130480
  101ba6:	68 6c 08 13 00       	push   $0x13086c
  101bab:	68 ce 91 10 00       	push   $0x1091ce
  101bb0:	e8 72 63 00 00       	call   107f27 <printf>
  101bb5:	83 c4 10             	add    $0x10,%esp
  101bb8:	83 ec 0c             	sub    $0xc,%esp
  101bbb:	6a 00                	push   $0x0
  101bbd:	e8 78 5a 00 00       	call   10763a <__redirect_printf__>
  101bc2:	83 c4 10             	add    $0x10,%esp
  101bc5:	83 ec 08             	sub    $0x8,%esp
  101bc8:	68 80 00 13 00       	push   $0x130080
  101bcd:	68 f8 03 00 00       	push   $0x3f8
  101bd2:	e8 b3 09 00 00       	call   10258a <com_write>
  101bd7:	83 c4 10             	add    $0x10,%esp
  101bda:	83 ec 04             	sub    $0x4,%esp
  101bdd:	68 00 04 00 00       	push   $0x400
  101be2:	6a 00                	push   $0x0
  101be4:	68 80 00 13 00       	push   $0x130080
  101be9:	e8 0e 67 00 00       	call   1082fc <memset>
  101bee:	83 c4 10             	add    $0x10,%esp
  101bf1:	83 ec 04             	sub    $0x4,%esp
  101bf4:	68 ec 03 00 00       	push   $0x3ec
  101bf9:	6a 00                	push   $0x0
  101bfb:	68 80 04 13 00       	push   $0x130480
  101c00:	e8 f7 66 00 00       	call   1082fc <memset>
  101c05:	83 c4 10             	add    $0x10,%esp
  101c08:	83 ec 04             	sub    $0x4,%esp
  101c0b:	6a 14                	push   $0x14
  101c0d:	6a 00                	push   $0x0
  101c0f:	68 6c 08 13 00       	push   $0x13086c
  101c14:	e8 e3 66 00 00       	call   1082fc <memset>
  101c19:	83 c4 10             	add    $0x10,%esp
  101c1c:	90                   	nop
  101c1d:	c9                   	leave  
  101c1e:	c3                   	ret    

00101c1f <pic_remap>:
  101c1f:	55                   	push   %ebp
  101c20:	89 e5                	mov    %esp,%ebp
  101c22:	83 ec 08             	sub    $0x8,%esp
  101c25:	83 ec 08             	sub    $0x8,%esp
  101c28:	6a 11                	push   $0x11
  101c2a:	6a 20                	push   $0x20
  101c2c:	e8 a5 ea ff ff       	call   1006d6 <outb>
  101c31:	83 c4 10             	add    $0x10,%esp
  101c34:	83 ec 08             	sub    $0x8,%esp
  101c37:	6a 11                	push   $0x11
  101c39:	68 a0 00 00 00       	push   $0xa0
  101c3e:	e8 93 ea ff ff       	call   1006d6 <outb>
  101c43:	83 c4 10             	add    $0x10,%esp
  101c46:	83 ec 08             	sub    $0x8,%esp
  101c49:	6a 20                	push   $0x20
  101c4b:	6a 21                	push   $0x21
  101c4d:	e8 84 ea ff ff       	call   1006d6 <outb>
  101c52:	83 c4 10             	add    $0x10,%esp
  101c55:	83 ec 08             	sub    $0x8,%esp
  101c58:	6a 28                	push   $0x28
  101c5a:	68 a1 00 00 00       	push   $0xa1
  101c5f:	e8 72 ea ff ff       	call   1006d6 <outb>
  101c64:	83 c4 10             	add    $0x10,%esp
  101c67:	83 ec 08             	sub    $0x8,%esp
  101c6a:	6a 04                	push   $0x4
  101c6c:	6a 21                	push   $0x21
  101c6e:	e8 63 ea ff ff       	call   1006d6 <outb>
  101c73:	83 c4 10             	add    $0x10,%esp
  101c76:	83 ec 08             	sub    $0x8,%esp
  101c79:	6a 02                	push   $0x2
  101c7b:	68 a1 00 00 00       	push   $0xa1
  101c80:	e8 51 ea ff ff       	call   1006d6 <outb>
  101c85:	83 c4 10             	add    $0x10,%esp
  101c88:	83 ec 08             	sub    $0x8,%esp
  101c8b:	6a 01                	push   $0x1
  101c8d:	6a 21                	push   $0x21
  101c8f:	e8 42 ea ff ff       	call   1006d6 <outb>
  101c94:	83 c4 10             	add    $0x10,%esp
  101c97:	83 ec 08             	sub    $0x8,%esp
  101c9a:	6a 01                	push   $0x1
  101c9c:	68 a1 00 00 00       	push   $0xa1
  101ca1:	e8 30 ea ff ff       	call   1006d6 <outb>
  101ca6:	83 c4 10             	add    $0x10,%esp
  101ca9:	83 ec 08             	sub    $0x8,%esp
  101cac:	6a 00                	push   $0x0
  101cae:	6a 21                	push   $0x21
  101cb0:	e8 21 ea ff ff       	call   1006d6 <outb>
  101cb5:	83 c4 10             	add    $0x10,%esp
  101cb8:	83 ec 08             	sub    $0x8,%esp
  101cbb:	6a 00                	push   $0x0
  101cbd:	68 a1 00 00 00       	push   $0xa1
  101cc2:	e8 0f ea ff ff       	call   1006d6 <outb>
  101cc7:	83 c4 10             	add    $0x10,%esp
  101cca:	90                   	nop
  101ccb:	c9                   	leave  
  101ccc:	c3                   	ret    

00101ccd <pic_reset_master>:
  101ccd:	55                   	push   %ebp
  101cce:	89 e5                	mov    %esp,%ebp
  101cd0:	83 ec 08             	sub    $0x8,%esp
  101cd3:	83 ec 08             	sub    $0x8,%esp
  101cd6:	6a 20                	push   $0x20
  101cd8:	6a 20                	push   $0x20
  101cda:	e8 f7 e9 ff ff       	call   1006d6 <outb>
  101cdf:	83 c4 10             	add    $0x10,%esp
  101ce2:	83 ec 08             	sub    $0x8,%esp
  101ce5:	6a 20                	push   $0x20
  101ce7:	6a 21                	push   $0x21
  101ce9:	e8 e8 e9 ff ff       	call   1006d6 <outb>
  101cee:	83 c4 10             	add    $0x10,%esp
  101cf1:	90                   	nop
  101cf2:	c9                   	leave  
  101cf3:	c3                   	ret    

00101cf4 <pic_reset_slave>:
  101cf4:	55                   	push   %ebp
  101cf5:	89 e5                	mov    %esp,%ebp
  101cf7:	83 ec 08             	sub    $0x8,%esp
  101cfa:	83 ec 08             	sub    $0x8,%esp
  101cfd:	6a 20                	push   $0x20
  101cff:	68 a0 00 00 00       	push   $0xa0
  101d04:	e8 cd e9 ff ff       	call   1006d6 <outb>
  101d09:	83 c4 10             	add    $0x10,%esp
  101d0c:	83 ec 08             	sub    $0x8,%esp
  101d0f:	6a 20                	push   $0x20
  101d11:	68 a1 00 00 00       	push   $0xa1
  101d16:	e8 bb e9 ff ff       	call   1006d6 <outb>
  101d1b:	83 c4 10             	add    $0x10,%esp
  101d1e:	90                   	nop
  101d1f:	c9                   	leave  
  101d20:	c3                   	ret    

00101d21 <ps2_controller_init>:
  101d21:	55                   	push   %ebp
  101d22:	89 e5                	mov    %esp,%ebp
  101d24:	83 ec 28             	sub    $0x28,%esp
  101d27:	c6 05 f7 fa 10 00 00 	movb   $0x0,0x10faf7
  101d2e:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  101d35:	e8 7e 1e 00 00       	call   103bb8 <acpi_get_boot_arch_flags>
  101d3a:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  101d3e:	83 ec 0c             	sub    $0xc,%esp
  101d41:	68 80 04 13 00       	push   $0x130480
  101d46:	e8 ef 58 00 00       	call   10763a <__redirect_printf__>
  101d4b:	83 c4 10             	add    $0x10,%esp
  101d4e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  101d52:	83 ec 08             	sub    $0x8,%esp
  101d55:	50                   	push   %eax
  101d56:	68 d4 91 10 00       	push   $0x1091d4
  101d5b:	e8 c7 61 00 00       	call   107f27 <printf>
  101d60:	83 c4 10             	add    $0x10,%esp
  101d63:	83 ec 0c             	sub    $0xc,%esp
  101d66:	6a 00                	push   $0x0
  101d68:	e8 cd 58 00 00       	call   10763a <__redirect_printf__>
  101d6d:	83 c4 10             	add    $0x10,%esp
  101d70:	83 ec 0c             	sub    $0xc,%esp
  101d73:	8d 45 eb             	lea    -0x15(%ebp),%eax
  101d76:	50                   	push   %eax
  101d77:	e8 4a 0c 00 00       	call   1029c6 <cmos_read_rtc>
  101d7c:	83 c4 10             	add    $0x10,%esp
  101d7f:	83 ec 04             	sub    $0x4,%esp
  101d82:	68 6c 08 13 00       	push   $0x13086c
  101d87:	83 ec 08             	sub    $0x8,%esp
  101d8a:	89 e0                	mov    %esp,%eax
  101d8c:	8b 55 eb             	mov    -0x15(%ebp),%edx
  101d8f:	89 10                	mov    %edx,(%eax)
  101d91:	0f b7 55 ef          	movzwl -0x11(%ebp),%edx
  101d95:	66 89 50 04          	mov    %dx,0x4(%eax)
  101d99:	e8 55 31 00 00       	call   104ef3 <cmos_datetime_to_str>
  101d9e:	83 c4 10             	add    $0x10,%esp
  101da1:	83 ec 0c             	sub    $0xc,%esp
  101da4:	68 80 00 13 00       	push   $0x130080
  101da9:	e8 8c 58 00 00       	call   10763a <__redirect_printf__>
  101dae:	83 c4 10             	add    $0x10,%esp
  101db1:	83 ec 04             	sub    $0x4,%esp
  101db4:	68 80 04 13 00       	push   $0x130480
  101db9:	68 6c 08 13 00       	push   $0x13086c
  101dbe:	68 ff 91 10 00       	push   $0x1091ff
  101dc3:	e8 5f 61 00 00       	call   107f27 <printf>
  101dc8:	83 c4 10             	add    $0x10,%esp
  101dcb:	83 ec 0c             	sub    $0xc,%esp
  101dce:	6a 00                	push   $0x0
  101dd0:	e8 65 58 00 00       	call   10763a <__redirect_printf__>
  101dd5:	83 c4 10             	add    $0x10,%esp
  101dd8:	83 ec 08             	sub    $0x8,%esp
  101ddb:	68 80 00 13 00       	push   $0x130080
  101de0:	68 f8 03 00 00       	push   $0x3f8
  101de5:	e8 a0 07 00 00       	call   10258a <com_write>
  101dea:	83 c4 10             	add    $0x10,%esp
  101ded:	83 ec 04             	sub    $0x4,%esp
  101df0:	68 00 04 00 00       	push   $0x400
  101df5:	6a 00                	push   $0x0
  101df7:	68 80 00 13 00       	push   $0x130080
  101dfc:	e8 fb 64 00 00       	call   1082fc <memset>
  101e01:	83 c4 10             	add    $0x10,%esp
  101e04:	83 ec 04             	sub    $0x4,%esp
  101e07:	68 ec 03 00 00       	push   $0x3ec
  101e0c:	6a 00                	push   $0x0
  101e0e:	68 80 04 13 00       	push   $0x130480
  101e13:	e8 e4 64 00 00       	call   1082fc <memset>
  101e18:	83 c4 10             	add    $0x10,%esp
  101e1b:	83 ec 04             	sub    $0x4,%esp
  101e1e:	6a 14                	push   $0x14
  101e20:	6a 00                	push   $0x0
  101e22:	68 6c 08 13 00       	push   $0x13086c
  101e27:	e8 d0 64 00 00       	call   1082fc <memset>
  101e2c:	83 c4 10             	add    $0x10,%esp
  101e2f:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  101e33:	66 d1 e8             	shr    %ax
  101e36:	0f b7 c0             	movzwl %ax,%eax
  101e39:	83 e0 01             	and    $0x1,%eax
  101e3c:	85 c0                	test   %eax,%eax
  101e3e:	0f 84 d2 04 00 00    	je     102316 <ps2_controller_init+0x5f5>
  101e44:	83 ec 08             	sub    $0x8,%esp
  101e47:	68 ad 00 00 00       	push   $0xad
  101e4c:	6a 64                	push   $0x64
  101e4e:	e8 83 e8 ff ff       	call   1006d6 <outb>
  101e53:	83 c4 10             	add    $0x10,%esp
  101e56:	83 ec 08             	sub    $0x8,%esp
  101e59:	68 a7 00 00 00       	push   $0xa7
  101e5e:	6a 64                	push   $0x64
  101e60:	e8 71 e8 ff ff       	call   1006d6 <outb>
  101e65:	83 c4 10             	add    $0x10,%esp
  101e68:	83 ec 0c             	sub    $0xc,%esp
  101e6b:	6a 60                	push   $0x60
  101e6d:	e8 4b e8 ff ff       	call   1006bd <inb>
  101e72:	83 c4 10             	add    $0x10,%esp
  101e75:	83 ec 08             	sub    $0x8,%esp
  101e78:	6a 20                	push   $0x20
  101e7a:	6a 64                	push   $0x64
  101e7c:	e8 55 e8 ff ff       	call   1006d6 <outb>
  101e81:	83 c4 10             	add    $0x10,%esp
  101e84:	83 ec 08             	sub    $0x8,%esp
  101e87:	6a 60                	push   $0x60
  101e89:	6a 64                	push   $0x64
  101e8b:	e8 46 e8 ff ff       	call   1006d6 <outb>
  101e90:	83 c4 10             	add    $0x10,%esp
  101e93:	83 ec 0c             	sub    $0xc,%esp
  101e96:	6a 60                	push   $0x60
  101e98:	e8 20 e8 ff ff       	call   1006bd <inb>
  101e9d:	83 c4 10             	add    $0x10,%esp
  101ea0:	88 45 f5             	mov    %al,-0xb(%ebp)
  101ea3:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
  101ea7:	c0 e8 02             	shr    $0x2,%al
  101eaa:	83 e0 01             	and    $0x1,%eax
  101ead:	a2 f6 fa 10 00       	mov    %al,0x10faf6
  101eb2:	83 ec 0c             	sub    $0xc,%esp
  101eb5:	68 80 04 13 00       	push   $0x130480
  101eba:	e8 7b 57 00 00       	call   10763a <__redirect_printf__>
  101ebf:	83 c4 10             	add    $0x10,%esp
  101ec2:	0f b6 05 f6 fa 10 00 	movzbl 0x10faf6,%eax
  101ec9:	0f b6 c0             	movzbl %al,%eax
  101ecc:	83 ec 08             	sub    $0x8,%esp
  101ecf:	50                   	push   %eax
  101ed0:	68 08 92 10 00       	push   $0x109208
  101ed5:	e8 4d 60 00 00       	call   107f27 <printf>
  101eda:	83 c4 10             	add    $0x10,%esp
  101edd:	83 ec 0c             	sub    $0xc,%esp
  101ee0:	6a 00                	push   $0x0
  101ee2:	e8 53 57 00 00       	call   10763a <__redirect_printf__>
  101ee7:	83 c4 10             	add    $0x10,%esp
  101eea:	83 ec 0c             	sub    $0xc,%esp
  101eed:	8d 45 e5             	lea    -0x1b(%ebp),%eax
  101ef0:	50                   	push   %eax
  101ef1:	e8 d0 0a 00 00       	call   1029c6 <cmos_read_rtc>
  101ef6:	83 c4 10             	add    $0x10,%esp
  101ef9:	83 ec 04             	sub    $0x4,%esp
  101efc:	68 6c 08 13 00       	push   $0x13086c
  101f01:	83 ec 08             	sub    $0x8,%esp
  101f04:	89 e0                	mov    %esp,%eax
  101f06:	8b 55 e5             	mov    -0x1b(%ebp),%edx
  101f09:	89 10                	mov    %edx,(%eax)
  101f0b:	0f b7 55 e9          	movzwl -0x17(%ebp),%edx
  101f0f:	66 89 50 04          	mov    %dx,0x4(%eax)
  101f13:	e8 db 2f 00 00       	call   104ef3 <cmos_datetime_to_str>
  101f18:	83 c4 10             	add    $0x10,%esp
  101f1b:	83 ec 0c             	sub    $0xc,%esp
  101f1e:	68 80 00 13 00       	push   $0x130080
  101f23:	e8 12 57 00 00       	call   10763a <__redirect_printf__>
  101f28:	83 c4 10             	add    $0x10,%esp
  101f2b:	83 ec 04             	sub    $0x4,%esp
  101f2e:	68 80 04 13 00       	push   $0x130480
  101f33:	68 6c 08 13 00       	push   $0x13086c
  101f38:	68 ff 91 10 00       	push   $0x1091ff
  101f3d:	e8 e5 5f 00 00       	call   107f27 <printf>
  101f42:	83 c4 10             	add    $0x10,%esp
  101f45:	83 ec 0c             	sub    $0xc,%esp
  101f48:	6a 00                	push   $0x0
  101f4a:	e8 eb 56 00 00       	call   10763a <__redirect_printf__>
  101f4f:	83 c4 10             	add    $0x10,%esp
  101f52:	83 ec 08             	sub    $0x8,%esp
  101f55:	68 80 00 13 00       	push   $0x130080
  101f5a:	68 f8 03 00 00       	push   $0x3f8
  101f5f:	e8 26 06 00 00       	call   10258a <com_write>
  101f64:	83 c4 10             	add    $0x10,%esp
  101f67:	83 ec 04             	sub    $0x4,%esp
  101f6a:	68 00 04 00 00       	push   $0x400
  101f6f:	6a 00                	push   $0x0
  101f71:	68 80 00 13 00       	push   $0x130080
  101f76:	e8 81 63 00 00       	call   1082fc <memset>
  101f7b:	83 c4 10             	add    $0x10,%esp
  101f7e:	83 ec 04             	sub    $0x4,%esp
  101f81:	68 ec 03 00 00       	push   $0x3ec
  101f86:	6a 00                	push   $0x0
  101f88:	68 80 04 13 00       	push   $0x130480
  101f8d:	e8 6a 63 00 00       	call   1082fc <memset>
  101f92:	83 c4 10             	add    $0x10,%esp
  101f95:	83 ec 04             	sub    $0x4,%esp
  101f98:	6a 14                	push   $0x14
  101f9a:	6a 00                	push   $0x0
  101f9c:	68 6c 08 13 00       	push   $0x13086c
  101fa1:	e8 56 63 00 00       	call   1082fc <memset>
  101fa6:	83 c4 10             	add    $0x10,%esp
  101fa9:	83 ec 08             	sub    $0x8,%esp
  101fac:	68 aa 00 00 00       	push   $0xaa
  101fb1:	6a 64                	push   $0x64
  101fb3:	e8 1e e7 ff ff       	call   1006d6 <outb>
  101fb8:	83 c4 10             	add    $0x10,%esp
  101fbb:	83 ec 0c             	sub    $0xc,%esp
  101fbe:	6a 60                	push   $0x60
  101fc0:	e8 f8 e6 ff ff       	call   1006bd <inb>
  101fc5:	83 c4 10             	add    $0x10,%esp
  101fc8:	88 45 f4             	mov    %al,-0xc(%ebp)
  101fcb:	80 7d f4 55          	cmpb   $0x55,-0xc(%ebp)
  101fcf:	0f 85 45 02 00 00    	jne    10221a <ps2_controller_init+0x4f9>
  101fd5:	83 ec 0c             	sub    $0xc,%esp
  101fd8:	68 80 04 13 00       	push   $0x130480
  101fdd:	e8 58 56 00 00       	call   10763a <__redirect_printf__>
  101fe2:	83 c4 10             	add    $0x10,%esp
  101fe5:	83 ec 0c             	sub    $0xc,%esp
  101fe8:	68 34 92 10 00       	push   $0x109234
  101fed:	e8 35 5f 00 00       	call   107f27 <printf>
  101ff2:	83 c4 10             	add    $0x10,%esp
  101ff5:	83 ec 0c             	sub    $0xc,%esp
  101ff8:	6a 00                	push   $0x0
  101ffa:	e8 3b 56 00 00       	call   10763a <__redirect_printf__>
  101fff:	83 c4 10             	add    $0x10,%esp
  102002:	83 ec 0c             	sub    $0xc,%esp
  102005:	8d 45 df             	lea    -0x21(%ebp),%eax
  102008:	50                   	push   %eax
  102009:	e8 b8 09 00 00       	call   1029c6 <cmos_read_rtc>
  10200e:	83 c4 10             	add    $0x10,%esp
  102011:	83 ec 04             	sub    $0x4,%esp
  102014:	68 6c 08 13 00       	push   $0x13086c
  102019:	83 ec 08             	sub    $0x8,%esp
  10201c:	89 e0                	mov    %esp,%eax
  10201e:	8b 55 df             	mov    -0x21(%ebp),%edx
  102021:	89 10                	mov    %edx,(%eax)
  102023:	0f b7 55 e3          	movzwl -0x1d(%ebp),%edx
  102027:	66 89 50 04          	mov    %dx,0x4(%eax)
  10202b:	e8 c3 2e 00 00       	call   104ef3 <cmos_datetime_to_str>
  102030:	83 c4 10             	add    $0x10,%esp
  102033:	83 ec 0c             	sub    $0xc,%esp
  102036:	68 80 00 13 00       	push   $0x130080
  10203b:	e8 fa 55 00 00       	call   10763a <__redirect_printf__>
  102040:	83 c4 10             	add    $0x10,%esp
  102043:	83 ec 04             	sub    $0x4,%esp
  102046:	68 80 04 13 00       	push   $0x130480
  10204b:	68 6c 08 13 00       	push   $0x13086c
  102050:	68 ff 91 10 00       	push   $0x1091ff
  102055:	e8 cd 5e 00 00       	call   107f27 <printf>
  10205a:	83 c4 10             	add    $0x10,%esp
  10205d:	83 ec 0c             	sub    $0xc,%esp
  102060:	6a 00                	push   $0x0
  102062:	e8 d3 55 00 00       	call   10763a <__redirect_printf__>
  102067:	83 c4 10             	add    $0x10,%esp
  10206a:	83 ec 08             	sub    $0x8,%esp
  10206d:	68 80 00 13 00       	push   $0x130080
  102072:	68 f8 03 00 00       	push   $0x3f8
  102077:	e8 0e 05 00 00       	call   10258a <com_write>
  10207c:	83 c4 10             	add    $0x10,%esp
  10207f:	83 ec 04             	sub    $0x4,%esp
  102082:	68 00 04 00 00       	push   $0x400
  102087:	6a 00                	push   $0x0
  102089:	68 80 00 13 00       	push   $0x130080
  10208e:	e8 69 62 00 00       	call   1082fc <memset>
  102093:	83 c4 10             	add    $0x10,%esp
  102096:	83 ec 04             	sub    $0x4,%esp
  102099:	68 ec 03 00 00       	push   $0x3ec
  10209e:	6a 00                	push   $0x0
  1020a0:	68 80 04 13 00       	push   $0x130480
  1020a5:	e8 52 62 00 00       	call   1082fc <memset>
  1020aa:	83 c4 10             	add    $0x10,%esp
  1020ad:	83 ec 04             	sub    $0x4,%esp
  1020b0:	6a 14                	push   $0x14
  1020b2:	6a 00                	push   $0x0
  1020b4:	68 6c 08 13 00       	push   $0x13086c
  1020b9:	e8 3e 62 00 00       	call   1082fc <memset>
  1020be:	83 c4 10             	add    $0x10,%esp
  1020c1:	0f b6 05 f6 fa 10 00 	movzbl 0x10faf6,%eax
  1020c8:	84 c0                	test   %al,%al
  1020ca:	0f 84 ea 00 00 00    	je     1021ba <ps2_controller_init+0x499>
  1020d0:	83 ec 08             	sub    $0x8,%esp
  1020d3:	68 ab 00 00 00       	push   $0xab
  1020d8:	6a 64                	push   $0x64
  1020da:	e8 f7 e5 ff ff       	call   1006d6 <outb>
  1020df:	83 c4 10             	add    $0x10,%esp
  1020e2:	83 ec 0c             	sub    $0xc,%esp
  1020e5:	6a 60                	push   $0x60
  1020e7:	e8 d1 e5 ff ff       	call   1006bd <inb>
  1020ec:	83 c4 10             	add    $0x10,%esp
  1020ef:	88 45 f2             	mov    %al,-0xe(%ebp)
  1020f2:	83 ec 08             	sub    $0x8,%esp
  1020f5:	68 a9 00 00 00       	push   $0xa9
  1020fa:	6a 64                	push   $0x64
  1020fc:	e8 d5 e5 ff ff       	call   1006d6 <outb>
  102101:	83 c4 10             	add    $0x10,%esp
  102104:	83 ec 0c             	sub    $0xc,%esp
  102107:	6a 60                	push   $0x60
  102109:	e8 af e5 ff ff       	call   1006bd <inb>
  10210e:	83 c4 10             	add    $0x10,%esp
  102111:	88 45 f1             	mov    %al,-0xf(%ebp)
  102114:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  102118:	75 3d                	jne    102157 <ps2_controller_init+0x436>
  10211a:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  10211e:	75 37                	jne    102157 <ps2_controller_init+0x436>
  102120:	83 ec 08             	sub    $0x8,%esp
  102123:	68 ae 00 00 00       	push   $0xae
  102128:	6a 64                	push   $0x64
  10212a:	e8 a7 e5 ff ff       	call   1006d6 <outb>
  10212f:	83 c4 10             	add    $0x10,%esp
  102132:	83 ec 08             	sub    $0x8,%esp
  102135:	68 a8 00 00 00       	push   $0xa8
  10213a:	6a 64                	push   $0x64
  10213c:	e8 95 e5 ff ff       	call   1006d6 <outb>
  102141:	83 c4 10             	add    $0x10,%esp
  102144:	c6 05 f6 fa 10 00 01 	movb   $0x1,0x10faf6
  10214b:	c6 05 f7 fa 10 00 01 	movb   $0x1,0x10faf7
  102152:	e9 bf 01 00 00       	jmp    102316 <ps2_controller_init+0x5f5>
  102157:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  10215b:	75 2b                	jne    102188 <ps2_controller_init+0x467>
  10215d:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  102161:	74 25                	je     102188 <ps2_controller_init+0x467>
  102163:	83 ec 08             	sub    $0x8,%esp
  102166:	68 ae 00 00 00       	push   $0xae
  10216b:	6a 64                	push   $0x64
  10216d:	e8 64 e5 ff ff       	call   1006d6 <outb>
  102172:	83 c4 10             	add    $0x10,%esp
  102175:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  10217c:	c6 05 f7 fa 10 00 01 	movb   $0x1,0x10faf7
  102183:	e9 8e 01 00 00       	jmp    102316 <ps2_controller_init+0x5f5>
  102188:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  10218c:	74 19                	je     1021a7 <ps2_controller_init+0x486>
  10218e:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  102192:	75 13                	jne    1021a7 <ps2_controller_init+0x486>
  102194:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  10219b:	c6 05 f7 fa 10 00 00 	movb   $0x0,0x10faf7
  1021a2:	e9 6f 01 00 00       	jmp    102316 <ps2_controller_init+0x5f5>
  1021a7:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  1021ae:	c6 05 f7 fa 10 00 00 	movb   $0x0,0x10faf7
  1021b5:	e9 5c 01 00 00       	jmp    102316 <ps2_controller_init+0x5f5>
  1021ba:	83 ec 08             	sub    $0x8,%esp
  1021bd:	68 ab 00 00 00       	push   $0xab
  1021c2:	6a 64                	push   $0x64
  1021c4:	e8 0d e5 ff ff       	call   1006d6 <outb>
  1021c9:	83 c4 10             	add    $0x10,%esp
  1021cc:	83 ec 0c             	sub    $0xc,%esp
  1021cf:	6a 60                	push   $0x60
  1021d1:	e8 e7 e4 ff ff       	call   1006bd <inb>
  1021d6:	83 c4 10             	add    $0x10,%esp
  1021d9:	88 45 f3             	mov    %al,-0xd(%ebp)
  1021dc:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  1021e0:	74 13                	je     1021f5 <ps2_controller_init+0x4d4>
  1021e2:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  1021e9:	c6 05 f7 fa 10 00 00 	movb   $0x0,0x10faf7
  1021f0:	e9 21 01 00 00       	jmp    102316 <ps2_controller_init+0x5f5>
  1021f5:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  1021fc:	c6 05 f7 fa 10 00 01 	movb   $0x1,0x10faf7
  102203:	83 ec 08             	sub    $0x8,%esp
  102206:	68 ae 00 00 00       	push   $0xae
  10220b:	6a 64                	push   $0x64
  10220d:	e8 c4 e4 ff ff       	call   1006d6 <outb>
  102212:	83 c4 10             	add    $0x10,%esp
  102215:	e9 fc 00 00 00       	jmp    102316 <ps2_controller_init+0x5f5>
  10221a:	c6 05 f6 fa 10 00 00 	movb   $0x0,0x10faf6
  102221:	c6 05 f7 fa 10 00 00 	movb   $0x0,0x10faf7
  102228:	83 ec 0c             	sub    $0xc,%esp
  10222b:	68 80 04 13 00       	push   $0x130480
  102230:	e8 05 54 00 00       	call   10763a <__redirect_printf__>
  102235:	83 c4 10             	add    $0x10,%esp
  102238:	83 ec 0c             	sub    $0xc,%esp
  10223b:	68 58 92 10 00       	push   $0x109258
  102240:	e8 e2 5c 00 00       	call   107f27 <printf>
  102245:	83 c4 10             	add    $0x10,%esp
  102248:	83 ec 0c             	sub    $0xc,%esp
  10224b:	6a 00                	push   $0x0
  10224d:	e8 e8 53 00 00       	call   10763a <__redirect_printf__>
  102252:	83 c4 10             	add    $0x10,%esp
  102255:	83 ec 0c             	sub    $0xc,%esp
  102258:	8d 45 d9             	lea    -0x27(%ebp),%eax
  10225b:	50                   	push   %eax
  10225c:	e8 65 07 00 00       	call   1029c6 <cmos_read_rtc>
  102261:	83 c4 10             	add    $0x10,%esp
  102264:	83 ec 04             	sub    $0x4,%esp
  102267:	68 6c 08 13 00       	push   $0x13086c
  10226c:	83 ec 08             	sub    $0x8,%esp
  10226f:	89 e0                	mov    %esp,%eax
  102271:	8b 55 d9             	mov    -0x27(%ebp),%edx
  102274:	89 10                	mov    %edx,(%eax)
  102276:	0f b7 55 dd          	movzwl -0x23(%ebp),%edx
  10227a:	66 89 50 04          	mov    %dx,0x4(%eax)
  10227e:	e8 70 2c 00 00       	call   104ef3 <cmos_datetime_to_str>
  102283:	83 c4 10             	add    $0x10,%esp
  102286:	83 ec 0c             	sub    $0xc,%esp
  102289:	68 80 00 13 00       	push   $0x130080
  10228e:	e8 a7 53 00 00       	call   10763a <__redirect_printf__>
  102293:	83 c4 10             	add    $0x10,%esp
  102296:	83 ec 04             	sub    $0x4,%esp
  102299:	68 80 04 13 00       	push   $0x130480
  10229e:	68 6c 08 13 00       	push   $0x13086c
  1022a3:	68 ff 91 10 00       	push   $0x1091ff
  1022a8:	e8 7a 5c 00 00       	call   107f27 <printf>
  1022ad:	83 c4 10             	add    $0x10,%esp
  1022b0:	83 ec 0c             	sub    $0xc,%esp
  1022b3:	6a 00                	push   $0x0
  1022b5:	e8 80 53 00 00       	call   10763a <__redirect_printf__>
  1022ba:	83 c4 10             	add    $0x10,%esp
  1022bd:	83 ec 08             	sub    $0x8,%esp
  1022c0:	68 80 00 13 00       	push   $0x130080
  1022c5:	68 f8 03 00 00       	push   $0x3f8
  1022ca:	e8 bb 02 00 00       	call   10258a <com_write>
  1022cf:	83 c4 10             	add    $0x10,%esp
  1022d2:	83 ec 04             	sub    $0x4,%esp
  1022d5:	68 00 04 00 00       	push   $0x400
  1022da:	6a 00                	push   $0x0
  1022dc:	68 80 00 13 00       	push   $0x130080
  1022e1:	e8 16 60 00 00       	call   1082fc <memset>
  1022e6:	83 c4 10             	add    $0x10,%esp
  1022e9:	83 ec 04             	sub    $0x4,%esp
  1022ec:	68 ec 03 00 00       	push   $0x3ec
  1022f1:	6a 00                	push   $0x0
  1022f3:	68 80 04 13 00       	push   $0x130480
  1022f8:	e8 ff 5f 00 00       	call   1082fc <memset>
  1022fd:	83 c4 10             	add    $0x10,%esp
  102300:	83 ec 04             	sub    $0x4,%esp
  102303:	6a 14                	push   $0x14
  102305:	6a 00                	push   $0x0
  102307:	68 6c 08 13 00       	push   $0x13086c
  10230c:	e8 eb 5f 00 00       	call   1082fc <memset>
  102311:	83 c4 10             	add    $0x10,%esp
  102314:	eb 00                	jmp    102316 <ps2_controller_init+0x5f5>
  102316:	90                   	nop
  102317:	c9                   	leave  
  102318:	c3                   	ret    

00102319 <ps2_is_dual_channel>:
  102319:	55                   	push   %ebp
  10231a:	89 e5                	mov    %esp,%ebp
  10231c:	0f b6 05 f6 fa 10 00 	movzbl 0x10faf6,%eax
  102323:	5d                   	pop    %ebp
  102324:	c3                   	ret    

00102325 <ps2_is_present>:
  102325:	55                   	push   %ebp
  102326:	89 e5                	mov    %esp,%ebp
  102328:	0f b6 05 f7 fa 10 00 	movzbl 0x10faf7,%eax
  10232f:	5d                   	pop    %ebp
  102330:	c3                   	ret    

00102331 <COM_SET_BAUD>:
  102331:	55                   	push   %ebp
  102332:	89 e5                	mov    %esp,%ebp
  102334:	83 ec 10             	sub    $0x10,%esp
  102337:	b8 00 c2 01 00       	mov    $0x1c200,%eax
  10233c:	99                   	cltd   
  10233d:	f7 7d 08             	idivl  0x8(%ebp)
  102340:	88 45 ff             	mov    %al,-0x1(%ebp)
  102343:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  102347:	c9                   	leave  
  102348:	c3                   	ret    

00102349 <COM_SET_BPS>:
  102349:	55                   	push   %ebp
  10234a:	89 e5                	mov    %esp,%ebp
  10234c:	83 ec 1c             	sub    $0x1c,%esp
  10234f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102352:	8b 55 0c             	mov    0xc(%ebp),%edx
  102355:	8b 45 10             	mov    0x10(%ebp),%eax
  102358:	88 4d ec             	mov    %cl,-0x14(%ebp)
  10235b:	88 55 e8             	mov    %dl,-0x18(%ebp)
  10235e:	88 45 e4             	mov    %al,-0x1c(%ebp)
  102361:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
  102365:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  102369:	83 e0 03             	and    $0x3,%eax
  10236c:	89 c2                	mov    %eax,%edx
  10236e:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  102372:	09 d0                	or     %edx,%eax
  102374:	88 45 ff             	mov    %al,-0x1(%ebp)
  102377:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  10237b:	c1 e0 02             	shl    $0x2,%eax
  10237e:	83 e0 04             	and    $0x4,%eax
  102381:	89 c2                	mov    %eax,%edx
  102383:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  102387:	09 d0                	or     %edx,%eax
  102389:	88 45 ff             	mov    %al,-0x1(%ebp)
  10238c:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  102390:	c1 e0 03             	shl    $0x3,%eax
  102393:	83 e0 38             	and    $0x38,%eax
  102396:	89 c2                	mov    %eax,%edx
  102398:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  10239c:	09 d0                	or     %edx,%eax
  10239e:	88 45 ff             	mov    %al,-0x1(%ebp)
  1023a1:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  1023a5:	c9                   	leave  
  1023a6:	c3                   	ret    

001023a7 <com_init>:
  1023a7:	55                   	push   %ebp
  1023a8:	89 e5                	mov    %esp,%ebp
  1023aa:	53                   	push   %ebx
  1023ab:	83 ec 24             	sub    $0x24,%esp
  1023ae:	8b 5d 10             	mov    0x10(%ebp),%ebx
  1023b1:	8b 4d 14             	mov    0x14(%ebp),%ecx
  1023b4:	8b 55 18             	mov    0x18(%ebp),%edx
  1023b7:	8b 45 1c             	mov    0x1c(%ebp),%eax
  1023ba:	88 5d e4             	mov    %bl,-0x1c(%ebp)
  1023bd:	88 4d e0             	mov    %cl,-0x20(%ebp)
  1023c0:	88 55 dc             	mov    %dl,-0x24(%ebp)
  1023c3:	88 45 d8             	mov    %al,-0x28(%ebp)
  1023c6:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1023cd:	74 0d                	je     1023dc <com_init+0x35>
  1023cf:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1023d6:	0f 85 7a 01 00 00    	jne    102556 <com_init+0x1af>
  1023dc:	8b 45 08             	mov    0x8(%ebp),%eax
  1023df:	83 c0 01             	add    $0x1,%eax
  1023e2:	83 ec 08             	sub    $0x8,%esp
  1023e5:	6a 00                	push   $0x0
  1023e7:	50                   	push   %eax
  1023e8:	e8 e9 e2 ff ff       	call   1006d6 <outb>
  1023ed:	83 c4 10             	add    $0x10,%esp
  1023f0:	8b 45 08             	mov    0x8(%ebp),%eax
  1023f3:	83 c0 03             	add    $0x3,%eax
  1023f6:	83 ec 08             	sub    $0x8,%esp
  1023f9:	68 80 00 00 00       	push   $0x80
  1023fe:	50                   	push   %eax
  1023ff:	e8 d2 e2 ff ff       	call   1006d6 <outb>
  102404:	83 c4 10             	add    $0x10,%esp
  102407:	83 ec 0c             	sub    $0xc,%esp
  10240a:	ff 75 0c             	push   0xc(%ebp)
  10240d:	e8 1f ff ff ff       	call   102331 <COM_SET_BAUD>
  102412:	83 c4 10             	add    $0x10,%esp
  102415:	0f b6 c0             	movzbl %al,%eax
  102418:	83 ec 08             	sub    $0x8,%esp
  10241b:	50                   	push   %eax
  10241c:	ff 75 08             	push   0x8(%ebp)
  10241f:	e8 b2 e2 ff ff       	call   1006d6 <outb>
  102424:	83 c4 10             	add    $0x10,%esp
  102427:	8b 45 08             	mov    0x8(%ebp),%eax
  10242a:	83 c0 01             	add    $0x1,%eax
  10242d:	83 ec 08             	sub    $0x8,%esp
  102430:	6a 00                	push   $0x0
  102432:	50                   	push   %eax
  102433:	e8 9e e2 ff ff       	call   1006d6 <outb>
  102438:	83 c4 10             	add    $0x10,%esp
  10243b:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
  10243f:	0f b6 55 e0          	movzbl -0x20(%ebp),%edx
  102443:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  102447:	83 ec 04             	sub    $0x4,%esp
  10244a:	51                   	push   %ecx
  10244b:	52                   	push   %edx
  10244c:	50                   	push   %eax
  10244d:	e8 f7 fe ff ff       	call   102349 <COM_SET_BPS>
  102452:	83 c4 10             	add    $0x10,%esp
  102455:	0f b6 c0             	movzbl %al,%eax
  102458:	8b 55 08             	mov    0x8(%ebp),%edx
  10245b:	83 c2 03             	add    $0x3,%edx
  10245e:	83 ec 08             	sub    $0x8,%esp
  102461:	50                   	push   %eax
  102462:	52                   	push   %edx
  102463:	e8 6e e2 ff ff       	call   1006d6 <outb>
  102468:	83 c4 10             	add    $0x10,%esp
  10246b:	8b 45 08             	mov    0x8(%ebp),%eax
  10246e:	83 c0 02             	add    $0x2,%eax
  102471:	83 ec 08             	sub    $0x8,%esp
  102474:	68 c7 00 00 00       	push   $0xc7
  102479:	50                   	push   %eax
  10247a:	e8 57 e2 ff ff       	call   1006d6 <outb>
  10247f:	83 c4 10             	add    $0x10,%esp
  102482:	8b 45 08             	mov    0x8(%ebp),%eax
  102485:	83 c0 04             	add    $0x4,%eax
  102488:	83 ec 08             	sub    $0x8,%esp
  10248b:	6a 0b                	push   $0xb
  10248d:	50                   	push   %eax
  10248e:	e8 43 e2 ff ff       	call   1006d6 <outb>
  102493:	83 c4 10             	add    $0x10,%esp
  102496:	8b 45 08             	mov    0x8(%ebp),%eax
  102499:	83 c0 01             	add    $0x1,%eax
  10249c:	83 ec 08             	sub    $0x8,%esp
  10249f:	6a 01                	push   $0x1
  1024a1:	50                   	push   %eax
  1024a2:	e8 2f e2 ff ff       	call   1006d6 <outb>
  1024a7:	83 c4 10             	add    $0x10,%esp
  1024aa:	8b 45 08             	mov    0x8(%ebp),%eax
  1024ad:	83 c0 04             	add    $0x4,%eax
  1024b0:	83 ec 08             	sub    $0x8,%esp
  1024b3:	6a 1e                	push   $0x1e
  1024b5:	50                   	push   %eax
  1024b6:	e8 1b e2 ff ff       	call   1006d6 <outb>
  1024bb:	83 c4 10             	add    $0x10,%esp
  1024be:	83 ec 08             	sub    $0x8,%esp
  1024c1:	68 ae 00 00 00       	push   $0xae
  1024c6:	ff 75 08             	push   0x8(%ebp)
  1024c9:	e8 08 e2 ff ff       	call   1006d6 <outb>
  1024ce:	83 c4 10             	add    $0x10,%esp
  1024d1:	83 ec 0c             	sub    $0xc,%esp
  1024d4:	ff 75 08             	push   0x8(%ebp)
  1024d7:	e8 e1 e1 ff ff       	call   1006bd <inb>
  1024dc:	83 c4 10             	add    $0x10,%esp
  1024df:	88 45 f7             	mov    %al,-0x9(%ebp)
  1024e2:	80 7d f7 ae          	cmpb   $0xae,-0x9(%ebp)
  1024e6:	75 6f                	jne    102557 <com_init+0x1b0>
  1024e8:	8b 45 08             	mov    0x8(%ebp),%eax
  1024eb:	83 c0 04             	add    $0x4,%eax
  1024ee:	83 ec 08             	sub    $0x8,%esp
  1024f1:	6a 0f                	push   $0xf
  1024f3:	50                   	push   %eax
  1024f4:	e8 dd e1 ff ff       	call   1006d6 <outb>
  1024f9:	83 c4 10             	add    $0x10,%esp
  1024fc:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102503:	75 24                	jne    102529 <com_init+0x182>
  102505:	c6 05 00 fb 10 00 01 	movb   $0x1,0x10fb00
  10250c:	0f b6 45 d8          	movzbl -0x28(%ebp),%eax
  102510:	a2 30 fb 12 00       	mov    %al,0x12fb30
  102515:	83 ec 08             	sub    $0x8,%esp
  102518:	68 60 28 10 00       	push   $0x102860
  10251d:	6a 24                	push   $0x24
  10251f:	e8 07 ed ff ff       	call   10122b <isr_register>
  102524:	83 c4 10             	add    $0x10,%esp
  102527:	eb 2e                	jmp    102557 <com_init+0x1b0>
  102529:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102530:	75 25                	jne    102557 <com_init+0x1b0>
  102532:	c6 05 01 fb 10 00 01 	movb   $0x1,0x10fb01
  102539:	0f b6 45 d8          	movzbl -0x28(%ebp),%eax
  10253d:	a2 31 fb 12 00       	mov    %al,0x12fb31
  102542:	83 ec 08             	sub    $0x8,%esp
  102545:	68 82 28 10 00       	push   $0x102882
  10254a:	6a 23                	push   $0x23
  10254c:	e8 da ec ff ff       	call   10122b <isr_register>
  102551:	83 c4 10             	add    $0x10,%esp
  102554:	eb 01                	jmp    102557 <com_init+0x1b0>
  102556:	90                   	nop
  102557:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10255a:	c9                   	leave  
  10255b:	c3                   	ret    

0010255c <com_is_initialized>:
  10255c:	55                   	push   %ebp
  10255d:	89 e5                	mov    %esp,%ebp
  10255f:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102566:	74 12                	je     10257a <com_is_initialized+0x1e>
  102568:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  10256f:	75 12                	jne    102583 <com_is_initialized+0x27>
  102571:	0f b6 05 00 fb 10 00 	movzbl 0x10fb00,%eax
  102578:	eb 0e                	jmp    102588 <com_is_initialized+0x2c>
  10257a:	0f b6 05 01 fb 10 00 	movzbl 0x10fb01,%eax
  102581:	eb 05                	jmp    102588 <com_is_initialized+0x2c>
  102583:	b8 00 00 00 00       	mov    $0x0,%eax
  102588:	5d                   	pop    %ebp
  102589:	c3                   	ret    

0010258a <com_write>:
  10258a:	55                   	push   %ebp
  10258b:	89 e5                	mov    %esp,%ebp
  10258d:	83 ec 28             	sub    $0x28,%esp
  102590:	83 ec 0c             	sub    $0xc,%esp
  102593:	ff 75 0c             	push   0xc(%ebp)
  102596:	e8 94 5d 00 00       	call   10832f <strlen>
  10259b:	83 c4 10             	add    $0x10,%esp
  10259e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1025a1:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1025a8:	74 17                	je     1025c1 <com_write+0x37>
  1025aa:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1025b1:	75 07                	jne    1025ba <com_write+0x30>
  1025b3:	b8 20 7b 11 00       	mov    $0x117b20,%eax
  1025b8:	eb 0c                	jmp    1025c6 <com_write+0x3c>
  1025ba:	b8 00 00 00 00       	mov    $0x0,%eax
  1025bf:	eb 05                	jmp    1025c6 <com_write+0x3c>
  1025c1:	b8 20 fb 10 00       	mov    $0x10fb20,%eax
  1025c6:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1025c9:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1025d0:	74 17                	je     1025e9 <com_write+0x5f>
  1025d2:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1025d9:	75 07                	jne    1025e2 <com_write+0x58>
  1025db:	b8 24 fb 12 00       	mov    $0x12fb24,%eax
  1025e0:	eb 0c                	jmp    1025ee <com_write+0x64>
  1025e2:	b8 00 00 00 00       	mov    $0x0,%eax
  1025e7:	eb 05                	jmp    1025ee <com_write+0x64>
  1025e9:	b8 20 fb 12 00       	mov    $0x12fb20,%eax
  1025ee:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1025f1:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1025f8:	74 17                	je     102611 <com_write+0x87>
  1025fa:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102601:	75 07                	jne    10260a <com_write+0x80>
  102603:	b8 31 fb 12 00       	mov    $0x12fb31,%eax
  102608:	eb 0c                	jmp    102616 <com_write+0x8c>
  10260a:	b8 00 00 00 00       	mov    $0x0,%eax
  10260f:	eb 05                	jmp    102616 <com_write+0x8c>
  102611:	b8 30 fb 12 00       	mov    $0x12fb30,%eax
  102616:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102619:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  10261d:	74 0c                	je     10262b <com_write+0xa1>
  10261f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  102623:	74 06                	je     10262b <com_write+0xa1>
  102625:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  102629:	75 07                	jne    102632 <com_write+0xa8>
  10262b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102630:	eb 7c                	jmp    1026ae <com_write+0x124>
  102632:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102639:	eb 48                	jmp    102683 <com_write+0xf9>
  10263b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10263e:	8b 00                	mov    (%eax),%eax
  102640:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102643:	81 7d e0 00 80 00 00 	cmpl   $0x8000,-0x20(%ebp)
  10264a:	75 0e                	jne    10265a <com_write+0xd0>
  10264c:	c6 05 c4 08 13 00 4b 	movb   $0x4b,0x1308c4
  102653:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102658:	eb 54                	jmp    1026ae <com_write+0x124>
  10265a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10265d:	8b 45 0c             	mov    0xc(%ebp),%eax
  102660:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  102663:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102666:	8b 10                	mov    (%eax),%edx
  102668:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10266b:	01 c2                	add    %eax,%edx
  10266d:	0f b6 01             	movzbl (%ecx),%eax
  102670:	88 02                	mov    %al,(%edx)
  102672:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102675:	83 c0 01             	add    $0x1,%eax
  102678:	89 c2                	mov    %eax,%edx
  10267a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10267d:	89 10                	mov    %edx,(%eax)
  10267f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102683:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102686:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  102689:	7c b0                	jl     10263b <com_write+0xb1>
  10268b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10268e:	0f b6 00             	movzbl (%eax),%eax
  102691:	0f b6 c0             	movzbl %al,%eax
  102694:	83 e0 02             	and    $0x2,%eax
  102697:	85 c0                	test   %eax,%eax
  102699:	74 10                	je     1026ab <com_write+0x121>
  10269b:	83 ec 0c             	sub    $0xc,%esp
  10269e:	ff 75 08             	push   0x8(%ebp)
  1026a1:	e8 fe 01 00 00       	call   1028a4 <com_flush>
  1026a6:	83 c4 10             	add    $0x10,%esp
  1026a9:	eb 03                	jmp    1026ae <com_write+0x124>
  1026ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1026ae:	c9                   	leave  
  1026af:	c3                   	ret    

001026b0 <com_read>:
  1026b0:	55                   	push   %ebp
  1026b1:	89 e5                	mov    %esp,%ebp
  1026b3:	53                   	push   %ebx
  1026b4:	83 ec 24             	sub    $0x24,%esp
  1026b7:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1026be:	74 17                	je     1026d7 <com_read+0x27>
  1026c0:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1026c7:	75 07                	jne    1026d0 <com_read+0x20>
  1026c9:	b8 20 7b 12 00       	mov    $0x127b20,%eax
  1026ce:	eb 0c                	jmp    1026dc <com_read+0x2c>
  1026d0:	b8 00 00 00 00       	mov    $0x0,%eax
  1026d5:	eb 05                	jmp    1026dc <com_read+0x2c>
  1026d7:	b8 20 fb 11 00       	mov    $0x11fb20,%eax
  1026dc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1026df:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1026e6:	74 17                	je     1026ff <com_read+0x4f>
  1026e8:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1026ef:	75 07                	jne    1026f8 <com_read+0x48>
  1026f1:	b8 2c fb 12 00       	mov    $0x12fb2c,%eax
  1026f6:	eb 0c                	jmp    102704 <com_read+0x54>
  1026f8:	b8 00 00 00 00       	mov    $0x0,%eax
  1026fd:	eb 05                	jmp    102704 <com_read+0x54>
  1026ff:	b8 28 fb 12 00       	mov    $0x12fb28,%eax
  102704:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102707:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  10270e:	74 17                	je     102727 <com_read+0x77>
  102710:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102717:	75 07                	jne    102720 <com_read+0x70>
  102719:	b8 31 fb 12 00       	mov    $0x12fb31,%eax
  10271e:	eb 0c                	jmp    10272c <com_read+0x7c>
  102720:	b8 00 00 00 00       	mov    $0x0,%eax
  102725:	eb 05                	jmp    10272c <com_read+0x7c>
  102727:	b8 30 fb 12 00       	mov    $0x12fb30,%eax
  10272c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10272f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102733:	74 0c                	je     102741 <com_read+0x91>
  102735:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  102739:	74 06                	je     102741 <com_read+0x91>
  10273b:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  10273f:	75 0a                	jne    10274b <com_read+0x9b>
  102741:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102746:	e9 a6 00 00 00       	jmp    1027f1 <com_read+0x141>
  10274b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  102752:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102755:	8b 10                	mov    (%eax),%edx
  102757:	8b 45 10             	mov    0x10(%ebp),%eax
  10275a:	39 c2                	cmp    %eax,%edx
  10275c:	0f 46 c2             	cmovbe %edx,%eax
  10275f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102762:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  102766:	75 10                	jne    102778 <com_read+0xc8>
  102768:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10276b:	0f b6 00             	movzbl (%eax),%eax
  10276e:	0f b6 c0             	movzbl %al,%eax
  102771:	83 e0 01             	and    $0x1,%eax
  102774:	85 c0                	test   %eax,%eax
  102776:	75 da                	jne    102752 <com_read+0xa2>
  102778:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10277b:	83 ec 04             	sub    $0x4,%esp
  10277e:	50                   	push   %eax
  10277f:	ff 75 f0             	push   -0x10(%ebp)
  102782:	ff 75 0c             	push   0xc(%ebp)
  102785:	e8 b9 5a 00 00       	call   108243 <memcpy>
  10278a:	83 c4 10             	add    $0x10,%esp
  10278d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102790:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102793:	eb 20                	jmp    1027b5 <com_read+0x105>
  102795:	8b 55 f0             	mov    -0x10(%ebp),%edx
  102798:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10279b:	01 d0                	add    %edx,%eax
  10279d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1027a0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1027a3:	89 d3                	mov    %edx,%ebx
  1027a5:	29 cb                	sub    %ecx,%ebx
  1027a7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1027aa:	01 da                	add    %ebx,%edx
  1027ac:	0f b6 00             	movzbl (%eax),%eax
  1027af:	88 02                	mov    %al,(%edx)
  1027b1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1027b5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027b8:	8b 00                	mov    (%eax),%eax
  1027ba:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1027bd:	72 d6                	jb     102795 <com_read+0xe5>
  1027bf:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027c2:	8b 00                	mov    (%eax),%eax
  1027c4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1027c7:	29 c8                	sub    %ecx,%eax
  1027c9:	89 c2                	mov    %eax,%edx
  1027cb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027ce:	89 10                	mov    %edx,(%eax)
  1027d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027d3:	8b 00                	mov    (%eax),%eax
  1027d5:	85 c0                	test   %eax,%eax
  1027d7:	75 15                	jne    1027ee <com_read+0x13e>
  1027d9:	83 ec 04             	sub    $0x4,%esp
  1027dc:	68 00 80 00 00       	push   $0x8000
  1027e1:	6a 00                	push   $0x0
  1027e3:	ff 75 f0             	push   -0x10(%ebp)
  1027e6:	e8 11 5b 00 00       	call   1082fc <memset>
  1027eb:	83 c4 10             	add    $0x10,%esp
  1027ee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1027f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1027f4:	c9                   	leave  
  1027f5:	c3                   	ret    

001027f6 <com_irq_handler>:
  1027f6:	55                   	push   %ebp
  1027f7:	89 e5                	mov    %esp,%ebp
  1027f9:	83 ec 18             	sub    $0x18,%esp
  1027fc:	8b 45 10             	mov    0x10(%ebp),%eax
  1027ff:	8b 00                	mov    (%eax),%eax
  102801:	3d 00 80 00 00       	cmp    $0x8000,%eax
  102806:	75 0e                	jne    102816 <com_irq_handler+0x20>
  102808:	c6 05 c4 08 13 00 4b 	movb   $0x4b,0x1308c4
  10280f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102814:	eb 48                	jmp    10285e <com_irq_handler+0x68>
  102816:	83 ec 0c             	sub    $0xc,%esp
  102819:	ff 75 08             	push   0x8(%ebp)
  10281c:	e8 9c de ff ff       	call   1006bd <inb>
  102821:	83 c4 10             	add    $0x10,%esp
  102824:	88 45 f7             	mov    %al,-0x9(%ebp)
  102827:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10282b:	74 1d                	je     10284a <com_irq_handler+0x54>
  10282d:	8b 45 10             	mov    0x10(%ebp),%eax
  102830:	8b 10                	mov    (%eax),%edx
  102832:	8b 45 0c             	mov    0xc(%ebp),%eax
  102835:	01 c2                	add    %eax,%edx
  102837:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  10283b:	88 02                	mov    %al,(%edx)
  10283d:	8b 45 10             	mov    0x10(%ebp),%eax
  102840:	8b 00                	mov    (%eax),%eax
  102842:	8d 50 01             	lea    0x1(%eax),%edx
  102845:	8b 45 10             	mov    0x10(%ebp),%eax
  102848:	89 10                	mov    %edx,(%eax)
  10284a:	83 ec 08             	sub    $0x8,%esp
  10284d:	6a 20                	push   $0x20
  10284f:	6a 20                	push   $0x20
  102851:	e8 80 de ff ff       	call   1006d6 <outb>
  102856:	83 c4 10             	add    $0x10,%esp
  102859:	b8 00 00 00 00       	mov    $0x0,%eax
  10285e:	c9                   	leave  
  10285f:	c3                   	ret    

00102860 <com1_irq_handler>:
  102860:	55                   	push   %ebp
  102861:	89 e5                	mov    %esp,%ebp
  102863:	83 ec 08             	sub    $0x8,%esp
  102866:	83 ec 04             	sub    $0x4,%esp
  102869:	68 28 fb 12 00       	push   $0x12fb28
  10286e:	68 20 fb 11 00       	push   $0x11fb20
  102873:	68 f8 03 00 00       	push   $0x3f8
  102878:	e8 79 ff ff ff       	call   1027f6 <com_irq_handler>
  10287d:	83 c4 10             	add    $0x10,%esp
  102880:	c9                   	leave  
  102881:	c3                   	ret    

00102882 <com2_irq_handler>:
  102882:	55                   	push   %ebp
  102883:	89 e5                	mov    %esp,%ebp
  102885:	83 ec 08             	sub    $0x8,%esp
  102888:	83 ec 04             	sub    $0x4,%esp
  10288b:	68 2c fb 12 00       	push   $0x12fb2c
  102890:	68 20 7b 12 00       	push   $0x127b20
  102895:	68 f8 02 00 00       	push   $0x2f8
  10289a:	e8 57 ff ff ff       	call   1027f6 <com_irq_handler>
  10289f:	83 c4 10             	add    $0x10,%esp
  1028a2:	c9                   	leave  
  1028a3:	c3                   	ret    

001028a4 <com_flush>:
  1028a4:	55                   	push   %ebp
  1028a5:	89 e5                	mov    %esp,%ebp
  1028a7:	83 ec 18             	sub    $0x18,%esp
  1028aa:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1028b1:	74 17                	je     1028ca <com_flush+0x26>
  1028b3:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1028ba:	75 07                	jne    1028c3 <com_flush+0x1f>
  1028bc:	b8 20 7b 11 00       	mov    $0x117b20,%eax
  1028c1:	eb 0c                	jmp    1028cf <com_flush+0x2b>
  1028c3:	b8 00 00 00 00       	mov    $0x0,%eax
  1028c8:	eb 05                	jmp    1028cf <com_flush+0x2b>
  1028ca:	b8 20 fb 10 00       	mov    $0x10fb20,%eax
  1028cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1028d2:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1028d9:	74 17                	je     1028f2 <com_flush+0x4e>
  1028db:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1028e2:	75 07                	jne    1028eb <com_flush+0x47>
  1028e4:	b8 24 fb 12 00       	mov    $0x12fb24,%eax
  1028e9:	eb 0c                	jmp    1028f7 <com_flush+0x53>
  1028eb:	b8 00 00 00 00       	mov    $0x0,%eax
  1028f0:	eb 05                	jmp    1028f7 <com_flush+0x53>
  1028f2:	b8 20 fb 12 00       	mov    $0x12fb20,%eax
  1028f7:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1028fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028fd:	8b 00                	mov    (%eax),%eax
  1028ff:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102902:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102906:	74 06                	je     10290e <com_flush+0x6a>
  102908:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  10290c:	75 0a                	jne    102918 <com_flush+0x74>
  10290e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102913:	e9 87 00 00 00       	jmp    10299f <com_flush+0xfb>
  102918:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  10291f:	75 12                	jne    102933 <com_flush+0x8f>
  102921:	0f b6 05 00 fb 10 00 	movzbl 0x10fb00,%eax
  102928:	84 c0                	test   %al,%al
  10292a:	75 07                	jne    102933 <com_flush+0x8f>
  10292c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102931:	eb 6c                	jmp    10299f <com_flush+0xfb>
  102933:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  10293a:	75 12                	jne    10294e <com_flush+0xaa>
  10293c:	0f b6 05 01 fb 10 00 	movzbl 0x10fb01,%eax
  102943:	84 c0                	test   %al,%al
  102945:	75 07                	jne    10294e <com_flush+0xaa>
  102947:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10294c:	eb 51                	jmp    10299f <com_flush+0xfb>
  10294e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102955:	eb 21                	jmp    102978 <com_flush+0xd4>
  102957:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10295a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10295d:	01 d0                	add    %edx,%eax
  10295f:	0f b6 00             	movzbl (%eax),%eax
  102962:	0f b6 c0             	movzbl %al,%eax
  102965:	83 ec 08             	sub    $0x8,%esp
  102968:	50                   	push   %eax
  102969:	ff 75 08             	push   0x8(%ebp)
  10296c:	e8 65 dd ff ff       	call   1006d6 <outb>
  102971:	83 c4 10             	add    $0x10,%esp
  102974:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102978:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10297b:	3b 45 e8             	cmp    -0x18(%ebp),%eax
  10297e:	72 d7                	jb     102957 <com_flush+0xb3>
  102980:	83 ec 04             	sub    $0x4,%esp
  102983:	ff 75 e8             	push   -0x18(%ebp)
  102986:	6a 00                	push   $0x0
  102988:	ff 75 f0             	push   -0x10(%ebp)
  10298b:	e8 6c 59 00 00       	call   1082fc <memset>
  102990:	83 c4 10             	add    $0x10,%esp
  102993:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102996:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10299c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10299f:	c9                   	leave  
  1029a0:	c3                   	ret    

001029a1 <cmos_read_rtc_reg>:
  1029a1:	55                   	push   %ebp
  1029a2:	89 e5                	mov    %esp,%ebp
  1029a4:	83 ec 08             	sub    $0x8,%esp
  1029a7:	83 ec 08             	sub    $0x8,%esp
  1029aa:	ff 75 08             	push   0x8(%ebp)
  1029ad:	6a 70                	push   $0x70
  1029af:	e8 22 dd ff ff       	call   1006d6 <outb>
  1029b4:	83 c4 10             	add    $0x10,%esp
  1029b7:	83 ec 0c             	sub    $0xc,%esp
  1029ba:	6a 71                	push   $0x71
  1029bc:	e8 fc dc ff ff       	call   1006bd <inb>
  1029c1:	83 c4 10             	add    $0x10,%esp
  1029c4:	c9                   	leave  
  1029c5:	c3                   	ret    

001029c6 <cmos_read_rtc>:
  1029c6:	55                   	push   %ebp
  1029c7:	89 e5                	mov    %esp,%ebp
  1029c9:	83 ec 18             	sub    $0x18,%esp
  1029cc:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
  1029d0:	eb 22                	jmp    1029f4 <cmos_read_rtc+0x2e>
  1029d2:	83 ec 08             	sub    $0x8,%esp
  1029d5:	6a 0a                	push   $0xa
  1029d7:	6a 70                	push   $0x70
  1029d9:	e8 f8 dc ff ff       	call   1006d6 <outb>
  1029de:	83 c4 10             	add    $0x10,%esp
  1029e1:	83 ec 0c             	sub    $0xc,%esp
  1029e4:	6a 71                	push   $0x71
  1029e6:	e8 d2 dc ff ff       	call   1006bd <inb>
  1029eb:	83 c4 10             	add    $0x10,%esp
  1029ee:	83 e0 80             	and    $0xffffff80,%eax
  1029f1:	88 45 f7             	mov    %al,-0x9(%ebp)
  1029f4:	80 7d f7 01          	cmpb   $0x1,-0x9(%ebp)
  1029f8:	74 d8                	je     1029d2 <cmos_read_rtc+0xc>
  1029fa:	83 ec 0c             	sub    $0xc,%esp
  1029fd:	6a 00                	push   $0x0
  1029ff:	e8 9d ff ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102a04:	83 c4 10             	add    $0x10,%esp
  102a07:	a2 34 fb 12 00       	mov    %al,0x12fb34
  102a0c:	83 ec 0c             	sub    $0xc,%esp
  102a0f:	6a 02                	push   $0x2
  102a11:	e8 8b ff ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102a16:	83 c4 10             	add    $0x10,%esp
  102a19:	a2 35 fb 12 00       	mov    %al,0x12fb35
  102a1e:	83 ec 0c             	sub    $0xc,%esp
  102a21:	6a 04                	push   $0x4
  102a23:	e8 79 ff ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102a28:	83 c4 10             	add    $0x10,%esp
  102a2b:	a2 36 fb 12 00       	mov    %al,0x12fb36
  102a30:	83 ec 0c             	sub    $0xc,%esp
  102a33:	6a 07                	push   $0x7
  102a35:	e8 67 ff ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102a3a:	83 c4 10             	add    $0x10,%esp
  102a3d:	a2 37 fb 12 00       	mov    %al,0x12fb37
  102a42:	83 ec 0c             	sub    $0xc,%esp
  102a45:	6a 08                	push   $0x8
  102a47:	e8 55 ff ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102a4c:	83 c4 10             	add    $0x10,%esp
  102a4f:	a2 38 fb 12 00       	mov    %al,0x12fb38
  102a54:	83 ec 0c             	sub    $0xc,%esp
  102a57:	6a 09                	push   $0x9
  102a59:	e8 43 ff ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102a5e:	83 c4 10             	add    $0x10,%esp
  102a61:	0f b6 c0             	movzbl %al,%eax
  102a64:	a3 3c fb 12 00       	mov    %eax,0x12fb3c
  102a69:	0f b6 05 34 fb 12 00 	movzbl 0x12fb34,%eax
  102a70:	88 45 f6             	mov    %al,-0xa(%ebp)
  102a73:	0f b6 05 35 fb 12 00 	movzbl 0x12fb35,%eax
  102a7a:	88 45 f5             	mov    %al,-0xb(%ebp)
  102a7d:	0f b6 05 36 fb 12 00 	movzbl 0x12fb36,%eax
  102a84:	88 45 f4             	mov    %al,-0xc(%ebp)
  102a87:	0f b6 05 37 fb 12 00 	movzbl 0x12fb37,%eax
  102a8e:	88 45 f3             	mov    %al,-0xd(%ebp)
  102a91:	0f b6 05 38 fb 12 00 	movzbl 0x12fb38,%eax
  102a98:	88 45 f2             	mov    %al,-0xe(%ebp)
  102a9b:	a1 3c fb 12 00       	mov    0x12fb3c,%eax
  102aa0:	88 45 f1             	mov    %al,-0xf(%ebp)
  102aa3:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
  102aa7:	eb 22                	jmp    102acb <cmos_read_rtc+0x105>
  102aa9:	83 ec 08             	sub    $0x8,%esp
  102aac:	6a 0a                	push   $0xa
  102aae:	6a 70                	push   $0x70
  102ab0:	e8 21 dc ff ff       	call   1006d6 <outb>
  102ab5:	83 c4 10             	add    $0x10,%esp
  102ab8:	83 ec 0c             	sub    $0xc,%esp
  102abb:	6a 71                	push   $0x71
  102abd:	e8 fb db ff ff       	call   1006bd <inb>
  102ac2:	83 c4 10             	add    $0x10,%esp
  102ac5:	83 e0 80             	and    $0xffffff80,%eax
  102ac8:	88 45 f7             	mov    %al,-0x9(%ebp)
  102acb:	80 7d f7 01          	cmpb   $0x1,-0x9(%ebp)
  102acf:	74 d8                	je     102aa9 <cmos_read_rtc+0xe3>
  102ad1:	83 ec 0c             	sub    $0xc,%esp
  102ad4:	6a 00                	push   $0x0
  102ad6:	e8 c6 fe ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102adb:	83 c4 10             	add    $0x10,%esp
  102ade:	a2 34 fb 12 00       	mov    %al,0x12fb34
  102ae3:	83 ec 0c             	sub    $0xc,%esp
  102ae6:	6a 02                	push   $0x2
  102ae8:	e8 b4 fe ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102aed:	83 c4 10             	add    $0x10,%esp
  102af0:	a2 35 fb 12 00       	mov    %al,0x12fb35
  102af5:	83 ec 0c             	sub    $0xc,%esp
  102af8:	6a 04                	push   $0x4
  102afa:	e8 a2 fe ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102aff:	83 c4 10             	add    $0x10,%esp
  102b02:	a2 36 fb 12 00       	mov    %al,0x12fb36
  102b07:	83 ec 0c             	sub    $0xc,%esp
  102b0a:	6a 07                	push   $0x7
  102b0c:	e8 90 fe ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102b11:	83 c4 10             	add    $0x10,%esp
  102b14:	a2 37 fb 12 00       	mov    %al,0x12fb37
  102b19:	83 ec 0c             	sub    $0xc,%esp
  102b1c:	6a 08                	push   $0x8
  102b1e:	e8 7e fe ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102b23:	83 c4 10             	add    $0x10,%esp
  102b26:	a2 38 fb 12 00       	mov    %al,0x12fb38
  102b2b:	83 ec 0c             	sub    $0xc,%esp
  102b2e:	6a 09                	push   $0x9
  102b30:	e8 6c fe ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102b35:	83 c4 10             	add    $0x10,%esp
  102b38:	0f b6 c0             	movzbl %al,%eax
  102b3b:	a3 3c fb 12 00       	mov    %eax,0x12fb3c
  102b40:	0f b6 05 34 fb 12 00 	movzbl 0x12fb34,%eax
  102b47:	38 45 f6             	cmp    %al,-0xa(%ebp)
  102b4a:	0f 85 19 ff ff ff    	jne    102a69 <cmos_read_rtc+0xa3>
  102b50:	0f b6 05 35 fb 12 00 	movzbl 0x12fb35,%eax
  102b57:	38 45 f5             	cmp    %al,-0xb(%ebp)
  102b5a:	0f 85 09 ff ff ff    	jne    102a69 <cmos_read_rtc+0xa3>
  102b60:	0f b6 05 36 fb 12 00 	movzbl 0x12fb36,%eax
  102b67:	38 45 f4             	cmp    %al,-0xc(%ebp)
  102b6a:	0f 85 f9 fe ff ff    	jne    102a69 <cmos_read_rtc+0xa3>
  102b70:	0f b6 05 37 fb 12 00 	movzbl 0x12fb37,%eax
  102b77:	38 45 f3             	cmp    %al,-0xd(%ebp)
  102b7a:	0f 85 e9 fe ff ff    	jne    102a69 <cmos_read_rtc+0xa3>
  102b80:	0f b6 05 38 fb 12 00 	movzbl 0x12fb38,%eax
  102b87:	38 45 f2             	cmp    %al,-0xe(%ebp)
  102b8a:	0f 85 d9 fe ff ff    	jne    102a69 <cmos_read_rtc+0xa3>
  102b90:	0f b6 55 f1          	movzbl -0xf(%ebp),%edx
  102b94:	a1 3c fb 12 00       	mov    0x12fb3c,%eax
  102b99:	39 c2                	cmp    %eax,%edx
  102b9b:	0f 85 c8 fe ff ff    	jne    102a69 <cmos_read_rtc+0xa3>
  102ba1:	83 ec 0c             	sub    $0xc,%esp
  102ba4:	6a 0b                	push   $0xb
  102ba6:	e8 f6 fd ff ff       	call   1029a1 <cmos_read_rtc_reg>
  102bab:	83 c4 10             	add    $0x10,%esp
  102bae:	88 45 f0             	mov    %al,-0x10(%ebp)
  102bb1:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
  102bb5:	83 e0 04             	and    $0x4,%eax
  102bb8:	85 c0                	test   %eax,%eax
  102bba:	0f 85 08 01 00 00    	jne    102cc8 <cmos_read_rtc+0x302>
  102bc0:	0f b6 05 34 fb 12 00 	movzbl 0x12fb34,%eax
  102bc7:	83 e0 0f             	and    $0xf,%eax
  102bca:	89 c1                	mov    %eax,%ecx
  102bcc:	0f b6 05 34 fb 12 00 	movzbl 0x12fb34,%eax
  102bd3:	c0 e8 04             	shr    $0x4,%al
  102bd6:	89 c2                	mov    %eax,%edx
  102bd8:	89 d0                	mov    %edx,%eax
  102bda:	c1 e0 02             	shl    $0x2,%eax
  102bdd:	01 d0                	add    %edx,%eax
  102bdf:	01 c0                	add    %eax,%eax
  102be1:	01 c8                	add    %ecx,%eax
  102be3:	a2 34 fb 12 00       	mov    %al,0x12fb34
  102be8:	0f b6 05 35 fb 12 00 	movzbl 0x12fb35,%eax
  102bef:	83 e0 0f             	and    $0xf,%eax
  102bf2:	89 c1                	mov    %eax,%ecx
  102bf4:	0f b6 05 35 fb 12 00 	movzbl 0x12fb35,%eax
  102bfb:	c0 e8 04             	shr    $0x4,%al
  102bfe:	89 c2                	mov    %eax,%edx
  102c00:	89 d0                	mov    %edx,%eax
  102c02:	c1 e0 02             	shl    $0x2,%eax
  102c05:	01 d0                	add    %edx,%eax
  102c07:	01 c0                	add    %eax,%eax
  102c09:	01 c8                	add    %ecx,%eax
  102c0b:	a2 35 fb 12 00       	mov    %al,0x12fb35
  102c10:	0f b6 05 36 fb 12 00 	movzbl 0x12fb36,%eax
  102c17:	83 e0 0f             	and    $0xf,%eax
  102c1a:	89 c1                	mov    %eax,%ecx
  102c1c:	0f b6 05 36 fb 12 00 	movzbl 0x12fb36,%eax
  102c23:	0f b6 c0             	movzbl %al,%eax
  102c26:	83 e0 70             	and    $0x70,%eax
  102c29:	8d 50 0f             	lea    0xf(%eax),%edx
  102c2c:	85 c0                	test   %eax,%eax
  102c2e:	0f 48 c2             	cmovs  %edx,%eax
  102c31:	c1 f8 04             	sar    $0x4,%eax
  102c34:	89 c2                	mov    %eax,%edx
  102c36:	89 d0                	mov    %edx,%eax
  102c38:	c1 e0 02             	shl    $0x2,%eax
  102c3b:	01 d0                	add    %edx,%eax
  102c3d:	01 c0                	add    %eax,%eax
  102c3f:	01 c8                	add    %ecx,%eax
  102c41:	89 c2                	mov    %eax,%edx
  102c43:	0f b6 05 36 fb 12 00 	movzbl 0x12fb36,%eax
  102c4a:	83 e0 80             	and    $0xffffff80,%eax
  102c4d:	09 d0                	or     %edx,%eax
  102c4f:	a2 36 fb 12 00       	mov    %al,0x12fb36
  102c54:	0f b6 05 37 fb 12 00 	movzbl 0x12fb37,%eax
  102c5b:	83 e0 0f             	and    $0xf,%eax
  102c5e:	89 c1                	mov    %eax,%ecx
  102c60:	0f b6 05 37 fb 12 00 	movzbl 0x12fb37,%eax
  102c67:	c0 e8 04             	shr    $0x4,%al
  102c6a:	89 c2                	mov    %eax,%edx
  102c6c:	89 d0                	mov    %edx,%eax
  102c6e:	c1 e0 02             	shl    $0x2,%eax
  102c71:	01 d0                	add    %edx,%eax
  102c73:	01 c0                	add    %eax,%eax
  102c75:	01 c8                	add    %ecx,%eax
  102c77:	a2 37 fb 12 00       	mov    %al,0x12fb37
  102c7c:	0f b6 05 38 fb 12 00 	movzbl 0x12fb38,%eax
  102c83:	83 e0 0f             	and    $0xf,%eax
  102c86:	89 c1                	mov    %eax,%ecx
  102c88:	0f b6 05 38 fb 12 00 	movzbl 0x12fb38,%eax
  102c8f:	c0 e8 04             	shr    $0x4,%al
  102c92:	89 c2                	mov    %eax,%edx
  102c94:	89 d0                	mov    %edx,%eax
  102c96:	c1 e0 02             	shl    $0x2,%eax
  102c99:	01 d0                	add    %edx,%eax
  102c9b:	01 c0                	add    %eax,%eax
  102c9d:	01 c8                	add    %ecx,%eax
  102c9f:	a2 38 fb 12 00       	mov    %al,0x12fb38
  102ca4:	a1 3c fb 12 00       	mov    0x12fb3c,%eax
  102ca9:	83 e0 0f             	and    $0xf,%eax
  102cac:	89 c1                	mov    %eax,%ecx
  102cae:	a1 3c fb 12 00       	mov    0x12fb3c,%eax
  102cb3:	c1 e8 04             	shr    $0x4,%eax
  102cb6:	89 c2                	mov    %eax,%edx
  102cb8:	89 d0                	mov    %edx,%eax
  102cba:	c1 e0 02             	shl    $0x2,%eax
  102cbd:	01 d0                	add    %edx,%eax
  102cbf:	01 c0                	add    %eax,%eax
  102cc1:	01 c8                	add    %ecx,%eax
  102cc3:	a3 3c fb 12 00       	mov    %eax,0x12fb3c
  102cc8:	0f b6 15 34 fb 12 00 	movzbl 0x12fb34,%edx
  102ccf:	8b 45 08             	mov    0x8(%ebp),%eax
  102cd2:	88 10                	mov    %dl,(%eax)
  102cd4:	0f b6 15 35 fb 12 00 	movzbl 0x12fb35,%edx
  102cdb:	8b 45 08             	mov    0x8(%ebp),%eax
  102cde:	88 50 01             	mov    %dl,0x1(%eax)
  102ce1:	0f b6 15 36 fb 12 00 	movzbl 0x12fb36,%edx
  102ce8:	8b 45 08             	mov    0x8(%ebp),%eax
  102ceb:	88 50 02             	mov    %dl,0x2(%eax)
  102cee:	0f b6 15 37 fb 12 00 	movzbl 0x12fb37,%edx
  102cf5:	8b 45 08             	mov    0x8(%ebp),%eax
  102cf8:	88 50 03             	mov    %dl,0x3(%eax)
  102cfb:	0f b6 15 38 fb 12 00 	movzbl 0x12fb38,%edx
  102d02:	8b 45 08             	mov    0x8(%ebp),%eax
  102d05:	88 50 04             	mov    %dl,0x4(%eax)
  102d08:	a1 3c fb 12 00       	mov    0x12fb3c,%eax
  102d0d:	89 c2                	mov    %eax,%edx
  102d0f:	8b 45 08             	mov    0x8(%ebp),%eax
  102d12:	88 50 05             	mov    %dl,0x5(%eax)
  102d15:	90                   	nop
  102d16:	c9                   	leave  
  102d17:	c3                   	ret    

00102d18 <acpi_check_rsd_ptr>:
  102d18:	55                   	push   %ebp
  102d19:	89 e5                	mov    %esp,%ebp
  102d1b:	83 ec 28             	sub    $0x28,%esp
  102d1e:	c7 45 e8 7c 92 10 00 	movl   $0x10927c,-0x18(%ebp)
  102d25:	8b 45 08             	mov    0x8(%ebp),%eax
  102d28:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102d2b:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  102d2f:	83 ec 04             	sub    $0x4,%esp
  102d32:	6a 08                	push   $0x8
  102d34:	ff 75 e4             	push   -0x1c(%ebp)
  102d37:	ff 75 e8             	push   -0x18(%ebp)
  102d3a:	e8 94 54 00 00       	call   1081d3 <memcmp>
  102d3f:	83 c4 10             	add    $0x10,%esp
  102d42:	85 c0                	test   %eax,%eax
  102d44:	75 34                	jne    102d7a <acpi_check_rsd_ptr+0x62>
  102d46:	8b 45 08             	mov    0x8(%ebp),%eax
  102d49:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102d4c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  102d53:	eb 11                	jmp    102d66 <acpi_check_rsd_ptr+0x4e>
  102d55:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102d58:	0f b6 00             	movzbl (%eax),%eax
  102d5b:	00 45 f3             	add    %al,-0xd(%ebp)
  102d5e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102d62:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102d66:	83 7d ec 13          	cmpl   $0x13,-0x14(%ebp)
  102d6a:	76 e9                	jbe    102d55 <acpi_check_rsd_ptr+0x3d>
  102d6c:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  102d70:	75 08                	jne    102d7a <acpi_check_rsd_ptr+0x62>
  102d72:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102d75:	8b 40 10             	mov    0x10(%eax),%eax
  102d78:	eb 05                	jmp    102d7f <acpi_check_rsd_ptr+0x67>
  102d7a:	b8 00 00 00 00       	mov    $0x0,%eax
  102d7f:	c9                   	leave  
  102d80:	c3                   	ret    

00102d81 <acpi_get_rsd_ptr>:
  102d81:	55                   	push   %ebp
  102d82:	89 e5                	mov    %esp,%ebp
  102d84:	83 ec 18             	sub    $0x18,%esp
  102d87:	c7 45 f4 00 00 0e 00 	movl   $0xe0000,-0xc(%ebp)
  102d8e:	eb 20                	jmp    102db0 <acpi_get_rsd_ptr+0x2f>
  102d90:	83 ec 0c             	sub    $0xc,%esp
  102d93:	ff 75 f4             	push   -0xc(%ebp)
  102d96:	e8 7d ff ff ff       	call   102d18 <acpi_check_rsd_ptr>
  102d9b:	83 c4 10             	add    $0x10,%esp
  102d9e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102da1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102da5:	74 05                	je     102dac <acpi_get_rsd_ptr+0x2b>
  102da7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102daa:	eb 13                	jmp    102dbf <acpi_get_rsd_ptr+0x3e>
  102dac:	83 45 f4 10          	addl   $0x10,-0xc(%ebp)
  102db0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102db3:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
  102db8:	7e d6                	jle    102d90 <acpi_get_rsd_ptr+0xf>
  102dba:	b8 00 00 00 00       	mov    $0x0,%eax
  102dbf:	c9                   	leave  
  102dc0:	c3                   	ret    

00102dc1 <acpi_check_header>:
  102dc1:	55                   	push   %ebp
  102dc2:	89 e5                	mov    %esp,%ebp
  102dc4:	83 ec 18             	sub    $0x18,%esp
  102dc7:	83 ec 04             	sub    $0x4,%esp
  102dca:	6a 04                	push   $0x4
  102dcc:	ff 75 0c             	push   0xc(%ebp)
  102dcf:	ff 75 08             	push   0x8(%ebp)
  102dd2:	e8 fc 53 00 00       	call   1081d3 <memcmp>
  102dd7:	83 c4 10             	add    $0x10,%esp
  102dda:	85 c0                	test   %eax,%eax
  102ddc:	75 43                	jne    102e21 <acpi_check_header+0x60>
  102dde:	8b 45 08             	mov    0x8(%ebp),%eax
  102de1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102de4:	8b 45 08             	mov    0x8(%ebp),%eax
  102de7:	83 c0 04             	add    $0x4,%eax
  102dea:	8b 00                	mov    (%eax),%eax
  102dec:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102def:	c6 45 ef 00          	movb   $0x0,-0x11(%ebp)
  102df3:	eb 19                	jmp    102e0e <acpi_check_header+0x4d>
  102df5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102df8:	0f b6 00             	movzbl (%eax),%eax
  102dfb:	89 c2                	mov    %eax,%edx
  102dfd:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  102e01:	01 d0                	add    %edx,%eax
  102e03:	88 45 ef             	mov    %al,-0x11(%ebp)
  102e06:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102e0a:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  102e0e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102e12:	75 e1                	jne    102df5 <acpi_check_header+0x34>
  102e14:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
  102e18:	75 07                	jne    102e21 <acpi_check_header+0x60>
  102e1a:	b8 00 00 00 00       	mov    $0x0,%eax
  102e1f:	eb 05                	jmp    102e26 <acpi_check_header+0x65>
  102e21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102e26:	c9                   	leave  
  102e27:	c3                   	ret    

00102e28 <acpi_enable>:
  102e28:	55                   	push   %ebp
  102e29:	89 e5                	mov    %esp,%ebp
  102e2b:	83 ec 18             	sub    $0x18,%esp
  102e2e:	c6 05 5b fb 12 00 00 	movb   $0x0,0x12fb5b
  102e35:	a1 48 fb 12 00       	mov    0x12fb48,%eax
  102e3a:	83 ec 0c             	sub    $0xc,%esp
  102e3d:	50                   	push   %eax
  102e3e:	e8 a0 d8 ff ff       	call   1006e3 <inw>
  102e43:	83 c4 10             	add    $0x10,%esp
  102e46:	0f b7 15 56 fb 12 00 	movzwl 0x12fb56,%edx
  102e4d:	21 d0                	and    %edx,%eax
  102e4f:	66 85 c0             	test   %ax,%ax
  102e52:	0f 85 cc 01 00 00    	jne    103024 <acpi_enable+0x1fc>
  102e58:	a1 40 fb 12 00       	mov    0x12fb40,%eax
  102e5d:	85 c0                	test   %eax,%eax
  102e5f:	0f 84 b2 02 00 00    	je     103117 <acpi_enable+0x2ef>
  102e65:	0f b6 05 44 fb 12 00 	movzbl 0x12fb44,%eax
  102e6c:	84 c0                	test   %al,%al
  102e6e:	0f 84 a3 02 00 00    	je     103117 <acpi_enable+0x2ef>
  102e74:	0f b6 05 44 fb 12 00 	movzbl 0x12fb44,%eax
  102e7b:	0f b6 c0             	movzbl %al,%eax
  102e7e:	8b 15 40 fb 12 00    	mov    0x12fb40,%edx
  102e84:	83 ec 08             	sub    $0x8,%esp
  102e87:	50                   	push   %eax
  102e88:	52                   	push   %edx
  102e89:	e8 48 d8 ff ff       	call   1006d6 <outb>
  102e8e:	83 c4 10             	add    $0x10,%esp
  102e91:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102e98:	eb 31                	jmp    102ecb <acpi_enable+0xa3>
  102e9a:	a1 48 fb 12 00       	mov    0x12fb48,%eax
  102e9f:	83 ec 0c             	sub    $0xc,%esp
  102ea2:	50                   	push   %eax
  102ea3:	e8 3b d8 ff ff       	call   1006e3 <inw>
  102ea8:	83 c4 10             	add    $0x10,%esp
  102eab:	0f b7 15 56 fb 12 00 	movzwl 0x12fb56,%edx
  102eb2:	21 d0                	and    %edx,%eax
  102eb4:	66 83 f8 01          	cmp    $0x1,%ax
  102eb8:	74 1c                	je     102ed6 <acpi_enable+0xae>
  102eba:	83 ec 0c             	sub    $0xc,%esp
  102ebd:	6a 0a                	push   $0xa
  102ebf:	e8 5e 22 00 00       	call   105122 <sleep>
  102ec4:	83 c4 10             	add    $0x10,%esp
  102ec7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102ecb:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102ed2:	7e c6                	jle    102e9a <acpi_enable+0x72>
  102ed4:	eb 01                	jmp    102ed7 <acpi_enable+0xaf>
  102ed6:	90                   	nop
  102ed7:	a1 4c fb 12 00       	mov    0x12fb4c,%eax
  102edc:	85 c0                	test   %eax,%eax
  102ede:	74 3f                	je     102f1f <acpi_enable+0xf7>
  102ee0:	eb 31                	jmp    102f13 <acpi_enable+0xeb>
  102ee2:	a1 4c fb 12 00       	mov    0x12fb4c,%eax
  102ee7:	83 ec 0c             	sub    $0xc,%esp
  102eea:	50                   	push   %eax
  102eeb:	e8 f3 d7 ff ff       	call   1006e3 <inw>
  102ef0:	83 c4 10             	add    $0x10,%esp
  102ef3:	0f b7 15 56 fb 12 00 	movzwl 0x12fb56,%edx
  102efa:	21 d0                	and    %edx,%eax
  102efc:	66 83 f8 01          	cmp    $0x1,%ax
  102f00:	74 1c                	je     102f1e <acpi_enable+0xf6>
  102f02:	83 ec 0c             	sub    $0xc,%esp
  102f05:	6a 0a                	push   $0xa
  102f07:	e8 16 22 00 00       	call   105122 <sleep>
  102f0c:	83 c4 10             	add    $0x10,%esp
  102f0f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102f13:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102f1a:	7e c6                	jle    102ee2 <acpi_enable+0xba>
  102f1c:	eb 01                	jmp    102f1f <acpi_enable+0xf7>
  102f1e:	90                   	nop
  102f1f:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102f26:	0f 8f eb 01 00 00    	jg     103117 <acpi_enable+0x2ef>
  102f2c:	83 ec 0c             	sub    $0xc,%esp
  102f2f:	68 80 04 13 00       	push   $0x130480
  102f34:	e8 01 47 00 00       	call   10763a <__redirect_printf__>
  102f39:	83 c4 10             	add    $0x10,%esp
  102f3c:	83 ec 0c             	sub    $0xc,%esp
  102f3f:	68 85 92 10 00       	push   $0x109285
  102f44:	e8 de 4f 00 00       	call   107f27 <printf>
  102f49:	83 c4 10             	add    $0x10,%esp
  102f4c:	83 ec 0c             	sub    $0xc,%esp
  102f4f:	6a 00                	push   $0x0
  102f51:	e8 e4 46 00 00       	call   10763a <__redirect_printf__>
  102f56:	83 c4 10             	add    $0x10,%esp
  102f59:	83 ec 0c             	sub    $0xc,%esp
  102f5c:	8d 45 ee             	lea    -0x12(%ebp),%eax
  102f5f:	50                   	push   %eax
  102f60:	e8 61 fa ff ff       	call   1029c6 <cmos_read_rtc>
  102f65:	83 c4 10             	add    $0x10,%esp
  102f68:	83 ec 04             	sub    $0x4,%esp
  102f6b:	68 6c 08 13 00       	push   $0x13086c
  102f70:	83 ec 08             	sub    $0x8,%esp
  102f73:	89 e0                	mov    %esp,%eax
  102f75:	8b 55 ee             	mov    -0x12(%ebp),%edx
  102f78:	89 10                	mov    %edx,(%eax)
  102f7a:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  102f7e:	66 89 50 04          	mov    %dx,0x4(%eax)
  102f82:	e8 6c 1f 00 00       	call   104ef3 <cmos_datetime_to_str>
  102f87:	83 c4 10             	add    $0x10,%esp
  102f8a:	83 ec 0c             	sub    $0xc,%esp
  102f8d:	68 80 00 13 00       	push   $0x130080
  102f92:	e8 a3 46 00 00       	call   10763a <__redirect_printf__>
  102f97:	83 c4 10             	add    $0x10,%esp
  102f9a:	83 ec 04             	sub    $0x4,%esp
  102f9d:	68 80 04 13 00       	push   $0x130480
  102fa2:	68 6c 08 13 00       	push   $0x13086c
  102fa7:	68 96 92 10 00       	push   $0x109296
  102fac:	e8 76 4f 00 00       	call   107f27 <printf>
  102fb1:	83 c4 10             	add    $0x10,%esp
  102fb4:	83 ec 0c             	sub    $0xc,%esp
  102fb7:	6a 00                	push   $0x0
  102fb9:	e8 7c 46 00 00       	call   10763a <__redirect_printf__>
  102fbe:	83 c4 10             	add    $0x10,%esp
  102fc1:	83 ec 08             	sub    $0x8,%esp
  102fc4:	68 80 00 13 00       	push   $0x130080
  102fc9:	68 f8 03 00 00       	push   $0x3f8
  102fce:	e8 b7 f5 ff ff       	call   10258a <com_write>
  102fd3:	83 c4 10             	add    $0x10,%esp
  102fd6:	83 ec 04             	sub    $0x4,%esp
  102fd9:	68 00 04 00 00       	push   $0x400
  102fde:	6a 00                	push   $0x0
  102fe0:	68 80 00 13 00       	push   $0x130080
  102fe5:	e8 12 53 00 00       	call   1082fc <memset>
  102fea:	83 c4 10             	add    $0x10,%esp
  102fed:	83 ec 04             	sub    $0x4,%esp
  102ff0:	68 ec 03 00 00       	push   $0x3ec
  102ff5:	6a 00                	push   $0x0
  102ff7:	68 80 04 13 00       	push   $0x130480
  102ffc:	e8 fb 52 00 00       	call   1082fc <memset>
  103001:	83 c4 10             	add    $0x10,%esp
  103004:	83 ec 04             	sub    $0x4,%esp
  103007:	6a 14                	push   $0x14
  103009:	6a 00                	push   $0x0
  10300b:	68 6c 08 13 00       	push   $0x13086c
  103010:	e8 e7 52 00 00       	call   1082fc <memset>
  103015:	83 c4 10             	add    $0x10,%esp
  103018:	c6 05 5b fb 12 00 01 	movb   $0x1,0x12fb5b
  10301f:	e9 f3 00 00 00       	jmp    103117 <acpi_enable+0x2ef>
  103024:	83 ec 0c             	sub    $0xc,%esp
  103027:	68 80 04 13 00       	push   $0x130480
  10302c:	e8 09 46 00 00       	call   10763a <__redirect_printf__>
  103031:	83 c4 10             	add    $0x10,%esp
  103034:	83 ec 0c             	sub    $0xc,%esp
  103037:	68 9c 92 10 00       	push   $0x10929c
  10303c:	e8 e6 4e 00 00       	call   107f27 <printf>
  103041:	83 c4 10             	add    $0x10,%esp
  103044:	83 ec 0c             	sub    $0xc,%esp
  103047:	6a 00                	push   $0x0
  103049:	e8 ec 45 00 00       	call   10763a <__redirect_printf__>
  10304e:	83 c4 10             	add    $0x10,%esp
  103051:	83 ec 0c             	sub    $0xc,%esp
  103054:	8d 45 e8             	lea    -0x18(%ebp),%eax
  103057:	50                   	push   %eax
  103058:	e8 69 f9 ff ff       	call   1029c6 <cmos_read_rtc>
  10305d:	83 c4 10             	add    $0x10,%esp
  103060:	83 ec 04             	sub    $0x4,%esp
  103063:	68 6c 08 13 00       	push   $0x13086c
  103068:	83 ec 08             	sub    $0x8,%esp
  10306b:	89 e0                	mov    %esp,%eax
  10306d:	8b 55 e8             	mov    -0x18(%ebp),%edx
  103070:	89 10                	mov    %edx,(%eax)
  103072:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
  103076:	66 89 50 04          	mov    %dx,0x4(%eax)
  10307a:	e8 74 1e 00 00       	call   104ef3 <cmos_datetime_to_str>
  10307f:	83 c4 10             	add    $0x10,%esp
  103082:	83 ec 0c             	sub    $0xc,%esp
  103085:	68 80 00 13 00       	push   $0x130080
  10308a:	e8 ab 45 00 00       	call   10763a <__redirect_printf__>
  10308f:	83 c4 10             	add    $0x10,%esp
  103092:	83 ec 04             	sub    $0x4,%esp
  103095:	68 80 04 13 00       	push   $0x130480
  10309a:	68 6c 08 13 00       	push   $0x13086c
  10309f:	68 96 92 10 00       	push   $0x109296
  1030a4:	e8 7e 4e 00 00       	call   107f27 <printf>
  1030a9:	83 c4 10             	add    $0x10,%esp
  1030ac:	83 ec 0c             	sub    $0xc,%esp
  1030af:	6a 00                	push   $0x0
  1030b1:	e8 84 45 00 00       	call   10763a <__redirect_printf__>
  1030b6:	83 c4 10             	add    $0x10,%esp
  1030b9:	83 ec 08             	sub    $0x8,%esp
  1030bc:	68 80 00 13 00       	push   $0x130080
  1030c1:	68 f8 03 00 00       	push   $0x3f8
  1030c6:	e8 bf f4 ff ff       	call   10258a <com_write>
  1030cb:	83 c4 10             	add    $0x10,%esp
  1030ce:	83 ec 04             	sub    $0x4,%esp
  1030d1:	68 00 04 00 00       	push   $0x400
  1030d6:	6a 00                	push   $0x0
  1030d8:	68 80 00 13 00       	push   $0x130080
  1030dd:	e8 1a 52 00 00       	call   1082fc <memset>
  1030e2:	83 c4 10             	add    $0x10,%esp
  1030e5:	83 ec 04             	sub    $0x4,%esp
  1030e8:	68 ec 03 00 00       	push   $0x3ec
  1030ed:	6a 00                	push   $0x0
  1030ef:	68 80 04 13 00       	push   $0x130480
  1030f4:	e8 03 52 00 00       	call   1082fc <memset>
  1030f9:	83 c4 10             	add    $0x10,%esp
  1030fc:	83 ec 04             	sub    $0x4,%esp
  1030ff:	6a 14                	push   $0x14
  103101:	6a 00                	push   $0x0
  103103:	68 6c 08 13 00       	push   $0x13086c
  103108:	e8 ef 51 00 00       	call   1082fc <memset>
  10310d:	83 c4 10             	add    $0x10,%esp
  103110:	c6 05 5b fb 12 00 01 	movb   $0x1,0x12fb5b
  103117:	90                   	nop
  103118:	c9                   	leave  
  103119:	c3                   	ret    

0010311a <acpi_init>:
  10311a:	55                   	push   %ebp
  10311b:	89 e5                	mov    %esp,%ebp
  10311d:	83 ec 48             	sub    $0x48,%esp
  103120:	c6 05 5b fb 12 00 00 	movb   $0x0,0x12fb5b
  103127:	c7 05 40 fb 12 00 00 	movl   $0x0,0x12fb40
  10312e:	00 00 00 
  103131:	c6 05 44 fb 12 00 00 	movb   $0x0,0x12fb44
  103138:	c6 05 45 fb 12 00 00 	movb   $0x0,0x12fb45
  10313f:	c7 05 48 fb 12 00 00 	movl   $0x0,0x12fb48
  103146:	00 00 00 
  103149:	c7 05 4c fb 12 00 00 	movl   $0x0,0x12fb4c
  103150:	00 00 00 
  103153:	66 c7 05 50 fb 12 00 	movw   $0x0,0x12fb50
  10315a:	00 00 
  10315c:	66 c7 05 52 fb 12 00 	movw   $0x0,0x12fb52
  103163:	00 00 
  103165:	66 c7 05 54 fb 12 00 	movw   $0x0,0x12fb54
  10316c:	00 00 
  10316e:	66 c7 05 56 fb 12 00 	movw   $0x0,0x12fb56
  103175:	00 00 
  103177:	c6 05 5a fb 12 00 00 	movb   $0x0,0x12fb5a
  10317e:	e8 fe fb ff ff       	call   102d81 <acpi_get_rsd_ptr>
  103183:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103186:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  10318a:	0f 84 cb 05 00 00    	je     10375b <acpi_init+0x641>
  103190:	83 ec 08             	sub    $0x8,%esp
  103193:	68 b3 92 10 00       	push   $0x1092b3
  103198:	ff 75 f4             	push   -0xc(%ebp)
  10319b:	e8 21 fc ff ff       	call   102dc1 <acpi_check_header>
  1031a0:	83 c4 10             	add    $0x10,%esp
  1031a3:	85 c0                	test   %eax,%eax
  1031a5:	0f 85 b0 05 00 00    	jne    10375b <acpi_init+0x641>
  1031ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1031ae:	83 c0 04             	add    $0x4,%eax
  1031b1:	8b 00                	mov    (%eax),%eax
  1031b3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1031b6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1031b9:	83 e8 24             	sub    $0x24,%eax
  1031bc:	8d 50 03             	lea    0x3(%eax),%edx
  1031bf:	85 c0                	test   %eax,%eax
  1031c1:	0f 48 c2             	cmovs  %edx,%eax
  1031c4:	c1 f8 02             	sar    $0x2,%eax
  1031c7:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1031ca:	83 45 f4 24          	addl   $0x24,-0xc(%ebp)
  1031ce:	e9 79 05 00 00       	jmp    10374c <acpi_init+0x632>
  1031d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1031d6:	8b 00                	mov    (%eax),%eax
  1031d8:	83 ec 08             	sub    $0x8,%esp
  1031db:	68 b8 92 10 00       	push   $0x1092b8
  1031e0:	50                   	push   %eax
  1031e1:	e8 db fb ff ff       	call   102dc1 <acpi_check_header>
  1031e6:	83 c4 10             	add    $0x10,%esp
  1031e9:	85 c0                	test   %eax,%eax
  1031eb:	0f 85 67 04 00 00    	jne    103658 <acpi_init+0x53e>
  1031f1:	c7 45 f0 fe ff ff ff 	movl   $0xfffffffe,-0x10(%ebp)
  1031f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1031fb:	8b 00                	mov    (%eax),%eax
  1031fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103200:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103203:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103206:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103209:	83 c0 6d             	add    $0x6d,%eax
  10320c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10320f:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103212:	89 45 d8             	mov    %eax,-0x28(%ebp)
  103215:	8b 45 d8             	mov    -0x28(%ebp),%eax
  103218:	0f b7 00             	movzwl (%eax),%eax
  10321b:	66 a3 58 fb 12 00    	mov    %ax,0x12fb58
  103221:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103224:	8b 40 28             	mov    0x28(%eax),%eax
  103227:	83 ec 08             	sub    $0x8,%esp
  10322a:	68 bd 92 10 00       	push   $0x1092bd
  10322f:	50                   	push   %eax
  103230:	e8 8c fb ff ff       	call   102dc1 <acpi_check_header>
  103235:	83 c4 10             	add    $0x10,%esp
  103238:	85 c0                	test   %eax,%eax
  10323a:	0f 85 27 03 00 00    	jne    103567 <acpi_init+0x44d>
  103240:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103243:	8b 40 28             	mov    0x28(%eax),%eax
  103246:	83 c0 24             	add    $0x24,%eax
  103249:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10324c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10324f:	8b 40 28             	mov    0x28(%eax),%eax
  103252:	83 c0 04             	add    $0x4,%eax
  103255:	8b 00                	mov    (%eax),%eax
  103257:	83 e8 24             	sub    $0x24,%eax
  10325a:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10325d:	eb 21                	jmp    103280 <acpi_init+0x166>
  10325f:	83 ec 04             	sub    $0x4,%esp
  103262:	6a 04                	push   $0x4
  103264:	68 c2 92 10 00       	push   $0x1092c2
  103269:	ff 75 ec             	push   -0x14(%ebp)
  10326c:	e8 62 4f 00 00       	call   1081d3 <memcmp>
  103271:	83 c4 10             	add    $0x10,%esp
  103274:	85 c0                	test   %eax,%eax
  103276:	74 10                	je     103288 <acpi_init+0x16e>
  103278:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10327c:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
  103280:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103284:	75 d9                	jne    10325f <acpi_init+0x145>
  103286:	eb 01                	jmp    103289 <acpi_init+0x16f>
  103288:	90                   	nop
  103289:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  10328d:	0f 8e e3 01 00 00    	jle    103476 <acpi_init+0x35c>
  103293:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103296:	83 e8 01             	sub    $0x1,%eax
  103299:	0f b6 00             	movzbl (%eax),%eax
  10329c:	3c 08                	cmp    $0x8,%al
  10329e:	74 22                	je     1032c2 <acpi_init+0x1a8>
  1032a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1032a3:	83 e8 02             	sub    $0x2,%eax
  1032a6:	0f b6 00             	movzbl (%eax),%eax
  1032a9:	3c 08                	cmp    $0x8,%al
  1032ab:	0f 85 93 04 00 00    	jne    103744 <acpi_init+0x62a>
  1032b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1032b4:	83 e8 01             	sub    $0x1,%eax
  1032b7:	0f b6 00             	movzbl (%eax),%eax
  1032ba:	3c 5c                	cmp    $0x5c,%al
  1032bc:	0f 85 82 04 00 00    	jne    103744 <acpi_init+0x62a>
  1032c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1032c5:	83 c0 04             	add    $0x4,%eax
  1032c8:	0f b6 00             	movzbl (%eax),%eax
  1032cb:	3c 12                	cmp    $0x12,%al
  1032cd:	0f 85 71 04 00 00    	jne    103744 <acpi_init+0x62a>
  1032d3:	83 45 ec 05          	addl   $0x5,-0x14(%ebp)
  1032d7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1032da:	0f b6 00             	movzbl (%eax),%eax
  1032dd:	0f be c0             	movsbl %al,%eax
  1032e0:	c1 f8 06             	sar    $0x6,%eax
  1032e3:	83 e0 03             	and    $0x3,%eax
  1032e6:	83 c0 02             	add    $0x2,%eax
  1032e9:	01 45 ec             	add    %eax,-0x14(%ebp)
  1032ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1032ef:	0f b6 00             	movzbl (%eax),%eax
  1032f2:	3c 0a                	cmp    $0xa,%al
  1032f4:	75 04                	jne    1032fa <acpi_init+0x1e0>
  1032f6:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1032fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1032fd:	0f b6 00             	movzbl (%eax),%eax
  103300:	66 98                	cbtw   
  103302:	c1 e0 0a             	shl    $0xa,%eax
  103305:	66 a3 50 fb 12 00    	mov    %ax,0x12fb50
  10330b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10330f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103312:	0f b6 00             	movzbl (%eax),%eax
  103315:	3c 0a                	cmp    $0xa,%al
  103317:	75 04                	jne    10331d <acpi_init+0x203>
  103319:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10331d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103320:	0f b6 00             	movzbl (%eax),%eax
  103323:	66 98                	cbtw   
  103325:	c1 e0 0a             	shl    $0xa,%eax
  103328:	66 a3 52 fb 12 00    	mov    %ax,0x12fb52
  10332e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103331:	8b 40 30             	mov    0x30(%eax),%eax
  103334:	a3 40 fb 12 00       	mov    %eax,0x12fb40
  103339:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10333c:	0f b6 40 34          	movzbl 0x34(%eax),%eax
  103340:	a2 44 fb 12 00       	mov    %al,0x12fb44
  103345:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103348:	0f b6 40 35          	movzbl 0x35(%eax),%eax
  10334c:	a2 45 fb 12 00       	mov    %al,0x12fb45
  103351:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103354:	8b 40 40             	mov    0x40(%eax),%eax
  103357:	a3 48 fb 12 00       	mov    %eax,0x12fb48
  10335c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10335f:	8b 40 44             	mov    0x44(%eax),%eax
  103362:	a3 4c fb 12 00       	mov    %eax,0x12fb4c
  103367:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10336a:	0f b6 40 59          	movzbl 0x59(%eax),%eax
  10336e:	a2 5a fb 12 00       	mov    %al,0x12fb5a
  103373:	66 c7 05 54 fb 12 00 	movw   $0x2000,0x12fb54
  10337a:	00 20 
  10337c:	66 c7 05 56 fb 12 00 	movw   $0x1,0x12fb56
  103383:	01 00 
  103385:	83 ec 0c             	sub    $0xc,%esp
  103388:	68 80 04 13 00       	push   $0x130480
  10338d:	e8 a8 42 00 00       	call   10763a <__redirect_printf__>
  103392:	83 c4 10             	add    $0x10,%esp
  103395:	83 ec 0c             	sub    $0xc,%esp
  103398:	68 c7 92 10 00       	push   $0x1092c7
  10339d:	e8 85 4b 00 00       	call   107f27 <printf>
  1033a2:	83 c4 10             	add    $0x10,%esp
  1033a5:	83 ec 0c             	sub    $0xc,%esp
  1033a8:	6a 00                	push   $0x0
  1033aa:	e8 8b 42 00 00       	call   10763a <__redirect_printf__>
  1033af:	83 c4 10             	add    $0x10,%esp
  1033b2:	83 ec 0c             	sub    $0xc,%esp
  1033b5:	8d 45 d2             	lea    -0x2e(%ebp),%eax
  1033b8:	50                   	push   %eax
  1033b9:	e8 08 f6 ff ff       	call   1029c6 <cmos_read_rtc>
  1033be:	83 c4 10             	add    $0x10,%esp
  1033c1:	83 ec 04             	sub    $0x4,%esp
  1033c4:	68 6c 08 13 00       	push   $0x13086c
  1033c9:	83 ec 08             	sub    $0x8,%esp
  1033cc:	89 e0                	mov    %esp,%eax
  1033ce:	8b 55 d2             	mov    -0x2e(%ebp),%edx
  1033d1:	89 10                	mov    %edx,(%eax)
  1033d3:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
  1033d7:	66 89 50 04          	mov    %dx,0x4(%eax)
  1033db:	e8 13 1b 00 00       	call   104ef3 <cmos_datetime_to_str>
  1033e0:	83 c4 10             	add    $0x10,%esp
  1033e3:	83 ec 0c             	sub    $0xc,%esp
  1033e6:	68 80 00 13 00       	push   $0x130080
  1033eb:	e8 4a 42 00 00       	call   10763a <__redirect_printf__>
  1033f0:	83 c4 10             	add    $0x10,%esp
  1033f3:	83 ec 04             	sub    $0x4,%esp
  1033f6:	68 80 04 13 00       	push   $0x130480
  1033fb:	68 6c 08 13 00       	push   $0x13086c
  103400:	68 96 92 10 00       	push   $0x109296
  103405:	e8 1d 4b 00 00       	call   107f27 <printf>
  10340a:	83 c4 10             	add    $0x10,%esp
  10340d:	83 ec 0c             	sub    $0xc,%esp
  103410:	6a 00                	push   $0x0
  103412:	e8 23 42 00 00       	call   10763a <__redirect_printf__>
  103417:	83 c4 10             	add    $0x10,%esp
  10341a:	83 ec 08             	sub    $0x8,%esp
  10341d:	68 80 00 13 00       	push   $0x130080
  103422:	68 f8 03 00 00       	push   $0x3f8
  103427:	e8 5e f1 ff ff       	call   10258a <com_write>
  10342c:	83 c4 10             	add    $0x10,%esp
  10342f:	83 ec 04             	sub    $0x4,%esp
  103432:	68 00 04 00 00       	push   $0x400
  103437:	6a 00                	push   $0x0
  103439:	68 80 00 13 00       	push   $0x130080
  10343e:	e8 b9 4e 00 00       	call   1082fc <memset>
  103443:	83 c4 10             	add    $0x10,%esp
  103446:	83 ec 04             	sub    $0x4,%esp
  103449:	68 ec 03 00 00       	push   $0x3ec
  10344e:	6a 00                	push   $0x0
  103450:	68 80 04 13 00       	push   $0x130480
  103455:	e8 a2 4e 00 00       	call   1082fc <memset>
  10345a:	83 c4 10             	add    $0x10,%esp
  10345d:	83 ec 04             	sub    $0x4,%esp
  103460:	6a 14                	push   $0x14
  103462:	6a 00                	push   $0x0
  103464:	68 6c 08 13 00       	push   $0x13086c
  103469:	e8 8e 4e 00 00       	call   1082fc <memset>
  10346e:	83 c4 10             	add    $0x10,%esp
  103471:	e9 da 03 00 00       	jmp    103850 <acpi_init+0x736>
  103476:	83 ec 0c             	sub    $0xc,%esp
  103479:	68 80 04 13 00       	push   $0x130480
  10347e:	e8 b7 41 00 00       	call   10763a <__redirect_printf__>
  103483:	83 c4 10             	add    $0x10,%esp
  103486:	83 ec 0c             	sub    $0xc,%esp
  103489:	68 dc 92 10 00       	push   $0x1092dc
  10348e:	e8 94 4a 00 00       	call   107f27 <printf>
  103493:	83 c4 10             	add    $0x10,%esp
  103496:	83 ec 0c             	sub    $0xc,%esp
  103499:	6a 00                	push   $0x0
  10349b:	e8 9a 41 00 00       	call   10763a <__redirect_printf__>
  1034a0:	83 c4 10             	add    $0x10,%esp
  1034a3:	83 ec 0c             	sub    $0xc,%esp
  1034a6:	8d 45 cc             	lea    -0x34(%ebp),%eax
  1034a9:	50                   	push   %eax
  1034aa:	e8 17 f5 ff ff       	call   1029c6 <cmos_read_rtc>
  1034af:	83 c4 10             	add    $0x10,%esp
  1034b2:	83 ec 04             	sub    $0x4,%esp
  1034b5:	68 6c 08 13 00       	push   $0x13086c
  1034ba:	83 ec 08             	sub    $0x8,%esp
  1034bd:	89 e0                	mov    %esp,%eax
  1034bf:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1034c2:	89 10                	mov    %edx,(%eax)
  1034c4:	0f b7 55 d0          	movzwl -0x30(%ebp),%edx
  1034c8:	66 89 50 04          	mov    %dx,0x4(%eax)
  1034cc:	e8 22 1a 00 00       	call   104ef3 <cmos_datetime_to_str>
  1034d1:	83 c4 10             	add    $0x10,%esp
  1034d4:	83 ec 0c             	sub    $0xc,%esp
  1034d7:	68 80 00 13 00       	push   $0x130080
  1034dc:	e8 59 41 00 00       	call   10763a <__redirect_printf__>
  1034e1:	83 c4 10             	add    $0x10,%esp
  1034e4:	83 ec 04             	sub    $0x4,%esp
  1034e7:	68 80 04 13 00       	push   $0x130480
  1034ec:	68 6c 08 13 00       	push   $0x13086c
  1034f1:	68 96 92 10 00       	push   $0x109296
  1034f6:	e8 2c 4a 00 00       	call   107f27 <printf>
  1034fb:	83 c4 10             	add    $0x10,%esp
  1034fe:	83 ec 0c             	sub    $0xc,%esp
  103501:	6a 00                	push   $0x0
  103503:	e8 32 41 00 00       	call   10763a <__redirect_printf__>
  103508:	83 c4 10             	add    $0x10,%esp
  10350b:	83 ec 08             	sub    $0x8,%esp
  10350e:	68 80 00 13 00       	push   $0x130080
  103513:	68 f8 03 00 00       	push   $0x3f8
  103518:	e8 6d f0 ff ff       	call   10258a <com_write>
  10351d:	83 c4 10             	add    $0x10,%esp
  103520:	83 ec 04             	sub    $0x4,%esp
  103523:	68 00 04 00 00       	push   $0x400
  103528:	6a 00                	push   $0x0
  10352a:	68 80 00 13 00       	push   $0x130080
  10352f:	e8 c8 4d 00 00       	call   1082fc <memset>
  103534:	83 c4 10             	add    $0x10,%esp
  103537:	83 ec 04             	sub    $0x4,%esp
  10353a:	68 ec 03 00 00       	push   $0x3ec
  10353f:	6a 00                	push   $0x0
  103541:	68 80 04 13 00       	push   $0x130480
  103546:	e8 b1 4d 00 00       	call   1082fc <memset>
  10354b:	83 c4 10             	add    $0x10,%esp
  10354e:	83 ec 04             	sub    $0x4,%esp
  103551:	6a 14                	push   $0x14
  103553:	6a 00                	push   $0x0
  103555:	68 6c 08 13 00       	push   $0x13086c
  10355a:	e8 9d 4d 00 00       	call   1082fc <memset>
  10355f:	83 c4 10             	add    $0x10,%esp
  103562:	e9 dd 01 00 00       	jmp    103744 <acpi_init+0x62a>
  103567:	83 ec 0c             	sub    $0xc,%esp
  10356a:	68 80 04 13 00       	push   $0x130480
  10356f:	e8 c6 40 00 00       	call   10763a <__redirect_printf__>
  103574:	83 c4 10             	add    $0x10,%esp
  103577:	83 ec 0c             	sub    $0xc,%esp
  10357a:	68 04 93 10 00       	push   $0x109304
  10357f:	e8 a3 49 00 00       	call   107f27 <printf>
  103584:	83 c4 10             	add    $0x10,%esp
  103587:	83 ec 0c             	sub    $0xc,%esp
  10358a:	6a 00                	push   $0x0
  10358c:	e8 a9 40 00 00       	call   10763a <__redirect_printf__>
  103591:	83 c4 10             	add    $0x10,%esp
  103594:	83 ec 0c             	sub    $0xc,%esp
  103597:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  10359a:	50                   	push   %eax
  10359b:	e8 26 f4 ff ff       	call   1029c6 <cmos_read_rtc>
  1035a0:	83 c4 10             	add    $0x10,%esp
  1035a3:	83 ec 04             	sub    $0x4,%esp
  1035a6:	68 6c 08 13 00       	push   $0x13086c
  1035ab:	83 ec 08             	sub    $0x8,%esp
  1035ae:	89 e0                	mov    %esp,%eax
  1035b0:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  1035b3:	89 10                	mov    %edx,(%eax)
  1035b5:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  1035b9:	66 89 50 04          	mov    %dx,0x4(%eax)
  1035bd:	e8 31 19 00 00       	call   104ef3 <cmos_datetime_to_str>
  1035c2:	83 c4 10             	add    $0x10,%esp
  1035c5:	83 ec 0c             	sub    $0xc,%esp
  1035c8:	68 80 00 13 00       	push   $0x130080
  1035cd:	e8 68 40 00 00       	call   10763a <__redirect_printf__>
  1035d2:	83 c4 10             	add    $0x10,%esp
  1035d5:	83 ec 04             	sub    $0x4,%esp
  1035d8:	68 80 04 13 00       	push   $0x130480
  1035dd:	68 6c 08 13 00       	push   $0x13086c
  1035e2:	68 96 92 10 00       	push   $0x109296
  1035e7:	e8 3b 49 00 00       	call   107f27 <printf>
  1035ec:	83 c4 10             	add    $0x10,%esp
  1035ef:	83 ec 0c             	sub    $0xc,%esp
  1035f2:	6a 00                	push   $0x0
  1035f4:	e8 41 40 00 00       	call   10763a <__redirect_printf__>
  1035f9:	83 c4 10             	add    $0x10,%esp
  1035fc:	83 ec 08             	sub    $0x8,%esp
  1035ff:	68 80 00 13 00       	push   $0x130080
  103604:	68 f8 03 00 00       	push   $0x3f8
  103609:	e8 7c ef ff ff       	call   10258a <com_write>
  10360e:	83 c4 10             	add    $0x10,%esp
  103611:	83 ec 04             	sub    $0x4,%esp
  103614:	68 00 04 00 00       	push   $0x400
  103619:	6a 00                	push   $0x0
  10361b:	68 80 00 13 00       	push   $0x130080
  103620:	e8 d7 4c 00 00       	call   1082fc <memset>
  103625:	83 c4 10             	add    $0x10,%esp
  103628:	83 ec 04             	sub    $0x4,%esp
  10362b:	68 ec 03 00 00       	push   $0x3ec
  103630:	6a 00                	push   $0x0
  103632:	68 80 04 13 00       	push   $0x130480
  103637:	e8 c0 4c 00 00       	call   1082fc <memset>
  10363c:	83 c4 10             	add    $0x10,%esp
  10363f:	83 ec 04             	sub    $0x4,%esp
  103642:	6a 14                	push   $0x14
  103644:	6a 00                	push   $0x0
  103646:	68 6c 08 13 00       	push   $0x13086c
  10364b:	e8 ac 4c 00 00       	call   1082fc <memset>
  103650:	83 c4 10             	add    $0x10,%esp
  103653:	e9 ec 00 00 00       	jmp    103744 <acpi_init+0x62a>
  103658:	83 ec 0c             	sub    $0xc,%esp
  10365b:	68 80 04 13 00       	push   $0x130480
  103660:	e8 d5 3f 00 00       	call   10763a <__redirect_printf__>
  103665:	83 c4 10             	add    $0x10,%esp
  103668:	83 ec 0c             	sub    $0xc,%esp
  10366b:	68 2c 93 10 00       	push   $0x10932c
  103670:	e8 b2 48 00 00       	call   107f27 <printf>
  103675:	83 c4 10             	add    $0x10,%esp
  103678:	83 ec 0c             	sub    $0xc,%esp
  10367b:	6a 00                	push   $0x0
  10367d:	e8 b8 3f 00 00       	call   10763a <__redirect_printf__>
  103682:	83 c4 10             	add    $0x10,%esp
  103685:	83 ec 0c             	sub    $0xc,%esp
  103688:	8d 45 c0             	lea    -0x40(%ebp),%eax
  10368b:	50                   	push   %eax
  10368c:	e8 35 f3 ff ff       	call   1029c6 <cmos_read_rtc>
  103691:	83 c4 10             	add    $0x10,%esp
  103694:	83 ec 04             	sub    $0x4,%esp
  103697:	68 6c 08 13 00       	push   $0x13086c
  10369c:	83 ec 08             	sub    $0x8,%esp
  10369f:	89 e0                	mov    %esp,%eax
  1036a1:	8b 55 c0             	mov    -0x40(%ebp),%edx
  1036a4:	89 10                	mov    %edx,(%eax)
  1036a6:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  1036aa:	66 89 50 04          	mov    %dx,0x4(%eax)
  1036ae:	e8 40 18 00 00       	call   104ef3 <cmos_datetime_to_str>
  1036b3:	83 c4 10             	add    $0x10,%esp
  1036b6:	83 ec 0c             	sub    $0xc,%esp
  1036b9:	68 80 00 13 00       	push   $0x130080
  1036be:	e8 77 3f 00 00       	call   10763a <__redirect_printf__>
  1036c3:	83 c4 10             	add    $0x10,%esp
  1036c6:	83 ec 04             	sub    $0x4,%esp
  1036c9:	68 80 04 13 00       	push   $0x130480
  1036ce:	68 6c 08 13 00       	push   $0x13086c
  1036d3:	68 96 92 10 00       	push   $0x109296
  1036d8:	e8 4a 48 00 00       	call   107f27 <printf>
  1036dd:	83 c4 10             	add    $0x10,%esp
  1036e0:	83 ec 0c             	sub    $0xc,%esp
  1036e3:	6a 00                	push   $0x0
  1036e5:	e8 50 3f 00 00       	call   10763a <__redirect_printf__>
  1036ea:	83 c4 10             	add    $0x10,%esp
  1036ed:	83 ec 08             	sub    $0x8,%esp
  1036f0:	68 80 00 13 00       	push   $0x130080
  1036f5:	68 f8 03 00 00       	push   $0x3f8
  1036fa:	e8 8b ee ff ff       	call   10258a <com_write>
  1036ff:	83 c4 10             	add    $0x10,%esp
  103702:	83 ec 04             	sub    $0x4,%esp
  103705:	68 00 04 00 00       	push   $0x400
  10370a:	6a 00                	push   $0x0
  10370c:	68 80 00 13 00       	push   $0x130080
  103711:	e8 e6 4b 00 00       	call   1082fc <memset>
  103716:	83 c4 10             	add    $0x10,%esp
  103719:	83 ec 04             	sub    $0x4,%esp
  10371c:	68 ec 03 00 00       	push   $0x3ec
  103721:	6a 00                	push   $0x0
  103723:	68 80 04 13 00       	push   $0x130480
  103728:	e8 cf 4b 00 00       	call   1082fc <memset>
  10372d:	83 c4 10             	add    $0x10,%esp
  103730:	83 ec 04             	sub    $0x4,%esp
  103733:	6a 14                	push   $0x14
  103735:	6a 00                	push   $0x0
  103737:	68 6c 08 13 00       	push   $0x13086c
  10373c:	e8 bb 4b 00 00       	call   1082fc <memset>
  103741:	83 c4 10             	add    $0x10,%esp
  103744:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  103748:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  10374c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  103750:	0f 8f 7d fa ff ff    	jg     1031d3 <acpi_init+0xb9>
  103756:	e9 ec 00 00 00       	jmp    103847 <acpi_init+0x72d>
  10375b:	83 ec 0c             	sub    $0xc,%esp
  10375e:	68 80 04 13 00       	push   $0x130480
  103763:	e8 d2 3e 00 00       	call   10763a <__redirect_printf__>
  103768:	83 c4 10             	add    $0x10,%esp
  10376b:	83 ec 0c             	sub    $0xc,%esp
  10376e:	68 54 93 10 00       	push   $0x109354
  103773:	e8 af 47 00 00       	call   107f27 <printf>
  103778:	83 c4 10             	add    $0x10,%esp
  10377b:	83 ec 0c             	sub    $0xc,%esp
  10377e:	6a 00                	push   $0x0
  103780:	e8 b5 3e 00 00       	call   10763a <__redirect_printf__>
  103785:	83 c4 10             	add    $0x10,%esp
  103788:	83 ec 0c             	sub    $0xc,%esp
  10378b:	8d 45 ba             	lea    -0x46(%ebp),%eax
  10378e:	50                   	push   %eax
  10378f:	e8 32 f2 ff ff       	call   1029c6 <cmos_read_rtc>
  103794:	83 c4 10             	add    $0x10,%esp
  103797:	83 ec 04             	sub    $0x4,%esp
  10379a:	68 6c 08 13 00       	push   $0x13086c
  10379f:	83 ec 08             	sub    $0x8,%esp
  1037a2:	89 e0                	mov    %esp,%eax
  1037a4:	8b 55 ba             	mov    -0x46(%ebp),%edx
  1037a7:	89 10                	mov    %edx,(%eax)
  1037a9:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  1037ad:	66 89 50 04          	mov    %dx,0x4(%eax)
  1037b1:	e8 3d 17 00 00       	call   104ef3 <cmos_datetime_to_str>
  1037b6:	83 c4 10             	add    $0x10,%esp
  1037b9:	83 ec 0c             	sub    $0xc,%esp
  1037bc:	68 80 00 13 00       	push   $0x130080
  1037c1:	e8 74 3e 00 00       	call   10763a <__redirect_printf__>
  1037c6:	83 c4 10             	add    $0x10,%esp
  1037c9:	83 ec 04             	sub    $0x4,%esp
  1037cc:	68 80 04 13 00       	push   $0x130480
  1037d1:	68 6c 08 13 00       	push   $0x13086c
  1037d6:	68 96 92 10 00       	push   $0x109296
  1037db:	e8 47 47 00 00       	call   107f27 <printf>
  1037e0:	83 c4 10             	add    $0x10,%esp
  1037e3:	83 ec 0c             	sub    $0xc,%esp
  1037e6:	6a 00                	push   $0x0
  1037e8:	e8 4d 3e 00 00       	call   10763a <__redirect_printf__>
  1037ed:	83 c4 10             	add    $0x10,%esp
  1037f0:	83 ec 08             	sub    $0x8,%esp
  1037f3:	68 80 00 13 00       	push   $0x130080
  1037f8:	68 f8 03 00 00       	push   $0x3f8
  1037fd:	e8 88 ed ff ff       	call   10258a <com_write>
  103802:	83 c4 10             	add    $0x10,%esp
  103805:	83 ec 04             	sub    $0x4,%esp
  103808:	68 00 04 00 00       	push   $0x400
  10380d:	6a 00                	push   $0x0
  10380f:	68 80 00 13 00       	push   $0x130080
  103814:	e8 e3 4a 00 00       	call   1082fc <memset>
  103819:	83 c4 10             	add    $0x10,%esp
  10381c:	83 ec 04             	sub    $0x4,%esp
  10381f:	68 ec 03 00 00       	push   $0x3ec
  103824:	6a 00                	push   $0x0
  103826:	68 80 04 13 00       	push   $0x130480
  10382b:	e8 cc 4a 00 00       	call   1082fc <memset>
  103830:	83 c4 10             	add    $0x10,%esp
  103833:	83 ec 04             	sub    $0x4,%esp
  103836:	6a 14                	push   $0x14
  103838:	6a 00                	push   $0x0
  10383a:	68 6c 08 13 00       	push   $0x13086c
  10383f:	e8 b8 4a 00 00       	call   1082fc <memset>
  103844:	83 c4 10             	add    $0x10,%esp
  103847:	66 c7 05 56 fb 12 00 	movw   $0x0,0x12fb56
  10384e:	00 00 
  103850:	c9                   	leave  
  103851:	c3                   	ret    

00103852 <acpi_shutdown>:
  103852:	55                   	push   %ebp
  103853:	89 e5                	mov    %esp,%ebp
  103855:	83 ec 28             	sub    $0x28,%esp
  103858:	e8 49 03 00 00       	call   103ba6 <acpi_is_initialized>
  10385d:	84 c0                	test   %al,%al
  10385f:	0f 85 f1 00 00 00    	jne    103956 <acpi_shutdown+0x104>
  103865:	83 ec 0c             	sub    $0xc,%esp
  103868:	68 80 04 13 00       	push   $0x130480
  10386d:	e8 c8 3d 00 00       	call   10763a <__redirect_printf__>
  103872:	83 c4 10             	add    $0x10,%esp
  103875:	83 ec 0c             	sub    $0xc,%esp
  103878:	68 7c 93 10 00       	push   $0x10937c
  10387d:	e8 a5 46 00 00       	call   107f27 <printf>
  103882:	83 c4 10             	add    $0x10,%esp
  103885:	83 ec 0c             	sub    $0xc,%esp
  103888:	6a 00                	push   $0x0
  10388a:	e8 ab 3d 00 00       	call   10763a <__redirect_printf__>
  10388f:	83 c4 10             	add    $0x10,%esp
  103892:	83 ec 0c             	sub    $0xc,%esp
  103895:	8d 45 f2             	lea    -0xe(%ebp),%eax
  103898:	50                   	push   %eax
  103899:	e8 28 f1 ff ff       	call   1029c6 <cmos_read_rtc>
  10389e:	83 c4 10             	add    $0x10,%esp
  1038a1:	83 ec 04             	sub    $0x4,%esp
  1038a4:	68 6c 08 13 00       	push   $0x13086c
  1038a9:	83 ec 08             	sub    $0x8,%esp
  1038ac:	89 e0                	mov    %esp,%eax
  1038ae:	8b 55 f2             	mov    -0xe(%ebp),%edx
  1038b1:	89 10                	mov    %edx,(%eax)
  1038b3:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  1038b7:	66 89 50 04          	mov    %dx,0x4(%eax)
  1038bb:	e8 33 16 00 00       	call   104ef3 <cmos_datetime_to_str>
  1038c0:	83 c4 10             	add    $0x10,%esp
  1038c3:	83 ec 0c             	sub    $0xc,%esp
  1038c6:	68 80 00 13 00       	push   $0x130080
  1038cb:	e8 6a 3d 00 00       	call   10763a <__redirect_printf__>
  1038d0:	83 c4 10             	add    $0x10,%esp
  1038d3:	83 ec 04             	sub    $0x4,%esp
  1038d6:	68 80 04 13 00       	push   $0x130480
  1038db:	68 6c 08 13 00       	push   $0x13086c
  1038e0:	68 96 92 10 00       	push   $0x109296
  1038e5:	e8 3d 46 00 00       	call   107f27 <printf>
  1038ea:	83 c4 10             	add    $0x10,%esp
  1038ed:	83 ec 0c             	sub    $0xc,%esp
  1038f0:	6a 00                	push   $0x0
  1038f2:	e8 43 3d 00 00       	call   10763a <__redirect_printf__>
  1038f7:	83 c4 10             	add    $0x10,%esp
  1038fa:	83 ec 08             	sub    $0x8,%esp
  1038fd:	68 80 00 13 00       	push   $0x130080
  103902:	68 f8 03 00 00       	push   $0x3f8
  103907:	e8 7e ec ff ff       	call   10258a <com_write>
  10390c:	83 c4 10             	add    $0x10,%esp
  10390f:	83 ec 04             	sub    $0x4,%esp
  103912:	68 00 04 00 00       	push   $0x400
  103917:	6a 00                	push   $0x0
  103919:	68 80 00 13 00       	push   $0x130080
  10391e:	e8 d9 49 00 00       	call   1082fc <memset>
  103923:	83 c4 10             	add    $0x10,%esp
  103926:	83 ec 04             	sub    $0x4,%esp
  103929:	68 ec 03 00 00       	push   $0x3ec
  10392e:	6a 00                	push   $0x0
  103930:	68 80 04 13 00       	push   $0x130480
  103935:	e8 c2 49 00 00       	call   1082fc <memset>
  10393a:	83 c4 10             	add    $0x10,%esp
  10393d:	83 ec 04             	sub    $0x4,%esp
  103940:	6a 14                	push   $0x14
  103942:	6a 00                	push   $0x0
  103944:	68 6c 08 13 00       	push   $0x13086c
  103949:	e8 ae 49 00 00       	call   1082fc <memset>
  10394e:	83 c4 10             	add    $0x10,%esp
  103951:	e9 41 02 00 00       	jmp    103b97 <acpi_shutdown+0x345>
  103956:	0f b6 05 5b fb 12 00 	movzbl 0x12fb5b,%eax
  10395d:	84 c0                	test   %al,%al
  10395f:	0f 85 f1 00 00 00    	jne    103a56 <acpi_shutdown+0x204>
  103965:	83 ec 0c             	sub    $0xc,%esp
  103968:	68 80 04 13 00       	push   $0x130480
  10396d:	e8 c8 3c 00 00       	call   10763a <__redirect_printf__>
  103972:	83 c4 10             	add    $0x10,%esp
  103975:	83 ec 0c             	sub    $0xc,%esp
  103978:	68 b0 93 10 00       	push   $0x1093b0
  10397d:	e8 a5 45 00 00       	call   107f27 <printf>
  103982:	83 c4 10             	add    $0x10,%esp
  103985:	83 ec 0c             	sub    $0xc,%esp
  103988:	6a 00                	push   $0x0
  10398a:	e8 ab 3c 00 00       	call   10763a <__redirect_printf__>
  10398f:	83 c4 10             	add    $0x10,%esp
  103992:	83 ec 0c             	sub    $0xc,%esp
  103995:	8d 45 ec             	lea    -0x14(%ebp),%eax
  103998:	50                   	push   %eax
  103999:	e8 28 f0 ff ff       	call   1029c6 <cmos_read_rtc>
  10399e:	83 c4 10             	add    $0x10,%esp
  1039a1:	83 ec 04             	sub    $0x4,%esp
  1039a4:	68 6c 08 13 00       	push   $0x13086c
  1039a9:	83 ec 08             	sub    $0x8,%esp
  1039ac:	89 e0                	mov    %esp,%eax
  1039ae:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1039b1:	89 10                	mov    %edx,(%eax)
  1039b3:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  1039b7:	66 89 50 04          	mov    %dx,0x4(%eax)
  1039bb:	e8 33 15 00 00       	call   104ef3 <cmos_datetime_to_str>
  1039c0:	83 c4 10             	add    $0x10,%esp
  1039c3:	83 ec 0c             	sub    $0xc,%esp
  1039c6:	68 80 00 13 00       	push   $0x130080
  1039cb:	e8 6a 3c 00 00       	call   10763a <__redirect_printf__>
  1039d0:	83 c4 10             	add    $0x10,%esp
  1039d3:	83 ec 04             	sub    $0x4,%esp
  1039d6:	68 80 04 13 00       	push   $0x130480
  1039db:	68 6c 08 13 00       	push   $0x13086c
  1039e0:	68 96 92 10 00       	push   $0x109296
  1039e5:	e8 3d 45 00 00       	call   107f27 <printf>
  1039ea:	83 c4 10             	add    $0x10,%esp
  1039ed:	83 ec 0c             	sub    $0xc,%esp
  1039f0:	6a 00                	push   $0x0
  1039f2:	e8 43 3c 00 00       	call   10763a <__redirect_printf__>
  1039f7:	83 c4 10             	add    $0x10,%esp
  1039fa:	83 ec 08             	sub    $0x8,%esp
  1039fd:	68 80 00 13 00       	push   $0x130080
  103a02:	68 f8 03 00 00       	push   $0x3f8
  103a07:	e8 7e eb ff ff       	call   10258a <com_write>
  103a0c:	83 c4 10             	add    $0x10,%esp
  103a0f:	83 ec 04             	sub    $0x4,%esp
  103a12:	68 00 04 00 00       	push   $0x400
  103a17:	6a 00                	push   $0x0
  103a19:	68 80 00 13 00       	push   $0x130080
  103a1e:	e8 d9 48 00 00       	call   1082fc <memset>
  103a23:	83 c4 10             	add    $0x10,%esp
  103a26:	83 ec 04             	sub    $0x4,%esp
  103a29:	68 ec 03 00 00       	push   $0x3ec
  103a2e:	6a 00                	push   $0x0
  103a30:	68 80 04 13 00       	push   $0x130480
  103a35:	e8 c2 48 00 00       	call   1082fc <memset>
  103a3a:	83 c4 10             	add    $0x10,%esp
  103a3d:	83 ec 04             	sub    $0x4,%esp
  103a40:	6a 14                	push   $0x14
  103a42:	6a 00                	push   $0x0
  103a44:	68 6c 08 13 00       	push   $0x13086c
  103a49:	e8 ae 48 00 00       	call   1082fc <memset>
  103a4e:	83 c4 10             	add    $0x10,%esp
  103a51:	e9 41 01 00 00       	jmp    103b97 <acpi_shutdown+0x345>
  103a56:	83 ec 0c             	sub    $0xc,%esp
  103a59:	68 80 04 13 00       	push   $0x130480
  103a5e:	e8 d7 3b 00 00       	call   10763a <__redirect_printf__>
  103a63:	83 c4 10             	add    $0x10,%esp
  103a66:	83 ec 0c             	sub    $0xc,%esp
  103a69:	68 dc 93 10 00       	push   $0x1093dc
  103a6e:	e8 b4 44 00 00       	call   107f27 <printf>
  103a73:	83 c4 10             	add    $0x10,%esp
  103a76:	83 ec 0c             	sub    $0xc,%esp
  103a79:	6a 00                	push   $0x0
  103a7b:	e8 ba 3b 00 00       	call   10763a <__redirect_printf__>
  103a80:	83 c4 10             	add    $0x10,%esp
  103a83:	83 ec 0c             	sub    $0xc,%esp
  103a86:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  103a89:	50                   	push   %eax
  103a8a:	e8 37 ef ff ff       	call   1029c6 <cmos_read_rtc>
  103a8f:	83 c4 10             	add    $0x10,%esp
  103a92:	83 ec 04             	sub    $0x4,%esp
  103a95:	68 6c 08 13 00       	push   $0x13086c
  103a9a:	83 ec 08             	sub    $0x8,%esp
  103a9d:	89 e0                	mov    %esp,%eax
  103a9f:	8b 55 e6             	mov    -0x1a(%ebp),%edx
  103aa2:	89 10                	mov    %edx,(%eax)
  103aa4:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  103aa8:	66 89 50 04          	mov    %dx,0x4(%eax)
  103aac:	e8 42 14 00 00       	call   104ef3 <cmos_datetime_to_str>
  103ab1:	83 c4 10             	add    $0x10,%esp
  103ab4:	83 ec 0c             	sub    $0xc,%esp
  103ab7:	68 80 00 13 00       	push   $0x130080
  103abc:	e8 79 3b 00 00       	call   10763a <__redirect_printf__>
  103ac1:	83 c4 10             	add    $0x10,%esp
  103ac4:	83 ec 04             	sub    $0x4,%esp
  103ac7:	68 80 04 13 00       	push   $0x130480
  103acc:	68 6c 08 13 00       	push   $0x13086c
  103ad1:	68 96 92 10 00       	push   $0x109296
  103ad6:	e8 4c 44 00 00       	call   107f27 <printf>
  103adb:	83 c4 10             	add    $0x10,%esp
  103ade:	83 ec 0c             	sub    $0xc,%esp
  103ae1:	6a 00                	push   $0x0
  103ae3:	e8 52 3b 00 00       	call   10763a <__redirect_printf__>
  103ae8:	83 c4 10             	add    $0x10,%esp
  103aeb:	83 ec 08             	sub    $0x8,%esp
  103aee:	68 80 00 13 00       	push   $0x130080
  103af3:	68 f8 03 00 00       	push   $0x3f8
  103af8:	e8 8d ea ff ff       	call   10258a <com_write>
  103afd:	83 c4 10             	add    $0x10,%esp
  103b00:	83 ec 04             	sub    $0x4,%esp
  103b03:	68 00 04 00 00       	push   $0x400
  103b08:	6a 00                	push   $0x0
  103b0a:	68 80 00 13 00       	push   $0x130080
  103b0f:	e8 e8 47 00 00       	call   1082fc <memset>
  103b14:	83 c4 10             	add    $0x10,%esp
  103b17:	83 ec 04             	sub    $0x4,%esp
  103b1a:	68 ec 03 00 00       	push   $0x3ec
  103b1f:	6a 00                	push   $0x0
  103b21:	68 80 04 13 00       	push   $0x130480
  103b26:	e8 d1 47 00 00       	call   1082fc <memset>
  103b2b:	83 c4 10             	add    $0x10,%esp
  103b2e:	83 ec 04             	sub    $0x4,%esp
  103b31:	6a 14                	push   $0x14
  103b33:	6a 00                	push   $0x0
  103b35:	68 6c 08 13 00       	push   $0x13086c
  103b3a:	e8 bd 47 00 00       	call   1082fc <memset>
  103b3f:	83 c4 10             	add    $0x10,%esp
  103b42:	0f b7 15 50 fb 12 00 	movzwl 0x12fb50,%edx
  103b49:	0f b7 05 54 fb 12 00 	movzwl 0x12fb54,%eax
  103b50:	09 d0                	or     %edx,%eax
  103b52:	0f b7 c0             	movzwl %ax,%eax
  103b55:	8b 15 48 fb 12 00    	mov    0x12fb48,%edx
  103b5b:	83 ec 08             	sub    $0x8,%esp
  103b5e:	50                   	push   %eax
  103b5f:	52                   	push   %edx
  103b60:	e8 9b cb ff ff       	call   100700 <outw>
  103b65:	83 c4 10             	add    $0x10,%esp
  103b68:	a1 4c fb 12 00       	mov    0x12fb4c,%eax
  103b6d:	85 c0                	test   %eax,%eax
  103b6f:	74 26                	je     103b97 <acpi_shutdown+0x345>
  103b71:	0f b7 15 52 fb 12 00 	movzwl 0x12fb52,%edx
  103b78:	0f b7 05 54 fb 12 00 	movzwl 0x12fb54,%eax
  103b7f:	09 d0                	or     %edx,%eax
  103b81:	0f b7 c0             	movzwl %ax,%eax
  103b84:	8b 15 4c fb 12 00    	mov    0x12fb4c,%edx
  103b8a:	83 ec 08             	sub    $0x8,%esp
  103b8d:	50                   	push   %eax
  103b8e:	52                   	push   %edx
  103b8f:	e8 6c cb ff ff       	call   100700 <outw>
  103b94:	83 c4 10             	add    $0x10,%esp
  103b97:	90                   	nop
  103b98:	c9                   	leave  
  103b99:	c3                   	ret    

00103b9a <acpi_is_enabled>:
  103b9a:	55                   	push   %ebp
  103b9b:	89 e5                	mov    %esp,%ebp
  103b9d:	0f b6 05 5b fb 12 00 	movzbl 0x12fb5b,%eax
  103ba4:	5d                   	pop    %ebp
  103ba5:	c3                   	ret    

00103ba6 <acpi_is_initialized>:
  103ba6:	55                   	push   %ebp
  103ba7:	89 e5                	mov    %esp,%ebp
  103ba9:	0f b7 05 56 fb 12 00 	movzwl 0x12fb56,%eax
  103bb0:	66 85 c0             	test   %ax,%ax
  103bb3:	0f 95 c0             	setne  %al
  103bb6:	5d                   	pop    %ebp
  103bb7:	c3                   	ret    

00103bb8 <acpi_get_boot_arch_flags>:
  103bb8:	55                   	push   %ebp
  103bb9:	89 e5                	mov    %esp,%ebp
  103bbb:	0f b7 05 58 fb 12 00 	movzwl 0x12fb58,%eax
  103bc2:	5d                   	pop    %ebp
  103bc3:	c3                   	ret    

00103bc4 <pit_get_count>:
  103bc4:	55                   	push   %ebp
  103bc5:	89 e5                	mov    %esp,%ebp
  103bc7:	83 ec 18             	sub    $0x18,%esp
  103bca:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103bd1:	c7 05 64 fb 12 00 00 	movl   $0x0,0x12fb64
  103bd8:	00 00 00 
  103bdb:	83 ec 08             	sub    $0x8,%esp
  103bde:	6a 00                	push   $0x0
  103be0:	6a 43                	push   $0x43
  103be2:	e8 ef ca ff ff       	call   1006d6 <outb>
  103be7:	83 c4 10             	add    $0x10,%esp
  103bea:	83 ec 0c             	sub    $0xc,%esp
  103bed:	6a 40                	push   $0x40
  103bef:	e8 c9 ca ff ff       	call   1006bd <inb>
  103bf4:	83 c4 10             	add    $0x10,%esp
  103bf7:	88 45 f3             	mov    %al,-0xd(%ebp)
  103bfa:	83 ec 0c             	sub    $0xc,%esp
  103bfd:	6a 40                	push   $0x40
  103bff:	e8 b9 ca ff ff       	call   1006bd <inb>
  103c04:	83 c4 10             	add    $0x10,%esp
  103c07:	88 45 f2             	mov    %al,-0xe(%ebp)
  103c0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  103c0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103c11:	80 7d f2 07          	cmpb   $0x7,-0xe(%ebp)
  103c15:	0f 96 c0             	setbe  %al
  103c18:	0f b6 c0             	movzbl %al,%eax
  103c1b:	09 45 f4             	or     %eax,-0xc(%ebp)
  103c1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c21:	c9                   	leave  
  103c22:	c3                   	ret    

00103c23 <pit_set_count>:
  103c23:	55                   	push   %ebp
  103c24:	89 e5                	mov    %esp,%ebp
  103c26:	83 ec 08             	sub    $0x8,%esp
  103c29:	8b 45 08             	mov    0x8(%ebp),%eax
  103c2c:	0f b6 c0             	movzbl %al,%eax
  103c2f:	83 ec 08             	sub    $0x8,%esp
  103c32:	50                   	push   %eax
  103c33:	6a 40                	push   $0x40
  103c35:	e8 9c ca ff ff       	call   1006d6 <outb>
  103c3a:	83 c4 10             	add    $0x10,%esp
  103c3d:	8b 45 08             	mov    0x8(%ebp),%eax
  103c40:	c1 e8 08             	shr    $0x8,%eax
  103c43:	0f b6 c0             	movzbl %al,%eax
  103c46:	83 ec 08             	sub    $0x8,%esp
  103c49:	50                   	push   %eax
  103c4a:	6a 40                	push   $0x40
  103c4c:	e8 85 ca ff ff       	call   1006d6 <outb>
  103c51:	83 c4 10             	add    $0x10,%esp
  103c54:	90                   	nop
  103c55:	c9                   	leave  
  103c56:	c3                   	ret    

00103c57 <pit_init>:
  103c57:	55                   	push   %ebp
  103c58:	89 e5                	mov    %esp,%ebp
  103c5a:	83 ec 18             	sub    $0x18,%esp
  103c5d:	c7 05 5c fb 12 00 00 	movl   $0x0,0x12fb5c
  103c64:	00 00 00 
  103c67:	c7 05 60 fb 12 00 00 	movl   $0x0,0x12fb60
  103c6e:	00 00 00 
  103c71:	66 c7 45 f6 9b 2e    	movw   $0x2e9b,-0xa(%ebp)
  103c77:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  103c7b:	88 45 f5             	mov    %al,-0xb(%ebp)
  103c7e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  103c82:	66 c1 e8 08          	shr    $0x8,%ax
  103c86:	88 45 f4             	mov    %al,-0xc(%ebp)
  103c89:	83 ec 08             	sub    $0x8,%esp
  103c8c:	6a 37                	push   $0x37
  103c8e:	6a 43                	push   $0x43
  103c90:	e8 41 ca ff ff       	call   1006d6 <outb>
  103c95:	83 c4 10             	add    $0x10,%esp
  103c98:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
  103c9c:	83 ec 08             	sub    $0x8,%esp
  103c9f:	50                   	push   %eax
  103ca0:	6a 40                	push   $0x40
  103ca2:	e8 2f ca ff ff       	call   1006d6 <outb>
  103ca7:	83 c4 10             	add    $0x10,%esp
  103caa:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
  103cae:	83 ec 08             	sub    $0x8,%esp
  103cb1:	50                   	push   %eax
  103cb2:	6a 40                	push   $0x40
  103cb4:	e8 1d ca ff ff       	call   1006d6 <outb>
  103cb9:	83 c4 10             	add    $0x10,%esp
  103cbc:	83 ec 08             	sub    $0x8,%esp
  103cbf:	68 09 3d 10 00       	push   $0x103d09
  103cc4:	6a 20                	push   $0x20
  103cc6:	e8 60 d5 ff ff       	call   10122b <isr_register>
  103ccb:	83 c4 10             	add    $0x10,%esp
  103cce:	90                   	nop
  103ccf:	c9                   	leave  
  103cd0:	c3                   	ret    

00103cd1 <pit_get_millis>:
  103cd1:	55                   	push   %ebp
  103cd2:	89 e5                	mov    %esp,%ebp
  103cd4:	a1 60 fb 12 00       	mov    0x12fb60,%eax
  103cd9:	5d                   	pop    %ebp
  103cda:	c3                   	ret    

00103cdb <pit_get_seconds>:
  103cdb:	55                   	push   %ebp
  103cdc:	89 e5                	mov    %esp,%ebp
  103cde:	a1 60 fb 12 00       	mov    0x12fb60,%eax
  103ce3:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  103ce8:	f7 e2                	mul    %edx
  103cea:	89 d0                	mov    %edx,%eax
  103cec:	c1 e8 06             	shr    $0x6,%eax
  103cef:	5d                   	pop    %ebp
  103cf0:	c3                   	ret    

00103cf1 <pit_get_ticks>:
  103cf1:	55                   	push   %ebp
  103cf2:	89 e5                	mov    %esp,%ebp
  103cf4:	a1 5c fb 12 00       	mov    0x12fb5c,%eax
  103cf9:	5d                   	pop    %ebp
  103cfa:	c3                   	ret    

00103cfb <pit_set_callback>:
  103cfb:	55                   	push   %ebp
  103cfc:	89 e5                	mov    %esp,%ebp
  103cfe:	8b 45 08             	mov    0x8(%ebp),%eax
  103d01:	a3 64 fb 12 00       	mov    %eax,0x12fb64
  103d06:	90                   	nop
  103d07:	5d                   	pop    %ebp
  103d08:	c3                   	ret    

00103d09 <pit_irq0_handler>:
  103d09:	55                   	push   %ebp
  103d0a:	89 e5                	mov    %esp,%ebp
  103d0c:	83 ec 08             	sub    $0x8,%esp
  103d0f:	a1 5c fb 12 00       	mov    0x12fb5c,%eax
  103d14:	83 c0 01             	add    $0x1,%eax
  103d17:	a3 5c fb 12 00       	mov    %eax,0x12fb5c
  103d1c:	8b 15 5c fb 12 00    	mov    0x12fb5c,%edx
  103d22:	89 d0                	mov    %edx,%eax
  103d24:	01 c0                	add    %eax,%eax
  103d26:	01 d0                	add    %edx,%eax
  103d28:	a3 60 fb 12 00       	mov    %eax,0x12fb60
  103d2d:	83 ec 08             	sub    $0x8,%esp
  103d30:	6a 20                	push   $0x20
  103d32:	6a 20                	push   $0x20
  103d34:	e8 9d c9 ff ff       	call   1006d6 <outb>
  103d39:	83 c4 10             	add    $0x10,%esp
  103d3c:	a1 64 fb 12 00       	mov    0x12fb64,%eax
  103d41:	85 c0                	test   %eax,%eax
  103d43:	74 1b                	je     103d60 <pit_irq0_handler+0x57>
  103d45:	a1 64 fb 12 00       	mov    0x12fb64,%eax
  103d4a:	8b 0d 60 fb 12 00    	mov    0x12fb60,%ecx
  103d50:	8b 15 5c fb 12 00    	mov    0x12fb5c,%edx
  103d56:	83 ec 08             	sub    $0x8,%esp
  103d59:	51                   	push   %ecx
  103d5a:	52                   	push   %edx
  103d5b:	ff d0                	call   *%eax
  103d5d:	83 c4 10             	add    $0x10,%esp
  103d60:	b8 00 00 00 00       	mov    $0x0,%eax
  103d65:	c9                   	leave  
  103d66:	c3                   	ret    

00103d67 <keyboard_init>:
  103d67:	55                   	push   %ebp
  103d68:	89 e5                	mov    %esp,%ebp
  103d6a:	83 ec 28             	sub    $0x28,%esp
  103d6d:	8b 45 08             	mov    0x8(%ebp),%eax
  103d70:	88 45 e4             	mov    %al,-0x1c(%ebp)
  103d73:	c6 05 80 fb 12 00 00 	movb   $0x0,0x12fb80
  103d7a:	c6 05 81 fb 12 00 00 	movb   $0x0,0x12fb81
  103d81:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  103d85:	a2 82 fb 12 00       	mov    %al,0x12fb82
  103d8a:	83 ec 04             	sub    $0x4,%esp
  103d8d:	68 00 04 00 00       	push   $0x400
  103d92:	6a 00                	push   $0x0
  103d94:	68 a0 fb 12 00       	push   $0x12fba0
  103d99:	e8 5e 45 00 00       	call   1082fc <memset>
  103d9e:	83 c4 10             	add    $0x10,%esp
  103da1:	c6 05 a0 ff 12 00 00 	movb   $0x0,0x12ffa0
  103da8:	83 ec 08             	sub    $0x8,%esp
  103dab:	68 a9 3e 10 00       	push   $0x103ea9
  103db0:	6a 21                	push   $0x21
  103db2:	e8 74 d4 ff ff       	call   10122b <isr_register>
  103db7:	83 c4 10             	add    $0x10,%esp
  103dba:	83 ec 0c             	sub    $0xc,%esp
  103dbd:	68 80 04 13 00       	push   $0x130480
  103dc2:	e8 73 38 00 00       	call   10763a <__redirect_printf__>
  103dc7:	83 c4 10             	add    $0x10,%esp
  103dca:	83 ec 0c             	sub    $0xc,%esp
  103dcd:	68 ec 93 10 00       	push   $0x1093ec
  103dd2:	e8 50 41 00 00       	call   107f27 <printf>
  103dd7:	83 c4 10             	add    $0x10,%esp
  103dda:	83 ec 0c             	sub    $0xc,%esp
  103ddd:	6a 00                	push   $0x0
  103ddf:	e8 56 38 00 00       	call   10763a <__redirect_printf__>
  103de4:	83 c4 10             	add    $0x10,%esp
  103de7:	83 ec 0c             	sub    $0xc,%esp
  103dea:	8d 45 f2             	lea    -0xe(%ebp),%eax
  103ded:	50                   	push   %eax
  103dee:	e8 d3 eb ff ff       	call   1029c6 <cmos_read_rtc>
  103df3:	83 c4 10             	add    $0x10,%esp
  103df6:	83 ec 04             	sub    $0x4,%esp
  103df9:	68 6c 08 13 00       	push   $0x13086c
  103dfe:	83 ec 08             	sub    $0x8,%esp
  103e01:	89 e0                	mov    %esp,%eax
  103e03:	8b 55 f2             	mov    -0xe(%ebp),%edx
  103e06:	89 10                	mov    %edx,(%eax)
  103e08:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  103e0c:	66 89 50 04          	mov    %dx,0x4(%eax)
  103e10:	e8 de 10 00 00       	call   104ef3 <cmos_datetime_to_str>
  103e15:	83 c4 10             	add    $0x10,%esp
  103e18:	83 ec 0c             	sub    $0xc,%esp
  103e1b:	68 80 00 13 00       	push   $0x130080
  103e20:	e8 15 38 00 00       	call   10763a <__redirect_printf__>
  103e25:	83 c4 10             	add    $0x10,%esp
  103e28:	83 ec 04             	sub    $0x4,%esp
  103e2b:	68 80 04 13 00       	push   $0x130480
  103e30:	68 6c 08 13 00       	push   $0x13086c
  103e35:	68 02 94 10 00       	push   $0x109402
  103e3a:	e8 e8 40 00 00       	call   107f27 <printf>
  103e3f:	83 c4 10             	add    $0x10,%esp
  103e42:	83 ec 0c             	sub    $0xc,%esp
  103e45:	6a 00                	push   $0x0
  103e47:	e8 ee 37 00 00       	call   10763a <__redirect_printf__>
  103e4c:	83 c4 10             	add    $0x10,%esp
  103e4f:	83 ec 08             	sub    $0x8,%esp
  103e52:	68 80 00 13 00       	push   $0x130080
  103e57:	68 f8 03 00 00       	push   $0x3f8
  103e5c:	e8 29 e7 ff ff       	call   10258a <com_write>
  103e61:	83 c4 10             	add    $0x10,%esp
  103e64:	83 ec 04             	sub    $0x4,%esp
  103e67:	68 00 04 00 00       	push   $0x400
  103e6c:	6a 00                	push   $0x0
  103e6e:	68 80 00 13 00       	push   $0x130080
  103e73:	e8 84 44 00 00       	call   1082fc <memset>
  103e78:	83 c4 10             	add    $0x10,%esp
  103e7b:	83 ec 04             	sub    $0x4,%esp
  103e7e:	68 ec 03 00 00       	push   $0x3ec
  103e83:	6a 00                	push   $0x0
  103e85:	68 80 04 13 00       	push   $0x130480
  103e8a:	e8 6d 44 00 00       	call   1082fc <memset>
  103e8f:	83 c4 10             	add    $0x10,%esp
  103e92:	83 ec 04             	sub    $0x4,%esp
  103e95:	6a 14                	push   $0x14
  103e97:	6a 00                	push   $0x0
  103e99:	68 6c 08 13 00       	push   $0x13086c
  103e9e:	e8 59 44 00 00       	call   1082fc <memset>
  103ea3:	83 c4 10             	add    $0x10,%esp
  103ea6:	90                   	nop
  103ea7:	c9                   	leave  
  103ea8:	c3                   	ret    

00103ea9 <keyboard_irq_handler>:
  103ea9:	55                   	push   %ebp
  103eaa:	89 e5                	mov    %esp,%ebp
  103eac:	83 ec 18             	sub    $0x18,%esp
  103eaf:	0f b6 05 82 fb 12 00 	movzbl 0x12fb82,%eax
  103eb6:	0f b6 c0             	movzbl %al,%eax
  103eb9:	83 ec 0c             	sub    $0xc,%esp
  103ebc:	50                   	push   %eax
  103ebd:	e8 fb c7 ff ff       	call   1006bd <inb>
  103ec2:	83 c4 10             	add    $0x10,%esp
  103ec5:	88 45 f6             	mov    %al,-0xa(%ebp)
  103ec8:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
  103ecc:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  103ed0:	3d ba 00 00 00       	cmp    $0xba,%eax
  103ed5:	0f 87 63 06 00 00    	ja     10453e <keyboard_irq_handler+0x695>
  103edb:	8b 04 85 38 94 10 00 	mov    0x109438(,%eax,4),%eax
  103ee2:	ff e0                	jmp    *%eax
  103ee4:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103eeb:	3c 01                	cmp    $0x1,%al
  103eed:	75 07                	jne    103ef6 <keyboard_irq_handler+0x4d>
  103eef:	b8 21 00 00 00       	mov    $0x21,%eax
  103ef4:	eb 05                	jmp    103efb <keyboard_irq_handler+0x52>
  103ef6:	b8 31 00 00 00       	mov    $0x31,%eax
  103efb:	88 45 f7             	mov    %al,-0x9(%ebp)
  103efe:	e9 2f 07 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103f03:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103f0a:	3c 01                	cmp    $0x1,%al
  103f0c:	75 07                	jne    103f15 <keyboard_irq_handler+0x6c>
  103f0e:	b8 22 00 00 00       	mov    $0x22,%eax
  103f13:	eb 05                	jmp    103f1a <keyboard_irq_handler+0x71>
  103f15:	b8 32 00 00 00       	mov    $0x32,%eax
  103f1a:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f1d:	e9 10 07 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103f22:	c6 45 f7 33          	movb   $0x33,-0x9(%ebp)
  103f26:	e9 07 07 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103f2b:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103f32:	3c 01                	cmp    $0x1,%al
  103f34:	75 07                	jne    103f3d <keyboard_irq_handler+0x94>
  103f36:	b8 24 00 00 00       	mov    $0x24,%eax
  103f3b:	eb 05                	jmp    103f42 <keyboard_irq_handler+0x99>
  103f3d:	b8 34 00 00 00       	mov    $0x34,%eax
  103f42:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f45:	e9 e8 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103f4a:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103f51:	3c 01                	cmp    $0x1,%al
  103f53:	75 07                	jne    103f5c <keyboard_irq_handler+0xb3>
  103f55:	b8 25 00 00 00       	mov    $0x25,%eax
  103f5a:	eb 05                	jmp    103f61 <keyboard_irq_handler+0xb8>
  103f5c:	b8 35 00 00 00       	mov    $0x35,%eax
  103f61:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f64:	e9 c9 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103f69:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103f70:	3c 01                	cmp    $0x1,%al
  103f72:	75 07                	jne    103f7b <keyboard_irq_handler+0xd2>
  103f74:	b8 26 00 00 00       	mov    $0x26,%eax
  103f79:	eb 05                	jmp    103f80 <keyboard_irq_handler+0xd7>
  103f7b:	b8 36 00 00 00       	mov    $0x36,%eax
  103f80:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f83:	e9 aa 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103f88:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103f8f:	3c 01                	cmp    $0x1,%al
  103f91:	75 07                	jne    103f9a <keyboard_irq_handler+0xf1>
  103f93:	b8 2f 00 00 00       	mov    $0x2f,%eax
  103f98:	eb 05                	jmp    103f9f <keyboard_irq_handler+0xf6>
  103f9a:	b8 37 00 00 00       	mov    $0x37,%eax
  103f9f:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fa2:	e9 8b 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103fa7:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103fae:	3c 01                	cmp    $0x1,%al
  103fb0:	75 07                	jne    103fb9 <keyboard_irq_handler+0x110>
  103fb2:	b8 28 00 00 00       	mov    $0x28,%eax
  103fb7:	eb 05                	jmp    103fbe <keyboard_irq_handler+0x115>
  103fb9:	b8 38 00 00 00       	mov    $0x38,%eax
  103fbe:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fc1:	e9 6c 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103fc6:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103fcd:	3c 01                	cmp    $0x1,%al
  103fcf:	75 07                	jne    103fd8 <keyboard_irq_handler+0x12f>
  103fd1:	b8 29 00 00 00       	mov    $0x29,%eax
  103fd6:	eb 05                	jmp    103fdd <keyboard_irq_handler+0x134>
  103fd8:	b8 39 00 00 00       	mov    $0x39,%eax
  103fdd:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fe0:	e9 4d 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  103fe5:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  103fec:	3c 01                	cmp    $0x1,%al
  103fee:	75 07                	jne    103ff7 <keyboard_irq_handler+0x14e>
  103ff0:	b8 3d 00 00 00       	mov    $0x3d,%eax
  103ff5:	eb 05                	jmp    103ffc <keyboard_irq_handler+0x153>
  103ff7:	b8 30 00 00 00       	mov    $0x30,%eax
  103ffc:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fff:	e9 2e 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104004:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10400b:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104012:	38 c2                	cmp    %al,%dl
  104014:	75 07                	jne    10401d <keyboard_irq_handler+0x174>
  104016:	b8 71 00 00 00       	mov    $0x71,%eax
  10401b:	eb 05                	jmp    104022 <keyboard_irq_handler+0x179>
  10401d:	b8 51 00 00 00       	mov    $0x51,%eax
  104022:	88 45 f7             	mov    %al,-0x9(%ebp)
  104025:	e9 08 06 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10402a:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104031:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104038:	38 c2                	cmp    %al,%dl
  10403a:	75 07                	jne    104043 <keyboard_irq_handler+0x19a>
  10403c:	b8 77 00 00 00       	mov    $0x77,%eax
  104041:	eb 05                	jmp    104048 <keyboard_irq_handler+0x19f>
  104043:	b8 57 00 00 00       	mov    $0x57,%eax
  104048:	88 45 f7             	mov    %al,-0x9(%ebp)
  10404b:	e9 e2 05 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104050:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104057:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  10405e:	38 c2                	cmp    %al,%dl
  104060:	75 07                	jne    104069 <keyboard_irq_handler+0x1c0>
  104062:	b8 65 00 00 00       	mov    $0x65,%eax
  104067:	eb 05                	jmp    10406e <keyboard_irq_handler+0x1c5>
  104069:	b8 45 00 00 00       	mov    $0x45,%eax
  10406e:	88 45 f7             	mov    %al,-0x9(%ebp)
  104071:	e9 bc 05 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104076:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10407d:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104084:	38 c2                	cmp    %al,%dl
  104086:	75 07                	jne    10408f <keyboard_irq_handler+0x1e6>
  104088:	b8 72 00 00 00       	mov    $0x72,%eax
  10408d:	eb 05                	jmp    104094 <keyboard_irq_handler+0x1eb>
  10408f:	b8 52 00 00 00       	mov    $0x52,%eax
  104094:	88 45 f7             	mov    %al,-0x9(%ebp)
  104097:	e9 96 05 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10409c:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1040a3:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1040aa:	38 c2                	cmp    %al,%dl
  1040ac:	75 07                	jne    1040b5 <keyboard_irq_handler+0x20c>
  1040ae:	b8 74 00 00 00       	mov    $0x74,%eax
  1040b3:	eb 05                	jmp    1040ba <keyboard_irq_handler+0x211>
  1040b5:	b8 54 00 00 00       	mov    $0x54,%eax
  1040ba:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040bd:	e9 70 05 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1040c2:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1040c9:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1040d0:	38 c2                	cmp    %al,%dl
  1040d2:	75 07                	jne    1040db <keyboard_irq_handler+0x232>
  1040d4:	b8 79 00 00 00       	mov    $0x79,%eax
  1040d9:	eb 05                	jmp    1040e0 <keyboard_irq_handler+0x237>
  1040db:	b8 59 00 00 00       	mov    $0x59,%eax
  1040e0:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040e3:	e9 4a 05 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1040e8:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1040ef:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1040f6:	38 c2                	cmp    %al,%dl
  1040f8:	75 07                	jne    104101 <keyboard_irq_handler+0x258>
  1040fa:	b8 75 00 00 00       	mov    $0x75,%eax
  1040ff:	eb 05                	jmp    104106 <keyboard_irq_handler+0x25d>
  104101:	b8 55 00 00 00       	mov    $0x55,%eax
  104106:	88 45 f7             	mov    %al,-0x9(%ebp)
  104109:	e9 24 05 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10410e:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104115:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  10411c:	38 c2                	cmp    %al,%dl
  10411e:	75 07                	jne    104127 <keyboard_irq_handler+0x27e>
  104120:	b8 69 00 00 00       	mov    $0x69,%eax
  104125:	eb 05                	jmp    10412c <keyboard_irq_handler+0x283>
  104127:	b8 49 00 00 00       	mov    $0x49,%eax
  10412c:	88 45 f7             	mov    %al,-0x9(%ebp)
  10412f:	e9 fe 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104134:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10413b:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104142:	38 c2                	cmp    %al,%dl
  104144:	75 07                	jne    10414d <keyboard_irq_handler+0x2a4>
  104146:	b8 6f 00 00 00       	mov    $0x6f,%eax
  10414b:	eb 05                	jmp    104152 <keyboard_irq_handler+0x2a9>
  10414d:	b8 4f 00 00 00       	mov    $0x4f,%eax
  104152:	88 45 f7             	mov    %al,-0x9(%ebp)
  104155:	e9 d8 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10415a:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104161:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104168:	38 c2                	cmp    %al,%dl
  10416a:	75 07                	jne    104173 <keyboard_irq_handler+0x2ca>
  10416c:	b8 70 00 00 00       	mov    $0x70,%eax
  104171:	eb 05                	jmp    104178 <keyboard_irq_handler+0x2cf>
  104173:	b8 50 00 00 00       	mov    $0x50,%eax
  104178:	88 45 f7             	mov    %al,-0x9(%ebp)
  10417b:	e9 b2 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104180:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104187:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  10418e:	38 c2                	cmp    %al,%dl
  104190:	75 07                	jne    104199 <keyboard_irq_handler+0x2f0>
  104192:	b8 65 00 00 00       	mov    $0x65,%eax
  104197:	eb 05                	jmp    10419e <keyboard_irq_handler+0x2f5>
  104199:	b8 45 00 00 00       	mov    $0x45,%eax
  10419e:	88 45 f7             	mov    %al,-0x9(%ebp)
  1041a1:	e9 8c 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1041a6:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  1041ad:	84 c0                	test   %al,%al
  1041af:	74 07                	je     1041b8 <keyboard_irq_handler+0x30f>
  1041b1:	b8 2a 00 00 00       	mov    $0x2a,%eax
  1041b6:	eb 05                	jmp    1041bd <keyboard_irq_handler+0x314>
  1041b8:	b8 2b 00 00 00       	mov    $0x2b,%eax
  1041bd:	88 45 f7             	mov    %al,-0x9(%ebp)
  1041c0:	e9 6d 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1041c5:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1041cc:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1041d3:	38 c2                	cmp    %al,%dl
  1041d5:	75 07                	jne    1041de <keyboard_irq_handler+0x335>
  1041d7:	b8 61 00 00 00       	mov    $0x61,%eax
  1041dc:	eb 05                	jmp    1041e3 <keyboard_irq_handler+0x33a>
  1041de:	b8 41 00 00 00       	mov    $0x41,%eax
  1041e3:	88 45 f7             	mov    %al,-0x9(%ebp)
  1041e6:	e9 47 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1041eb:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1041f2:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1041f9:	38 c2                	cmp    %al,%dl
  1041fb:	75 07                	jne    104204 <keyboard_irq_handler+0x35b>
  1041fd:	b8 73 00 00 00       	mov    $0x73,%eax
  104202:	eb 05                	jmp    104209 <keyboard_irq_handler+0x360>
  104204:	b8 53 00 00 00       	mov    $0x53,%eax
  104209:	88 45 f7             	mov    %al,-0x9(%ebp)
  10420c:	e9 21 04 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104211:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104218:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  10421f:	38 c2                	cmp    %al,%dl
  104221:	75 07                	jne    10422a <keyboard_irq_handler+0x381>
  104223:	b8 64 00 00 00       	mov    $0x64,%eax
  104228:	eb 05                	jmp    10422f <keyboard_irq_handler+0x386>
  10422a:	b8 44 00 00 00       	mov    $0x44,%eax
  10422f:	88 45 f7             	mov    %al,-0x9(%ebp)
  104232:	e9 fb 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104237:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10423e:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104245:	38 c2                	cmp    %al,%dl
  104247:	75 07                	jne    104250 <keyboard_irq_handler+0x3a7>
  104249:	b8 66 00 00 00       	mov    $0x66,%eax
  10424e:	eb 05                	jmp    104255 <keyboard_irq_handler+0x3ac>
  104250:	b8 46 00 00 00       	mov    $0x46,%eax
  104255:	88 45 f7             	mov    %al,-0x9(%ebp)
  104258:	e9 d5 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10425d:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104264:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  10426b:	38 c2                	cmp    %al,%dl
  10426d:	75 07                	jne    104276 <keyboard_irq_handler+0x3cd>
  10426f:	b8 67 00 00 00       	mov    $0x67,%eax
  104274:	eb 05                	jmp    10427b <keyboard_irq_handler+0x3d2>
  104276:	b8 47 00 00 00       	mov    $0x47,%eax
  10427b:	88 45 f7             	mov    %al,-0x9(%ebp)
  10427e:	e9 af 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104283:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10428a:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104291:	38 c2                	cmp    %al,%dl
  104293:	75 07                	jne    10429c <keyboard_irq_handler+0x3f3>
  104295:	b8 68 00 00 00       	mov    $0x68,%eax
  10429a:	eb 05                	jmp    1042a1 <keyboard_irq_handler+0x3f8>
  10429c:	b8 48 00 00 00       	mov    $0x48,%eax
  1042a1:	88 45 f7             	mov    %al,-0x9(%ebp)
  1042a4:	e9 89 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1042a9:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1042b0:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1042b7:	38 c2                	cmp    %al,%dl
  1042b9:	75 07                	jne    1042c2 <keyboard_irq_handler+0x419>
  1042bb:	b8 6a 00 00 00       	mov    $0x6a,%eax
  1042c0:	eb 05                	jmp    1042c7 <keyboard_irq_handler+0x41e>
  1042c2:	b8 4a 00 00 00       	mov    $0x4a,%eax
  1042c7:	88 45 f7             	mov    %al,-0x9(%ebp)
  1042ca:	e9 63 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1042cf:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1042d6:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1042dd:	38 c2                	cmp    %al,%dl
  1042df:	75 07                	jne    1042e8 <keyboard_irq_handler+0x43f>
  1042e1:	b8 6b 00 00 00       	mov    $0x6b,%eax
  1042e6:	eb 05                	jmp    1042ed <keyboard_irq_handler+0x444>
  1042e8:	b8 4b 00 00 00       	mov    $0x4b,%eax
  1042ed:	88 45 f7             	mov    %al,-0x9(%ebp)
  1042f0:	e9 3d 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1042f5:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1042fc:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104303:	38 c2                	cmp    %al,%dl
  104305:	75 07                	jne    10430e <keyboard_irq_handler+0x465>
  104307:	b8 6c 00 00 00       	mov    $0x6c,%eax
  10430c:	eb 05                	jmp    104313 <keyboard_irq_handler+0x46a>
  10430e:	b8 4c 00 00 00       	mov    $0x4c,%eax
  104313:	88 45 f7             	mov    %al,-0x9(%ebp)
  104316:	e9 17 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10431b:	c6 45 f7 5c          	movb   $0x5c,-0x9(%ebp)
  10431f:	e9 0e 03 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104324:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10432b:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104332:	38 c2                	cmp    %al,%dl
  104334:	75 07                	jne    10433d <keyboard_irq_handler+0x494>
  104336:	b8 7a 00 00 00       	mov    $0x7a,%eax
  10433b:	eb 05                	jmp    104342 <keyboard_irq_handler+0x499>
  10433d:	b8 5a 00 00 00       	mov    $0x5a,%eax
  104342:	88 45 f7             	mov    %al,-0x9(%ebp)
  104345:	e9 e8 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10434a:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104351:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104358:	38 c2                	cmp    %al,%dl
  10435a:	75 07                	jne    104363 <keyboard_irq_handler+0x4ba>
  10435c:	b8 78 00 00 00       	mov    $0x78,%eax
  104361:	eb 05                	jmp    104368 <keyboard_irq_handler+0x4bf>
  104363:	b8 58 00 00 00       	mov    $0x58,%eax
  104368:	88 45 f7             	mov    %al,-0x9(%ebp)
  10436b:	e9 c2 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104370:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  104377:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  10437e:	38 c2                	cmp    %al,%dl
  104380:	75 07                	jne    104389 <keyboard_irq_handler+0x4e0>
  104382:	b8 63 00 00 00       	mov    $0x63,%eax
  104387:	eb 05                	jmp    10438e <keyboard_irq_handler+0x4e5>
  104389:	b8 43 00 00 00       	mov    $0x43,%eax
  10438e:	88 45 f7             	mov    %al,-0x9(%ebp)
  104391:	e9 9c 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104396:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10439d:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1043a4:	38 c2                	cmp    %al,%dl
  1043a6:	75 07                	jne    1043af <keyboard_irq_handler+0x506>
  1043a8:	b8 76 00 00 00       	mov    $0x76,%eax
  1043ad:	eb 05                	jmp    1043b4 <keyboard_irq_handler+0x50b>
  1043af:	b8 56 00 00 00       	mov    $0x56,%eax
  1043b4:	88 45 f7             	mov    %al,-0x9(%ebp)
  1043b7:	e9 76 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1043bc:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1043c3:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1043ca:	38 c2                	cmp    %al,%dl
  1043cc:	75 07                	jne    1043d5 <keyboard_irq_handler+0x52c>
  1043ce:	b8 62 00 00 00       	mov    $0x62,%eax
  1043d3:	eb 05                	jmp    1043da <keyboard_irq_handler+0x531>
  1043d5:	b8 42 00 00 00       	mov    $0x42,%eax
  1043da:	88 45 f7             	mov    %al,-0x9(%ebp)
  1043dd:	e9 50 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1043e2:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  1043e9:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  1043f0:	38 c2                	cmp    %al,%dl
  1043f2:	75 07                	jne    1043fb <keyboard_irq_handler+0x552>
  1043f4:	b8 6e 00 00 00       	mov    $0x6e,%eax
  1043f9:	eb 05                	jmp    104400 <keyboard_irq_handler+0x557>
  1043fb:	b8 4e 00 00 00       	mov    $0x4e,%eax
  104400:	88 45 f7             	mov    %al,-0x9(%ebp)
  104403:	e9 2a 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104408:	0f b6 15 81 fb 12 00 	movzbl 0x12fb81,%edx
  10440f:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104416:	38 c2                	cmp    %al,%dl
  104418:	75 07                	jne    104421 <keyboard_irq_handler+0x578>
  10441a:	b8 6d 00 00 00       	mov    $0x6d,%eax
  10441f:	eb 05                	jmp    104426 <keyboard_irq_handler+0x57d>
  104421:	b8 4d 00 00 00       	mov    $0x4d,%eax
  104426:	88 45 f7             	mov    %al,-0x9(%ebp)
  104429:	e9 04 02 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10442e:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  104435:	84 c0                	test   %al,%al
  104437:	74 07                	je     104440 <keyboard_irq_handler+0x597>
  104439:	b8 3b 00 00 00       	mov    $0x3b,%eax
  10443e:	eb 05                	jmp    104445 <keyboard_irq_handler+0x59c>
  104440:	b8 2e 00 00 00       	mov    $0x2e,%eax
  104445:	88 45 f7             	mov    %al,-0x9(%ebp)
  104448:	e9 e5 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10444d:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  104454:	84 c0                	test   %al,%al
  104456:	74 07                	je     10445f <keyboard_irq_handler+0x5b6>
  104458:	b8 3a 00 00 00       	mov    $0x3a,%eax
  10445d:	eb 05                	jmp    104464 <keyboard_irq_handler+0x5bb>
  10445f:	b8 2e 00 00 00       	mov    $0x2e,%eax
  104464:	88 45 f7             	mov    %al,-0x9(%ebp)
  104467:	e9 c6 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10446c:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  104473:	84 c0                	test   %al,%al
  104475:	74 07                	je     10447e <keyboard_irq_handler+0x5d5>
  104477:	b8 5f 00 00 00       	mov    $0x5f,%eax
  10447c:	eb 05                	jmp    104483 <keyboard_irq_handler+0x5da>
  10447e:	b8 2d 00 00 00       	mov    $0x2d,%eax
  104483:	88 45 f7             	mov    %al,-0x9(%ebp)
  104486:	e9 a7 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10448b:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  104492:	84 c0                	test   %al,%al
  104494:	74 07                	je     10449d <keyboard_irq_handler+0x5f4>
  104496:	b8 2b 00 00 00       	mov    $0x2b,%eax
  10449b:	eb 05                	jmp    1044a2 <keyboard_irq_handler+0x5f9>
  10449d:	b8 2a 00 00 00       	mov    $0x2a,%eax
  1044a2:	88 45 f7             	mov    %al,-0x9(%ebp)
  1044a5:	e9 88 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044aa:	c6 45 f7 0a          	movb   $0xa,-0x9(%ebp)
  1044ae:	e9 7f 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044b3:	c6 45 f7 08          	movb   $0x8,-0x9(%ebp)
  1044b7:	e9 76 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044bc:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
  1044c0:	e9 6d 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044c5:	e8 33 c1 ff ff       	call   1005fd <tty_row_up>
  1044ca:	e9 63 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044cf:	e8 4d c1 ff ff       	call   100621 <tty_row_down>
  1044d4:	e9 59 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044d9:	e8 6c c1 ff ff       	call   10064a <tty_column_right>
  1044de:	e9 4f 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044e3:	e8 8b c1 ff ff       	call   100673 <tty_column_left>
  1044e8:	e9 45 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044ed:	e8 a5 c1 ff ff       	call   100697 <tty_reset_column>
  1044f2:	e9 3b 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  1044f7:	c6 05 81 fb 12 00 01 	movb   $0x1,0x12fb81
  1044fe:	e9 2f 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104503:	c6 05 81 fb 12 00 00 	movb   $0x0,0x12fb81
  10450a:	e9 23 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  10450f:	0f b6 05 80 fb 12 00 	movzbl 0x12fb80,%eax
  104516:	3c 01                	cmp    $0x1,%al
  104518:	0f 95 c0             	setne  %al
  10451b:	a2 80 fb 12 00       	mov    %al,0x12fb80
  104520:	e9 0d 01 00 00       	jmp    104632 <keyboard_irq_handler+0x789>
  104525:	0f b6 05 81 fb 12 00 	movzbl 0x12fb81,%eax
  10452c:	84 c0                	test   %al,%al
  10452e:	0f 84 fd 00 00 00    	je     104631 <keyboard_irq_handler+0x788>
  104534:	e8 19 f3 ff ff       	call   103852 <acpi_shutdown>
  104539:	e9 f3 00 00 00       	jmp    104631 <keyboard_irq_handler+0x788>
  10453e:	83 ec 0c             	sub    $0xc,%esp
  104541:	68 80 04 13 00       	push   $0x130480
  104546:	e8 ef 30 00 00       	call   10763a <__redirect_printf__>
  10454b:	83 c4 10             	add    $0x10,%esp
  10454e:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  104552:	83 ec 08             	sub    $0x8,%esp
  104555:	50                   	push   %eax
  104556:	68 08 94 10 00       	push   $0x109408
  10455b:	e8 c7 39 00 00       	call   107f27 <printf>
  104560:	83 c4 10             	add    $0x10,%esp
  104563:	83 ec 0c             	sub    $0xc,%esp
  104566:	6a 00                	push   $0x0
  104568:	e8 cd 30 00 00       	call   10763a <__redirect_printf__>
  10456d:	83 c4 10             	add    $0x10,%esp
  104570:	83 ec 0c             	sub    $0xc,%esp
  104573:	8d 45 f0             	lea    -0x10(%ebp),%eax
  104576:	50                   	push   %eax
  104577:	e8 4a e4 ff ff       	call   1029c6 <cmos_read_rtc>
  10457c:	83 c4 10             	add    $0x10,%esp
  10457f:	83 ec 04             	sub    $0x4,%esp
  104582:	68 6c 08 13 00       	push   $0x13086c
  104587:	83 ec 08             	sub    $0x8,%esp
  10458a:	89 e0                	mov    %esp,%eax
  10458c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10458f:	89 10                	mov    %edx,(%eax)
  104591:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
  104595:	66 89 50 04          	mov    %dx,0x4(%eax)
  104599:	e8 55 09 00 00       	call   104ef3 <cmos_datetime_to_str>
  10459e:	83 c4 10             	add    $0x10,%esp
  1045a1:	83 ec 0c             	sub    $0xc,%esp
  1045a4:	68 80 00 13 00       	push   $0x130080
  1045a9:	e8 8c 30 00 00       	call   10763a <__redirect_printf__>
  1045ae:	83 c4 10             	add    $0x10,%esp
  1045b1:	83 ec 04             	sub    $0x4,%esp
  1045b4:	68 80 04 13 00       	push   $0x130480
  1045b9:	68 6c 08 13 00       	push   $0x13086c
  1045be:	68 02 94 10 00       	push   $0x109402
  1045c3:	e8 5f 39 00 00       	call   107f27 <printf>
  1045c8:	83 c4 10             	add    $0x10,%esp
  1045cb:	83 ec 0c             	sub    $0xc,%esp
  1045ce:	6a 00                	push   $0x0
  1045d0:	e8 65 30 00 00       	call   10763a <__redirect_printf__>
  1045d5:	83 c4 10             	add    $0x10,%esp
  1045d8:	83 ec 08             	sub    $0x8,%esp
  1045db:	68 80 00 13 00       	push   $0x130080
  1045e0:	68 f8 03 00 00       	push   $0x3f8
  1045e5:	e8 a0 df ff ff       	call   10258a <com_write>
  1045ea:	83 c4 10             	add    $0x10,%esp
  1045ed:	83 ec 04             	sub    $0x4,%esp
  1045f0:	68 00 04 00 00       	push   $0x400
  1045f5:	6a 00                	push   $0x0
  1045f7:	68 80 00 13 00       	push   $0x130080
  1045fc:	e8 fb 3c 00 00       	call   1082fc <memset>
  104601:	83 c4 10             	add    $0x10,%esp
  104604:	83 ec 04             	sub    $0x4,%esp
  104607:	68 ec 03 00 00       	push   $0x3ec
  10460c:	6a 00                	push   $0x0
  10460e:	68 80 04 13 00       	push   $0x130480
  104613:	e8 e4 3c 00 00       	call   1082fc <memset>
  104618:	83 c4 10             	add    $0x10,%esp
  10461b:	83 ec 04             	sub    $0x4,%esp
  10461e:	6a 14                	push   $0x14
  104620:	6a 00                	push   $0x0
  104622:	68 6c 08 13 00       	push   $0x13086c
  104627:	e8 d0 3c 00 00       	call   1082fc <memset>
  10462c:	83 c4 10             	add    $0x10,%esp
  10462f:	eb 01                	jmp    104632 <keyboard_irq_handler+0x789>
  104631:	90                   	nop
  104632:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  104636:	74 2f                	je     104667 <keyboard_irq_handler+0x7be>
  104638:	0f b6 05 a0 ff 12 00 	movzbl 0x12ffa0,%eax
  10463f:	0f b6 c0             	movzbl %al,%eax
  104642:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
  104646:	88 90 a0 fb 12 00    	mov    %dl,0x12fba0(%eax)
  10464c:	0f b6 05 a0 ff 12 00 	movzbl 0x12ffa0,%eax
  104653:	83 c0 01             	add    $0x1,%eax
  104656:	a2 a0 ff 12 00       	mov    %al,0x12ffa0
  10465b:	0f b6 05 a0 ff 12 00 	movzbl 0x12ffa0,%eax
  104662:	a2 a0 ff 12 00       	mov    %al,0x12ffa0
  104667:	83 ec 08             	sub    $0x8,%esp
  10466a:	6a 20                	push   $0x20
  10466c:	6a 20                	push   $0x20
  10466e:	e8 63 c0 ff ff       	call   1006d6 <outb>
  104673:	83 c4 10             	add    $0x10,%esp
  104676:	b8 00 00 00 00       	mov    $0x0,%eax
  10467b:	c9                   	leave  
  10467c:	c3                   	ret    

0010467d <keyboard_read>:
  10467d:	55                   	push   %ebp
  10467e:	89 e5                	mov    %esp,%ebp
  104680:	83 ec 18             	sub    $0x18,%esp
  104683:	0f b6 05 a0 ff 12 00 	movzbl 0x12ffa0,%eax
  10468a:	0f b6 c0             	movzbl %al,%eax
  10468d:	8b 55 0c             	mov    0xc(%ebp),%edx
  104690:	39 c2                	cmp    %eax,%edx
  104692:	0f 46 c2             	cmovbe %edx,%eax
  104695:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104698:	83 ec 04             	sub    $0x4,%esp
  10469b:	ff 75 f4             	push   -0xc(%ebp)
  10469e:	68 a0 fb 12 00       	push   $0x12fba0
  1046a3:	ff 75 08             	push   0x8(%ebp)
  1046a6:	e8 98 3b 00 00       	call   108243 <memcpy>
  1046ab:	83 c4 10             	add    $0x10,%esp
  1046ae:	b8 00 04 00 00       	mov    $0x400,%eax
  1046b3:	2b 45 f4             	sub    -0xc(%ebp),%eax
  1046b6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1046b9:	81 c2 a0 fb 12 00    	add    $0x12fba0,%edx
  1046bf:	83 ec 04             	sub    $0x4,%esp
  1046c2:	50                   	push   %eax
  1046c3:	52                   	push   %edx
  1046c4:	68 a0 fb 12 00       	push   $0x12fba0
  1046c9:	e8 b6 3b 00 00       	call   108284 <memmove>
  1046ce:	83 c4 10             	add    $0x10,%esp
  1046d1:	b8 00 04 00 00       	mov    $0x400,%eax
  1046d6:	2b 45 f4             	sub    -0xc(%ebp),%eax
  1046d9:	05 a0 fb 12 00       	add    $0x12fba0,%eax
  1046de:	83 ec 04             	sub    $0x4,%esp
  1046e1:	ff 75 f4             	push   -0xc(%ebp)
  1046e4:	6a 00                	push   $0x0
  1046e6:	50                   	push   %eax
  1046e7:	e8 10 3c 00 00       	call   1082fc <memset>
  1046ec:	83 c4 10             	add    $0x10,%esp
  1046ef:	0f b6 05 a0 ff 12 00 	movzbl 0x12ffa0,%eax
  1046f6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1046f9:	29 d0                	sub    %edx,%eax
  1046fb:	a2 a0 ff 12 00       	mov    %al,0x12ffa0
  104700:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104703:	c9                   	leave  
  104704:	c3                   	ret    

00104705 <vfs_read>:
  104705:	55                   	push   %ebp
  104706:	89 e5                	mov    %esp,%ebp
  104708:	83 ec 08             	sub    $0x8,%esp
  10470b:	8b 45 08             	mov    0x8(%ebp),%eax
  10470e:	8b 80 9c 00 00 00    	mov    0x9c(%eax),%eax
  104714:	85 c0                	test   %eax,%eax
  104716:	74 1c                	je     104734 <vfs_read+0x2f>
  104718:	8b 45 08             	mov    0x8(%ebp),%eax
  10471b:	8b 80 9c 00 00 00    	mov    0x9c(%eax),%eax
  104721:	ff 75 14             	push   0x14(%ebp)
  104724:	ff 75 10             	push   0x10(%ebp)
  104727:	ff 75 0c             	push   0xc(%ebp)
  10472a:	ff 75 08             	push   0x8(%ebp)
  10472d:	ff d0                	call   *%eax
  10472f:	83 c4 10             	add    $0x10,%esp
  104732:	eb 05                	jmp    104739 <vfs_read+0x34>
  104734:	b8 00 00 00 00       	mov    $0x0,%eax
  104739:	c9                   	leave  
  10473a:	c3                   	ret    

0010473b <vfs_write>:
  10473b:	55                   	push   %ebp
  10473c:	89 e5                	mov    %esp,%ebp
  10473e:	83 ec 08             	sub    $0x8,%esp
  104741:	8b 45 08             	mov    0x8(%ebp),%eax
  104744:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
  10474a:	85 c0                	test   %eax,%eax
  10474c:	74 1c                	je     10476a <vfs_write+0x2f>
  10474e:	8b 45 08             	mov    0x8(%ebp),%eax
  104751:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
  104757:	ff 75 14             	push   0x14(%ebp)
  10475a:	ff 75 10             	push   0x10(%ebp)
  10475d:	ff 75 0c             	push   0xc(%ebp)
  104760:	ff 75 08             	push   0x8(%ebp)
  104763:	ff d0                	call   *%eax
  104765:	83 c4 10             	add    $0x10,%esp
  104768:	eb 05                	jmp    10476f <vfs_write+0x34>
  10476a:	b8 00 00 00 00       	mov    $0x0,%eax
  10476f:	c9                   	leave  
  104770:	c3                   	ret    

00104771 <vfs_open>:
  104771:	55                   	push   %ebp
  104772:	89 e5                	mov    %esp,%ebp
  104774:	83 ec 18             	sub    $0x18,%esp
  104777:	8b 55 0c             	mov    0xc(%ebp),%edx
  10477a:	8b 45 10             	mov    0x10(%ebp),%eax
  10477d:	88 55 f4             	mov    %dl,-0xc(%ebp)
  104780:	88 45 f0             	mov    %al,-0x10(%ebp)
  104783:	8b 45 08             	mov    0x8(%ebp),%eax
  104786:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
  10478c:	85 c0                	test   %eax,%eax
  10478e:	74 15                	je     1047a5 <vfs_open+0x34>
  104790:	8b 45 08             	mov    0x8(%ebp),%eax
  104793:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
  104799:	83 ec 0c             	sub    $0xc,%esp
  10479c:	ff 75 08             	push   0x8(%ebp)
  10479f:	ff d0                	call   *%eax
  1047a1:	83 c4 10             	add    $0x10,%esp
  1047a4:	90                   	nop
  1047a5:	c9                   	leave  
  1047a6:	c3                   	ret    

001047a7 <vfs_close>:
  1047a7:	55                   	push   %ebp
  1047a8:	89 e5                	mov    %esp,%ebp
  1047aa:	83 ec 08             	sub    $0x8,%esp
  1047ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1047b0:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
  1047b6:	85 c0                	test   %eax,%eax
  1047b8:	74 15                	je     1047cf <vfs_close+0x28>
  1047ba:	8b 45 08             	mov    0x8(%ebp),%eax
  1047bd:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
  1047c3:	83 ec 0c             	sub    $0xc,%esp
  1047c6:	ff 75 08             	push   0x8(%ebp)
  1047c9:	ff d0                	call   *%eax
  1047cb:	83 c4 10             	add    $0x10,%esp
  1047ce:	90                   	nop
  1047cf:	c9                   	leave  
  1047d0:	c3                   	ret    

001047d1 <vfs_read_dir>:
  1047d1:	55                   	push   %ebp
  1047d2:	89 e5                	mov    %esp,%ebp
  1047d4:	83 ec 08             	sub    $0x8,%esp
  1047d7:	8b 45 08             	mov    0x8(%ebp),%eax
  1047da:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  1047e0:	83 e0 07             	and    $0x7,%eax
  1047e3:	83 f8 02             	cmp    $0x2,%eax
  1047e6:	75 26                	jne    10480e <vfs_read_dir+0x3d>
  1047e8:	8b 45 08             	mov    0x8(%ebp),%eax
  1047eb:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
  1047f1:	85 c0                	test   %eax,%eax
  1047f3:	74 19                	je     10480e <vfs_read_dir+0x3d>
  1047f5:	8b 45 08             	mov    0x8(%ebp),%eax
  1047f8:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
  1047fe:	83 ec 08             	sub    $0x8,%esp
  104801:	ff 75 0c             	push   0xc(%ebp)
  104804:	ff 75 08             	push   0x8(%ebp)
  104807:	ff d0                	call   *%eax
  104809:	83 c4 10             	add    $0x10,%esp
  10480c:	eb 05                	jmp    104813 <vfs_read_dir+0x42>
  10480e:	b8 00 00 00 00       	mov    $0x0,%eax
  104813:	c9                   	leave  
  104814:	c3                   	ret    

00104815 <vfs_find_dir>:
  104815:	55                   	push   %ebp
  104816:	89 e5                	mov    %esp,%ebp
  104818:	83 ec 08             	sub    $0x8,%esp
  10481b:	8b 45 08             	mov    0x8(%ebp),%eax
  10481e:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  104824:	83 e0 07             	and    $0x7,%eax
  104827:	83 f8 02             	cmp    $0x2,%eax
  10482a:	75 26                	jne    104852 <vfs_find_dir+0x3d>
  10482c:	8b 45 08             	mov    0x8(%ebp),%eax
  10482f:	8b 80 b0 00 00 00    	mov    0xb0(%eax),%eax
  104835:	85 c0                	test   %eax,%eax
  104837:	74 19                	je     104852 <vfs_find_dir+0x3d>
  104839:	8b 45 08             	mov    0x8(%ebp),%eax
  10483c:	8b 80 b0 00 00 00    	mov    0xb0(%eax),%eax
  104842:	83 ec 08             	sub    $0x8,%esp
  104845:	ff 75 0c             	push   0xc(%ebp)
  104848:	ff 75 08             	push   0x8(%ebp)
  10484b:	ff d0                	call   *%eax
  10484d:	83 c4 10             	add    $0x10,%esp
  104850:	eb 05                	jmp    104857 <vfs_find_dir+0x42>
  104852:	b8 00 00 00 00       	mov    $0x0,%eax
  104857:	c9                   	leave  
  104858:	c3                   	ret    

00104859 <initrd_read>:
  104859:	55                   	push   %ebp
  10485a:	89 e5                	mov    %esp,%ebp
  10485c:	57                   	push   %edi
  10485d:	56                   	push   %esi
  10485e:	53                   	push   %ebx
  10485f:	83 ec 5c             	sub    $0x5c,%esp
  104862:	8b 15 c4 ff 12 00    	mov    0x12ffc4,%edx
  104868:	8b 45 08             	mov    0x8(%ebp),%eax
  10486b:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
  104871:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104874:	01 c2                	add    %eax,%edx
  104876:	8d 45 9c             	lea    -0x64(%ebp),%eax
  104879:	89 d3                	mov    %edx,%ebx
  10487b:	ba 13 00 00 00       	mov    $0x13,%edx
  104880:	89 c7                	mov    %eax,%edi
  104882:	89 de                	mov    %ebx,%esi
  104884:	89 d1                	mov    %edx,%ecx
  104886:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  104888:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10488b:	39 45 0c             	cmp    %eax,0xc(%ebp)
  10488e:	76 07                	jbe    104897 <initrd_read+0x3e>
  104890:	b8 00 00 00 00       	mov    $0x0,%eax
  104895:	eb 35                	jmp    1048cc <initrd_read+0x73>
  104897:	8b 55 0c             	mov    0xc(%ebp),%edx
  10489a:	8b 45 10             	mov    0x10(%ebp),%eax
  10489d:	01 c2                	add    %eax,%edx
  10489f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1048a2:	39 c2                	cmp    %eax,%edx
  1048a4:	76 09                	jbe    1048af <initrd_read+0x56>
  1048a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1048a9:	2b 45 0c             	sub    0xc(%ebp),%eax
  1048ac:	89 45 10             	mov    %eax,0x10(%ebp)
  1048af:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1048b2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1048b5:	01 d0                	add    %edx,%eax
  1048b7:	83 ec 04             	sub    $0x4,%esp
  1048ba:	ff 75 10             	push   0x10(%ebp)
  1048bd:	50                   	push   %eax
  1048be:	ff 75 14             	push   0x14(%ebp)
  1048c1:	e8 7d 39 00 00       	call   108243 <memcpy>
  1048c6:	83 c4 10             	add    $0x10,%esp
  1048c9:	8b 45 10             	mov    0x10(%ebp),%eax
  1048cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1048cf:	5b                   	pop    %ebx
  1048d0:	5e                   	pop    %esi
  1048d1:	5f                   	pop    %edi
  1048d2:	5d                   	pop    %ebp
  1048d3:	c3                   	ret    

001048d4 <initrd_readdir>:
  1048d4:	55                   	push   %ebp
  1048d5:	89 e5                	mov    %esp,%ebp
  1048d7:	83 ec 08             	sub    $0x8,%esp
  1048da:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  1048df:	39 45 08             	cmp    %eax,0x8(%ebp)
  1048e2:	75 38                	jne    10491c <initrd_readdir+0x48>
  1048e4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1048e8:	75 32                	jne    10491c <initrd_readdir+0x48>
  1048ea:	83 ec 04             	sub    $0x4,%esp
  1048ed:	6a 03                	push   $0x3
  1048ef:	68 24 97 10 00       	push   $0x109724
  1048f4:	68 e0 ff 12 00       	push   $0x12ffe0
  1048f9:	e8 45 39 00 00       	call   108243 <memcpy>
  1048fe:	83 c4 10             	add    $0x10,%esp
  104901:	c6 05 e3 ff 12 00 00 	movb   $0x0,0x12ffe3
  104908:	c7 05 60 00 13 00 00 	movl   $0x0,0x130060
  10490f:	00 00 00 
  104912:	b8 e0 ff 12 00       	mov    $0x12ffe0,%eax
  104917:	e9 b3 00 00 00       	jmp    1049cf <initrd_readdir+0xfb>
  10491c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10491f:	8d 50 ff             	lea    -0x1(%eax),%edx
  104922:	a1 d4 ff 12 00       	mov    0x12ffd4,%eax
  104927:	39 c2                	cmp    %eax,%edx
  104929:	72 0a                	jb     104935 <initrd_readdir+0x61>
  10492b:	b8 00 00 00 00       	mov    $0x0,%eax
  104930:	e9 9a 00 00 00       	jmp    1049cf <initrd_readdir+0xfb>
  104935:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  10493b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10493e:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104944:	2d b8 00 00 00       	sub    $0xb8,%eax
  104949:	01 d0                	add    %edx,%eax
  10494b:	83 ec 0c             	sub    $0xc,%esp
  10494e:	50                   	push   %eax
  10494f:	e8 db 39 00 00       	call   10832f <strlen>
  104954:	83 c4 10             	add    $0x10,%esp
  104957:	8b 0d d0 ff 12 00    	mov    0x12ffd0,%ecx
  10495d:	8b 55 0c             	mov    0xc(%ebp),%edx
  104960:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104966:	81 ea b8 00 00 00    	sub    $0xb8,%edx
  10496c:	01 ca                	add    %ecx,%edx
  10496e:	83 ec 04             	sub    $0x4,%esp
  104971:	50                   	push   %eax
  104972:	52                   	push   %edx
  104973:	68 e0 ff 12 00       	push   $0x12ffe0
  104978:	e8 c6 38 00 00       	call   108243 <memcpy>
  10497d:	83 c4 10             	add    $0x10,%esp
  104980:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104986:	8b 45 0c             	mov    0xc(%ebp),%eax
  104989:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  10498f:	2d b8 00 00 00       	sub    $0xb8,%eax
  104994:	01 d0                	add    %edx,%eax
  104996:	83 ec 0c             	sub    $0xc,%esp
  104999:	50                   	push   %eax
  10499a:	e8 90 39 00 00       	call   10832f <strlen>
  10499f:	83 c4 10             	add    $0x10,%esp
  1049a2:	c6 80 e0 ff 12 00 00 	movb   $0x0,0x12ffe0(%eax)
  1049a9:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  1049af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1049b2:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  1049b8:	2d b8 00 00 00       	sub    $0xb8,%eax
  1049bd:	01 d0                	add    %edx,%eax
  1049bf:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
  1049c5:	a3 60 00 13 00       	mov    %eax,0x130060
  1049ca:	b8 e0 ff 12 00       	mov    $0x12ffe0,%eax
  1049cf:	c9                   	leave  
  1049d0:	c3                   	ret    

001049d1 <initrd_finddir>:
  1049d1:	55                   	push   %ebp
  1049d2:	89 e5                	mov    %esp,%ebp
  1049d4:	83 ec 18             	sub    $0x18,%esp
  1049d7:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  1049dc:	39 45 08             	cmp    %eax,0x8(%ebp)
  1049df:	75 20                	jne    104a01 <initrd_finddir+0x30>
  1049e1:	83 ec 04             	sub    $0x4,%esp
  1049e4:	6a 03                	push   $0x3
  1049e6:	68 24 97 10 00       	push   $0x109724
  1049eb:	ff 75 0c             	push   0xc(%ebp)
  1049ee:	e8 e0 37 00 00       	call   1081d3 <memcmp>
  1049f3:	83 c4 10             	add    $0x10,%esp
  1049f6:	85 c0                	test   %eax,%eax
  1049f8:	75 07                	jne    104a01 <initrd_finddir+0x30>
  1049fa:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  1049ff:	eb 71                	jmp    104a72 <initrd_finddir+0xa1>
  104a01:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104a08:	eb 59                	jmp    104a63 <initrd_finddir+0x92>
  104a0a:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104a10:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a13:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a19:	01 d0                	add    %edx,%eax
  104a1b:	83 ec 0c             	sub    $0xc,%esp
  104a1e:	50                   	push   %eax
  104a1f:	e8 0b 39 00 00       	call   10832f <strlen>
  104a24:	83 c4 10             	add    $0x10,%esp
  104a27:	8b 0d d0 ff 12 00    	mov    0x12ffd0,%ecx
  104a2d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104a30:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104a36:	01 ca                	add    %ecx,%edx
  104a38:	83 ec 04             	sub    $0x4,%esp
  104a3b:	50                   	push   %eax
  104a3c:	52                   	push   %edx
  104a3d:	ff 75 0c             	push   0xc(%ebp)
  104a40:	e8 8e 37 00 00       	call   1081d3 <memcmp>
  104a45:	83 c4 10             	add    $0x10,%esp
  104a48:	85 c0                	test   %eax,%eax
  104a4a:	75 13                	jne    104a5f <initrd_finddir+0x8e>
  104a4c:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104a52:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a55:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a5b:	01 d0                	add    %edx,%eax
  104a5d:	eb 13                	jmp    104a72 <initrd_finddir+0xa1>
  104a5f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104a63:	a1 d4 ff 12 00       	mov    0x12ffd4,%eax
  104a68:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104a6b:	72 9d                	jb     104a0a <initrd_finddir+0x39>
  104a6d:	b8 00 00 00 00       	mov    $0x0,%eax
  104a72:	c9                   	leave  
  104a73:	c3                   	ret    

00104a74 <initrd_init>:
  104a74:	55                   	push   %ebp
  104a75:	89 e5                	mov    %esp,%ebp
  104a77:	53                   	push   %ebx
  104a78:	83 ec 14             	sub    $0x14,%esp
  104a7b:	8b 45 08             	mov    0x8(%ebp),%eax
  104a7e:	a3 c0 ff 12 00       	mov    %eax,0x12ffc0
  104a83:	8b 45 08             	mov    0x8(%ebp),%eax
  104a86:	83 c0 04             	add    $0x4,%eax
  104a89:	a3 c4 ff 12 00       	mov    %eax,0x12ffc4
  104a8e:	83 ec 0c             	sub    $0xc,%esp
  104a91:	68 b8 00 00 00       	push   $0xb8
  104a96:	e8 35 15 00 00       	call   105fd0 <kmalloc>
  104a9b:	83 c4 10             	add    $0x10,%esp
  104a9e:	a3 c8 ff 12 00       	mov    %eax,0x12ffc8
  104aa3:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104aa8:	83 ec 04             	sub    $0x4,%esp
  104aab:	68 80 00 00 00       	push   $0x80
  104ab0:	6a 00                	push   $0x0
  104ab2:	50                   	push   %eax
  104ab3:	e8 44 38 00 00       	call   1082fc <memset>
  104ab8:	83 c4 10             	add    $0x10,%esp
  104abb:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104ac0:	83 ec 04             	sub    $0x4,%esp
  104ac3:	6a 07                	push   $0x7
  104ac5:	68 28 97 10 00       	push   $0x109728
  104aca:	50                   	push   %eax
  104acb:	e8 73 37 00 00       	call   108243 <memcpy>
  104ad0:	83 c4 10             	add    $0x10,%esp
  104ad3:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104ad8:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
  104adf:	00 00 00 
  104ae2:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104ae7:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104aee:	00 00 00 
  104af1:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104af6:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
  104afd:	00 00 00 
  104b00:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b05:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
  104b0c:	00 00 00 
  104b0f:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b14:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
  104b1b:	00 00 00 
  104b1e:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b23:	c7 80 8c 00 00 00 02 	movl   $0x2,0x8c(%eax)
  104b2a:	00 00 00 
  104b2d:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b32:	c7 80 9c 00 00 00 00 	movl   $0x0,0x9c(%eax)
  104b39:	00 00 00 
  104b3c:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b41:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104b48:	00 00 00 
  104b4b:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b50:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104b57:	00 00 00 
  104b5a:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b5f:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104b66:	00 00 00 
  104b69:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b6e:	c7 80 ac 00 00 00 d4 	movl   $0x1048d4,0xac(%eax)
  104b75:	48 10 00 
  104b78:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b7d:	c7 80 b0 00 00 00 d1 	movl   $0x1049d1,0xb0(%eax)
  104b84:	49 10 00 
  104b87:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b8c:	c7 80 b4 00 00 00 00 	movl   $0x0,0xb4(%eax)
  104b93:	00 00 00 
  104b96:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104b9b:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104ba2:	00 00 00 
  104ba5:	83 ec 0c             	sub    $0xc,%esp
  104ba8:	68 b8 00 00 00       	push   $0xb8
  104bad:	e8 1e 14 00 00       	call   105fd0 <kmalloc>
  104bb2:	83 c4 10             	add    $0x10,%esp
  104bb5:	a3 cc ff 12 00       	mov    %eax,0x12ffcc
  104bba:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104bbf:	83 ec 04             	sub    $0x4,%esp
  104bc2:	68 80 00 00 00       	push   $0x80
  104bc7:	6a 00                	push   $0x0
  104bc9:	50                   	push   %eax
  104bca:	e8 2d 37 00 00       	call   1082fc <memset>
  104bcf:	83 c4 10             	add    $0x10,%esp
  104bd2:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104bd7:	83 ec 04             	sub    $0x4,%esp
  104bda:	6a 03                	push   $0x3
  104bdc:	68 24 97 10 00       	push   $0x109724
  104be1:	50                   	push   %eax
  104be2:	e8 5c 36 00 00       	call   108243 <memcpy>
  104be7:	83 c4 10             	add    $0x10,%esp
  104bea:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104bef:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
  104bf6:	00 00 00 
  104bf9:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104bfe:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104c05:	00 00 00 
  104c08:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c0d:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104c14:	00 00 00 
  104c17:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c1c:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
  104c23:	00 00 00 
  104c26:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c2b:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
  104c32:	00 00 00 
  104c35:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c3a:	c7 80 8c 00 00 00 02 	movl   $0x2,0x8c(%eax)
  104c41:	00 00 00 
  104c44:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c49:	c7 80 9c 00 00 00 00 	movl   $0x0,0x9c(%eax)
  104c50:	00 00 00 
  104c53:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c58:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104c5f:	00 00 00 
  104c62:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c67:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104c6e:	00 00 00 
  104c71:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c76:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104c7d:	00 00 00 
  104c80:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c85:	c7 80 ac 00 00 00 d4 	movl   $0x1048d4,0xac(%eax)
  104c8c:	48 10 00 
  104c8f:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104c94:	c7 80 b0 00 00 00 d1 	movl   $0x1049d1,0xb0(%eax)
  104c9b:	49 10 00 
  104c9e:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104ca3:	c7 80 b4 00 00 00 00 	movl   $0x0,0xb4(%eax)
  104caa:	00 00 00 
  104cad:	a1 cc ff 12 00       	mov    0x12ffcc,%eax
  104cb2:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104cb9:	00 00 00 
  104cbc:	a1 c0 ff 12 00       	mov    0x12ffc0,%eax
  104cc1:	8b 00                	mov    (%eax),%eax
  104cc3:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104cc9:	83 ec 0c             	sub    $0xc,%esp
  104ccc:	50                   	push   %eax
  104ccd:	e8 fe 12 00 00       	call   105fd0 <kmalloc>
  104cd2:	83 c4 10             	add    $0x10,%esp
  104cd5:	a3 d0 ff 12 00       	mov    %eax,0x12ffd0
  104cda:	a1 c0 ff 12 00       	mov    0x12ffc0,%eax
  104cdf:	8b 00                	mov    (%eax),%eax
  104ce1:	a3 d4 ff 12 00       	mov    %eax,0x12ffd4
  104ce6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104ced:	e9 e7 01 00 00       	jmp    104ed9 <initrd_init+0x465>
  104cf2:	8b 15 c4 ff 12 00    	mov    0x12ffc4,%edx
  104cf8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104cfb:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104cfe:	01 d0                	add    %edx,%eax
  104d00:	8b 48 44             	mov    0x44(%eax),%ecx
  104d03:	8b 15 c4 ff 12 00    	mov    0x12ffc4,%edx
  104d09:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104d0c:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104d0f:	01 d0                	add    %edx,%eax
  104d11:	8b 55 08             	mov    0x8(%ebp),%edx
  104d14:	01 ca                	add    %ecx,%edx
  104d16:	89 50 44             	mov    %edx,0x44(%eax)
  104d19:	8b 15 c4 ff 12 00    	mov    0x12ffc4,%edx
  104d1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104d22:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104d25:	01 d0                	add    %edx,%eax
  104d27:	83 c0 01             	add    $0x1,%eax
  104d2a:	83 ec 0c             	sub    $0xc,%esp
  104d2d:	50                   	push   %eax
  104d2e:	e8 fc 35 00 00       	call   10832f <strlen>
  104d33:	83 c4 10             	add    $0x10,%esp
  104d36:	8b 0d c4 ff 12 00    	mov    0x12ffc4,%ecx
  104d3c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104d3f:	6b d2 4c             	imul   $0x4c,%edx,%edx
  104d42:	01 ca                	add    %ecx,%edx
  104d44:	83 c2 01             	add    $0x1,%edx
  104d47:	8b 1d d0 ff 12 00    	mov    0x12ffd0,%ebx
  104d4d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  104d50:	69 c9 b8 00 00 00    	imul   $0xb8,%ecx,%ecx
  104d56:	01 d9                	add    %ebx,%ecx
  104d58:	83 ec 04             	sub    $0x4,%esp
  104d5b:	50                   	push   %eax
  104d5c:	52                   	push   %edx
  104d5d:	51                   	push   %ecx
  104d5e:	e8 e0 34 00 00       	call   108243 <memcpy>
  104d63:	83 c4 10             	add    $0x10,%esp
  104d66:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104d6c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104d6f:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104d75:	01 c2                	add    %eax,%edx
  104d77:	c7 82 88 00 00 00 00 	movl   $0x0,0x88(%edx)
  104d7e:	00 00 00 
  104d81:	8b 0d d0 ff 12 00    	mov    0x12ffd0,%ecx
  104d87:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104d8a:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104d90:	01 c8                	add    %ecx,%eax
  104d92:	8b 92 88 00 00 00    	mov    0x88(%edx),%edx
  104d98:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
  104d9e:	8b 0d d0 ff 12 00    	mov    0x12ffd0,%ecx
  104da4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104da7:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104dad:	01 ca                	add    %ecx,%edx
  104daf:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  104db5:	89 82 80 00 00 00    	mov    %eax,0x80(%edx)
  104dbb:	8b 15 c4 ff 12 00    	mov    0x12ffc4,%edx
  104dc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104dc4:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104dc7:	01 d0                	add    %edx,%eax
  104dc9:	8b 0d d0 ff 12 00    	mov    0x12ffd0,%ecx
  104dcf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104dd2:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104dd8:	01 ca                	add    %ecx,%edx
  104dda:	8b 40 48             	mov    0x48(%eax),%eax
  104ddd:	89 82 94 00 00 00    	mov    %eax,0x94(%edx)
  104de3:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104de9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104dec:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104df2:	01 c2                	add    %eax,%edx
  104df4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104df7:	89 82 90 00 00 00    	mov    %eax,0x90(%edx)
  104dfd:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104e03:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e06:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e0c:	01 d0                	add    %edx,%eax
  104e0e:	c7 80 8c 00 00 00 01 	movl   $0x1,0x8c(%eax)
  104e15:	00 00 00 
  104e18:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104e1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e21:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e27:	01 d0                	add    %edx,%eax
  104e29:	c7 80 9c 00 00 00 59 	movl   $0x104859,0x9c(%eax)
  104e30:	48 10 00 
  104e33:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104e39:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e3c:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e42:	01 d0                	add    %edx,%eax
  104e44:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104e4b:	00 00 00 
  104e4e:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104e54:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e57:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e5d:	01 d0                	add    %edx,%eax
  104e5f:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
  104e66:	00 00 00 
  104e69:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104e6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e72:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e78:	01 d0                	add    %edx,%eax
  104e7a:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
  104e81:	00 00 00 
  104e84:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104e8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e8d:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e93:	01 d0                	add    %edx,%eax
  104e95:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104e9c:	00 00 00 
  104e9f:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104ea5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ea8:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104eae:	01 d0                	add    %edx,%eax
  104eb0:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104eb7:	00 00 00 
  104eba:	8b 15 d0 ff 12 00    	mov    0x12ffd0,%edx
  104ec0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ec3:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104ec9:	01 d0                	add    %edx,%eax
  104ecb:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104ed2:	00 00 00 
  104ed5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104ed9:	a1 c0 ff 12 00       	mov    0x12ffc0,%eax
  104ede:	8b 00                	mov    (%eax),%eax
  104ee0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104ee3:	0f 82 09 fe ff ff    	jb     104cf2 <initrd_init+0x27e>
  104ee9:	a1 c8 ff 12 00       	mov    0x12ffc8,%eax
  104eee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104ef1:	c9                   	leave  
  104ef2:	c3                   	ret    

00104ef3 <cmos_datetime_to_str>:
  104ef3:	55                   	push   %ebp
  104ef4:	89 e5                	mov    %esp,%ebp
  104ef6:	83 ec 28             	sub    $0x28,%esp
  104ef9:	c6 45 e8 00          	movb   $0x0,-0x18(%ebp)
  104efd:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  104f01:	88 45 eb             	mov    %al,-0x15(%ebp)
  104f04:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  104f08:	88 45 ee             	mov    %al,-0x12(%ebp)
  104f0b:	0f b6 45 ee          	movzbl -0x12(%ebp),%eax
  104f0f:	88 45 f1             	mov    %al,-0xf(%ebp)
  104f12:	0f b6 45 f1          	movzbl -0xf(%ebp),%eax
  104f16:	88 45 f4             	mov    %al,-0xc(%ebp)
  104f19:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
  104f1d:	88 45 f7             	mov    %al,-0x9(%ebp)
  104f20:	83 ec 0c             	sub    $0xc,%esp
  104f23:	8d 45 f5             	lea    -0xb(%ebp),%eax
  104f26:	50                   	push   %eax
  104f27:	e8 0e 27 00 00       	call   10763a <__redirect_printf__>
  104f2c:	83 c4 10             	add    $0x10,%esp
  104f2f:	0f b6 45 0b          	movzbl 0xb(%ebp),%eax
  104f33:	0f b6 c0             	movzbl %al,%eax
  104f36:	0f b6 55 0b          	movzbl 0xb(%ebp),%edx
  104f3a:	80 fa 09             	cmp    $0x9,%dl
  104f3d:	77 07                	ja     104f46 <cmos_datetime_to_str+0x53>
  104f3f:	ba 2f 97 10 00       	mov    $0x10972f,%edx
  104f44:	eb 05                	jmp    104f4b <cmos_datetime_to_str+0x58>
  104f46:	ba 31 97 10 00       	mov    $0x109731,%edx
  104f4b:	83 ec 04             	sub    $0x4,%esp
  104f4e:	50                   	push   %eax
  104f4f:	52                   	push   %edx
  104f50:	68 32 97 10 00       	push   $0x109732
  104f55:	e8 cd 2f 00 00       	call   107f27 <printf>
  104f5a:	83 c4 10             	add    $0x10,%esp
  104f5d:	83 ec 0c             	sub    $0xc,%esp
  104f60:	6a 00                	push   $0x0
  104f62:	e8 d3 26 00 00       	call   10763a <__redirect_printf__>
  104f67:	83 c4 10             	add    $0x10,%esp
  104f6a:	83 ec 0c             	sub    $0xc,%esp
  104f6d:	8d 45 f2             	lea    -0xe(%ebp),%eax
  104f70:	50                   	push   %eax
  104f71:	e8 c4 26 00 00       	call   10763a <__redirect_printf__>
  104f76:	83 c4 10             	add    $0x10,%esp
  104f79:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
  104f7d:	0f b6 c0             	movzbl %al,%eax
  104f80:	0f b6 55 0c          	movzbl 0xc(%ebp),%edx
  104f84:	80 fa 09             	cmp    $0x9,%dl
  104f87:	77 07                	ja     104f90 <cmos_datetime_to_str+0x9d>
  104f89:	ba 2f 97 10 00       	mov    $0x10972f,%edx
  104f8e:	eb 05                	jmp    104f95 <cmos_datetime_to_str+0xa2>
  104f90:	ba 31 97 10 00       	mov    $0x109731,%edx
  104f95:	83 ec 04             	sub    $0x4,%esp
  104f98:	50                   	push   %eax
  104f99:	52                   	push   %edx
  104f9a:	68 32 97 10 00       	push   $0x109732
  104f9f:	e8 83 2f 00 00       	call   107f27 <printf>
  104fa4:	83 c4 10             	add    $0x10,%esp
  104fa7:	83 ec 0c             	sub    $0xc,%esp
  104faa:	6a 00                	push   $0x0
  104fac:	e8 89 26 00 00       	call   10763a <__redirect_printf__>
  104fb1:	83 c4 10             	add    $0x10,%esp
  104fb4:	83 ec 0c             	sub    $0xc,%esp
  104fb7:	8d 45 ef             	lea    -0x11(%ebp),%eax
  104fba:	50                   	push   %eax
  104fbb:	e8 7a 26 00 00       	call   10763a <__redirect_printf__>
  104fc0:	83 c4 10             	add    $0x10,%esp
  104fc3:	0f b6 45 0d          	movzbl 0xd(%ebp),%eax
  104fc7:	0f b6 c0             	movzbl %al,%eax
  104fca:	0f b6 55 0d          	movzbl 0xd(%ebp),%edx
  104fce:	80 fa 09             	cmp    $0x9,%dl
  104fd1:	77 07                	ja     104fda <cmos_datetime_to_str+0xe7>
  104fd3:	ba 2f 97 10 00       	mov    $0x10972f,%edx
  104fd8:	eb 05                	jmp    104fdf <cmos_datetime_to_str+0xec>
  104fda:	ba 31 97 10 00       	mov    $0x109731,%edx
  104fdf:	83 ec 04             	sub    $0x4,%esp
  104fe2:	50                   	push   %eax
  104fe3:	52                   	push   %edx
  104fe4:	68 32 97 10 00       	push   $0x109732
  104fe9:	e8 39 2f 00 00       	call   107f27 <printf>
  104fee:	83 c4 10             	add    $0x10,%esp
  104ff1:	83 ec 0c             	sub    $0xc,%esp
  104ff4:	6a 00                	push   $0x0
  104ff6:	e8 3f 26 00 00       	call   10763a <__redirect_printf__>
  104ffb:	83 c4 10             	add    $0x10,%esp
  104ffe:	83 ec 0c             	sub    $0xc,%esp
  105001:	8d 45 ec             	lea    -0x14(%ebp),%eax
  105004:	50                   	push   %eax
  105005:	e8 30 26 00 00       	call   10763a <__redirect_printf__>
  10500a:	83 c4 10             	add    $0x10,%esp
  10500d:	0f b6 45 0a          	movzbl 0xa(%ebp),%eax
  105011:	0f b6 c0             	movzbl %al,%eax
  105014:	0f b6 55 0a          	movzbl 0xa(%ebp),%edx
  105018:	80 fa 09             	cmp    $0x9,%dl
  10501b:	77 07                	ja     105024 <cmos_datetime_to_str+0x131>
  10501d:	ba 2f 97 10 00       	mov    $0x10972f,%edx
  105022:	eb 05                	jmp    105029 <cmos_datetime_to_str+0x136>
  105024:	ba 31 97 10 00       	mov    $0x109731,%edx
  105029:	83 ec 04             	sub    $0x4,%esp
  10502c:	50                   	push   %eax
  10502d:	52                   	push   %edx
  10502e:	68 32 97 10 00       	push   $0x109732
  105033:	e8 ef 2e 00 00       	call   107f27 <printf>
  105038:	83 c4 10             	add    $0x10,%esp
  10503b:	83 ec 0c             	sub    $0xc,%esp
  10503e:	6a 00                	push   $0x0
  105040:	e8 f5 25 00 00       	call   10763a <__redirect_printf__>
  105045:	83 c4 10             	add    $0x10,%esp
  105048:	83 ec 0c             	sub    $0xc,%esp
  10504b:	8d 45 e9             	lea    -0x17(%ebp),%eax
  10504e:	50                   	push   %eax
  10504f:	e8 e6 25 00 00       	call   10763a <__redirect_printf__>
  105054:	83 c4 10             	add    $0x10,%esp
  105057:	0f b6 45 09          	movzbl 0x9(%ebp),%eax
  10505b:	0f b6 c0             	movzbl %al,%eax
  10505e:	0f b6 55 09          	movzbl 0x9(%ebp),%edx
  105062:	80 fa 09             	cmp    $0x9,%dl
  105065:	77 07                	ja     10506e <cmos_datetime_to_str+0x17b>
  105067:	ba 2f 97 10 00       	mov    $0x10972f,%edx
  10506c:	eb 05                	jmp    105073 <cmos_datetime_to_str+0x180>
  10506e:	ba 31 97 10 00       	mov    $0x109731,%edx
  105073:	83 ec 04             	sub    $0x4,%esp
  105076:	50                   	push   %eax
  105077:	52                   	push   %edx
  105078:	68 32 97 10 00       	push   $0x109732
  10507d:	e8 a5 2e 00 00       	call   107f27 <printf>
  105082:	83 c4 10             	add    $0x10,%esp
  105085:	83 ec 0c             	sub    $0xc,%esp
  105088:	6a 00                	push   $0x0
  10508a:	e8 ab 25 00 00       	call   10763a <__redirect_printf__>
  10508f:	83 c4 10             	add    $0x10,%esp
  105092:	83 ec 0c             	sub    $0xc,%esp
  105095:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  105098:	50                   	push   %eax
  105099:	e8 9c 25 00 00       	call   10763a <__redirect_printf__>
  10509e:	83 c4 10             	add    $0x10,%esp
  1050a1:	0f b6 45 08          	movzbl 0x8(%ebp),%eax
  1050a5:	0f b6 c0             	movzbl %al,%eax
  1050a8:	0f b6 55 08          	movzbl 0x8(%ebp),%edx
  1050ac:	80 fa 09             	cmp    $0x9,%dl
  1050af:	77 07                	ja     1050b8 <cmos_datetime_to_str+0x1c5>
  1050b1:	ba 2f 97 10 00       	mov    $0x10972f,%edx
  1050b6:	eb 05                	jmp    1050bd <cmos_datetime_to_str+0x1ca>
  1050b8:	ba 31 97 10 00       	mov    $0x109731,%edx
  1050bd:	83 ec 04             	sub    $0x4,%esp
  1050c0:	50                   	push   %eax
  1050c1:	52                   	push   %edx
  1050c2:	68 32 97 10 00       	push   $0x109732
  1050c7:	e8 5b 2e 00 00       	call   107f27 <printf>
  1050cc:	83 c4 10             	add    $0x10,%esp
  1050cf:	83 ec 0c             	sub    $0xc,%esp
  1050d2:	6a 00                	push   $0x0
  1050d4:	e8 61 25 00 00       	call   10763a <__redirect_printf__>
  1050d9:	83 c4 10             	add    $0x10,%esp
  1050dc:	83 ec 0c             	sub    $0xc,%esp
  1050df:	ff 75 10             	push   0x10(%ebp)
  1050e2:	e8 53 25 00 00       	call   10763a <__redirect_printf__>
  1050e7:	83 c4 10             	add    $0x10,%esp
  1050ea:	83 ec 04             	sub    $0x4,%esp
  1050ed:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  1050f0:	50                   	push   %eax
  1050f1:	8d 45 e9             	lea    -0x17(%ebp),%eax
  1050f4:	50                   	push   %eax
  1050f5:	8d 45 ec             	lea    -0x14(%ebp),%eax
  1050f8:	50                   	push   %eax
  1050f9:	8d 45 ef             	lea    -0x11(%ebp),%eax
  1050fc:	50                   	push   %eax
  1050fd:	8d 45 f2             	lea    -0xe(%ebp),%eax
  105100:	50                   	push   %eax
  105101:	8d 45 f5             	lea    -0xb(%ebp),%eax
  105104:	50                   	push   %eax
  105105:	68 37 97 10 00       	push   $0x109737
  10510a:	e8 18 2e 00 00       	call   107f27 <printf>
  10510f:	83 c4 20             	add    $0x20,%esp
  105112:	83 ec 0c             	sub    $0xc,%esp
  105115:	6a 00                	push   $0x0
  105117:	e8 1e 25 00 00       	call   10763a <__redirect_printf__>
  10511c:	83 c4 10             	add    $0x10,%esp
  10511f:	90                   	nop
  105120:	c9                   	leave  
  105121:	c3                   	ret    

00105122 <sleep>:
  105122:	55                   	push   %ebp
  105123:	89 e5                	mov    %esp,%ebp
  105125:	83 ec 18             	sub    $0x18,%esp
  105128:	e8 a4 eb ff ff       	call   103cd1 <pit_get_millis>
  10512d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105130:	90                   	nop
  105131:	e8 9b eb ff ff       	call   103cd1 <pit_get_millis>
  105136:	2b 45 f4             	sub    -0xc(%ebp),%eax
  105139:	39 45 08             	cmp    %eax,0x8(%ebp)
  10513c:	77 f3                	ja     105131 <sleep+0xf>
  10513e:	90                   	nop
  10513f:	90                   	nop
  105140:	c9                   	leave  
  105141:	c3                   	ret    

00105142 <standard_lessthan_predicate>:
  105142:	55                   	push   %ebp
  105143:	89 e5                	mov    %esp,%ebp
  105145:	8b 45 08             	mov    0x8(%ebp),%eax
  105148:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10514b:	0f 92 c0             	setb   %al
  10514e:	5d                   	pop    %ebp
  10514f:	c3                   	ret    

00105150 <ordered_array_new>:
  105150:	55                   	push   %ebp
  105151:	89 e5                	mov    %esp,%ebp
  105153:	83 ec 18             	sub    $0x18,%esp
  105156:	8b 45 0c             	mov    0xc(%ebp),%eax
  105159:	c1 e0 02             	shl    $0x2,%eax
  10515c:	83 ec 0c             	sub    $0xc,%esp
  10515f:	50                   	push   %eax
  105160:	e8 6b 0e 00 00       	call   105fd0 <kmalloc>
  105165:	83 c4 10             	add    $0x10,%esp
  105168:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10516b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10516e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  105175:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105178:	83 ec 04             	sub    $0x4,%esp
  10517b:	52                   	push   %edx
  10517c:	6a 00                	push   $0x0
  10517e:	50                   	push   %eax
  10517f:	e8 78 31 00 00       	call   1082fc <memset>
  105184:	83 c4 10             	add    $0x10,%esp
  105187:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10518e:	8b 45 0c             	mov    0xc(%ebp),%eax
  105191:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105194:	8b 45 10             	mov    0x10(%ebp),%eax
  105197:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10519a:	8b 45 08             	mov    0x8(%ebp),%eax
  10519d:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1051a0:	89 10                	mov    %edx,(%eax)
  1051a2:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1051a5:	89 50 04             	mov    %edx,0x4(%eax)
  1051a8:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1051ab:	89 50 08             	mov    %edx,0x8(%eax)
  1051ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1051b1:	89 50 0c             	mov    %edx,0xc(%eax)
  1051b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1051b7:	c9                   	leave  
  1051b8:	c2 04 00             	ret    $0x4

001051bb <ordered_array_new_at>:
  1051bb:	55                   	push   %ebp
  1051bc:	89 e5                	mov    %esp,%ebp
  1051be:	83 ec 18             	sub    $0x18,%esp
  1051c1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1051c4:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1051c7:	8b 45 10             	mov    0x10(%ebp),%eax
  1051ca:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1051d1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1051d4:	83 ec 04             	sub    $0x4,%esp
  1051d7:	52                   	push   %edx
  1051d8:	6a 00                	push   $0x0
  1051da:	50                   	push   %eax
  1051db:	e8 1c 31 00 00       	call   1082fc <memset>
  1051e0:	83 c4 10             	add    $0x10,%esp
  1051e3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1051ea:	8b 45 10             	mov    0x10(%ebp),%eax
  1051ed:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1051f0:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1051f4:	74 05                	je     1051fb <ordered_array_new_at+0x40>
  1051f6:	8b 45 14             	mov    0x14(%ebp),%eax
  1051f9:	eb 05                	jmp    105200 <ordered_array_new_at+0x45>
  1051fb:	b8 42 51 10 00       	mov    $0x105142,%eax
  105200:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105203:	8b 45 08             	mov    0x8(%ebp),%eax
  105206:	8b 55 e8             	mov    -0x18(%ebp),%edx
  105209:	89 10                	mov    %edx,(%eax)
  10520b:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10520e:	89 50 04             	mov    %edx,0x4(%eax)
  105211:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105214:	89 50 08             	mov    %edx,0x8(%eax)
  105217:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10521a:	89 50 0c             	mov    %edx,0xc(%eax)
  10521d:	8b 45 08             	mov    0x8(%ebp),%eax
  105220:	c9                   	leave  
  105221:	c2 04 00             	ret    $0x4

00105224 <ordered_array_delete>:
  105224:	55                   	push   %ebp
  105225:	89 e5                	mov    %esp,%ebp
  105227:	83 ec 08             	sub    $0x8,%esp
  10522a:	83 ec 0c             	sub    $0xc,%esp
  10522d:	ff 75 08             	push   0x8(%ebp)
  105230:	e8 3b 0e 00 00       	call   106070 <kfree>
  105235:	83 c4 10             	add    $0x10,%esp
  105238:	90                   	nop
  105239:	c9                   	leave  
  10523a:	c3                   	ret    

0010523b <ordered_array_insert>:
  10523b:	55                   	push   %ebp
  10523c:	89 e5                	mov    %esp,%ebp
  10523e:	83 ec 18             	sub    $0x18,%esp
  105241:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105248:	eb 2e                	jmp    105278 <ordered_array_insert+0x3d>
  10524a:	8b 45 08             	mov    0x8(%ebp),%eax
  10524d:	8b 10                	mov    (%eax),%edx
  10524f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105252:	c1 e0 02             	shl    $0x2,%eax
  105255:	01 d0                	add    %edx,%eax
  105257:	8b 00                	mov    (%eax),%eax
  105259:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10525c:	8b 45 08             	mov    0x8(%ebp),%eax
  10525f:	8b 40 0c             	mov    0xc(%eax),%eax
  105262:	83 ec 08             	sub    $0x8,%esp
  105265:	ff 75 ec             	push   -0x14(%ebp)
  105268:	ff 75 0c             	push   0xc(%ebp)
  10526b:	ff d0                	call   *%eax
  10526d:	83 c4 10             	add    $0x10,%esp
  105270:	84 c0                	test   %al,%al
  105272:	75 11                	jne    105285 <ordered_array_insert+0x4a>
  105274:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105278:	8b 45 08             	mov    0x8(%ebp),%eax
  10527b:	8b 40 04             	mov    0x4(%eax),%eax
  10527e:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105281:	72 c7                	jb     10524a <ordered_array_insert+0xf>
  105283:	eb 01                	jmp    105286 <ordered_array_insert+0x4b>
  105285:	90                   	nop
  105286:	8b 45 08             	mov    0x8(%ebp),%eax
  105289:	8b 40 04             	mov    0x4(%eax),%eax
  10528c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10528f:	75 32                	jne    1052c3 <ordered_array_insert+0x88>
  105291:	8b 45 08             	mov    0x8(%ebp),%eax
  105294:	8b 40 08             	mov    0x8(%eax),%eax
  105297:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10529a:	0f 83 8f 00 00 00    	jae    10532f <ordered_array_insert+0xf4>
  1052a0:	8b 45 08             	mov    0x8(%ebp),%eax
  1052a3:	8b 40 04             	mov    0x4(%eax),%eax
  1052a6:	8d 50 01             	lea    0x1(%eax),%edx
  1052a9:	8b 45 08             	mov    0x8(%ebp),%eax
  1052ac:	89 50 04             	mov    %edx,0x4(%eax)
  1052af:	8b 45 08             	mov    0x8(%ebp),%eax
  1052b2:	8b 10                	mov    (%eax),%edx
  1052b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1052b7:	c1 e0 02             	shl    $0x2,%eax
  1052ba:	01 c2                	add    %eax,%edx
  1052bc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1052bf:	89 02                	mov    %eax,(%edx)
  1052c1:	eb 6c                	jmp    10532f <ordered_array_insert+0xf4>
  1052c3:	8b 45 08             	mov    0x8(%ebp),%eax
  1052c6:	8b 50 04             	mov    0x4(%eax),%edx
  1052c9:	8b 45 08             	mov    0x8(%ebp),%eax
  1052cc:	8b 40 08             	mov    0x8(%eax),%eax
  1052cf:	39 c2                	cmp    %eax,%edx
  1052d1:	73 5c                	jae    10532f <ordered_array_insert+0xf4>
  1052d3:	8b 45 08             	mov    0x8(%ebp),%eax
  1052d6:	8b 40 04             	mov    0x4(%eax),%eax
  1052d9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1052dc:	eb 28                	jmp    105306 <ordered_array_insert+0xcb>
  1052de:	8b 45 08             	mov    0x8(%ebp),%eax
  1052e1:	8b 10                	mov    (%eax),%edx
  1052e3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1052e6:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
  1052eb:	c1 e0 02             	shl    $0x2,%eax
  1052ee:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  1052f1:	8b 45 08             	mov    0x8(%ebp),%eax
  1052f4:	8b 10                	mov    (%eax),%edx
  1052f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1052f9:	c1 e0 02             	shl    $0x2,%eax
  1052fc:	01 c2                	add    %eax,%edx
  1052fe:	8b 01                	mov    (%ecx),%eax
  105300:	89 02                	mov    %eax,(%edx)
  105302:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  105306:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105309:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  10530c:	77 d0                	ja     1052de <ordered_array_insert+0xa3>
  10530e:	8b 45 08             	mov    0x8(%ebp),%eax
  105311:	8b 10                	mov    (%eax),%edx
  105313:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105316:	c1 e0 02             	shl    $0x2,%eax
  105319:	01 c2                	add    %eax,%edx
  10531b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10531e:	89 02                	mov    %eax,(%edx)
  105320:	8b 45 08             	mov    0x8(%ebp),%eax
  105323:	8b 40 04             	mov    0x4(%eax),%eax
  105326:	8d 50 01             	lea    0x1(%eax),%edx
  105329:	8b 45 08             	mov    0x8(%ebp),%eax
  10532c:	89 50 04             	mov    %edx,0x4(%eax)
  10532f:	90                   	nop
  105330:	c9                   	leave  
  105331:	c3                   	ret    

00105332 <ordered_array_delete_at>:
  105332:	55                   	push   %ebp
  105333:	89 e5                	mov    %esp,%ebp
  105335:	83 ec 18             	sub    $0x18,%esp
  105338:	8b 45 0c             	mov    0xc(%ebp),%eax
  10533b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10533e:	8b 45 10             	mov    0x10(%ebp),%eax
  105341:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105344:	8b 45 08             	mov    0x8(%ebp),%eax
  105347:	8b 40 04             	mov    0x4(%eax),%eax
  10534a:	85 c0                	test   %eax,%eax
  10534c:	74 4e                	je     10539c <ordered_array_delete_at+0x6a>
  10534e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  105352:	78 48                	js     10539c <ordered_array_delete_at+0x6a>
  105354:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105357:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10535a:	eb 26                	jmp    105382 <ordered_array_delete_at+0x50>
  10535c:	8b 45 08             	mov    0x8(%ebp),%eax
  10535f:	8b 10                	mov    (%eax),%edx
  105361:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105364:	83 c0 01             	add    $0x1,%eax
  105367:	c1 e0 02             	shl    $0x2,%eax
  10536a:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10536d:	8b 45 08             	mov    0x8(%ebp),%eax
  105370:	8b 10                	mov    (%eax),%edx
  105372:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105375:	c1 e0 02             	shl    $0x2,%eax
  105378:	01 c2                	add    %eax,%edx
  10537a:	8b 01                	mov    (%ecx),%eax
  10537c:	89 02                	mov    %eax,(%edx)
  10537e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  105382:	8b 45 08             	mov    0x8(%ebp),%eax
  105385:	8b 40 04             	mov    0x4(%eax),%eax
  105388:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10538b:	72 cf                	jb     10535c <ordered_array_delete_at+0x2a>
  10538d:	8b 45 08             	mov    0x8(%ebp),%eax
  105390:	8b 40 04             	mov    0x4(%eax),%eax
  105393:	8d 50 ff             	lea    -0x1(%eax),%edx
  105396:	8b 45 08             	mov    0x8(%ebp),%eax
  105399:	89 50 04             	mov    %edx,0x4(%eax)
  10539c:	90                   	nop
  10539d:	c9                   	leave  
  10539e:	c3                   	ret    

0010539f <ordered_array_at>:
  10539f:	55                   	push   %ebp
  1053a0:	89 e5                	mov    %esp,%ebp
  1053a2:	83 ec 08             	sub    $0x8,%esp
  1053a5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1053a8:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1053ab:	8b 45 10             	mov    0x10(%ebp),%eax
  1053ae:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1053b1:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1053b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1053b7:	8b 40 04             	mov    0x4(%eax),%eax
  1053ba:	39 c2                	cmp    %eax,%edx
  1053bc:	73 17                	jae    1053d5 <ordered_array_at+0x36>
  1053be:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  1053c2:	78 11                	js     1053d5 <ordered_array_at+0x36>
  1053c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1053c7:	8b 10                	mov    (%eax),%edx
  1053c9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1053cc:	c1 e0 02             	shl    $0x2,%eax
  1053cf:	01 d0                	add    %edx,%eax
  1053d1:	8b 00                	mov    (%eax),%eax
  1053d3:	eb 05                	jmp    1053da <ordered_array_at+0x3b>
  1053d5:	b8 00 00 00 00       	mov    $0x0,%eax
  1053da:	c9                   	leave  
  1053db:	c3                   	ret    

001053dc <ordered_array_index_of>:
  1053dc:	55                   	push   %ebp
  1053dd:	89 e5                	mov    %esp,%ebp
  1053df:	83 ec 10             	sub    $0x10,%esp
  1053e2:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
  1053e9:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  1053f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1053f7:	eb 27                	jmp    105420 <ordered_array_index_of+0x44>
  1053f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1053fc:	8b 10                	mov    (%eax),%edx
  1053fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105401:	c1 e0 02             	shl    $0x2,%eax
  105404:	01 d0                	add    %edx,%eax
  105406:	8b 00                	mov    (%eax),%eax
  105408:	39 45 0c             	cmp    %eax,0xc(%ebp)
  10540b:	75 0f                	jne    10541c <ordered_array_index_of+0x40>
  10540d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105410:	89 45 f8             	mov    %eax,-0x8(%ebp)
  105413:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10541a:	eb 0f                	jmp    10542b <ordered_array_index_of+0x4f>
  10541c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105420:	8b 45 08             	mov    0x8(%ebp),%eax
  105423:	8b 40 04             	mov    0x4(%eax),%eax
  105426:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105429:	72 ce                	jb     1053f9 <ordered_array_index_of+0x1d>
  10542b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10542e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  105431:	c9                   	leave  
  105432:	c3                   	ret    

00105433 <merge_available_blocks>:
  105433:	55                   	push   %ebp
  105434:	89 e5                	mov    %esp,%ebp
  105436:	83 ec 38             	sub    $0x38,%esp
  105439:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105440:	e9 84 00 00 00       	jmp    1054c9 <merge_available_blocks+0x96>
  105445:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105448:	ba 00 00 00 00       	mov    $0x0,%edx
  10544d:	83 ec 04             	sub    $0x4,%esp
  105450:	52                   	push   %edx
  105451:	50                   	push   %eax
  105452:	68 80 08 13 00       	push   $0x130880
  105457:	e8 43 ff ff ff       	call   10539f <ordered_array_at>
  10545c:	83 c4 10             	add    $0x10,%esp
  10545f:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105462:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105465:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105469:	84 c0                	test   %al,%al
  10546b:	75 58                	jne    1054c5 <merge_available_blocks+0x92>
  10546d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105470:	83 c0 01             	add    $0x1,%eax
  105473:	89 45 dc             	mov    %eax,-0x24(%ebp)
  105476:	8b 45 dc             	mov    -0x24(%ebp),%eax
  105479:	ba 00 00 00 00       	mov    $0x0,%edx
  10547e:	83 ec 04             	sub    $0x4,%esp
  105481:	52                   	push   %edx
  105482:	50                   	push   %eax
  105483:	68 80 08 13 00       	push   $0x130880
  105488:	e8 12 ff ff ff       	call   10539f <ordered_array_at>
  10548d:	83 c4 10             	add    $0x10,%esp
  105490:	89 45 d8             	mov    %eax,-0x28(%ebp)
  105493:	eb 1b                	jmp    1054b0 <merge_available_blocks+0x7d>
  105495:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105498:	8b 50 04             	mov    0x4(%eax),%edx
  10549b:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10549e:	8b 40 04             	mov    0x4(%eax),%eax
  1054a1:	01 c2                	add    %eax,%edx
  1054a3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1054a6:	89 50 04             	mov    %edx,0x4(%eax)
  1054a9:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1054ac:	c6 40 08 02          	movb   $0x2,0x8(%eax)
  1054b0:	a1 84 08 13 00       	mov    0x130884,%eax
  1054b5:	39 45 dc             	cmp    %eax,-0x24(%ebp)
  1054b8:	73 0b                	jae    1054c5 <merge_available_blocks+0x92>
  1054ba:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1054bd:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  1054c1:	84 c0                	test   %al,%al
  1054c3:	74 d0                	je     105495 <merge_available_blocks+0x62>
  1054c5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1054c9:	a1 84 08 13 00       	mov    0x130884,%eax
  1054ce:	83 e8 01             	sub    $0x1,%eax
  1054d1:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1054d4:	0f 82 6b ff ff ff    	jb     105445 <merge_available_blocks+0x12>
  1054da:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1054e1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1054e8:	83 ec 04             	sub    $0x4,%esp
  1054eb:	ff 75 ec             	push   -0x14(%ebp)
  1054ee:	ff 75 e8             	push   -0x18(%ebp)
  1054f1:	68 80 08 13 00       	push   $0x130880
  1054f6:	e8 a4 fe ff ff       	call   10539f <ordered_array_at>
  1054fb:	83 c4 10             	add    $0x10,%esp
  1054fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105501:	eb 5d                	jmp    105560 <merge_available_blocks+0x12d>
  105503:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  105506:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  10550a:	3c 02                	cmp    $0x2,%al
  10550c:	75 31                	jne    10553f <merge_available_blocks+0x10c>
  10550e:	83 ec 04             	sub    $0x4,%esp
  105511:	ff 75 ec             	push   -0x14(%ebp)
  105514:	ff 75 e8             	push   -0x18(%ebp)
  105517:	68 80 08 13 00       	push   $0x130880
  10551c:	e8 11 fe ff ff       	call   105332 <ordered_array_delete_at>
  105521:	83 c4 10             	add    $0x10,%esp
  105524:	83 ec 04             	sub    $0x4,%esp
  105527:	ff 75 ec             	push   -0x14(%ebp)
  10552a:	ff 75 e8             	push   -0x18(%ebp)
  10552d:	68 80 08 13 00       	push   $0x130880
  105532:	e8 68 fe ff ff       	call   10539f <ordered_array_at>
  105537:	83 c4 10             	add    $0x10,%esp
  10553a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10553d:	eb 21                	jmp    105560 <merge_available_blocks+0x12d>
  10553f:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  105543:	83 55 ec 00          	adcl   $0x0,-0x14(%ebp)
  105547:	83 ec 04             	sub    $0x4,%esp
  10554a:	ff 75 ec             	push   -0x14(%ebp)
  10554d:	ff 75 e8             	push   -0x18(%ebp)
  105550:	68 80 08 13 00       	push   $0x130880
  105555:	e8 45 fe ff ff       	call   10539f <ordered_array_at>
  10555a:	83 c4 10             	add    $0x10,%esp
  10555d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105560:	a1 84 08 13 00       	mov    0x130884,%eax
  105565:	ba 00 00 00 00       	mov    $0x0,%edx
  10556a:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10556d:	39 45 e8             	cmp    %eax,-0x18(%ebp)
  105570:	19 d1                	sbb    %edx,%ecx
  105572:	7c 8f                	jl     105503 <merge_available_blocks+0xd0>
  105574:	a1 84 08 13 00       	mov    0x130884,%eax
  105579:	83 f8 01             	cmp    $0x1,%eax
  10557c:	0f 85 20 01 00 00    	jne    1056a2 <merge_available_blocks+0x26f>
  105582:	83 ec 04             	sub    $0x4,%esp
  105585:	6a 00                	push   $0x0
  105587:	6a 00                	push   $0x0
  105589:	68 80 08 13 00       	push   $0x130880
  10558e:	e8 0c fe ff ff       	call   10539f <ordered_array_at>
  105593:	83 c4 10             	add    $0x10,%esp
  105596:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  10559a:	84 c0                	test   %al,%al
  10559c:	0f 85 00 01 00 00    	jne    1056a2 <merge_available_blocks+0x26f>
  1055a2:	83 ec 04             	sub    $0x4,%esp
  1055a5:	6a 00                	push   $0x0
  1055a7:	6a 00                	push   $0x0
  1055a9:	68 80 08 13 00       	push   $0x130880
  1055ae:	e8 7f fd ff ff       	call   105332 <ordered_array_delete_at>
  1055b3:	83 c4 10             	add    $0x10,%esp
  1055b6:	83 ec 0c             	sub    $0xc,%esp
  1055b9:	68 80 04 13 00       	push   $0x130480
  1055be:	e8 77 20 00 00       	call   10763a <__redirect_printf__>
  1055c3:	83 c4 10             	add    $0x10,%esp
  1055c6:	83 ec 0c             	sub    $0xc,%esp
  1055c9:	68 4c 97 10 00       	push   $0x10974c
  1055ce:	e8 54 29 00 00       	call   107f27 <printf>
  1055d3:	83 c4 10             	add    $0x10,%esp
  1055d6:	83 ec 0c             	sub    $0xc,%esp
  1055d9:	6a 00                	push   $0x0
  1055db:	e8 5a 20 00 00       	call   10763a <__redirect_printf__>
  1055e0:	83 c4 10             	add    $0x10,%esp
  1055e3:	83 ec 0c             	sub    $0xc,%esp
  1055e6:	8d 45 d2             	lea    -0x2e(%ebp),%eax
  1055e9:	50                   	push   %eax
  1055ea:	e8 d7 d3 ff ff       	call   1029c6 <cmos_read_rtc>
  1055ef:	83 c4 10             	add    $0x10,%esp
  1055f2:	83 ec 04             	sub    $0x4,%esp
  1055f5:	68 6c 08 13 00       	push   $0x13086c
  1055fa:	83 ec 08             	sub    $0x8,%esp
  1055fd:	89 e0                	mov    %esp,%eax
  1055ff:	8b 55 d2             	mov    -0x2e(%ebp),%edx
  105602:	89 10                	mov    %edx,(%eax)
  105604:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
  105608:	66 89 50 04          	mov    %dx,0x4(%eax)
  10560c:	e8 e2 f8 ff ff       	call   104ef3 <cmos_datetime_to_str>
  105611:	83 c4 10             	add    $0x10,%esp
  105614:	83 ec 0c             	sub    $0xc,%esp
  105617:	68 80 00 13 00       	push   $0x130080
  10561c:	e8 19 20 00 00       	call   10763a <__redirect_printf__>
  105621:	83 c4 10             	add    $0x10,%esp
  105624:	83 ec 04             	sub    $0x4,%esp
  105627:	68 80 04 13 00       	push   $0x130480
  10562c:	68 6c 08 13 00       	push   $0x13086c
  105631:	68 80 97 10 00       	push   $0x109780
  105636:	e8 ec 28 00 00       	call   107f27 <printf>
  10563b:	83 c4 10             	add    $0x10,%esp
  10563e:	83 ec 0c             	sub    $0xc,%esp
  105641:	6a 00                	push   $0x0
  105643:	e8 f2 1f 00 00       	call   10763a <__redirect_printf__>
  105648:	83 c4 10             	add    $0x10,%esp
  10564b:	83 ec 08             	sub    $0x8,%esp
  10564e:	68 80 00 13 00       	push   $0x130080
  105653:	68 f8 03 00 00       	push   $0x3f8
  105658:	e8 2d cf ff ff       	call   10258a <com_write>
  10565d:	83 c4 10             	add    $0x10,%esp
  105660:	83 ec 04             	sub    $0x4,%esp
  105663:	68 00 04 00 00       	push   $0x400
  105668:	6a 00                	push   $0x0
  10566a:	68 80 00 13 00       	push   $0x130080
  10566f:	e8 88 2c 00 00       	call   1082fc <memset>
  105674:	83 c4 10             	add    $0x10,%esp
  105677:	83 ec 04             	sub    $0x4,%esp
  10567a:	68 ec 03 00 00       	push   $0x3ec
  10567f:	6a 00                	push   $0x0
  105681:	68 80 04 13 00       	push   $0x130480
  105686:	e8 71 2c 00 00       	call   1082fc <memset>
  10568b:	83 c4 10             	add    $0x10,%esp
  10568e:	83 ec 04             	sub    $0x4,%esp
  105691:	6a 14                	push   $0x14
  105693:	6a 00                	push   $0x0
  105695:	68 6c 08 13 00       	push   $0x13086c
  10569a:	e8 5d 2c 00 00       	call   1082fc <memset>
  10569f:	83 c4 10             	add    $0x10,%esp
  1056a2:	90                   	nop
  1056a3:	c9                   	leave  
  1056a4:	c3                   	ret    

001056a5 <__kheap_malloc_at__>:
  1056a5:	55                   	push   %ebp
  1056a6:	89 e5                	mov    %esp,%ebp
  1056a8:	83 ec 48             	sub    $0x48,%esp
  1056ab:	8b 45 10             	mov    0x10(%ebp),%eax
  1056ae:	88 45 c4             	mov    %al,-0x3c(%ebp)
  1056b1:	8b 45 08             	mov    0x8(%ebp),%eax
  1056b4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1056b7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1056ba:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1056bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1056c0:	83 c0 0c             	add    $0xc,%eax
  1056c3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1056c6:	83 ec 08             	sub    $0x8,%esp
  1056c9:	ff 75 ec             	push   -0x14(%ebp)
  1056cc:	68 80 08 13 00       	push   $0x130880
  1056d1:	e8 06 fd ff ff       	call   1053dc <ordered_array_index_of>
  1056d6:	83 c4 10             	add    $0x10,%esp
  1056d9:	83 ec 04             	sub    $0x4,%esp
  1056dc:	52                   	push   %edx
  1056dd:	50                   	push   %eax
  1056de:	68 80 08 13 00       	push   $0x130880
  1056e3:	e8 4a fc ff ff       	call   105332 <ordered_array_delete_at>
  1056e8:	83 c4 10             	add    $0x10,%esp
  1056eb:	80 7d c4 01          	cmpb   $0x1,-0x3c(%ebp)
  1056ef:	75 1a                	jne    10570b <__kheap_malloc_at__+0x66>
  1056f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1056f4:	25 ff 0f 00 00       	and    $0xfff,%eax
  1056f9:	85 c0                	test   %eax,%eax
  1056fb:	74 0e                	je     10570b <__kheap_malloc_at__+0x66>
  1056fd:	81 65 f4 00 f0 ff ff 	andl   $0xfffff000,-0xc(%ebp)
  105704:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  10570b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10570e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105711:	89 10                	mov    %edx,(%eax)
  105713:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105716:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  10571a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10571d:	2b 45 f0             	sub    -0x10(%ebp),%eax
  105720:	89 c2                	mov    %eax,%edx
  105722:	8b 45 0c             	mov    0xc(%ebp),%eax
  105725:	01 c2                	add    %eax,%edx
  105727:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10572a:	89 50 04             	mov    %edx,0x4(%eax)
  10572d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  105731:	74 58                	je     10578b <__kheap_malloc_at__+0xe6>
  105733:	e8 28 11 00 00       	call   106860 <paging_kernel_page_directory>
  105738:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10573b:	83 ec 04             	sub    $0x4,%esp
  10573e:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  105741:	50                   	push   %eax
  105742:	8d 45 d8             	lea    -0x28(%ebp),%eax
  105745:	50                   	push   %eax
  105746:	ff 75 f4             	push   -0xc(%ebp)
  105749:	e8 c9 0f 00 00       	call   106717 <paging_get_page>
  10574e:	83 c4 10             	add    $0x10,%esp
  105751:	8b 55 d8             	mov    -0x28(%ebp),%edx
  105754:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105757:	8b 14 90             	mov    (%eax,%edx,4),%edx
  10575a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  10575d:	c1 e0 02             	shl    $0x2,%eax
  105760:	01 d0                	add    %edx,%eax
  105762:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105765:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  105768:	8b 00                	mov    (%eax),%eax
  10576a:	c1 e8 0c             	shr    $0xc,%eax
  10576d:	c1 e0 0c             	shl    $0xc,%eax
  105770:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105773:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105776:	25 ff 0f 00 00       	and    $0xfff,%eax
  10577b:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10577e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105781:	0b 45 dc             	or     -0x24(%ebp),%eax
  105784:	89 c2                	mov    %eax,%edx
  105786:	8b 45 14             	mov    0x14(%ebp),%eax
  105789:	89 10                	mov    %edx,(%eax)
  10578b:	83 ec 08             	sub    $0x8,%esp
  10578e:	ff 75 ec             	push   -0x14(%ebp)
  105791:	68 80 08 13 00       	push   $0x130880
  105796:	e8 a0 fa ff ff       	call   10523b <ordered_array_insert>
  10579b:	83 c4 10             	add    $0x10,%esp
  10579e:	83 ec 0c             	sub    $0xc,%esp
  1057a1:	68 80 04 13 00       	push   $0x130480
  1057a6:	e8 8f 1e 00 00       	call   10763a <__redirect_printf__>
  1057ab:	83 c4 10             	add    $0x10,%esp
  1057ae:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1057b1:	8b 10                	mov    (%eax),%edx
  1057b3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1057b6:	8b 40 04             	mov    0x4(%eax),%eax
  1057b9:	83 ec 0c             	sub    $0xc,%esp
  1057bc:	52                   	push   %edx
  1057bd:	ff 75 08             	push   0x8(%ebp)
  1057c0:	50                   	push   %eax
  1057c1:	ff 75 0c             	push   0xc(%ebp)
  1057c4:	68 88 97 10 00       	push   $0x109788
  1057c9:	e8 59 27 00 00       	call   107f27 <printf>
  1057ce:	83 c4 20             	add    $0x20,%esp
  1057d1:	83 ec 0c             	sub    $0xc,%esp
  1057d4:	6a 00                	push   $0x0
  1057d6:	e8 5f 1e 00 00       	call   10763a <__redirect_printf__>
  1057db:	83 c4 10             	add    $0x10,%esp
  1057de:	83 ec 0c             	sub    $0xc,%esp
  1057e1:	8d 45 ce             	lea    -0x32(%ebp),%eax
  1057e4:	50                   	push   %eax
  1057e5:	e8 dc d1 ff ff       	call   1029c6 <cmos_read_rtc>
  1057ea:	83 c4 10             	add    $0x10,%esp
  1057ed:	83 ec 04             	sub    $0x4,%esp
  1057f0:	68 6c 08 13 00       	push   $0x13086c
  1057f5:	83 ec 08             	sub    $0x8,%esp
  1057f8:	89 e0                	mov    %esp,%eax
  1057fa:	8b 55 ce             	mov    -0x32(%ebp),%edx
  1057fd:	89 10                	mov    %edx,(%eax)
  1057ff:	0f b7 55 d2          	movzwl -0x2e(%ebp),%edx
  105803:	66 89 50 04          	mov    %dx,0x4(%eax)
  105807:	e8 e7 f6 ff ff       	call   104ef3 <cmos_datetime_to_str>
  10580c:	83 c4 10             	add    $0x10,%esp
  10580f:	83 ec 0c             	sub    $0xc,%esp
  105812:	68 80 00 13 00       	push   $0x130080
  105817:	e8 1e 1e 00 00       	call   10763a <__redirect_printf__>
  10581c:	83 c4 10             	add    $0x10,%esp
  10581f:	83 ec 04             	sub    $0x4,%esp
  105822:	68 80 04 13 00       	push   $0x130480
  105827:	68 6c 08 13 00       	push   $0x13086c
  10582c:	68 80 97 10 00       	push   $0x109780
  105831:	e8 f1 26 00 00       	call   107f27 <printf>
  105836:	83 c4 10             	add    $0x10,%esp
  105839:	83 ec 0c             	sub    $0xc,%esp
  10583c:	6a 00                	push   $0x0
  10583e:	e8 f7 1d 00 00       	call   10763a <__redirect_printf__>
  105843:	83 c4 10             	add    $0x10,%esp
  105846:	83 ec 08             	sub    $0x8,%esp
  105849:	68 80 00 13 00       	push   $0x130080
  10584e:	68 f8 03 00 00       	push   $0x3f8
  105853:	e8 32 cd ff ff       	call   10258a <com_write>
  105858:	83 c4 10             	add    $0x10,%esp
  10585b:	83 ec 04             	sub    $0x4,%esp
  10585e:	68 00 04 00 00       	push   $0x400
  105863:	6a 00                	push   $0x0
  105865:	68 80 00 13 00       	push   $0x130080
  10586a:	e8 8d 2a 00 00       	call   1082fc <memset>
  10586f:	83 c4 10             	add    $0x10,%esp
  105872:	83 ec 04             	sub    $0x4,%esp
  105875:	68 ec 03 00 00       	push   $0x3ec
  10587a:	6a 00                	push   $0x0
  10587c:	68 80 04 13 00       	push   $0x130480
  105881:	e8 76 2a 00 00       	call   1082fc <memset>
  105886:	83 c4 10             	add    $0x10,%esp
  105889:	83 ec 04             	sub    $0x4,%esp
  10588c:	6a 14                	push   $0x14
  10588e:	6a 00                	push   $0x0
  105890:	68 6c 08 13 00       	push   $0x13086c
  105895:	e8 62 2a 00 00       	call   1082fc <memset>
  10589a:	83 c4 10             	add    $0x10,%esp
  10589d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1058a0:	8b 00                	mov    (%eax),%eax
  1058a2:	c9                   	leave  
  1058a3:	c3                   	ret    

001058a4 <__kheap_malloc__>:
  1058a4:	55                   	push   %ebp
  1058a5:	89 e5                	mov    %esp,%ebp
  1058a7:	83 ec 38             	sub    $0x38,%esp
  1058aa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1058ad:	88 45 d4             	mov    %al,-0x2c(%ebp)
  1058b0:	a1 84 08 13 00       	mov    0x130884,%eax
  1058b5:	85 c0                	test   %eax,%eax
  1058b7:	75 1d                	jne    1058d6 <__kheap_malloc__+0x32>
  1058b9:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
  1058bd:	ff 75 10             	push   0x10(%ebp)
  1058c0:	50                   	push   %eax
  1058c1:	ff 75 08             	push   0x8(%ebp)
  1058c4:	68 00 00 00 c0       	push   $0xc0000000
  1058c9:	e8 d7 fd ff ff       	call   1056a5 <__kheap_malloc_at__>
  1058ce:	83 c4 10             	add    $0x10,%esp
  1058d1:	e9 9e 01 00 00       	jmp    105a74 <__kheap_malloc__+0x1d0>
  1058d6:	8b 45 08             	mov    0x8(%ebp),%eax
  1058d9:	83 c0 0c             	add    $0xc,%eax
  1058dc:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1058df:	80 7d d4 01          	cmpb   $0x1,-0x2c(%ebp)
  1058e3:	75 07                	jne    1058ec <__kheap_malloc__+0x48>
  1058e5:	b8 f3 0f 00 00       	mov    $0xff3,%eax
  1058ea:	eb 05                	jmp    1058f1 <__kheap_malloc__+0x4d>
  1058ec:	b8 00 00 00 00       	mov    $0x0,%eax
  1058f1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1058f4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1058fb:	eb 5a                	jmp    105957 <__kheap_malloc__+0xb3>
  1058fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105900:	ba 00 00 00 00       	mov    $0x0,%edx
  105905:	83 ec 04             	sub    $0x4,%esp
  105908:	52                   	push   %edx
  105909:	50                   	push   %eax
  10590a:	68 80 08 13 00       	push   $0x130880
  10590f:	e8 8b fa ff ff       	call   10539f <ordered_array_at>
  105914:	83 c4 10             	add    $0x10,%esp
  105917:	89 45 d8             	mov    %eax,-0x28(%ebp)
  10591a:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10591d:	8b 40 04             	mov    0x4(%eax),%eax
  105920:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  105923:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  105926:	01 ca                	add    %ecx,%edx
  105928:	39 d0                	cmp    %edx,%eax
  10592a:	72 27                	jb     105953 <__kheap_malloc__+0xaf>
  10592c:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10592f:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105933:	84 c0                	test   %al,%al
  105935:	75 1c                	jne    105953 <__kheap_malloc__+0xaf>
  105937:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  10593b:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10593e:	ff 75 10             	push   0x10(%ebp)
  105941:	52                   	push   %edx
  105942:	ff 75 08             	push   0x8(%ebp)
  105945:	50                   	push   %eax
  105946:	e8 5a fd ff ff       	call   1056a5 <__kheap_malloc_at__>
  10594b:	83 c4 10             	add    $0x10,%esp
  10594e:	e9 21 01 00 00       	jmp    105a74 <__kheap_malloc__+0x1d0>
  105953:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105957:	a1 84 08 13 00       	mov    0x130884,%eax
  10595c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10595f:	72 9c                	jb     1058fd <__kheap_malloc__+0x59>
  105961:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  105968:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10596f:	eb 45                	jmp    1059b6 <__kheap_malloc__+0x112>
  105971:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105974:	ba 00 00 00 00       	mov    $0x0,%edx
  105979:	83 ec 04             	sub    $0x4,%esp
  10597c:	52                   	push   %edx
  10597d:	50                   	push   %eax
  10597e:	68 80 08 13 00       	push   $0x130880
  105983:	e8 17 fa ff ff       	call   10539f <ordered_array_at>
  105988:	83 c4 10             	add    $0x10,%esp
  10598b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10598e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105991:	89 45 dc             	mov    %eax,-0x24(%ebp)
  105994:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105997:	8b 50 04             	mov    0x4(%eax),%edx
  10599a:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10599d:	01 d0                	add    %edx,%eax
  10599f:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  1059a2:	73 0e                	jae    1059b2 <__kheap_malloc__+0x10e>
  1059a4:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1059a7:	8b 50 04             	mov    0x4(%eax),%edx
  1059aa:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1059ad:	01 d0                	add    %edx,%eax
  1059af:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1059b2:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1059b6:	a1 84 08 13 00       	mov    0x130884,%eax
  1059bb:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1059be:	72 b1                	jb     105971 <__kheap_malloc__+0xcd>
  1059c0:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1059c3:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1059c6:	01 c2                	add    %eax,%edx
  1059c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1059cb:	01 d0                	add    %edx,%eax
  1059cd:	3d 00 00 02 c0       	cmp    $0xc0020000,%eax
  1059d2:	0f 86 86 00 00 00    	jbe    105a5e <__kheap_malloc__+0x1ba>
  1059d8:	83 ec 0c             	sub    $0xc,%esp
  1059db:	68 20 f0 10 00       	push   $0x10f020
  1059e0:	e8 55 1c 00 00       	call   10763a <__redirect_printf__>
  1059e5:	83 c4 10             	add    $0x10,%esp
  1059e8:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1059eb:	8b 45 08             	mov    0x8(%ebp),%eax
  1059ee:	01 c2                	add    %eax,%edx
  1059f0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1059f3:	01 c2                	add    %eax,%edx
  1059f5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1059f8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1059fb:	01 c8                	add    %ecx,%eax
  1059fd:	83 ec 04             	sub    $0x4,%esp
  105a00:	68 00 00 02 c0       	push   $0xc0020000
  105a05:	52                   	push   %edx
  105a06:	ff 75 f0             	push   -0x10(%ebp)
  105a09:	50                   	push   %eax
  105a0a:	ff 75 e8             	push   -0x18(%ebp)
  105a0d:	ff 75 08             	push   0x8(%ebp)
  105a10:	68 e8 97 10 00       	push   $0x1097e8
  105a15:	e8 0d 25 00 00       	call   107f27 <printf>
  105a1a:	83 c4 20             	add    $0x20,%esp
  105a1d:	83 ec 0c             	sub    $0xc,%esp
  105a20:	6a 00                	push   $0x0
  105a22:	e8 13 1c 00 00       	call   10763a <__redirect_printf__>
  105a27:	83 c4 10             	add    $0x10,%esp
  105a2a:	83 ec 0c             	sub    $0xc,%esp
  105a2d:	68 20 f0 10 00       	push   $0x10f020
  105a32:	e8 a0 aa ff ff       	call   1004d7 <tty_putstring>
  105a37:	83 c4 10             	add    $0x10,%esp
  105a3a:	83 ec 04             	sub    $0x4,%esp
  105a3d:	68 00 02 00 00       	push   $0x200
  105a42:	6a 00                	push   $0x0
  105a44:	68 20 f0 10 00       	push   $0x10f020
  105a49:	e8 ae 28 00 00       	call   1082fc <memset>
  105a4e:	83 c4 10             	add    $0x10,%esp
  105a51:	83 ec 0c             	sub    $0xc,%esp
  105a54:	68 44 98 10 00       	push   $0x109844
  105a59:	e8 be b7 ff ff       	call   10121c <panic>
  105a5e:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
  105a62:	ff 75 10             	push   0x10(%ebp)
  105a65:	50                   	push   %eax
  105a66:	ff 75 08             	push   0x8(%ebp)
  105a69:	ff 75 f0             	push   -0x10(%ebp)
  105a6c:	e8 34 fc ff ff       	call   1056a5 <__kheap_malloc_at__>
  105a71:	83 c4 10             	add    $0x10,%esp
  105a74:	c9                   	leave  
  105a75:	c3                   	ret    

00105a76 <size_based_less_than>:
  105a76:	55                   	push   %ebp
  105a77:	89 e5                	mov    %esp,%ebp
  105a79:	83 ec 10             	sub    $0x10,%esp
  105a7c:	8b 45 08             	mov    0x8(%ebp),%eax
  105a7f:	89 45 fc             	mov    %eax,-0x4(%ebp)
  105a82:	8b 45 0c             	mov    0xc(%ebp),%eax
  105a85:	89 45 f8             	mov    %eax,-0x8(%ebp)
  105a88:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105a8b:	8b 50 04             	mov    0x4(%eax),%edx
  105a8e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  105a91:	8b 40 04             	mov    0x4(%eax),%eax
  105a94:	39 c2                	cmp    %eax,%edx
  105a96:	0f 92 c0             	setb   %al
  105a99:	c9                   	leave  
  105a9a:	c3                   	ret    

00105a9b <kheap_init>:
  105a9b:	55                   	push   %ebp
  105a9c:	89 e5                	mov    %esp,%ebp
  105a9e:	83 ec 18             	sub    $0x18,%esp
  105aa1:	8d 45 e8             	lea    -0x18(%ebp),%eax
  105aa4:	83 ec 04             	sub    $0x4,%esp
  105aa7:	68 76 5a 10 00       	push   $0x105a76
  105aac:	68 00 00 02 00       	push   $0x20000
  105ab1:	50                   	push   %eax
  105ab2:	e8 99 f6 ff ff       	call   105150 <ordered_array_new>
  105ab7:	83 c4 0c             	add    $0xc,%esp
  105aba:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105abd:	a3 80 08 13 00       	mov    %eax,0x130880
  105ac2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105ac5:	a3 84 08 13 00       	mov    %eax,0x130884
  105aca:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105acd:	a3 88 08 13 00       	mov    %eax,0x130888
  105ad2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105ad5:	a3 8c 08 13 00       	mov    %eax,0x13088c
  105ada:	90                   	nop
  105adb:	c9                   	leave  
  105adc:	c3                   	ret    

00105add <kheap_malloc>:
  105add:	55                   	push   %ebp
  105ade:	89 e5                	mov    %esp,%ebp
  105ae0:	83 ec 08             	sub    $0x8,%esp
  105ae3:	83 ec 04             	sub    $0x4,%esp
  105ae6:	6a 00                	push   $0x0
  105ae8:	6a 00                	push   $0x0
  105aea:	ff 75 08             	push   0x8(%ebp)
  105aed:	e8 b2 fd ff ff       	call   1058a4 <__kheap_malloc__>
  105af2:	83 c4 10             	add    $0x10,%esp
  105af5:	c9                   	leave  
  105af6:	c3                   	ret    

00105af7 <kheap_malloc_a>:
  105af7:	55                   	push   %ebp
  105af8:	89 e5                	mov    %esp,%ebp
  105afa:	83 ec 08             	sub    $0x8,%esp
  105afd:	83 ec 04             	sub    $0x4,%esp
  105b00:	6a 00                	push   $0x0
  105b02:	6a 01                	push   $0x1
  105b04:	ff 75 08             	push   0x8(%ebp)
  105b07:	e8 98 fd ff ff       	call   1058a4 <__kheap_malloc__>
  105b0c:	83 c4 10             	add    $0x10,%esp
  105b0f:	c9                   	leave  
  105b10:	c3                   	ret    

00105b11 <kheap_malloc_ap>:
  105b11:	55                   	push   %ebp
  105b12:	89 e5                	mov    %esp,%ebp
  105b14:	83 ec 08             	sub    $0x8,%esp
  105b17:	83 ec 04             	sub    $0x4,%esp
  105b1a:	ff 75 0c             	push   0xc(%ebp)
  105b1d:	6a 01                	push   $0x1
  105b1f:	ff 75 08             	push   0x8(%ebp)
  105b22:	e8 7d fd ff ff       	call   1058a4 <__kheap_malloc__>
  105b27:	83 c4 10             	add    $0x10,%esp
  105b2a:	c9                   	leave  
  105b2b:	c3                   	ret    

00105b2c <kheap_free>:
  105b2c:	55                   	push   %ebp
  105b2d:	89 e5                	mov    %esp,%ebp
  105b2f:	83 ec 28             	sub    $0x28,%esp
  105b32:	8b 45 08             	mov    0x8(%ebp),%eax
  105b35:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105b38:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105b3f:	e9 44 01 00 00       	jmp    105c88 <kheap_free+0x15c>
  105b44:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105b47:	ba 00 00 00 00       	mov    $0x0,%edx
  105b4c:	83 ec 04             	sub    $0x4,%esp
  105b4f:	52                   	push   %edx
  105b50:	50                   	push   %eax
  105b51:	68 80 08 13 00       	push   $0x130880
  105b56:	e8 44 f8 ff ff       	call   10539f <ordered_array_at>
  105b5b:	83 c4 10             	add    $0x10,%esp
  105b5e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105b61:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105b64:	8b 00                	mov    (%eax),%eax
  105b66:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  105b69:	0f 85 15 01 00 00    	jne    105c84 <kheap_free+0x158>
  105b6f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105b72:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105b76:	3c 01                	cmp    $0x1,%al
  105b78:	74 0d                	je     105b87 <kheap_free+0x5b>
  105b7a:	83 ec 0c             	sub    $0xc,%esp
  105b7d:	68 67 98 10 00       	push   $0x109867
  105b82:	e8 95 b6 ff ff       	call   10121c <panic>
  105b87:	83 ec 0c             	sub    $0xc,%esp
  105b8a:	68 80 04 13 00       	push   $0x130480
  105b8f:	e8 a6 1a 00 00       	call   10763a <__redirect_printf__>
  105b94:	83 c4 10             	add    $0x10,%esp
  105b97:	83 ec 08             	sub    $0x8,%esp
  105b9a:	ff 75 f0             	push   -0x10(%ebp)
  105b9d:	68 83 98 10 00       	push   $0x109883
  105ba2:	e8 80 23 00 00       	call   107f27 <printf>
  105ba7:	83 c4 10             	add    $0x10,%esp
  105baa:	83 ec 0c             	sub    $0xc,%esp
  105bad:	6a 00                	push   $0x0
  105baf:	e8 86 1a 00 00       	call   10763a <__redirect_printf__>
  105bb4:	83 c4 10             	add    $0x10,%esp
  105bb7:	83 ec 0c             	sub    $0xc,%esp
  105bba:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  105bbd:	50                   	push   %eax
  105bbe:	e8 03 ce ff ff       	call   1029c6 <cmos_read_rtc>
  105bc3:	83 c4 10             	add    $0x10,%esp
  105bc6:	83 ec 04             	sub    $0x4,%esp
  105bc9:	68 6c 08 13 00       	push   $0x13086c
  105bce:	83 ec 08             	sub    $0x8,%esp
  105bd1:	89 e0                	mov    %esp,%eax
  105bd3:	8b 55 e6             	mov    -0x1a(%ebp),%edx
  105bd6:	89 10                	mov    %edx,(%eax)
  105bd8:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  105bdc:	66 89 50 04          	mov    %dx,0x4(%eax)
  105be0:	e8 0e f3 ff ff       	call   104ef3 <cmos_datetime_to_str>
  105be5:	83 c4 10             	add    $0x10,%esp
  105be8:	83 ec 0c             	sub    $0xc,%esp
  105beb:	68 80 00 13 00       	push   $0x130080
  105bf0:	e8 45 1a 00 00       	call   10763a <__redirect_printf__>
  105bf5:	83 c4 10             	add    $0x10,%esp
  105bf8:	83 ec 04             	sub    $0x4,%esp
  105bfb:	68 80 04 13 00       	push   $0x130480
  105c00:	68 6c 08 13 00       	push   $0x13086c
  105c05:	68 80 97 10 00       	push   $0x109780
  105c0a:	e8 18 23 00 00       	call   107f27 <printf>
  105c0f:	83 c4 10             	add    $0x10,%esp
  105c12:	83 ec 0c             	sub    $0xc,%esp
  105c15:	6a 00                	push   $0x0
  105c17:	e8 1e 1a 00 00       	call   10763a <__redirect_printf__>
  105c1c:	83 c4 10             	add    $0x10,%esp
  105c1f:	83 ec 08             	sub    $0x8,%esp
  105c22:	68 80 00 13 00       	push   $0x130080
  105c27:	68 f8 03 00 00       	push   $0x3f8
  105c2c:	e8 59 c9 ff ff       	call   10258a <com_write>
  105c31:	83 c4 10             	add    $0x10,%esp
  105c34:	83 ec 04             	sub    $0x4,%esp
  105c37:	68 00 04 00 00       	push   $0x400
  105c3c:	6a 00                	push   $0x0
  105c3e:	68 80 00 13 00       	push   $0x130080
  105c43:	e8 b4 26 00 00       	call   1082fc <memset>
  105c48:	83 c4 10             	add    $0x10,%esp
  105c4b:	83 ec 04             	sub    $0x4,%esp
  105c4e:	68 ec 03 00 00       	push   $0x3ec
  105c53:	6a 00                	push   $0x0
  105c55:	68 80 04 13 00       	push   $0x130480
  105c5a:	e8 9d 26 00 00       	call   1082fc <memset>
  105c5f:	83 c4 10             	add    $0x10,%esp
  105c62:	83 ec 04             	sub    $0x4,%esp
  105c65:	6a 14                	push   $0x14
  105c67:	6a 00                	push   $0x0
  105c69:	68 6c 08 13 00       	push   $0x13086c
  105c6e:	e8 89 26 00 00       	call   1082fc <memset>
  105c73:	83 c4 10             	add    $0x10,%esp
  105c76:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105c79:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  105c7d:	e8 b1 f7 ff ff       	call   105433 <merge_available_blocks>
  105c82:	eb 1f                	jmp    105ca3 <kheap_free+0x177>
  105c84:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105c88:	a1 84 08 13 00       	mov    0x130884,%eax
  105c8d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105c90:	0f 82 ae fe ff ff    	jb     105b44 <kheap_free+0x18>
  105c96:	83 ec 0c             	sub    $0xc,%esp
  105c99:	68 a0 98 10 00       	push   $0x1098a0
  105c9e:	e8 79 b5 ff ff       	call   10121c <panic>
  105ca3:	c9                   	leave  
  105ca4:	c3                   	ret    

00105ca5 <__kmalloc__>:
  105ca5:	55                   	push   %ebp
  105ca6:	89 e5                	mov    %esp,%ebp
  105ca8:	83 ec 28             	sub    $0x28,%esp
  105cab:	8b 45 0c             	mov    0xc(%ebp),%eax
  105cae:	88 45 e4             	mov    %al,-0x1c(%ebp)
  105cb1:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
  105cb5:	75 2c                	jne    105ce3 <__kmalloc__+0x3e>
  105cb7:	a1 98 08 13 00       	mov    0x130898,%eax
  105cbc:	25 ff 0f 00 00       	and    $0xfff,%eax
  105cc1:	85 c0                	test   %eax,%eax
  105cc3:	74 1e                	je     105ce3 <__kmalloc__+0x3e>
  105cc5:	a1 98 08 13 00       	mov    0x130898,%eax
  105cca:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  105ccf:	a3 98 08 13 00       	mov    %eax,0x130898
  105cd4:	a1 98 08 13 00       	mov    0x130898,%eax
  105cd9:	05 00 10 00 00       	add    $0x1000,%eax
  105cde:	a3 98 08 13 00       	mov    %eax,0x130898
  105ce3:	a1 98 08 13 00       	mov    0x130898,%eax
  105ce8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105ceb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105cee:	8b 45 08             	mov    0x8(%ebp),%eax
  105cf1:	01 c2                	add    %eax,%edx
  105cf3:	a1 90 08 13 00       	mov    0x130890,%eax
  105cf8:	39 c2                	cmp    %eax,%edx
  105cfa:	73 2c                	jae    105d28 <__kmalloc__+0x83>
  105cfc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  105d00:	74 07                	je     105d09 <__kmalloc__+0x64>
  105d02:	a1 98 08 13 00       	mov    0x130898,%eax
  105d07:	eb 05                	jmp    105d0e <__kmalloc__+0x69>
  105d09:	b8 00 00 00 00       	mov    $0x0,%eax
  105d0e:	8b 55 10             	mov    0x10(%ebp),%edx
  105d11:	89 02                	mov    %eax,(%edx)
  105d13:	8b 15 98 08 13 00    	mov    0x130898,%edx
  105d19:	8b 45 08             	mov    0x8(%ebp),%eax
  105d1c:	01 d0                	add    %edx,%eax
  105d1e:	a3 98 08 13 00       	mov    %eax,0x130898
  105d23:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105d26:	eb 0d                	jmp    105d35 <__kmalloc__+0x90>
  105d28:	83 ec 0c             	sub    $0xc,%esp
  105d2b:	68 d4 98 10 00       	push   $0x1098d4
  105d30:	e8 e7 b4 ff ff       	call   10121c <panic>
  105d35:	c9                   	leave  
  105d36:	c3                   	ret    

00105d37 <memory_init>:
  105d37:	55                   	push   %ebp
  105d38:	89 e5                	mov    %esp,%ebp
  105d3a:	83 ec 18             	sub    $0x18,%esp
  105d3d:	c7 05 90 08 13 00 00 	movl   $0x0,0x130890
  105d44:	00 00 00 
  105d47:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105d4e:	eb 34                	jmp    105d84 <memory_init+0x4d>
  105d50:	8b 45 08             	mov    0x8(%ebp),%eax
  105d53:	8b 50 30             	mov    0x30(%eax),%edx
  105d56:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105d59:	01 d0                	add    %edx,%eax
  105d5b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105d5e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105d61:	8b 40 14             	mov    0x14(%eax),%eax
  105d64:	83 f8 01             	cmp    $0x1,%eax
  105d67:	75 17                	jne    105d80 <memory_init+0x49>
  105d69:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105d6c:	8b 50 10             	mov    0x10(%eax),%edx
  105d6f:	8b 40 0c             	mov    0xc(%eax),%eax
  105d72:	89 c2                	mov    %eax,%edx
  105d74:	a1 90 08 13 00       	mov    0x130890,%eax
  105d79:	01 d0                	add    %edx,%eax
  105d7b:	a3 90 08 13 00       	mov    %eax,0x130890
  105d80:	83 45 f4 18          	addl   $0x18,-0xc(%ebp)
  105d84:	8b 45 08             	mov    0x8(%ebp),%eax
  105d87:	8b 40 2c             	mov    0x2c(%eax),%eax
  105d8a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105d8d:	72 c1                	jb     105d50 <memory_init+0x19>
  105d8f:	a1 90 08 13 00       	mov    0x130890,%eax
  105d94:	c1 e8 0c             	shr    $0xc,%eax
  105d97:	a3 94 08 13 00       	mov    %eax,0x130894
  105d9c:	a1 94 08 13 00       	mov    0x130894,%eax
  105da1:	c1 e8 05             	shr    $0x5,%eax
  105da4:	a3 a0 08 13 00       	mov    %eax,0x1308a0
  105da9:	8b 45 08             	mov    0x8(%ebp),%eax
  105dac:	8b 40 18             	mov    0x18(%eax),%eax
  105daf:	83 c0 04             	add    $0x4,%eax
  105db2:	8b 00                	mov    (%eax),%eax
  105db4:	a3 98 08 13 00       	mov    %eax,0x130898
  105db9:	a1 a0 08 13 00       	mov    0x1308a0,%eax
  105dbe:	83 ec 0c             	sub    $0xc,%esp
  105dc1:	50                   	push   %eax
  105dc2:	e8 09 02 00 00       	call   105fd0 <kmalloc>
  105dc7:	83 c4 10             	add    $0x10,%esp
  105dca:	a3 9c 08 13 00       	mov    %eax,0x13089c
  105dcf:	a1 a0 08 13 00       	mov    0x1308a0,%eax
  105dd4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  105ddb:	a1 9c 08 13 00       	mov    0x13089c,%eax
  105de0:	83 ec 04             	sub    $0x4,%esp
  105de3:	52                   	push   %edx
  105de4:	6a 00                	push   $0x0
  105de6:	50                   	push   %eax
  105de7:	e8 10 25 00 00       	call   1082fc <memset>
  105dec:	83 c4 10             	add    $0x10,%esp
  105def:	90                   	nop
  105df0:	c9                   	leave  
  105df1:	c3                   	ret    

00105df2 <memory_get_size>:
  105df2:	55                   	push   %ebp
  105df3:	89 e5                	mov    %esp,%ebp
  105df5:	a1 90 08 13 00       	mov    0x130890,%eax
  105dfa:	5d                   	pop    %ebp
  105dfb:	c3                   	ret    

00105dfc <memory_get_alloc_addr>:
  105dfc:	55                   	push   %ebp
  105dfd:	89 e5                	mov    %esp,%ebp
  105dff:	a1 98 08 13 00       	mov    0x130898,%eax
  105e04:	5d                   	pop    %ebp
  105e05:	c3                   	ret    

00105e06 <memory_next_available_frame>:
  105e06:	55                   	push   %ebp
  105e07:	89 e5                	mov    %esp,%ebp
  105e09:	83 ec 18             	sub    $0x18,%esp
  105e0c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105e13:	eb 19                	jmp    105e2e <memory_next_available_frame+0x28>
  105e15:	8b 15 9c 08 13 00    	mov    0x13089c,%edx
  105e1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105e1e:	c1 e0 02             	shl    $0x2,%eax
  105e21:	01 d0                	add    %edx,%eax
  105e23:	8b 00                	mov    (%eax),%eax
  105e25:	83 f8 ff             	cmp    $0xffffffff,%eax
  105e28:	75 10                	jne    105e3a <memory_next_available_frame+0x34>
  105e2a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105e2e:	a1 a0 08 13 00       	mov    0x1308a0,%eax
  105e33:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105e36:	72 dd                	jb     105e15 <memory_next_available_frame+0xf>
  105e38:	eb 01                	jmp    105e3b <memory_next_available_frame+0x35>
  105e3a:	90                   	nop
  105e3b:	a1 a0 08 13 00       	mov    0x1308a0,%eax
  105e40:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105e43:	75 0d                	jne    105e52 <memory_next_available_frame+0x4c>
  105e45:	83 ec 0c             	sub    $0xc,%esp
  105e48:	68 f4 98 10 00       	push   $0x1098f4
  105e4d:	e8 ca b3 ff ff       	call   10121c <panic>
  105e52:	8b 15 9c 08 13 00    	mov    0x13089c,%edx
  105e58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105e5b:	c1 e0 02             	shl    $0x2,%eax
  105e5e:	01 d0                	add    %edx,%eax
  105e60:	8b 00                	mov    (%eax),%eax
  105e62:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105e65:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  105e6c:	eb 07                	jmp    105e75 <memory_next_available_frame+0x6f>
  105e6e:	d1 7d f0             	sarl   -0x10(%ebp)
  105e71:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  105e75:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  105e79:	75 f3                	jne    105e6e <memory_next_available_frame+0x68>
  105e7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105e7e:	c1 e0 05             	shl    $0x5,%eax
  105e81:	89 c2                	mov    %eax,%edx
  105e83:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105e86:	01 d0                	add    %edx,%eax
  105e88:	c1 e0 0c             	shl    $0xc,%eax
  105e8b:	c9                   	leave  
  105e8c:	c3                   	ret    

00105e8d <memory_acquire_frame>:
  105e8d:	55                   	push   %ebp
  105e8e:	89 e5                	mov    %esp,%ebp
  105e90:	83 ec 18             	sub    $0x18,%esp
  105e93:	8b 45 08             	mov    0x8(%ebp),%eax
  105e96:	25 ff 0f 00 00       	and    $0xfff,%eax
  105e9b:	85 c0                	test   %eax,%eax
  105e9d:	74 64                	je     105f03 <memory_acquire_frame+0x76>
  105e9f:	83 ec 0c             	sub    $0xc,%esp
  105ea2:	68 20 f0 10 00       	push   $0x10f020
  105ea7:	e8 8e 17 00 00       	call   10763a <__redirect_printf__>
  105eac:	83 c4 10             	add    $0x10,%esp
  105eaf:	83 ec 08             	sub    $0x8,%esp
  105eb2:	ff 75 08             	push   0x8(%ebp)
  105eb5:	68 24 99 10 00       	push   $0x109924
  105eba:	e8 68 20 00 00       	call   107f27 <printf>
  105ebf:	83 c4 10             	add    $0x10,%esp
  105ec2:	83 ec 0c             	sub    $0xc,%esp
  105ec5:	6a 00                	push   $0x0
  105ec7:	e8 6e 17 00 00       	call   10763a <__redirect_printf__>
  105ecc:	83 c4 10             	add    $0x10,%esp
  105ecf:	83 ec 0c             	sub    $0xc,%esp
  105ed2:	68 20 f0 10 00       	push   $0x10f020
  105ed7:	e8 fb a5 ff ff       	call   1004d7 <tty_putstring>
  105edc:	83 c4 10             	add    $0x10,%esp
  105edf:	83 ec 04             	sub    $0x4,%esp
  105ee2:	68 00 02 00 00       	push   $0x200
  105ee7:	6a 00                	push   $0x0
  105ee9:	68 20 f0 10 00       	push   $0x10f020
  105eee:	e8 09 24 00 00       	call   1082fc <memset>
  105ef3:	83 c4 10             	add    $0x10,%esp
  105ef6:	83 ec 0c             	sub    $0xc,%esp
  105ef9:	68 4a 99 10 00       	push   $0x10994a
  105efe:	e8 19 b3 ff ff       	call   10121c <panic>
  105f03:	a1 9c 08 13 00       	mov    0x13089c,%eax
  105f08:	85 c0                	test   %eax,%eax
  105f0a:	75 64                	jne    105f70 <memory_acquire_frame+0xe3>
  105f0c:	83 ec 0c             	sub    $0xc,%esp
  105f0f:	68 20 f0 10 00       	push   $0x10f020
  105f14:	e8 21 17 00 00       	call   10763a <__redirect_printf__>
  105f19:	83 c4 10             	add    $0x10,%esp
  105f1c:	83 ec 08             	sub    $0x8,%esp
  105f1f:	ff 75 08             	push   0x8(%ebp)
  105f22:	68 68 99 10 00       	push   $0x109968
  105f27:	e8 fb 1f 00 00       	call   107f27 <printf>
  105f2c:	83 c4 10             	add    $0x10,%esp
  105f2f:	83 ec 0c             	sub    $0xc,%esp
  105f32:	6a 00                	push   $0x0
  105f34:	e8 01 17 00 00       	call   10763a <__redirect_printf__>
  105f39:	83 c4 10             	add    $0x10,%esp
  105f3c:	83 ec 0c             	sub    $0xc,%esp
  105f3f:	68 20 f0 10 00       	push   $0x10f020
  105f44:	e8 8e a5 ff ff       	call   1004d7 <tty_putstring>
  105f49:	83 c4 10             	add    $0x10,%esp
  105f4c:	83 ec 04             	sub    $0x4,%esp
  105f4f:	68 00 02 00 00       	push   $0x200
  105f54:	6a 00                	push   $0x0
  105f56:	68 20 f0 10 00       	push   $0x10f020
  105f5b:	e8 9c 23 00 00       	call   1082fc <memset>
  105f60:	83 c4 10             	add    $0x10,%esp
  105f63:	83 ec 0c             	sub    $0xc,%esp
  105f66:	68 4a 99 10 00       	push   $0x10994a
  105f6b:	e8 ac b2 ff ff       	call   10121c <panic>
  105f70:	8b 45 08             	mov    0x8(%ebp),%eax
  105f73:	c1 e8 0c             	shr    $0xc,%eax
  105f76:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105f79:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105f7c:	c1 e8 05             	shr    $0x5,%eax
  105f7f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105f82:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105f85:	83 e0 1f             	and    $0x1f,%eax
  105f88:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105f8b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105f8e:	ba 01 00 00 00       	mov    $0x1,%edx
  105f93:	89 c1                	mov    %eax,%ecx
  105f95:	d3 e2                	shl    %cl,%edx
  105f97:	89 d0                	mov    %edx,%eax
  105f99:	89 45 e8             	mov    %eax,-0x18(%ebp)
  105f9c:	8b 15 9c 08 13 00    	mov    0x13089c,%edx
  105fa2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105fa5:	c1 e0 02             	shl    $0x2,%eax
  105fa8:	01 d0                	add    %edx,%eax
  105faa:	8b 00                	mov    (%eax),%eax
  105fac:	8b 0d 9c 08 13 00    	mov    0x13089c,%ecx
  105fb2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105fb5:	c1 e2 02             	shl    $0x2,%edx
  105fb8:	01 ca                	add    %ecx,%edx
  105fba:	0b 45 e8             	or     -0x18(%ebp),%eax
  105fbd:	89 02                	mov    %eax,(%edx)
  105fbf:	90                   	nop
  105fc0:	c9                   	leave  
  105fc1:	c3                   	ret    

00105fc2 <memory_create_heap>:
  105fc2:	55                   	push   %ebp
  105fc3:	89 e5                	mov    %esp,%ebp
  105fc5:	83 ec 08             	sub    $0x8,%esp
  105fc8:	e8 ce fa ff ff       	call   105a9b <kheap_init>
  105fcd:	90                   	nop
  105fce:	c9                   	leave  
  105fcf:	c3                   	ret    

00105fd0 <kmalloc>:
  105fd0:	55                   	push   %ebp
  105fd1:	89 e5                	mov    %esp,%ebp
  105fd3:	83 ec 08             	sub    $0x8,%esp
  105fd6:	a1 a4 08 13 00       	mov    0x1308a4,%eax
  105fdb:	83 f8 01             	cmp    $0x1,%eax
  105fde:	75 10                	jne    105ff0 <kmalloc+0x20>
  105fe0:	83 ec 0c             	sub    $0xc,%esp
  105fe3:	ff 75 08             	push   0x8(%ebp)
  105fe6:	e8 f2 fa ff ff       	call   105add <kheap_malloc>
  105feb:	83 c4 10             	add    $0x10,%esp
  105fee:	eb 12                	jmp    106002 <kmalloc+0x32>
  105ff0:	83 ec 04             	sub    $0x4,%esp
  105ff3:	6a 00                	push   $0x0
  105ff5:	6a 00                	push   $0x0
  105ff7:	ff 75 08             	push   0x8(%ebp)
  105ffa:	e8 a6 fc ff ff       	call   105ca5 <__kmalloc__>
  105fff:	83 c4 10             	add    $0x10,%esp
  106002:	c9                   	leave  
  106003:	c3                   	ret    

00106004 <kmalloc_a>:
  106004:	55                   	push   %ebp
  106005:	89 e5                	mov    %esp,%ebp
  106007:	83 ec 08             	sub    $0x8,%esp
  10600a:	a1 a4 08 13 00       	mov    0x1308a4,%eax
  10600f:	83 f8 01             	cmp    $0x1,%eax
  106012:	75 10                	jne    106024 <kmalloc_a+0x20>
  106014:	83 ec 0c             	sub    $0xc,%esp
  106017:	ff 75 08             	push   0x8(%ebp)
  10601a:	e8 d8 fa ff ff       	call   105af7 <kheap_malloc_a>
  10601f:	83 c4 10             	add    $0x10,%esp
  106022:	eb 12                	jmp    106036 <kmalloc_a+0x32>
  106024:	83 ec 04             	sub    $0x4,%esp
  106027:	6a 00                	push   $0x0
  106029:	6a 01                	push   $0x1
  10602b:	ff 75 08             	push   0x8(%ebp)
  10602e:	e8 72 fc ff ff       	call   105ca5 <__kmalloc__>
  106033:	83 c4 10             	add    $0x10,%esp
  106036:	c9                   	leave  
  106037:	c3                   	ret    

00106038 <kmalloc_ap>:
  106038:	55                   	push   %ebp
  106039:	89 e5                	mov    %esp,%ebp
  10603b:	83 ec 08             	sub    $0x8,%esp
  10603e:	a1 a4 08 13 00       	mov    0x1308a4,%eax
  106043:	83 f8 01             	cmp    $0x1,%eax
  106046:	75 13                	jne    10605b <kmalloc_ap+0x23>
  106048:	83 ec 08             	sub    $0x8,%esp
  10604b:	ff 75 0c             	push   0xc(%ebp)
  10604e:	ff 75 08             	push   0x8(%ebp)
  106051:	e8 bb fa ff ff       	call   105b11 <kheap_malloc_ap>
  106056:	83 c4 10             	add    $0x10,%esp
  106059:	eb 13                	jmp    10606e <kmalloc_ap+0x36>
  10605b:	83 ec 04             	sub    $0x4,%esp
  10605e:	ff 75 0c             	push   0xc(%ebp)
  106061:	6a 01                	push   $0x1
  106063:	ff 75 08             	push   0x8(%ebp)
  106066:	e8 3a fc ff ff       	call   105ca5 <__kmalloc__>
  10606b:	83 c4 10             	add    $0x10,%esp
  10606e:	c9                   	leave  
  10606f:	c3                   	ret    

00106070 <kfree>:
  106070:	55                   	push   %ebp
  106071:	89 e5                	mov    %esp,%ebp
  106073:	83 ec 08             	sub    $0x8,%esp
  106076:	a1 a4 08 13 00       	mov    0x1308a4,%eax
  10607b:	83 f8 01             	cmp    $0x1,%eax
  10607e:	75 0e                	jne    10608e <kfree+0x1e>
  106080:	83 ec 0c             	sub    $0xc,%esp
  106083:	ff 75 08             	push   0x8(%ebp)
  106086:	e8 a1 fa ff ff       	call   105b2c <kheap_free>
  10608b:	83 c4 10             	add    $0x10,%esp
  10608e:	c9                   	leave  
  10608f:	c3                   	ret    

00106090 <memory_enable_heap_malloc>:
  106090:	55                   	push   %ebp
  106091:	89 e5                	mov    %esp,%ebp
  106093:	c7 05 a4 08 13 00 01 	movl   $0x1,0x1308a4
  10609a:	00 00 00 
  10609d:	90                   	nop
  10609e:	5d                   	pop    %ebp
  10609f:	c3                   	ret    

001060a0 <new_page_table>:
  1060a0:	55                   	push   %ebp
  1060a1:	89 e5                	mov    %esp,%ebp
  1060a3:	83 ec 18             	sub    $0x18,%esp
  1060a6:	83 ec 08             	sub    $0x8,%esp
  1060a9:	ff 75 08             	push   0x8(%ebp)
  1060ac:	68 00 10 00 00       	push   $0x1000
  1060b1:	e8 82 ff ff ff       	call   106038 <kmalloc_ap>
  1060b6:	83 c4 10             	add    $0x10,%esp
  1060b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1060bc:	83 ec 04             	sub    $0x4,%esp
  1060bf:	68 00 10 00 00       	push   $0x1000
  1060c4:	6a 00                	push   $0x0
  1060c6:	ff 75 f4             	push   -0xc(%ebp)
  1060c9:	e8 2e 22 00 00       	call   1082fc <memset>
  1060ce:	83 c4 10             	add    $0x10,%esp
  1060d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1060d4:	c9                   	leave  
  1060d5:	c3                   	ret    

001060d6 <clone_table>:
  1060d6:	55                   	push   %ebp
  1060d7:	89 e5                	mov    %esp,%ebp
  1060d9:	53                   	push   %ebx
  1060da:	83 ec 14             	sub    $0x14,%esp
  1060dd:	83 ec 0c             	sub    $0xc,%esp
  1060e0:	ff 75 0c             	push   0xc(%ebp)
  1060e3:	e8 b8 ff ff ff       	call   1060a0 <new_page_table>
  1060e8:	83 c4 10             	add    $0x10,%esp
  1060eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1060ee:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1060f5:	e9 50 01 00 00       	jmp    10624a <clone_table+0x174>
  1060fa:	8b 45 08             	mov    0x8(%ebp),%eax
  1060fd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106100:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106103:	c1 e8 0c             	shr    $0xc,%eax
  106106:	85 c0                	test   %eax,%eax
  106108:	0f 84 38 01 00 00    	je     106246 <clone_table+0x170>
  10610e:	e8 f3 fc ff ff       	call   105e06 <memory_next_available_frame>
  106113:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106116:	83 ec 0c             	sub    $0xc,%esp
  106119:	ff 75 ec             	push   -0x14(%ebp)
  10611c:	e8 6c fd ff ff       	call   105e8d <memory_acquire_frame>
  106121:	83 c4 10             	add    $0x10,%esp
  106124:	8b 45 08             	mov    0x8(%ebp),%eax
  106127:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10612a:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  10612e:	83 e0 01             	and    $0x1,%eax
  106131:	89 c1                	mov    %eax,%ecx
  106133:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106136:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106139:	89 cb                	mov    %ecx,%ebx
  10613b:	83 e3 01             	and    $0x1,%ebx
  10613e:	0f b6 0c 90          	movzbl (%eax,%edx,4),%ecx
  106142:	83 e1 fe             	and    $0xfffffffe,%ecx
  106145:	09 d9                	or     %ebx,%ecx
  106147:	88 0c 90             	mov    %cl,(%eax,%edx,4)
  10614a:	8b 45 08             	mov    0x8(%ebp),%eax
  10614d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106150:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  106154:	d0 e8                	shr    %al
  106156:	83 e0 01             	and    $0x1,%eax
  106159:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10615c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10615f:	83 e0 01             	and    $0x1,%eax
  106162:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
  106165:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  106169:	83 e0 fd             	and    $0xfffffffd,%eax
  10616c:	09 d8                	or     %ebx,%eax
  10616e:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  106171:	8b 45 08             	mov    0x8(%ebp),%eax
  106174:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106177:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  10617b:	c0 e8 02             	shr    $0x2,%al
  10617e:	83 e0 01             	and    $0x1,%eax
  106181:	8b 55 f0             	mov    -0x10(%ebp),%edx
  106184:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  106187:	83 e0 01             	and    $0x1,%eax
  10618a:	8d 1c 85 00 00 00 00 	lea    0x0(,%eax,4),%ebx
  106191:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  106195:	83 e0 fb             	and    $0xfffffffb,%eax
  106198:	09 d8                	or     %ebx,%eax
  10619a:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  10619d:	8b 45 08             	mov    0x8(%ebp),%eax
  1061a0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1061a3:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  1061a7:	c0 e8 03             	shr    $0x3,%al
  1061aa:	83 e0 01             	and    $0x1,%eax
  1061ad:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1061b0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1061b3:	83 e0 01             	and    $0x1,%eax
  1061b6:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  1061bd:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  1061c1:	83 e0 f7             	and    $0xfffffff7,%eax
  1061c4:	09 d8                	or     %ebx,%eax
  1061c6:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  1061c9:	8b 45 08             	mov    0x8(%ebp),%eax
  1061cc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1061cf:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  1061d3:	c0 e8 04             	shr    $0x4,%al
  1061d6:	83 e0 01             	and    $0x1,%eax
  1061d9:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1061dc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1061df:	83 e0 01             	and    $0x1,%eax
  1061e2:	c1 e0 04             	shl    $0x4,%eax
  1061e5:	89 c3                	mov    %eax,%ebx
  1061e7:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  1061eb:	83 e0 ef             	and    $0xffffffef,%eax
  1061ee:	09 d8                	or     %ebx,%eax
  1061f0:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  1061f3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1061f6:	c1 e8 0c             	shr    $0xc,%eax
  1061f9:	25 ff ff 0f 00       	and    $0xfffff,%eax
  1061fe:	89 c1                	mov    %eax,%ecx
  106200:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106203:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106206:	89 cb                	mov    %ecx,%ebx
  106208:	c1 e3 0c             	shl    $0xc,%ebx
  10620b:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  10620e:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
  106214:	09 d9                	or     %ebx,%ecx
  106216:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  106219:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10621c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10621f:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106222:	c1 e8 0c             	shr    $0xc,%eax
  106225:	c1 e0 0c             	shl    $0xc,%eax
  106228:	89 c1                	mov    %eax,%ecx
  10622a:	8b 45 08             	mov    0x8(%ebp),%eax
  10622d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106230:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106233:	c1 e8 0c             	shr    $0xc,%eax
  106236:	c1 e0 0c             	shl    $0xc,%eax
  106239:	83 ec 08             	sub    $0x8,%esp
  10623c:	51                   	push   %ecx
  10623d:	50                   	push   %eax
  10623e:	e8 51 af ff ff       	call   101194 <copy_page_physical>
  106243:	83 c4 10             	add    $0x10,%esp
  106246:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10624a:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  106251:	0f 86 a3 fe ff ff    	jbe    1060fa <clone_table+0x24>
  106257:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10625a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10625d:	c9                   	leave  
  10625e:	c3                   	ret    

0010625f <paging_init>:
  10625f:	55                   	push   %ebp
  106260:	89 e5                	mov    %esp,%ebp
  106262:	56                   	push   %esi
  106263:	53                   	push   %ebx
  106264:	83 ec 20             	sub    $0x20,%esp
  106267:	83 ec 0c             	sub    $0xc,%esp
  10626a:	68 04 20 00 00       	push   $0x2004
  10626f:	e8 90 fd ff ff       	call   106004 <kmalloc_a>
  106274:	83 c4 10             	add    $0x10,%esp
  106277:	a3 a8 08 13 00       	mov    %eax,0x1308a8
  10627c:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  106281:	83 ec 04             	sub    $0x4,%esp
  106284:	68 04 20 00 00       	push   $0x2004
  106289:	6a 00                	push   $0x0
  10628b:	50                   	push   %eax
  10628c:	e8 6b 20 00 00       	call   1082fc <memset>
  106291:	83 c4 10             	add    $0x10,%esp
  106294:	e8 29 fd ff ff       	call   105fc2 <memory_create_heap>
  106299:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1062a0:	e9 d9 00 00 00       	jmp    10637e <paging_init+0x11f>
  1062a5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1062ac:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1062b3:	83 ec 04             	sub    $0x4,%esp
  1062b6:	8d 45 e8             	lea    -0x18(%ebp),%eax
  1062b9:	50                   	push   %eax
  1062ba:	8d 45 ec             	lea    -0x14(%ebp),%eax
  1062bd:	50                   	push   %eax
  1062be:	ff 75 f4             	push   -0xc(%ebp)
  1062c1:	e8 51 04 00 00       	call   106717 <paging_get_page>
  1062c6:	83 c4 10             	add    $0x10,%esp
  1062c9:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  1062ce:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1062d1:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1062d4:	85 c0                	test   %eax,%eax
  1062d6:	75 39                	jne    106311 <paging_init+0xb2>
  1062d8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1062df:	8b 1d a8 08 13 00    	mov    0x1308a8,%ebx
  1062e5:	8b 75 ec             	mov    -0x14(%ebp),%esi
  1062e8:	83 ec 0c             	sub    $0xc,%esp
  1062eb:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  1062ee:	50                   	push   %eax
  1062ef:	e8 ac fd ff ff       	call   1060a0 <new_page_table>
  1062f4:	83 c4 10             	add    $0x10,%esp
  1062f7:	89 04 b3             	mov    %eax,(%ebx,%esi,4)
  1062fa:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1062fd:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  106302:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106305:	83 c9 07             	or     $0x7,%ecx
  106308:	81 c2 00 04 00 00    	add    $0x400,%edx
  10630e:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  106311:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  106316:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106319:	8b 14 90             	mov    (%eax,%edx,4),%edx
  10631c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10631f:	c1 e0 02             	shl    $0x2,%eax
  106322:	01 d0                	add    %edx,%eax
  106324:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106327:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10632a:	0f b6 10             	movzbl (%eax),%edx
  10632d:	83 ca 01             	or     $0x1,%edx
  106330:	88 10                	mov    %dl,(%eax)
  106332:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106335:	0f b6 10             	movzbl (%eax),%edx
  106338:	83 e2 fd             	and    $0xfffffffd,%edx
  10633b:	88 10                	mov    %dl,(%eax)
  10633d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106340:	0f b6 10             	movzbl (%eax),%edx
  106343:	83 ca 04             	or     $0x4,%edx
  106346:	88 10                	mov    %dl,(%eax)
  106348:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10634b:	c1 e8 0c             	shr    $0xc,%eax
  10634e:	25 ff ff 0f 00       	and    $0xfffff,%eax
  106353:	89 c2                	mov    %eax,%edx
  106355:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106358:	89 d1                	mov    %edx,%ecx
  10635a:	c1 e1 0c             	shl    $0xc,%ecx
  10635d:	8b 10                	mov    (%eax),%edx
  10635f:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  106365:	09 ca                	or     %ecx,%edx
  106367:	89 10                	mov    %edx,(%eax)
  106369:	83 ec 0c             	sub    $0xc,%esp
  10636c:	ff 75 f4             	push   -0xc(%ebp)
  10636f:	e8 19 fb ff ff       	call   105e8d <memory_acquire_frame>
  106374:	83 c4 10             	add    $0x10,%esp
  106377:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  10637e:	e8 79 fa ff ff       	call   105dfc <memory_get_alloc_addr>
  106383:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  106386:	0f 86 19 ff ff ff    	jbe    1062a5 <paging_init+0x46>
  10638c:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  106391:	83 ec 04             	sub    $0x4,%esp
  106394:	50                   	push   %eax
  106395:	68 00 00 02 c0       	push   $0xc0020000
  10639a:	68 00 00 00 c0       	push   $0xc0000000
  10639f:	e8 47 02 00 00       	call   1065eb <paging_map>
  1063a4:	83 c4 10             	add    $0x10,%esp
  1063a7:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  1063ac:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  1063b2:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  1063b7:	89 90 00 20 00 00    	mov    %edx,0x2000(%eax)
  1063bd:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  1063c2:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  1063c8:	83 ec 0c             	sub    $0xc,%esp
  1063cb:	50                   	push   %eax
  1063cc:	e8 b5 ad ff ff       	call   101186 <load_page_directory>
  1063d1:	83 c4 10             	add    $0x10,%esp
  1063d4:	e8 9b ad ff ff       	call   101174 <enable_paging>
  1063d9:	e8 b2 fc ff ff       	call   106090 <memory_enable_heap_malloc>
  1063de:	83 ec 0c             	sub    $0xc,%esp
  1063e1:	68 80 04 13 00       	push   $0x130480
  1063e6:	e8 4f 12 00 00       	call   10763a <__redirect_printf__>
  1063eb:	83 c4 10             	add    $0x10,%esp
  1063ee:	83 ec 0c             	sub    $0xc,%esp
  1063f1:	68 9b 99 10 00       	push   $0x10999b
  1063f6:	e8 2c 1b 00 00       	call   107f27 <printf>
  1063fb:	83 c4 10             	add    $0x10,%esp
  1063fe:	83 ec 0c             	sub    $0xc,%esp
  106401:	6a 00                	push   $0x0
  106403:	e8 32 12 00 00       	call   10763a <__redirect_printf__>
  106408:	83 c4 10             	add    $0x10,%esp
  10640b:	83 ec 0c             	sub    $0xc,%esp
  10640e:	8d 45 de             	lea    -0x22(%ebp),%eax
  106411:	50                   	push   %eax
  106412:	e8 af c5 ff ff       	call   1029c6 <cmos_read_rtc>
  106417:	83 c4 10             	add    $0x10,%esp
  10641a:	83 ec 04             	sub    $0x4,%esp
  10641d:	68 6c 08 13 00       	push   $0x13086c
  106422:	83 ec 08             	sub    $0x8,%esp
  106425:	89 e0                	mov    %esp,%eax
  106427:	8b 55 de             	mov    -0x22(%ebp),%edx
  10642a:	89 10                	mov    %edx,(%eax)
  10642c:	0f b7 55 e2          	movzwl -0x1e(%ebp),%edx
  106430:	66 89 50 04          	mov    %dx,0x4(%eax)
  106434:	e8 ba ea ff ff       	call   104ef3 <cmos_datetime_to_str>
  106439:	83 c4 10             	add    $0x10,%esp
  10643c:	83 ec 0c             	sub    $0xc,%esp
  10643f:	68 80 00 13 00       	push   $0x130080
  106444:	e8 f1 11 00 00       	call   10763a <__redirect_printf__>
  106449:	83 c4 10             	add    $0x10,%esp
  10644c:	83 ec 04             	sub    $0x4,%esp
  10644f:	68 80 04 13 00       	push   $0x130480
  106454:	68 6c 08 13 00       	push   $0x13086c
  106459:	68 ad 99 10 00       	push   $0x1099ad
  10645e:	e8 c4 1a 00 00       	call   107f27 <printf>
  106463:	83 c4 10             	add    $0x10,%esp
  106466:	83 ec 0c             	sub    $0xc,%esp
  106469:	6a 00                	push   $0x0
  10646b:	e8 ca 11 00 00       	call   10763a <__redirect_printf__>
  106470:	83 c4 10             	add    $0x10,%esp
  106473:	83 ec 08             	sub    $0x8,%esp
  106476:	68 80 00 13 00       	push   $0x130080
  10647b:	68 f8 03 00 00       	push   $0x3f8
  106480:	e8 05 c1 ff ff       	call   10258a <com_write>
  106485:	83 c4 10             	add    $0x10,%esp
  106488:	83 ec 04             	sub    $0x4,%esp
  10648b:	68 00 04 00 00       	push   $0x400
  106490:	6a 00                	push   $0x0
  106492:	68 80 00 13 00       	push   $0x130080
  106497:	e8 60 1e 00 00       	call   1082fc <memset>
  10649c:	83 c4 10             	add    $0x10,%esp
  10649f:	83 ec 04             	sub    $0x4,%esp
  1064a2:	68 ec 03 00 00       	push   $0x3ec
  1064a7:	6a 00                	push   $0x0
  1064a9:	68 80 04 13 00       	push   $0x130480
  1064ae:	e8 49 1e 00 00       	call   1082fc <memset>
  1064b3:	83 c4 10             	add    $0x10,%esp
  1064b6:	83 ec 04             	sub    $0x4,%esp
  1064b9:	6a 14                	push   $0x14
  1064bb:	6a 00                	push   $0x0
  1064bd:	68 6c 08 13 00       	push   $0x13086c
  1064c2:	e8 35 1e 00 00       	call   1082fc <memset>
  1064c7:	83 c4 10             	add    $0x10,%esp
  1064ca:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  1064cf:	83 ec 0c             	sub    $0xc,%esp
  1064d2:	50                   	push   %eax
  1064d3:	e8 7e 02 00 00       	call   106756 <paging_clone_directory>
  1064d8:	83 c4 10             	add    $0x10,%esp
  1064db:	a3 ac 08 13 00       	mov    %eax,0x1308ac
  1064e0:	a1 ac 08 13 00       	mov    0x1308ac,%eax
  1064e5:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  1064eb:	83 ec 0c             	sub    $0xc,%esp
  1064ee:	50                   	push   %eax
  1064ef:	e8 92 ac ff ff       	call   101186 <load_page_directory>
  1064f4:	83 c4 10             	add    $0x10,%esp
  1064f7:	83 ec 0c             	sub    $0xc,%esp
  1064fa:	68 80 04 13 00       	push   $0x130480
  1064ff:	e8 36 11 00 00       	call   10763a <__redirect_printf__>
  106504:	83 c4 10             	add    $0x10,%esp
  106507:	83 ec 0c             	sub    $0xc,%esp
  10650a:	68 b3 99 10 00       	push   $0x1099b3
  10650f:	e8 13 1a 00 00       	call   107f27 <printf>
  106514:	83 c4 10             	add    $0x10,%esp
  106517:	83 ec 0c             	sub    $0xc,%esp
  10651a:	6a 00                	push   $0x0
  10651c:	e8 19 11 00 00       	call   10763a <__redirect_printf__>
  106521:	83 c4 10             	add    $0x10,%esp
  106524:	83 ec 0c             	sub    $0xc,%esp
  106527:	8d 45 d8             	lea    -0x28(%ebp),%eax
  10652a:	50                   	push   %eax
  10652b:	e8 96 c4 ff ff       	call   1029c6 <cmos_read_rtc>
  106530:	83 c4 10             	add    $0x10,%esp
  106533:	83 ec 04             	sub    $0x4,%esp
  106536:	68 6c 08 13 00       	push   $0x13086c
  10653b:	83 ec 08             	sub    $0x8,%esp
  10653e:	89 e0                	mov    %esp,%eax
  106540:	8b 55 d8             	mov    -0x28(%ebp),%edx
  106543:	89 10                	mov    %edx,(%eax)
  106545:	0f b7 55 dc          	movzwl -0x24(%ebp),%edx
  106549:	66 89 50 04          	mov    %dx,0x4(%eax)
  10654d:	e8 a1 e9 ff ff       	call   104ef3 <cmos_datetime_to_str>
  106552:	83 c4 10             	add    $0x10,%esp
  106555:	83 ec 0c             	sub    $0xc,%esp
  106558:	68 80 00 13 00       	push   $0x130080
  10655d:	e8 d8 10 00 00       	call   10763a <__redirect_printf__>
  106562:	83 c4 10             	add    $0x10,%esp
  106565:	83 ec 04             	sub    $0x4,%esp
  106568:	68 80 04 13 00       	push   $0x130480
  10656d:	68 6c 08 13 00       	push   $0x13086c
  106572:	68 ad 99 10 00       	push   $0x1099ad
  106577:	e8 ab 19 00 00       	call   107f27 <printf>
  10657c:	83 c4 10             	add    $0x10,%esp
  10657f:	83 ec 0c             	sub    $0xc,%esp
  106582:	6a 00                	push   $0x0
  106584:	e8 b1 10 00 00       	call   10763a <__redirect_printf__>
  106589:	83 c4 10             	add    $0x10,%esp
  10658c:	83 ec 08             	sub    $0x8,%esp
  10658f:	68 80 00 13 00       	push   $0x130080
  106594:	68 f8 03 00 00       	push   $0x3f8
  106599:	e8 ec bf ff ff       	call   10258a <com_write>
  10659e:	83 c4 10             	add    $0x10,%esp
  1065a1:	83 ec 04             	sub    $0x4,%esp
  1065a4:	68 00 04 00 00       	push   $0x400
  1065a9:	6a 00                	push   $0x0
  1065ab:	68 80 00 13 00       	push   $0x130080
  1065b0:	e8 47 1d 00 00       	call   1082fc <memset>
  1065b5:	83 c4 10             	add    $0x10,%esp
  1065b8:	83 ec 04             	sub    $0x4,%esp
  1065bb:	68 ec 03 00 00       	push   $0x3ec
  1065c0:	6a 00                	push   $0x0
  1065c2:	68 80 04 13 00       	push   $0x130480
  1065c7:	e8 30 1d 00 00       	call   1082fc <memset>
  1065cc:	83 c4 10             	add    $0x10,%esp
  1065cf:	83 ec 04             	sub    $0x4,%esp
  1065d2:	6a 14                	push   $0x14
  1065d4:	6a 00                	push   $0x0
  1065d6:	68 6c 08 13 00       	push   $0x13086c
  1065db:	e8 1c 1d 00 00       	call   1082fc <memset>
  1065e0:	83 c4 10             	add    $0x10,%esp
  1065e3:	90                   	nop
  1065e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1065e7:	5b                   	pop    %ebx
  1065e8:	5e                   	pop    %esi
  1065e9:	5d                   	pop    %ebp
  1065ea:	c3                   	ret    

001065eb <paging_map>:
  1065eb:	55                   	push   %ebp
  1065ec:	89 e5                	mov    %esp,%ebp
  1065ee:	53                   	push   %ebx
  1065ef:	83 ec 24             	sub    $0x24,%esp
  1065f2:	8b 45 08             	mov    0x8(%ebp),%eax
  1065f5:	25 ff 0f 00 00       	and    $0xfff,%eax
  1065fa:	85 c0                	test   %eax,%eax
  1065fc:	74 07                	je     106605 <paging_map+0x1a>
  1065fe:	81 65 08 00 f0 ff ff 	andl   $0xfffff000,0x8(%ebp)
  106605:	8b 45 0c             	mov    0xc(%ebp),%eax
  106608:	25 ff 0f 00 00       	and    $0xfff,%eax
  10660d:	85 c0                	test   %eax,%eax
  10660f:	74 0e                	je     10661f <paging_map+0x34>
  106611:	81 65 0c 00 f0 ff ff 	andl   $0xfffff000,0xc(%ebp)
  106618:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
  10661f:	8b 45 08             	mov    0x8(%ebp),%eax
  106622:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106625:	e9 da 00 00 00       	jmp    106704 <paging_map+0x119>
  10662a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  106631:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  106638:	83 ec 04             	sub    $0x4,%esp
  10663b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  10663e:	50                   	push   %eax
  10663f:	8d 45 e8             	lea    -0x18(%ebp),%eax
  106642:	50                   	push   %eax
  106643:	ff 75 f4             	push   -0xc(%ebp)
  106646:	e8 cc 00 00 00       	call   106717 <paging_get_page>
  10664b:	83 c4 10             	add    $0x10,%esp
  10664e:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106651:	8b 45 10             	mov    0x10(%ebp),%eax
  106654:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106657:	85 c0                	test   %eax,%eax
  106659:	75 36                	jne    106691 <paging_map+0xa6>
  10665b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  106662:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  106665:	83 ec 0c             	sub    $0xc,%esp
  106668:	8d 45 e0             	lea    -0x20(%ebp),%eax
  10666b:	50                   	push   %eax
  10666c:	e8 2f fa ff ff       	call   1060a0 <new_page_table>
  106671:	83 c4 10             	add    $0x10,%esp
  106674:	8b 55 10             	mov    0x10(%ebp),%edx
  106677:	89 04 9a             	mov    %eax,(%edx,%ebx,4)
  10667a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10667d:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106680:	83 c8 07             	or     $0x7,%eax
  106683:	89 c1                	mov    %eax,%ecx
  106685:	8b 45 10             	mov    0x10(%ebp),%eax
  106688:	81 c2 00 04 00 00    	add    $0x400,%edx
  10668e:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  106691:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106694:	8b 45 10             	mov    0x10(%ebp),%eax
  106697:	8b 14 90             	mov    (%eax,%edx,4),%edx
  10669a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10669d:	c1 e0 02             	shl    $0x2,%eax
  1066a0:	01 d0                	add    %edx,%eax
  1066a2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1066a5:	e8 5c f7 ff ff       	call   105e06 <memory_next_available_frame>
  1066aa:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1066ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066b0:	0f b6 10             	movzbl (%eax),%edx
  1066b3:	83 ca 01             	or     $0x1,%edx
  1066b6:	88 10                	mov    %dl,(%eax)
  1066b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066bb:	0f b6 10             	movzbl (%eax),%edx
  1066be:	83 ca 02             	or     $0x2,%edx
  1066c1:	88 10                	mov    %dl,(%eax)
  1066c3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066c6:	0f b6 10             	movzbl (%eax),%edx
  1066c9:	83 ca 04             	or     $0x4,%edx
  1066cc:	88 10                	mov    %dl,(%eax)
  1066ce:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1066d1:	c1 e8 0c             	shr    $0xc,%eax
  1066d4:	25 ff ff 0f 00       	and    $0xfffff,%eax
  1066d9:	89 c2                	mov    %eax,%edx
  1066db:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066de:	89 d1                	mov    %edx,%ecx
  1066e0:	c1 e1 0c             	shl    $0xc,%ecx
  1066e3:	8b 10                	mov    (%eax),%edx
  1066e5:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  1066eb:	09 ca                	or     %ecx,%edx
  1066ed:	89 10                	mov    %edx,(%eax)
  1066ef:	83 ec 0c             	sub    $0xc,%esp
  1066f2:	ff 75 ec             	push   -0x14(%ebp)
  1066f5:	e8 93 f7 ff ff       	call   105e8d <memory_acquire_frame>
  1066fa:	83 c4 10             	add    $0x10,%esp
  1066fd:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  106704:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106707:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10670a:	0f 86 1a ff ff ff    	jbe    10662a <paging_map+0x3f>
  106710:	90                   	nop
  106711:	90                   	nop
  106712:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106715:	c9                   	leave  
  106716:	c3                   	ret    

00106717 <paging_get_page>:
  106717:	55                   	push   %ebp
  106718:	89 e5                	mov    %esp,%ebp
  10671a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10671e:	74 0d                	je     10672d <paging_get_page+0x16>
  106720:	8b 45 08             	mov    0x8(%ebp),%eax
  106723:	c1 e8 16             	shr    $0x16,%eax
  106726:	89 c2                	mov    %eax,%edx
  106728:	8b 45 0c             	mov    0xc(%ebp),%eax
  10672b:	89 10                	mov    %edx,(%eax)
  10672d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  106731:	74 12                	je     106745 <paging_get_page+0x2e>
  106733:	8b 45 08             	mov    0x8(%ebp),%eax
  106736:	c1 e8 0c             	shr    $0xc,%eax
  106739:	25 ff 03 00 00       	and    $0x3ff,%eax
  10673e:	89 c2                	mov    %eax,%edx
  106740:	8b 45 10             	mov    0x10(%ebp),%eax
  106743:	89 10                	mov    %edx,(%eax)
  106745:	90                   	nop
  106746:	5d                   	pop    %ebp
  106747:	c3                   	ret    

00106748 <paging_flush_tlb>:
  106748:	55                   	push   %ebp
  106749:	89 e5                	mov    %esp,%ebp
  10674b:	83 ec 08             	sub    $0x8,%esp
  10674e:	e8 79 aa ff ff       	call   1011cc <flush_tlb>
  106753:	90                   	nop
  106754:	c9                   	leave  
  106755:	c3                   	ret    

00106756 <paging_clone_directory>:
  106756:	55                   	push   %ebp
  106757:	89 e5                	mov    %esp,%ebp
  106759:	83 ec 28             	sub    $0x28,%esp
  10675c:	83 ec 08             	sub    $0x8,%esp
  10675f:	8d 45 e8             	lea    -0x18(%ebp),%eax
  106762:	50                   	push   %eax
  106763:	68 04 20 00 00       	push   $0x2004
  106768:	e8 cb f8 ff ff       	call   106038 <kmalloc_ap>
  10676d:	83 c4 10             	add    $0x10,%esp
  106770:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106773:	83 ec 04             	sub    $0x4,%esp
  106776:	68 04 20 00 00       	push   $0x2004
  10677b:	6a 00                	push   $0x0
  10677d:	ff 75 f0             	push   -0x10(%ebp)
  106780:	e8 77 1b 00 00       	call   1082fc <memset>
  106785:	83 c4 10             	add    $0x10,%esp
  106788:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  10678f:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106792:	8b 45 ec             	mov    -0x14(%ebp),%eax
  106795:	01 c2                	add    %eax,%edx
  106797:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10679a:	89 90 00 20 00 00    	mov    %edx,0x2000(%eax)
  1067a0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1067a7:	e9 98 00 00 00       	jmp    106844 <paging_clone_directory+0xee>
  1067ac:	8b 45 08             	mov    0x8(%ebp),%eax
  1067af:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067b2:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1067b5:	85 c0                	test   %eax,%eax
  1067b7:	0f 84 83 00 00 00    	je     106840 <paging_clone_directory+0xea>
  1067bd:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  1067c2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067c5:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  1067c8:	8b 45 08             	mov    0x8(%ebp),%eax
  1067cb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067ce:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1067d1:	39 c1                	cmp    %eax,%ecx
  1067d3:	75 32                	jne    106807 <paging_clone_directory+0xb1>
  1067d5:	8b 45 08             	mov    0x8(%ebp),%eax
  1067d8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067db:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  1067de:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1067e1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067e4:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  1067e7:	8b 45 08             	mov    0x8(%ebp),%eax
  1067ea:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067ed:	81 c2 00 04 00 00    	add    $0x400,%edx
  1067f3:	8b 14 90             	mov    (%eax,%edx,4),%edx
  1067f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1067f9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1067fc:	81 c1 00 04 00 00    	add    $0x400,%ecx
  106802:	89 14 88             	mov    %edx,(%eax,%ecx,4)
  106805:	eb 39                	jmp    106840 <paging_clone_directory+0xea>
  106807:	8b 45 08             	mov    0x8(%ebp),%eax
  10680a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10680d:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106810:	83 ec 08             	sub    $0x8,%esp
  106813:	8d 55 e4             	lea    -0x1c(%ebp),%edx
  106816:	52                   	push   %edx
  106817:	50                   	push   %eax
  106818:	e8 b9 f8 ff ff       	call   1060d6 <clone_table>
  10681d:	83 c4 10             	add    $0x10,%esp
  106820:	8b 55 f0             	mov    -0x10(%ebp),%edx
  106823:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  106826:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
  106829:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10682c:	83 c8 07             	or     $0x7,%eax
  10682f:	89 c1                	mov    %eax,%ecx
  106831:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106834:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106837:	81 c2 00 04 00 00    	add    $0x400,%edx
  10683d:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  106840:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  106844:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  10684b:	0f 86 5b ff ff ff    	jbe    1067ac <paging_clone_directory+0x56>
  106851:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106854:	c9                   	leave  
  106855:	c3                   	ret    

00106856 <paging_current_page_directory>:
  106856:	55                   	push   %ebp
  106857:	89 e5                	mov    %esp,%ebp
  106859:	a1 ac 08 13 00       	mov    0x1308ac,%eax
  10685e:	5d                   	pop    %ebp
  10685f:	c3                   	ret    

00106860 <paging_kernel_page_directory>:
  106860:	55                   	push   %ebp
  106861:	89 e5                	mov    %esp,%ebp
  106863:	a1 a8 08 13 00       	mov    0x1308a8,%eax
  106868:	5d                   	pop    %ebp
  106869:	c3                   	ret    

0010686a <paging_set_current_page_directory>:
  10686a:	55                   	push   %ebp
  10686b:	89 e5                	mov    %esp,%ebp
  10686d:	83 ec 18             	sub    $0x18,%esp
  106870:	8b 45 0c             	mov    0xc(%ebp),%eax
  106873:	88 45 f4             	mov    %al,-0xc(%ebp)
  106876:	8b 45 08             	mov    0x8(%ebp),%eax
  106879:	a3 ac 08 13 00       	mov    %eax,0x1308ac
  10687e:	80 7d f4 01          	cmpb   $0x1,-0xc(%ebp)
  106882:	75 17                	jne    10689b <paging_set_current_page_directory+0x31>
  106884:	a1 ac 08 13 00       	mov    0x1308ac,%eax
  106889:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  10688f:	83 ec 0c             	sub    $0xc,%esp
  106892:	50                   	push   %eax
  106893:	e8 ee a8 ff ff       	call   101186 <load_page_directory>
  106898:	83 c4 10             	add    $0x10,%esp
  10689b:	90                   	nop
  10689c:	c9                   	leave  
  10689d:	c3                   	ret    

0010689e <tasking_init>:
  10689e:	55                   	push   %ebp
  10689f:	89 e5                	mov    %esp,%ebp
  1068a1:	53                   	push   %ebx
  1068a2:	83 ec 14             	sub    $0x14,%esp
  1068a5:	e8 05 9e ff ff       	call   1006af <cli>
  1068aa:	c7 05 b4 08 13 00 01 	movl   $0x1,0x1308b4
  1068b1:	00 00 00 
  1068b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1068b7:	a3 b0 08 13 00       	mov    %eax,0x1308b0
  1068bc:	83 ec 0c             	sub    $0xc,%esp
  1068bf:	68 80 04 13 00       	push   $0x130480
  1068c4:	e8 71 0d 00 00       	call   10763a <__redirect_printf__>
  1068c9:	83 c4 10             	add    $0x10,%esp
  1068cc:	a1 b0 08 13 00       	mov    0x1308b0,%eax
  1068d1:	83 ec 08             	sub    $0x8,%esp
  1068d4:	50                   	push   %eax
  1068d5:	68 cc 99 10 00       	push   $0x1099cc
  1068da:	e8 48 16 00 00       	call   107f27 <printf>
  1068df:	83 c4 10             	add    $0x10,%esp
  1068e2:	83 ec 0c             	sub    $0xc,%esp
  1068e5:	6a 00                	push   $0x0
  1068e7:	e8 4e 0d 00 00       	call   10763a <__redirect_printf__>
  1068ec:	83 c4 10             	add    $0x10,%esp
  1068ef:	83 ec 0c             	sub    $0xc,%esp
  1068f2:	8d 45 f2             	lea    -0xe(%ebp),%eax
  1068f5:	50                   	push   %eax
  1068f6:	e8 cb c0 ff ff       	call   1029c6 <cmos_read_rtc>
  1068fb:	83 c4 10             	add    $0x10,%esp
  1068fe:	83 ec 04             	sub    $0x4,%esp
  106901:	68 6c 08 13 00       	push   $0x13086c
  106906:	83 ec 08             	sub    $0x8,%esp
  106909:	89 e0                	mov    %esp,%eax
  10690b:	8b 55 f2             	mov    -0xe(%ebp),%edx
  10690e:	89 10                	mov    %edx,(%eax)
  106910:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  106914:	66 89 50 04          	mov    %dx,0x4(%eax)
  106918:	e8 d6 e5 ff ff       	call   104ef3 <cmos_datetime_to_str>
  10691d:	83 c4 10             	add    $0x10,%esp
  106920:	83 ec 0c             	sub    $0xc,%esp
  106923:	68 80 00 13 00       	push   $0x130080
  106928:	e8 0d 0d 00 00       	call   10763a <__redirect_printf__>
  10692d:	83 c4 10             	add    $0x10,%esp
  106930:	83 ec 04             	sub    $0x4,%esp
  106933:	68 80 04 13 00       	push   $0x130480
  106938:	68 6c 08 13 00       	push   $0x13086c
  10693d:	68 f7 99 10 00       	push   $0x1099f7
  106942:	e8 e0 15 00 00       	call   107f27 <printf>
  106947:	83 c4 10             	add    $0x10,%esp
  10694a:	83 ec 0c             	sub    $0xc,%esp
  10694d:	6a 00                	push   $0x0
  10694f:	e8 e6 0c 00 00       	call   10763a <__redirect_printf__>
  106954:	83 c4 10             	add    $0x10,%esp
  106957:	83 ec 08             	sub    $0x8,%esp
  10695a:	68 80 00 13 00       	push   $0x130080
  10695f:	68 f8 03 00 00       	push   $0x3f8
  106964:	e8 21 bc ff ff       	call   10258a <com_write>
  106969:	83 c4 10             	add    $0x10,%esp
  10696c:	83 ec 04             	sub    $0x4,%esp
  10696f:	68 00 04 00 00       	push   $0x400
  106974:	6a 00                	push   $0x0
  106976:	68 80 00 13 00       	push   $0x130080
  10697b:	e8 7c 19 00 00       	call   1082fc <memset>
  106980:	83 c4 10             	add    $0x10,%esp
  106983:	83 ec 04             	sub    $0x4,%esp
  106986:	68 ec 03 00 00       	push   $0x3ec
  10698b:	6a 00                	push   $0x0
  10698d:	68 80 04 13 00       	push   $0x130480
  106992:	e8 65 19 00 00       	call   1082fc <memset>
  106997:	83 c4 10             	add    $0x10,%esp
  10699a:	83 ec 04             	sub    $0x4,%esp
  10699d:	6a 14                	push   $0x14
  10699f:	6a 00                	push   $0x0
  1069a1:	68 6c 08 13 00       	push   $0x13086c
  1069a6:	e8 51 19 00 00       	call   1082fc <memset>
  1069ab:	83 c4 10             	add    $0x10,%esp
  1069ae:	83 ec 08             	sub    $0x8,%esp
  1069b1:	68 00 00 02 00       	push   $0x20000
  1069b6:	68 00 00 00 e0       	push   $0xe0000000
  1069bb:	e8 9a 04 00 00       	call   106e5a <tasking_move_stack>
  1069c0:	83 c4 10             	add    $0x10,%esp
  1069c3:	83 ec 0c             	sub    $0xc,%esp
  1069c6:	6a 1c                	push   $0x1c
  1069c8:	e8 03 f6 ff ff       	call   105fd0 <kmalloc>
  1069cd:	83 c4 10             	add    $0x10,%esp
  1069d0:	a3 b8 08 13 00       	mov    %eax,0x1308b8
  1069d5:	8b 15 b4 08 13 00    	mov    0x1308b4,%edx
  1069db:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  1069e0:	89 10                	mov    %edx,(%eax)
  1069e2:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  1069e7:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  1069ee:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  1069f3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  1069fa:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  1069ff:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  106a06:	8b 1d b8 08 13 00    	mov    0x1308b8,%ebx
  106a0c:	e8 45 fe ff ff       	call   106856 <paging_current_page_directory>
  106a11:	89 43 10             	mov    %eax,0x10(%ebx)
  106a14:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106a19:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
  106a20:	83 ec 0c             	sub    $0xc,%esp
  106a23:	68 00 08 00 00       	push   $0x800
  106a28:	e8 d7 f5 ff ff       	call   106004 <kmalloc_a>
  106a2d:	83 c4 10             	add    $0x10,%esp
  106a30:	89 c2                	mov    %eax,%edx
  106a32:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106a37:	89 50 14             	mov    %edx,0x14(%eax)
  106a3a:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106a3f:	a3 bc 08 13 00       	mov    %eax,0x1308bc
  106a44:	a1 b4 08 13 00       	mov    0x1308b4,%eax
  106a49:	83 c0 01             	add    $0x1,%eax
  106a4c:	a3 b4 08 13 00       	mov    %eax,0x1308b4
  106a51:	83 ec 0c             	sub    $0xc,%esp
  106a54:	68 80 04 13 00       	push   $0x130480
  106a59:	e8 dc 0b 00 00       	call   10763a <__redirect_printf__>
  106a5e:	83 c4 10             	add    $0x10,%esp
  106a61:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106a66:	8b 00                	mov    (%eax),%eax
  106a68:	83 ec 08             	sub    $0x8,%esp
  106a6b:	50                   	push   %eax
  106a6c:	68 00 9a 10 00       	push   $0x109a00
  106a71:	e8 b1 14 00 00       	call   107f27 <printf>
  106a76:	83 c4 10             	add    $0x10,%esp
  106a79:	83 ec 0c             	sub    $0xc,%esp
  106a7c:	6a 00                	push   $0x0
  106a7e:	e8 b7 0b 00 00       	call   10763a <__redirect_printf__>
  106a83:	83 c4 10             	add    $0x10,%esp
  106a86:	83 ec 0c             	sub    $0xc,%esp
  106a89:	8d 45 ec             	lea    -0x14(%ebp),%eax
  106a8c:	50                   	push   %eax
  106a8d:	e8 34 bf ff ff       	call   1029c6 <cmos_read_rtc>
  106a92:	83 c4 10             	add    $0x10,%esp
  106a95:	83 ec 04             	sub    $0x4,%esp
  106a98:	68 6c 08 13 00       	push   $0x13086c
  106a9d:	83 ec 08             	sub    $0x8,%esp
  106aa0:	89 e0                	mov    %esp,%eax
  106aa2:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106aa5:	89 10                	mov    %edx,(%eax)
  106aa7:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  106aab:	66 89 50 04          	mov    %dx,0x4(%eax)
  106aaf:	e8 3f e4 ff ff       	call   104ef3 <cmos_datetime_to_str>
  106ab4:	83 c4 10             	add    $0x10,%esp
  106ab7:	83 ec 0c             	sub    $0xc,%esp
  106aba:	68 80 00 13 00       	push   $0x130080
  106abf:	e8 76 0b 00 00       	call   10763a <__redirect_printf__>
  106ac4:	83 c4 10             	add    $0x10,%esp
  106ac7:	83 ec 04             	sub    $0x4,%esp
  106aca:	68 80 04 13 00       	push   $0x130480
  106acf:	68 6c 08 13 00       	push   $0x13086c
  106ad4:	68 f7 99 10 00       	push   $0x1099f7
  106ad9:	e8 49 14 00 00       	call   107f27 <printf>
  106ade:	83 c4 10             	add    $0x10,%esp
  106ae1:	83 ec 0c             	sub    $0xc,%esp
  106ae4:	6a 00                	push   $0x0
  106ae6:	e8 4f 0b 00 00       	call   10763a <__redirect_printf__>
  106aeb:	83 c4 10             	add    $0x10,%esp
  106aee:	83 ec 08             	sub    $0x8,%esp
  106af1:	68 80 00 13 00       	push   $0x130080
  106af6:	68 f8 03 00 00       	push   $0x3f8
  106afb:	e8 8a ba ff ff       	call   10258a <com_write>
  106b00:	83 c4 10             	add    $0x10,%esp
  106b03:	83 ec 04             	sub    $0x4,%esp
  106b06:	68 00 04 00 00       	push   $0x400
  106b0b:	6a 00                	push   $0x0
  106b0d:	68 80 00 13 00       	push   $0x130080
  106b12:	e8 e5 17 00 00       	call   1082fc <memset>
  106b17:	83 c4 10             	add    $0x10,%esp
  106b1a:	83 ec 04             	sub    $0x4,%esp
  106b1d:	68 ec 03 00 00       	push   $0x3ec
  106b22:	6a 00                	push   $0x0
  106b24:	68 80 04 13 00       	push   $0x130480
  106b29:	e8 ce 17 00 00       	call   1082fc <memset>
  106b2e:	83 c4 10             	add    $0x10,%esp
  106b31:	83 ec 04             	sub    $0x4,%esp
  106b34:	6a 14                	push   $0x14
  106b36:	6a 00                	push   $0x0
  106b38:	68 6c 08 13 00       	push   $0x13086c
  106b3d:	e8 ba 17 00 00       	call   1082fc <memset>
  106b42:	83 c4 10             	add    $0x10,%esp
  106b45:	e8 6c 9b ff ff       	call   1006b6 <sti>
  106b4a:	90                   	nop
  106b4b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106b4e:	c9                   	leave  
  106b4f:	c3                   	ret    

00106b50 <tasking_fork>:
  106b50:	55                   	push   %ebp
  106b51:	89 e5                	mov    %esp,%ebp
  106b53:	83 ec 38             	sub    $0x38,%esp
  106b56:	e8 54 9b ff ff       	call   1006af <cli>
  106b5b:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106b60:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106b63:	e8 ee fc ff ff       	call   106856 <paging_current_page_directory>
  106b68:	83 ec 0c             	sub    $0xc,%esp
  106b6b:	50                   	push   %eax
  106b6c:	e8 e5 fb ff ff       	call   106756 <paging_clone_directory>
  106b71:	83 c4 10             	add    $0x10,%esp
  106b74:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106b77:	83 ec 0c             	sub    $0xc,%esp
  106b7a:	6a 1c                	push   $0x1c
  106b7c:	e8 4f f4 ff ff       	call   105fd0 <kmalloc>
  106b81:	83 c4 10             	add    $0x10,%esp
  106b84:	89 45 e8             	mov    %eax,-0x18(%ebp)
  106b87:	a1 b4 08 13 00       	mov    0x1308b4,%eax
  106b8c:	89 c2                	mov    %eax,%edx
  106b8e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b91:	89 10                	mov    %edx,(%eax)
  106b93:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b96:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  106b9d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106ba0:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  106ba7:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106baa:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  106bb1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106bb4:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106bb7:	89 50 10             	mov    %edx,0x10(%eax)
  106bba:	83 ec 0c             	sub    $0xc,%esp
  106bbd:	68 00 08 00 00       	push   $0x800
  106bc2:	e8 3d f4 ff ff       	call   106004 <kmalloc_a>
  106bc7:	83 c4 10             	add    $0x10,%esp
  106bca:	89 c2                	mov    %eax,%edx
  106bcc:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106bd1:	89 50 14             	mov    %edx,0x14(%eax)
  106bd4:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106bd7:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
  106bde:	a1 b4 08 13 00       	mov    0x1308b4,%eax
  106be3:	83 c0 01             	add    $0x1,%eax
  106be6:	a3 b4 08 13 00       	mov    %eax,0x1308b4
  106beb:	a1 bc 08 13 00       	mov    0x1308bc,%eax
  106bf0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106bf3:	eb 09                	jmp    106bfe <tasking_fork+0xae>
  106bf5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106bf8:	8b 40 18             	mov    0x18(%eax),%eax
  106bfb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106bfe:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106c01:	8b 40 18             	mov    0x18(%eax),%eax
  106c04:	85 c0                	test   %eax,%eax
  106c06:	75 ed                	jne    106bf5 <tasking_fork+0xa5>
  106c08:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106c0b:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106c0e:	89 50 18             	mov    %edx,0x18(%eax)
  106c11:	83 ec 0c             	sub    $0xc,%esp
  106c14:	68 80 04 13 00       	push   $0x130480
  106c19:	e8 1c 0a 00 00       	call   10763a <__redirect_printf__>
  106c1e:	83 c4 10             	add    $0x10,%esp
  106c21:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106c24:	8b 40 18             	mov    0x18(%eax),%eax
  106c27:	8b 10                	mov    (%eax),%edx
  106c29:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106c2c:	8b 00                	mov    (%eax),%eax
  106c2e:	83 ec 04             	sub    $0x4,%esp
  106c31:	52                   	push   %edx
  106c32:	50                   	push   %eax
  106c33:	68 38 9a 10 00       	push   $0x109a38
  106c38:	e8 ea 12 00 00       	call   107f27 <printf>
  106c3d:	83 c4 10             	add    $0x10,%esp
  106c40:	83 ec 0c             	sub    $0xc,%esp
  106c43:	6a 00                	push   $0x0
  106c45:	e8 f0 09 00 00       	call   10763a <__redirect_printf__>
  106c4a:	83 c4 10             	add    $0x10,%esp
  106c4d:	83 ec 0c             	sub    $0xc,%esp
  106c50:	8d 45 d6             	lea    -0x2a(%ebp),%eax
  106c53:	50                   	push   %eax
  106c54:	e8 6d bd ff ff       	call   1029c6 <cmos_read_rtc>
  106c59:	83 c4 10             	add    $0x10,%esp
  106c5c:	83 ec 04             	sub    $0x4,%esp
  106c5f:	68 6c 08 13 00       	push   $0x13086c
  106c64:	83 ec 08             	sub    $0x8,%esp
  106c67:	89 e0                	mov    %esp,%eax
  106c69:	8b 55 d6             	mov    -0x2a(%ebp),%edx
  106c6c:	89 10                	mov    %edx,(%eax)
  106c6e:	0f b7 55 da          	movzwl -0x26(%ebp),%edx
  106c72:	66 89 50 04          	mov    %dx,0x4(%eax)
  106c76:	e8 78 e2 ff ff       	call   104ef3 <cmos_datetime_to_str>
  106c7b:	83 c4 10             	add    $0x10,%esp
  106c7e:	83 ec 0c             	sub    $0xc,%esp
  106c81:	68 80 00 13 00       	push   $0x130080
  106c86:	e8 af 09 00 00       	call   10763a <__redirect_printf__>
  106c8b:	83 c4 10             	add    $0x10,%esp
  106c8e:	83 ec 04             	sub    $0x4,%esp
  106c91:	68 80 04 13 00       	push   $0x130480
  106c96:	68 6c 08 13 00       	push   $0x13086c
  106c9b:	68 f7 99 10 00       	push   $0x1099f7
  106ca0:	e8 82 12 00 00       	call   107f27 <printf>
  106ca5:	83 c4 10             	add    $0x10,%esp
  106ca8:	83 ec 0c             	sub    $0xc,%esp
  106cab:	6a 00                	push   $0x0
  106cad:	e8 88 09 00 00       	call   10763a <__redirect_printf__>
  106cb2:	83 c4 10             	add    $0x10,%esp
  106cb5:	83 ec 08             	sub    $0x8,%esp
  106cb8:	68 80 00 13 00       	push   $0x130080
  106cbd:	68 f8 03 00 00       	push   $0x3f8
  106cc2:	e8 c3 b8 ff ff       	call   10258a <com_write>
  106cc7:	83 c4 10             	add    $0x10,%esp
  106cca:	83 ec 04             	sub    $0x4,%esp
  106ccd:	68 00 04 00 00       	push   $0x400
  106cd2:	6a 00                	push   $0x0
  106cd4:	68 80 00 13 00       	push   $0x130080
  106cd9:	e8 1e 16 00 00       	call   1082fc <memset>
  106cde:	83 c4 10             	add    $0x10,%esp
  106ce1:	83 ec 04             	sub    $0x4,%esp
  106ce4:	68 ec 03 00 00       	push   $0x3ec
  106ce9:	6a 00                	push   $0x0
  106ceb:	68 80 04 13 00       	push   $0x130480
  106cf0:	e8 07 16 00 00       	call   1082fc <memset>
  106cf5:	83 c4 10             	add    $0x10,%esp
  106cf8:	83 ec 04             	sub    $0x4,%esp
  106cfb:	6a 14                	push   $0x14
  106cfd:	6a 00                	push   $0x0
  106cff:	68 6c 08 13 00       	push   $0x13086c
  106d04:	e8 f3 15 00 00       	call   1082fc <memset>
  106d09:	83 c4 10             	add    $0x10,%esp
  106d0c:	e8 c1 a4 ff ff       	call   1011d2 <read_eip>
  106d11:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  106d14:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106d19:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  106d1c:	75 31                	jne    106d4f <tasking_fork+0x1ff>
  106d1e:	89 e0                	mov    %esp,%eax
  106d20:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106d23:	89 e8                	mov    %ebp,%eax
  106d25:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106d28:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106d2b:	8b 55 e0             	mov    -0x20(%ebp),%edx
  106d2e:	89 50 04             	mov    %edx,0x4(%eax)
  106d31:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106d34:	8b 55 dc             	mov    -0x24(%ebp),%edx
  106d37:	89 50 08             	mov    %edx,0x8(%eax)
  106d3a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106d3d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  106d40:	89 50 0c             	mov    %edx,0xc(%eax)
  106d43:	e8 6e 99 ff ff       	call   1006b6 <sti>
  106d48:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106d4b:	8b 00                	mov    (%eax),%eax
  106d4d:	eb 05                	jmp    106d54 <tasking_fork+0x204>
  106d4f:	b8 00 00 00 00       	mov    $0x0,%eax
  106d54:	c9                   	leave  
  106d55:	c3                   	ret    

00106d56 <tasking_scheduler>:
  106d56:	55                   	push   %ebp
  106d57:	89 e5                	mov    %esp,%ebp
  106d59:	53                   	push   %ebx
  106d5a:	83 ec 14             	sub    $0x14,%esp
  106d5d:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106d62:	85 c0                	test   %eax,%eax
  106d64:	0f 84 d1 00 00 00    	je     106e3b <tasking_scheduler+0xe5>
  106d6a:	89 e0                	mov    %esp,%eax
  106d6c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106d6f:	89 e8                	mov    %ebp,%eax
  106d71:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106d74:	e8 59 a4 ff ff       	call   1011d2 <read_eip>
  106d79:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106d7c:	81 7d ec ed ad 10 7a 	cmpl   $0x7a10aded,-0x14(%ebp)
  106d83:	0f 84 b5 00 00 00    	je     106e3e <tasking_scheduler+0xe8>
  106d89:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106d8e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106d91:	89 50 04             	mov    %edx,0x4(%eax)
  106d94:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106d99:	8b 55 f0             	mov    -0x10(%ebp),%edx
  106d9c:	89 50 08             	mov    %edx,0x8(%eax)
  106d9f:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106da4:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106da7:	89 50 0c             	mov    %edx,0xc(%eax)
  106daa:	8b 1d b8 08 13 00    	mov    0x1308b8,%ebx
  106db0:	e8 a1 fa ff ff       	call   106856 <paging_current_page_directory>
  106db5:	89 43 10             	mov    %eax,0x10(%ebx)
  106db8:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106dbd:	8b 40 18             	mov    0x18(%eax),%eax
  106dc0:	a3 b8 08 13 00       	mov    %eax,0x1308b8
  106dc5:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106dca:	85 c0                	test   %eax,%eax
  106dcc:	75 0a                	jne    106dd8 <tasking_scheduler+0x82>
  106dce:	a1 bc 08 13 00       	mov    0x1308bc,%eax
  106dd3:	a3 b8 08 13 00       	mov    %eax,0x1308b8
  106dd8:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106ddd:	8b 40 10             	mov    0x10(%eax),%eax
  106de0:	83 ec 08             	sub    $0x8,%esp
  106de3:	6a 00                	push   $0x0
  106de5:	50                   	push   %eax
  106de6:	e8 7f fa ff ff       	call   10686a <paging_set_current_page_directory>
  106deb:	83 c4 10             	add    $0x10,%esp
  106dee:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106df3:	8b 40 14             	mov    0x14(%eax),%eax
  106df6:	05 00 08 00 00       	add    $0x800,%eax
  106dfb:	83 ec 0c             	sub    $0xc,%esp
  106dfe:	50                   	push   %eax
  106dff:	e8 17 9b ff ff       	call   10091b <gdt_set_kernel_stack>
  106e04:	83 c4 10             	add    $0x10,%esp
  106e07:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106e0c:	8b 40 10             	mov    0x10(%eax),%eax
  106e0f:	8b 98 00 20 00 00    	mov    0x2000(%eax),%ebx
  106e15:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106e1a:	8b 48 08             	mov    0x8(%eax),%ecx
  106e1d:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106e22:	8b 50 04             	mov    0x4(%eax),%edx
  106e25:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106e2a:	8b 40 0c             	mov    0xc(%eax),%eax
  106e2d:	53                   	push   %ebx
  106e2e:	51                   	push   %ecx
  106e2f:	52                   	push   %edx
  106e30:	50                   	push   %eax
  106e31:	e8 9f a3 ff ff       	call   1011d5 <context_switch>
  106e36:	83 c4 10             	add    $0x10,%esp
  106e39:	eb 04                	jmp    106e3f <tasking_scheduler+0xe9>
  106e3b:	90                   	nop
  106e3c:	eb 01                	jmp    106e3f <tasking_scheduler+0xe9>
  106e3e:	90                   	nop
  106e3f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106e42:	c9                   	leave  
  106e43:	c3                   	ret    

00106e44 <tasking_gettid>:
  106e44:	55                   	push   %ebp
  106e45:	89 e5                	mov    %esp,%ebp
  106e47:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106e4c:	8b 00                	mov    (%eax),%eax
  106e4e:	5d                   	pop    %ebp
  106e4f:	c3                   	ret    

00106e50 <tasking_get_current_task>:
  106e50:	55                   	push   %ebp
  106e51:	89 e5                	mov    %esp,%ebp
  106e53:	a1 b8 08 13 00       	mov    0x1308b8,%eax
  106e58:	5d                   	pop    %ebp
  106e59:	c3                   	ret    

00106e5a <tasking_move_stack>:
  106e5a:	55                   	push   %ebp
  106e5b:	89 e5                	mov    %esp,%ebp
  106e5d:	83 ec 48             	sub    $0x48,%esp
  106e60:	e8 f1 f9 ff ff       	call   106856 <paging_current_page_directory>
  106e65:	8b 55 08             	mov    0x8(%ebp),%edx
  106e68:	2b 55 0c             	sub    0xc(%ebp),%edx
  106e6b:	83 ec 04             	sub    $0x4,%esp
  106e6e:	50                   	push   %eax
  106e6f:	ff 75 08             	push   0x8(%ebp)
  106e72:	52                   	push   %edx
  106e73:	e8 73 f7 ff ff       	call   1065eb <paging_map>
  106e78:	83 c4 10             	add    $0x10,%esp
  106e7b:	c7 45 f0 04 fe ff df 	movl   $0xdffffe04,-0x10(%ebp)
  106e82:	83 ec 04             	sub    $0x4,%esp
  106e85:	8d 45 cc             	lea    -0x34(%ebp),%eax
  106e88:	50                   	push   %eax
  106e89:	8d 45 d0             	lea    -0x30(%ebp),%eax
  106e8c:	50                   	push   %eax
  106e8d:	ff 75 f0             	push   -0x10(%ebp)
  106e90:	e8 82 f8 ff ff       	call   106717 <paging_get_page>
  106e95:	83 c4 10             	add    $0x10,%esp
  106e98:	e8 ab f8 ff ff       	call   106748 <paging_flush_tlb>
  106e9d:	83 ec 0c             	sub    $0xc,%esp
  106ea0:	68 80 04 13 00       	push   $0x130480
  106ea5:	e8 90 07 00 00       	call   10763a <__redirect_printf__>
  106eaa:	83 c4 10             	add    $0x10,%esp
  106ead:	83 ec 04             	sub    $0x4,%esp
  106eb0:	ff 75 0c             	push   0xc(%ebp)
  106eb3:	ff 75 08             	push   0x8(%ebp)
  106eb6:	68 64 9a 10 00       	push   $0x109a64
  106ebb:	e8 67 10 00 00       	call   107f27 <printf>
  106ec0:	83 c4 10             	add    $0x10,%esp
  106ec3:	83 ec 0c             	sub    $0xc,%esp
  106ec6:	6a 00                	push   $0x0
  106ec8:	e8 6d 07 00 00       	call   10763a <__redirect_printf__>
  106ecd:	83 c4 10             	add    $0x10,%esp
  106ed0:	83 ec 0c             	sub    $0xc,%esp
  106ed3:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  106ed6:	50                   	push   %eax
  106ed7:	e8 ea ba ff ff       	call   1029c6 <cmos_read_rtc>
  106edc:	83 c4 10             	add    $0x10,%esp
  106edf:	83 ec 04             	sub    $0x4,%esp
  106ee2:	68 6c 08 13 00       	push   $0x13086c
  106ee7:	83 ec 08             	sub    $0x8,%esp
  106eea:	89 e0                	mov    %esp,%eax
  106eec:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  106eef:	89 10                	mov    %edx,(%eax)
  106ef1:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  106ef5:	66 89 50 04          	mov    %dx,0x4(%eax)
  106ef9:	e8 f5 df ff ff       	call   104ef3 <cmos_datetime_to_str>
  106efe:	83 c4 10             	add    $0x10,%esp
  106f01:	83 ec 0c             	sub    $0xc,%esp
  106f04:	68 80 00 13 00       	push   $0x130080
  106f09:	e8 2c 07 00 00       	call   10763a <__redirect_printf__>
  106f0e:	83 c4 10             	add    $0x10,%esp
  106f11:	83 ec 04             	sub    $0x4,%esp
  106f14:	68 80 04 13 00       	push   $0x130480
  106f19:	68 6c 08 13 00       	push   $0x13086c
  106f1e:	68 f7 99 10 00       	push   $0x1099f7
  106f23:	e8 ff 0f 00 00       	call   107f27 <printf>
  106f28:	83 c4 10             	add    $0x10,%esp
  106f2b:	83 ec 0c             	sub    $0xc,%esp
  106f2e:	6a 00                	push   $0x0
  106f30:	e8 05 07 00 00       	call   10763a <__redirect_printf__>
  106f35:	83 c4 10             	add    $0x10,%esp
  106f38:	83 ec 08             	sub    $0x8,%esp
  106f3b:	68 80 00 13 00       	push   $0x130080
  106f40:	68 f8 03 00 00       	push   $0x3f8
  106f45:	e8 40 b6 ff ff       	call   10258a <com_write>
  106f4a:	83 c4 10             	add    $0x10,%esp
  106f4d:	83 ec 04             	sub    $0x4,%esp
  106f50:	68 00 04 00 00       	push   $0x400
  106f55:	6a 00                	push   $0x0
  106f57:	68 80 00 13 00       	push   $0x130080
  106f5c:	e8 9b 13 00 00       	call   1082fc <memset>
  106f61:	83 c4 10             	add    $0x10,%esp
  106f64:	83 ec 04             	sub    $0x4,%esp
  106f67:	68 ec 03 00 00       	push   $0x3ec
  106f6c:	6a 00                	push   $0x0
  106f6e:	68 80 04 13 00       	push   $0x130480
  106f73:	e8 84 13 00 00       	call   1082fc <memset>
  106f78:	83 c4 10             	add    $0x10,%esp
  106f7b:	83 ec 04             	sub    $0x4,%esp
  106f7e:	6a 14                	push   $0x14
  106f80:	6a 00                	push   $0x0
  106f82:	68 6c 08 13 00       	push   $0x13086c
  106f87:	e8 70 13 00 00       	call   1082fc <memset>
  106f8c:	83 c4 10             	add    $0x10,%esp
  106f8f:	89 e0                	mov    %esp,%eax
  106f91:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106f94:	89 e8                	mov    %ebp,%eax
  106f96:	89 45 e8             	mov    %eax,-0x18(%ebp)
  106f99:	8b 15 b0 08 13 00    	mov    0x1308b0,%edx
  106f9f:	8b 45 08             	mov    0x8(%ebp),%eax
  106fa2:	29 d0                	sub    %edx,%eax
  106fa4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  106fa7:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106faa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106fad:	01 d0                	add    %edx,%eax
  106faf:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106fb2:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106fb5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106fb8:	01 d0                	add    %edx,%eax
  106fba:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106fbd:	a1 b0 08 13 00       	mov    0x1308b0,%eax
  106fc2:	2b 45 ec             	sub    -0x14(%ebp),%eax
  106fc5:	89 c1                	mov    %eax,%ecx
  106fc7:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106fca:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106fcd:	83 ec 04             	sub    $0x4,%esp
  106fd0:	51                   	push   %ecx
  106fd1:	52                   	push   %edx
  106fd2:	50                   	push   %eax
  106fd3:	e8 6b 12 00 00       	call   108243 <memcpy>
  106fd8:	83 c4 10             	add    $0x10,%esp
  106fdb:	83 ec 0c             	sub    $0xc,%esp
  106fde:	68 80 04 13 00       	push   $0x130480
  106fe3:	e8 52 06 00 00       	call   10763a <__redirect_printf__>
  106fe8:	83 c4 10             	add    $0x10,%esp
  106feb:	83 ec 0c             	sub    $0xc,%esp
  106fee:	68 90 9a 10 00       	push   $0x109a90
  106ff3:	e8 2f 0f 00 00       	call   107f27 <printf>
  106ff8:	83 c4 10             	add    $0x10,%esp
  106ffb:	83 ec 0c             	sub    $0xc,%esp
  106ffe:	6a 00                	push   $0x0
  107000:	e8 35 06 00 00       	call   10763a <__redirect_printf__>
  107005:	83 c4 10             	add    $0x10,%esp
  107008:	83 ec 0c             	sub    $0xc,%esp
  10700b:	8d 45 c0             	lea    -0x40(%ebp),%eax
  10700e:	50                   	push   %eax
  10700f:	e8 b2 b9 ff ff       	call   1029c6 <cmos_read_rtc>
  107014:	83 c4 10             	add    $0x10,%esp
  107017:	83 ec 04             	sub    $0x4,%esp
  10701a:	68 6c 08 13 00       	push   $0x13086c
  10701f:	83 ec 08             	sub    $0x8,%esp
  107022:	89 e0                	mov    %esp,%eax
  107024:	8b 55 c0             	mov    -0x40(%ebp),%edx
  107027:	89 10                	mov    %edx,(%eax)
  107029:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  10702d:	66 89 50 04          	mov    %dx,0x4(%eax)
  107031:	e8 bd de ff ff       	call   104ef3 <cmos_datetime_to_str>
  107036:	83 c4 10             	add    $0x10,%esp
  107039:	83 ec 0c             	sub    $0xc,%esp
  10703c:	68 80 00 13 00       	push   $0x130080
  107041:	e8 f4 05 00 00       	call   10763a <__redirect_printf__>
  107046:	83 c4 10             	add    $0x10,%esp
  107049:	83 ec 04             	sub    $0x4,%esp
  10704c:	68 80 04 13 00       	push   $0x130480
  107051:	68 6c 08 13 00       	push   $0x13086c
  107056:	68 f7 99 10 00       	push   $0x1099f7
  10705b:	e8 c7 0e 00 00       	call   107f27 <printf>
  107060:	83 c4 10             	add    $0x10,%esp
  107063:	83 ec 0c             	sub    $0xc,%esp
  107066:	6a 00                	push   $0x0
  107068:	e8 cd 05 00 00       	call   10763a <__redirect_printf__>
  10706d:	83 c4 10             	add    $0x10,%esp
  107070:	83 ec 08             	sub    $0x8,%esp
  107073:	68 80 00 13 00       	push   $0x130080
  107078:	68 f8 03 00 00       	push   $0x3f8
  10707d:	e8 08 b5 ff ff       	call   10258a <com_write>
  107082:	83 c4 10             	add    $0x10,%esp
  107085:	83 ec 04             	sub    $0x4,%esp
  107088:	68 00 04 00 00       	push   $0x400
  10708d:	6a 00                	push   $0x0
  10708f:	68 80 00 13 00       	push   $0x130080
  107094:	e8 63 12 00 00       	call   1082fc <memset>
  107099:	83 c4 10             	add    $0x10,%esp
  10709c:	83 ec 04             	sub    $0x4,%esp
  10709f:	68 ec 03 00 00       	push   $0x3ec
  1070a4:	6a 00                	push   $0x0
  1070a6:	68 80 04 13 00       	push   $0x130480
  1070ab:	e8 4c 12 00 00       	call   1082fc <memset>
  1070b0:	83 c4 10             	add    $0x10,%esp
  1070b3:	83 ec 04             	sub    $0x4,%esp
  1070b6:	6a 14                	push   $0x14
  1070b8:	6a 00                	push   $0x0
  1070ba:	68 6c 08 13 00       	push   $0x13086c
  1070bf:	e8 38 12 00 00       	call   1082fc <memset>
  1070c4:	83 c4 10             	add    $0x10,%esp
  1070c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1070ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1070cd:	eb 32                	jmp    107101 <tasking_move_stack+0x2a7>
  1070cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1070d2:	8b 00                	mov    (%eax),%eax
  1070d4:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1070d7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1070da:	3b 45 d8             	cmp    -0x28(%ebp),%eax
  1070dd:	73 1e                	jae    1070fd <tasking_move_stack+0x2a3>
  1070df:	a1 b0 08 13 00       	mov    0x1308b0,%eax
  1070e4:	39 45 d8             	cmp    %eax,-0x28(%ebp)
  1070e7:	73 14                	jae    1070fd <tasking_move_stack+0x2a3>
  1070e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1070ec:	01 45 d8             	add    %eax,-0x28(%ebp)
  1070ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1070f2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1070f5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1070f8:	8b 55 d8             	mov    -0x28(%ebp),%edx
  1070fb:	89 10                	mov    %edx,(%eax)
  1070fd:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
  107101:	8b 45 08             	mov    0x8(%ebp),%eax
  107104:	2b 45 0c             	sub    0xc(%ebp),%eax
  107107:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10710a:	77 c3                	ja     1070cf <tasking_move_stack+0x275>
  10710c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10710f:	89 c4                	mov    %eax,%esp
  107111:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107114:	89 c5                	mov    %eax,%ebp
  107116:	83 ec 0c             	sub    $0xc,%esp
  107119:	68 80 04 13 00       	push   $0x130480
  10711e:	e8 17 05 00 00       	call   10763a <__redirect_printf__>
  107123:	83 c4 10             	add    $0x10,%esp
  107126:	83 ec 04             	sub    $0x4,%esp
  107129:	ff 75 e0             	push   -0x20(%ebp)
  10712c:	ff 75 ec             	push   -0x14(%ebp)
  10712f:	68 ba 9a 10 00       	push   $0x109aba
  107134:	e8 ee 0d 00 00       	call   107f27 <printf>
  107139:	83 c4 10             	add    $0x10,%esp
  10713c:	83 ec 0c             	sub    $0xc,%esp
  10713f:	6a 00                	push   $0x0
  107141:	e8 f4 04 00 00       	call   10763a <__redirect_printf__>
  107146:	83 c4 10             	add    $0x10,%esp
  107149:	83 ec 0c             	sub    $0xc,%esp
  10714c:	8d 45 ba             	lea    -0x46(%ebp),%eax
  10714f:	50                   	push   %eax
  107150:	e8 71 b8 ff ff       	call   1029c6 <cmos_read_rtc>
  107155:	83 c4 10             	add    $0x10,%esp
  107158:	83 ec 04             	sub    $0x4,%esp
  10715b:	68 6c 08 13 00       	push   $0x13086c
  107160:	83 ec 08             	sub    $0x8,%esp
  107163:	89 e0                	mov    %esp,%eax
  107165:	8b 55 ba             	mov    -0x46(%ebp),%edx
  107168:	89 10                	mov    %edx,(%eax)
  10716a:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  10716e:	66 89 50 04          	mov    %dx,0x4(%eax)
  107172:	e8 7c dd ff ff       	call   104ef3 <cmos_datetime_to_str>
  107177:	83 c4 10             	add    $0x10,%esp
  10717a:	83 ec 0c             	sub    $0xc,%esp
  10717d:	68 80 00 13 00       	push   $0x130080
  107182:	e8 b3 04 00 00       	call   10763a <__redirect_printf__>
  107187:	83 c4 10             	add    $0x10,%esp
  10718a:	83 ec 04             	sub    $0x4,%esp
  10718d:	68 80 04 13 00       	push   $0x130480
  107192:	68 6c 08 13 00       	push   $0x13086c
  107197:	68 f7 99 10 00       	push   $0x1099f7
  10719c:	e8 86 0d 00 00       	call   107f27 <printf>
  1071a1:	83 c4 10             	add    $0x10,%esp
  1071a4:	83 ec 0c             	sub    $0xc,%esp
  1071a7:	6a 00                	push   $0x0
  1071a9:	e8 8c 04 00 00       	call   10763a <__redirect_printf__>
  1071ae:	83 c4 10             	add    $0x10,%esp
  1071b1:	83 ec 08             	sub    $0x8,%esp
  1071b4:	68 80 00 13 00       	push   $0x130080
  1071b9:	68 f8 03 00 00       	push   $0x3f8
  1071be:	e8 c7 b3 ff ff       	call   10258a <com_write>
  1071c3:	83 c4 10             	add    $0x10,%esp
  1071c6:	83 ec 04             	sub    $0x4,%esp
  1071c9:	68 00 04 00 00       	push   $0x400
  1071ce:	6a 00                	push   $0x0
  1071d0:	68 80 00 13 00       	push   $0x130080
  1071d5:	e8 22 11 00 00       	call   1082fc <memset>
  1071da:	83 c4 10             	add    $0x10,%esp
  1071dd:	83 ec 04             	sub    $0x4,%esp
  1071e0:	68 ec 03 00 00       	push   $0x3ec
  1071e5:	6a 00                	push   $0x0
  1071e7:	68 80 04 13 00       	push   $0x130480
  1071ec:	e8 0b 11 00 00       	call   1082fc <memset>
  1071f1:	83 c4 10             	add    $0x10,%esp
  1071f4:	83 ec 04             	sub    $0x4,%esp
  1071f7:	6a 14                	push   $0x14
  1071f9:	6a 00                	push   $0x0
  1071fb:	68 6c 08 13 00       	push   $0x13086c
  107200:	e8 f7 10 00 00       	call   1082fc <memset>
  107205:	83 c4 10             	add    $0x10,%esp
  107208:	90                   	nop
  107209:	c9                   	leave  
  10720a:	c3                   	ret    

0010720b <scheduler>:
  10720b:	55                   	push   %ebp
  10720c:	89 e5                	mov    %esp,%ebp
  10720e:	83 ec 08             	sub    $0x8,%esp
  107211:	83 ec 08             	sub    $0x8,%esp
  107214:	ff 75 0c             	push   0xc(%ebp)
  107217:	ff 75 08             	push   0x8(%ebp)
  10721a:	e8 37 fb ff ff       	call   106d56 <tasking_scheduler>
  10721f:	83 c4 10             	add    $0x10,%esp
  107222:	90                   	nop
  107223:	c9                   	leave  
  107224:	c3                   	ret    

00107225 <kernel_main>:
  107225:	55                   	push   %ebp
  107226:	89 e5                	mov    %esp,%ebp
  107228:	83 ec 68             	sub    $0x68,%esp
  10722b:	e8 7f 94 ff ff       	call   1006af <cli>
  107230:	c6 05 c4 08 13 00 00 	movb   $0x0,0x1308c4
  107237:	83 ec 0c             	sub    $0xc,%esp
  10723a:	68 80 04 13 00       	push   $0x130480
  10723f:	e8 f6 03 00 00       	call   10763a <__redirect_printf__>
  107244:	83 c4 10             	add    $0x10,%esp
  107247:	83 ec 0c             	sub    $0xc,%esp
  10724a:	68 d8 9a 10 00       	push   $0x109ad8
  10724f:	e8 d3 0c 00 00       	call   107f27 <printf>
  107254:	83 c4 10             	add    $0x10,%esp
  107257:	83 ec 0c             	sub    $0xc,%esp
  10725a:	6a 00                	push   $0x0
  10725c:	e8 d9 03 00 00       	call   10763a <__redirect_printf__>
  107261:	83 c4 10             	add    $0x10,%esp
  107264:	83 ec 0c             	sub    $0xc,%esp
  107267:	8d 45 e0             	lea    -0x20(%ebp),%eax
  10726a:	50                   	push   %eax
  10726b:	e8 56 b7 ff ff       	call   1029c6 <cmos_read_rtc>
  107270:	83 c4 10             	add    $0x10,%esp
  107273:	83 ec 04             	sub    $0x4,%esp
  107276:	68 6c 08 13 00       	push   $0x13086c
  10727b:	83 ec 08             	sub    $0x8,%esp
  10727e:	89 e0                	mov    %esp,%eax
  107280:	8b 55 e0             	mov    -0x20(%ebp),%edx
  107283:	89 10                	mov    %edx,(%eax)
  107285:	0f b7 55 e4          	movzwl -0x1c(%ebp),%edx
  107289:	66 89 50 04          	mov    %dx,0x4(%eax)
  10728d:	e8 61 dc ff ff       	call   104ef3 <cmos_datetime_to_str>
  107292:	83 c4 10             	add    $0x10,%esp
  107295:	83 ec 0c             	sub    $0xc,%esp
  107298:	68 80 00 13 00       	push   $0x130080
  10729d:	e8 98 03 00 00       	call   10763a <__redirect_printf__>
  1072a2:	83 c4 10             	add    $0x10,%esp
  1072a5:	83 ec 04             	sub    $0x4,%esp
  1072a8:	68 80 04 13 00       	push   $0x130480
  1072ad:	68 6c 08 13 00       	push   $0x13086c
  1072b2:	68 e5 9a 10 00       	push   $0x109ae5
  1072b7:	e8 6b 0c 00 00       	call   107f27 <printf>
  1072bc:	83 c4 10             	add    $0x10,%esp
  1072bf:	83 ec 0c             	sub    $0xc,%esp
  1072c2:	6a 00                	push   $0x0
  1072c4:	e8 71 03 00 00       	call   10763a <__redirect_printf__>
  1072c9:	83 c4 10             	add    $0x10,%esp
  1072cc:	83 ec 08             	sub    $0x8,%esp
  1072cf:	68 80 00 13 00       	push   $0x130080
  1072d4:	68 f8 03 00 00       	push   $0x3f8
  1072d9:	e8 ac b2 ff ff       	call   10258a <com_write>
  1072de:	83 c4 10             	add    $0x10,%esp
  1072e1:	83 ec 04             	sub    $0x4,%esp
  1072e4:	68 00 04 00 00       	push   $0x400
  1072e9:	6a 00                	push   $0x0
  1072eb:	68 80 00 13 00       	push   $0x130080
  1072f0:	e8 07 10 00 00       	call   1082fc <memset>
  1072f5:	83 c4 10             	add    $0x10,%esp
  1072f8:	83 ec 04             	sub    $0x4,%esp
  1072fb:	68 ec 03 00 00       	push   $0x3ec
  107300:	6a 00                	push   $0x0
  107302:	68 80 04 13 00       	push   $0x130480
  107307:	e8 f0 0f 00 00       	call   1082fc <memset>
  10730c:	83 c4 10             	add    $0x10,%esp
  10730f:	83 ec 04             	sub    $0x4,%esp
  107312:	6a 14                	push   $0x14
  107314:	6a 00                	push   $0x0
  107316:	68 6c 08 13 00       	push   $0x13086c
  10731b:	e8 dc 0f 00 00       	call   1082fc <memset>
  107320:	83 c4 10             	add    $0x10,%esp
  107323:	8c c8                	mov    %cs,%eax
  107325:	89 45 f0             	mov    %eax,-0x10(%ebp)
  107328:	8c d0                	mov    %ss,%eax
  10732a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10732d:	83 ec 0c             	sub    $0xc,%esp
  107330:	68 80 04 13 00       	push   $0x130480
  107335:	e8 00 03 00 00       	call   10763a <__redirect_printf__>
  10733a:	83 c4 10             	add    $0x10,%esp
  10733d:	83 ec 04             	sub    $0x4,%esp
  107340:	ff 75 f0             	push   -0x10(%ebp)
  107343:	ff 75 f4             	push   -0xc(%ebp)
  107346:	68 ec 9a 10 00       	push   $0x109aec
  10734b:	e8 d7 0b 00 00       	call   107f27 <printf>
  107350:	83 c4 10             	add    $0x10,%esp
  107353:	83 ec 0c             	sub    $0xc,%esp
  107356:	6a 00                	push   $0x0
  107358:	e8 dd 02 00 00       	call   10763a <__redirect_printf__>
  10735d:	83 c4 10             	add    $0x10,%esp
  107360:	83 ec 0c             	sub    $0xc,%esp
  107363:	8d 45 da             	lea    -0x26(%ebp),%eax
  107366:	50                   	push   %eax
  107367:	e8 5a b6 ff ff       	call   1029c6 <cmos_read_rtc>
  10736c:	83 c4 10             	add    $0x10,%esp
  10736f:	83 ec 04             	sub    $0x4,%esp
  107372:	68 6c 08 13 00       	push   $0x13086c
  107377:	83 ec 08             	sub    $0x8,%esp
  10737a:	89 e0                	mov    %esp,%eax
  10737c:	8b 55 da             	mov    -0x26(%ebp),%edx
  10737f:	89 10                	mov    %edx,(%eax)
  107381:	0f b7 55 de          	movzwl -0x22(%ebp),%edx
  107385:	66 89 50 04          	mov    %dx,0x4(%eax)
  107389:	e8 65 db ff ff       	call   104ef3 <cmos_datetime_to_str>
  10738e:	83 c4 10             	add    $0x10,%esp
  107391:	83 ec 0c             	sub    $0xc,%esp
  107394:	68 80 00 13 00       	push   $0x130080
  107399:	e8 9c 02 00 00       	call   10763a <__redirect_printf__>
  10739e:	83 c4 10             	add    $0x10,%esp
  1073a1:	83 ec 04             	sub    $0x4,%esp
  1073a4:	68 80 04 13 00       	push   $0x130480
  1073a9:	68 6c 08 13 00       	push   $0x13086c
  1073ae:	68 e5 9a 10 00       	push   $0x109ae5
  1073b3:	e8 6f 0b 00 00       	call   107f27 <printf>
  1073b8:	83 c4 10             	add    $0x10,%esp
  1073bb:	83 ec 0c             	sub    $0xc,%esp
  1073be:	6a 00                	push   $0x0
  1073c0:	e8 75 02 00 00       	call   10763a <__redirect_printf__>
  1073c5:	83 c4 10             	add    $0x10,%esp
  1073c8:	83 ec 08             	sub    $0x8,%esp
  1073cb:	68 80 00 13 00       	push   $0x130080
  1073d0:	68 f8 03 00 00       	push   $0x3f8
  1073d5:	e8 b0 b1 ff ff       	call   10258a <com_write>
  1073da:	83 c4 10             	add    $0x10,%esp
  1073dd:	83 ec 04             	sub    $0x4,%esp
  1073e0:	68 00 04 00 00       	push   $0x400
  1073e5:	6a 00                	push   $0x0
  1073e7:	68 80 00 13 00       	push   $0x130080
  1073ec:	e8 0b 0f 00 00       	call   1082fc <memset>
  1073f1:	83 c4 10             	add    $0x10,%esp
  1073f4:	83 ec 04             	sub    $0x4,%esp
  1073f7:	68 ec 03 00 00       	push   $0x3ec
  1073fc:	6a 00                	push   $0x0
  1073fe:	68 80 04 13 00       	push   $0x130480
  107403:	e8 f4 0e 00 00       	call   1082fc <memset>
  107408:	83 c4 10             	add    $0x10,%esp
  10740b:	83 ec 04             	sub    $0x4,%esp
  10740e:	6a 14                	push   $0x14
  107410:	6a 00                	push   $0x0
  107412:	68 6c 08 13 00       	push   $0x13086c
  107417:	e8 e0 0e 00 00       	call   1082fc <memset>
  10741c:	83 c4 10             	add    $0x10,%esp
  10741f:	e8 d9 90 ff ff       	call   1004fd <tty_init>
  107424:	e8 a9 93 ff ff       	call   1007d2 <gdt_init>
  107429:	e8 f1 a7 ff ff       	call   101c1f <pic_remap>
  10742e:	e8 f6 94 ff ff       	call   100929 <idt_init>
  107433:	e8 bc a6 ff ff       	call   101af4 <syscall_init>
  107438:	83 ec 0c             	sub    $0xc,%esp
  10743b:	68 80 04 13 00       	push   $0x130480
  107440:	e8 f5 01 00 00       	call   10763a <__redirect_printf__>
  107445:	83 c4 10             	add    $0x10,%esp
  107448:	83 ec 0c             	sub    $0xc,%esp
  10744b:	68 1b 9b 10 00       	push   $0x109b1b
  107450:	e8 d2 0a 00 00       	call   107f27 <printf>
  107455:	83 c4 10             	add    $0x10,%esp
  107458:	83 ec 0c             	sub    $0xc,%esp
  10745b:	6a 00                	push   $0x0
  10745d:	e8 d8 01 00 00       	call   10763a <__redirect_printf__>
  107462:	83 c4 10             	add    $0x10,%esp
  107465:	83 ec 0c             	sub    $0xc,%esp
  107468:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  10746b:	50                   	push   %eax
  10746c:	e8 55 b5 ff ff       	call   1029c6 <cmos_read_rtc>
  107471:	83 c4 10             	add    $0x10,%esp
  107474:	83 ec 04             	sub    $0x4,%esp
  107477:	68 6c 08 13 00       	push   $0x13086c
  10747c:	83 ec 08             	sub    $0x8,%esp
  10747f:	89 e0                	mov    %esp,%eax
  107481:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  107484:	89 10                	mov    %edx,(%eax)
  107486:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
  10748a:	66 89 50 04          	mov    %dx,0x4(%eax)
  10748e:	e8 60 da ff ff       	call   104ef3 <cmos_datetime_to_str>
  107493:	83 c4 10             	add    $0x10,%esp
  107496:	83 ec 0c             	sub    $0xc,%esp
  107499:	68 80 00 13 00       	push   $0x130080
  10749e:	e8 97 01 00 00       	call   10763a <__redirect_printf__>
  1074a3:	83 c4 10             	add    $0x10,%esp
  1074a6:	83 ec 04             	sub    $0x4,%esp
  1074a9:	68 80 04 13 00       	push   $0x130480
  1074ae:	68 6c 08 13 00       	push   $0x13086c
  1074b3:	68 e5 9a 10 00       	push   $0x109ae5
  1074b8:	e8 6a 0a 00 00       	call   107f27 <printf>
  1074bd:	83 c4 10             	add    $0x10,%esp
  1074c0:	83 ec 0c             	sub    $0xc,%esp
  1074c3:	6a 00                	push   $0x0
  1074c5:	e8 70 01 00 00       	call   10763a <__redirect_printf__>
  1074ca:	83 c4 10             	add    $0x10,%esp
  1074cd:	83 ec 08             	sub    $0x8,%esp
  1074d0:	68 80 00 13 00       	push   $0x130080
  1074d5:	68 f8 03 00 00       	push   $0x3f8
  1074da:	e8 ab b0 ff ff       	call   10258a <com_write>
  1074df:	83 c4 10             	add    $0x10,%esp
  1074e2:	83 ec 04             	sub    $0x4,%esp
  1074e5:	68 00 04 00 00       	push   $0x400
  1074ea:	6a 00                	push   $0x0
  1074ec:	68 80 00 13 00       	push   $0x130080
  1074f1:	e8 06 0e 00 00       	call   1082fc <memset>
  1074f6:	83 c4 10             	add    $0x10,%esp
  1074f9:	83 ec 04             	sub    $0x4,%esp
  1074fc:	68 ec 03 00 00       	push   $0x3ec
  107501:	6a 00                	push   $0x0
  107503:	68 80 04 13 00       	push   $0x130480
  107508:	e8 ef 0d 00 00       	call   1082fc <memset>
  10750d:	83 c4 10             	add    $0x10,%esp
  107510:	83 ec 04             	sub    $0x4,%esp
  107513:	6a 14                	push   $0x14
  107515:	6a 00                	push   $0x0
  107517:	68 6c 08 13 00       	push   $0x13086c
  10751c:	e8 db 0d 00 00       	call   1082fc <memset>
  107521:	83 c4 10             	add    $0x10,%esp
  107524:	c7 45 e6 63 69 61 6f 	movl   $0x6f616963,-0x1a(%ebp)
  10752b:	66 c7 45 ea 0a 00    	movw   $0xa,-0x16(%ebp)
  107531:	83 ec 04             	sub    $0x4,%esp
  107534:	6a 06                	push   $0x6
  107536:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  107539:	50                   	push   %eax
  10753a:	6a 00                	push   $0x0
  10753c:	e8 cb 00 00 00       	call   10760c <write>
  107541:	83 c4 10             	add    $0x10,%esp
  107544:	89 45 ec             	mov    %eax,-0x14(%ebp)
  107547:	83 ec 0c             	sub    $0xc,%esp
  10754a:	68 20 f0 10 00       	push   $0x10f020
  10754f:	e8 e6 00 00 00       	call   10763a <__redirect_printf__>
  107554:	83 c4 10             	add    $0x10,%esp
  107557:	83 ec 08             	sub    $0x8,%esp
  10755a:	ff 75 ec             	push   -0x14(%ebp)
  10755d:	68 34 9b 10 00       	push   $0x109b34
  107562:	e8 c0 09 00 00       	call   107f27 <printf>
  107567:	83 c4 10             	add    $0x10,%esp
  10756a:	83 ec 0c             	sub    $0xc,%esp
  10756d:	6a 00                	push   $0x0
  10756f:	e8 c6 00 00 00       	call   10763a <__redirect_printf__>
  107574:	83 c4 10             	add    $0x10,%esp
  107577:	83 ec 0c             	sub    $0xc,%esp
  10757a:	68 20 f0 10 00       	push   $0x10f020
  10757f:	e8 53 8f ff ff       	call   1004d7 <tty_putstring>
  107584:	83 c4 10             	add    $0x10,%esp
  107587:	83 ec 04             	sub    $0x4,%esp
  10758a:	68 00 02 00 00       	push   $0x200
  10758f:	6a 00                	push   $0x0
  107591:	68 20 f0 10 00       	push   $0x10f020
  107596:	e8 61 0d 00 00       	call   1082fc <memset>
  10759b:	83 c4 10             	add    $0x10,%esp
  10759e:	eb fe                	jmp    10759e <kernel_main+0x379>

001075a0 <user_mode_entry_point>:
  1075a0:	55                   	push   %ebp
  1075a1:	89 e5                	mov    %esp,%ebp
  1075a3:	83 ec 58             	sub    $0x58,%esp
  1075a6:	83 ec 0c             	sub    $0xc,%esp
  1075a9:	68 4b 9b 10 00       	push   $0x109b4b
  1075ae:	e8 74 09 00 00       	call   107f27 <printf>
  1075b3:	83 c4 10             	add    $0x10,%esp
  1075b6:	83 ec 04             	sub    $0x4,%esp
  1075b9:	6a 40                	push   $0x40
  1075bb:	6a 00                	push   $0x0
  1075bd:	8d 45 b0             	lea    -0x50(%ebp),%eax
  1075c0:	50                   	push   %eax
  1075c1:	e8 36 0d 00 00       	call   1082fc <memset>
  1075c6:	83 c4 10             	add    $0x10,%esp
  1075c9:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  1075d0:	eb 32                	jmp    107604 <user_mode_entry_point+0x64>
  1075d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1075d5:	83 ec 04             	sub    $0x4,%esp
  1075d8:	50                   	push   %eax
  1075d9:	8d 45 b0             	lea    -0x50(%ebp),%eax
  1075dc:	50                   	push   %eax
  1075dd:	6a 00                	push   $0x0
  1075df:	e8 28 00 00 00       	call   10760c <write>
  1075e4:	83 c4 10             	add    $0x10,%esp
  1075e7:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1075ea:	83 ec 04             	sub    $0x4,%esp
  1075ed:	ff 75 f0             	push   -0x10(%ebp)
  1075f0:	ff 75 f4             	push   -0xc(%ebp)
  1075f3:	68 58 9b 10 00       	push   $0x109b58
  1075f8:	e8 2a 09 00 00       	call   107f27 <printf>
  1075fd:	83 c4 10             	add    $0x10,%esp
  107600:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  107604:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
  107608:	7e c8                	jle    1075d2 <user_mode_entry_point+0x32>
  10760a:	eb fe                	jmp    10760a <user_mode_entry_point+0x6a>

0010760c <write>:
  10760c:	55                   	push   %ebp
  10760d:	89 e5                	mov    %esp,%ebp
  10760f:	83 ec 18             	sub    $0x18,%esp
  107612:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  107619:	8b 45 0c             	mov    0xc(%ebp),%eax
  10761c:	83 ec 0c             	sub    $0xc,%esp
  10761f:	6a 00                	push   $0x0
  107621:	ff 75 10             	push   0x10(%ebp)
  107624:	50                   	push   %eax
  107625:	ff 75 08             	push   0x8(%ebp)
  107628:	6a 51                	push   $0x51
  10762a:	e8 27 0d 00 00       	call   108356 <syscall_interface>
  10762f:	83 c4 20             	add    $0x20,%esp
  107632:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107635:	8b 45 f4             	mov    -0xc(%ebp),%eax
  107638:	c9                   	leave  
  107639:	c3                   	ret    

0010763a <__redirect_printf__>:
  10763a:	55                   	push   %ebp
  10763b:	89 e5                	mov    %esp,%ebp
  10763d:	8b 45 08             	mov    0x8(%ebp),%eax
  107640:	a3 c8 08 13 00       	mov    %eax,0x1308c8
  107645:	c7 05 cc 08 13 00 00 	movl   $0x0,0x1308cc
  10764c:	00 00 00 
  10764f:	90                   	nop
  107650:	5d                   	pop    %ebp
  107651:	c3                   	ret    

00107652 <print>:
  107652:	55                   	push   %ebp
  107653:	89 e5                	mov    %esp,%ebp
  107655:	83 ec 18             	sub    $0x18,%esp
  107658:	8b 45 08             	mov    0x8(%ebp),%eax
  10765b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10765e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  107665:	eb 5d                	jmp    1076c4 <print+0x72>
  107667:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10766a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10766d:	01 d0                	add    %edx,%eax
  10766f:	0f b6 00             	movzbl (%eax),%eax
  107672:	88 45 ef             	mov    %al,-0x11(%ebp)
  107675:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
  107679:	74 53                	je     1076ce <print+0x7c>
  10767b:	a1 c8 08 13 00       	mov    0x1308c8,%eax
  107680:	85 c0                	test   %eax,%eax
  107682:	75 1c                	jne    1076a0 <print+0x4e>
  107684:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  107688:	83 ec 0c             	sub    $0xc,%esp
  10768b:	50                   	push   %eax
  10768c:	e8 27 0b 00 00       	call   1081b8 <putchar>
  107691:	83 c4 10             	add    $0x10,%esp
  107694:	83 f8 ff             	cmp    $0xffffffff,%eax
  107697:	75 27                	jne    1076c0 <print+0x6e>
  107699:	b8 00 00 00 00       	mov    $0x0,%eax
  10769e:	eb 34                	jmp    1076d4 <print+0x82>
  1076a0:	8b 15 c8 08 13 00    	mov    0x1308c8,%edx
  1076a6:	a1 cc 08 13 00       	mov    0x1308cc,%eax
  1076ab:	01 c2                	add    %eax,%edx
  1076ad:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  1076b1:	88 02                	mov    %al,(%edx)
  1076b3:	a1 cc 08 13 00       	mov    0x1308cc,%eax
  1076b8:	83 c0 01             	add    $0x1,%eax
  1076bb:	a3 cc 08 13 00       	mov    %eax,0x1308cc
  1076c0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1076c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1076c7:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1076ca:	72 9b                	jb     107667 <print+0x15>
  1076cc:	eb 01                	jmp    1076cf <print+0x7d>
  1076ce:	90                   	nop
  1076cf:	b8 01 00 00 00       	mov    $0x1,%eax
  1076d4:	c9                   	leave  
  1076d5:	c3                   	ret    

001076d6 <print_char>:
  1076d6:	55                   	push   %ebp
  1076d7:	89 e5                	mov    %esp,%ebp
  1076d9:	83 ec 08             	sub    $0x8,%esp
  1076dc:	83 ec 08             	sub    $0x8,%esp
  1076df:	6a 01                	push   $0x1
  1076e1:	ff 75 08             	push   0x8(%ebp)
  1076e4:	e8 69 ff ff ff       	call   107652 <print>
  1076e9:	83 c4 10             	add    $0x10,%esp
  1076ec:	b8 01 00 00 00       	mov    $0x1,%eax
  1076f1:	c9                   	leave  
  1076f2:	c3                   	ret    

001076f3 <print_signed_integer>:
  1076f3:	55                   	push   %ebp
  1076f4:	89 e5                	mov    %esp,%ebp
  1076f6:	53                   	push   %ebx
  1076f7:	81 ec 24 02 00 00    	sub    $0x224,%esp
  1076fd:	8b 45 08             	mov    0x8(%ebp),%eax
  107700:	8b 00                	mov    (%eax),%eax
  107702:	85 c0                	test   %eax,%eax
  107704:	75 1c                	jne    107722 <print_signed_integer+0x2f>
  107706:	83 ec 08             	sub    $0x8,%esp
  107709:	6a 01                	push   $0x1
  10770b:	68 80 9b 10 00       	push   $0x109b80
  107710:	e8 3d ff ff ff       	call   107652 <print>
  107715:	83 c4 10             	add    $0x10,%esp
  107718:	b8 01 00 00 00       	mov    $0x1,%eax
  10771d:	e9 4d 01 00 00       	jmp    10786f <print_signed_integer+0x17c>
  107722:	8b 45 08             	mov    0x8(%ebp),%eax
  107725:	8b 00                	mov    (%eax),%eax
  107727:	f7 d0                	not    %eax
  107729:	c1 e8 1f             	shr    $0x1f,%eax
  10772c:	88 45 eb             	mov    %al,-0x15(%ebp)
  10772f:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
  107733:	74 07                	je     10773c <print_signed_integer+0x49>
  107735:	8b 45 08             	mov    0x8(%ebp),%eax
  107738:	8b 00                	mov    (%eax),%eax
  10773a:	eb 07                	jmp    107743 <print_signed_integer+0x50>
  10773c:	8b 45 08             	mov    0x8(%ebp),%eax
  10773f:	8b 00                	mov    (%eax),%eax
  107741:	f7 d8                	neg    %eax
  107743:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107746:	83 ec 04             	sub    $0x4,%esp
  107749:	68 00 01 00 00       	push   $0x100
  10774e:	6a 00                	push   $0x0
  107750:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
  107756:	50                   	push   %eax
  107757:	e8 a0 0b 00 00       	call   1082fc <memset>
  10775c:	83 c4 10             	add    $0x10,%esp
  10775f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  107766:	eb 5f                	jmp    1077c7 <print_signed_integer+0xd4>
  107768:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10776b:	ba 67 66 66 66       	mov    $0x66666667,%edx
  107770:	89 c8                	mov    %ecx,%eax
  107772:	f7 ea                	imul   %edx
  107774:	89 d0                	mov    %edx,%eax
  107776:	c1 f8 02             	sar    $0x2,%eax
  107779:	89 cb                	mov    %ecx,%ebx
  10777b:	c1 fb 1f             	sar    $0x1f,%ebx
  10777e:	29 d8                	sub    %ebx,%eax
  107780:	89 c2                	mov    %eax,%edx
  107782:	89 d0                	mov    %edx,%eax
  107784:	c1 e0 02             	shl    $0x2,%eax
  107787:	01 d0                	add    %edx,%eax
  107789:	01 c0                	add    %eax,%eax
  10778b:	29 c1                	sub    %eax,%ecx
  10778d:	89 ca                	mov    %ecx,%edx
  10778f:	89 d0                	mov    %edx,%eax
  107791:	83 c0 30             	add    $0x30,%eax
  107794:	88 45 ea             	mov    %al,-0x16(%ebp)
  107797:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10779a:	ba 67 66 66 66       	mov    $0x66666667,%edx
  10779f:	89 c8                	mov    %ecx,%eax
  1077a1:	f7 ea                	imul   %edx
  1077a3:	89 d0                	mov    %edx,%eax
  1077a5:	c1 f8 02             	sar    $0x2,%eax
  1077a8:	c1 f9 1f             	sar    $0x1f,%ecx
  1077ab:	89 ca                	mov    %ecx,%edx
  1077ad:	29 d0                	sub    %edx,%eax
  1077af:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1077b2:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
  1077b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1077bb:	01 c2                	add    %eax,%edx
  1077bd:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
  1077c1:	88 02                	mov    %al,(%edx)
  1077c3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1077c7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1077cb:	74 09                	je     1077d6 <print_signed_integer+0xe3>
  1077cd:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  1077d4:	76 92                	jbe    107768 <print_signed_integer+0x75>
  1077d6:	83 ec 04             	sub    $0x4,%esp
  1077d9:	68 00 01 00 00       	push   $0x100
  1077de:	6a 00                	push   $0x0
  1077e0:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  1077e6:	50                   	push   %eax
  1077e7:	e8 10 0b 00 00       	call   1082fc <memset>
  1077ec:	83 c4 10             	add    $0x10,%esp
  1077ef:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  1077f3:	83 f0 01             	xor    $0x1,%eax
  1077f6:	0f b6 c0             	movzbl %al,%eax
  1077f9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1077fc:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  107800:	83 f0 01             	xor    $0x1,%eax
  107803:	84 c0                	test   %al,%al
  107805:	74 07                	je     10780e <print_signed_integer+0x11b>
  107807:	c6 85 e4 fd ff ff 2d 	movb   $0x2d,-0x21c(%ebp)
  10780e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107811:	89 45 ec             	mov    %eax,-0x14(%ebp)
  107814:	eb 29                	jmp    10783f <print_signed_integer+0x14c>
  107816:	8b 45 f0             	mov    -0x10(%ebp),%eax
  107819:	2b 45 ec             	sub    -0x14(%ebp),%eax
  10781c:	89 c2                	mov    %eax,%edx
  10781e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107821:	01 d0                	add    %edx,%eax
  107823:	83 e8 01             	sub    $0x1,%eax
  107826:	0f b6 84 05 e4 fe ff 	movzbl -0x11c(%ebp,%eax,1),%eax
  10782d:	ff 
  10782e:	8d 8d e4 fd ff ff    	lea    -0x21c(%ebp),%ecx
  107834:	8b 55 ec             	mov    -0x14(%ebp),%edx
  107837:	01 ca                	add    %ecx,%edx
  107839:	88 02                	mov    %al,(%edx)
  10783b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10783f:	8b 55 f0             	mov    -0x10(%ebp),%edx
  107842:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107845:	01 d0                	add    %edx,%eax
  107847:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  10784a:	72 ca                	jb     107816 <print_signed_integer+0x123>
  10784c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10784f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107852:	01 d0                	add    %edx,%eax
  107854:	83 ec 08             	sub    $0x8,%esp
  107857:	50                   	push   %eax
  107858:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  10785e:	50                   	push   %eax
  10785f:	e8 ee fd ff ff       	call   107652 <print>
  107864:	83 c4 10             	add    $0x10,%esp
  107867:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10786a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10786d:	01 d0                	add    %edx,%eax
  10786f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  107872:	c9                   	leave  
  107873:	c3                   	ret    

00107874 <print_unsigned_integer>:
  107874:	55                   	push   %ebp
  107875:	89 e5                	mov    %esp,%ebp
  107877:	81 ec 18 02 00 00    	sub    $0x218,%esp
  10787d:	8b 45 08             	mov    0x8(%ebp),%eax
  107880:	8b 00                	mov    (%eax),%eax
  107882:	85 c0                	test   %eax,%eax
  107884:	75 1c                	jne    1078a2 <print_unsigned_integer+0x2e>
  107886:	83 ec 08             	sub    $0x8,%esp
  107889:	6a 01                	push   $0x1
  10788b:	68 80 9b 10 00       	push   $0x109b80
  107890:	e8 bd fd ff ff       	call   107652 <print>
  107895:	83 c4 10             	add    $0x10,%esp
  107898:	b8 01 00 00 00       	mov    $0x1,%eax
  10789d:	e9 e8 00 00 00       	jmp    10798a <print_unsigned_integer+0x116>
  1078a2:	8b 45 08             	mov    0x8(%ebp),%eax
  1078a5:	8b 00                	mov    (%eax),%eax
  1078a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1078aa:	83 ec 04             	sub    $0x4,%esp
  1078ad:	68 00 01 00 00       	push   $0x100
  1078b2:	6a 00                	push   $0x0
  1078b4:	8d 85 eb fe ff ff    	lea    -0x115(%ebp),%eax
  1078ba:	50                   	push   %eax
  1078bb:	e8 3c 0a 00 00       	call   1082fc <memset>
  1078c0:	83 c4 10             	add    $0x10,%esp
  1078c3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1078ca:	eb 4b                	jmp    107917 <print_unsigned_integer+0xa3>
  1078cc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1078cf:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  1078d4:	89 c8                	mov    %ecx,%eax
  1078d6:	f7 e2                	mul    %edx
  1078d8:	c1 ea 03             	shr    $0x3,%edx
  1078db:	89 d0                	mov    %edx,%eax
  1078dd:	c1 e0 02             	shl    $0x2,%eax
  1078e0:	01 d0                	add    %edx,%eax
  1078e2:	01 c0                	add    %eax,%eax
  1078e4:	29 c1                	sub    %eax,%ecx
  1078e6:	89 ca                	mov    %ecx,%edx
  1078e8:	89 d0                	mov    %edx,%eax
  1078ea:	83 c0 30             	add    $0x30,%eax
  1078ed:	88 45 eb             	mov    %al,-0x15(%ebp)
  1078f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1078f3:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  1078f8:	f7 e2                	mul    %edx
  1078fa:	89 d0                	mov    %edx,%eax
  1078fc:	c1 e8 03             	shr    $0x3,%eax
  1078ff:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107902:	8d 95 eb fe ff ff    	lea    -0x115(%ebp),%edx
  107908:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10790b:	01 c2                	add    %eax,%edx
  10790d:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  107911:	88 02                	mov    %al,(%edx)
  107913:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  107917:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  10791b:	74 09                	je     107926 <print_unsigned_integer+0xb2>
  10791d:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  107924:	76 a6                	jbe    1078cc <print_unsigned_integer+0x58>
  107926:	83 ec 04             	sub    $0x4,%esp
  107929:	68 00 01 00 00       	push   $0x100
  10792e:	6a 00                	push   $0x0
  107930:	8d 85 eb fd ff ff    	lea    -0x215(%ebp),%eax
  107936:	50                   	push   %eax
  107937:	e8 c0 09 00 00       	call   1082fc <memset>
  10793c:	83 c4 10             	add    $0x10,%esp
  10793f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  107946:	eb 22                	jmp    10796a <print_unsigned_integer+0xf6>
  107948:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10794b:	2b 45 ec             	sub    -0x14(%ebp),%eax
  10794e:	83 e8 01             	sub    $0x1,%eax
  107951:	0f b6 84 05 eb fe ff 	movzbl -0x115(%ebp,%eax,1),%eax
  107958:	ff 
  107959:	8d 8d eb fd ff ff    	lea    -0x215(%ebp),%ecx
  10795f:	8b 55 ec             	mov    -0x14(%ebp),%edx
  107962:	01 ca                	add    %ecx,%edx
  107964:	88 02                	mov    %al,(%edx)
  107966:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10796a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10796d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  107970:	72 d6                	jb     107948 <print_unsigned_integer+0xd4>
  107972:	83 ec 08             	sub    $0x8,%esp
  107975:	ff 75 f0             	push   -0x10(%ebp)
  107978:	8d 85 eb fd ff ff    	lea    -0x215(%ebp),%eax
  10797e:	50                   	push   %eax
  10797f:	e8 ce fc ff ff       	call   107652 <print>
  107984:	83 c4 10             	add    $0x10,%esp
  107987:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10798a:	c9                   	leave  
  10798b:	c3                   	ret    

0010798c <print_unsigned_long>:
  10798c:	55                   	push   %ebp
  10798d:	89 e5                	mov    %esp,%ebp
  10798f:	57                   	push   %edi
  107990:	56                   	push   %esi
  107991:	53                   	push   %ebx
  107992:	81 ec 3c 02 00 00    	sub    $0x23c,%esp
  107998:	8b 45 08             	mov    0x8(%ebp),%eax
  10799b:	8b 50 04             	mov    0x4(%eax),%edx
  10799e:	8b 00                	mov    (%eax),%eax
  1079a0:	89 c7                	mov    %eax,%edi
  1079a2:	83 f7 00             	xor    $0x0,%edi
  1079a5:	89 f9                	mov    %edi,%ecx
  1079a7:	89 d0                	mov    %edx,%eax
  1079a9:	80 f4 00             	xor    $0x0,%ah
  1079ac:	89 c3                	mov    %eax,%ebx
  1079ae:	89 d8                	mov    %ebx,%eax
  1079b0:	09 c8                	or     %ecx,%eax
  1079b2:	85 c0                	test   %eax,%eax
  1079b4:	75 1c                	jne    1079d2 <print_unsigned_long+0x46>
  1079b6:	83 ec 08             	sub    $0x8,%esp
  1079b9:	6a 01                	push   $0x1
  1079bb:	68 80 9b 10 00       	push   $0x109b80
  1079c0:	e8 8d fc ff ff       	call   107652 <print>
  1079c5:	83 c4 10             	add    $0x10,%esp
  1079c8:	b8 01 00 00 00       	mov    $0x1,%eax
  1079cd:	e9 0e 01 00 00       	jmp    107ae0 <print_unsigned_long+0x154>
  1079d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1079d5:	8b 50 04             	mov    0x4(%eax),%edx
  1079d8:	8b 00                	mov    (%eax),%eax
  1079da:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1079dd:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1079e0:	83 ec 04             	sub    $0x4,%esp
  1079e3:	68 00 01 00 00       	push   $0x100
  1079e8:	6a 00                	push   $0x0
  1079ea:	8d 85 d7 fe ff ff    	lea    -0x129(%ebp),%eax
  1079f0:	50                   	push   %eax
  1079f1:	e8 06 09 00 00       	call   1082fc <memset>
  1079f6:	83 c4 10             	add    $0x10,%esp
  1079f9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  107a00:	eb 49                	jmp    107a4b <print_unsigned_long+0xbf>
  107a02:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107a05:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  107a08:	6a 00                	push   $0x0
  107a0a:	6a 0a                	push   $0xa
  107a0c:	52                   	push   %edx
  107a0d:	50                   	push   %eax
  107a0e:	e8 dd 0a 00 00       	call   1084f0 <__umoddi3>
  107a13:	83 c4 10             	add    $0x10,%esp
  107a16:	83 c0 30             	add    $0x30,%eax
  107a19:	88 45 d7             	mov    %al,-0x29(%ebp)
  107a1c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107a1f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  107a22:	6a 00                	push   $0x0
  107a24:	6a 0a                	push   $0xa
  107a26:	52                   	push   %edx
  107a27:	50                   	push   %eax
  107a28:	e8 93 09 00 00       	call   1083c0 <__udivdi3>
  107a2d:	83 c4 10             	add    $0x10,%esp
  107a30:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107a33:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  107a36:	8d 95 d7 fe ff ff    	lea    -0x129(%ebp),%edx
  107a3c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107a3f:	01 c2                	add    %eax,%edx
  107a41:	0f b6 45 d7          	movzbl -0x29(%ebp),%eax
  107a45:	88 02                	mov    %al,(%edx)
  107a47:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
  107a4b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107a4e:	80 f4 00             	xor    $0x0,%ah
  107a51:	89 85 c0 fd ff ff    	mov    %eax,-0x240(%ebp)
  107a57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107a5a:	80 f4 00             	xor    $0x0,%ah
  107a5d:	89 85 c4 fd ff ff    	mov    %eax,-0x23c(%ebp)
  107a63:	8b 85 c4 fd ff ff    	mov    -0x23c(%ebp),%eax
  107a69:	0b 85 c0 fd ff ff    	or     -0x240(%ebp),%eax
  107a6f:	85 c0                	test   %eax,%eax
  107a71:	74 09                	je     107a7c <print_unsigned_long+0xf0>
  107a73:	81 7d dc ff 00 00 00 	cmpl   $0xff,-0x24(%ebp)
  107a7a:	76 86                	jbe    107a02 <print_unsigned_long+0x76>
  107a7c:	83 ec 04             	sub    $0x4,%esp
  107a7f:	68 00 01 00 00       	push   $0x100
  107a84:	6a 00                	push   $0x0
  107a86:	8d 85 d7 fd ff ff    	lea    -0x229(%ebp),%eax
  107a8c:	50                   	push   %eax
  107a8d:	e8 6a 08 00 00       	call   1082fc <memset>
  107a92:	83 c4 10             	add    $0x10,%esp
  107a95:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  107a9c:	eb 22                	jmp    107ac0 <print_unsigned_long+0x134>
  107a9e:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107aa1:	2b 45 d8             	sub    -0x28(%ebp),%eax
  107aa4:	83 e8 01             	sub    $0x1,%eax
  107aa7:	0f b6 84 05 d7 fe ff 	movzbl -0x129(%ebp,%eax,1),%eax
  107aae:	ff 
  107aaf:	8d 8d d7 fd ff ff    	lea    -0x229(%ebp),%ecx
  107ab5:	8b 55 d8             	mov    -0x28(%ebp),%edx
  107ab8:	01 ca                	add    %ecx,%edx
  107aba:	88 02                	mov    %al,(%edx)
  107abc:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  107ac0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  107ac3:	3b 45 dc             	cmp    -0x24(%ebp),%eax
  107ac6:	72 d6                	jb     107a9e <print_unsigned_long+0x112>
  107ac8:	83 ec 08             	sub    $0x8,%esp
  107acb:	ff 75 dc             	push   -0x24(%ebp)
  107ace:	8d 85 d7 fd ff ff    	lea    -0x229(%ebp),%eax
  107ad4:	50                   	push   %eax
  107ad5:	e8 78 fb ff ff       	call   107652 <print>
  107ada:	83 c4 10             	add    $0x10,%esp
  107add:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107ae0:	8d 65 f4             	lea    -0xc(%ebp),%esp
  107ae3:	5b                   	pop    %ebx
  107ae4:	5e                   	pop    %esi
  107ae5:	5f                   	pop    %edi
  107ae6:	5d                   	pop    %ebp
  107ae7:	c3                   	ret    

00107ae8 <print_hex>:
  107ae8:	55                   	push   %ebp
  107ae9:	89 e5                	mov    %esp,%ebp
  107aeb:	81 ec 38 02 00 00    	sub    $0x238,%esp
  107af1:	8b 45 0c             	mov    0xc(%ebp),%eax
  107af4:	88 85 d4 fd ff ff    	mov    %al,-0x22c(%ebp)
  107afa:	8b 45 08             	mov    0x8(%ebp),%eax
  107afd:	8b 00                	mov    (%eax),%eax
  107aff:	85 c0                	test   %eax,%eax
  107b01:	75 1c                	jne    107b1f <print_hex+0x37>
  107b03:	83 ec 08             	sub    $0x8,%esp
  107b06:	6a 01                	push   $0x1
  107b08:	68 80 9b 10 00       	push   $0x109b80
  107b0d:	e8 40 fb ff ff       	call   107652 <print>
  107b12:	83 c4 10             	add    $0x10,%esp
  107b15:	b8 01 00 00 00       	mov    $0x1,%eax
  107b1a:	e9 9b 01 00 00       	jmp    107cba <print_hex+0x1d2>
  107b1f:	8b 45 08             	mov    0x8(%ebp),%eax
  107b22:	8b 00                	mov    (%eax),%eax
  107b24:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107b27:	83 ec 04             	sub    $0x4,%esp
  107b2a:	68 00 01 00 00       	push   $0x100
  107b2f:	6a 00                	push   $0x0
  107b31:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
  107b37:	50                   	push   %eax
  107b38:	e8 bf 07 00 00       	call   1082fc <memset>
  107b3d:	83 c4 10             	add    $0x10,%esp
  107b40:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  107b47:	e9 f7 00 00 00       	jmp    107c43 <print_hex+0x15b>
  107b4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  107b4f:	83 e0 0f             	and    $0xf,%eax
  107b52:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  107b55:	83 7d e4 0f          	cmpl   $0xf,-0x1c(%ebp)
  107b59:	0f 87 bc 00 00 00    	ja     107c1b <print_hex+0x133>
  107b5f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107b62:	c1 e0 02             	shl    $0x2,%eax
  107b65:	05 84 9b 10 00       	add    $0x109b84,%eax
  107b6a:	8b 00                	mov    (%eax),%eax
  107b6c:	ff e0                	jmp    *%eax
  107b6e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107b71:	83 c0 30             	add    $0x30,%eax
  107b74:	88 45 ef             	mov    %al,-0x11(%ebp)
  107b77:	e9 a9 00 00 00       	jmp    107c25 <print_hex+0x13d>
  107b7c:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  107b83:	74 07                	je     107b8c <print_hex+0xa4>
  107b85:	b8 61 00 00 00       	mov    $0x61,%eax
  107b8a:	eb 05                	jmp    107b91 <print_hex+0xa9>
  107b8c:	b8 41 00 00 00       	mov    $0x41,%eax
  107b91:	88 45 ef             	mov    %al,-0x11(%ebp)
  107b94:	e9 8c 00 00 00       	jmp    107c25 <print_hex+0x13d>
  107b99:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  107ba0:	74 07                	je     107ba9 <print_hex+0xc1>
  107ba2:	b8 62 00 00 00       	mov    $0x62,%eax
  107ba7:	eb 05                	jmp    107bae <print_hex+0xc6>
  107ba9:	b8 42 00 00 00       	mov    $0x42,%eax
  107bae:	88 45 ef             	mov    %al,-0x11(%ebp)
  107bb1:	eb 72                	jmp    107c25 <print_hex+0x13d>
  107bb3:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  107bba:	74 07                	je     107bc3 <print_hex+0xdb>
  107bbc:	b8 63 00 00 00       	mov    $0x63,%eax
  107bc1:	eb 05                	jmp    107bc8 <print_hex+0xe0>
  107bc3:	b8 43 00 00 00       	mov    $0x43,%eax
  107bc8:	88 45 ef             	mov    %al,-0x11(%ebp)
  107bcb:	eb 58                	jmp    107c25 <print_hex+0x13d>
  107bcd:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  107bd4:	74 07                	je     107bdd <print_hex+0xf5>
  107bd6:	b8 64 00 00 00       	mov    $0x64,%eax
  107bdb:	eb 05                	jmp    107be2 <print_hex+0xfa>
  107bdd:	b8 44 00 00 00       	mov    $0x44,%eax
  107be2:	88 45 ef             	mov    %al,-0x11(%ebp)
  107be5:	eb 3e                	jmp    107c25 <print_hex+0x13d>
  107be7:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  107bee:	74 07                	je     107bf7 <print_hex+0x10f>
  107bf0:	b8 65 00 00 00       	mov    $0x65,%eax
  107bf5:	eb 05                	jmp    107bfc <print_hex+0x114>
  107bf7:	b8 45 00 00 00       	mov    $0x45,%eax
  107bfc:	88 45 ef             	mov    %al,-0x11(%ebp)
  107bff:	eb 24                	jmp    107c25 <print_hex+0x13d>
  107c01:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  107c08:	74 07                	je     107c11 <print_hex+0x129>
  107c0a:	b8 66 00 00 00       	mov    $0x66,%eax
  107c0f:	eb 05                	jmp    107c16 <print_hex+0x12e>
  107c11:	b8 46 00 00 00       	mov    $0x46,%eax
  107c16:	88 45 ef             	mov    %al,-0x11(%ebp)
  107c19:	eb 0a                	jmp    107c25 <print_hex+0x13d>
  107c1b:	b8 00 00 00 00       	mov    $0x0,%eax
  107c20:	e9 95 00 00 00       	jmp    107cba <print_hex+0x1d2>
  107c25:	8b 45 f4             	mov    -0xc(%ebp),%eax
  107c28:	c1 e8 04             	shr    $0x4,%eax
  107c2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107c2e:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
  107c34:	8b 45 f0             	mov    -0x10(%ebp),%eax
  107c37:	01 c2                	add    %eax,%edx
  107c39:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  107c3d:	88 02                	mov    %al,(%edx)
  107c3f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  107c43:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  107c47:	74 0d                	je     107c56 <print_hex+0x16e>
  107c49:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  107c50:	0f 86 f6 fe ff ff    	jbe    107b4c <print_hex+0x64>
  107c56:	83 ec 04             	sub    $0x4,%esp
  107c59:	68 00 01 00 00       	push   $0x100
  107c5e:	6a 00                	push   $0x0
  107c60:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  107c66:	50                   	push   %eax
  107c67:	e8 90 06 00 00       	call   1082fc <memset>
  107c6c:	83 c4 10             	add    $0x10,%esp
  107c6f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  107c76:	eb 22                	jmp    107c9a <print_hex+0x1b2>
  107c78:	8b 45 f0             	mov    -0x10(%ebp),%eax
  107c7b:	2b 45 e8             	sub    -0x18(%ebp),%eax
  107c7e:	83 e8 01             	sub    $0x1,%eax
  107c81:	0f b6 84 05 e4 fe ff 	movzbl -0x11c(%ebp,%eax,1),%eax
  107c88:	ff 
  107c89:	8d 8d e4 fd ff ff    	lea    -0x21c(%ebp),%ecx
  107c8f:	8b 55 e8             	mov    -0x18(%ebp),%edx
  107c92:	01 ca                	add    %ecx,%edx
  107c94:	88 02                	mov    %al,(%edx)
  107c96:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  107c9a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  107c9d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  107ca0:	72 d6                	jb     107c78 <print_hex+0x190>
  107ca2:	83 ec 08             	sub    $0x8,%esp
  107ca5:	ff 75 f0             	push   -0x10(%ebp)
  107ca8:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  107cae:	50                   	push   %eax
  107caf:	e8 9e f9 ff ff       	call   107652 <print>
  107cb4:	83 c4 10             	add    $0x10,%esp
  107cb7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  107cba:	c9                   	leave  
  107cbb:	c3                   	ret    

00107cbc <print_float>:
  107cbc:	55                   	push   %ebp
  107cbd:	89 e5                	mov    %esp,%ebp
  107cbf:	57                   	push   %edi
  107cc0:	56                   	push   %esi
  107cc1:	83 ec 60             	sub    $0x60,%esp
  107cc4:	8b 45 08             	mov    0x8(%ebp),%eax
  107cc7:	dd 00                	fldl   (%eax)
  107cc9:	dd 5d e8             	fstpl  -0x18(%ebp)
  107ccc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  107cd3:	dd 45 e8             	fldl   -0x18(%ebp)
  107cd6:	d9 7d b6             	fnstcw -0x4a(%ebp)
  107cd9:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  107cdd:	80 cc 0c             	or     $0xc,%ah
  107ce0:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  107ce4:	d9 6d b4             	fldcw  -0x4c(%ebp)
  107ce7:	db 5d b0             	fistpl -0x50(%ebp)
  107cea:	d9 6d b6             	fldcw  -0x4a(%ebp)
  107ced:	8b 45 b0             	mov    -0x50(%ebp),%eax
  107cf0:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  107cf3:	83 ec 0c             	sub    $0xc,%esp
  107cf6:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  107cf9:	50                   	push   %eax
  107cfa:	e8 f4 f9 ff ff       	call   1076f3 <print_signed_integer>
  107cff:	83 c4 10             	add    $0x10,%esp
  107d02:	01 45 e4             	add    %eax,-0x1c(%ebp)
  107d05:	83 ec 0c             	sub    $0xc,%esp
  107d08:	68 c4 9b 10 00       	push   $0x109bc4
  107d0d:	e8 c4 f9 ff ff       	call   1076d6 <print_char>
  107d12:	83 c4 10             	add    $0x10,%esp
  107d15:	01 45 e4             	add    %eax,-0x1c(%ebp)
  107d18:	8b 45 08             	mov    0x8(%ebp),%eax
  107d1b:	dd 00                	fldl   (%eax)
  107d1d:	d9 ee                	fldz   
  107d1f:	df f1                	fcomip %st(1),%st
  107d21:	dd d8                	fstp   %st(0)
  107d23:	76 09                	jbe    107d2e <print_float+0x72>
  107d25:	8b 45 08             	mov    0x8(%ebp),%eax
  107d28:	dd 00                	fldl   (%eax)
  107d2a:	d9 e0                	fchs   
  107d2c:	eb 05                	jmp    107d33 <print_float+0x77>
  107d2e:	8b 45 08             	mov    0x8(%ebp),%eax
  107d31:	dd 00                	fldl   (%eax)
  107d33:	dd 5d d8             	fstpl  -0x28(%ebp)
  107d36:	dd 45 d8             	fldl   -0x28(%ebp)
  107d39:	d9 7d b6             	fnstcw -0x4a(%ebp)
  107d3c:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  107d40:	80 cc 0c             	or     $0xc,%ah
  107d43:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  107d47:	d9 6d b4             	fldcw  -0x4c(%ebp)
  107d4a:	db 5d d4             	fistpl -0x2c(%ebp)
  107d4d:	d9 6d b6             	fldcw  -0x4a(%ebp)
  107d50:	db 45 d4             	fildl  -0x2c(%ebp)
  107d53:	dd 45 d8             	fldl   -0x28(%ebp)
  107d56:	de e1                	fsubp  %st,%st(1)
  107d58:	dd 5d f0             	fstpl  -0x10(%ebp)
  107d5b:	dd 45 f0             	fldl   -0x10(%ebp)
  107d5e:	dd 05 58 9c 10 00    	fldl   0x109c58
  107d64:	de c9                	fmulp  %st,%st(1)
  107d66:	dd 5d f0             	fstpl  -0x10(%ebp)
  107d69:	dd 45 f0             	fldl   -0x10(%ebp)
  107d6c:	dd 05 58 9c 10 00    	fldl   0x109c58
  107d72:	de c9                	fmulp  %st,%st(1)
  107d74:	dd 05 60 9c 10 00    	fldl   0x109c60
  107d7a:	d9 c9                	fxch   %st(1)
  107d7c:	db f1                	fcomi  %st(1),%st
  107d7e:	dd d9                	fstp   %st(1)
  107d80:	73 0b                	jae    107d8d <print_float+0xd1>
  107d82:	d9 6d b4             	fldcw  -0x4c(%ebp)
  107d85:	df 7d c8             	fistpll -0x38(%ebp)
  107d88:	d9 6d b6             	fldcw  -0x4a(%ebp)
  107d8b:	eb 29                	jmp    107db6 <print_float+0xfa>
  107d8d:	dd 05 60 9c 10 00    	fldl   0x109c60
  107d93:	de e9                	fsubrp %st,%st(1)
  107d95:	d9 6d b4             	fldcw  -0x4c(%ebp)
  107d98:	df 7d c8             	fistpll -0x38(%ebp)
  107d9b:	d9 6d b6             	fldcw  -0x4a(%ebp)
  107d9e:	8b 45 c8             	mov    -0x38(%ebp),%eax
  107da1:	80 f4 00             	xor    $0x0,%ah
  107da4:	89 c6                	mov    %eax,%esi
  107da6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  107da9:	35 00 00 00 80       	xor    $0x80000000,%eax
  107dae:	89 c7                	mov    %eax,%edi
  107db0:	89 75 c8             	mov    %esi,-0x38(%ebp)
  107db3:	89 7d cc             	mov    %edi,-0x34(%ebp)
  107db6:	8b 45 c8             	mov    -0x38(%ebp),%eax
  107db9:	8b 55 cc             	mov    -0x34(%ebp),%edx
  107dbc:	89 45 c8             	mov    %eax,-0x38(%ebp)
  107dbf:	89 55 cc             	mov    %edx,-0x34(%ebp)
  107dc2:	8b 45 c8             	mov    -0x38(%ebp),%eax
  107dc5:	8b 55 cc             	mov    -0x34(%ebp),%edx
  107dc8:	6a 00                	push   $0x0
  107dca:	6a 0a                	push   $0xa
  107dcc:	52                   	push   %edx
  107dcd:	50                   	push   %eax
  107dce:	e8 1d 07 00 00       	call   1084f0 <__umoddi3>
  107dd3:	83 c4 10             	add    $0x10,%esp
  107dd6:	89 c1                	mov    %eax,%ecx
  107dd8:	80 f5 00             	xor    $0x0,%ch
  107ddb:	89 4d a8             	mov    %ecx,-0x58(%ebp)
  107dde:	89 d0                	mov    %edx,%eax
  107de0:	80 f4 00             	xor    $0x0,%ah
  107de3:	89 45 ac             	mov    %eax,-0x54(%ebp)
  107de6:	8b 55 a8             	mov    -0x58(%ebp),%edx
  107de9:	8b 4d ac             	mov    -0x54(%ebp),%ecx
  107dec:	89 c8                	mov    %ecx,%eax
  107dee:	09 d0                	or     %edx,%eax
  107df0:	85 c0                	test   %eax,%eax
  107df2:	74 13                	je     107e07 <print_float+0x14b>
  107df4:	d9 7d b6             	fnstcw -0x4a(%ebp)
  107df7:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  107dfb:	80 cc 0c             	or     $0xc,%ah
  107dfe:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  107e02:	e9 54 ff ff ff       	jmp    107d5b <print_float+0x9f>
  107e07:	90                   	nop
  107e08:	dd 05 60 9c 10 00    	fldl   0x109c60
  107e0e:	dd 45 f0             	fldl   -0x10(%ebp)
  107e11:	df f1                	fcomip %st(1),%st
  107e13:	dd d8                	fstp   %st(0)
  107e15:	73 1c                	jae    107e33 <print_float+0x177>
  107e17:	dd 45 f0             	fldl   -0x10(%ebp)
  107e1a:	d9 7d b6             	fnstcw -0x4a(%ebp)
  107e1d:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  107e21:	80 cc 0c             	or     $0xc,%ah
  107e24:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  107e28:	d9 6d b4             	fldcw  -0x4c(%ebp)
  107e2b:	df 7d a8             	fistpll -0x58(%ebp)
  107e2e:	d9 6d b6             	fldcw  -0x4a(%ebp)
  107e31:	eb 42                	jmp    107e75 <print_float+0x1b9>
  107e33:	dd 45 f0             	fldl   -0x10(%ebp)
  107e36:	dd 05 60 9c 10 00    	fldl   0x109c60
  107e3c:	de e9                	fsubrp %st,%st(1)
  107e3e:	d9 7d b6             	fnstcw -0x4a(%ebp)
  107e41:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  107e45:	80 cc 0c             	or     $0xc,%ah
  107e48:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  107e4c:	d9 6d b4             	fldcw  -0x4c(%ebp)
  107e4f:	df 7d a8             	fistpll -0x58(%ebp)
  107e52:	d9 6d b6             	fldcw  -0x4a(%ebp)
  107e55:	8b 45 a8             	mov    -0x58(%ebp),%eax
  107e58:	80 f4 00             	xor    $0x0,%ah
  107e5b:	89 45 a0             	mov    %eax,-0x60(%ebp)
  107e5e:	8b 45 ac             	mov    -0x54(%ebp),%eax
  107e61:	35 00 00 00 80       	xor    $0x80000000,%eax
  107e66:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  107e69:	8b 45 a0             	mov    -0x60(%ebp),%eax
  107e6c:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  107e6f:	89 45 a8             	mov    %eax,-0x58(%ebp)
  107e72:	89 55 ac             	mov    %edx,-0x54(%ebp)
  107e75:	8b 45 a8             	mov    -0x58(%ebp),%eax
  107e78:	8b 55 ac             	mov    -0x54(%ebp),%edx
  107e7b:	89 45 b8             	mov    %eax,-0x48(%ebp)
  107e7e:	89 55 bc             	mov    %edx,-0x44(%ebp)
  107e81:	83 ec 0c             	sub    $0xc,%esp
  107e84:	8d 45 b8             	lea    -0x48(%ebp),%eax
  107e87:	50                   	push   %eax
  107e88:	e8 ff fa ff ff       	call   10798c <print_unsigned_long>
  107e8d:	83 c4 10             	add    $0x10,%esp
  107e90:	01 45 e4             	add    %eax,-0x1c(%ebp)
  107e93:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107e96:	8d 65 f8             	lea    -0x8(%ebp),%esp
  107e99:	5e                   	pop    %esi
  107e9a:	5f                   	pop    %edi
  107e9b:	5d                   	pop    %ebp
  107e9c:	c3                   	ret    

00107e9d <print_unsigned_int8>:
  107e9d:	55                   	push   %ebp
  107e9e:	89 e5                	mov    %esp,%ebp
  107ea0:	83 ec 18             	sub    $0x18,%esp
  107ea3:	8b 45 08             	mov    0x8(%ebp),%eax
  107ea6:	0f b6 00             	movzbl (%eax),%eax
  107ea9:	0f b6 c0             	movzbl %al,%eax
  107eac:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107eaf:	83 ec 0c             	sub    $0xc,%esp
  107eb2:	8d 45 f4             	lea    -0xc(%ebp),%eax
  107eb5:	50                   	push   %eax
  107eb6:	e8 b9 f9 ff ff       	call   107874 <print_unsigned_integer>
  107ebb:	83 c4 10             	add    $0x10,%esp
  107ebe:	c9                   	leave  
  107ebf:	c3                   	ret    

00107ec0 <print_signed_int8>:
  107ec0:	55                   	push   %ebp
  107ec1:	89 e5                	mov    %esp,%ebp
  107ec3:	83 ec 18             	sub    $0x18,%esp
  107ec6:	8b 45 08             	mov    0x8(%ebp),%eax
  107ec9:	0f b6 00             	movzbl (%eax),%eax
  107ecc:	0f be c0             	movsbl %al,%eax
  107ecf:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107ed2:	83 ec 0c             	sub    $0xc,%esp
  107ed5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  107ed8:	50                   	push   %eax
  107ed9:	e8 15 f8 ff ff       	call   1076f3 <print_signed_integer>
  107ede:	83 c4 10             	add    $0x10,%esp
  107ee1:	c9                   	leave  
  107ee2:	c3                   	ret    

00107ee3 <print_unsigned_int16>:
  107ee3:	55                   	push   %ebp
  107ee4:	89 e5                	mov    %esp,%ebp
  107ee6:	83 ec 18             	sub    $0x18,%esp
  107ee9:	8b 45 08             	mov    0x8(%ebp),%eax
  107eec:	0f b7 00             	movzwl (%eax),%eax
  107eef:	0f b7 c0             	movzwl %ax,%eax
  107ef2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107ef5:	83 ec 0c             	sub    $0xc,%esp
  107ef8:	8d 45 f4             	lea    -0xc(%ebp),%eax
  107efb:	50                   	push   %eax
  107efc:	e8 73 f9 ff ff       	call   107874 <print_unsigned_integer>
  107f01:	83 c4 10             	add    $0x10,%esp
  107f04:	c9                   	leave  
  107f05:	c3                   	ret    

00107f06 <print_signed_int16>:
  107f06:	55                   	push   %ebp
  107f07:	89 e5                	mov    %esp,%ebp
  107f09:	83 ec 18             	sub    $0x18,%esp
  107f0c:	8b 45 08             	mov    0x8(%ebp),%eax
  107f0f:	0f b7 00             	movzwl (%eax),%eax
  107f12:	98                   	cwtl   
  107f13:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107f16:	83 ec 0c             	sub    $0xc,%esp
  107f19:	8d 45 f4             	lea    -0xc(%ebp),%eax
  107f1c:	50                   	push   %eax
  107f1d:	e8 d1 f7 ff ff       	call   1076f3 <print_signed_integer>
  107f22:	83 c4 10             	add    $0x10,%esp
  107f25:	c9                   	leave  
  107f26:	c3                   	ret    

00107f27 <printf>:
  107f27:	55                   	push   %ebp
  107f28:	89 e5                	mov    %esp,%ebp
  107f2a:	83 ec 58             	sub    $0x58,%esp
  107f2d:	8d 45 0c             	lea    0xc(%ebp),%eax
  107f30:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107f33:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  107f3a:	8b 45 08             	mov    0x8(%ebp),%eax
  107f3d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  107f40:	e9 60 02 00 00       	jmp    1081a5 <printf+0x27e>
  107f45:	8b 45 f0             	mov    -0x10(%ebp),%eax
  107f48:	0f b6 00             	movzbl (%eax),%eax
  107f4b:	88 45 df             	mov    %al,-0x21(%ebp)
  107f4e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  107f51:	83 c0 01             	add    $0x1,%eax
  107f54:	0f b6 00             	movzbl (%eax),%eax
  107f57:	88 45 ef             	mov    %al,-0x11(%ebp)
  107f5a:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
  107f5e:	3c 25                	cmp    $0x25,%al
  107f60:	0f 85 23 02 00 00    	jne    108189 <printf+0x262>
  107f66:	0f be 45 ef          	movsbl -0x11(%ebp),%eax
  107f6a:	83 e8 55             	sub    $0x55,%eax
  107f6d:	83 f8 23             	cmp    $0x23,%eax
  107f70:	0f 87 2a 02 00 00    	ja     1081a0 <printf+0x279>
  107f76:	8b 04 85 c8 9b 10 00 	mov    0x109bc8(,%eax,4),%eax
  107f7d:	ff e0                	jmp    *%eax
  107f7f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  107f83:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107f86:	8d 50 04             	lea    0x4(%eax),%edx
  107f89:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107f8c:	8b 00                	mov    (%eax),%eax
  107f8e:	88 45 de             	mov    %al,-0x22(%ebp)
  107f91:	83 ec 0c             	sub    $0xc,%esp
  107f94:	8d 45 de             	lea    -0x22(%ebp),%eax
  107f97:	50                   	push   %eax
  107f98:	e8 39 f7 ff ff       	call   1076d6 <print_char>
  107f9d:	83 c4 10             	add    $0x10,%esp
  107fa0:	01 45 f4             	add    %eax,-0xc(%ebp)
  107fa3:	e9 f9 01 00 00       	jmp    1081a1 <printf+0x27a>
  107fa8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  107fac:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107faf:	8d 50 04             	lea    0x4(%eax),%edx
  107fb2:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107fb5:	8b 00                	mov    (%eax),%eax
  107fb7:	89 45 d8             	mov    %eax,-0x28(%ebp)
  107fba:	83 ec 0c             	sub    $0xc,%esp
  107fbd:	8d 45 d8             	lea    -0x28(%ebp),%eax
  107fc0:	50                   	push   %eax
  107fc1:	e8 2d f7 ff ff       	call   1076f3 <print_signed_integer>
  107fc6:	83 c4 10             	add    $0x10,%esp
  107fc9:	01 45 f4             	add    %eax,-0xc(%ebp)
  107fcc:	e9 d0 01 00 00       	jmp    1081a1 <printf+0x27a>
  107fd1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  107fd5:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107fd8:	8d 50 04             	lea    0x4(%eax),%edx
  107fdb:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107fde:	8b 00                	mov    (%eax),%eax
  107fe0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  107fe3:	83 ec 0c             	sub    $0xc,%esp
  107fe6:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  107fe9:	50                   	push   %eax
  107fea:	e8 85 f8 ff ff       	call   107874 <print_unsigned_integer>
  107fef:	83 c4 10             	add    $0x10,%esp
  107ff2:	01 45 f4             	add    %eax,-0xc(%ebp)
  107ff5:	e9 a7 01 00 00       	jmp    1081a1 <printf+0x27a>
  107ffa:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  107ffe:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108001:	8d 50 08             	lea    0x8(%eax),%edx
  108004:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108007:	8b 50 04             	mov    0x4(%eax),%edx
  10800a:	8b 00                	mov    (%eax),%eax
  10800c:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10800f:	89 55 cc             	mov    %edx,-0x34(%ebp)
  108012:	83 ec 0c             	sub    $0xc,%esp
  108015:	8d 45 c8             	lea    -0x38(%ebp),%eax
  108018:	50                   	push   %eax
  108019:	e8 6e f9 ff ff       	call   10798c <print_unsigned_long>
  10801e:	83 c4 10             	add    $0x10,%esp
  108021:	01 45 f4             	add    %eax,-0xc(%ebp)
  108024:	e9 78 01 00 00       	jmp    1081a1 <printf+0x27a>
  108029:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10802d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108030:	8d 50 04             	lea    0x4(%eax),%edx
  108033:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108036:	8b 00                	mov    (%eax),%eax
  108038:	88 45 c7             	mov    %al,-0x39(%ebp)
  10803b:	83 ec 0c             	sub    $0xc,%esp
  10803e:	8d 45 c7             	lea    -0x39(%ebp),%eax
  108041:	50                   	push   %eax
  108042:	e8 56 fe ff ff       	call   107e9d <print_unsigned_int8>
  108047:	83 c4 10             	add    $0x10,%esp
  10804a:	01 45 f4             	add    %eax,-0xc(%ebp)
  10804d:	e9 4f 01 00 00       	jmp    1081a1 <printf+0x27a>
  108052:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108056:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108059:	8d 50 04             	lea    0x4(%eax),%edx
  10805c:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10805f:	8b 00                	mov    (%eax),%eax
  108061:	88 45 c6             	mov    %al,-0x3a(%ebp)
  108064:	83 ec 0c             	sub    $0xc,%esp
  108067:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  10806a:	50                   	push   %eax
  10806b:	e8 50 fe ff ff       	call   107ec0 <print_signed_int8>
  108070:	83 c4 10             	add    $0x10,%esp
  108073:	01 45 f4             	add    %eax,-0xc(%ebp)
  108076:	e9 26 01 00 00       	jmp    1081a1 <printf+0x27a>
  10807b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10807f:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108082:	8d 50 04             	lea    0x4(%eax),%edx
  108085:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108088:	8b 00                	mov    (%eax),%eax
  10808a:	66 89 45 c4          	mov    %ax,-0x3c(%ebp)
  10808e:	83 ec 0c             	sub    $0xc,%esp
  108091:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  108094:	50                   	push   %eax
  108095:	e8 49 fe ff ff       	call   107ee3 <print_unsigned_int16>
  10809a:	83 c4 10             	add    $0x10,%esp
  10809d:	01 45 f4             	add    %eax,-0xc(%ebp)
  1080a0:	e9 fc 00 00 00       	jmp    1081a1 <printf+0x27a>
  1080a5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1080a9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1080ac:	8d 50 04             	lea    0x4(%eax),%edx
  1080af:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1080b2:	8b 00                	mov    (%eax),%eax
  1080b4:	66 89 45 c2          	mov    %ax,-0x3e(%ebp)
  1080b8:	83 ec 0c             	sub    $0xc,%esp
  1080bb:	8d 45 c2             	lea    -0x3e(%ebp),%eax
  1080be:	50                   	push   %eax
  1080bf:	e8 42 fe ff ff       	call   107f06 <print_signed_int16>
  1080c4:	83 c4 10             	add    $0x10,%esp
  1080c7:	01 45 f4             	add    %eax,-0xc(%ebp)
  1080ca:	e9 d2 00 00 00       	jmp    1081a1 <printf+0x27a>
  1080cf:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1080d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1080d6:	8d 50 04             	lea    0x4(%eax),%edx
  1080d9:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1080dc:	8b 00                	mov    (%eax),%eax
  1080de:	89 45 bc             	mov    %eax,-0x44(%ebp)
  1080e1:	83 ec 08             	sub    $0x8,%esp
  1080e4:	6a 01                	push   $0x1
  1080e6:	8d 45 bc             	lea    -0x44(%ebp),%eax
  1080e9:	50                   	push   %eax
  1080ea:	e8 f9 f9 ff ff       	call   107ae8 <print_hex>
  1080ef:	83 c4 10             	add    $0x10,%esp
  1080f2:	01 45 f4             	add    %eax,-0xc(%ebp)
  1080f5:	e9 a7 00 00 00       	jmp    1081a1 <printf+0x27a>
  1080fa:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1080fe:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108101:	8d 50 04             	lea    0x4(%eax),%edx
  108104:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108107:	8b 00                	mov    (%eax),%eax
  108109:	89 45 b8             	mov    %eax,-0x48(%ebp)
  10810c:	83 ec 08             	sub    $0x8,%esp
  10810f:	6a 00                	push   $0x0
  108111:	8d 45 b8             	lea    -0x48(%ebp),%eax
  108114:	50                   	push   %eax
  108115:	e8 ce f9 ff ff       	call   107ae8 <print_hex>
  10811a:	83 c4 10             	add    $0x10,%esp
  10811d:	01 45 f4             	add    %eax,-0xc(%ebp)
  108120:	eb 7f                	jmp    1081a1 <printf+0x27a>
  108122:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108126:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108129:	8d 50 04             	lea    0x4(%eax),%edx
  10812c:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10812f:	8b 00                	mov    (%eax),%eax
  108131:	89 45 e8             	mov    %eax,-0x18(%ebp)
  108134:	83 ec 0c             	sub    $0xc,%esp
  108137:	ff 75 e8             	push   -0x18(%ebp)
  10813a:	e8 f0 01 00 00       	call   10832f <strlen>
  10813f:	83 c4 10             	add    $0x10,%esp
  108142:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  108145:	83 ec 08             	sub    $0x8,%esp
  108148:	ff 75 e4             	push   -0x1c(%ebp)
  10814b:	ff 75 e8             	push   -0x18(%ebp)
  10814e:	e8 ff f4 ff ff       	call   107652 <print>
  108153:	83 c4 10             	add    $0x10,%esp
  108156:	8b 55 f4             	mov    -0xc(%ebp),%edx
  108159:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10815c:	01 d0                	add    %edx,%eax
  10815e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108161:	eb 3e                	jmp    1081a1 <printf+0x27a>
  108163:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108167:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10816a:	8d 50 08             	lea    0x8(%eax),%edx
  10816d:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108170:	dd 00                	fldl   (%eax)
  108172:	dd 5d b0             	fstpl  -0x50(%ebp)
  108175:	83 ec 0c             	sub    $0xc,%esp
  108178:	8d 45 b0             	lea    -0x50(%ebp),%eax
  10817b:	50                   	push   %eax
  10817c:	e8 3b fb ff ff       	call   107cbc <print_float>
  108181:	83 c4 10             	add    $0x10,%esp
  108184:	01 45 f4             	add    %eax,-0xc(%ebp)
  108187:	eb 18                	jmp    1081a1 <printf+0x27a>
  108189:	83 ec 08             	sub    $0x8,%esp
  10818c:	6a 01                	push   $0x1
  10818e:	8d 45 df             	lea    -0x21(%ebp),%eax
  108191:	50                   	push   %eax
  108192:	e8 bb f4 ff ff       	call   107652 <print>
  108197:	83 c4 10             	add    $0x10,%esp
  10819a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10819e:	eb 01                	jmp    1081a1 <printf+0x27a>
  1081a0:	90                   	nop
  1081a1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1081a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1081a8:	0f b6 00             	movzbl (%eax),%eax
  1081ab:	84 c0                	test   %al,%al
  1081ad:	0f 85 92 fd ff ff    	jne    107f45 <printf+0x1e>
  1081b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1081b6:	c9                   	leave  
  1081b7:	c3                   	ret    

001081b8 <putchar>:
  1081b8:	55                   	push   %ebp
  1081b9:	89 e5                	mov    %esp,%ebp
  1081bb:	83 ec 08             	sub    $0x8,%esp
  1081be:	83 ec 04             	sub    $0x4,%esp
  1081c1:	6a 01                	push   $0x1
  1081c3:	8d 45 08             	lea    0x8(%ebp),%eax
  1081c6:	50                   	push   %eax
  1081c7:	6a 00                	push   $0x0
  1081c9:	e8 3e f4 ff ff       	call   10760c <write>
  1081ce:	83 c4 10             	add    $0x10,%esp
  1081d1:	c9                   	leave  
  1081d2:	c3                   	ret    

001081d3 <memcmp>:
  1081d3:	55                   	push   %ebp
  1081d4:	89 e5                	mov    %esp,%ebp
  1081d6:	83 ec 10             	sub    $0x10,%esp
  1081d9:	8b 45 08             	mov    0x8(%ebp),%eax
  1081dc:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1081df:	8b 45 0c             	mov    0xc(%ebp),%eax
  1081e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1081e5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1081ec:	eb 46                	jmp    108234 <memcmp+0x61>
  1081ee:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1081f1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1081f4:	01 d0                	add    %edx,%eax
  1081f6:	0f b6 10             	movzbl (%eax),%edx
  1081f9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1081fc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1081ff:	01 c8                	add    %ecx,%eax
  108201:	0f b6 00             	movzbl (%eax),%eax
  108204:	38 c2                	cmp    %al,%dl
  108206:	73 07                	jae    10820f <memcmp+0x3c>
  108208:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10820d:	eb 32                	jmp    108241 <memcmp+0x6e>
  10820f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  108212:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108215:	01 d0                	add    %edx,%eax
  108217:	0f b6 10             	movzbl (%eax),%edx
  10821a:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  10821d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108220:	01 c8                	add    %ecx,%eax
  108222:	0f b6 00             	movzbl (%eax),%eax
  108225:	38 c2                	cmp    %al,%dl
  108227:	73 07                	jae    108230 <memcmp+0x5d>
  108229:	b8 01 00 00 00       	mov    $0x1,%eax
  10822e:	eb 11                	jmp    108241 <memcmp+0x6e>
  108230:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108234:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108237:	3b 45 10             	cmp    0x10(%ebp),%eax
  10823a:	72 b2                	jb     1081ee <memcmp+0x1b>
  10823c:	b8 00 00 00 00       	mov    $0x0,%eax
  108241:	c9                   	leave  
  108242:	c3                   	ret    

00108243 <memcpy>:
  108243:	55                   	push   %ebp
  108244:	89 e5                	mov    %esp,%ebp
  108246:	83 ec 10             	sub    $0x10,%esp
  108249:	8b 45 08             	mov    0x8(%ebp),%eax
  10824c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10824f:	8b 45 0c             	mov    0xc(%ebp),%eax
  108252:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108255:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10825c:	eb 19                	jmp    108277 <memcpy+0x34>
  10825e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  108261:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108264:	01 d0                	add    %edx,%eax
  108266:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  108269:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10826c:	01 ca                	add    %ecx,%edx
  10826e:	0f b6 00             	movzbl (%eax),%eax
  108271:	88 02                	mov    %al,(%edx)
  108273:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108277:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10827a:	3b 45 10             	cmp    0x10(%ebp),%eax
  10827d:	72 df                	jb     10825e <memcpy+0x1b>
  10827f:	8b 45 08             	mov    0x8(%ebp),%eax
  108282:	c9                   	leave  
  108283:	c3                   	ret    

00108284 <memmove>:
  108284:	55                   	push   %ebp
  108285:	89 e5                	mov    %esp,%ebp
  108287:	83 ec 10             	sub    $0x10,%esp
  10828a:	8b 45 08             	mov    0x8(%ebp),%eax
  10828d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108290:	8b 45 0c             	mov    0xc(%ebp),%eax
  108293:	89 45 f0             	mov    %eax,-0x10(%ebp)
  108296:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108299:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  10829c:	73 2c                	jae    1082ca <memmove+0x46>
  10829e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1082a5:	eb 19                	jmp    1082c0 <memmove+0x3c>
  1082a7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1082aa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1082ad:	01 d0                	add    %edx,%eax
  1082af:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1082b2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1082b5:	01 ca                	add    %ecx,%edx
  1082b7:	0f b6 00             	movzbl (%eax),%eax
  1082ba:	88 02                	mov    %al,(%edx)
  1082bc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1082c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1082c3:	3b 45 10             	cmp    0x10(%ebp),%eax
  1082c6:	72 df                	jb     1082a7 <memmove+0x23>
  1082c8:	eb 2d                	jmp    1082f7 <memmove+0x73>
  1082ca:	8b 45 10             	mov    0x10(%ebp),%eax
  1082cd:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1082d0:	eb 1f                	jmp    1082f1 <memmove+0x6d>
  1082d2:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1082d5:	8d 50 ff             	lea    -0x1(%eax),%edx
  1082d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1082db:	01 d0                	add    %edx,%eax
  1082dd:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1082e0:	8d 4a ff             	lea    -0x1(%edx),%ecx
  1082e3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1082e6:	01 ca                	add    %ecx,%edx
  1082e8:	0f b6 00             	movzbl (%eax),%eax
  1082eb:	88 02                	mov    %al,(%edx)
  1082ed:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  1082f1:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1082f5:	75 db                	jne    1082d2 <memmove+0x4e>
  1082f7:	8b 45 08             	mov    0x8(%ebp),%eax
  1082fa:	c9                   	leave  
  1082fb:	c3                   	ret    

001082fc <memset>:
  1082fc:	55                   	push   %ebp
  1082fd:	89 e5                	mov    %esp,%ebp
  1082ff:	83 ec 10             	sub    $0x10,%esp
  108302:	8b 45 08             	mov    0x8(%ebp),%eax
  108305:	89 45 f8             	mov    %eax,-0x8(%ebp)
  108308:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10830f:	eb 11                	jmp    108322 <memset+0x26>
  108311:	8b 55 f8             	mov    -0x8(%ebp),%edx
  108314:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108317:	01 d0                	add    %edx,%eax
  108319:	8b 55 0c             	mov    0xc(%ebp),%edx
  10831c:	88 10                	mov    %dl,(%eax)
  10831e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108322:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108325:	3b 45 10             	cmp    0x10(%ebp),%eax
  108328:	72 e7                	jb     108311 <memset+0x15>
  10832a:	8b 45 08             	mov    0x8(%ebp),%eax
  10832d:	c9                   	leave  
  10832e:	c3                   	ret    

0010832f <strlen>:
  10832f:	55                   	push   %ebp
  108330:	89 e5                	mov    %esp,%ebp
  108332:	83 ec 10             	sub    $0x10,%esp
  108335:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10833c:	eb 04                	jmp    108342 <strlen+0x13>
  10833e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108342:	8b 55 08             	mov    0x8(%ebp),%edx
  108345:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108348:	01 d0                	add    %edx,%eax
  10834a:	0f b6 00             	movzbl (%eax),%eax
  10834d:	84 c0                	test   %al,%al
  10834f:	75 ed                	jne    10833e <strlen+0xf>
  108351:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108354:	c9                   	leave  
  108355:	c3                   	ret    

00108356 <syscall_interface>:
  108356:	55                   	push   %ebp
  108357:	89 e5                	mov    %esp,%ebp
  108359:	8b 44 24 08          	mov    0x8(%esp),%eax

0010835d <test_80>:
  10835d:	83 f8 50             	cmp    $0x50,%eax
  108360:	74 02                	je     108364 <trigger_int_80>
  108362:	eb 14                	jmp    108378 <test_81>

00108364 <trigger_int_80>:
  108364:	8b 44 24 0c          	mov    0xc(%esp),%eax
  108368:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  10836c:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  108370:	8b 54 24 18          	mov    0x18(%esp),%edx
  108374:	cd 50                	int    $0x50
  108376:	eb 36                	jmp    1083ae <_exit>

00108378 <test_81>:
  108378:	83 f8 51             	cmp    $0x51,%eax
  10837b:	74 02                	je     10837f <trigger_int_81>
  10837d:	eb 14                	jmp    108393 <test_82>

0010837f <trigger_int_81>:
  10837f:	8b 44 24 0c          	mov    0xc(%esp),%eax
  108383:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  108387:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  10838b:	8b 54 24 18          	mov    0x18(%esp),%edx
  10838f:	cd 51                	int    $0x51
  108391:	eb 1b                	jmp    1083ae <_exit>

00108393 <test_82>:
  108393:	83 f8 52             	cmp    $0x52,%eax
  108396:	74 02                	je     10839a <trigger_int_82>
  108398:	eb 14                	jmp    1083ae <_exit>

0010839a <trigger_int_82>:
  10839a:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10839e:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  1083a2:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  1083a6:	8b 54 24 18          	mov    0x18(%esp),%edx
  1083aa:	cd 52                	int    $0x52
  1083ac:	eb 00                	jmp    1083ae <_exit>

001083ae <_exit>:
  1083ae:	89 ec                	mov    %ebp,%esp
  1083b0:	5d                   	pop    %ebp
  1083b1:	c3                   	ret    
  1083b2:	66 90                	xchg   %ax,%ax
  1083b4:	66 90                	xchg   %ax,%ax
  1083b6:	66 90                	xchg   %ax,%ax
  1083b8:	66 90                	xchg   %ax,%ax
  1083ba:	66 90                	xchg   %ax,%ax
  1083bc:	66 90                	xchg   %ax,%ax
  1083be:	66 90                	xchg   %ax,%ax

001083c0 <__udivdi3>:
  1083c0:	55                   	push   %ebp
  1083c1:	89 e5                	mov    %esp,%ebp
  1083c3:	57                   	push   %edi
  1083c4:	56                   	push   %esi
  1083c5:	53                   	push   %ebx
  1083c6:	83 ec 1c             	sub    $0x1c,%esp
  1083c9:	8b 7d 08             	mov    0x8(%ebp),%edi
  1083cc:	8b 45 14             	mov    0x14(%ebp),%eax
  1083cf:	8b 75 0c             	mov    0xc(%ebp),%esi
  1083d2:	8b 5d 10             	mov    0x10(%ebp),%ebx
  1083d5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  1083d8:	85 c0                	test   %eax,%eax
  1083da:	75 24                	jne    108400 <__udivdi3+0x40>
  1083dc:	39 f3                	cmp    %esi,%ebx
  1083de:	76 60                	jbe    108440 <__udivdi3+0x80>
  1083e0:	89 f8                	mov    %edi,%eax
  1083e2:	31 ff                	xor    %edi,%edi
  1083e4:	89 f2                	mov    %esi,%edx
  1083e6:	f7 f3                	div    %ebx
  1083e8:	89 fa                	mov    %edi,%edx
  1083ea:	83 c4 1c             	add    $0x1c,%esp
  1083ed:	5b                   	pop    %ebx
  1083ee:	5e                   	pop    %esi
  1083ef:	5f                   	pop    %edi
  1083f0:	5d                   	pop    %ebp
  1083f1:	c3                   	ret    
  1083f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1083f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108400:	39 f0                	cmp    %esi,%eax
  108402:	76 1c                	jbe    108420 <__udivdi3+0x60>
  108404:	31 ff                	xor    %edi,%edi
  108406:	31 c0                	xor    %eax,%eax
  108408:	89 fa                	mov    %edi,%edx
  10840a:	83 c4 1c             	add    $0x1c,%esp
  10840d:	5b                   	pop    %ebx
  10840e:	5e                   	pop    %esi
  10840f:	5f                   	pop    %edi
  108410:	5d                   	pop    %ebp
  108411:	c3                   	ret    
  108412:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108420:	0f bd f8             	bsr    %eax,%edi
  108423:	83 f7 1f             	xor    $0x1f,%edi
  108426:	75 48                	jne    108470 <__udivdi3+0xb0>
  108428:	39 f0                	cmp    %esi,%eax
  10842a:	72 07                	jb     108433 <__udivdi3+0x73>
  10842c:	31 c0                	xor    %eax,%eax
  10842e:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  108431:	77 d5                	ja     108408 <__udivdi3+0x48>
  108433:	b8 01 00 00 00       	mov    $0x1,%eax
  108438:	eb ce                	jmp    108408 <__udivdi3+0x48>
  10843a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108440:	89 d9                	mov    %ebx,%ecx
  108442:	85 db                	test   %ebx,%ebx
  108444:	75 0b                	jne    108451 <__udivdi3+0x91>
  108446:	b8 01 00 00 00       	mov    $0x1,%eax
  10844b:	31 d2                	xor    %edx,%edx
  10844d:	f7 f3                	div    %ebx
  10844f:	89 c1                	mov    %eax,%ecx
  108451:	31 d2                	xor    %edx,%edx
  108453:	89 f0                	mov    %esi,%eax
  108455:	f7 f1                	div    %ecx
  108457:	89 c6                	mov    %eax,%esi
  108459:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10845c:	89 f7                	mov    %esi,%edi
  10845e:	f7 f1                	div    %ecx
  108460:	89 fa                	mov    %edi,%edx
  108462:	83 c4 1c             	add    $0x1c,%esp
  108465:	5b                   	pop    %ebx
  108466:	5e                   	pop    %esi
  108467:	5f                   	pop    %edi
  108468:	5d                   	pop    %ebp
  108469:	c3                   	ret    
  10846a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108470:	89 f9                	mov    %edi,%ecx
  108472:	ba 20 00 00 00       	mov    $0x20,%edx
  108477:	29 fa                	sub    %edi,%edx
  108479:	d3 e0                	shl    %cl,%eax
  10847b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10847e:	89 d1                	mov    %edx,%ecx
  108480:	89 d8                	mov    %ebx,%eax
  108482:	d3 e8                	shr    %cl,%eax
  108484:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  108487:	09 c1                	or     %eax,%ecx
  108489:	89 f0                	mov    %esi,%eax
  10848b:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  10848e:	89 f9                	mov    %edi,%ecx
  108490:	d3 e3                	shl    %cl,%ebx
  108492:	89 d1                	mov    %edx,%ecx
  108494:	d3 e8                	shr    %cl,%eax
  108496:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  108499:	89 f9                	mov    %edi,%ecx
  10849b:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  10849e:	d3 e6                	shl    %cl,%esi
  1084a0:	89 d1                	mov    %edx,%ecx
  1084a2:	d3 eb                	shr    %cl,%ebx
  1084a4:	09 f3                	or     %esi,%ebx
  1084a6:	89 c6                	mov    %eax,%esi
  1084a8:	89 f2                	mov    %esi,%edx
  1084aa:	89 d8                	mov    %ebx,%eax
  1084ac:	f7 75 e0             	divl   -0x20(%ebp)
  1084af:	89 d6                	mov    %edx,%esi
  1084b1:	89 c3                	mov    %eax,%ebx
  1084b3:	f7 65 dc             	mull   -0x24(%ebp)
  1084b6:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1084b9:	39 d6                	cmp    %edx,%esi
  1084bb:	72 23                	jb     1084e0 <__udivdi3+0x120>
  1084bd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1084c0:	89 f9                	mov    %edi,%ecx
  1084c2:	d3 e2                	shl    %cl,%edx
  1084c4:	39 c2                	cmp    %eax,%edx
  1084c6:	73 05                	jae    1084cd <__udivdi3+0x10d>
  1084c8:	3b 75 e0             	cmp    -0x20(%ebp),%esi
  1084cb:	74 13                	je     1084e0 <__udivdi3+0x120>
  1084cd:	89 d8                	mov    %ebx,%eax
  1084cf:	31 ff                	xor    %edi,%edi
  1084d1:	e9 32 ff ff ff       	jmp    108408 <__udivdi3+0x48>
  1084d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1084dd:	8d 76 00             	lea    0x0(%esi),%esi
  1084e0:	8d 43 ff             	lea    -0x1(%ebx),%eax
  1084e3:	31 ff                	xor    %edi,%edi
  1084e5:	e9 1e ff ff ff       	jmp    108408 <__udivdi3+0x48>
  1084ea:	66 90                	xchg   %ax,%ax
  1084ec:	66 90                	xchg   %ax,%ax
  1084ee:	66 90                	xchg   %ax,%ax

001084f0 <__umoddi3>:
  1084f0:	55                   	push   %ebp
  1084f1:	89 e5                	mov    %esp,%ebp
  1084f3:	57                   	push   %edi
  1084f4:	56                   	push   %esi
  1084f5:	53                   	push   %ebx
  1084f6:	83 ec 2c             	sub    $0x2c,%esp
  1084f9:	8b 75 08             	mov    0x8(%ebp),%esi
  1084fc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1084ff:	8b 45 14             	mov    0x14(%ebp),%eax
  108502:	8b 7d 10             	mov    0x10(%ebp),%edi
  108505:	89 75 e4             	mov    %esi,-0x1c(%ebp)
  108508:	89 da                	mov    %ebx,%edx
  10850a:	85 c0                	test   %eax,%eax
  10850c:	75 22                	jne    108530 <__umoddi3+0x40>
  10850e:	39 df                	cmp    %ebx,%edi
  108510:	76 5e                	jbe    108570 <__umoddi3+0x80>
  108512:	89 f0                	mov    %esi,%eax
  108514:	f7 f7                	div    %edi
  108516:	89 d0                	mov    %edx,%eax
  108518:	31 d2                	xor    %edx,%edx
  10851a:	83 c4 2c             	add    $0x2c,%esp
  10851d:	5b                   	pop    %ebx
  10851e:	5e                   	pop    %esi
  10851f:	5f                   	pop    %edi
  108520:	5d                   	pop    %ebp
  108521:	c3                   	ret    
  108522:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108530:	39 d8                	cmp    %ebx,%eax
  108532:	76 0c                	jbe    108540 <__umoddi3+0x50>
  108534:	89 f0                	mov    %esi,%eax
  108536:	83 c4 2c             	add    $0x2c,%esp
  108539:	5b                   	pop    %ebx
  10853a:	5e                   	pop    %esi
  10853b:	5f                   	pop    %edi
  10853c:	5d                   	pop    %ebp
  10853d:	c3                   	ret    
  10853e:	66 90                	xchg   %ax,%ax
  108540:	0f bd c8             	bsr    %eax,%ecx
  108543:	83 f1 1f             	xor    $0x1f,%ecx
  108546:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  108549:	75 45                	jne    108590 <__umoddi3+0xa0>
  10854b:	39 d8                	cmp    %ebx,%eax
  10854d:	0f 82 dd 00 00 00    	jb     108630 <__umoddi3+0x140>
  108553:	39 f7                	cmp    %esi,%edi
  108555:	0f 86 d5 00 00 00    	jbe    108630 <__umoddi3+0x140>
  10855b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10855e:	83 c4 2c             	add    $0x2c,%esp
  108561:	5b                   	pop    %ebx
  108562:	5e                   	pop    %esi
  108563:	5f                   	pop    %edi
  108564:	5d                   	pop    %ebp
  108565:	c3                   	ret    
  108566:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10856d:	8d 76 00             	lea    0x0(%esi),%esi
  108570:	89 f9                	mov    %edi,%ecx
  108572:	85 ff                	test   %edi,%edi
  108574:	75 0b                	jne    108581 <__umoddi3+0x91>
  108576:	b8 01 00 00 00       	mov    $0x1,%eax
  10857b:	31 d2                	xor    %edx,%edx
  10857d:	f7 f7                	div    %edi
  10857f:	89 c1                	mov    %eax,%ecx
  108581:	89 d8                	mov    %ebx,%eax
  108583:	31 d2                	xor    %edx,%edx
  108585:	f7 f1                	div    %ecx
  108587:	89 f0                	mov    %esi,%eax
  108589:	f7 f1                	div    %ecx
  10858b:	eb 89                	jmp    108516 <__umoddi3+0x26>
  10858d:	8d 76 00             	lea    0x0(%esi),%esi
  108590:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  108593:	ba 20 00 00 00       	mov    $0x20,%edx
  108598:	29 ca                	sub    %ecx,%edx
  10859a:	d3 e0                	shl    %cl,%eax
  10859c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10859f:	89 d1                	mov    %edx,%ecx
  1085a1:	89 f8                	mov    %edi,%eax
  1085a3:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1085a6:	8b 55 dc             	mov    -0x24(%ebp),%edx
  1085a9:	d3 e8                	shr    %cl,%eax
  1085ab:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  1085af:	09 c2                	or     %eax,%edx
  1085b1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1085b4:	d3 e7                	shl    %cl,%edi
  1085b6:	89 55 dc             	mov    %edx,-0x24(%ebp)
  1085b9:	89 da                	mov    %ebx,%edx
  1085bb:	89 c1                	mov    %eax,%ecx
  1085bd:	89 7d d8             	mov    %edi,-0x28(%ebp)
  1085c0:	89 f7                	mov    %esi,%edi
  1085c2:	d3 ea                	shr    %cl,%edx
  1085c4:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  1085c8:	d3 e3                	shl    %cl,%ebx
  1085ca:	89 c1                	mov    %eax,%ecx
  1085cc:	d3 ef                	shr    %cl,%edi
  1085ce:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  1085d2:	89 f8                	mov    %edi,%eax
  1085d4:	d3 e6                	shl    %cl,%esi
  1085d6:	09 d8                	or     %ebx,%eax
  1085d8:	f7 75 dc             	divl   -0x24(%ebp)
  1085db:	89 d3                	mov    %edx,%ebx
  1085dd:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  1085e0:	89 f7                	mov    %esi,%edi
  1085e2:	f7 65 d8             	mull   -0x28(%ebp)
  1085e5:	89 c6                	mov    %eax,%esi
  1085e7:	89 d1                	mov    %edx,%ecx
  1085e9:	39 d3                	cmp    %edx,%ebx
  1085eb:	72 06                	jb     1085f3 <__umoddi3+0x103>
  1085ed:	75 0e                	jne    1085fd <__umoddi3+0x10d>
  1085ef:	39 c7                	cmp    %eax,%edi
  1085f1:	73 0a                	jae    1085fd <__umoddi3+0x10d>
  1085f3:	2b 45 d8             	sub    -0x28(%ebp),%eax
  1085f6:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  1085f9:	89 d1                	mov    %edx,%ecx
  1085fb:	89 c6                	mov    %eax,%esi
  1085fd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  108600:	8b 7d e0             	mov    -0x20(%ebp),%edi
  108603:	29 f0                	sub    %esi,%eax
  108605:	19 cb                	sbb    %ecx,%ebx
  108607:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  10860b:	89 da                	mov    %ebx,%edx
  10860d:	d3 e2                	shl    %cl,%edx
  10860f:	89 f9                	mov    %edi,%ecx
  108611:	d3 e8                	shr    %cl,%eax
  108613:	d3 eb                	shr    %cl,%ebx
  108615:	09 d0                	or     %edx,%eax
  108617:	89 da                	mov    %ebx,%edx
  108619:	83 c4 2c             	add    $0x2c,%esp
  10861c:	5b                   	pop    %ebx
  10861d:	5e                   	pop    %esi
  10861e:	5f                   	pop    %edi
  10861f:	5d                   	pop    %ebp
  108620:	c3                   	ret    
  108621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108628:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10862f:	90                   	nop
  108630:	89 f2                	mov    %esi,%edx
  108632:	29 fa                	sub    %edi,%edx
  108634:	19 c3                	sbb    %eax,%ebx
  108636:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  108639:	89 da                	mov    %ebx,%edx
  10863b:	e9 1b ff ff ff       	jmp    10855b <__umoddi3+0x6b>

00108640 <__do_global_ctors_aux>:
  108640:	a1 20 a4 10 00       	mov    0x10a420,%eax
  108645:	83 f8 ff             	cmp    $0xffffffff,%eax
  108648:	74 36                	je     108680 <__do_global_ctors_aux+0x40>
  10864a:	55                   	push   %ebp
  10864b:	89 e5                	mov    %esp,%ebp
  10864d:	53                   	push   %ebx
  10864e:	bb 20 a4 10 00       	mov    $0x10a420,%ebx
  108653:	83 ec 04             	sub    $0x4,%esp
  108656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10865d:	8d 76 00             	lea    0x0(%esi),%esi
  108660:	ff d0                	call   *%eax
  108662:	8b 43 fc             	mov    -0x4(%ebx),%eax
  108665:	83 eb 04             	sub    $0x4,%ebx
  108668:	83 f8 ff             	cmp    $0xffffffff,%eax
  10866b:	75 f3                	jne    108660 <__do_global_ctors_aux+0x20>
  10866d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  108670:	c9                   	leave  
  108671:	c3                   	ret    
  108672:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108679:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108680:	c3                   	ret    

Disassembly of section .init:

00108681 <_init>:
  108681:	55                   	push   %ebp
  108682:	89 e5                	mov    %esp,%ebp
  108684:	e8 97 7a ff ff       	call   100120 <frame_dummy>
  108689:	e8 b2 ff ff ff       	call   108640 <__do_global_ctors_aux>
  10868e:	5d                   	pop    %ebp
  10868f:	c3                   	ret    

Disassembly of section .fini:

00108690 <_fini>:
  108690:	55                   	push   %ebp
  108691:	89 e5                	mov    %esp,%ebp
  108693:	e8 08 7a ff ff       	call   1000a0 <__do_global_dtors_aux>
  108698:	5d                   	pop    %ebp
  108699:	c3                   	ret    
