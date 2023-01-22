
kernel/axel.kernel:     file format elf32-i386


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
  100010:	b8 30 b4 10 00       	mov    $0x10b430,%eax
  100015:	3d 30 b4 10 00       	cmp    $0x10b430,%eax
  10001a:	74 24                	je     100040 <deregister_tm_clones+0x30>
  10001c:	b8 00 00 00 00       	mov    $0x0,%eax
  100021:	85 c0                	test   %eax,%eax
  100023:	74 1b                	je     100040 <deregister_tm_clones+0x30>
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 14             	sub    $0x14,%esp
  10002b:	68 30 b4 10 00       	push   $0x10b430
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
  100050:	b8 30 b4 10 00       	mov    $0x10b430,%eax
  100055:	2d 30 b4 10 00       	sub    $0x10b430,%eax
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
  100078:	68 30 b4 10 00       	push   $0x10b430
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
  1000a0:	80 3d 00 c0 10 00 00 	cmpb   $0x0,0x10c000
  1000a7:	75 67                	jne    100110 <__do_global_dtors_aux+0x70>
  1000a9:	55                   	push   %ebp
  1000aa:	a1 04 c0 10 00       	mov    0x10c004,%eax
  1000af:	89 e5                	mov    %esp,%ebp
  1000b1:	56                   	push   %esi
  1000b2:	be 28 b4 10 00       	mov    $0x10b428,%esi
  1000b7:	53                   	push   %ebx
  1000b8:	bb 2c b4 10 00       	mov    $0x10b42c,%ebx
  1000bd:	81 eb 28 b4 10 00    	sub    $0x10b428,%ebx
  1000c3:	c1 fb 02             	sar    $0x2,%ebx
  1000c6:	83 eb 01             	sub    $0x1,%ebx
  1000c9:	39 d8                	cmp    %ebx,%eax
  1000cb:	73 17                	jae    1000e4 <__do_global_dtors_aux+0x44>
  1000cd:	8d 76 00             	lea    0x0(%esi),%esi
  1000d0:	83 c0 01             	add    $0x1,%eax
  1000d3:	a3 04 c0 10 00       	mov    %eax,0x10c004
  1000d8:	ff 14 86             	call   *(%esi,%eax,4)
  1000db:	a1 04 c0 10 00       	mov    0x10c004,%eax
  1000e0:	39 d8                	cmp    %ebx,%eax
  1000e2:	72 ec                	jb     1000d0 <__do_global_dtors_aux+0x30>
  1000e4:	e8 27 ff ff ff       	call   100010 <deregister_tm_clones>
  1000e9:	b8 00 00 00 00       	mov    $0x0,%eax
  1000ee:	85 c0                	test   %eax,%eax
  1000f0:	74 10                	je     100102 <__do_global_dtors_aux+0x62>
  1000f2:	83 ec 0c             	sub    $0xc,%esp
  1000f5:	68 b0 ae 10 00       	push   $0x10aeb0
  1000fa:	e8 01 ff ef ff       	call   0 <ALIGN-0x1>
  1000ff:	83 c4 10             	add    $0x10,%esp
  100102:	c6 05 00 c0 10 00 01 	movb   $0x1,0x10c000
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
  10012f:	68 08 c0 10 00       	push   $0x10c008
  100134:	68 b0 ae 10 00       	push   $0x10aeb0
  100139:	e8 c2 fe ef ff       	call   0 <ALIGN-0x1>
  10013e:	83 c4 10             	add    $0x10,%esp
  100141:	c9                   	leave  
  100142:	e9 09 ff ff ff       	jmp    100050 <register_tm_clones>
  100147:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10014e:	66 90                	xchg   %ax,%ax
  100150:	e9 fb fe ff ff       	jmp    100050 <register_tm_clones>

00100155 <_start>:
  100155:	bc 20 00 11 00       	mov    $0x110020,%esp
  10015a:	54                   	push   %esp
  10015b:	50                   	push   %eax
  10015c:	53                   	push   %ebx
  10015d:	e8 69 6d 00 00       	call   106ecb <kernel_main>
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

00100199 <tty_init>:
  100199:	55                   	push   %ebp
  10019a:	89 e5                	mov    %esp,%ebp
  10019c:	53                   	push   %ebx
  10019d:	83 ec 14             	sub    $0x14,%esp
  1001a0:	c7 05 20 00 11 00 00 	movl   $0x0,0x110020
  1001a7:	00 00 00 
  1001aa:	c7 05 24 00 11 00 00 	movl   $0x0,0x110024
  1001b1:	00 00 00 
  1001b4:	83 ec 08             	sub    $0x8,%esp
  1001b7:	6a 00                	push   $0x0
  1001b9:	6a 07                	push   $0x7
  1001bb:	e8 a6 ff ff ff       	call   100166 <vga_entry_color>
  1001c0:	83 c4 10             	add    $0x10,%esp
  1001c3:	a2 28 00 11 00       	mov    %al,0x110028
  1001c8:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  1001cd:	a3 2c 00 11 00       	mov    %eax,0x11002c
  1001d2:	c7 05 30 00 11 00 08 	movl   $0x8,0x110030
  1001d9:	00 00 00 
  1001dc:	b8 50 00 00 00       	mov    $0x50,%eax
  1001e1:	8b 0d 30 00 11 00    	mov    0x110030,%ecx
  1001e7:	ba 00 00 00 00       	mov    $0x0,%edx
  1001ec:	f7 f1                	div    %ecx
  1001ee:	a3 34 00 11 00       	mov    %eax,0x110034
  1001f3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1001fa:	eb 57                	jmp    100253 <tty_init+0xba>
  1001fc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100203:	eb 40                	jmp    100245 <tty_init+0xac>
  100205:	b8 50 00 00 00       	mov    $0x50,%eax
  10020a:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  10020e:	89 c2                	mov    %eax,%edx
  100210:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100213:	01 d0                	add    %edx,%eax
  100215:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100218:	0f b6 05 28 00 11 00 	movzbl 0x110028,%eax
  10021f:	0f b6 c0             	movzbl %al,%eax
  100222:	8b 0d 2c 00 11 00    	mov    0x11002c,%ecx
  100228:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10022b:	01 d2                	add    %edx,%edx
  10022d:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  100230:	83 ec 08             	sub    $0x8,%esp
  100233:	50                   	push   %eax
  100234:	6a 20                	push   $0x20
  100236:	e8 3d ff ff ff       	call   100178 <vga_entry>
  10023b:	83 c4 10             	add    $0x10,%esp
  10023e:	66 89 03             	mov    %ax,(%ebx)
  100241:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100245:	b8 50 00 00 00       	mov    $0x50,%eax
  10024a:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  10024d:	72 b6                	jb     100205 <tty_init+0x6c>
  10024f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100253:	b8 19 00 00 00       	mov    $0x19,%eax
  100258:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10025b:	72 9f                	jb     1001fc <tty_init+0x63>
  10025d:	90                   	nop
  10025e:	90                   	nop
  10025f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100262:	c9                   	leave  
  100263:	c3                   	ret    

00100264 <tty_set_color>:
  100264:	55                   	push   %ebp
  100265:	89 e5                	mov    %esp,%ebp
  100267:	83 ec 08             	sub    $0x8,%esp
  10026a:	83 ec 08             	sub    $0x8,%esp
  10026d:	ff 75 0c             	push   0xc(%ebp)
  100270:	ff 75 08             	push   0x8(%ebp)
  100273:	e8 ee fe ff ff       	call   100166 <vga_entry_color>
  100278:	83 c4 10             	add    $0x10,%esp
  10027b:	a2 28 00 11 00       	mov    %al,0x110028
  100280:	90                   	nop
  100281:	c9                   	leave  
  100282:	c3                   	ret    

00100283 <tty_scroll>:
  100283:	55                   	push   %ebp
  100284:	89 e5                	mov    %esp,%ebp
  100286:	53                   	push   %ebx
  100287:	83 ec 24             	sub    $0x24,%esp
  10028a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100291:	eb 62                	jmp    1002f5 <tty_scroll+0x72>
  100293:	b8 50 00 00 00       	mov    $0x50,%eax
  100298:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  10029c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10029f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002a2:	83 c0 01             	add    $0x1,%eax
  1002a5:	ba 50 00 00 00       	mov    $0x50,%edx
  1002aa:	0f af c2             	imul   %edx,%eax
  1002ad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1002b0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1002b7:	eb 2e                	jmp    1002e7 <tty_scroll+0x64>
  1002b9:	8b 15 2c 00 11 00    	mov    0x11002c,%edx
  1002bf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1002c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1002c5:	01 c8                	add    %ecx,%eax
  1002c7:	01 c0                	add    %eax,%eax
  1002c9:	01 d0                	add    %edx,%eax
  1002cb:	8b 0d 2c 00 11 00    	mov    0x11002c,%ecx
  1002d1:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  1002d4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002d7:	01 da                	add    %ebx,%edx
  1002d9:	01 d2                	add    %edx,%edx
  1002db:	01 ca                	add    %ecx,%edx
  1002dd:	0f b7 00             	movzwl (%eax),%eax
  1002e0:	66 89 02             	mov    %ax,(%edx)
  1002e3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1002e7:	b8 50 00 00 00       	mov    $0x50,%eax
  1002ec:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  1002ef:	72 c8                	jb     1002b9 <tty_scroll+0x36>
  1002f1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002f5:	b8 19 00 00 00       	mov    $0x19,%eax
  1002fa:	83 e8 01             	sub    $0x1,%eax
  1002fd:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100300:	72 91                	jb     100293 <tty_scroll+0x10>
  100302:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  100309:	eb 3f                	jmp    10034a <tty_scroll+0xc7>
  10030b:	0f b6 05 28 00 11 00 	movzbl 0x110028,%eax
  100312:	0f b6 c0             	movzbl %al,%eax
  100315:	8b 0d 2c 00 11 00    	mov    0x11002c,%ecx
  10031b:	ba 19 00 00 00       	mov    $0x19,%edx
  100320:	83 ea 01             	sub    $0x1,%edx
  100323:	bb 50 00 00 00       	mov    $0x50,%ebx
  100328:	0f af da             	imul   %edx,%ebx
  10032b:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10032e:	01 da                	add    %ebx,%edx
  100330:	01 d2                	add    %edx,%edx
  100332:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  100335:	83 ec 08             	sub    $0x8,%esp
  100338:	50                   	push   %eax
  100339:	6a 20                	push   $0x20
  10033b:	e8 38 fe ff ff       	call   100178 <vga_entry>
  100340:	83 c4 10             	add    $0x10,%esp
  100343:	66 89 03             	mov    %ax,(%ebx)
  100346:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10034a:	b8 50 00 00 00       	mov    $0x50,%eax
  10034f:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  100352:	72 b7                	jb     10030b <tty_scroll+0x88>
  100354:	90                   	nop
  100355:	90                   	nop
  100356:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100359:	c9                   	leave  
  10035a:	c3                   	ret    

0010035b <tty_putchar>:
  10035b:	55                   	push   %ebp
  10035c:	89 e5                	mov    %esp,%ebp
  10035e:	53                   	push   %ebx
  10035f:	83 ec 24             	sub    $0x24,%esp
  100362:	8b 45 08             	mov    0x8(%ebp),%eax
  100365:	88 45 e4             	mov    %al,-0x1c(%ebp)
  100368:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
  10036c:	75 40                	jne    1003ae <tty_putchar+0x53>
  10036e:	c7 05 24 00 11 00 00 	movl   $0x0,0x110024
  100375:	00 00 00 
  100378:	a1 20 00 11 00       	mov    0x110020,%eax
  10037d:	83 c0 01             	add    $0x1,%eax
  100380:	a3 20 00 11 00       	mov    %eax,0x110020
  100385:	ba 19 00 00 00       	mov    $0x19,%edx
  10038a:	a1 20 00 11 00       	mov    0x110020,%eax
  10038f:	39 c2                	cmp    %eax,%edx
  100391:	0f 85 71 01 00 00    	jne    100508 <tty_putchar+0x1ad>
  100397:	e8 e7 fe ff ff       	call   100283 <tty_scroll>
  10039c:	b8 19 00 00 00       	mov    $0x19,%eax
  1003a1:	83 e8 01             	sub    $0x1,%eax
  1003a4:	a3 20 00 11 00       	mov    %eax,0x110020
  1003a9:	e9 5a 01 00 00       	jmp    100508 <tty_putchar+0x1ad>
  1003ae:	80 7d e4 0d          	cmpb   $0xd,-0x1c(%ebp)
  1003b2:	75 0f                	jne    1003c3 <tty_putchar+0x68>
  1003b4:	c7 05 24 00 11 00 00 	movl   $0x0,0x110024
  1003bb:	00 00 00 
  1003be:	e9 45 01 00 00       	jmp    100508 <tty_putchar+0x1ad>
  1003c3:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  1003c7:	75 2d                	jne    1003f6 <tty_putchar+0x9b>
  1003c9:	a1 24 00 11 00       	mov    0x110024,%eax
  1003ce:	8b 0d 34 00 11 00    	mov    0x110034,%ecx
  1003d4:	ba 00 00 00 00       	mov    $0x0,%edx
  1003d9:	f7 f1                	div    %ecx
  1003db:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1003de:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1003e1:	8d 50 01             	lea    0x1(%eax),%edx
  1003e4:	a1 34 00 11 00       	mov    0x110034,%eax
  1003e9:	0f af c2             	imul   %edx,%eax
  1003ec:	a3 24 00 11 00       	mov    %eax,0x110024
  1003f1:	e9 12 01 00 00       	jmp    100508 <tty_putchar+0x1ad>
  1003f6:	80 7d e4 08          	cmpb   $0x8,-0x1c(%ebp)
  1003fa:	75 75                	jne    100471 <tty_putchar+0x116>
  1003fc:	a1 24 00 11 00       	mov    0x110024,%eax
  100401:	85 c0                	test   %eax,%eax
  100403:	75 31                	jne    100436 <tty_putchar+0xdb>
  100405:	a1 20 00 11 00       	mov    0x110020,%eax
  10040a:	85 c0                	test   %eax,%eax
  10040c:	75 0c                	jne    10041a <tty_putchar+0xbf>
  10040e:	c7 05 20 00 11 00 00 	movl   $0x0,0x110020
  100415:	00 00 00 
  100418:	eb 0d                	jmp    100427 <tty_putchar+0xcc>
  10041a:	a1 20 00 11 00       	mov    0x110020,%eax
  10041f:	83 e8 01             	sub    $0x1,%eax
  100422:	a3 20 00 11 00       	mov    %eax,0x110020
  100427:	b8 50 00 00 00       	mov    $0x50,%eax
  10042c:	83 e8 01             	sub    $0x1,%eax
  10042f:	a3 24 00 11 00       	mov    %eax,0x110024
  100434:	eb 0d                	jmp    100443 <tty_putchar+0xe8>
  100436:	a1 24 00 11 00       	mov    0x110024,%eax
  10043b:	83 e8 01             	sub    $0x1,%eax
  10043e:	a3 24 00 11 00       	mov    %eax,0x110024
  100443:	a1 20 00 11 00       	mov    0x110020,%eax
  100448:	ba 50 00 00 00       	mov    $0x50,%edx
  10044d:	0f af d0             	imul   %eax,%edx
  100450:	a1 24 00 11 00       	mov    0x110024,%eax
  100455:	01 d0                	add    %edx,%eax
  100457:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10045a:	8b 15 2c 00 11 00    	mov    0x11002c,%edx
  100460:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100463:	01 c0                	add    %eax,%eax
  100465:	01 d0                	add    %edx,%eax
  100467:	66 c7 00 20 00       	movw   $0x20,(%eax)
  10046c:	e9 97 00 00 00       	jmp    100508 <tty_putchar+0x1ad>
  100471:	a1 20 00 11 00       	mov    0x110020,%eax
  100476:	ba 50 00 00 00       	mov    $0x50,%edx
  10047b:	0f af d0             	imul   %eax,%edx
  10047e:	a1 24 00 11 00       	mov    0x110024,%eax
  100483:	01 d0                	add    %edx,%eax
  100485:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100488:	0f b6 05 28 00 11 00 	movzbl 0x110028,%eax
  10048f:	0f b6 d0             	movzbl %al,%edx
  100492:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100496:	0f b6 c0             	movzbl %al,%eax
  100499:	8b 1d 2c 00 11 00    	mov    0x11002c,%ebx
  10049f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1004a2:	01 c9                	add    %ecx,%ecx
  1004a4:	01 cb                	add    %ecx,%ebx
  1004a6:	83 ec 08             	sub    $0x8,%esp
  1004a9:	52                   	push   %edx
  1004aa:	50                   	push   %eax
  1004ab:	e8 c8 fc ff ff       	call   100178 <vga_entry>
  1004b0:	83 c4 10             	add    $0x10,%esp
  1004b3:	66 89 03             	mov    %ax,(%ebx)
  1004b6:	a1 24 00 11 00       	mov    0x110024,%eax
  1004bb:	83 c0 01             	add    $0x1,%eax
  1004be:	a3 24 00 11 00       	mov    %eax,0x110024
  1004c3:	a1 24 00 11 00       	mov    0x110024,%eax
  1004c8:	ba 50 00 00 00       	mov    $0x50,%edx
  1004cd:	39 d0                	cmp    %edx,%eax
  1004cf:	75 37                	jne    100508 <tty_putchar+0x1ad>
  1004d1:	c7 05 24 00 11 00 00 	movl   $0x0,0x110024
  1004d8:	00 00 00 
  1004db:	a1 20 00 11 00       	mov    0x110020,%eax
  1004e0:	83 c0 01             	add    $0x1,%eax
  1004e3:	a3 20 00 11 00       	mov    %eax,0x110020
  1004e8:	a1 20 00 11 00       	mov    0x110020,%eax
  1004ed:	ba 19 00 00 00       	mov    $0x19,%edx
  1004f2:	39 d0                	cmp    %edx,%eax
  1004f4:	75 12                	jne    100508 <tty_putchar+0x1ad>
  1004f6:	b8 19 00 00 00       	mov    $0x19,%eax
  1004fb:	83 e8 01             	sub    $0x1,%eax
  1004fe:	a3 20 00 11 00       	mov    %eax,0x110020
  100503:	e8 7b fd ff ff       	call   100283 <tty_scroll>
  100508:	e8 17 01 00 00       	call   100624 <tty_update_cursor_position>
  10050d:	90                   	nop
  10050e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100511:	c9                   	leave  
  100512:	c3                   	ret    

00100513 <tty_putchars>:
  100513:	55                   	push   %ebp
  100514:	89 e5                	mov    %esp,%ebp
  100516:	83 ec 18             	sub    $0x18,%esp
  100519:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100520:	eb 1e                	jmp    100540 <tty_putchars+0x2d>
  100522:	8b 55 08             	mov    0x8(%ebp),%edx
  100525:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100528:	01 d0                	add    %edx,%eax
  10052a:	0f b6 00             	movzbl (%eax),%eax
  10052d:	0f be c0             	movsbl %al,%eax
  100530:	83 ec 0c             	sub    $0xc,%esp
  100533:	50                   	push   %eax
  100534:	e8 22 fe ff ff       	call   10035b <tty_putchar>
  100539:	83 c4 10             	add    $0x10,%esp
  10053c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100540:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100543:	3b 45 0c             	cmp    0xc(%ebp),%eax
  100546:	72 da                	jb     100522 <tty_putchars+0xf>
  100548:	90                   	nop
  100549:	90                   	nop
  10054a:	c9                   	leave  
  10054b:	c3                   	ret    

0010054c <tty_putstring>:
  10054c:	55                   	push   %ebp
  10054d:	89 e5                	mov    %esp,%ebp
  10054f:	83 ec 08             	sub    $0x8,%esp
  100552:	83 ec 0c             	sub    $0xc,%esp
  100555:	ff 75 08             	push   0x8(%ebp)
  100558:	e8 01 89 00 00       	call   108e5e <strlen>
  10055d:	83 c4 10             	add    $0x10,%esp
  100560:	83 ec 08             	sub    $0x8,%esp
  100563:	50                   	push   %eax
  100564:	ff 75 08             	push   0x8(%ebp)
  100567:	e8 a7 ff ff ff       	call   100513 <tty_putchars>
  10056c:	83 c4 10             	add    $0x10,%esp
  10056f:	90                   	nop
  100570:	c9                   	leave  
  100571:	c3                   	ret    

00100572 <tty_row_up>:
  100572:	55                   	push   %ebp
  100573:	89 e5                	mov    %esp,%ebp
  100575:	83 ec 08             	sub    $0x8,%esp
  100578:	a1 20 00 11 00       	mov    0x110020,%eax
  10057d:	85 c0                	test   %eax,%eax
  10057f:	74 0d                	je     10058e <tty_row_up+0x1c>
  100581:	a1 20 00 11 00       	mov    0x110020,%eax
  100586:	83 e8 01             	sub    $0x1,%eax
  100589:	a3 20 00 11 00       	mov    %eax,0x110020
  10058e:	e8 91 00 00 00       	call   100624 <tty_update_cursor_position>
  100593:	90                   	nop
  100594:	c9                   	leave  
  100595:	c3                   	ret    

00100596 <tty_row_down>:
  100596:	55                   	push   %ebp
  100597:	89 e5                	mov    %esp,%ebp
  100599:	83 ec 08             	sub    $0x8,%esp
  10059c:	a1 20 00 11 00       	mov    0x110020,%eax
  1005a1:	ba 19 00 00 00       	mov    $0x19,%edx
  1005a6:	39 d0                	cmp    %edx,%eax
  1005a8:	73 0d                	jae    1005b7 <tty_row_down+0x21>
  1005aa:	a1 20 00 11 00       	mov    0x110020,%eax
  1005af:	83 c0 01             	add    $0x1,%eax
  1005b2:	a3 20 00 11 00       	mov    %eax,0x110020
  1005b7:	e8 68 00 00 00       	call   100624 <tty_update_cursor_position>
  1005bc:	90                   	nop
  1005bd:	c9                   	leave  
  1005be:	c3                   	ret    

001005bf <tty_column_right>:
  1005bf:	55                   	push   %ebp
  1005c0:	89 e5                	mov    %esp,%ebp
  1005c2:	83 ec 08             	sub    $0x8,%esp
  1005c5:	a1 24 00 11 00       	mov    0x110024,%eax
  1005ca:	ba 50 00 00 00       	mov    $0x50,%edx
  1005cf:	39 d0                	cmp    %edx,%eax
  1005d1:	73 0d                	jae    1005e0 <tty_column_right+0x21>
  1005d3:	a1 24 00 11 00       	mov    0x110024,%eax
  1005d8:	83 c0 01             	add    $0x1,%eax
  1005db:	a3 24 00 11 00       	mov    %eax,0x110024
  1005e0:	e8 3f 00 00 00       	call   100624 <tty_update_cursor_position>
  1005e5:	90                   	nop
  1005e6:	c9                   	leave  
  1005e7:	c3                   	ret    

001005e8 <tty_column_left>:
  1005e8:	55                   	push   %ebp
  1005e9:	89 e5                	mov    %esp,%ebp
  1005eb:	83 ec 08             	sub    $0x8,%esp
  1005ee:	a1 24 00 11 00       	mov    0x110024,%eax
  1005f3:	85 c0                	test   %eax,%eax
  1005f5:	74 0d                	je     100604 <tty_column_left+0x1c>
  1005f7:	a1 24 00 11 00       	mov    0x110024,%eax
  1005fc:	83 e8 01             	sub    $0x1,%eax
  1005ff:	a3 24 00 11 00       	mov    %eax,0x110024
  100604:	e8 1b 00 00 00       	call   100624 <tty_update_cursor_position>
  100609:	90                   	nop
  10060a:	c9                   	leave  
  10060b:	c3                   	ret    

0010060c <tty_reset_column>:
  10060c:	55                   	push   %ebp
  10060d:	89 e5                	mov    %esp,%ebp
  10060f:	83 ec 08             	sub    $0x8,%esp
  100612:	c7 05 24 00 11 00 00 	movl   $0x0,0x110024
  100619:	00 00 00 
  10061c:	e8 03 00 00 00       	call   100624 <tty_update_cursor_position>
  100621:	90                   	nop
  100622:	c9                   	leave  
  100623:	c3                   	ret    

00100624 <tty_update_cursor_position>:
  100624:	55                   	push   %ebp
  100625:	89 e5                	mov    %esp,%ebp
  100627:	83 ec 18             	sub    $0x18,%esp
  10062a:	a1 20 00 11 00       	mov    0x110020,%eax
  10062f:	ba 50 00 00 00       	mov    $0x50,%edx
  100634:	0f af d0             	imul   %eax,%edx
  100637:	a1 24 00 11 00       	mov    0x110024,%eax
  10063c:	01 d0                	add    %edx,%eax
  10063e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100641:	83 ec 08             	sub    $0x8,%esp
  100644:	6a 0f                	push   $0xf
  100646:	68 d4 03 00 00       	push   $0x3d4
  10064b:	e8 70 00 00 00       	call   1006c0 <outb>
  100650:	83 c4 10             	add    $0x10,%esp
  100653:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100656:	0f b6 c0             	movzbl %al,%eax
  100659:	83 ec 08             	sub    $0x8,%esp
  10065c:	50                   	push   %eax
  10065d:	68 d5 03 00 00       	push   $0x3d5
  100662:	e8 59 00 00 00       	call   1006c0 <outb>
  100667:	83 c4 10             	add    $0x10,%esp
  10066a:	83 ec 08             	sub    $0x8,%esp
  10066d:	6a 0e                	push   $0xe
  10066f:	68 d4 03 00 00       	push   $0x3d4
  100674:	e8 47 00 00 00       	call   1006c0 <outb>
  100679:	83 c4 10             	add    $0x10,%esp
  10067c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10067f:	c1 e8 08             	shr    $0x8,%eax
  100682:	0f b6 c0             	movzbl %al,%eax
  100685:	83 ec 08             	sub    $0x8,%esp
  100688:	50                   	push   %eax
  100689:	68 d5 03 00 00       	push   $0x3d5
  10068e:	e8 2d 00 00 00       	call   1006c0 <outb>
  100693:	83 c4 10             	add    $0x10,%esp
  100696:	90                   	nop
  100697:	c9                   	leave  
  100698:	c3                   	ret    

00100699 <cli>:
  100699:	55                   	push   %ebp
  10069a:	89 e5                	mov    %esp,%ebp
  10069c:	fa                   	cli    
  10069d:	90                   	nop
  10069e:	5d                   	pop    %ebp
  10069f:	c3                   	ret    

001006a0 <sti>:
  1006a0:	55                   	push   %ebp
  1006a1:	89 e5                	mov    %esp,%ebp
  1006a3:	fb                   	sti    
  1006a4:	90                   	nop
  1006a5:	5d                   	pop    %ebp
  1006a6:	c3                   	ret    

001006a7 <inb>:
  1006a7:	55                   	push   %ebp
  1006a8:	89 e5                	mov    %esp,%ebp
  1006aa:	83 ec 10             	sub    $0x10,%esp
  1006ad:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
  1006b1:	8b 45 08             	mov    0x8(%ebp),%eax
  1006b4:	89 c2                	mov    %eax,%edx
  1006b6:	ec                   	in     (%dx),%al
  1006b7:	88 45 ff             	mov    %al,-0x1(%ebp)
  1006ba:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  1006be:	c9                   	leave  
  1006bf:	c3                   	ret    

001006c0 <outb>:
  1006c0:	55                   	push   %ebp
  1006c1:	89 e5                	mov    %esp,%ebp
  1006c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006c6:	8b 55 08             	mov    0x8(%ebp),%edx
  1006c9:	ee                   	out    %al,(%dx)
  1006ca:	90                   	nop
  1006cb:	5d                   	pop    %ebp
  1006cc:	c3                   	ret    

001006cd <inw>:
  1006cd:	55                   	push   %ebp
  1006ce:	89 e5                	mov    %esp,%ebp
  1006d0:	83 ec 10             	sub    $0x10,%esp
  1006d3:	66 c7 45 fe 00 00    	movw   $0x0,-0x2(%ebp)
  1006d9:	8b 45 08             	mov    0x8(%ebp),%eax
  1006dc:	89 c2                	mov    %eax,%edx
  1006de:	66 ed                	in     (%dx),%ax
  1006e0:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  1006e4:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  1006e8:	c9                   	leave  
  1006e9:	c3                   	ret    

001006ea <outw>:
  1006ea:	55                   	push   %ebp
  1006eb:	89 e5                	mov    %esp,%ebp
  1006ed:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006f0:	8b 55 08             	mov    0x8(%ebp),%edx
  1006f3:	66 ef                	out    %ax,(%dx)
  1006f5:	90                   	nop
  1006f6:	5d                   	pop    %ebp
  1006f7:	c3                   	ret    

001006f8 <inl>:
  1006f8:	55                   	push   %ebp
  1006f9:	89 e5                	mov    %esp,%ebp
  1006fb:	83 ec 10             	sub    $0x10,%esp
  1006fe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100705:	8b 45 08             	mov    0x8(%ebp),%eax
  100708:	89 c2                	mov    %eax,%edx
  10070a:	ed                   	in     (%dx),%eax
  10070b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10070e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100711:	c9                   	leave  
  100712:	c3                   	ret    

00100713 <outl>:
  100713:	55                   	push   %ebp
  100714:	89 e5                	mov    %esp,%ebp
  100716:	8b 45 0c             	mov    0xc(%ebp),%eax
  100719:	8b 55 08             	mov    0x8(%ebp),%edx
  10071c:	ef                   	out    %eax,(%dx)
  10071d:	90                   	nop
  10071e:	5d                   	pop    %ebp
  10071f:	c3                   	ret    

00100720 <gdt_init>:
  100720:	55                   	push   %ebp
  100721:	89 e5                	mov    %esp,%ebp
  100723:	83 ec 18             	sub    $0x18,%esp
  100726:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10072d:	eb 1f                	jmp    10074e <gdt_init+0x2e>
  10072f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100732:	c1 e0 03             	shl    $0x3,%eax
  100735:	05 40 00 11 00       	add    $0x110040,%eax
  10073a:	83 ec 04             	sub    $0x4,%esp
  10073d:	6a 08                	push   $0x8
  10073f:	6a 00                	push   $0x0
  100741:	50                   	push   %eax
  100742:	e8 e4 86 00 00       	call   108e2b <memset>
  100747:	83 c4 10             	add    $0x10,%esp
  10074a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10074e:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  100752:	7e db                	jle    10072f <gdt_init+0xf>
  100754:	83 ec 0c             	sub    $0xc,%esp
  100757:	6a 00                	push   $0x0
  100759:	6a 00                	push   $0x0
  10075b:	6a 00                	push   $0x0
  10075d:	6a 00                	push   $0x0
  10075f:	6a 00                	push   $0x0
  100761:	e8 58 00 00 00       	call   1007be <gdt_add_entry>
  100766:	83 c4 20             	add    $0x20,%esp
  100769:	83 ec 0c             	sub    $0xc,%esp
  10076c:	68 c0 00 00 00       	push   $0xc0
  100771:	68 9a 00 00 00       	push   $0x9a
  100776:	68 ff ff 0f 00       	push   $0xfffff
  10077b:	6a 00                	push   $0x0
  10077d:	6a 01                	push   $0x1
  10077f:	e8 3a 00 00 00       	call   1007be <gdt_add_entry>
  100784:	83 c4 20             	add    $0x20,%esp
  100787:	83 ec 0c             	sub    $0xc,%esp
  10078a:	68 c0 00 00 00       	push   $0xc0
  10078f:	68 92 00 00 00       	push   $0x92
  100794:	68 ff ff 0f 00       	push   $0xfffff
  100799:	6a 00                	push   $0x0
  10079b:	6a 02                	push   $0x2
  10079d:	e8 1c 00 00 00       	call   1007be <gdt_add_entry>
  1007a2:	83 c4 20             	add    $0x20,%esp
  1007a5:	6a 02                	push   $0x2
  1007a7:	6a 01                	push   $0x1
  1007a9:	68 ff ff 00 00       	push   $0xffff
  1007ae:	68 40 00 11 00       	push   $0x110040
  1007b3:	e8 8a 00 00 00       	call   100842 <store_gdt>
  1007b8:	83 c4 10             	add    $0x10,%esp
  1007bb:	90                   	nop
  1007bc:	c9                   	leave  
  1007bd:	c3                   	ret    

001007be <gdt_add_entry>:
  1007be:	55                   	push   %ebp
  1007bf:	89 e5                	mov    %esp,%ebp
  1007c1:	83 ec 08             	sub    $0x8,%esp
  1007c4:	8b 55 14             	mov    0x14(%ebp),%edx
  1007c7:	8b 45 18             	mov    0x18(%ebp),%eax
  1007ca:	88 55 fc             	mov    %dl,-0x4(%ebp)
  1007cd:	88 45 f8             	mov    %al,-0x8(%ebp)
  1007d0:	8b 45 10             	mov    0x10(%ebp),%eax
  1007d3:	89 c2                	mov    %eax,%edx
  1007d5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007d8:	66 89 14 c5 40 00 11 	mov    %dx,0x110040(,%eax,8)
  1007df:	00 
  1007e0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1007e3:	89 c2                	mov    %eax,%edx
  1007e5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007e8:	66 89 14 c5 42 00 11 	mov    %dx,0x110042(,%eax,8)
  1007ef:	00 
  1007f0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1007f3:	c1 e8 10             	shr    $0x10,%eax
  1007f6:	89 c2                	mov    %eax,%edx
  1007f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1007fb:	88 14 c5 44 00 11 00 	mov    %dl,0x110044(,%eax,8)
  100802:	8b 45 08             	mov    0x8(%ebp),%eax
  100805:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  100809:	88 14 c5 45 00 11 00 	mov    %dl,0x110045(,%eax,8)
  100810:	8b 45 10             	mov    0x10(%ebp),%eax
  100813:	c1 e8 10             	shr    $0x10,%eax
  100816:	83 e0 0f             	and    $0xf,%eax
  100819:	89 c2                	mov    %eax,%edx
  10081b:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  10081f:	09 d0                	or     %edx,%eax
  100821:	89 c2                	mov    %eax,%edx
  100823:	8b 45 08             	mov    0x8(%ebp),%eax
  100826:	88 14 c5 46 00 11 00 	mov    %dl,0x110046(,%eax,8)
  10082d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100830:	c1 e8 18             	shr    $0x18,%eax
  100833:	89 c2                	mov    %eax,%edx
  100835:	8b 45 08             	mov    0x8(%ebp),%eax
  100838:	88 14 c5 47 00 11 00 	mov    %dl,0x110047(,%eax,8)
  10083f:	90                   	nop
  100840:	c9                   	leave  
  100841:	c3                   	ret    

00100842 <store_gdt>:
  100842:	55                   	push   %ebp
  100843:	89 e5                	mov    %esp,%ebp
  100845:	83 ec 14             	sub    $0x14,%esp
  100848:	8b 45 0c             	mov    0xc(%ebp),%eax
  10084b:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10084f:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
  100853:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
  100857:	8b 45 08             	mov    0x8(%ebp),%eax
  10085a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10085d:	c1 65 10 03          	shll   $0x3,0x10(%ebp)
  100861:	c1 65 14 03          	shll   $0x3,0x14(%ebp)
  100865:	8b 45 10             	mov    0x10(%ebp),%eax
  100868:	8b 55 14             	mov    0x14(%ebp),%edx
  10086b:	0f 01 55 fa          	lgdtl  -0x6(%ebp)
  10086f:	50                   	push   %eax
  100870:	68 76 08 10 00       	push   $0x100876
  100875:	cb                   	lret   

00100876 <CSpoint>:
  100876:	89 d0                	mov    %edx,%eax
  100878:	8e d8                	mov    %eax,%ds
  10087a:	8e c0                	mov    %eax,%es
  10087c:	8e e0                	mov    %eax,%fs
  10087e:	8e e8                	mov    %eax,%gs
  100880:	8e d0                	mov    %eax,%ss
  100882:	90                   	nop
  100883:	c9                   	leave  
  100884:	c3                   	ret    

00100885 <idt_init>:
  100885:	55                   	push   %ebp
  100886:	89 e5                	mov    %esp,%ebp
  100888:	83 ec 18             	sub    $0x18,%esp
  10088b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100892:	eb 1f                	jmp    1008b3 <idt_init+0x2e>
  100894:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100897:	c1 e0 03             	shl    $0x3,%eax
  10089a:	05 90 00 11 00       	add    $0x110090,%eax
  10089f:	83 ec 04             	sub    $0x4,%esp
  1008a2:	6a 08                	push   $0x8
  1008a4:	6a 00                	push   $0x0
  1008a6:	50                   	push   %eax
  1008a7:	e8 7f 85 00 00       	call   108e2b <memset>
  1008ac:	83 c4 10             	add    $0x10,%esp
  1008af:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1008b3:	81 7d f4 ff 00 00 00 	cmpl   $0xff,-0xc(%ebp)
  1008ba:	7e d8                	jle    100894 <idt_init+0xf>
  1008bc:	83 ec 04             	sub    $0x4,%esp
  1008bf:	68 8f 00 00 00       	push   $0x8f
  1008c4:	68 00 0e 10 00       	push   $0x100e00
  1008c9:	6a 00                	push   $0x0
  1008cb:	e8 7d 04 00 00       	call   100d4d <idt_add_entry>
  1008d0:	83 c4 10             	add    $0x10,%esp
  1008d3:	83 ec 04             	sub    $0x4,%esp
  1008d6:	68 8f 00 00 00       	push   $0x8f
  1008db:	68 0a 0e 10 00       	push   $0x100e0a
  1008e0:	6a 01                	push   $0x1
  1008e2:	e8 66 04 00 00       	call   100d4d <idt_add_entry>
  1008e7:	83 c4 10             	add    $0x10,%esp
  1008ea:	83 ec 04             	sub    $0x4,%esp
  1008ed:	68 8f 00 00 00       	push   $0x8f
  1008f2:	68 14 0e 10 00       	push   $0x100e14
  1008f7:	6a 02                	push   $0x2
  1008f9:	e8 4f 04 00 00       	call   100d4d <idt_add_entry>
  1008fe:	83 c4 10             	add    $0x10,%esp
  100901:	83 ec 04             	sub    $0x4,%esp
  100904:	68 8f 00 00 00       	push   $0x8f
  100909:	68 1e 0e 10 00       	push   $0x100e1e
  10090e:	6a 03                	push   $0x3
  100910:	e8 38 04 00 00       	call   100d4d <idt_add_entry>
  100915:	83 c4 10             	add    $0x10,%esp
  100918:	83 ec 04             	sub    $0x4,%esp
  10091b:	68 8f 00 00 00       	push   $0x8f
  100920:	68 28 0e 10 00       	push   $0x100e28
  100925:	6a 04                	push   $0x4
  100927:	e8 21 04 00 00       	call   100d4d <idt_add_entry>
  10092c:	83 c4 10             	add    $0x10,%esp
  10092f:	83 ec 04             	sub    $0x4,%esp
  100932:	68 8f 00 00 00       	push   $0x8f
  100937:	68 32 0e 10 00       	push   $0x100e32
  10093c:	6a 05                	push   $0x5
  10093e:	e8 0a 04 00 00       	call   100d4d <idt_add_entry>
  100943:	83 c4 10             	add    $0x10,%esp
  100946:	83 ec 04             	sub    $0x4,%esp
  100949:	68 8f 00 00 00       	push   $0x8f
  10094e:	68 3c 0e 10 00       	push   $0x100e3c
  100953:	6a 06                	push   $0x6
  100955:	e8 f3 03 00 00       	call   100d4d <idt_add_entry>
  10095a:	83 c4 10             	add    $0x10,%esp
  10095d:	83 ec 04             	sub    $0x4,%esp
  100960:	68 8f 00 00 00       	push   $0x8f
  100965:	68 46 0e 10 00       	push   $0x100e46
  10096a:	6a 07                	push   $0x7
  10096c:	e8 dc 03 00 00       	call   100d4d <idt_add_entry>
  100971:	83 c4 10             	add    $0x10,%esp
  100974:	83 ec 04             	sub    $0x4,%esp
  100977:	68 8f 00 00 00       	push   $0x8f
  10097c:	68 50 0e 10 00       	push   $0x100e50
  100981:	6a 08                	push   $0x8
  100983:	e8 c5 03 00 00       	call   100d4d <idt_add_entry>
  100988:	83 c4 10             	add    $0x10,%esp
  10098b:	83 ec 04             	sub    $0x4,%esp
  10098e:	68 8f 00 00 00       	push   $0x8f
  100993:	68 5a 0e 10 00       	push   $0x100e5a
  100998:	6a 09                	push   $0x9
  10099a:	e8 ae 03 00 00       	call   100d4d <idt_add_entry>
  10099f:	83 c4 10             	add    $0x10,%esp
  1009a2:	83 ec 04             	sub    $0x4,%esp
  1009a5:	68 8f 00 00 00       	push   $0x8f
  1009aa:	68 64 0e 10 00       	push   $0x100e64
  1009af:	6a 0a                	push   $0xa
  1009b1:	e8 97 03 00 00       	call   100d4d <idt_add_entry>
  1009b6:	83 c4 10             	add    $0x10,%esp
  1009b9:	83 ec 04             	sub    $0x4,%esp
  1009bc:	68 8f 00 00 00       	push   $0x8f
  1009c1:	68 6e 0e 10 00       	push   $0x100e6e
  1009c6:	6a 0b                	push   $0xb
  1009c8:	e8 80 03 00 00       	call   100d4d <idt_add_entry>
  1009cd:	83 c4 10             	add    $0x10,%esp
  1009d0:	83 ec 04             	sub    $0x4,%esp
  1009d3:	68 8f 00 00 00       	push   $0x8f
  1009d8:	68 78 0e 10 00       	push   $0x100e78
  1009dd:	6a 0c                	push   $0xc
  1009df:	e8 69 03 00 00       	call   100d4d <idt_add_entry>
  1009e4:	83 c4 10             	add    $0x10,%esp
  1009e7:	83 ec 04             	sub    $0x4,%esp
  1009ea:	68 8f 00 00 00       	push   $0x8f
  1009ef:	68 82 0e 10 00       	push   $0x100e82
  1009f4:	6a 0d                	push   $0xd
  1009f6:	e8 52 03 00 00       	call   100d4d <idt_add_entry>
  1009fb:	83 c4 10             	add    $0x10,%esp
  1009fe:	83 ec 04             	sub    $0x4,%esp
  100a01:	68 8f 00 00 00       	push   $0x8f
  100a06:	68 8c 0e 10 00       	push   $0x100e8c
  100a0b:	6a 0e                	push   $0xe
  100a0d:	e8 3b 03 00 00       	call   100d4d <idt_add_entry>
  100a12:	83 c4 10             	add    $0x10,%esp
  100a15:	83 ec 04             	sub    $0x4,%esp
  100a18:	68 8f 00 00 00       	push   $0x8f
  100a1d:	68 94 0e 10 00       	push   $0x100e94
  100a22:	6a 0f                	push   $0xf
  100a24:	e8 24 03 00 00       	call   100d4d <idt_add_entry>
  100a29:	83 c4 10             	add    $0x10,%esp
  100a2c:	83 ec 04             	sub    $0x4,%esp
  100a2f:	68 8f 00 00 00       	push   $0x8f
  100a34:	68 9e 0e 10 00       	push   $0x100e9e
  100a39:	6a 10                	push   $0x10
  100a3b:	e8 0d 03 00 00       	call   100d4d <idt_add_entry>
  100a40:	83 c4 10             	add    $0x10,%esp
  100a43:	83 ec 04             	sub    $0x4,%esp
  100a46:	68 8f 00 00 00       	push   $0x8f
  100a4b:	68 a8 0e 10 00       	push   $0x100ea8
  100a50:	6a 11                	push   $0x11
  100a52:	e8 f6 02 00 00       	call   100d4d <idt_add_entry>
  100a57:	83 c4 10             	add    $0x10,%esp
  100a5a:	83 ec 04             	sub    $0x4,%esp
  100a5d:	68 8f 00 00 00       	push   $0x8f
  100a62:	68 b2 0e 10 00       	push   $0x100eb2
  100a67:	6a 12                	push   $0x12
  100a69:	e8 df 02 00 00       	call   100d4d <idt_add_entry>
  100a6e:	83 c4 10             	add    $0x10,%esp
  100a71:	83 ec 04             	sub    $0x4,%esp
  100a74:	68 8f 00 00 00       	push   $0x8f
  100a79:	68 bc 0e 10 00       	push   $0x100ebc
  100a7e:	6a 13                	push   $0x13
  100a80:	e8 c8 02 00 00       	call   100d4d <idt_add_entry>
  100a85:	83 c4 10             	add    $0x10,%esp
  100a88:	83 ec 04             	sub    $0x4,%esp
  100a8b:	68 8f 00 00 00       	push   $0x8f
  100a90:	68 c6 0e 10 00       	push   $0x100ec6
  100a95:	6a 14                	push   $0x14
  100a97:	e8 b1 02 00 00       	call   100d4d <idt_add_entry>
  100a9c:	83 c4 10             	add    $0x10,%esp
  100a9f:	83 ec 04             	sub    $0x4,%esp
  100aa2:	68 8f 00 00 00       	push   $0x8f
  100aa7:	68 d0 0e 10 00       	push   $0x100ed0
  100aac:	6a 15                	push   $0x15
  100aae:	e8 9a 02 00 00       	call   100d4d <idt_add_entry>
  100ab3:	83 c4 10             	add    $0x10,%esp
  100ab6:	83 ec 04             	sub    $0x4,%esp
  100ab9:	68 8f 00 00 00       	push   $0x8f
  100abe:	68 da 0e 10 00       	push   $0x100eda
  100ac3:	6a 16                	push   $0x16
  100ac5:	e8 83 02 00 00       	call   100d4d <idt_add_entry>
  100aca:	83 c4 10             	add    $0x10,%esp
  100acd:	83 ec 04             	sub    $0x4,%esp
  100ad0:	68 8f 00 00 00       	push   $0x8f
  100ad5:	68 e4 0e 10 00       	push   $0x100ee4
  100ada:	6a 17                	push   $0x17
  100adc:	e8 6c 02 00 00       	call   100d4d <idt_add_entry>
  100ae1:	83 c4 10             	add    $0x10,%esp
  100ae4:	83 ec 04             	sub    $0x4,%esp
  100ae7:	68 8f 00 00 00       	push   $0x8f
  100aec:	68 ee 0e 10 00       	push   $0x100eee
  100af1:	6a 18                	push   $0x18
  100af3:	e8 55 02 00 00       	call   100d4d <idt_add_entry>
  100af8:	83 c4 10             	add    $0x10,%esp
  100afb:	83 ec 04             	sub    $0x4,%esp
  100afe:	68 8f 00 00 00       	push   $0x8f
  100b03:	68 f8 0e 10 00       	push   $0x100ef8
  100b08:	6a 19                	push   $0x19
  100b0a:	e8 3e 02 00 00       	call   100d4d <idt_add_entry>
  100b0f:	83 c4 10             	add    $0x10,%esp
  100b12:	83 ec 04             	sub    $0x4,%esp
  100b15:	68 8f 00 00 00       	push   $0x8f
  100b1a:	68 02 0f 10 00       	push   $0x100f02
  100b1f:	6a 1a                	push   $0x1a
  100b21:	e8 27 02 00 00       	call   100d4d <idt_add_entry>
  100b26:	83 c4 10             	add    $0x10,%esp
  100b29:	83 ec 04             	sub    $0x4,%esp
  100b2c:	68 8f 00 00 00       	push   $0x8f
  100b31:	68 0c 0f 10 00       	push   $0x100f0c
  100b36:	6a 1b                	push   $0x1b
  100b38:	e8 10 02 00 00       	call   100d4d <idt_add_entry>
  100b3d:	83 c4 10             	add    $0x10,%esp
  100b40:	83 ec 04             	sub    $0x4,%esp
  100b43:	68 8f 00 00 00       	push   $0x8f
  100b48:	68 16 0f 10 00       	push   $0x100f16
  100b4d:	6a 1c                	push   $0x1c
  100b4f:	e8 f9 01 00 00       	call   100d4d <idt_add_entry>
  100b54:	83 c4 10             	add    $0x10,%esp
  100b57:	83 ec 04             	sub    $0x4,%esp
  100b5a:	68 8f 00 00 00       	push   $0x8f
  100b5f:	68 20 0f 10 00       	push   $0x100f20
  100b64:	6a 1d                	push   $0x1d
  100b66:	e8 e2 01 00 00       	call   100d4d <idt_add_entry>
  100b6b:	83 c4 10             	add    $0x10,%esp
  100b6e:	83 ec 04             	sub    $0x4,%esp
  100b71:	68 8f 00 00 00       	push   $0x8f
  100b76:	68 2a 0f 10 00       	push   $0x100f2a
  100b7b:	6a 1e                	push   $0x1e
  100b7d:	e8 cb 01 00 00       	call   100d4d <idt_add_entry>
  100b82:	83 c4 10             	add    $0x10,%esp
  100b85:	83 ec 04             	sub    $0x4,%esp
  100b88:	68 8f 00 00 00       	push   $0x8f
  100b8d:	68 34 0f 10 00       	push   $0x100f34
  100b92:	6a 1f                	push   $0x1f
  100b94:	e8 b4 01 00 00       	call   100d4d <idt_add_entry>
  100b99:	83 c4 10             	add    $0x10,%esp
  100b9c:	83 ec 04             	sub    $0x4,%esp
  100b9f:	68 8e 00 00 00       	push   $0x8e
  100ba4:	68 52 0f 10 00       	push   $0x100f52
  100ba9:	6a 20                	push   $0x20
  100bab:	e8 9d 01 00 00       	call   100d4d <idt_add_entry>
  100bb0:	83 c4 10             	add    $0x10,%esp
  100bb3:	83 ec 04             	sub    $0x4,%esp
  100bb6:	68 8e 00 00 00       	push   $0x8e
  100bbb:	68 5c 0f 10 00       	push   $0x100f5c
  100bc0:	6a 21                	push   $0x21
  100bc2:	e8 86 01 00 00       	call   100d4d <idt_add_entry>
  100bc7:	83 c4 10             	add    $0x10,%esp
  100bca:	83 ec 04             	sub    $0x4,%esp
  100bcd:	68 8e 00 00 00       	push   $0x8e
  100bd2:	68 66 0f 10 00       	push   $0x100f66
  100bd7:	6a 22                	push   $0x22
  100bd9:	e8 6f 01 00 00       	call   100d4d <idt_add_entry>
  100bde:	83 c4 10             	add    $0x10,%esp
  100be1:	83 ec 04             	sub    $0x4,%esp
  100be4:	68 8e 00 00 00       	push   $0x8e
  100be9:	68 70 0f 10 00       	push   $0x100f70
  100bee:	6a 23                	push   $0x23
  100bf0:	e8 58 01 00 00       	call   100d4d <idt_add_entry>
  100bf5:	83 c4 10             	add    $0x10,%esp
  100bf8:	83 ec 04             	sub    $0x4,%esp
  100bfb:	68 8e 00 00 00       	push   $0x8e
  100c00:	68 7a 0f 10 00       	push   $0x100f7a
  100c05:	6a 24                	push   $0x24
  100c07:	e8 41 01 00 00       	call   100d4d <idt_add_entry>
  100c0c:	83 c4 10             	add    $0x10,%esp
  100c0f:	83 ec 04             	sub    $0x4,%esp
  100c12:	68 8e 00 00 00       	push   $0x8e
  100c17:	68 84 0f 10 00       	push   $0x100f84
  100c1c:	6a 25                	push   $0x25
  100c1e:	e8 2a 01 00 00       	call   100d4d <idt_add_entry>
  100c23:	83 c4 10             	add    $0x10,%esp
  100c26:	83 ec 04             	sub    $0x4,%esp
  100c29:	68 8e 00 00 00       	push   $0x8e
  100c2e:	68 8e 0f 10 00       	push   $0x100f8e
  100c33:	6a 26                	push   $0x26
  100c35:	e8 13 01 00 00       	call   100d4d <idt_add_entry>
  100c3a:	83 c4 10             	add    $0x10,%esp
  100c3d:	83 ec 04             	sub    $0x4,%esp
  100c40:	68 8e 00 00 00       	push   $0x8e
  100c45:	68 98 0f 10 00       	push   $0x100f98
  100c4a:	6a 27                	push   $0x27
  100c4c:	e8 fc 00 00 00       	call   100d4d <idt_add_entry>
  100c51:	83 c4 10             	add    $0x10,%esp
  100c54:	83 ec 04             	sub    $0x4,%esp
  100c57:	68 8e 00 00 00       	push   $0x8e
  100c5c:	68 a2 0f 10 00       	push   $0x100fa2
  100c61:	6a 28                	push   $0x28
  100c63:	e8 e5 00 00 00       	call   100d4d <idt_add_entry>
  100c68:	83 c4 10             	add    $0x10,%esp
  100c6b:	83 ec 04             	sub    $0x4,%esp
  100c6e:	68 8e 00 00 00       	push   $0x8e
  100c73:	68 ac 0f 10 00       	push   $0x100fac
  100c78:	6a 29                	push   $0x29
  100c7a:	e8 ce 00 00 00       	call   100d4d <idt_add_entry>
  100c7f:	83 c4 10             	add    $0x10,%esp
  100c82:	83 ec 04             	sub    $0x4,%esp
  100c85:	68 8e 00 00 00       	push   $0x8e
  100c8a:	68 b6 0f 10 00       	push   $0x100fb6
  100c8f:	6a 2a                	push   $0x2a
  100c91:	e8 b7 00 00 00       	call   100d4d <idt_add_entry>
  100c96:	83 c4 10             	add    $0x10,%esp
  100c99:	83 ec 04             	sub    $0x4,%esp
  100c9c:	68 8e 00 00 00       	push   $0x8e
  100ca1:	68 c0 0f 10 00       	push   $0x100fc0
  100ca6:	6a 2b                	push   $0x2b
  100ca8:	e8 a0 00 00 00       	call   100d4d <idt_add_entry>
  100cad:	83 c4 10             	add    $0x10,%esp
  100cb0:	83 ec 04             	sub    $0x4,%esp
  100cb3:	68 8e 00 00 00       	push   $0x8e
  100cb8:	68 ca 0f 10 00       	push   $0x100fca
  100cbd:	6a 2c                	push   $0x2c
  100cbf:	e8 89 00 00 00       	call   100d4d <idt_add_entry>
  100cc4:	83 c4 10             	add    $0x10,%esp
  100cc7:	83 ec 04             	sub    $0x4,%esp
  100cca:	68 8e 00 00 00       	push   $0x8e
  100ccf:	68 d4 0f 10 00       	push   $0x100fd4
  100cd4:	6a 2d                	push   $0x2d
  100cd6:	e8 72 00 00 00       	call   100d4d <idt_add_entry>
  100cdb:	83 c4 10             	add    $0x10,%esp
  100cde:	83 ec 04             	sub    $0x4,%esp
  100ce1:	68 8e 00 00 00       	push   $0x8e
  100ce6:	68 de 0f 10 00       	push   $0x100fde
  100ceb:	6a 2e                	push   $0x2e
  100ced:	e8 5b 00 00 00       	call   100d4d <idt_add_entry>
  100cf2:	83 c4 10             	add    $0x10,%esp
  100cf5:	83 ec 04             	sub    $0x4,%esp
  100cf8:	68 8e 00 00 00       	push   $0x8e
  100cfd:	68 e8 0f 10 00       	push   $0x100fe8
  100d02:	6a 2f                	push   $0x2f
  100d04:	e8 44 00 00 00       	call   100d4d <idt_add_entry>
  100d09:	83 c4 10             	add    $0x10,%esp
  100d0c:	83 ec 04             	sub    $0x4,%esp
  100d0f:	68 8f 00 00 00       	push   $0x8f
  100d14:	68 3e 0f 10 00       	push   $0x100f3e
  100d19:	6a 50                	push   $0x50
  100d1b:	e8 2d 00 00 00       	call   100d4d <idt_add_entry>
  100d20:	83 c4 10             	add    $0x10,%esp
  100d23:	83 ec 04             	sub    $0x4,%esp
  100d26:	68 8f 00 00 00       	push   $0x8f
  100d2b:	68 48 0f 10 00       	push   $0x100f48
  100d30:	6a 51                	push   $0x51
  100d32:	e8 16 00 00 00       	call   100d4d <idt_add_entry>
  100d37:	83 c4 10             	add    $0x10,%esp
  100d3a:	83 ec 0c             	sub    $0xc,%esp
  100d3d:	68 90 00 11 00       	push   $0x110090
  100d42:	e8 a0 00 00 00       	call   100de7 <store_idt>
  100d47:	83 c4 10             	add    $0x10,%esp
  100d4a:	90                   	nop
  100d4b:	c9                   	leave  
  100d4c:	c3                   	ret    

00100d4d <idt_add_entry>:
  100d4d:	55                   	push   %ebp
  100d4e:	89 e5                	mov    %esp,%ebp
  100d50:	83 ec 18             	sub    $0x18,%esp
  100d53:	8b 55 08             	mov    0x8(%ebp),%edx
  100d56:	8b 45 10             	mov    0x10(%ebp),%eax
  100d59:	88 55 ec             	mov    %dl,-0x14(%ebp)
  100d5c:	88 45 e8             	mov    %al,-0x18(%ebp)
  100d5f:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  100d63:	c1 e0 03             	shl    $0x3,%eax
  100d66:	05 90 00 11 00       	add    $0x110090,%eax
  100d6b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100d6e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d71:	89 c2                	mov    %eax,%edx
  100d73:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100d76:	66 89 10             	mov    %dx,(%eax)
  100d79:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100d7c:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  100d82:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100d85:	0f b6 55 e8          	movzbl -0x18(%ebp),%edx
  100d89:	88 50 05             	mov    %dl,0x5(%eax)
  100d8c:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d8f:	c1 e8 10             	shr    $0x10,%eax
  100d92:	89 c2                	mov    %eax,%edx
  100d94:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100d97:	66 89 50 06          	mov    %dx,0x6(%eax)
  100d9b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100d9e:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100da2:	90                   	nop
  100da3:	c9                   	leave  
  100da4:	c3                   	ret    

00100da5 <idt_get_entry>:
  100da5:	55                   	push   %ebp
  100da6:	89 e5                	mov    %esp,%ebp
  100da8:	83 ec 14             	sub    $0x14,%esp
  100dab:	8b 45 08             	mov    0x8(%ebp),%eax
  100dae:	88 45 ec             	mov    %al,-0x14(%ebp)
  100db1:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  100db5:	0f b7 04 c5 90 00 11 	movzwl 0x110090(,%eax,8),%eax
  100dbc:	00 
  100dbd:	0f b7 c0             	movzwl %ax,%eax
  100dc0:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100dc3:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  100dc7:	0f b7 04 c5 96 00 11 	movzwl 0x110096(,%eax,8),%eax
  100dce:	00 
  100dcf:	0f b7 c0             	movzwl %ax,%eax
  100dd2:	c1 e0 10             	shl    $0x10,%eax
  100dd5:	09 45 fc             	or     %eax,-0x4(%ebp)
  100dd8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100ddb:	c9                   	leave  
  100ddc:	c3                   	ret    

00100ddd <idt_get_addr>:
  100ddd:	55                   	push   %ebp
  100dde:	89 e5                	mov    %esp,%ebp
  100de0:	b8 90 00 11 00       	mov    $0x110090,%eax
  100de5:	5d                   	pop    %ebp
  100de6:	c3                   	ret    

00100de7 <store_idt>:
  100de7:	55                   	push   %ebp
  100de8:	89 e5                	mov    %esp,%ebp
  100dea:	83 ec 10             	sub    $0x10,%esp
  100ded:	8b 45 08             	mov    0x8(%ebp),%eax
  100df0:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100df3:	66 c7 45 fa ff 07    	movw   $0x7ff,-0x6(%ebp)
  100df9:	0f 01 5d fa          	lidtl  -0x6(%ebp)
  100dfd:	90                   	nop
  100dfe:	c9                   	leave  
  100dff:	c3                   	ret    

00100e00 <isr0_entry_point>:
  100e00:	fa                   	cli    
  100e01:	6a 00                	push   $0x0
  100e03:	6a 00                	push   $0x0
  100e05:	e9 e8 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e0a <isr1_entry_point>:
  100e0a:	fa                   	cli    
  100e0b:	6a 00                	push   $0x0
  100e0d:	6a 01                	push   $0x1
  100e0f:	e9 de 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e14 <isr2_entry_point>:
  100e14:	fa                   	cli    
  100e15:	6a 00                	push   $0x0
  100e17:	6a 02                	push   $0x2
  100e19:	e9 d4 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e1e <isr3_entry_point>:
  100e1e:	fa                   	cli    
  100e1f:	6a 00                	push   $0x0
  100e21:	6a 03                	push   $0x3
  100e23:	e9 ca 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e28 <isr4_entry_point>:
  100e28:	fa                   	cli    
  100e29:	6a 00                	push   $0x0
  100e2b:	6a 04                	push   $0x4
  100e2d:	e9 c0 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e32 <isr5_entry_point>:
  100e32:	fa                   	cli    
  100e33:	6a 00                	push   $0x0
  100e35:	6a 05                	push   $0x5
  100e37:	e9 b6 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e3c <isr6_entry_point>:
  100e3c:	fa                   	cli    
  100e3d:	6a 00                	push   $0x0
  100e3f:	6a 06                	push   $0x6
  100e41:	e9 ac 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e46 <isr7_entry_point>:
  100e46:	fa                   	cli    
  100e47:	6a 00                	push   $0x0
  100e49:	6a 07                	push   $0x7
  100e4b:	e9 a2 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e50 <isr8_entry_point>:
  100e50:	fa                   	cli    
  100e51:	6a 00                	push   $0x0
  100e53:	6a 08                	push   $0x8
  100e55:	e9 98 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e5a <isr9_entry_point>:
  100e5a:	fa                   	cli    
  100e5b:	6a 00                	push   $0x0
  100e5d:	6a 09                	push   $0x9
  100e5f:	e9 8e 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e64 <isr10_entry_point>:
  100e64:	fa                   	cli    
  100e65:	6a 00                	push   $0x0
  100e67:	6a 0a                	push   $0xa
  100e69:	e9 84 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e6e <isr11_entry_point>:
  100e6e:	fa                   	cli    
  100e6f:	6a 00                	push   $0x0
  100e71:	6a 0b                	push   $0xb
  100e73:	e9 7a 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e78 <isr12_entry_point>:
  100e78:	fa                   	cli    
  100e79:	6a 00                	push   $0x0
  100e7b:	6a 0c                	push   $0xc
  100e7d:	e9 70 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e82 <isr13_entry_point>:
  100e82:	fa                   	cli    
  100e83:	6a 00                	push   $0x0
  100e85:	6a 0d                	push   $0xd
  100e87:	e9 66 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e8c <isr14_entry_point>:
  100e8c:	fa                   	cli    
  100e8d:	6a 0e                	push   $0xe
  100e8f:	e9 5e 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e94 <isr15_entry_point>:
  100e94:	fa                   	cli    
  100e95:	6a 00                	push   $0x0
  100e97:	6a 0f                	push   $0xf
  100e99:	e9 54 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100e9e <isr16_entry_point>:
  100e9e:	fa                   	cli    
  100e9f:	6a 00                	push   $0x0
  100ea1:	6a 10                	push   $0x10
  100ea3:	e9 4a 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100ea8 <isr17_entry_point>:
  100ea8:	fa                   	cli    
  100ea9:	6a 00                	push   $0x0
  100eab:	6a 11                	push   $0x11
  100ead:	e9 40 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100eb2 <isr18_entry_point>:
  100eb2:	fa                   	cli    
  100eb3:	6a 00                	push   $0x0
  100eb5:	6a 12                	push   $0x12
  100eb7:	e9 36 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100ebc <isr19_entry_point>:
  100ebc:	fa                   	cli    
  100ebd:	6a 00                	push   $0x0
  100ebf:	6a 13                	push   $0x13
  100ec1:	e9 2c 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100ec6 <isr20_entry_point>:
  100ec6:	fa                   	cli    
  100ec7:	6a 00                	push   $0x0
  100ec9:	6a 14                	push   $0x14
  100ecb:	e9 22 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100ed0 <isr21_entry_point>:
  100ed0:	fa                   	cli    
  100ed1:	6a 00                	push   $0x0
  100ed3:	6a 15                	push   $0x15
  100ed5:	e9 18 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100eda <isr22_entry_point>:
  100eda:	fa                   	cli    
  100edb:	6a 00                	push   $0x0
  100edd:	6a 16                	push   $0x16
  100edf:	e9 0e 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100ee4 <isr23_entry_point>:
  100ee4:	fa                   	cli    
  100ee5:	6a 00                	push   $0x0
  100ee7:	6a 17                	push   $0x17
  100ee9:	e9 04 01 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100eee <isr24_entry_point>:
  100eee:	fa                   	cli    
  100eef:	6a 00                	push   $0x0
  100ef1:	6a 18                	push   $0x18
  100ef3:	e9 fa 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100ef8 <isr25_entry_point>:
  100ef8:	fa                   	cli    
  100ef9:	6a 00                	push   $0x0
  100efb:	6a 19                	push   $0x19
  100efd:	e9 f0 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f02 <isr26_entry_point>:
  100f02:	fa                   	cli    
  100f03:	6a 00                	push   $0x0
  100f05:	6a 1a                	push   $0x1a
  100f07:	e9 e6 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f0c <isr27_entry_point>:
  100f0c:	fa                   	cli    
  100f0d:	6a 00                	push   $0x0
  100f0f:	6a 1b                	push   $0x1b
  100f11:	e9 dc 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f16 <isr28_entry_point>:
  100f16:	fa                   	cli    
  100f17:	6a 00                	push   $0x0
  100f19:	6a 1c                	push   $0x1c
  100f1b:	e9 d2 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f20 <isr29_entry_point>:
  100f20:	fa                   	cli    
  100f21:	6a 00                	push   $0x0
  100f23:	6a 1d                	push   $0x1d
  100f25:	e9 c8 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f2a <isr30_entry_point>:
  100f2a:	fa                   	cli    
  100f2b:	6a 00                	push   $0x0
  100f2d:	6a 1e                	push   $0x1e
  100f2f:	e9 be 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f34 <isr31_entry_point>:
  100f34:	fa                   	cli    
  100f35:	6a 00                	push   $0x0
  100f37:	6a 1f                	push   $0x1f
  100f39:	e9 b4 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f3e <isr80_entry_point>:
  100f3e:	fa                   	cli    
  100f3f:	6a 00                	push   $0x0
  100f41:	6a 50                	push   $0x50
  100f43:	e9 aa 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f48 <isr81_entry_point>:
  100f48:	fa                   	cli    
  100f49:	6a 00                	push   $0x0
  100f4b:	6a 51                	push   $0x51
  100f4d:	e9 a0 00 00 00       	jmp    100ff2 <ll_int_dispatcher>

00100f52 <irq0_entry_point>:
  100f52:	fa                   	cli    
  100f53:	6a 00                	push   $0x0
  100f55:	6a 20                	push   $0x20
  100f57:	e9 bb 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f5c <irq1_entry_point>:
  100f5c:	fa                   	cli    
  100f5d:	6a 00                	push   $0x0
  100f5f:	6a 21                	push   $0x21
  100f61:	e9 b1 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f66 <irq2_entry_point>:
  100f66:	fa                   	cli    
  100f67:	6a 00                	push   $0x0
  100f69:	6a 22                	push   $0x22
  100f6b:	e9 a7 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f70 <irq3_entry_point>:
  100f70:	fa                   	cli    
  100f71:	6a 00                	push   $0x0
  100f73:	6a 23                	push   $0x23
  100f75:	e9 9d 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f7a <irq4_entry_point>:
  100f7a:	fa                   	cli    
  100f7b:	6a 00                	push   $0x0
  100f7d:	6a 24                	push   $0x24
  100f7f:	e9 93 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f84 <irq5_entry_point>:
  100f84:	fa                   	cli    
  100f85:	6a 00                	push   $0x0
  100f87:	6a 25                	push   $0x25
  100f89:	e9 89 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f8e <irq6_entry_point>:
  100f8e:	fa                   	cli    
  100f8f:	6a 00                	push   $0x0
  100f91:	6a 26                	push   $0x26
  100f93:	e9 7f 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100f98 <irq7_entry_point>:
  100f98:	fa                   	cli    
  100f99:	6a 00                	push   $0x0
  100f9b:	6a 27                	push   $0x27
  100f9d:	e9 75 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fa2 <irq8_entry_point>:
  100fa2:	fa                   	cli    
  100fa3:	6a 00                	push   $0x0
  100fa5:	6a 28                	push   $0x28
  100fa7:	e9 6b 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fac <irq9_entry_point>:
  100fac:	fa                   	cli    
  100fad:	6a 00                	push   $0x0
  100faf:	6a 29                	push   $0x29
  100fb1:	e9 61 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fb6 <irq10_entry_point>:
  100fb6:	fa                   	cli    
  100fb7:	6a 00                	push   $0x0
  100fb9:	6a 2a                	push   $0x2a
  100fbb:	e9 57 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fc0 <irq11_entry_point>:
  100fc0:	fa                   	cli    
  100fc1:	6a 00                	push   $0x0
  100fc3:	6a 2b                	push   $0x2b
  100fc5:	e9 4d 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fca <irq12_entry_point>:
  100fca:	fa                   	cli    
  100fcb:	6a 00                	push   $0x0
  100fcd:	6a 2c                	push   $0x2c
  100fcf:	e9 43 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fd4 <irq13_entry_point>:
  100fd4:	fa                   	cli    
  100fd5:	6a 00                	push   $0x0
  100fd7:	6a 2d                	push   $0x2d
  100fd9:	e9 39 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fde <irq14_entry_point>:
  100fde:	fa                   	cli    
  100fdf:	6a 00                	push   $0x0
  100fe1:	6a 2e                	push   $0x2e
  100fe3:	e9 2f 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100fe8 <irq15_entry_point>:
  100fe8:	fa                   	cli    
  100fe9:	6a 00                	push   $0x0
  100feb:	6a 2f                	push   $0x2f
  100fed:	e9 25 00 00 00       	jmp    101017 <ll_irq_dispatcher>

00100ff2 <ll_int_dispatcher>:
  100ff2:	60                   	pusha  
  100ff3:	66 8c d8             	mov    %ds,%ax
  100ff6:	50                   	push   %eax
  100ff7:	66 b8 10 00          	mov    $0x10,%ax
  100ffb:	8e d8                	mov    %eax,%ds
  100ffd:	8e c0                	mov    %eax,%es
  100fff:	8e e0                	mov    %eax,%fs
  101001:	8e e8                	mov    %eax,%gs
  101003:	e8 59 01 00 00       	call   101161 <hl_int_dispatcher>
  101008:	58                   	pop    %eax
  101009:	8e d8                	mov    %eax,%ds
  10100b:	8e c0                	mov    %eax,%es
  10100d:	8e e0                	mov    %eax,%fs
  10100f:	8e e8                	mov    %eax,%gs
  101011:	61                   	popa   
  101012:	83 c4 08             	add    $0x8,%esp
  101015:	fb                   	sti    
  101016:	cf                   	iret   

00101017 <ll_irq_dispatcher>:
  101017:	60                   	pusha  
  101018:	66 8c d8             	mov    %ds,%ax
  10101b:	50                   	push   %eax
  10101c:	66 b8 10 00          	mov    $0x10,%ax
  101020:	8e d8                	mov    %eax,%ds
  101022:	8e c0                	mov    %eax,%es
  101024:	8e e0                	mov    %eax,%fs
  101026:	8e e8                	mov    %eax,%gs
  101028:	e8 7f 02 00 00       	call   1012ac <hl_irq_dispatcher>
  10102d:	58                   	pop    %eax
  10102e:	8e d8                	mov    %eax,%ds
  101030:	8e c0                	mov    %eax,%es
  101032:	8e e0                	mov    %eax,%fs
  101034:	8e e8                	mov    %eax,%gs
  101036:	61                   	popa   
  101037:	83 c4 08             	add    $0x8,%esp
  10103a:	fb                   	sti    
  10103b:	cf                   	iret   

0010103c <cpuid_get_model>:
  10103c:	55                   	push   %ebp
  10103d:	89 e5                	mov    %esp,%ebp
  10103f:	53                   	push   %ebx
  101040:	83 ec 10             	sub    $0x10,%esp
  101043:	b8 00 00 00 00       	mov    $0x0,%eax
  101048:	0f a2                	cpuid  
  10104a:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10104d:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  101050:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  101053:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101056:	8b 45 08             	mov    0x8(%ebp),%eax
  101059:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10105c:	89 10                	mov    %edx,(%eax)
  10105e:	8b 45 0c             	mov    0xc(%ebp),%eax
  101061:	8b 55 ec             	mov    -0x14(%ebp),%edx
  101064:	89 10                	mov    %edx,(%eax)
  101066:	8b 45 10             	mov    0x10(%ebp),%eax
  101069:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10106c:	89 10                	mov    %edx,(%eax)
  10106e:	90                   	nop
  10106f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101072:	c9                   	leave  
  101073:	c3                   	ret    

00101074 <cpuid_supported>:
  101074:	9c                   	pushf  
  101075:	9c                   	pushf  
  101076:	81 34 24 00 00 20 00 	xorl   $0x200000,(%esp)
  10107d:	9d                   	popf   
  10107e:	9c                   	pushf  
  10107f:	58                   	pop    %eax
  101080:	31 04 24             	xor    %eax,(%esp)
  101083:	9d                   	popf   
  101084:	25 00 00 20 00       	and    $0x200000,%eax
  101089:	c3                   	ret    

0010108a <enable_paging>:
  10108a:	55                   	push   %ebp
  10108b:	89 e5                	mov    %esp,%ebp
  10108d:	0f 20 c0             	mov    %cr0,%eax
  101090:	0d 00 00 00 80       	or     $0x80000000,%eax
  101095:	0f 22 c0             	mov    %eax,%cr0
  101098:	89 ec                	mov    %ebp,%esp
  10109a:	5d                   	pop    %ebp
  10109b:	c3                   	ret    

0010109c <load_page_directory>:
  10109c:	55                   	push   %ebp
  10109d:	89 e5                	mov    %esp,%ebp
  10109f:	8b 44 24 08          	mov    0x8(%esp),%eax
  1010a3:	0f 22 d8             	mov    %eax,%cr3
  1010a6:	89 ec                	mov    %ebp,%esp
  1010a8:	5d                   	pop    %ebp
  1010a9:	c3                   	ret    

001010aa <copy_page_physical>:
  1010aa:	53                   	push   %ebx
  1010ab:	9c                   	pushf  
  1010ac:	fa                   	cli    
  1010ad:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  1010b1:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  1010b5:	0f 20 c2             	mov    %cr0,%edx
  1010b8:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  1010be:	0f 22 c2             	mov    %edx,%cr0
  1010c1:	ba 00 04 00 00       	mov    $0x400,%edx

001010c6 <loop>:
  1010c6:	8b 03                	mov    (%ebx),%eax
  1010c8:	89 01                	mov    %eax,(%ecx)
  1010ca:	83 c3 04             	add    $0x4,%ebx
  1010cd:	83 c1 04             	add    $0x4,%ecx
  1010d0:	4a                   	dec    %edx
  1010d1:	75 f3                	jne    1010c6 <loop>
  1010d3:	0f 20 c2             	mov    %cr0,%edx
  1010d6:	81 ca 00 00 00 80    	or     $0x80000000,%edx
  1010dc:	0f 22 c2             	mov    %edx,%cr0
  1010df:	9d                   	popf   
  1010e0:	5b                   	pop    %ebx
  1010e1:	c3                   	ret    

001010e2 <flush_tlb>:
  1010e2:	0f 20 d8             	mov    %cr3,%eax
  1010e5:	0f 22 d8             	mov    %eax,%cr3

001010e8 <read_eip>:
  1010e8:	58                   	pop    %eax
  1010e9:	ff e0                	jmp    *%eax

001010eb <context_switch>:
  1010eb:	55                   	push   %ebp
  1010ec:	89 e5                	mov    %esp,%ebp
  1010ee:	8b 44 24 08          	mov    0x8(%esp),%eax
  1010f2:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  1010f6:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  1010fa:	8b 54 24 14          	mov    0x14(%esp),%edx
  1010fe:	fa                   	cli    
  1010ff:	89 dc                	mov    %ebx,%esp
  101101:	89 cd                	mov    %ecx,%ebp
  101103:	0f 22 da             	mov    %edx,%cr3
  101106:	89 c3                	mov    %eax,%ebx
  101108:	b8 ed ad 10 7a       	mov    $0x7a10aded,%eax
  10110d:	fb                   	sti    
  10110e:	ff e3                	jmp    *%ebx

00101110 <syscall_interface>:
  101110:	55                   	push   %ebp
  101111:	89 e5                	mov    %esp,%ebp
  101113:	8b 44 24 08          	mov    0x8(%esp),%eax

00101117 <test_80>:
  101117:	83 f8 50             	cmp    $0x50,%eax
  10111a:	74 02                	je     10111e <trigger_int_80>
  10111c:	eb 14                	jmp    101132 <test_81>

0010111e <trigger_int_80>:
  10111e:	8b 44 24 0c          	mov    0xc(%esp),%eax
  101122:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  101126:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  10112a:	8b 54 24 18          	mov    0x18(%esp),%edx
  10112e:	cd 50                	int    $0x50
  101130:	eb 1b                	jmp    10114d <_exit>

00101132 <test_81>:
  101132:	83 f8 51             	cmp    $0x51,%eax
  101135:	74 02                	je     101139 <trigger_int_81>
  101137:	eb 14                	jmp    10114d <_exit>

00101139 <trigger_int_81>:
  101139:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10113d:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  101141:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  101145:	8b 54 24 18          	mov    0x18(%esp),%edx
  101149:	cd 51                	int    $0x51
  10114b:	eb 00                	jmp    10114d <_exit>

0010114d <_exit>:
  10114d:	c3                   	ret    

0010114e <isr_register>:
  10114e:	55                   	push   %ebp
  10114f:	89 e5                	mov    %esp,%ebp
  101151:	8b 45 08             	mov    0x8(%ebp),%eax
  101154:	8b 55 0c             	mov    0xc(%ebp),%edx
  101157:	89 14 85 20 b0 10 00 	mov    %edx,0x10b020(,%eax,4)
  10115e:	90                   	nop
  10115f:	5d                   	pop    %ebp
  101160:	c3                   	ret    

00101161 <hl_int_dispatcher>:
  101161:	55                   	push   %ebp
  101162:	89 e5                	mov    %esp,%ebp
  101164:	83 ec 18             	sub    $0x18,%esp
  101167:	8b 45 2c             	mov    0x2c(%ebp),%eax
  10116a:	8b 04 85 20 b0 10 00 	mov    0x10b020(,%eax,4),%eax
  101171:	85 c0                	test   %eax,%eax
  101173:	74 44                	je     1011b9 <hl_int_dispatcher+0x58>
  101175:	8b 45 2c             	mov    0x2c(%ebp),%eax
  101178:	8b 04 85 20 b0 10 00 	mov    0x10b020(,%eax,4),%eax
  10117f:	ff 75 44             	push   0x44(%ebp)
  101182:	ff 75 40             	push   0x40(%ebp)
  101185:	ff 75 3c             	push   0x3c(%ebp)
  101188:	ff 75 38             	push   0x38(%ebp)
  10118b:	ff 75 34             	push   0x34(%ebp)
  10118e:	ff 75 30             	push   0x30(%ebp)
  101191:	ff 75 2c             	push   0x2c(%ebp)
  101194:	ff 75 28             	push   0x28(%ebp)
  101197:	ff 75 24             	push   0x24(%ebp)
  10119a:	ff 75 20             	push   0x20(%ebp)
  10119d:	ff 75 1c             	push   0x1c(%ebp)
  1011a0:	ff 75 18             	push   0x18(%ebp)
  1011a3:	ff 75 14             	push   0x14(%ebp)
  1011a6:	ff 75 10             	push   0x10(%ebp)
  1011a9:	ff 75 0c             	push   0xc(%ebp)
  1011ac:	ff 75 08             	push   0x8(%ebp)
  1011af:	ff d0                	call   *%eax
  1011b1:	83 c4 40             	add    $0x40,%esp
  1011b4:	e9 f0 00 00 00       	jmp    1012a9 <hl_int_dispatcher+0x148>
  1011b9:	83 ec 0c             	sub    $0xc,%esp
  1011bc:	68 e0 0d 14 00       	push   $0x140de0
  1011c1:	e8 04 70 00 00       	call   1081ca <__redirect_printf__>
  1011c6:	83 c4 10             	add    $0x10,%esp
  1011c9:	8b 45 2c             	mov    0x2c(%ebp),%eax
  1011cc:	83 ec 08             	sub    $0x8,%esp
  1011cf:	50                   	push   %eax
  1011d0:	68 0c a0 10 00       	push   $0x10a00c
  1011d5:	e8 d8 78 00 00       	call   108ab2 <printf>
  1011da:	83 c4 10             	add    $0x10,%esp
  1011dd:	83 ec 0c             	sub    $0xc,%esp
  1011e0:	6a 00                	push   $0x0
  1011e2:	e8 e3 6f 00 00       	call   1081ca <__redirect_printf__>
  1011e7:	83 c4 10             	add    $0x10,%esp
  1011ea:	83 ec 0c             	sub    $0xc,%esp
  1011ed:	8d 45 f2             	lea    -0xe(%ebp),%eax
  1011f0:	50                   	push   %eax
  1011f1:	e8 b7 14 00 00       	call   1026ad <cmos_read_rtc>
  1011f6:	83 c4 10             	add    $0x10,%esp
  1011f9:	83 ec 04             	sub    $0x4,%esp
  1011fc:	68 cc 11 14 00       	push   $0x1411cc
  101201:	83 ec 08             	sub    $0x8,%esp
  101204:	89 e0                	mov    %esp,%eax
  101206:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101209:	89 10                	mov    %edx,(%eax)
  10120b:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  10120f:	66 89 50 04          	mov    %dx,0x4(%eax)
  101213:	e8 fa 38 00 00       	call   104b12 <cmos_datetime_to_str>
  101218:	83 c4 10             	add    $0x10,%esp
  10121b:	83 ec 0c             	sub    $0xc,%esp
  10121e:	68 e0 09 14 00       	push   $0x1409e0
  101223:	e8 a2 6f 00 00       	call   1081ca <__redirect_printf__>
  101228:	83 c4 10             	add    $0x10,%esp
  10122b:	83 ec 04             	sub    $0x4,%esp
  10122e:	68 e0 0d 14 00       	push   $0x140de0
  101233:	68 cc 11 14 00       	push   $0x1411cc
  101238:	68 46 a0 10 00       	push   $0x10a046
  10123d:	e8 70 78 00 00       	call   108ab2 <printf>
  101242:	83 c4 10             	add    $0x10,%esp
  101245:	83 ec 0c             	sub    $0xc,%esp
  101248:	6a 00                	push   $0x0
  10124a:	e8 7b 6f 00 00       	call   1081ca <__redirect_printf__>
  10124f:	83 c4 10             	add    $0x10,%esp
  101252:	83 ec 08             	sub    $0x8,%esp
  101255:	68 e0 09 14 00       	push   $0x1409e0
  10125a:	68 f8 03 00 00       	push   $0x3f8
  10125f:	e8 a6 0f 00 00       	call   10220a <com_write>
  101264:	83 c4 10             	add    $0x10,%esp
  101267:	83 ec 04             	sub    $0x4,%esp
  10126a:	68 00 04 00 00       	push   $0x400
  10126f:	6a 00                	push   $0x0
  101271:	68 e0 09 14 00       	push   $0x1409e0
  101276:	e8 b0 7b 00 00       	call   108e2b <memset>
  10127b:	83 c4 10             	add    $0x10,%esp
  10127e:	83 ec 04             	sub    $0x4,%esp
  101281:	68 ec 03 00 00       	push   $0x3ec
  101286:	6a 00                	push   $0x0
  101288:	68 e0 0d 14 00       	push   $0x140de0
  10128d:	e8 99 7b 00 00       	call   108e2b <memset>
  101292:	83 c4 10             	add    $0x10,%esp
  101295:	83 ec 04             	sub    $0x4,%esp
  101298:	6a 14                	push   $0x14
  10129a:	6a 00                	push   $0x0
  10129c:	68 cc 11 14 00       	push   $0x1411cc
  1012a1:	e8 85 7b 00 00       	call   108e2b <memset>
  1012a6:	83 c4 10             	add    $0x10,%esp
  1012a9:	90                   	nop
  1012aa:	c9                   	leave  
  1012ab:	c3                   	ret    

001012ac <hl_irq_dispatcher>:
  1012ac:	55                   	push   %ebp
  1012ad:	89 e5                	mov    %esp,%ebp
  1012af:	83 ec 08             	sub    $0x8,%esp
  1012b2:	8b 45 2c             	mov    0x2c(%ebp),%eax
  1012b5:	83 f8 27             	cmp    $0x27,%eax
  1012b8:	76 05                	jbe    1012bf <hl_irq_dispatcher+0x13>
  1012ba:	e8 4b 06 00 00       	call   10190a <pic_reset_slave>
  1012bf:	e8 1f 06 00 00       	call   1018e3 <pic_reset_master>
  1012c4:	ff 75 44             	push   0x44(%ebp)
  1012c7:	ff 75 40             	push   0x40(%ebp)
  1012ca:	ff 75 3c             	push   0x3c(%ebp)
  1012cd:	ff 75 38             	push   0x38(%ebp)
  1012d0:	ff 75 34             	push   0x34(%ebp)
  1012d3:	ff 75 30             	push   0x30(%ebp)
  1012d6:	ff 75 2c             	push   0x2c(%ebp)
  1012d9:	ff 75 28             	push   0x28(%ebp)
  1012dc:	ff 75 24             	push   0x24(%ebp)
  1012df:	ff 75 20             	push   0x20(%ebp)
  1012e2:	ff 75 1c             	push   0x1c(%ebp)
  1012e5:	ff 75 18             	push   0x18(%ebp)
  1012e8:	ff 75 14             	push   0x14(%ebp)
  1012eb:	ff 75 10             	push   0x10(%ebp)
  1012ee:	ff 75 0c             	push   0xc(%ebp)
  1012f1:	ff 75 08             	push   0x8(%ebp)
  1012f4:	e8 68 fe ff ff       	call   101161 <hl_int_dispatcher>
  1012f9:	83 c4 40             	add    $0x40,%esp
  1012fc:	90                   	nop
  1012fd:	c9                   	leave  
  1012fe:	c3                   	ret    

001012ff <unhandled_interrupt>:
  1012ff:	55                   	push   %ebp
  101300:	89 e5                	mov    %esp,%ebp
  101302:	83 ec 18             	sub    $0x18,%esp
  101305:	83 ec 0c             	sub    $0xc,%esp
  101308:	68 e0 0d 14 00       	push   $0x140de0
  10130d:	e8 b8 6e 00 00       	call   1081ca <__redirect_printf__>
  101312:	83 c4 10             	add    $0x10,%esp
  101315:	8b 45 2c             	mov    0x2c(%ebp),%eax
  101318:	83 ec 08             	sub    $0x8,%esp
  10131b:	50                   	push   %eax
  10131c:	68 4c a0 10 00       	push   $0x10a04c
  101321:	e8 8c 77 00 00       	call   108ab2 <printf>
  101326:	83 c4 10             	add    $0x10,%esp
  101329:	83 ec 0c             	sub    $0xc,%esp
  10132c:	6a 00                	push   $0x0
  10132e:	e8 97 6e 00 00       	call   1081ca <__redirect_printf__>
  101333:	83 c4 10             	add    $0x10,%esp
  101336:	83 ec 0c             	sub    $0xc,%esp
  101339:	8d 45 f2             	lea    -0xe(%ebp),%eax
  10133c:	50                   	push   %eax
  10133d:	e8 6b 13 00 00       	call   1026ad <cmos_read_rtc>
  101342:	83 c4 10             	add    $0x10,%esp
  101345:	83 ec 04             	sub    $0x4,%esp
  101348:	68 cc 11 14 00       	push   $0x1411cc
  10134d:	83 ec 08             	sub    $0x8,%esp
  101350:	89 e0                	mov    %esp,%eax
  101352:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101355:	89 10                	mov    %edx,(%eax)
  101357:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  10135b:	66 89 50 04          	mov    %dx,0x4(%eax)
  10135f:	e8 ae 37 00 00       	call   104b12 <cmos_datetime_to_str>
  101364:	83 c4 10             	add    $0x10,%esp
  101367:	83 ec 0c             	sub    $0xc,%esp
  10136a:	68 e0 09 14 00       	push   $0x1409e0
  10136f:	e8 56 6e 00 00       	call   1081ca <__redirect_printf__>
  101374:	83 c4 10             	add    $0x10,%esp
  101377:	83 ec 04             	sub    $0x4,%esp
  10137a:	68 e0 0d 14 00       	push   $0x140de0
  10137f:	68 cc 11 14 00       	push   $0x1411cc
  101384:	68 46 a0 10 00       	push   $0x10a046
  101389:	e8 24 77 00 00       	call   108ab2 <printf>
  10138e:	83 c4 10             	add    $0x10,%esp
  101391:	83 ec 0c             	sub    $0xc,%esp
  101394:	6a 00                	push   $0x0
  101396:	e8 2f 6e 00 00       	call   1081ca <__redirect_printf__>
  10139b:	83 c4 10             	add    $0x10,%esp
  10139e:	83 ec 08             	sub    $0x8,%esp
  1013a1:	68 e0 09 14 00       	push   $0x1409e0
  1013a6:	68 f8 03 00 00       	push   $0x3f8
  1013ab:	e8 5a 0e 00 00       	call   10220a <com_write>
  1013b0:	83 c4 10             	add    $0x10,%esp
  1013b3:	83 ec 04             	sub    $0x4,%esp
  1013b6:	68 00 04 00 00       	push   $0x400
  1013bb:	6a 00                	push   $0x0
  1013bd:	68 e0 09 14 00       	push   $0x1409e0
  1013c2:	e8 64 7a 00 00       	call   108e2b <memset>
  1013c7:	83 c4 10             	add    $0x10,%esp
  1013ca:	83 ec 04             	sub    $0x4,%esp
  1013cd:	68 ec 03 00 00       	push   $0x3ec
  1013d2:	6a 00                	push   $0x0
  1013d4:	68 e0 0d 14 00       	push   $0x140de0
  1013d9:	e8 4d 7a 00 00       	call   108e2b <memset>
  1013de:	83 c4 10             	add    $0x10,%esp
  1013e1:	83 ec 04             	sub    $0x4,%esp
  1013e4:	6a 14                	push   $0x14
  1013e6:	6a 00                	push   $0x0
  1013e8:	68 cc 11 14 00       	push   $0x1411cc
  1013ed:	e8 39 7a 00 00       	call   108e2b <memset>
  1013f2:	83 c4 10             	add    $0x10,%esp
  1013f5:	90                   	nop
  1013f6:	c9                   	leave  
  1013f7:	c3                   	ret    

001013f8 <divide_by_zero_exception>:
  1013f8:	55                   	push   %ebp
  1013f9:	89 e5                	mov    %esp,%ebp
  1013fb:	83 ec 08             	sub    $0x8,%esp
  1013fe:	83 ec 0c             	sub    $0xc,%esp
  101401:	68 68 a0 10 00       	push   $0x10a068
  101406:	e8 a7 76 00 00       	call   108ab2 <printf>
  10140b:	83 c4 10             	add    $0x10,%esp
  10140e:	e8 4f 79 00 00       	call   108d62 <abort>

00101413 <undef_opcode_exception>:
  101413:	55                   	push   %ebp
  101414:	89 e5                	mov    %esp,%ebp
  101416:	83 ec 18             	sub    $0x18,%esp
  101419:	e8 ca fc ff ff       	call   1010e8 <read_eip>
  10141e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101421:	83 ec 08             	sub    $0x8,%esp
  101424:	ff 75 f4             	push   -0xc(%ebp)
  101427:	68 90 a0 10 00       	push   $0x10a090
  10142c:	e8 81 76 00 00       	call   108ab2 <printf>
  101431:	83 c4 10             	add    $0x10,%esp
  101434:	e8 29 79 00 00       	call   108d62 <abort>

00101439 <gpf_exception>:
  101439:	55                   	push   %ebp
  10143a:	89 e5                	mov    %esp,%ebp
  10143c:	83 ec 08             	sub    $0x8,%esp
  10143f:	83 ec 0c             	sub    $0xc,%esp
  101442:	68 bc a0 10 00       	push   $0x10a0bc
  101447:	e8 66 76 00 00       	call   108ab2 <printf>
  10144c:	83 c4 10             	add    $0x10,%esp
  10144f:	e8 0e 79 00 00       	call   108d62 <abort>

00101454 <page_fault_exception>:
  101454:	55                   	push   %ebp
  101455:	89 e5                	mov    %esp,%ebp
  101457:	83 ec 28             	sub    $0x28,%esp
  10145a:	0f 20 d0             	mov    %cr2,%eax
  10145d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101460:	8b 45 30             	mov    0x30(%ebp),%eax
  101463:	83 e0 01             	and    $0x1,%eax
  101466:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101469:	8b 45 30             	mov    0x30(%ebp),%eax
  10146c:	d1 e8                	shr    %eax
  10146e:	83 e0 01             	and    $0x1,%eax
  101471:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101474:	8b 45 30             	mov    0x30(%ebp),%eax
  101477:	c1 e8 02             	shr    $0x2,%eax
  10147a:	83 e0 01             	and    $0x1,%eax
  10147d:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101480:	8b 45 30             	mov    0x30(%ebp),%eax
  101483:	c1 e8 03             	shr    $0x3,%eax
  101486:	83 e0 01             	and    $0x1,%eax
  101489:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10148c:	8b 45 30             	mov    0x30(%ebp),%eax
  10148f:	c1 e8 04             	shr    $0x4,%eax
  101492:	83 e0 01             	and    $0x1,%eax
  101495:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101498:	83 ec 04             	sub    $0x4,%esp
  10149b:	ff 75 f4             	push   -0xc(%ebp)
  10149e:	ff 75 e0             	push   -0x20(%ebp)
  1014a1:	ff 75 e4             	push   -0x1c(%ebp)
  1014a4:	ff 75 e8             	push   -0x18(%ebp)
  1014a7:	ff 75 ec             	push   -0x14(%ebp)
  1014aa:	ff 75 f0             	push   -0x10(%ebp)
  1014ad:	68 e8 a0 10 00       	push   $0x10a0e8
  1014b2:	e8 fb 75 00 00       	call   108ab2 <printf>
  1014b7:	83 c4 20             	add    $0x20,%esp
  1014ba:	e8 a3 78 00 00       	call   108d62 <abort>

001014bf <sys_write>:
  1014bf:	55                   	push   %ebp
  1014c0:	89 e5                	mov    %esp,%ebp
  1014c2:	83 ec 38             	sub    $0x38,%esp
  1014c5:	8b 45 28             	mov    0x28(%ebp),%eax
  1014c8:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1014cb:	8b 45 1c             	mov    0x1c(%ebp),%eax
  1014ce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1014d1:	8b 45 24             	mov    0x24(%ebp),%eax
  1014d4:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1014d7:	8b 45 20             	mov    0x20(%ebp),%eax
  1014da:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1014dd:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  1014e1:	0f 84 c0 00 00 00    	je     1015a7 <sys_write+0xe8>
  1014e7:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  1014eb:	0f 87 f6 00 00 00    	ja     1015e7 <sys_write+0x128>
  1014f1:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
  1014f5:	74 72                	je     101569 <sys_write+0xaa>
  1014f7:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
  1014fb:	0f 87 e6 00 00 00    	ja     1015e7 <sys_write+0x128>
  101501:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  101505:	74 0b                	je     101512 <sys_write+0x53>
  101507:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
  10150b:	74 21                	je     10152e <sys_write+0x6f>
  10150d:	e9 d5 00 00 00       	jmp    1015e7 <sys_write+0x128>
  101512:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101515:	89 45 cc             	mov    %eax,-0x34(%ebp)
  101518:	83 ec 08             	sub    $0x8,%esp
  10151b:	ff 75 e4             	push   -0x1c(%ebp)
  10151e:	ff 75 cc             	push   -0x34(%ebp)
  101521:	e8 ed ef ff ff       	call   100513 <tty_putchars>
  101526:	83 c4 10             	add    $0x10,%esp
  101529:	e9 ba 00 00 00       	jmp    1015e8 <sys_write+0x129>
  10152e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101531:	89 45 d0             	mov    %eax,-0x30(%ebp)
  101534:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10153b:	eb 22                	jmp    10155f <sys_write+0xa0>
  10153d:	8b 55 d0             	mov    -0x30(%ebp),%edx
  101540:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101543:	01 d0                	add    %edx,%eax
  101545:	0f b6 00             	movzbl (%eax),%eax
  101548:	0f b6 d0             	movzbl %al,%edx
  10154b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10154e:	83 ec 08             	sub    $0x8,%esp
  101551:	52                   	push   %edx
  101552:	50                   	push   %eax
  101553:	e8 68 f1 ff ff       	call   1006c0 <outb>
  101558:	83 c4 10             	add    $0x10,%esp
  10155b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10155f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101562:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  101565:	72 d6                	jb     10153d <sys_write+0x7e>
  101567:	eb 7f                	jmp    1015e8 <sys_write+0x129>
  101569:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10156c:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10156f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101576:	eb 25                	jmp    10159d <sys_write+0xde>
  101578:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10157b:	8d 14 00             	lea    (%eax,%eax,1),%edx
  10157e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  101581:	01 d0                	add    %edx,%eax
  101583:	0f b7 00             	movzwl (%eax),%eax
  101586:	0f b7 d0             	movzwl %ax,%edx
  101589:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10158c:	83 ec 08             	sub    $0x8,%esp
  10158f:	52                   	push   %edx
  101590:	50                   	push   %eax
  101591:	e8 54 f1 ff ff       	call   1006ea <outw>
  101596:	83 c4 10             	add    $0x10,%esp
  101599:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10159d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1015a0:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  1015a3:	72 d3                	jb     101578 <sys_write+0xb9>
  1015a5:	eb 41                	jmp    1015e8 <sys_write+0x129>
  1015a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1015aa:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1015ad:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1015b4:	eb 27                	jmp    1015dd <sys_write+0x11e>
  1015b6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1015b9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1015c0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1015c3:	01 d0                	add    %edx,%eax
  1015c5:	8b 00                	mov    (%eax),%eax
  1015c7:	89 c2                	mov    %eax,%edx
  1015c9:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1015cc:	83 ec 08             	sub    $0x8,%esp
  1015cf:	52                   	push   %edx
  1015d0:	50                   	push   %eax
  1015d1:	e8 3d f1 ff ff       	call   100713 <outl>
  1015d6:	83 c4 10             	add    $0x10,%esp
  1015d9:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1015dd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1015e0:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  1015e3:	72 d1                	jb     1015b6 <sys_write+0xf7>
  1015e5:	eb 01                	jmp    1015e8 <sys_write+0x129>
  1015e7:	90                   	nop
  1015e8:	90                   	nop
  1015e9:	c9                   	leave  
  1015ea:	c3                   	ret    

001015eb <sys_read>:
  1015eb:	55                   	push   %ebp
  1015ec:	89 e5                	mov    %esp,%ebp
  1015ee:	83 ec 28             	sub    $0x28,%esp
  1015f1:	8b 45 28             	mov    0x28(%ebp),%eax
  1015f4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1015f7:	8b 45 1c             	mov    0x1c(%ebp),%eax
  1015fa:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1015fd:	8b 45 24             	mov    0x24(%ebp),%eax
  101600:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101603:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
  101607:	0f 84 bc 00 00 00    	je     1016c9 <sys_read+0xde>
  10160d:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
  101611:	0f 87 01 01 00 00    	ja     101718 <sys_read+0x12d>
  101617:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
  10161b:	74 0b                	je     101628 <sys_read+0x3d>
  10161d:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
  101621:	74 57                	je     10167a <sys_read+0x8f>
  101623:	e9 f0 00 00 00       	jmp    101718 <sys_read+0x12d>
  101628:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10162b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10162e:	83 ec 04             	sub    $0x4,%esp
  101631:	ff 75 ec             	push   -0x14(%ebp)
  101634:	ff 75 e0             	push   -0x20(%ebp)
  101637:	68 f8 03 00 00       	push   $0x3f8
  10163c:	e8 c1 0c 00 00       	call   102302 <com_read>
  101641:	83 c4 10             	add    $0x10,%esp
  101644:	83 ec 0c             	sub    $0xc,%esp
  101647:	68 58 a1 10 00       	push   $0x10a158
  10164c:	e8 fb ee ff ff       	call   10054c <tty_putstring>
  101651:	83 c4 10             	add    $0x10,%esp
  101654:	83 ec 08             	sub    $0x8,%esp
  101657:	ff 75 ec             	push   -0x14(%ebp)
  10165a:	ff 75 e0             	push   -0x20(%ebp)
  10165d:	e8 b1 ee ff ff       	call   100513 <tty_putchars>
  101662:	83 c4 10             	add    $0x10,%esp
  101665:	83 ec 0c             	sub    $0xc,%esp
  101668:	68 63 a1 10 00       	push   $0x10a163
  10166d:	e8 da ee ff ff       	call   10054c <tty_putstring>
  101672:	83 c4 10             	add    $0x10,%esp
  101675:	e9 9f 00 00 00       	jmp    101719 <sys_read+0x12e>
  10167a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10167d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  101680:	83 ec 04             	sub    $0x4,%esp
  101683:	ff 75 ec             	push   -0x14(%ebp)
  101686:	ff 75 e4             	push   -0x1c(%ebp)
  101689:	68 f8 02 00 00       	push   $0x2f8
  10168e:	e8 6f 0c 00 00       	call   102302 <com_read>
  101693:	83 c4 10             	add    $0x10,%esp
  101696:	83 ec 0c             	sub    $0xc,%esp
  101699:	68 65 a1 10 00       	push   $0x10a165
  10169e:	e8 a9 ee ff ff       	call   10054c <tty_putstring>
  1016a3:	83 c4 10             	add    $0x10,%esp
  1016a6:	83 ec 08             	sub    $0x8,%esp
  1016a9:	ff 75 ec             	push   -0x14(%ebp)
  1016ac:	ff 75 e4             	push   -0x1c(%ebp)
  1016af:	e8 5f ee ff ff       	call   100513 <tty_putchars>
  1016b4:	83 c4 10             	add    $0x10,%esp
  1016b7:	83 ec 0c             	sub    $0xc,%esp
  1016ba:	68 63 a1 10 00       	push   $0x10a163
  1016bf:	e8 88 ee ff ff       	call   10054c <tty_putstring>
  1016c4:	83 c4 10             	add    $0x10,%esp
  1016c7:	eb 50                	jmp    101719 <sys_read+0x12e>
  1016c9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1016cc:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1016cf:	83 ec 04             	sub    $0x4,%esp
  1016d2:	ff 75 ec             	push   -0x14(%ebp)
  1016d5:	ff 75 e8             	push   -0x18(%ebp)
  1016d8:	68 e8 03 00 00       	push   $0x3e8
  1016dd:	e8 20 0c 00 00       	call   102302 <com_read>
  1016e2:	83 c4 10             	add    $0x10,%esp
  1016e5:	83 ec 0c             	sub    $0xc,%esp
  1016e8:	68 70 a1 10 00       	push   $0x10a170
  1016ed:	e8 5a ee ff ff       	call   10054c <tty_putstring>
  1016f2:	83 c4 10             	add    $0x10,%esp
  1016f5:	83 ec 08             	sub    $0x8,%esp
  1016f8:	ff 75 ec             	push   -0x14(%ebp)
  1016fb:	ff 75 e8             	push   -0x18(%ebp)
  1016fe:	e8 10 ee ff ff       	call   100513 <tty_putchars>
  101703:	83 c4 10             	add    $0x10,%esp
  101706:	83 ec 0c             	sub    $0xc,%esp
  101709:	68 63 a1 10 00       	push   $0x10a163
  10170e:	e8 39 ee ff ff       	call   10054c <tty_putstring>
  101713:	83 c4 10             	add    $0x10,%esp
  101716:	eb 01                	jmp    101719 <sys_read+0x12e>
  101718:	90                   	nop
  101719:	90                   	nop
  10171a:	c9                   	leave  
  10171b:	c3                   	ret    

0010171c <syscall_init>:
  10171c:	55                   	push   %ebp
  10171d:	89 e5                	mov    %esp,%ebp
  10171f:	83 ec 18             	sub    $0x18,%esp
  101722:	83 ec 08             	sub    $0x8,%esp
  101725:	68 eb 15 10 00       	push   $0x1015eb
  10172a:	6a 50                	push   $0x50
  10172c:	e8 1d fa ff ff       	call   10114e <isr_register>
  101731:	83 c4 10             	add    $0x10,%esp
  101734:	83 ec 08             	sub    $0x8,%esp
  101737:	68 bf 14 10 00       	push   $0x1014bf
  10173c:	6a 51                	push   $0x51
  10173e:	e8 0b fa ff ff       	call   10114e <isr_register>
  101743:	83 c4 10             	add    $0x10,%esp
  101746:	83 ec 0c             	sub    $0xc,%esp
  101749:	68 e0 0d 14 00       	push   $0x140de0
  10174e:	e8 77 6a 00 00       	call   1081ca <__redirect_printf__>
  101753:	83 c4 10             	add    $0x10,%esp
  101756:	83 ec 0c             	sub    $0xc,%esp
  101759:	68 7b a1 10 00       	push   $0x10a17b
  10175e:	e8 4f 73 00 00       	call   108ab2 <printf>
  101763:	83 c4 10             	add    $0x10,%esp
  101766:	83 ec 0c             	sub    $0xc,%esp
  101769:	6a 00                	push   $0x0
  10176b:	e8 5a 6a 00 00       	call   1081ca <__redirect_printf__>
  101770:	83 c4 10             	add    $0x10,%esp
  101773:	83 ec 0c             	sub    $0xc,%esp
  101776:	8d 45 f2             	lea    -0xe(%ebp),%eax
  101779:	50                   	push   %eax
  10177a:	e8 2e 0f 00 00       	call   1026ad <cmos_read_rtc>
  10177f:	83 c4 10             	add    $0x10,%esp
  101782:	83 ec 04             	sub    $0x4,%esp
  101785:	68 cc 11 14 00       	push   $0x1411cc
  10178a:	83 ec 08             	sub    $0x8,%esp
  10178d:	89 e0                	mov    %esp,%eax
  10178f:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101792:	89 10                	mov    %edx,(%eax)
  101794:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  101798:	66 89 50 04          	mov    %dx,0x4(%eax)
  10179c:	e8 71 33 00 00       	call   104b12 <cmos_datetime_to_str>
  1017a1:	83 c4 10             	add    $0x10,%esp
  1017a4:	83 ec 0c             	sub    $0xc,%esp
  1017a7:	68 e0 09 14 00       	push   $0x1409e0
  1017ac:	e8 19 6a 00 00       	call   1081ca <__redirect_printf__>
  1017b1:	83 c4 10             	add    $0x10,%esp
  1017b4:	83 ec 04             	sub    $0x4,%esp
  1017b7:	68 e0 0d 14 00       	push   $0x140de0
  1017bc:	68 cc 11 14 00       	push   $0x1411cc
  1017c1:	68 8b a1 10 00       	push   $0x10a18b
  1017c6:	e8 e7 72 00 00       	call   108ab2 <printf>
  1017cb:	83 c4 10             	add    $0x10,%esp
  1017ce:	83 ec 0c             	sub    $0xc,%esp
  1017d1:	6a 00                	push   $0x0
  1017d3:	e8 f2 69 00 00       	call   1081ca <__redirect_printf__>
  1017d8:	83 c4 10             	add    $0x10,%esp
  1017db:	83 ec 08             	sub    $0x8,%esp
  1017de:	68 e0 09 14 00       	push   $0x1409e0
  1017e3:	68 f8 03 00 00       	push   $0x3f8
  1017e8:	e8 1d 0a 00 00       	call   10220a <com_write>
  1017ed:	83 c4 10             	add    $0x10,%esp
  1017f0:	83 ec 04             	sub    $0x4,%esp
  1017f3:	68 00 04 00 00       	push   $0x400
  1017f8:	6a 00                	push   $0x0
  1017fa:	68 e0 09 14 00       	push   $0x1409e0
  1017ff:	e8 27 76 00 00       	call   108e2b <memset>
  101804:	83 c4 10             	add    $0x10,%esp
  101807:	83 ec 04             	sub    $0x4,%esp
  10180a:	68 ec 03 00 00       	push   $0x3ec
  10180f:	6a 00                	push   $0x0
  101811:	68 e0 0d 14 00       	push   $0x140de0
  101816:	e8 10 76 00 00       	call   108e2b <memset>
  10181b:	83 c4 10             	add    $0x10,%esp
  10181e:	83 ec 04             	sub    $0x4,%esp
  101821:	6a 14                	push   $0x14
  101823:	6a 00                	push   $0x0
  101825:	68 cc 11 14 00       	push   $0x1411cc
  10182a:	e8 fc 75 00 00       	call   108e2b <memset>
  10182f:	83 c4 10             	add    $0x10,%esp
  101832:	90                   	nop
  101833:	c9                   	leave  
  101834:	c3                   	ret    

00101835 <pic_remap>:
  101835:	55                   	push   %ebp
  101836:	89 e5                	mov    %esp,%ebp
  101838:	83 ec 08             	sub    $0x8,%esp
  10183b:	83 ec 08             	sub    $0x8,%esp
  10183e:	6a 11                	push   $0x11
  101840:	6a 20                	push   $0x20
  101842:	e8 79 ee ff ff       	call   1006c0 <outb>
  101847:	83 c4 10             	add    $0x10,%esp
  10184a:	83 ec 08             	sub    $0x8,%esp
  10184d:	6a 11                	push   $0x11
  10184f:	68 a0 00 00 00       	push   $0xa0
  101854:	e8 67 ee ff ff       	call   1006c0 <outb>
  101859:	83 c4 10             	add    $0x10,%esp
  10185c:	83 ec 08             	sub    $0x8,%esp
  10185f:	6a 20                	push   $0x20
  101861:	6a 21                	push   $0x21
  101863:	e8 58 ee ff ff       	call   1006c0 <outb>
  101868:	83 c4 10             	add    $0x10,%esp
  10186b:	83 ec 08             	sub    $0x8,%esp
  10186e:	6a 28                	push   $0x28
  101870:	68 a1 00 00 00       	push   $0xa1
  101875:	e8 46 ee ff ff       	call   1006c0 <outb>
  10187a:	83 c4 10             	add    $0x10,%esp
  10187d:	83 ec 08             	sub    $0x8,%esp
  101880:	6a 04                	push   $0x4
  101882:	6a 21                	push   $0x21
  101884:	e8 37 ee ff ff       	call   1006c0 <outb>
  101889:	83 c4 10             	add    $0x10,%esp
  10188c:	83 ec 08             	sub    $0x8,%esp
  10188f:	6a 02                	push   $0x2
  101891:	68 a1 00 00 00       	push   $0xa1
  101896:	e8 25 ee ff ff       	call   1006c0 <outb>
  10189b:	83 c4 10             	add    $0x10,%esp
  10189e:	83 ec 08             	sub    $0x8,%esp
  1018a1:	6a 01                	push   $0x1
  1018a3:	6a 21                	push   $0x21
  1018a5:	e8 16 ee ff ff       	call   1006c0 <outb>
  1018aa:	83 c4 10             	add    $0x10,%esp
  1018ad:	83 ec 08             	sub    $0x8,%esp
  1018b0:	6a 01                	push   $0x1
  1018b2:	68 a1 00 00 00       	push   $0xa1
  1018b7:	e8 04 ee ff ff       	call   1006c0 <outb>
  1018bc:	83 c4 10             	add    $0x10,%esp
  1018bf:	83 ec 08             	sub    $0x8,%esp
  1018c2:	6a 00                	push   $0x0
  1018c4:	6a 21                	push   $0x21
  1018c6:	e8 f5 ed ff ff       	call   1006c0 <outb>
  1018cb:	83 c4 10             	add    $0x10,%esp
  1018ce:	83 ec 08             	sub    $0x8,%esp
  1018d1:	6a 00                	push   $0x0
  1018d3:	68 a1 00 00 00       	push   $0xa1
  1018d8:	e8 e3 ed ff ff       	call   1006c0 <outb>
  1018dd:	83 c4 10             	add    $0x10,%esp
  1018e0:	90                   	nop
  1018e1:	c9                   	leave  
  1018e2:	c3                   	ret    

001018e3 <pic_reset_master>:
  1018e3:	55                   	push   %ebp
  1018e4:	89 e5                	mov    %esp,%ebp
  1018e6:	83 ec 08             	sub    $0x8,%esp
  1018e9:	83 ec 08             	sub    $0x8,%esp
  1018ec:	6a 20                	push   $0x20
  1018ee:	6a 20                	push   $0x20
  1018f0:	e8 cb ed ff ff       	call   1006c0 <outb>
  1018f5:	83 c4 10             	add    $0x10,%esp
  1018f8:	83 ec 08             	sub    $0x8,%esp
  1018fb:	6a 20                	push   $0x20
  1018fd:	6a 21                	push   $0x21
  1018ff:	e8 bc ed ff ff       	call   1006c0 <outb>
  101904:	83 c4 10             	add    $0x10,%esp
  101907:	90                   	nop
  101908:	c9                   	leave  
  101909:	c3                   	ret    

0010190a <pic_reset_slave>:
  10190a:	55                   	push   %ebp
  10190b:	89 e5                	mov    %esp,%ebp
  10190d:	83 ec 08             	sub    $0x8,%esp
  101910:	83 ec 08             	sub    $0x8,%esp
  101913:	6a 20                	push   $0x20
  101915:	68 a0 00 00 00       	push   $0xa0
  10191a:	e8 a1 ed ff ff       	call   1006c0 <outb>
  10191f:	83 c4 10             	add    $0x10,%esp
  101922:	83 ec 08             	sub    $0x8,%esp
  101925:	6a 20                	push   $0x20
  101927:	68 a1 00 00 00       	push   $0xa1
  10192c:	e8 8f ed ff ff       	call   1006c0 <outb>
  101931:	83 c4 10             	add    $0x10,%esp
  101934:	90                   	nop
  101935:	c9                   	leave  
  101936:	c3                   	ret    

00101937 <ps2_controller_init>:
  101937:	55                   	push   %ebp
  101938:	89 e5                	mov    %esp,%ebp
  10193a:	83 ec 28             	sub    $0x28,%esp
  10193d:	c6 05 91 08 11 00 00 	movb   $0x0,0x110891
  101944:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  10194b:	e8 4f 1f 00 00       	call   10389f <acpi_get_boot_arch_flags>
  101950:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  101954:	83 ec 0c             	sub    $0xc,%esp
  101957:	68 e0 0d 14 00       	push   $0x140de0
  10195c:	e8 69 68 00 00       	call   1081ca <__redirect_printf__>
  101961:	83 c4 10             	add    $0x10,%esp
  101964:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  101968:	83 ec 08             	sub    $0x8,%esp
  10196b:	50                   	push   %eax
  10196c:	68 94 a1 10 00       	push   $0x10a194
  101971:	e8 3c 71 00 00       	call   108ab2 <printf>
  101976:	83 c4 10             	add    $0x10,%esp
  101979:	83 ec 0c             	sub    $0xc,%esp
  10197c:	6a 00                	push   $0x0
  10197e:	e8 47 68 00 00       	call   1081ca <__redirect_printf__>
  101983:	83 c4 10             	add    $0x10,%esp
  101986:	83 ec 0c             	sub    $0xc,%esp
  101989:	8d 45 eb             	lea    -0x15(%ebp),%eax
  10198c:	50                   	push   %eax
  10198d:	e8 1b 0d 00 00       	call   1026ad <cmos_read_rtc>
  101992:	83 c4 10             	add    $0x10,%esp
  101995:	83 ec 04             	sub    $0x4,%esp
  101998:	68 cc 11 14 00       	push   $0x1411cc
  10199d:	83 ec 08             	sub    $0x8,%esp
  1019a0:	89 e0                	mov    %esp,%eax
  1019a2:	8b 55 eb             	mov    -0x15(%ebp),%edx
  1019a5:	89 10                	mov    %edx,(%eax)
  1019a7:	0f b7 55 ef          	movzwl -0x11(%ebp),%edx
  1019ab:	66 89 50 04          	mov    %dx,0x4(%eax)
  1019af:	e8 5e 31 00 00       	call   104b12 <cmos_datetime_to_str>
  1019b4:	83 c4 10             	add    $0x10,%esp
  1019b7:	83 ec 0c             	sub    $0xc,%esp
  1019ba:	68 e0 09 14 00       	push   $0x1409e0
  1019bf:	e8 06 68 00 00       	call   1081ca <__redirect_printf__>
  1019c4:	83 c4 10             	add    $0x10,%esp
  1019c7:	83 ec 04             	sub    $0x4,%esp
  1019ca:	68 e0 0d 14 00       	push   $0x140de0
  1019cf:	68 cc 11 14 00       	push   $0x1411cc
  1019d4:	68 bf a1 10 00       	push   $0x10a1bf
  1019d9:	e8 d4 70 00 00       	call   108ab2 <printf>
  1019de:	83 c4 10             	add    $0x10,%esp
  1019e1:	83 ec 0c             	sub    $0xc,%esp
  1019e4:	6a 00                	push   $0x0
  1019e6:	e8 df 67 00 00       	call   1081ca <__redirect_printf__>
  1019eb:	83 c4 10             	add    $0x10,%esp
  1019ee:	83 ec 08             	sub    $0x8,%esp
  1019f1:	68 e0 09 14 00       	push   $0x1409e0
  1019f6:	68 f8 03 00 00       	push   $0x3f8
  1019fb:	e8 0a 08 00 00       	call   10220a <com_write>
  101a00:	83 c4 10             	add    $0x10,%esp
  101a03:	83 ec 04             	sub    $0x4,%esp
  101a06:	68 00 04 00 00       	push   $0x400
  101a0b:	6a 00                	push   $0x0
  101a0d:	68 e0 09 14 00       	push   $0x1409e0
  101a12:	e8 14 74 00 00       	call   108e2b <memset>
  101a17:	83 c4 10             	add    $0x10,%esp
  101a1a:	83 ec 04             	sub    $0x4,%esp
  101a1d:	68 ec 03 00 00       	push   $0x3ec
  101a22:	6a 00                	push   $0x0
  101a24:	68 e0 0d 14 00       	push   $0x140de0
  101a29:	e8 fd 73 00 00       	call   108e2b <memset>
  101a2e:	83 c4 10             	add    $0x10,%esp
  101a31:	83 ec 04             	sub    $0x4,%esp
  101a34:	6a 14                	push   $0x14
  101a36:	6a 00                	push   $0x0
  101a38:	68 cc 11 14 00       	push   $0x1411cc
  101a3d:	e8 e9 73 00 00       	call   108e2b <memset>
  101a42:	83 c4 10             	add    $0x10,%esp
  101a45:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  101a49:	66 d1 e8             	shr    %ax
  101a4c:	0f b7 c0             	movzwl %ax,%eax
  101a4f:	83 e0 01             	and    $0x1,%eax
  101a52:	85 c0                	test   %eax,%eax
  101a54:	0f 84 d2 04 00 00    	je     101f2c <ps2_controller_init+0x5f5>
  101a5a:	83 ec 08             	sub    $0x8,%esp
  101a5d:	68 ad 00 00 00       	push   $0xad
  101a62:	6a 64                	push   $0x64
  101a64:	e8 57 ec ff ff       	call   1006c0 <outb>
  101a69:	83 c4 10             	add    $0x10,%esp
  101a6c:	83 ec 08             	sub    $0x8,%esp
  101a6f:	68 a7 00 00 00       	push   $0xa7
  101a74:	6a 64                	push   $0x64
  101a76:	e8 45 ec ff ff       	call   1006c0 <outb>
  101a7b:	83 c4 10             	add    $0x10,%esp
  101a7e:	83 ec 0c             	sub    $0xc,%esp
  101a81:	6a 60                	push   $0x60
  101a83:	e8 1f ec ff ff       	call   1006a7 <inb>
  101a88:	83 c4 10             	add    $0x10,%esp
  101a8b:	83 ec 08             	sub    $0x8,%esp
  101a8e:	6a 20                	push   $0x20
  101a90:	6a 64                	push   $0x64
  101a92:	e8 29 ec ff ff       	call   1006c0 <outb>
  101a97:	83 c4 10             	add    $0x10,%esp
  101a9a:	83 ec 08             	sub    $0x8,%esp
  101a9d:	6a 60                	push   $0x60
  101a9f:	6a 64                	push   $0x64
  101aa1:	e8 1a ec ff ff       	call   1006c0 <outb>
  101aa6:	83 c4 10             	add    $0x10,%esp
  101aa9:	83 ec 0c             	sub    $0xc,%esp
  101aac:	6a 60                	push   $0x60
  101aae:	e8 f4 eb ff ff       	call   1006a7 <inb>
  101ab3:	83 c4 10             	add    $0x10,%esp
  101ab6:	88 45 f5             	mov    %al,-0xb(%ebp)
  101ab9:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
  101abd:	c0 e8 02             	shr    $0x2,%al
  101ac0:	83 e0 01             	and    $0x1,%eax
  101ac3:	a2 90 08 11 00       	mov    %al,0x110890
  101ac8:	83 ec 0c             	sub    $0xc,%esp
  101acb:	68 e0 0d 14 00       	push   $0x140de0
  101ad0:	e8 f5 66 00 00       	call   1081ca <__redirect_printf__>
  101ad5:	83 c4 10             	add    $0x10,%esp
  101ad8:	0f b6 05 90 08 11 00 	movzbl 0x110890,%eax
  101adf:	0f b6 c0             	movzbl %al,%eax
  101ae2:	83 ec 08             	sub    $0x8,%esp
  101ae5:	50                   	push   %eax
  101ae6:	68 c8 a1 10 00       	push   $0x10a1c8
  101aeb:	e8 c2 6f 00 00       	call   108ab2 <printf>
  101af0:	83 c4 10             	add    $0x10,%esp
  101af3:	83 ec 0c             	sub    $0xc,%esp
  101af6:	6a 00                	push   $0x0
  101af8:	e8 cd 66 00 00       	call   1081ca <__redirect_printf__>
  101afd:	83 c4 10             	add    $0x10,%esp
  101b00:	83 ec 0c             	sub    $0xc,%esp
  101b03:	8d 45 e5             	lea    -0x1b(%ebp),%eax
  101b06:	50                   	push   %eax
  101b07:	e8 a1 0b 00 00       	call   1026ad <cmos_read_rtc>
  101b0c:	83 c4 10             	add    $0x10,%esp
  101b0f:	83 ec 04             	sub    $0x4,%esp
  101b12:	68 cc 11 14 00       	push   $0x1411cc
  101b17:	83 ec 08             	sub    $0x8,%esp
  101b1a:	89 e0                	mov    %esp,%eax
  101b1c:	8b 55 e5             	mov    -0x1b(%ebp),%edx
  101b1f:	89 10                	mov    %edx,(%eax)
  101b21:	0f b7 55 e9          	movzwl -0x17(%ebp),%edx
  101b25:	66 89 50 04          	mov    %dx,0x4(%eax)
  101b29:	e8 e4 2f 00 00       	call   104b12 <cmos_datetime_to_str>
  101b2e:	83 c4 10             	add    $0x10,%esp
  101b31:	83 ec 0c             	sub    $0xc,%esp
  101b34:	68 e0 09 14 00       	push   $0x1409e0
  101b39:	e8 8c 66 00 00       	call   1081ca <__redirect_printf__>
  101b3e:	83 c4 10             	add    $0x10,%esp
  101b41:	83 ec 04             	sub    $0x4,%esp
  101b44:	68 e0 0d 14 00       	push   $0x140de0
  101b49:	68 cc 11 14 00       	push   $0x1411cc
  101b4e:	68 bf a1 10 00       	push   $0x10a1bf
  101b53:	e8 5a 6f 00 00       	call   108ab2 <printf>
  101b58:	83 c4 10             	add    $0x10,%esp
  101b5b:	83 ec 0c             	sub    $0xc,%esp
  101b5e:	6a 00                	push   $0x0
  101b60:	e8 65 66 00 00       	call   1081ca <__redirect_printf__>
  101b65:	83 c4 10             	add    $0x10,%esp
  101b68:	83 ec 08             	sub    $0x8,%esp
  101b6b:	68 e0 09 14 00       	push   $0x1409e0
  101b70:	68 f8 03 00 00       	push   $0x3f8
  101b75:	e8 90 06 00 00       	call   10220a <com_write>
  101b7a:	83 c4 10             	add    $0x10,%esp
  101b7d:	83 ec 04             	sub    $0x4,%esp
  101b80:	68 00 04 00 00       	push   $0x400
  101b85:	6a 00                	push   $0x0
  101b87:	68 e0 09 14 00       	push   $0x1409e0
  101b8c:	e8 9a 72 00 00       	call   108e2b <memset>
  101b91:	83 c4 10             	add    $0x10,%esp
  101b94:	83 ec 04             	sub    $0x4,%esp
  101b97:	68 ec 03 00 00       	push   $0x3ec
  101b9c:	6a 00                	push   $0x0
  101b9e:	68 e0 0d 14 00       	push   $0x140de0
  101ba3:	e8 83 72 00 00       	call   108e2b <memset>
  101ba8:	83 c4 10             	add    $0x10,%esp
  101bab:	83 ec 04             	sub    $0x4,%esp
  101bae:	6a 14                	push   $0x14
  101bb0:	6a 00                	push   $0x0
  101bb2:	68 cc 11 14 00       	push   $0x1411cc
  101bb7:	e8 6f 72 00 00       	call   108e2b <memset>
  101bbc:	83 c4 10             	add    $0x10,%esp
  101bbf:	83 ec 08             	sub    $0x8,%esp
  101bc2:	68 aa 00 00 00       	push   $0xaa
  101bc7:	6a 64                	push   $0x64
  101bc9:	e8 f2 ea ff ff       	call   1006c0 <outb>
  101bce:	83 c4 10             	add    $0x10,%esp
  101bd1:	83 ec 0c             	sub    $0xc,%esp
  101bd4:	6a 60                	push   $0x60
  101bd6:	e8 cc ea ff ff       	call   1006a7 <inb>
  101bdb:	83 c4 10             	add    $0x10,%esp
  101bde:	88 45 f4             	mov    %al,-0xc(%ebp)
  101be1:	80 7d f4 55          	cmpb   $0x55,-0xc(%ebp)
  101be5:	0f 85 45 02 00 00    	jne    101e30 <ps2_controller_init+0x4f9>
  101beb:	83 ec 0c             	sub    $0xc,%esp
  101bee:	68 e0 0d 14 00       	push   $0x140de0
  101bf3:	e8 d2 65 00 00       	call   1081ca <__redirect_printf__>
  101bf8:	83 c4 10             	add    $0x10,%esp
  101bfb:	83 ec 0c             	sub    $0xc,%esp
  101bfe:	68 f4 a1 10 00       	push   $0x10a1f4
  101c03:	e8 aa 6e 00 00       	call   108ab2 <printf>
  101c08:	83 c4 10             	add    $0x10,%esp
  101c0b:	83 ec 0c             	sub    $0xc,%esp
  101c0e:	6a 00                	push   $0x0
  101c10:	e8 b5 65 00 00       	call   1081ca <__redirect_printf__>
  101c15:	83 c4 10             	add    $0x10,%esp
  101c18:	83 ec 0c             	sub    $0xc,%esp
  101c1b:	8d 45 df             	lea    -0x21(%ebp),%eax
  101c1e:	50                   	push   %eax
  101c1f:	e8 89 0a 00 00       	call   1026ad <cmos_read_rtc>
  101c24:	83 c4 10             	add    $0x10,%esp
  101c27:	83 ec 04             	sub    $0x4,%esp
  101c2a:	68 cc 11 14 00       	push   $0x1411cc
  101c2f:	83 ec 08             	sub    $0x8,%esp
  101c32:	89 e0                	mov    %esp,%eax
  101c34:	8b 55 df             	mov    -0x21(%ebp),%edx
  101c37:	89 10                	mov    %edx,(%eax)
  101c39:	0f b7 55 e3          	movzwl -0x1d(%ebp),%edx
  101c3d:	66 89 50 04          	mov    %dx,0x4(%eax)
  101c41:	e8 cc 2e 00 00       	call   104b12 <cmos_datetime_to_str>
  101c46:	83 c4 10             	add    $0x10,%esp
  101c49:	83 ec 0c             	sub    $0xc,%esp
  101c4c:	68 e0 09 14 00       	push   $0x1409e0
  101c51:	e8 74 65 00 00       	call   1081ca <__redirect_printf__>
  101c56:	83 c4 10             	add    $0x10,%esp
  101c59:	83 ec 04             	sub    $0x4,%esp
  101c5c:	68 e0 0d 14 00       	push   $0x140de0
  101c61:	68 cc 11 14 00       	push   $0x1411cc
  101c66:	68 bf a1 10 00       	push   $0x10a1bf
  101c6b:	e8 42 6e 00 00       	call   108ab2 <printf>
  101c70:	83 c4 10             	add    $0x10,%esp
  101c73:	83 ec 0c             	sub    $0xc,%esp
  101c76:	6a 00                	push   $0x0
  101c78:	e8 4d 65 00 00       	call   1081ca <__redirect_printf__>
  101c7d:	83 c4 10             	add    $0x10,%esp
  101c80:	83 ec 08             	sub    $0x8,%esp
  101c83:	68 e0 09 14 00       	push   $0x1409e0
  101c88:	68 f8 03 00 00       	push   $0x3f8
  101c8d:	e8 78 05 00 00       	call   10220a <com_write>
  101c92:	83 c4 10             	add    $0x10,%esp
  101c95:	83 ec 04             	sub    $0x4,%esp
  101c98:	68 00 04 00 00       	push   $0x400
  101c9d:	6a 00                	push   $0x0
  101c9f:	68 e0 09 14 00       	push   $0x1409e0
  101ca4:	e8 82 71 00 00       	call   108e2b <memset>
  101ca9:	83 c4 10             	add    $0x10,%esp
  101cac:	83 ec 04             	sub    $0x4,%esp
  101caf:	68 ec 03 00 00       	push   $0x3ec
  101cb4:	6a 00                	push   $0x0
  101cb6:	68 e0 0d 14 00       	push   $0x140de0
  101cbb:	e8 6b 71 00 00       	call   108e2b <memset>
  101cc0:	83 c4 10             	add    $0x10,%esp
  101cc3:	83 ec 04             	sub    $0x4,%esp
  101cc6:	6a 14                	push   $0x14
  101cc8:	6a 00                	push   $0x0
  101cca:	68 cc 11 14 00       	push   $0x1411cc
  101ccf:	e8 57 71 00 00       	call   108e2b <memset>
  101cd4:	83 c4 10             	add    $0x10,%esp
  101cd7:	0f b6 05 90 08 11 00 	movzbl 0x110890,%eax
  101cde:	84 c0                	test   %al,%al
  101ce0:	0f 84 ea 00 00 00    	je     101dd0 <ps2_controller_init+0x499>
  101ce6:	83 ec 08             	sub    $0x8,%esp
  101ce9:	68 ab 00 00 00       	push   $0xab
  101cee:	6a 64                	push   $0x64
  101cf0:	e8 cb e9 ff ff       	call   1006c0 <outb>
  101cf5:	83 c4 10             	add    $0x10,%esp
  101cf8:	83 ec 0c             	sub    $0xc,%esp
  101cfb:	6a 60                	push   $0x60
  101cfd:	e8 a5 e9 ff ff       	call   1006a7 <inb>
  101d02:	83 c4 10             	add    $0x10,%esp
  101d05:	88 45 f2             	mov    %al,-0xe(%ebp)
  101d08:	83 ec 08             	sub    $0x8,%esp
  101d0b:	68 a9 00 00 00       	push   $0xa9
  101d10:	6a 64                	push   $0x64
  101d12:	e8 a9 e9 ff ff       	call   1006c0 <outb>
  101d17:	83 c4 10             	add    $0x10,%esp
  101d1a:	83 ec 0c             	sub    $0xc,%esp
  101d1d:	6a 60                	push   $0x60
  101d1f:	e8 83 e9 ff ff       	call   1006a7 <inb>
  101d24:	83 c4 10             	add    $0x10,%esp
  101d27:	88 45 f1             	mov    %al,-0xf(%ebp)
  101d2a:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  101d2e:	75 3d                	jne    101d6d <ps2_controller_init+0x436>
  101d30:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  101d34:	75 37                	jne    101d6d <ps2_controller_init+0x436>
  101d36:	83 ec 08             	sub    $0x8,%esp
  101d39:	68 ae 00 00 00       	push   $0xae
  101d3e:	6a 64                	push   $0x64
  101d40:	e8 7b e9 ff ff       	call   1006c0 <outb>
  101d45:	83 c4 10             	add    $0x10,%esp
  101d48:	83 ec 08             	sub    $0x8,%esp
  101d4b:	68 a8 00 00 00       	push   $0xa8
  101d50:	6a 64                	push   $0x64
  101d52:	e8 69 e9 ff ff       	call   1006c0 <outb>
  101d57:	83 c4 10             	add    $0x10,%esp
  101d5a:	c6 05 90 08 11 00 01 	movb   $0x1,0x110890
  101d61:	c6 05 91 08 11 00 01 	movb   $0x1,0x110891
  101d68:	e9 bf 01 00 00       	jmp    101f2c <ps2_controller_init+0x5f5>
  101d6d:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  101d71:	75 2b                	jne    101d9e <ps2_controller_init+0x467>
  101d73:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  101d77:	74 25                	je     101d9e <ps2_controller_init+0x467>
  101d79:	83 ec 08             	sub    $0x8,%esp
  101d7c:	68 ae 00 00 00       	push   $0xae
  101d81:	6a 64                	push   $0x64
  101d83:	e8 38 e9 ff ff       	call   1006c0 <outb>
  101d88:	83 c4 10             	add    $0x10,%esp
  101d8b:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  101d92:	c6 05 91 08 11 00 01 	movb   $0x1,0x110891
  101d99:	e9 8e 01 00 00       	jmp    101f2c <ps2_controller_init+0x5f5>
  101d9e:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  101da2:	74 19                	je     101dbd <ps2_controller_init+0x486>
  101da4:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  101da8:	75 13                	jne    101dbd <ps2_controller_init+0x486>
  101daa:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  101db1:	c6 05 91 08 11 00 00 	movb   $0x0,0x110891
  101db8:	e9 6f 01 00 00       	jmp    101f2c <ps2_controller_init+0x5f5>
  101dbd:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  101dc4:	c6 05 91 08 11 00 00 	movb   $0x0,0x110891
  101dcb:	e9 5c 01 00 00       	jmp    101f2c <ps2_controller_init+0x5f5>
  101dd0:	83 ec 08             	sub    $0x8,%esp
  101dd3:	68 ab 00 00 00       	push   $0xab
  101dd8:	6a 64                	push   $0x64
  101dda:	e8 e1 e8 ff ff       	call   1006c0 <outb>
  101ddf:	83 c4 10             	add    $0x10,%esp
  101de2:	83 ec 0c             	sub    $0xc,%esp
  101de5:	6a 60                	push   $0x60
  101de7:	e8 bb e8 ff ff       	call   1006a7 <inb>
  101dec:	83 c4 10             	add    $0x10,%esp
  101def:	88 45 f3             	mov    %al,-0xd(%ebp)
  101df2:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  101df6:	74 13                	je     101e0b <ps2_controller_init+0x4d4>
  101df8:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  101dff:	c6 05 91 08 11 00 00 	movb   $0x0,0x110891
  101e06:	e9 21 01 00 00       	jmp    101f2c <ps2_controller_init+0x5f5>
  101e0b:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  101e12:	c6 05 91 08 11 00 01 	movb   $0x1,0x110891
  101e19:	83 ec 08             	sub    $0x8,%esp
  101e1c:	68 ae 00 00 00       	push   $0xae
  101e21:	6a 64                	push   $0x64
  101e23:	e8 98 e8 ff ff       	call   1006c0 <outb>
  101e28:	83 c4 10             	add    $0x10,%esp
  101e2b:	e9 fc 00 00 00       	jmp    101f2c <ps2_controller_init+0x5f5>
  101e30:	c6 05 90 08 11 00 00 	movb   $0x0,0x110890
  101e37:	c6 05 91 08 11 00 00 	movb   $0x0,0x110891
  101e3e:	83 ec 0c             	sub    $0xc,%esp
  101e41:	68 e0 0d 14 00       	push   $0x140de0
  101e46:	e8 7f 63 00 00       	call   1081ca <__redirect_printf__>
  101e4b:	83 c4 10             	add    $0x10,%esp
  101e4e:	83 ec 0c             	sub    $0xc,%esp
  101e51:	68 18 a2 10 00       	push   $0x10a218
  101e56:	e8 57 6c 00 00       	call   108ab2 <printf>
  101e5b:	83 c4 10             	add    $0x10,%esp
  101e5e:	83 ec 0c             	sub    $0xc,%esp
  101e61:	6a 00                	push   $0x0
  101e63:	e8 62 63 00 00       	call   1081ca <__redirect_printf__>
  101e68:	83 c4 10             	add    $0x10,%esp
  101e6b:	83 ec 0c             	sub    $0xc,%esp
  101e6e:	8d 45 d9             	lea    -0x27(%ebp),%eax
  101e71:	50                   	push   %eax
  101e72:	e8 36 08 00 00       	call   1026ad <cmos_read_rtc>
  101e77:	83 c4 10             	add    $0x10,%esp
  101e7a:	83 ec 04             	sub    $0x4,%esp
  101e7d:	68 cc 11 14 00       	push   $0x1411cc
  101e82:	83 ec 08             	sub    $0x8,%esp
  101e85:	89 e0                	mov    %esp,%eax
  101e87:	8b 55 d9             	mov    -0x27(%ebp),%edx
  101e8a:	89 10                	mov    %edx,(%eax)
  101e8c:	0f b7 55 dd          	movzwl -0x23(%ebp),%edx
  101e90:	66 89 50 04          	mov    %dx,0x4(%eax)
  101e94:	e8 79 2c 00 00       	call   104b12 <cmos_datetime_to_str>
  101e99:	83 c4 10             	add    $0x10,%esp
  101e9c:	83 ec 0c             	sub    $0xc,%esp
  101e9f:	68 e0 09 14 00       	push   $0x1409e0
  101ea4:	e8 21 63 00 00       	call   1081ca <__redirect_printf__>
  101ea9:	83 c4 10             	add    $0x10,%esp
  101eac:	83 ec 04             	sub    $0x4,%esp
  101eaf:	68 e0 0d 14 00       	push   $0x140de0
  101eb4:	68 cc 11 14 00       	push   $0x1411cc
  101eb9:	68 bf a1 10 00       	push   $0x10a1bf
  101ebe:	e8 ef 6b 00 00       	call   108ab2 <printf>
  101ec3:	83 c4 10             	add    $0x10,%esp
  101ec6:	83 ec 0c             	sub    $0xc,%esp
  101ec9:	6a 00                	push   $0x0
  101ecb:	e8 fa 62 00 00       	call   1081ca <__redirect_printf__>
  101ed0:	83 c4 10             	add    $0x10,%esp
  101ed3:	83 ec 08             	sub    $0x8,%esp
  101ed6:	68 e0 09 14 00       	push   $0x1409e0
  101edb:	68 f8 03 00 00       	push   $0x3f8
  101ee0:	e8 25 03 00 00       	call   10220a <com_write>
  101ee5:	83 c4 10             	add    $0x10,%esp
  101ee8:	83 ec 04             	sub    $0x4,%esp
  101eeb:	68 00 04 00 00       	push   $0x400
  101ef0:	6a 00                	push   $0x0
  101ef2:	68 e0 09 14 00       	push   $0x1409e0
  101ef7:	e8 2f 6f 00 00       	call   108e2b <memset>
  101efc:	83 c4 10             	add    $0x10,%esp
  101eff:	83 ec 04             	sub    $0x4,%esp
  101f02:	68 ec 03 00 00       	push   $0x3ec
  101f07:	6a 00                	push   $0x0
  101f09:	68 e0 0d 14 00       	push   $0x140de0
  101f0e:	e8 18 6f 00 00       	call   108e2b <memset>
  101f13:	83 c4 10             	add    $0x10,%esp
  101f16:	83 ec 04             	sub    $0x4,%esp
  101f19:	6a 14                	push   $0x14
  101f1b:	6a 00                	push   $0x0
  101f1d:	68 cc 11 14 00       	push   $0x1411cc
  101f22:	e8 04 6f 00 00       	call   108e2b <memset>
  101f27:	83 c4 10             	add    $0x10,%esp
  101f2a:	eb 00                	jmp    101f2c <ps2_controller_init+0x5f5>
  101f2c:	90                   	nop
  101f2d:	c9                   	leave  
  101f2e:	c3                   	ret    

00101f2f <ps2_is_dual_channel>:
  101f2f:	55                   	push   %ebp
  101f30:	89 e5                	mov    %esp,%ebp
  101f32:	0f b6 05 90 08 11 00 	movzbl 0x110890,%eax
  101f39:	5d                   	pop    %ebp
  101f3a:	c3                   	ret    

00101f3b <ps2_is_present>:
  101f3b:	55                   	push   %ebp
  101f3c:	89 e5                	mov    %esp,%ebp
  101f3e:	0f b6 05 91 08 11 00 	movzbl 0x110891,%eax
  101f45:	5d                   	pop    %ebp
  101f46:	c3                   	ret    

00101f47 <COM_SET_BAUD>:
  101f47:	55                   	push   %ebp
  101f48:	89 e5                	mov    %esp,%ebp
  101f4a:	83 ec 10             	sub    $0x10,%esp
  101f4d:	b8 00 c2 01 00       	mov    $0x1c200,%eax
  101f52:	99                   	cltd   
  101f53:	f7 7d 08             	idivl  0x8(%ebp)
  101f56:	88 45 ff             	mov    %al,-0x1(%ebp)
  101f59:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  101f5d:	c9                   	leave  
  101f5e:	c3                   	ret    

00101f5f <COM_SET_BPS>:
  101f5f:	55                   	push   %ebp
  101f60:	89 e5                	mov    %esp,%ebp
  101f62:	83 ec 1c             	sub    $0x1c,%esp
  101f65:	8b 4d 08             	mov    0x8(%ebp),%ecx
  101f68:	8b 55 0c             	mov    0xc(%ebp),%edx
  101f6b:	8b 45 10             	mov    0x10(%ebp),%eax
  101f6e:	88 4d ec             	mov    %cl,-0x14(%ebp)
  101f71:	88 55 e8             	mov    %dl,-0x18(%ebp)
  101f74:	88 45 e4             	mov    %al,-0x1c(%ebp)
  101f77:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
  101f7b:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  101f7f:	83 e0 03             	and    $0x3,%eax
  101f82:	89 c2                	mov    %eax,%edx
  101f84:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  101f88:	09 d0                	or     %edx,%eax
  101f8a:	88 45 ff             	mov    %al,-0x1(%ebp)
  101f8d:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  101f91:	c1 e0 02             	shl    $0x2,%eax
  101f94:	83 e0 04             	and    $0x4,%eax
  101f97:	89 c2                	mov    %eax,%edx
  101f99:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  101f9d:	09 d0                	or     %edx,%eax
  101f9f:	88 45 ff             	mov    %al,-0x1(%ebp)
  101fa2:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  101fa6:	c1 e0 03             	shl    $0x3,%eax
  101fa9:	83 e0 38             	and    $0x38,%eax
  101fac:	89 c2                	mov    %eax,%edx
  101fae:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  101fb2:	09 d0                	or     %edx,%eax
  101fb4:	88 45 ff             	mov    %al,-0x1(%ebp)
  101fb7:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  101fbb:	c9                   	leave  
  101fbc:	c3                   	ret    

00101fbd <com_init>:
  101fbd:	55                   	push   %ebp
  101fbe:	89 e5                	mov    %esp,%ebp
  101fc0:	83 ec 28             	sub    $0x28,%esp
  101fc3:	8b 4d 10             	mov    0x10(%ebp),%ecx
  101fc6:	8b 55 14             	mov    0x14(%ebp),%edx
  101fc9:	8b 45 18             	mov    0x18(%ebp),%eax
  101fcc:	88 4d e4             	mov    %cl,-0x1c(%ebp)
  101fcf:	88 55 e0             	mov    %dl,-0x20(%ebp)
  101fd2:	88 45 dc             	mov    %al,-0x24(%ebp)
  101fd5:	c6 05 d8 08 14 00 00 	movb   $0x0,0x1408d8
  101fdc:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  101fe3:	75 09                	jne    101fee <com_init+0x31>
  101fe5:	c6 05 a0 08 11 00 00 	movb   $0x0,0x1108a0
  101fec:	eb 26                	jmp    102014 <com_init+0x57>
  101fee:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  101ff5:	75 09                	jne    102000 <com_init+0x43>
  101ff7:	c6 05 a1 08 11 00 00 	movb   $0x0,0x1108a1
  101ffe:	eb 14                	jmp    102014 <com_init+0x57>
  102000:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102007:	0f 85 97 01 00 00    	jne    1021a4 <com_init+0x1e7>
  10200d:	c6 05 a2 08 11 00 00 	movb   $0x0,0x1108a2
  102014:	8b 45 08             	mov    0x8(%ebp),%eax
  102017:	83 c0 01             	add    $0x1,%eax
  10201a:	83 ec 08             	sub    $0x8,%esp
  10201d:	6a 00                	push   $0x0
  10201f:	50                   	push   %eax
  102020:	e8 9b e6 ff ff       	call   1006c0 <outb>
  102025:	83 c4 10             	add    $0x10,%esp
  102028:	8b 45 08             	mov    0x8(%ebp),%eax
  10202b:	83 c0 03             	add    $0x3,%eax
  10202e:	83 ec 08             	sub    $0x8,%esp
  102031:	68 80 00 00 00       	push   $0x80
  102036:	50                   	push   %eax
  102037:	e8 84 e6 ff ff       	call   1006c0 <outb>
  10203c:	83 c4 10             	add    $0x10,%esp
  10203f:	83 ec 0c             	sub    $0xc,%esp
  102042:	ff 75 0c             	push   0xc(%ebp)
  102045:	e8 fd fe ff ff       	call   101f47 <COM_SET_BAUD>
  10204a:	83 c4 10             	add    $0x10,%esp
  10204d:	0f b6 c0             	movzbl %al,%eax
  102050:	83 ec 08             	sub    $0x8,%esp
  102053:	50                   	push   %eax
  102054:	ff 75 08             	push   0x8(%ebp)
  102057:	e8 64 e6 ff ff       	call   1006c0 <outb>
  10205c:	83 c4 10             	add    $0x10,%esp
  10205f:	8b 45 08             	mov    0x8(%ebp),%eax
  102062:	83 c0 01             	add    $0x1,%eax
  102065:	83 ec 08             	sub    $0x8,%esp
  102068:	6a 00                	push   $0x0
  10206a:	50                   	push   %eax
  10206b:	e8 50 e6 ff ff       	call   1006c0 <outb>
  102070:	83 c4 10             	add    $0x10,%esp
  102073:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
  102077:	0f b6 55 e0          	movzbl -0x20(%ebp),%edx
  10207b:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  10207f:	83 ec 04             	sub    $0x4,%esp
  102082:	51                   	push   %ecx
  102083:	52                   	push   %edx
  102084:	50                   	push   %eax
  102085:	e8 d5 fe ff ff       	call   101f5f <COM_SET_BPS>
  10208a:	83 c4 10             	add    $0x10,%esp
  10208d:	0f b6 c0             	movzbl %al,%eax
  102090:	8b 55 08             	mov    0x8(%ebp),%edx
  102093:	83 c2 03             	add    $0x3,%edx
  102096:	83 ec 08             	sub    $0x8,%esp
  102099:	50                   	push   %eax
  10209a:	52                   	push   %edx
  10209b:	e8 20 e6 ff ff       	call   1006c0 <outb>
  1020a0:	83 c4 10             	add    $0x10,%esp
  1020a3:	8b 45 08             	mov    0x8(%ebp),%eax
  1020a6:	83 c0 02             	add    $0x2,%eax
  1020a9:	83 ec 08             	sub    $0x8,%esp
  1020ac:	68 c7 00 00 00       	push   $0xc7
  1020b1:	50                   	push   %eax
  1020b2:	e8 09 e6 ff ff       	call   1006c0 <outb>
  1020b7:	83 c4 10             	add    $0x10,%esp
  1020ba:	8b 45 08             	mov    0x8(%ebp),%eax
  1020bd:	83 c0 04             	add    $0x4,%eax
  1020c0:	83 ec 08             	sub    $0x8,%esp
  1020c3:	6a 0b                	push   $0xb
  1020c5:	50                   	push   %eax
  1020c6:	e8 f5 e5 ff ff       	call   1006c0 <outb>
  1020cb:	83 c4 10             	add    $0x10,%esp
  1020ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1020d1:	83 c0 01             	add    $0x1,%eax
  1020d4:	83 ec 08             	sub    $0x8,%esp
  1020d7:	6a 01                	push   $0x1
  1020d9:	50                   	push   %eax
  1020da:	e8 e1 e5 ff ff       	call   1006c0 <outb>
  1020df:	83 c4 10             	add    $0x10,%esp
  1020e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1020e5:	83 c0 04             	add    $0x4,%eax
  1020e8:	83 ec 08             	sub    $0x8,%esp
  1020eb:	6a 1e                	push   $0x1e
  1020ed:	50                   	push   %eax
  1020ee:	e8 cd e5 ff ff       	call   1006c0 <outb>
  1020f3:	83 c4 10             	add    $0x10,%esp
  1020f6:	83 ec 08             	sub    $0x8,%esp
  1020f9:	68 ae 00 00 00       	push   $0xae
  1020fe:	ff 75 08             	push   0x8(%ebp)
  102101:	e8 ba e5 ff ff       	call   1006c0 <outb>
  102106:	83 c4 10             	add    $0x10,%esp
  102109:	83 ec 0c             	sub    $0xc,%esp
  10210c:	ff 75 08             	push   0x8(%ebp)
  10210f:	e8 93 e5 ff ff       	call   1006a7 <inb>
  102114:	83 c4 10             	add    $0x10,%esp
  102117:	88 45 f7             	mov    %al,-0x9(%ebp)
  10211a:	80 7d f7 ae          	cmpb   $0xae,-0x9(%ebp)
  10211e:	0f 85 81 00 00 00    	jne    1021a5 <com_init+0x1e8>
  102124:	8b 45 08             	mov    0x8(%ebp),%eax
  102127:	83 c0 04             	add    $0x4,%eax
  10212a:	83 ec 08             	sub    $0x8,%esp
  10212d:	6a 0f                	push   $0xf
  10212f:	50                   	push   %eax
  102130:	e8 8b e5 ff ff       	call   1006c0 <outb>
  102135:	83 c4 10             	add    $0x10,%esp
  102138:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  10213f:	75 1b                	jne    10215c <com_init+0x19f>
  102141:	c6 05 a0 08 11 00 01 	movb   $0x1,0x1108a0
  102148:	83 ec 08             	sub    $0x8,%esp
  10214b:	68 ed 24 10 00       	push   $0x1024ed
  102150:	6a 24                	push   $0x24
  102152:	e8 f7 ef ff ff       	call   10114e <isr_register>
  102157:	83 c4 10             	add    $0x10,%esp
  10215a:	eb 49                	jmp    1021a5 <com_init+0x1e8>
  10215c:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102163:	75 1b                	jne    102180 <com_init+0x1c3>
  102165:	c6 05 a1 08 11 00 01 	movb   $0x1,0x1108a1
  10216c:	83 ec 08             	sub    $0x8,%esp
  10216f:	68 0f 25 10 00       	push   $0x10250f
  102174:	6a 23                	push   $0x23
  102176:	e8 d3 ef ff ff       	call   10114e <isr_register>
  10217b:	83 c4 10             	add    $0x10,%esp
  10217e:	eb 25                	jmp    1021a5 <com_init+0x1e8>
  102180:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102187:	75 1c                	jne    1021a5 <com_init+0x1e8>
  102189:	c6 05 a2 08 11 00 01 	movb   $0x1,0x1108a2
  102190:	83 ec 08             	sub    $0x8,%esp
  102193:	68 31 25 10 00       	push   $0x102531
  102198:	6a 24                	push   $0x24
  10219a:	e8 af ef ff ff       	call   10114e <isr_register>
  10219f:	83 c4 10             	add    $0x10,%esp
  1021a2:	eb 01                	jmp    1021a5 <com_init+0x1e8>
  1021a4:	90                   	nop
  1021a5:	c9                   	leave  
  1021a6:	c3                   	ret    

001021a7 <com_set_int_byte>:
  1021a7:	55                   	push   %ebp
  1021a8:	89 e5                	mov    %esp,%ebp
  1021aa:	83 ec 04             	sub    $0x4,%esp
  1021ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1021b0:	88 45 fc             	mov    %al,-0x4(%ebp)
  1021b3:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1021b7:	a2 d8 08 14 00       	mov    %al,0x1408d8
  1021bc:	90                   	nop
  1021bd:	c9                   	leave  
  1021be:	c3                   	ret    

001021bf <com_is_initialized>:
  1021bf:	55                   	push   %ebp
  1021c0:	89 e5                	mov    %esp,%ebp
  1021c2:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1021c9:	74 1d                	je     1021e8 <com_is_initialized+0x29>
  1021cb:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1021d2:	7f 2f                	jg     102203 <com_is_initialized+0x44>
  1021d4:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1021db:	74 14                	je     1021f1 <com_is_initialized+0x32>
  1021dd:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  1021e4:	74 14                	je     1021fa <com_is_initialized+0x3b>
  1021e6:	eb 1b                	jmp    102203 <com_is_initialized+0x44>
  1021e8:	0f b6 05 a0 08 11 00 	movzbl 0x1108a0,%eax
  1021ef:	eb 17                	jmp    102208 <com_is_initialized+0x49>
  1021f1:	0f b6 05 a1 08 11 00 	movzbl 0x1108a1,%eax
  1021f8:	eb 0e                	jmp    102208 <com_is_initialized+0x49>
  1021fa:	0f b6 05 a2 08 11 00 	movzbl 0x1108a2,%eax
  102201:	eb 05                	jmp    102208 <com_is_initialized+0x49>
  102203:	b8 00 00 00 00       	mov    $0x0,%eax
  102208:	5d                   	pop    %ebp
  102209:	c3                   	ret    

0010220a <com_write>:
  10220a:	55                   	push   %ebp
  10220b:	89 e5                	mov    %esp,%ebp
  10220d:	83 ec 28             	sub    $0x28,%esp
  102210:	83 ec 0c             	sub    $0xc,%esp
  102213:	ff 75 0c             	push   0xc(%ebp)
  102216:	e8 43 6c 00 00       	call   108e5e <strlen>
  10221b:	83 c4 10             	add    $0x10,%esp
  10221e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102221:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102228:	74 27                	je     102251 <com_write+0x47>
  10222a:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102231:	74 17                	je     10224a <com_write+0x40>
  102233:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  10223a:	75 07                	jne    102243 <com_write+0x39>
  10223c:	b8 c0 08 12 00       	mov    $0x1208c0,%eax
  102241:	eb 13                	jmp    102256 <com_write+0x4c>
  102243:	b8 00 00 00 00       	mov    $0x0,%eax
  102248:	eb 0c                	jmp    102256 <com_write+0x4c>
  10224a:	b8 c0 88 11 00       	mov    $0x1188c0,%eax
  10224f:	eb 05                	jmp    102256 <com_write+0x4c>
  102251:	b8 c0 08 11 00       	mov    $0x1108c0,%eax
  102256:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102259:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102260:	74 27                	je     102289 <com_write+0x7f>
  102262:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102269:	74 17                	je     102282 <com_write+0x78>
  10226b:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102272:	75 07                	jne    10227b <com_write+0x71>
  102274:	b8 c8 08 14 00       	mov    $0x1408c8,%eax
  102279:	eb 13                	jmp    10228e <com_write+0x84>
  10227b:	b8 00 00 00 00       	mov    $0x0,%eax
  102280:	eb 0c                	jmp    10228e <com_write+0x84>
  102282:	b8 c4 08 14 00       	mov    $0x1408c4,%eax
  102287:	eb 05                	jmp    10228e <com_write+0x84>
  102289:	b8 c0 08 14 00       	mov    $0x1408c0,%eax
  10228e:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102291:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  102295:	74 06                	je     10229d <com_write+0x93>
  102297:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  10229b:	75 07                	jne    1022a4 <com_write+0x9a>
  10229d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1022a2:	eb 5c                	jmp    102300 <com_write+0xf6>
  1022a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1022ab:	eb 48                	jmp    1022f5 <com_write+0xeb>
  1022ad:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022b0:	8b 00                	mov    (%eax),%eax
  1022b2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1022b5:	81 7d e4 00 80 00 00 	cmpl   $0x8000,-0x1c(%ebp)
  1022bc:	75 0e                	jne    1022cc <com_write+0xc2>
  1022be:	c6 05 24 12 14 00 4b 	movb   $0x4b,0x141224
  1022c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1022ca:	eb 34                	jmp    102300 <com_write+0xf6>
  1022cc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1022cf:	8b 45 0c             	mov    0xc(%ebp),%eax
  1022d2:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  1022d5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022d8:	8b 10                	mov    (%eax),%edx
  1022da:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1022dd:	01 c2                	add    %eax,%edx
  1022df:	0f b6 01             	movzbl (%ecx),%eax
  1022e2:	88 02                	mov    %al,(%edx)
  1022e4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1022e7:	83 c0 01             	add    $0x1,%eax
  1022ea:	89 c2                	mov    %eax,%edx
  1022ec:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022ef:	89 10                	mov    %edx,(%eax)
  1022f1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1022f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1022f8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1022fb:	7c b0                	jl     1022ad <com_write+0xa3>
  1022fd:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102300:	c9                   	leave  
  102301:	c3                   	ret    

00102302 <com_read>:
  102302:	55                   	push   %ebp
  102303:	89 e5                	mov    %esp,%ebp
  102305:	53                   	push   %ebx
  102306:	83 ec 14             	sub    $0x14,%esp
  102309:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102310:	74 27                	je     102339 <com_read+0x37>
  102312:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102319:	74 17                	je     102332 <com_read+0x30>
  10231b:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102322:	75 07                	jne    10232b <com_read+0x29>
  102324:	b8 c0 88 13 00       	mov    $0x1388c0,%eax
  102329:	eb 13                	jmp    10233e <com_read+0x3c>
  10232b:	b8 00 00 00 00       	mov    $0x0,%eax
  102330:	eb 0c                	jmp    10233e <com_read+0x3c>
  102332:	b8 c0 08 13 00       	mov    $0x1308c0,%eax
  102337:	eb 05                	jmp    10233e <com_read+0x3c>
  102339:	b8 c0 88 12 00       	mov    $0x1288c0,%eax
  10233e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102341:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102348:	74 27                	je     102371 <com_read+0x6f>
  10234a:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102351:	74 17                	je     10236a <com_read+0x68>
  102353:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  10235a:	75 07                	jne    102363 <com_read+0x61>
  10235c:	b8 d4 08 14 00       	mov    $0x1408d4,%eax
  102361:	eb 13                	jmp    102376 <com_read+0x74>
  102363:	b8 00 00 00 00       	mov    $0x0,%eax
  102368:	eb 0c                	jmp    102376 <com_read+0x74>
  10236a:	b8 d0 08 14 00       	mov    $0x1408d0,%eax
  10236f:	eb 05                	jmp    102376 <com_read+0x74>
  102371:	b8 cc 08 14 00       	mov    $0x1408cc,%eax
  102376:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102379:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  10237d:	74 06                	je     102385 <com_read+0x83>
  10237f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  102383:	75 0a                	jne    10238f <com_read+0x8d>
  102385:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10238a:	e9 89 00 00 00       	jmp    102418 <com_read+0x116>
  10238f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102392:	8b 10                	mov    (%eax),%edx
  102394:	8b 45 10             	mov    0x10(%ebp),%eax
  102397:	39 c2                	cmp    %eax,%edx
  102399:	0f 46 c2             	cmovbe %edx,%eax
  10239c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10239f:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023a2:	83 ec 04             	sub    $0x4,%esp
  1023a5:	50                   	push   %eax
  1023a6:	ff 75 f0             	push   -0x10(%ebp)
  1023a9:	ff 75 0c             	push   0xc(%ebp)
  1023ac:	e8 39 6a 00 00       	call   108dea <memcpy>
  1023b1:	83 c4 10             	add    $0x10,%esp
  1023b4:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023b7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1023ba:	eb 20                	jmp    1023dc <com_read+0xda>
  1023bc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1023bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1023c2:	01 d0                	add    %edx,%eax
  1023c4:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1023c7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1023ca:	89 d3                	mov    %edx,%ebx
  1023cc:	29 cb                	sub    %ecx,%ebx
  1023ce:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1023d1:	01 da                	add    %ebx,%edx
  1023d3:	0f b6 00             	movzbl (%eax),%eax
  1023d6:	88 02                	mov    %al,(%edx)
  1023d8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1023dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1023df:	8b 00                	mov    (%eax),%eax
  1023e1:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1023e4:	72 d6                	jb     1023bc <com_read+0xba>
  1023e6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1023e9:	8b 00                	mov    (%eax),%eax
  1023eb:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1023ee:	29 c8                	sub    %ecx,%eax
  1023f0:	89 c2                	mov    %eax,%edx
  1023f2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1023f5:	89 10                	mov    %edx,(%eax)
  1023f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1023fa:	8b 00                	mov    (%eax),%eax
  1023fc:	85 c0                	test   %eax,%eax
  1023fe:	75 15                	jne    102415 <com_read+0x113>
  102400:	83 ec 04             	sub    $0x4,%esp
  102403:	68 00 80 00 00       	push   $0x8000
  102408:	6a 00                	push   $0x0
  10240a:	ff 75 f0             	push   -0x10(%ebp)
  10240d:	e8 19 6a 00 00       	call   108e2b <memset>
  102412:	83 c4 10             	add    $0x10,%esp
  102415:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102418:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10241b:	c9                   	leave  
  10241c:	c3                   	ret    

0010241d <com_irq_handler>:
  10241d:	55                   	push   %ebp
  10241e:	89 e5                	mov    %esp,%ebp
  102420:	83 ec 18             	sub    $0x18,%esp
  102423:	8b 45 10             	mov    0x10(%ebp),%eax
  102426:	8b 00                	mov    (%eax),%eax
  102428:	3d 00 80 00 00       	cmp    $0x8000,%eax
  10242d:	75 0c                	jne    10243b <com_irq_handler+0x1e>
  10242f:	c6 05 24 12 14 00 4b 	movb   $0x4b,0x141224
  102436:	e9 a0 00 00 00       	jmp    1024db <com_irq_handler+0xbe>
  10243b:	83 ec 0c             	sub    $0xc,%esp
  10243e:	ff 75 08             	push   0x8(%ebp)
  102441:	e8 61 e2 ff ff       	call   1006a7 <inb>
  102446:	83 c4 10             	add    $0x10,%esp
  102449:	88 45 f7             	mov    %al,-0x9(%ebp)
  10244c:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  102450:	0f 84 85 00 00 00    	je     1024db <com_irq_handler+0xbe>
  102456:	0f b6 05 d8 08 14 00 	movzbl 0x1408d8,%eax
  10245d:	84 c0                	test   %al,%al
  10245f:	74 51                	je     1024b2 <com_irq_handler+0x95>
  102461:	0f b6 05 d8 08 14 00 	movzbl 0x1408d8,%eax
  102468:	38 45 f7             	cmp    %al,-0x9(%ebp)
  10246b:	75 45                	jne    1024b2 <com_irq_handler+0x95>
  10246d:	8b 45 10             	mov    0x10(%ebp),%eax
  102470:	8b 00                	mov    (%eax),%eax
  102472:	85 c0                	test   %eax,%eax
  102474:	74 3c                	je     1024b2 <com_irq_handler+0x95>
  102476:	8b 45 10             	mov    0x10(%ebp),%eax
  102479:	8b 00                	mov    (%eax),%eax
  10247b:	83 ec 0c             	sub    $0xc,%esp
  10247e:	50                   	push   %eax
  10247f:	e8 a4 36 00 00       	call   105b28 <kmalloc>
  102484:	83 c4 10             	add    $0x10,%esp
  102487:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10248a:	8b 45 10             	mov    0x10(%ebp),%eax
  10248d:	8b 10                	mov    (%eax),%edx
  10248f:	8b 45 14             	mov    0x14(%ebp),%eax
  102492:	83 ec 04             	sub    $0x4,%esp
  102495:	52                   	push   %edx
  102496:	ff 75 f0             	push   -0x10(%ebp)
  102499:	50                   	push   %eax
  10249a:	e8 07 5d 00 00       	call   1081a6 <read>
  10249f:	83 c4 10             	add    $0x10,%esp
  1024a2:	83 ec 0c             	sub    $0xc,%esp
  1024a5:	ff 75 f0             	push   -0x10(%ebp)
  1024a8:	e8 1b 37 00 00       	call   105bc8 <kfree>
  1024ad:	83 c4 10             	add    $0x10,%esp
  1024b0:	eb 29                	jmp    1024db <com_irq_handler+0xbe>
  1024b2:	0f b6 05 d8 08 14 00 	movzbl 0x1408d8,%eax
  1024b9:	38 45 f7             	cmp    %al,-0x9(%ebp)
  1024bc:	74 1d                	je     1024db <com_irq_handler+0xbe>
  1024be:	8b 45 10             	mov    0x10(%ebp),%eax
  1024c1:	8b 10                	mov    (%eax),%edx
  1024c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1024c6:	01 c2                	add    %eax,%edx
  1024c8:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  1024cc:	88 02                	mov    %al,(%edx)
  1024ce:	8b 45 10             	mov    0x10(%ebp),%eax
  1024d1:	8b 00                	mov    (%eax),%eax
  1024d3:	8d 50 01             	lea    0x1(%eax),%edx
  1024d6:	8b 45 10             	mov    0x10(%ebp),%eax
  1024d9:	89 10                	mov    %edx,(%eax)
  1024db:	83 ec 08             	sub    $0x8,%esp
  1024de:	6a 20                	push   $0x20
  1024e0:	6a 20                	push   $0x20
  1024e2:	e8 d9 e1 ff ff       	call   1006c0 <outb>
  1024e7:	83 c4 10             	add    $0x10,%esp
  1024ea:	90                   	nop
  1024eb:	c9                   	leave  
  1024ec:	c3                   	ret    

001024ed <com_1_irq_handler>:
  1024ed:	55                   	push   %ebp
  1024ee:	89 e5                	mov    %esp,%ebp
  1024f0:	83 ec 08             	sub    $0x8,%esp
  1024f3:	6a 04                	push   $0x4
  1024f5:	68 cc 08 14 00       	push   $0x1408cc
  1024fa:	68 c0 88 12 00       	push   $0x1288c0
  1024ff:	68 f8 03 00 00       	push   $0x3f8
  102504:	e8 14 ff ff ff       	call   10241d <com_irq_handler>
  102509:	83 c4 10             	add    $0x10,%esp
  10250c:	90                   	nop
  10250d:	c9                   	leave  
  10250e:	c3                   	ret    

0010250f <com_2_irq_handler>:
  10250f:	55                   	push   %ebp
  102510:	89 e5                	mov    %esp,%ebp
  102512:	83 ec 08             	sub    $0x8,%esp
  102515:	6a 05                	push   $0x5
  102517:	68 d0 08 14 00       	push   $0x1408d0
  10251c:	68 c0 08 13 00       	push   $0x1308c0
  102521:	68 f8 02 00 00       	push   $0x2f8
  102526:	e8 f2 fe ff ff       	call   10241d <com_irq_handler>
  10252b:	83 c4 10             	add    $0x10,%esp
  10252e:	90                   	nop
  10252f:	c9                   	leave  
  102530:	c3                   	ret    

00102531 <com_3_irq_handler>:
  102531:	55                   	push   %ebp
  102532:	89 e5                	mov    %esp,%ebp
  102534:	83 ec 08             	sub    $0x8,%esp
  102537:	6a 06                	push   $0x6
  102539:	68 d4 08 14 00       	push   $0x1408d4
  10253e:	68 c0 88 13 00       	push   $0x1388c0
  102543:	68 e8 03 00 00       	push   $0x3e8
  102548:	e8 d0 fe ff ff       	call   10241d <com_irq_handler>
  10254d:	83 c4 10             	add    $0x10,%esp
  102550:	90                   	nop
  102551:	c9                   	leave  
  102552:	c3                   	ret    

00102553 <com_flush>:
  102553:	55                   	push   %ebp
  102554:	89 e5                	mov    %esp,%ebp
  102556:	83 ec 28             	sub    $0x28,%esp
  102559:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102560:	74 27                	je     102589 <com_flush+0x36>
  102562:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102569:	74 17                	je     102582 <com_flush+0x2f>
  10256b:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102572:	75 07                	jne    10257b <com_flush+0x28>
  102574:	b8 c0 08 12 00       	mov    $0x1208c0,%eax
  102579:	eb 13                	jmp    10258e <com_flush+0x3b>
  10257b:	b8 00 00 00 00       	mov    $0x0,%eax
  102580:	eb 0c                	jmp    10258e <com_flush+0x3b>
  102582:	b8 c0 88 11 00       	mov    $0x1188c0,%eax
  102587:	eb 05                	jmp    10258e <com_flush+0x3b>
  102589:	b8 c0 08 11 00       	mov    $0x1108c0,%eax
  10258e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102591:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102598:	74 27                	je     1025c1 <com_flush+0x6e>
  10259a:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1025a1:	74 17                	je     1025ba <com_flush+0x67>
  1025a3:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  1025aa:	75 07                	jne    1025b3 <com_flush+0x60>
  1025ac:	b8 c8 08 14 00       	mov    $0x1408c8,%eax
  1025b1:	eb 13                	jmp    1025c6 <com_flush+0x73>
  1025b3:	b8 00 00 00 00       	mov    $0x0,%eax
  1025b8:	eb 0c                	jmp    1025c6 <com_flush+0x73>
  1025ba:	b8 c4 08 14 00       	mov    $0x1408c4,%eax
  1025bf:	eb 05                	jmp    1025c6 <com_flush+0x73>
  1025c1:	b8 c0 08 14 00       	mov    $0x1408c0,%eax
  1025c6:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1025c9:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  1025cd:	74 06                	je     1025d5 <com_flush+0x82>
  1025cf:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  1025d3:	75 0a                	jne    1025df <com_flush+0x8c>
  1025d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1025da:	e9 a7 00 00 00       	jmp    102686 <com_flush+0x133>
  1025df:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1025e2:	8b 00                	mov    (%eax),%eax
  1025e4:	ba 10 00 00 00       	mov    $0x10,%edx
  1025e9:	39 d0                	cmp    %edx,%eax
  1025eb:	0f 47 c2             	cmova  %edx,%eax
  1025ee:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1025f1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1025f8:	eb 21                	jmp    10261b <com_flush+0xc8>
  1025fa:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1025fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102600:	01 d0                	add    %edx,%eax
  102602:	0f b6 00             	movzbl (%eax),%eax
  102605:	0f b6 c0             	movzbl %al,%eax
  102608:	83 ec 08             	sub    $0x8,%esp
  10260b:	50                   	push   %eax
  10260c:	ff 75 08             	push   0x8(%ebp)
  10260f:	e8 ac e0 ff ff       	call   1006c0 <outb>
  102614:	83 c4 10             	add    $0x10,%esp
  102617:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10261b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10261e:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
  102621:	72 d7                	jb     1025fa <com_flush+0xa7>
  102623:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102626:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102629:	eb 1f                	jmp    10264a <com_flush+0xf7>
  10262b:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10262e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102631:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  102634:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102637:	2b 45 e4             	sub    -0x1c(%ebp),%eax
  10263a:	89 c2                	mov    %eax,%edx
  10263c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10263f:	01 c2                	add    %eax,%edx
  102641:	0f b6 01             	movzbl (%ecx),%eax
  102644:	88 02                	mov    %al,(%edx)
  102646:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10264a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10264d:	8b 00                	mov    (%eax),%eax
  10264f:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  102652:	72 d7                	jb     10262b <com_flush+0xd8>
  102654:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102657:	8b 00                	mov    (%eax),%eax
  102659:	2b 45 e4             	sub    -0x1c(%ebp),%eax
  10265c:	89 c2                	mov    %eax,%edx
  10265e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102661:	89 10                	mov    %edx,(%eax)
  102663:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102666:	8b 00                	mov    (%eax),%eax
  102668:	85 c0                	test   %eax,%eax
  10266a:	75 15                	jne    102681 <com_flush+0x12e>
  10266c:	83 ec 04             	sub    $0x4,%esp
  10266f:	68 00 80 00 00       	push   $0x8000
  102674:	6a 00                	push   $0x0
  102676:	ff 75 ec             	push   -0x14(%ebp)
  102679:	e8 ad 67 00 00       	call   108e2b <memset>
  10267e:	83 c4 10             	add    $0x10,%esp
  102681:	b8 10 00 00 00       	mov    $0x10,%eax
  102686:	c9                   	leave  
  102687:	c3                   	ret    

00102688 <cmos_read_rtc_reg>:
  102688:	55                   	push   %ebp
  102689:	89 e5                	mov    %esp,%ebp
  10268b:	83 ec 08             	sub    $0x8,%esp
  10268e:	83 ec 08             	sub    $0x8,%esp
  102691:	ff 75 08             	push   0x8(%ebp)
  102694:	6a 70                	push   $0x70
  102696:	e8 25 e0 ff ff       	call   1006c0 <outb>
  10269b:	83 c4 10             	add    $0x10,%esp
  10269e:	83 ec 0c             	sub    $0xc,%esp
  1026a1:	6a 71                	push   $0x71
  1026a3:	e8 ff df ff ff       	call   1006a7 <inb>
  1026a8:	83 c4 10             	add    $0x10,%esp
  1026ab:	c9                   	leave  
  1026ac:	c3                   	ret    

001026ad <cmos_read_rtc>:
  1026ad:	55                   	push   %ebp
  1026ae:	89 e5                	mov    %esp,%ebp
  1026b0:	83 ec 18             	sub    $0x18,%esp
  1026b3:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
  1026b7:	eb 22                	jmp    1026db <cmos_read_rtc+0x2e>
  1026b9:	83 ec 08             	sub    $0x8,%esp
  1026bc:	6a 0a                	push   $0xa
  1026be:	6a 70                	push   $0x70
  1026c0:	e8 fb df ff ff       	call   1006c0 <outb>
  1026c5:	83 c4 10             	add    $0x10,%esp
  1026c8:	83 ec 0c             	sub    $0xc,%esp
  1026cb:	6a 71                	push   $0x71
  1026cd:	e8 d5 df ff ff       	call   1006a7 <inb>
  1026d2:	83 c4 10             	add    $0x10,%esp
  1026d5:	83 e0 80             	and    $0xffffff80,%eax
  1026d8:	88 45 f7             	mov    %al,-0x9(%ebp)
  1026db:	80 7d f7 01          	cmpb   $0x1,-0x9(%ebp)
  1026df:	74 d8                	je     1026b9 <cmos_read_rtc+0xc>
  1026e1:	83 ec 0c             	sub    $0xc,%esp
  1026e4:	6a 00                	push   $0x0
  1026e6:	e8 9d ff ff ff       	call   102688 <cmos_read_rtc_reg>
  1026eb:	83 c4 10             	add    $0x10,%esp
  1026ee:	a2 dc 08 14 00       	mov    %al,0x1408dc
  1026f3:	83 ec 0c             	sub    $0xc,%esp
  1026f6:	6a 02                	push   $0x2
  1026f8:	e8 8b ff ff ff       	call   102688 <cmos_read_rtc_reg>
  1026fd:	83 c4 10             	add    $0x10,%esp
  102700:	a2 dd 08 14 00       	mov    %al,0x1408dd
  102705:	83 ec 0c             	sub    $0xc,%esp
  102708:	6a 04                	push   $0x4
  10270a:	e8 79 ff ff ff       	call   102688 <cmos_read_rtc_reg>
  10270f:	83 c4 10             	add    $0x10,%esp
  102712:	a2 de 08 14 00       	mov    %al,0x1408de
  102717:	83 ec 0c             	sub    $0xc,%esp
  10271a:	6a 07                	push   $0x7
  10271c:	e8 67 ff ff ff       	call   102688 <cmos_read_rtc_reg>
  102721:	83 c4 10             	add    $0x10,%esp
  102724:	a2 df 08 14 00       	mov    %al,0x1408df
  102729:	83 ec 0c             	sub    $0xc,%esp
  10272c:	6a 08                	push   $0x8
  10272e:	e8 55 ff ff ff       	call   102688 <cmos_read_rtc_reg>
  102733:	83 c4 10             	add    $0x10,%esp
  102736:	a2 e0 08 14 00       	mov    %al,0x1408e0
  10273b:	83 ec 0c             	sub    $0xc,%esp
  10273e:	6a 09                	push   $0x9
  102740:	e8 43 ff ff ff       	call   102688 <cmos_read_rtc_reg>
  102745:	83 c4 10             	add    $0x10,%esp
  102748:	0f b6 c0             	movzbl %al,%eax
  10274b:	a3 e4 08 14 00       	mov    %eax,0x1408e4
  102750:	0f b6 05 dc 08 14 00 	movzbl 0x1408dc,%eax
  102757:	88 45 f6             	mov    %al,-0xa(%ebp)
  10275a:	0f b6 05 dd 08 14 00 	movzbl 0x1408dd,%eax
  102761:	88 45 f5             	mov    %al,-0xb(%ebp)
  102764:	0f b6 05 de 08 14 00 	movzbl 0x1408de,%eax
  10276b:	88 45 f4             	mov    %al,-0xc(%ebp)
  10276e:	0f b6 05 df 08 14 00 	movzbl 0x1408df,%eax
  102775:	88 45 f3             	mov    %al,-0xd(%ebp)
  102778:	0f b6 05 e0 08 14 00 	movzbl 0x1408e0,%eax
  10277f:	88 45 f2             	mov    %al,-0xe(%ebp)
  102782:	a1 e4 08 14 00       	mov    0x1408e4,%eax
  102787:	88 45 f1             	mov    %al,-0xf(%ebp)
  10278a:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
  10278e:	eb 22                	jmp    1027b2 <cmos_read_rtc+0x105>
  102790:	83 ec 08             	sub    $0x8,%esp
  102793:	6a 0a                	push   $0xa
  102795:	6a 70                	push   $0x70
  102797:	e8 24 df ff ff       	call   1006c0 <outb>
  10279c:	83 c4 10             	add    $0x10,%esp
  10279f:	83 ec 0c             	sub    $0xc,%esp
  1027a2:	6a 71                	push   $0x71
  1027a4:	e8 fe de ff ff       	call   1006a7 <inb>
  1027a9:	83 c4 10             	add    $0x10,%esp
  1027ac:	83 e0 80             	and    $0xffffff80,%eax
  1027af:	88 45 f7             	mov    %al,-0x9(%ebp)
  1027b2:	80 7d f7 01          	cmpb   $0x1,-0x9(%ebp)
  1027b6:	74 d8                	je     102790 <cmos_read_rtc+0xe3>
  1027b8:	83 ec 0c             	sub    $0xc,%esp
  1027bb:	6a 00                	push   $0x0
  1027bd:	e8 c6 fe ff ff       	call   102688 <cmos_read_rtc_reg>
  1027c2:	83 c4 10             	add    $0x10,%esp
  1027c5:	a2 dc 08 14 00       	mov    %al,0x1408dc
  1027ca:	83 ec 0c             	sub    $0xc,%esp
  1027cd:	6a 02                	push   $0x2
  1027cf:	e8 b4 fe ff ff       	call   102688 <cmos_read_rtc_reg>
  1027d4:	83 c4 10             	add    $0x10,%esp
  1027d7:	a2 dd 08 14 00       	mov    %al,0x1408dd
  1027dc:	83 ec 0c             	sub    $0xc,%esp
  1027df:	6a 04                	push   $0x4
  1027e1:	e8 a2 fe ff ff       	call   102688 <cmos_read_rtc_reg>
  1027e6:	83 c4 10             	add    $0x10,%esp
  1027e9:	a2 de 08 14 00       	mov    %al,0x1408de
  1027ee:	83 ec 0c             	sub    $0xc,%esp
  1027f1:	6a 07                	push   $0x7
  1027f3:	e8 90 fe ff ff       	call   102688 <cmos_read_rtc_reg>
  1027f8:	83 c4 10             	add    $0x10,%esp
  1027fb:	a2 df 08 14 00       	mov    %al,0x1408df
  102800:	83 ec 0c             	sub    $0xc,%esp
  102803:	6a 08                	push   $0x8
  102805:	e8 7e fe ff ff       	call   102688 <cmos_read_rtc_reg>
  10280a:	83 c4 10             	add    $0x10,%esp
  10280d:	a2 e0 08 14 00       	mov    %al,0x1408e0
  102812:	83 ec 0c             	sub    $0xc,%esp
  102815:	6a 09                	push   $0x9
  102817:	e8 6c fe ff ff       	call   102688 <cmos_read_rtc_reg>
  10281c:	83 c4 10             	add    $0x10,%esp
  10281f:	0f b6 c0             	movzbl %al,%eax
  102822:	a3 e4 08 14 00       	mov    %eax,0x1408e4
  102827:	0f b6 05 dc 08 14 00 	movzbl 0x1408dc,%eax
  10282e:	38 45 f6             	cmp    %al,-0xa(%ebp)
  102831:	0f 85 19 ff ff ff    	jne    102750 <cmos_read_rtc+0xa3>
  102837:	0f b6 05 dd 08 14 00 	movzbl 0x1408dd,%eax
  10283e:	38 45 f5             	cmp    %al,-0xb(%ebp)
  102841:	0f 85 09 ff ff ff    	jne    102750 <cmos_read_rtc+0xa3>
  102847:	0f b6 05 de 08 14 00 	movzbl 0x1408de,%eax
  10284e:	38 45 f4             	cmp    %al,-0xc(%ebp)
  102851:	0f 85 f9 fe ff ff    	jne    102750 <cmos_read_rtc+0xa3>
  102857:	0f b6 05 df 08 14 00 	movzbl 0x1408df,%eax
  10285e:	38 45 f3             	cmp    %al,-0xd(%ebp)
  102861:	0f 85 e9 fe ff ff    	jne    102750 <cmos_read_rtc+0xa3>
  102867:	0f b6 05 e0 08 14 00 	movzbl 0x1408e0,%eax
  10286e:	38 45 f2             	cmp    %al,-0xe(%ebp)
  102871:	0f 85 d9 fe ff ff    	jne    102750 <cmos_read_rtc+0xa3>
  102877:	0f b6 55 f1          	movzbl -0xf(%ebp),%edx
  10287b:	a1 e4 08 14 00       	mov    0x1408e4,%eax
  102880:	39 c2                	cmp    %eax,%edx
  102882:	0f 85 c8 fe ff ff    	jne    102750 <cmos_read_rtc+0xa3>
  102888:	83 ec 0c             	sub    $0xc,%esp
  10288b:	6a 0b                	push   $0xb
  10288d:	e8 f6 fd ff ff       	call   102688 <cmos_read_rtc_reg>
  102892:	83 c4 10             	add    $0x10,%esp
  102895:	88 45 f0             	mov    %al,-0x10(%ebp)
  102898:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
  10289c:	83 e0 04             	and    $0x4,%eax
  10289f:	85 c0                	test   %eax,%eax
  1028a1:	0f 85 08 01 00 00    	jne    1029af <cmos_read_rtc+0x302>
  1028a7:	0f b6 05 dc 08 14 00 	movzbl 0x1408dc,%eax
  1028ae:	83 e0 0f             	and    $0xf,%eax
  1028b1:	89 c1                	mov    %eax,%ecx
  1028b3:	0f b6 05 dc 08 14 00 	movzbl 0x1408dc,%eax
  1028ba:	c0 e8 04             	shr    $0x4,%al
  1028bd:	89 c2                	mov    %eax,%edx
  1028bf:	89 d0                	mov    %edx,%eax
  1028c1:	c1 e0 02             	shl    $0x2,%eax
  1028c4:	01 d0                	add    %edx,%eax
  1028c6:	01 c0                	add    %eax,%eax
  1028c8:	01 c8                	add    %ecx,%eax
  1028ca:	a2 dc 08 14 00       	mov    %al,0x1408dc
  1028cf:	0f b6 05 dd 08 14 00 	movzbl 0x1408dd,%eax
  1028d6:	83 e0 0f             	and    $0xf,%eax
  1028d9:	89 c1                	mov    %eax,%ecx
  1028db:	0f b6 05 dd 08 14 00 	movzbl 0x1408dd,%eax
  1028e2:	c0 e8 04             	shr    $0x4,%al
  1028e5:	89 c2                	mov    %eax,%edx
  1028e7:	89 d0                	mov    %edx,%eax
  1028e9:	c1 e0 02             	shl    $0x2,%eax
  1028ec:	01 d0                	add    %edx,%eax
  1028ee:	01 c0                	add    %eax,%eax
  1028f0:	01 c8                	add    %ecx,%eax
  1028f2:	a2 dd 08 14 00       	mov    %al,0x1408dd
  1028f7:	0f b6 05 de 08 14 00 	movzbl 0x1408de,%eax
  1028fe:	83 e0 0f             	and    $0xf,%eax
  102901:	89 c1                	mov    %eax,%ecx
  102903:	0f b6 05 de 08 14 00 	movzbl 0x1408de,%eax
  10290a:	0f b6 c0             	movzbl %al,%eax
  10290d:	83 e0 70             	and    $0x70,%eax
  102910:	8d 50 0f             	lea    0xf(%eax),%edx
  102913:	85 c0                	test   %eax,%eax
  102915:	0f 48 c2             	cmovs  %edx,%eax
  102918:	c1 f8 04             	sar    $0x4,%eax
  10291b:	89 c2                	mov    %eax,%edx
  10291d:	89 d0                	mov    %edx,%eax
  10291f:	c1 e0 02             	shl    $0x2,%eax
  102922:	01 d0                	add    %edx,%eax
  102924:	01 c0                	add    %eax,%eax
  102926:	01 c8                	add    %ecx,%eax
  102928:	89 c2                	mov    %eax,%edx
  10292a:	0f b6 05 de 08 14 00 	movzbl 0x1408de,%eax
  102931:	83 e0 80             	and    $0xffffff80,%eax
  102934:	09 d0                	or     %edx,%eax
  102936:	a2 de 08 14 00       	mov    %al,0x1408de
  10293b:	0f b6 05 df 08 14 00 	movzbl 0x1408df,%eax
  102942:	83 e0 0f             	and    $0xf,%eax
  102945:	89 c1                	mov    %eax,%ecx
  102947:	0f b6 05 df 08 14 00 	movzbl 0x1408df,%eax
  10294e:	c0 e8 04             	shr    $0x4,%al
  102951:	89 c2                	mov    %eax,%edx
  102953:	89 d0                	mov    %edx,%eax
  102955:	c1 e0 02             	shl    $0x2,%eax
  102958:	01 d0                	add    %edx,%eax
  10295a:	01 c0                	add    %eax,%eax
  10295c:	01 c8                	add    %ecx,%eax
  10295e:	a2 df 08 14 00       	mov    %al,0x1408df
  102963:	0f b6 05 e0 08 14 00 	movzbl 0x1408e0,%eax
  10296a:	83 e0 0f             	and    $0xf,%eax
  10296d:	89 c1                	mov    %eax,%ecx
  10296f:	0f b6 05 e0 08 14 00 	movzbl 0x1408e0,%eax
  102976:	c0 e8 04             	shr    $0x4,%al
  102979:	89 c2                	mov    %eax,%edx
  10297b:	89 d0                	mov    %edx,%eax
  10297d:	c1 e0 02             	shl    $0x2,%eax
  102980:	01 d0                	add    %edx,%eax
  102982:	01 c0                	add    %eax,%eax
  102984:	01 c8                	add    %ecx,%eax
  102986:	a2 e0 08 14 00       	mov    %al,0x1408e0
  10298b:	a1 e4 08 14 00       	mov    0x1408e4,%eax
  102990:	83 e0 0f             	and    $0xf,%eax
  102993:	89 c1                	mov    %eax,%ecx
  102995:	a1 e4 08 14 00       	mov    0x1408e4,%eax
  10299a:	c1 e8 04             	shr    $0x4,%eax
  10299d:	89 c2                	mov    %eax,%edx
  10299f:	89 d0                	mov    %edx,%eax
  1029a1:	c1 e0 02             	shl    $0x2,%eax
  1029a4:	01 d0                	add    %edx,%eax
  1029a6:	01 c0                	add    %eax,%eax
  1029a8:	01 c8                	add    %ecx,%eax
  1029aa:	a3 e4 08 14 00       	mov    %eax,0x1408e4
  1029af:	0f b6 15 dc 08 14 00 	movzbl 0x1408dc,%edx
  1029b6:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b9:	88 10                	mov    %dl,(%eax)
  1029bb:	0f b6 15 dd 08 14 00 	movzbl 0x1408dd,%edx
  1029c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1029c5:	88 50 01             	mov    %dl,0x1(%eax)
  1029c8:	0f b6 15 de 08 14 00 	movzbl 0x1408de,%edx
  1029cf:	8b 45 08             	mov    0x8(%ebp),%eax
  1029d2:	88 50 02             	mov    %dl,0x2(%eax)
  1029d5:	0f b6 15 df 08 14 00 	movzbl 0x1408df,%edx
  1029dc:	8b 45 08             	mov    0x8(%ebp),%eax
  1029df:	88 50 03             	mov    %dl,0x3(%eax)
  1029e2:	0f b6 15 e0 08 14 00 	movzbl 0x1408e0,%edx
  1029e9:	8b 45 08             	mov    0x8(%ebp),%eax
  1029ec:	88 50 04             	mov    %dl,0x4(%eax)
  1029ef:	a1 e4 08 14 00       	mov    0x1408e4,%eax
  1029f4:	89 c2                	mov    %eax,%edx
  1029f6:	8b 45 08             	mov    0x8(%ebp),%eax
  1029f9:	88 50 05             	mov    %dl,0x5(%eax)
  1029fc:	90                   	nop
  1029fd:	c9                   	leave  
  1029fe:	c3                   	ret    

001029ff <acpi_check_rsd_ptr>:
  1029ff:	55                   	push   %ebp
  102a00:	89 e5                	mov    %esp,%ebp
  102a02:	83 ec 28             	sub    $0x28,%esp
  102a05:	c7 45 e8 3c a2 10 00 	movl   $0x10a23c,-0x18(%ebp)
  102a0c:	8b 45 08             	mov    0x8(%ebp),%eax
  102a0f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102a12:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  102a16:	83 ec 04             	sub    $0x4,%esp
  102a19:	6a 08                	push   $0x8
  102a1b:	ff 75 e4             	push   -0x1c(%ebp)
  102a1e:	ff 75 e8             	push   -0x18(%ebp)
  102a21:	e8 54 63 00 00       	call   108d7a <memcmp>
  102a26:	83 c4 10             	add    $0x10,%esp
  102a29:	85 c0                	test   %eax,%eax
  102a2b:	75 34                	jne    102a61 <acpi_check_rsd_ptr+0x62>
  102a2d:	8b 45 08             	mov    0x8(%ebp),%eax
  102a30:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102a33:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  102a3a:	eb 11                	jmp    102a4d <acpi_check_rsd_ptr+0x4e>
  102a3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a3f:	0f b6 00             	movzbl (%eax),%eax
  102a42:	00 45 f3             	add    %al,-0xd(%ebp)
  102a45:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102a49:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102a4d:	83 7d ec 13          	cmpl   $0x13,-0x14(%ebp)
  102a51:	76 e9                	jbe    102a3c <acpi_check_rsd_ptr+0x3d>
  102a53:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  102a57:	75 08                	jne    102a61 <acpi_check_rsd_ptr+0x62>
  102a59:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a5c:	8b 40 10             	mov    0x10(%eax),%eax
  102a5f:	eb 05                	jmp    102a66 <acpi_check_rsd_ptr+0x67>
  102a61:	b8 00 00 00 00       	mov    $0x0,%eax
  102a66:	c9                   	leave  
  102a67:	c3                   	ret    

00102a68 <acpi_get_rsd_ptr>:
  102a68:	55                   	push   %ebp
  102a69:	89 e5                	mov    %esp,%ebp
  102a6b:	83 ec 18             	sub    $0x18,%esp
  102a6e:	c7 45 f4 00 00 0e 00 	movl   $0xe0000,-0xc(%ebp)
  102a75:	eb 20                	jmp    102a97 <acpi_get_rsd_ptr+0x2f>
  102a77:	83 ec 0c             	sub    $0xc,%esp
  102a7a:	ff 75 f4             	push   -0xc(%ebp)
  102a7d:	e8 7d ff ff ff       	call   1029ff <acpi_check_rsd_ptr>
  102a82:	83 c4 10             	add    $0x10,%esp
  102a85:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102a88:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102a8c:	74 05                	je     102a93 <acpi_get_rsd_ptr+0x2b>
  102a8e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102a91:	eb 13                	jmp    102aa6 <acpi_get_rsd_ptr+0x3e>
  102a93:	83 45 f4 10          	addl   $0x10,-0xc(%ebp)
  102a97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a9a:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
  102a9f:	7e d6                	jle    102a77 <acpi_get_rsd_ptr+0xf>
  102aa1:	b8 00 00 00 00       	mov    $0x0,%eax
  102aa6:	c9                   	leave  
  102aa7:	c3                   	ret    

00102aa8 <acpi_check_header>:
  102aa8:	55                   	push   %ebp
  102aa9:	89 e5                	mov    %esp,%ebp
  102aab:	83 ec 18             	sub    $0x18,%esp
  102aae:	83 ec 04             	sub    $0x4,%esp
  102ab1:	6a 04                	push   $0x4
  102ab3:	ff 75 0c             	push   0xc(%ebp)
  102ab6:	ff 75 08             	push   0x8(%ebp)
  102ab9:	e8 bc 62 00 00       	call   108d7a <memcmp>
  102abe:	83 c4 10             	add    $0x10,%esp
  102ac1:	85 c0                	test   %eax,%eax
  102ac3:	75 43                	jne    102b08 <acpi_check_header+0x60>
  102ac5:	8b 45 08             	mov    0x8(%ebp),%eax
  102ac8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102acb:	8b 45 08             	mov    0x8(%ebp),%eax
  102ace:	83 c0 04             	add    $0x4,%eax
  102ad1:	8b 00                	mov    (%eax),%eax
  102ad3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102ad6:	c6 45 ef 00          	movb   $0x0,-0x11(%ebp)
  102ada:	eb 19                	jmp    102af5 <acpi_check_header+0x4d>
  102adc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102adf:	0f b6 00             	movzbl (%eax),%eax
  102ae2:	89 c2                	mov    %eax,%edx
  102ae4:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  102ae8:	01 d0                	add    %edx,%eax
  102aea:	88 45 ef             	mov    %al,-0x11(%ebp)
  102aed:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102af1:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  102af5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102af9:	75 e1                	jne    102adc <acpi_check_header+0x34>
  102afb:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
  102aff:	75 07                	jne    102b08 <acpi_check_header+0x60>
  102b01:	b8 00 00 00 00       	mov    $0x0,%eax
  102b06:	eb 05                	jmp    102b0d <acpi_check_header+0x65>
  102b08:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102b0d:	c9                   	leave  
  102b0e:	c3                   	ret    

00102b0f <acpi_enable>:
  102b0f:	55                   	push   %ebp
  102b10:	89 e5                	mov    %esp,%ebp
  102b12:	83 ec 18             	sub    $0x18,%esp
  102b15:	c6 05 03 09 14 00 00 	movb   $0x0,0x140903
  102b1c:	a1 f0 08 14 00       	mov    0x1408f0,%eax
  102b21:	83 ec 0c             	sub    $0xc,%esp
  102b24:	50                   	push   %eax
  102b25:	e8 a3 db ff ff       	call   1006cd <inw>
  102b2a:	83 c4 10             	add    $0x10,%esp
  102b2d:	0f b7 15 fe 08 14 00 	movzwl 0x1408fe,%edx
  102b34:	21 d0                	and    %edx,%eax
  102b36:	66 85 c0             	test   %ax,%ax
  102b39:	0f 85 cc 01 00 00    	jne    102d0b <acpi_enable+0x1fc>
  102b3f:	a1 e8 08 14 00       	mov    0x1408e8,%eax
  102b44:	85 c0                	test   %eax,%eax
  102b46:	0f 84 b2 02 00 00    	je     102dfe <acpi_enable+0x2ef>
  102b4c:	0f b6 05 ec 08 14 00 	movzbl 0x1408ec,%eax
  102b53:	84 c0                	test   %al,%al
  102b55:	0f 84 a3 02 00 00    	je     102dfe <acpi_enable+0x2ef>
  102b5b:	0f b6 05 ec 08 14 00 	movzbl 0x1408ec,%eax
  102b62:	0f b6 c0             	movzbl %al,%eax
  102b65:	8b 15 e8 08 14 00    	mov    0x1408e8,%edx
  102b6b:	83 ec 08             	sub    $0x8,%esp
  102b6e:	50                   	push   %eax
  102b6f:	52                   	push   %edx
  102b70:	e8 4b db ff ff       	call   1006c0 <outb>
  102b75:	83 c4 10             	add    $0x10,%esp
  102b78:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102b7f:	eb 31                	jmp    102bb2 <acpi_enable+0xa3>
  102b81:	a1 f0 08 14 00       	mov    0x1408f0,%eax
  102b86:	83 ec 0c             	sub    $0xc,%esp
  102b89:	50                   	push   %eax
  102b8a:	e8 3e db ff ff       	call   1006cd <inw>
  102b8f:	83 c4 10             	add    $0x10,%esp
  102b92:	0f b7 15 fe 08 14 00 	movzwl 0x1408fe,%edx
  102b99:	21 d0                	and    %edx,%eax
  102b9b:	66 83 f8 01          	cmp    $0x1,%ax
  102b9f:	74 1c                	je     102bbd <acpi_enable+0xae>
  102ba1:	83 ec 0c             	sub    $0xc,%esp
  102ba4:	6a 0a                	push   $0xa
  102ba6:	e8 96 21 00 00       	call   104d41 <sleep>
  102bab:	83 c4 10             	add    $0x10,%esp
  102bae:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102bb2:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102bb9:	7e c6                	jle    102b81 <acpi_enable+0x72>
  102bbb:	eb 01                	jmp    102bbe <acpi_enable+0xaf>
  102bbd:	90                   	nop
  102bbe:	a1 f4 08 14 00       	mov    0x1408f4,%eax
  102bc3:	85 c0                	test   %eax,%eax
  102bc5:	74 3f                	je     102c06 <acpi_enable+0xf7>
  102bc7:	eb 31                	jmp    102bfa <acpi_enable+0xeb>
  102bc9:	a1 f4 08 14 00       	mov    0x1408f4,%eax
  102bce:	83 ec 0c             	sub    $0xc,%esp
  102bd1:	50                   	push   %eax
  102bd2:	e8 f6 da ff ff       	call   1006cd <inw>
  102bd7:	83 c4 10             	add    $0x10,%esp
  102bda:	0f b7 15 fe 08 14 00 	movzwl 0x1408fe,%edx
  102be1:	21 d0                	and    %edx,%eax
  102be3:	66 83 f8 01          	cmp    $0x1,%ax
  102be7:	74 1c                	je     102c05 <acpi_enable+0xf6>
  102be9:	83 ec 0c             	sub    $0xc,%esp
  102bec:	6a 0a                	push   $0xa
  102bee:	e8 4e 21 00 00       	call   104d41 <sleep>
  102bf3:	83 c4 10             	add    $0x10,%esp
  102bf6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102bfa:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102c01:	7e c6                	jle    102bc9 <acpi_enable+0xba>
  102c03:	eb 01                	jmp    102c06 <acpi_enable+0xf7>
  102c05:	90                   	nop
  102c06:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102c0d:	0f 8f eb 01 00 00    	jg     102dfe <acpi_enable+0x2ef>
  102c13:	83 ec 0c             	sub    $0xc,%esp
  102c16:	68 e0 0d 14 00       	push   $0x140de0
  102c1b:	e8 aa 55 00 00       	call   1081ca <__redirect_printf__>
  102c20:	83 c4 10             	add    $0x10,%esp
  102c23:	83 ec 0c             	sub    $0xc,%esp
  102c26:	68 45 a2 10 00       	push   $0x10a245
  102c2b:	e8 82 5e 00 00       	call   108ab2 <printf>
  102c30:	83 c4 10             	add    $0x10,%esp
  102c33:	83 ec 0c             	sub    $0xc,%esp
  102c36:	6a 00                	push   $0x0
  102c38:	e8 8d 55 00 00       	call   1081ca <__redirect_printf__>
  102c3d:	83 c4 10             	add    $0x10,%esp
  102c40:	83 ec 0c             	sub    $0xc,%esp
  102c43:	8d 45 ee             	lea    -0x12(%ebp),%eax
  102c46:	50                   	push   %eax
  102c47:	e8 61 fa ff ff       	call   1026ad <cmos_read_rtc>
  102c4c:	83 c4 10             	add    $0x10,%esp
  102c4f:	83 ec 04             	sub    $0x4,%esp
  102c52:	68 cc 11 14 00       	push   $0x1411cc
  102c57:	83 ec 08             	sub    $0x8,%esp
  102c5a:	89 e0                	mov    %esp,%eax
  102c5c:	8b 55 ee             	mov    -0x12(%ebp),%edx
  102c5f:	89 10                	mov    %edx,(%eax)
  102c61:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  102c65:	66 89 50 04          	mov    %dx,0x4(%eax)
  102c69:	e8 a4 1e 00 00       	call   104b12 <cmos_datetime_to_str>
  102c6e:	83 c4 10             	add    $0x10,%esp
  102c71:	83 ec 0c             	sub    $0xc,%esp
  102c74:	68 e0 09 14 00       	push   $0x1409e0
  102c79:	e8 4c 55 00 00       	call   1081ca <__redirect_printf__>
  102c7e:	83 c4 10             	add    $0x10,%esp
  102c81:	83 ec 04             	sub    $0x4,%esp
  102c84:	68 e0 0d 14 00       	push   $0x140de0
  102c89:	68 cc 11 14 00       	push   $0x1411cc
  102c8e:	68 56 a2 10 00       	push   $0x10a256
  102c93:	e8 1a 5e 00 00       	call   108ab2 <printf>
  102c98:	83 c4 10             	add    $0x10,%esp
  102c9b:	83 ec 0c             	sub    $0xc,%esp
  102c9e:	6a 00                	push   $0x0
  102ca0:	e8 25 55 00 00       	call   1081ca <__redirect_printf__>
  102ca5:	83 c4 10             	add    $0x10,%esp
  102ca8:	83 ec 08             	sub    $0x8,%esp
  102cab:	68 e0 09 14 00       	push   $0x1409e0
  102cb0:	68 f8 03 00 00       	push   $0x3f8
  102cb5:	e8 50 f5 ff ff       	call   10220a <com_write>
  102cba:	83 c4 10             	add    $0x10,%esp
  102cbd:	83 ec 04             	sub    $0x4,%esp
  102cc0:	68 00 04 00 00       	push   $0x400
  102cc5:	6a 00                	push   $0x0
  102cc7:	68 e0 09 14 00       	push   $0x1409e0
  102ccc:	e8 5a 61 00 00       	call   108e2b <memset>
  102cd1:	83 c4 10             	add    $0x10,%esp
  102cd4:	83 ec 04             	sub    $0x4,%esp
  102cd7:	68 ec 03 00 00       	push   $0x3ec
  102cdc:	6a 00                	push   $0x0
  102cde:	68 e0 0d 14 00       	push   $0x140de0
  102ce3:	e8 43 61 00 00       	call   108e2b <memset>
  102ce8:	83 c4 10             	add    $0x10,%esp
  102ceb:	83 ec 04             	sub    $0x4,%esp
  102cee:	6a 14                	push   $0x14
  102cf0:	6a 00                	push   $0x0
  102cf2:	68 cc 11 14 00       	push   $0x1411cc
  102cf7:	e8 2f 61 00 00       	call   108e2b <memset>
  102cfc:	83 c4 10             	add    $0x10,%esp
  102cff:	c6 05 03 09 14 00 01 	movb   $0x1,0x140903
  102d06:	e9 f3 00 00 00       	jmp    102dfe <acpi_enable+0x2ef>
  102d0b:	83 ec 0c             	sub    $0xc,%esp
  102d0e:	68 e0 0d 14 00       	push   $0x140de0
  102d13:	e8 b2 54 00 00       	call   1081ca <__redirect_printf__>
  102d18:	83 c4 10             	add    $0x10,%esp
  102d1b:	83 ec 0c             	sub    $0xc,%esp
  102d1e:	68 5c a2 10 00       	push   $0x10a25c
  102d23:	e8 8a 5d 00 00       	call   108ab2 <printf>
  102d28:	83 c4 10             	add    $0x10,%esp
  102d2b:	83 ec 0c             	sub    $0xc,%esp
  102d2e:	6a 00                	push   $0x0
  102d30:	e8 95 54 00 00       	call   1081ca <__redirect_printf__>
  102d35:	83 c4 10             	add    $0x10,%esp
  102d38:	83 ec 0c             	sub    $0xc,%esp
  102d3b:	8d 45 e8             	lea    -0x18(%ebp),%eax
  102d3e:	50                   	push   %eax
  102d3f:	e8 69 f9 ff ff       	call   1026ad <cmos_read_rtc>
  102d44:	83 c4 10             	add    $0x10,%esp
  102d47:	83 ec 04             	sub    $0x4,%esp
  102d4a:	68 cc 11 14 00       	push   $0x1411cc
  102d4f:	83 ec 08             	sub    $0x8,%esp
  102d52:	89 e0                	mov    %esp,%eax
  102d54:	8b 55 e8             	mov    -0x18(%ebp),%edx
  102d57:	89 10                	mov    %edx,(%eax)
  102d59:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
  102d5d:	66 89 50 04          	mov    %dx,0x4(%eax)
  102d61:	e8 ac 1d 00 00       	call   104b12 <cmos_datetime_to_str>
  102d66:	83 c4 10             	add    $0x10,%esp
  102d69:	83 ec 0c             	sub    $0xc,%esp
  102d6c:	68 e0 09 14 00       	push   $0x1409e0
  102d71:	e8 54 54 00 00       	call   1081ca <__redirect_printf__>
  102d76:	83 c4 10             	add    $0x10,%esp
  102d79:	83 ec 04             	sub    $0x4,%esp
  102d7c:	68 e0 0d 14 00       	push   $0x140de0
  102d81:	68 cc 11 14 00       	push   $0x1411cc
  102d86:	68 56 a2 10 00       	push   $0x10a256
  102d8b:	e8 22 5d 00 00       	call   108ab2 <printf>
  102d90:	83 c4 10             	add    $0x10,%esp
  102d93:	83 ec 0c             	sub    $0xc,%esp
  102d96:	6a 00                	push   $0x0
  102d98:	e8 2d 54 00 00       	call   1081ca <__redirect_printf__>
  102d9d:	83 c4 10             	add    $0x10,%esp
  102da0:	83 ec 08             	sub    $0x8,%esp
  102da3:	68 e0 09 14 00       	push   $0x1409e0
  102da8:	68 f8 03 00 00       	push   $0x3f8
  102dad:	e8 58 f4 ff ff       	call   10220a <com_write>
  102db2:	83 c4 10             	add    $0x10,%esp
  102db5:	83 ec 04             	sub    $0x4,%esp
  102db8:	68 00 04 00 00       	push   $0x400
  102dbd:	6a 00                	push   $0x0
  102dbf:	68 e0 09 14 00       	push   $0x1409e0
  102dc4:	e8 62 60 00 00       	call   108e2b <memset>
  102dc9:	83 c4 10             	add    $0x10,%esp
  102dcc:	83 ec 04             	sub    $0x4,%esp
  102dcf:	68 ec 03 00 00       	push   $0x3ec
  102dd4:	6a 00                	push   $0x0
  102dd6:	68 e0 0d 14 00       	push   $0x140de0
  102ddb:	e8 4b 60 00 00       	call   108e2b <memset>
  102de0:	83 c4 10             	add    $0x10,%esp
  102de3:	83 ec 04             	sub    $0x4,%esp
  102de6:	6a 14                	push   $0x14
  102de8:	6a 00                	push   $0x0
  102dea:	68 cc 11 14 00       	push   $0x1411cc
  102def:	e8 37 60 00 00       	call   108e2b <memset>
  102df4:	83 c4 10             	add    $0x10,%esp
  102df7:	c6 05 03 09 14 00 01 	movb   $0x1,0x140903
  102dfe:	90                   	nop
  102dff:	c9                   	leave  
  102e00:	c3                   	ret    

00102e01 <acpi_init>:
  102e01:	55                   	push   %ebp
  102e02:	89 e5                	mov    %esp,%ebp
  102e04:	83 ec 48             	sub    $0x48,%esp
  102e07:	c6 05 03 09 14 00 00 	movb   $0x0,0x140903
  102e0e:	c7 05 e8 08 14 00 00 	movl   $0x0,0x1408e8
  102e15:	00 00 00 
  102e18:	c6 05 ec 08 14 00 00 	movb   $0x0,0x1408ec
  102e1f:	c6 05 ed 08 14 00 00 	movb   $0x0,0x1408ed
  102e26:	c7 05 f0 08 14 00 00 	movl   $0x0,0x1408f0
  102e2d:	00 00 00 
  102e30:	c7 05 f4 08 14 00 00 	movl   $0x0,0x1408f4
  102e37:	00 00 00 
  102e3a:	66 c7 05 f8 08 14 00 	movw   $0x0,0x1408f8
  102e41:	00 00 
  102e43:	66 c7 05 fa 08 14 00 	movw   $0x0,0x1408fa
  102e4a:	00 00 
  102e4c:	66 c7 05 fc 08 14 00 	movw   $0x0,0x1408fc
  102e53:	00 00 
  102e55:	66 c7 05 fe 08 14 00 	movw   $0x0,0x1408fe
  102e5c:	00 00 
  102e5e:	c6 05 02 09 14 00 00 	movb   $0x0,0x140902
  102e65:	e8 fe fb ff ff       	call   102a68 <acpi_get_rsd_ptr>
  102e6a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102e6d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  102e71:	0f 84 cb 05 00 00    	je     103442 <acpi_init+0x641>
  102e77:	83 ec 08             	sub    $0x8,%esp
  102e7a:	68 73 a2 10 00       	push   $0x10a273
  102e7f:	ff 75 f4             	push   -0xc(%ebp)
  102e82:	e8 21 fc ff ff       	call   102aa8 <acpi_check_header>
  102e87:	83 c4 10             	add    $0x10,%esp
  102e8a:	85 c0                	test   %eax,%eax
  102e8c:	0f 85 b0 05 00 00    	jne    103442 <acpi_init+0x641>
  102e92:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102e95:	83 c0 04             	add    $0x4,%eax
  102e98:	8b 00                	mov    (%eax),%eax
  102e9a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102e9d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102ea0:	83 e8 24             	sub    $0x24,%eax
  102ea3:	8d 50 03             	lea    0x3(%eax),%edx
  102ea6:	85 c0                	test   %eax,%eax
  102ea8:	0f 48 c2             	cmovs  %edx,%eax
  102eab:	c1 f8 02             	sar    $0x2,%eax
  102eae:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102eb1:	83 45 f4 24          	addl   $0x24,-0xc(%ebp)
  102eb5:	e9 79 05 00 00       	jmp    103433 <acpi_init+0x632>
  102eba:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102ebd:	8b 00                	mov    (%eax),%eax
  102ebf:	83 ec 08             	sub    $0x8,%esp
  102ec2:	68 78 a2 10 00       	push   $0x10a278
  102ec7:	50                   	push   %eax
  102ec8:	e8 db fb ff ff       	call   102aa8 <acpi_check_header>
  102ecd:	83 c4 10             	add    $0x10,%esp
  102ed0:	85 c0                	test   %eax,%eax
  102ed2:	0f 85 67 04 00 00    	jne    10333f <acpi_init+0x53e>
  102ed8:	c7 45 f0 fe ff ff ff 	movl   $0xfffffffe,-0x10(%ebp)
  102edf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102ee2:	8b 00                	mov    (%eax),%eax
  102ee4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102ee7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102eea:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102eed:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102ef0:	83 c0 6d             	add    $0x6d,%eax
  102ef3:	89 45 dc             	mov    %eax,-0x24(%ebp)
  102ef6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  102ef9:	89 45 d8             	mov    %eax,-0x28(%ebp)
  102efc:	8b 45 d8             	mov    -0x28(%ebp),%eax
  102eff:	0f b7 00             	movzwl (%eax),%eax
  102f02:	66 a3 00 09 14 00    	mov    %ax,0x140900
  102f08:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102f0b:	8b 40 28             	mov    0x28(%eax),%eax
  102f0e:	83 ec 08             	sub    $0x8,%esp
  102f11:	68 7d a2 10 00       	push   $0x10a27d
  102f16:	50                   	push   %eax
  102f17:	e8 8c fb ff ff       	call   102aa8 <acpi_check_header>
  102f1c:	83 c4 10             	add    $0x10,%esp
  102f1f:	85 c0                	test   %eax,%eax
  102f21:	0f 85 27 03 00 00    	jne    10324e <acpi_init+0x44d>
  102f27:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102f2a:	8b 40 28             	mov    0x28(%eax),%eax
  102f2d:	83 c0 24             	add    $0x24,%eax
  102f30:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102f33:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102f36:	8b 40 28             	mov    0x28(%eax),%eax
  102f39:	83 c0 04             	add    $0x4,%eax
  102f3c:	8b 00                	mov    (%eax),%eax
  102f3e:	83 e8 24             	sub    $0x24,%eax
  102f41:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102f44:	eb 21                	jmp    102f67 <acpi_init+0x166>
  102f46:	83 ec 04             	sub    $0x4,%esp
  102f49:	6a 04                	push   $0x4
  102f4b:	68 82 a2 10 00       	push   $0x10a282
  102f50:	ff 75 ec             	push   -0x14(%ebp)
  102f53:	e8 22 5e 00 00       	call   108d7a <memcmp>
  102f58:	83 c4 10             	add    $0x10,%esp
  102f5b:	85 c0                	test   %eax,%eax
  102f5d:	74 10                	je     102f6f <acpi_init+0x16e>
  102f5f:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102f63:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
  102f67:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  102f6b:	75 d9                	jne    102f46 <acpi_init+0x145>
  102f6d:	eb 01                	jmp    102f70 <acpi_init+0x16f>
  102f6f:	90                   	nop
  102f70:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  102f74:	0f 8e e3 01 00 00    	jle    10315d <acpi_init+0x35c>
  102f7a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102f7d:	83 e8 01             	sub    $0x1,%eax
  102f80:	0f b6 00             	movzbl (%eax),%eax
  102f83:	3c 08                	cmp    $0x8,%al
  102f85:	74 22                	je     102fa9 <acpi_init+0x1a8>
  102f87:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102f8a:	83 e8 02             	sub    $0x2,%eax
  102f8d:	0f b6 00             	movzbl (%eax),%eax
  102f90:	3c 08                	cmp    $0x8,%al
  102f92:	0f 85 93 04 00 00    	jne    10342b <acpi_init+0x62a>
  102f98:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102f9b:	83 e8 01             	sub    $0x1,%eax
  102f9e:	0f b6 00             	movzbl (%eax),%eax
  102fa1:	3c 5c                	cmp    $0x5c,%al
  102fa3:	0f 85 82 04 00 00    	jne    10342b <acpi_init+0x62a>
  102fa9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102fac:	83 c0 04             	add    $0x4,%eax
  102faf:	0f b6 00             	movzbl (%eax),%eax
  102fb2:	3c 12                	cmp    $0x12,%al
  102fb4:	0f 85 71 04 00 00    	jne    10342b <acpi_init+0x62a>
  102fba:	83 45 ec 05          	addl   $0x5,-0x14(%ebp)
  102fbe:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102fc1:	0f b6 00             	movzbl (%eax),%eax
  102fc4:	0f be c0             	movsbl %al,%eax
  102fc7:	c1 f8 06             	sar    $0x6,%eax
  102fca:	83 e0 03             	and    $0x3,%eax
  102fcd:	83 c0 02             	add    $0x2,%eax
  102fd0:	01 45 ec             	add    %eax,-0x14(%ebp)
  102fd3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102fd6:	0f b6 00             	movzbl (%eax),%eax
  102fd9:	3c 0a                	cmp    $0xa,%al
  102fdb:	75 04                	jne    102fe1 <acpi_init+0x1e0>
  102fdd:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102fe1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102fe4:	0f b6 00             	movzbl (%eax),%eax
  102fe7:	66 98                	cbtw   
  102fe9:	c1 e0 0a             	shl    $0xa,%eax
  102fec:	66 a3 f8 08 14 00    	mov    %ax,0x1408f8
  102ff2:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102ff6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102ff9:	0f b6 00             	movzbl (%eax),%eax
  102ffc:	3c 0a                	cmp    $0xa,%al
  102ffe:	75 04                	jne    103004 <acpi_init+0x203>
  103000:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  103004:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103007:	0f b6 00             	movzbl (%eax),%eax
  10300a:	66 98                	cbtw   
  10300c:	c1 e0 0a             	shl    $0xa,%eax
  10300f:	66 a3 fa 08 14 00    	mov    %ax,0x1408fa
  103015:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103018:	8b 40 30             	mov    0x30(%eax),%eax
  10301b:	a3 e8 08 14 00       	mov    %eax,0x1408e8
  103020:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103023:	0f b6 40 34          	movzbl 0x34(%eax),%eax
  103027:	a2 ec 08 14 00       	mov    %al,0x1408ec
  10302c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10302f:	0f b6 40 35          	movzbl 0x35(%eax),%eax
  103033:	a2 ed 08 14 00       	mov    %al,0x1408ed
  103038:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10303b:	8b 40 40             	mov    0x40(%eax),%eax
  10303e:	a3 f0 08 14 00       	mov    %eax,0x1408f0
  103043:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103046:	8b 40 44             	mov    0x44(%eax),%eax
  103049:	a3 f4 08 14 00       	mov    %eax,0x1408f4
  10304e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103051:	0f b6 40 59          	movzbl 0x59(%eax),%eax
  103055:	a2 02 09 14 00       	mov    %al,0x140902
  10305a:	66 c7 05 fc 08 14 00 	movw   $0x2000,0x1408fc
  103061:	00 20 
  103063:	66 c7 05 fe 08 14 00 	movw   $0x1,0x1408fe
  10306a:	01 00 
  10306c:	83 ec 0c             	sub    $0xc,%esp
  10306f:	68 e0 0d 14 00       	push   $0x140de0
  103074:	e8 51 51 00 00       	call   1081ca <__redirect_printf__>
  103079:	83 c4 10             	add    $0x10,%esp
  10307c:	83 ec 0c             	sub    $0xc,%esp
  10307f:	68 87 a2 10 00       	push   $0x10a287
  103084:	e8 29 5a 00 00       	call   108ab2 <printf>
  103089:	83 c4 10             	add    $0x10,%esp
  10308c:	83 ec 0c             	sub    $0xc,%esp
  10308f:	6a 00                	push   $0x0
  103091:	e8 34 51 00 00       	call   1081ca <__redirect_printf__>
  103096:	83 c4 10             	add    $0x10,%esp
  103099:	83 ec 0c             	sub    $0xc,%esp
  10309c:	8d 45 d2             	lea    -0x2e(%ebp),%eax
  10309f:	50                   	push   %eax
  1030a0:	e8 08 f6 ff ff       	call   1026ad <cmos_read_rtc>
  1030a5:	83 c4 10             	add    $0x10,%esp
  1030a8:	83 ec 04             	sub    $0x4,%esp
  1030ab:	68 cc 11 14 00       	push   $0x1411cc
  1030b0:	83 ec 08             	sub    $0x8,%esp
  1030b3:	89 e0                	mov    %esp,%eax
  1030b5:	8b 55 d2             	mov    -0x2e(%ebp),%edx
  1030b8:	89 10                	mov    %edx,(%eax)
  1030ba:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
  1030be:	66 89 50 04          	mov    %dx,0x4(%eax)
  1030c2:	e8 4b 1a 00 00       	call   104b12 <cmos_datetime_to_str>
  1030c7:	83 c4 10             	add    $0x10,%esp
  1030ca:	83 ec 0c             	sub    $0xc,%esp
  1030cd:	68 e0 09 14 00       	push   $0x1409e0
  1030d2:	e8 f3 50 00 00       	call   1081ca <__redirect_printf__>
  1030d7:	83 c4 10             	add    $0x10,%esp
  1030da:	83 ec 04             	sub    $0x4,%esp
  1030dd:	68 e0 0d 14 00       	push   $0x140de0
  1030e2:	68 cc 11 14 00       	push   $0x1411cc
  1030e7:	68 56 a2 10 00       	push   $0x10a256
  1030ec:	e8 c1 59 00 00       	call   108ab2 <printf>
  1030f1:	83 c4 10             	add    $0x10,%esp
  1030f4:	83 ec 0c             	sub    $0xc,%esp
  1030f7:	6a 00                	push   $0x0
  1030f9:	e8 cc 50 00 00       	call   1081ca <__redirect_printf__>
  1030fe:	83 c4 10             	add    $0x10,%esp
  103101:	83 ec 08             	sub    $0x8,%esp
  103104:	68 e0 09 14 00       	push   $0x1409e0
  103109:	68 f8 03 00 00       	push   $0x3f8
  10310e:	e8 f7 f0 ff ff       	call   10220a <com_write>
  103113:	83 c4 10             	add    $0x10,%esp
  103116:	83 ec 04             	sub    $0x4,%esp
  103119:	68 00 04 00 00       	push   $0x400
  10311e:	6a 00                	push   $0x0
  103120:	68 e0 09 14 00       	push   $0x1409e0
  103125:	e8 01 5d 00 00       	call   108e2b <memset>
  10312a:	83 c4 10             	add    $0x10,%esp
  10312d:	83 ec 04             	sub    $0x4,%esp
  103130:	68 ec 03 00 00       	push   $0x3ec
  103135:	6a 00                	push   $0x0
  103137:	68 e0 0d 14 00       	push   $0x140de0
  10313c:	e8 ea 5c 00 00       	call   108e2b <memset>
  103141:	83 c4 10             	add    $0x10,%esp
  103144:	83 ec 04             	sub    $0x4,%esp
  103147:	6a 14                	push   $0x14
  103149:	6a 00                	push   $0x0
  10314b:	68 cc 11 14 00       	push   $0x1411cc
  103150:	e8 d6 5c 00 00       	call   108e2b <memset>
  103155:	83 c4 10             	add    $0x10,%esp
  103158:	e9 da 03 00 00       	jmp    103537 <acpi_init+0x736>
  10315d:	83 ec 0c             	sub    $0xc,%esp
  103160:	68 e0 0d 14 00       	push   $0x140de0
  103165:	e8 60 50 00 00       	call   1081ca <__redirect_printf__>
  10316a:	83 c4 10             	add    $0x10,%esp
  10316d:	83 ec 0c             	sub    $0xc,%esp
  103170:	68 9c a2 10 00       	push   $0x10a29c
  103175:	e8 38 59 00 00       	call   108ab2 <printf>
  10317a:	83 c4 10             	add    $0x10,%esp
  10317d:	83 ec 0c             	sub    $0xc,%esp
  103180:	6a 00                	push   $0x0
  103182:	e8 43 50 00 00       	call   1081ca <__redirect_printf__>
  103187:	83 c4 10             	add    $0x10,%esp
  10318a:	83 ec 0c             	sub    $0xc,%esp
  10318d:	8d 45 cc             	lea    -0x34(%ebp),%eax
  103190:	50                   	push   %eax
  103191:	e8 17 f5 ff ff       	call   1026ad <cmos_read_rtc>
  103196:	83 c4 10             	add    $0x10,%esp
  103199:	83 ec 04             	sub    $0x4,%esp
  10319c:	68 cc 11 14 00       	push   $0x1411cc
  1031a1:	83 ec 08             	sub    $0x8,%esp
  1031a4:	89 e0                	mov    %esp,%eax
  1031a6:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1031a9:	89 10                	mov    %edx,(%eax)
  1031ab:	0f b7 55 d0          	movzwl -0x30(%ebp),%edx
  1031af:	66 89 50 04          	mov    %dx,0x4(%eax)
  1031b3:	e8 5a 19 00 00       	call   104b12 <cmos_datetime_to_str>
  1031b8:	83 c4 10             	add    $0x10,%esp
  1031bb:	83 ec 0c             	sub    $0xc,%esp
  1031be:	68 e0 09 14 00       	push   $0x1409e0
  1031c3:	e8 02 50 00 00       	call   1081ca <__redirect_printf__>
  1031c8:	83 c4 10             	add    $0x10,%esp
  1031cb:	83 ec 04             	sub    $0x4,%esp
  1031ce:	68 e0 0d 14 00       	push   $0x140de0
  1031d3:	68 cc 11 14 00       	push   $0x1411cc
  1031d8:	68 56 a2 10 00       	push   $0x10a256
  1031dd:	e8 d0 58 00 00       	call   108ab2 <printf>
  1031e2:	83 c4 10             	add    $0x10,%esp
  1031e5:	83 ec 0c             	sub    $0xc,%esp
  1031e8:	6a 00                	push   $0x0
  1031ea:	e8 db 4f 00 00       	call   1081ca <__redirect_printf__>
  1031ef:	83 c4 10             	add    $0x10,%esp
  1031f2:	83 ec 08             	sub    $0x8,%esp
  1031f5:	68 e0 09 14 00       	push   $0x1409e0
  1031fa:	68 f8 03 00 00       	push   $0x3f8
  1031ff:	e8 06 f0 ff ff       	call   10220a <com_write>
  103204:	83 c4 10             	add    $0x10,%esp
  103207:	83 ec 04             	sub    $0x4,%esp
  10320a:	68 00 04 00 00       	push   $0x400
  10320f:	6a 00                	push   $0x0
  103211:	68 e0 09 14 00       	push   $0x1409e0
  103216:	e8 10 5c 00 00       	call   108e2b <memset>
  10321b:	83 c4 10             	add    $0x10,%esp
  10321e:	83 ec 04             	sub    $0x4,%esp
  103221:	68 ec 03 00 00       	push   $0x3ec
  103226:	6a 00                	push   $0x0
  103228:	68 e0 0d 14 00       	push   $0x140de0
  10322d:	e8 f9 5b 00 00       	call   108e2b <memset>
  103232:	83 c4 10             	add    $0x10,%esp
  103235:	83 ec 04             	sub    $0x4,%esp
  103238:	6a 14                	push   $0x14
  10323a:	6a 00                	push   $0x0
  10323c:	68 cc 11 14 00       	push   $0x1411cc
  103241:	e8 e5 5b 00 00       	call   108e2b <memset>
  103246:	83 c4 10             	add    $0x10,%esp
  103249:	e9 dd 01 00 00       	jmp    10342b <acpi_init+0x62a>
  10324e:	83 ec 0c             	sub    $0xc,%esp
  103251:	68 e0 0d 14 00       	push   $0x140de0
  103256:	e8 6f 4f 00 00       	call   1081ca <__redirect_printf__>
  10325b:	83 c4 10             	add    $0x10,%esp
  10325e:	83 ec 0c             	sub    $0xc,%esp
  103261:	68 c4 a2 10 00       	push   $0x10a2c4
  103266:	e8 47 58 00 00       	call   108ab2 <printf>
  10326b:	83 c4 10             	add    $0x10,%esp
  10326e:	83 ec 0c             	sub    $0xc,%esp
  103271:	6a 00                	push   $0x0
  103273:	e8 52 4f 00 00       	call   1081ca <__redirect_printf__>
  103278:	83 c4 10             	add    $0x10,%esp
  10327b:	83 ec 0c             	sub    $0xc,%esp
  10327e:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  103281:	50                   	push   %eax
  103282:	e8 26 f4 ff ff       	call   1026ad <cmos_read_rtc>
  103287:	83 c4 10             	add    $0x10,%esp
  10328a:	83 ec 04             	sub    $0x4,%esp
  10328d:	68 cc 11 14 00       	push   $0x1411cc
  103292:	83 ec 08             	sub    $0x8,%esp
  103295:	89 e0                	mov    %esp,%eax
  103297:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  10329a:	89 10                	mov    %edx,(%eax)
  10329c:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  1032a0:	66 89 50 04          	mov    %dx,0x4(%eax)
  1032a4:	e8 69 18 00 00       	call   104b12 <cmos_datetime_to_str>
  1032a9:	83 c4 10             	add    $0x10,%esp
  1032ac:	83 ec 0c             	sub    $0xc,%esp
  1032af:	68 e0 09 14 00       	push   $0x1409e0
  1032b4:	e8 11 4f 00 00       	call   1081ca <__redirect_printf__>
  1032b9:	83 c4 10             	add    $0x10,%esp
  1032bc:	83 ec 04             	sub    $0x4,%esp
  1032bf:	68 e0 0d 14 00       	push   $0x140de0
  1032c4:	68 cc 11 14 00       	push   $0x1411cc
  1032c9:	68 56 a2 10 00       	push   $0x10a256
  1032ce:	e8 df 57 00 00       	call   108ab2 <printf>
  1032d3:	83 c4 10             	add    $0x10,%esp
  1032d6:	83 ec 0c             	sub    $0xc,%esp
  1032d9:	6a 00                	push   $0x0
  1032db:	e8 ea 4e 00 00       	call   1081ca <__redirect_printf__>
  1032e0:	83 c4 10             	add    $0x10,%esp
  1032e3:	83 ec 08             	sub    $0x8,%esp
  1032e6:	68 e0 09 14 00       	push   $0x1409e0
  1032eb:	68 f8 03 00 00       	push   $0x3f8
  1032f0:	e8 15 ef ff ff       	call   10220a <com_write>
  1032f5:	83 c4 10             	add    $0x10,%esp
  1032f8:	83 ec 04             	sub    $0x4,%esp
  1032fb:	68 00 04 00 00       	push   $0x400
  103300:	6a 00                	push   $0x0
  103302:	68 e0 09 14 00       	push   $0x1409e0
  103307:	e8 1f 5b 00 00       	call   108e2b <memset>
  10330c:	83 c4 10             	add    $0x10,%esp
  10330f:	83 ec 04             	sub    $0x4,%esp
  103312:	68 ec 03 00 00       	push   $0x3ec
  103317:	6a 00                	push   $0x0
  103319:	68 e0 0d 14 00       	push   $0x140de0
  10331e:	e8 08 5b 00 00       	call   108e2b <memset>
  103323:	83 c4 10             	add    $0x10,%esp
  103326:	83 ec 04             	sub    $0x4,%esp
  103329:	6a 14                	push   $0x14
  10332b:	6a 00                	push   $0x0
  10332d:	68 cc 11 14 00       	push   $0x1411cc
  103332:	e8 f4 5a 00 00       	call   108e2b <memset>
  103337:	83 c4 10             	add    $0x10,%esp
  10333a:	e9 ec 00 00 00       	jmp    10342b <acpi_init+0x62a>
  10333f:	83 ec 0c             	sub    $0xc,%esp
  103342:	68 e0 0d 14 00       	push   $0x140de0
  103347:	e8 7e 4e 00 00       	call   1081ca <__redirect_printf__>
  10334c:	83 c4 10             	add    $0x10,%esp
  10334f:	83 ec 0c             	sub    $0xc,%esp
  103352:	68 ec a2 10 00       	push   $0x10a2ec
  103357:	e8 56 57 00 00       	call   108ab2 <printf>
  10335c:	83 c4 10             	add    $0x10,%esp
  10335f:	83 ec 0c             	sub    $0xc,%esp
  103362:	6a 00                	push   $0x0
  103364:	e8 61 4e 00 00       	call   1081ca <__redirect_printf__>
  103369:	83 c4 10             	add    $0x10,%esp
  10336c:	83 ec 0c             	sub    $0xc,%esp
  10336f:	8d 45 c0             	lea    -0x40(%ebp),%eax
  103372:	50                   	push   %eax
  103373:	e8 35 f3 ff ff       	call   1026ad <cmos_read_rtc>
  103378:	83 c4 10             	add    $0x10,%esp
  10337b:	83 ec 04             	sub    $0x4,%esp
  10337e:	68 cc 11 14 00       	push   $0x1411cc
  103383:	83 ec 08             	sub    $0x8,%esp
  103386:	89 e0                	mov    %esp,%eax
  103388:	8b 55 c0             	mov    -0x40(%ebp),%edx
  10338b:	89 10                	mov    %edx,(%eax)
  10338d:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  103391:	66 89 50 04          	mov    %dx,0x4(%eax)
  103395:	e8 78 17 00 00       	call   104b12 <cmos_datetime_to_str>
  10339a:	83 c4 10             	add    $0x10,%esp
  10339d:	83 ec 0c             	sub    $0xc,%esp
  1033a0:	68 e0 09 14 00       	push   $0x1409e0
  1033a5:	e8 20 4e 00 00       	call   1081ca <__redirect_printf__>
  1033aa:	83 c4 10             	add    $0x10,%esp
  1033ad:	83 ec 04             	sub    $0x4,%esp
  1033b0:	68 e0 0d 14 00       	push   $0x140de0
  1033b5:	68 cc 11 14 00       	push   $0x1411cc
  1033ba:	68 56 a2 10 00       	push   $0x10a256
  1033bf:	e8 ee 56 00 00       	call   108ab2 <printf>
  1033c4:	83 c4 10             	add    $0x10,%esp
  1033c7:	83 ec 0c             	sub    $0xc,%esp
  1033ca:	6a 00                	push   $0x0
  1033cc:	e8 f9 4d 00 00       	call   1081ca <__redirect_printf__>
  1033d1:	83 c4 10             	add    $0x10,%esp
  1033d4:	83 ec 08             	sub    $0x8,%esp
  1033d7:	68 e0 09 14 00       	push   $0x1409e0
  1033dc:	68 f8 03 00 00       	push   $0x3f8
  1033e1:	e8 24 ee ff ff       	call   10220a <com_write>
  1033e6:	83 c4 10             	add    $0x10,%esp
  1033e9:	83 ec 04             	sub    $0x4,%esp
  1033ec:	68 00 04 00 00       	push   $0x400
  1033f1:	6a 00                	push   $0x0
  1033f3:	68 e0 09 14 00       	push   $0x1409e0
  1033f8:	e8 2e 5a 00 00       	call   108e2b <memset>
  1033fd:	83 c4 10             	add    $0x10,%esp
  103400:	83 ec 04             	sub    $0x4,%esp
  103403:	68 ec 03 00 00       	push   $0x3ec
  103408:	6a 00                	push   $0x0
  10340a:	68 e0 0d 14 00       	push   $0x140de0
  10340f:	e8 17 5a 00 00       	call   108e2b <memset>
  103414:	83 c4 10             	add    $0x10,%esp
  103417:	83 ec 04             	sub    $0x4,%esp
  10341a:	6a 14                	push   $0x14
  10341c:	6a 00                	push   $0x0
  10341e:	68 cc 11 14 00       	push   $0x1411cc
  103423:	e8 03 5a 00 00       	call   108e2b <memset>
  103428:	83 c4 10             	add    $0x10,%esp
  10342b:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  10342f:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  103433:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  103437:	0f 8f 7d fa ff ff    	jg     102eba <acpi_init+0xb9>
  10343d:	e9 ec 00 00 00       	jmp    10352e <acpi_init+0x72d>
  103442:	83 ec 0c             	sub    $0xc,%esp
  103445:	68 e0 0d 14 00       	push   $0x140de0
  10344a:	e8 7b 4d 00 00       	call   1081ca <__redirect_printf__>
  10344f:	83 c4 10             	add    $0x10,%esp
  103452:	83 ec 0c             	sub    $0xc,%esp
  103455:	68 14 a3 10 00       	push   $0x10a314
  10345a:	e8 53 56 00 00       	call   108ab2 <printf>
  10345f:	83 c4 10             	add    $0x10,%esp
  103462:	83 ec 0c             	sub    $0xc,%esp
  103465:	6a 00                	push   $0x0
  103467:	e8 5e 4d 00 00       	call   1081ca <__redirect_printf__>
  10346c:	83 c4 10             	add    $0x10,%esp
  10346f:	83 ec 0c             	sub    $0xc,%esp
  103472:	8d 45 ba             	lea    -0x46(%ebp),%eax
  103475:	50                   	push   %eax
  103476:	e8 32 f2 ff ff       	call   1026ad <cmos_read_rtc>
  10347b:	83 c4 10             	add    $0x10,%esp
  10347e:	83 ec 04             	sub    $0x4,%esp
  103481:	68 cc 11 14 00       	push   $0x1411cc
  103486:	83 ec 08             	sub    $0x8,%esp
  103489:	89 e0                	mov    %esp,%eax
  10348b:	8b 55 ba             	mov    -0x46(%ebp),%edx
  10348e:	89 10                	mov    %edx,(%eax)
  103490:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  103494:	66 89 50 04          	mov    %dx,0x4(%eax)
  103498:	e8 75 16 00 00       	call   104b12 <cmos_datetime_to_str>
  10349d:	83 c4 10             	add    $0x10,%esp
  1034a0:	83 ec 0c             	sub    $0xc,%esp
  1034a3:	68 e0 09 14 00       	push   $0x1409e0
  1034a8:	e8 1d 4d 00 00       	call   1081ca <__redirect_printf__>
  1034ad:	83 c4 10             	add    $0x10,%esp
  1034b0:	83 ec 04             	sub    $0x4,%esp
  1034b3:	68 e0 0d 14 00       	push   $0x140de0
  1034b8:	68 cc 11 14 00       	push   $0x1411cc
  1034bd:	68 56 a2 10 00       	push   $0x10a256
  1034c2:	e8 eb 55 00 00       	call   108ab2 <printf>
  1034c7:	83 c4 10             	add    $0x10,%esp
  1034ca:	83 ec 0c             	sub    $0xc,%esp
  1034cd:	6a 00                	push   $0x0
  1034cf:	e8 f6 4c 00 00       	call   1081ca <__redirect_printf__>
  1034d4:	83 c4 10             	add    $0x10,%esp
  1034d7:	83 ec 08             	sub    $0x8,%esp
  1034da:	68 e0 09 14 00       	push   $0x1409e0
  1034df:	68 f8 03 00 00       	push   $0x3f8
  1034e4:	e8 21 ed ff ff       	call   10220a <com_write>
  1034e9:	83 c4 10             	add    $0x10,%esp
  1034ec:	83 ec 04             	sub    $0x4,%esp
  1034ef:	68 00 04 00 00       	push   $0x400
  1034f4:	6a 00                	push   $0x0
  1034f6:	68 e0 09 14 00       	push   $0x1409e0
  1034fb:	e8 2b 59 00 00       	call   108e2b <memset>
  103500:	83 c4 10             	add    $0x10,%esp
  103503:	83 ec 04             	sub    $0x4,%esp
  103506:	68 ec 03 00 00       	push   $0x3ec
  10350b:	6a 00                	push   $0x0
  10350d:	68 e0 0d 14 00       	push   $0x140de0
  103512:	e8 14 59 00 00       	call   108e2b <memset>
  103517:	83 c4 10             	add    $0x10,%esp
  10351a:	83 ec 04             	sub    $0x4,%esp
  10351d:	6a 14                	push   $0x14
  10351f:	6a 00                	push   $0x0
  103521:	68 cc 11 14 00       	push   $0x1411cc
  103526:	e8 00 59 00 00       	call   108e2b <memset>
  10352b:	83 c4 10             	add    $0x10,%esp
  10352e:	66 c7 05 fe 08 14 00 	movw   $0x0,0x1408fe
  103535:	00 00 
  103537:	c9                   	leave  
  103538:	c3                   	ret    

00103539 <acpi_shutdown>:
  103539:	55                   	push   %ebp
  10353a:	89 e5                	mov    %esp,%ebp
  10353c:	83 ec 28             	sub    $0x28,%esp
  10353f:	e8 49 03 00 00       	call   10388d <acpi_is_initialized>
  103544:	84 c0                	test   %al,%al
  103546:	0f 85 f1 00 00 00    	jne    10363d <acpi_shutdown+0x104>
  10354c:	83 ec 0c             	sub    $0xc,%esp
  10354f:	68 e0 0d 14 00       	push   $0x140de0
  103554:	e8 71 4c 00 00       	call   1081ca <__redirect_printf__>
  103559:	83 c4 10             	add    $0x10,%esp
  10355c:	83 ec 0c             	sub    $0xc,%esp
  10355f:	68 3c a3 10 00       	push   $0x10a33c
  103564:	e8 49 55 00 00       	call   108ab2 <printf>
  103569:	83 c4 10             	add    $0x10,%esp
  10356c:	83 ec 0c             	sub    $0xc,%esp
  10356f:	6a 00                	push   $0x0
  103571:	e8 54 4c 00 00       	call   1081ca <__redirect_printf__>
  103576:	83 c4 10             	add    $0x10,%esp
  103579:	83 ec 0c             	sub    $0xc,%esp
  10357c:	8d 45 f2             	lea    -0xe(%ebp),%eax
  10357f:	50                   	push   %eax
  103580:	e8 28 f1 ff ff       	call   1026ad <cmos_read_rtc>
  103585:	83 c4 10             	add    $0x10,%esp
  103588:	83 ec 04             	sub    $0x4,%esp
  10358b:	68 cc 11 14 00       	push   $0x1411cc
  103590:	83 ec 08             	sub    $0x8,%esp
  103593:	89 e0                	mov    %esp,%eax
  103595:	8b 55 f2             	mov    -0xe(%ebp),%edx
  103598:	89 10                	mov    %edx,(%eax)
  10359a:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  10359e:	66 89 50 04          	mov    %dx,0x4(%eax)
  1035a2:	e8 6b 15 00 00       	call   104b12 <cmos_datetime_to_str>
  1035a7:	83 c4 10             	add    $0x10,%esp
  1035aa:	83 ec 0c             	sub    $0xc,%esp
  1035ad:	68 e0 09 14 00       	push   $0x1409e0
  1035b2:	e8 13 4c 00 00       	call   1081ca <__redirect_printf__>
  1035b7:	83 c4 10             	add    $0x10,%esp
  1035ba:	83 ec 04             	sub    $0x4,%esp
  1035bd:	68 e0 0d 14 00       	push   $0x140de0
  1035c2:	68 cc 11 14 00       	push   $0x1411cc
  1035c7:	68 56 a2 10 00       	push   $0x10a256
  1035cc:	e8 e1 54 00 00       	call   108ab2 <printf>
  1035d1:	83 c4 10             	add    $0x10,%esp
  1035d4:	83 ec 0c             	sub    $0xc,%esp
  1035d7:	6a 00                	push   $0x0
  1035d9:	e8 ec 4b 00 00       	call   1081ca <__redirect_printf__>
  1035de:	83 c4 10             	add    $0x10,%esp
  1035e1:	83 ec 08             	sub    $0x8,%esp
  1035e4:	68 e0 09 14 00       	push   $0x1409e0
  1035e9:	68 f8 03 00 00       	push   $0x3f8
  1035ee:	e8 17 ec ff ff       	call   10220a <com_write>
  1035f3:	83 c4 10             	add    $0x10,%esp
  1035f6:	83 ec 04             	sub    $0x4,%esp
  1035f9:	68 00 04 00 00       	push   $0x400
  1035fe:	6a 00                	push   $0x0
  103600:	68 e0 09 14 00       	push   $0x1409e0
  103605:	e8 21 58 00 00       	call   108e2b <memset>
  10360a:	83 c4 10             	add    $0x10,%esp
  10360d:	83 ec 04             	sub    $0x4,%esp
  103610:	68 ec 03 00 00       	push   $0x3ec
  103615:	6a 00                	push   $0x0
  103617:	68 e0 0d 14 00       	push   $0x140de0
  10361c:	e8 0a 58 00 00       	call   108e2b <memset>
  103621:	83 c4 10             	add    $0x10,%esp
  103624:	83 ec 04             	sub    $0x4,%esp
  103627:	6a 14                	push   $0x14
  103629:	6a 00                	push   $0x0
  10362b:	68 cc 11 14 00       	push   $0x1411cc
  103630:	e8 f6 57 00 00       	call   108e2b <memset>
  103635:	83 c4 10             	add    $0x10,%esp
  103638:	e9 41 02 00 00       	jmp    10387e <acpi_shutdown+0x345>
  10363d:	0f b6 05 03 09 14 00 	movzbl 0x140903,%eax
  103644:	84 c0                	test   %al,%al
  103646:	0f 85 f1 00 00 00    	jne    10373d <acpi_shutdown+0x204>
  10364c:	83 ec 0c             	sub    $0xc,%esp
  10364f:	68 e0 0d 14 00       	push   $0x140de0
  103654:	e8 71 4b 00 00       	call   1081ca <__redirect_printf__>
  103659:	83 c4 10             	add    $0x10,%esp
  10365c:	83 ec 0c             	sub    $0xc,%esp
  10365f:	68 70 a3 10 00       	push   $0x10a370
  103664:	e8 49 54 00 00       	call   108ab2 <printf>
  103669:	83 c4 10             	add    $0x10,%esp
  10366c:	83 ec 0c             	sub    $0xc,%esp
  10366f:	6a 00                	push   $0x0
  103671:	e8 54 4b 00 00       	call   1081ca <__redirect_printf__>
  103676:	83 c4 10             	add    $0x10,%esp
  103679:	83 ec 0c             	sub    $0xc,%esp
  10367c:	8d 45 ec             	lea    -0x14(%ebp),%eax
  10367f:	50                   	push   %eax
  103680:	e8 28 f0 ff ff       	call   1026ad <cmos_read_rtc>
  103685:	83 c4 10             	add    $0x10,%esp
  103688:	83 ec 04             	sub    $0x4,%esp
  10368b:	68 cc 11 14 00       	push   $0x1411cc
  103690:	83 ec 08             	sub    $0x8,%esp
  103693:	89 e0                	mov    %esp,%eax
  103695:	8b 55 ec             	mov    -0x14(%ebp),%edx
  103698:	89 10                	mov    %edx,(%eax)
  10369a:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  10369e:	66 89 50 04          	mov    %dx,0x4(%eax)
  1036a2:	e8 6b 14 00 00       	call   104b12 <cmos_datetime_to_str>
  1036a7:	83 c4 10             	add    $0x10,%esp
  1036aa:	83 ec 0c             	sub    $0xc,%esp
  1036ad:	68 e0 09 14 00       	push   $0x1409e0
  1036b2:	e8 13 4b 00 00       	call   1081ca <__redirect_printf__>
  1036b7:	83 c4 10             	add    $0x10,%esp
  1036ba:	83 ec 04             	sub    $0x4,%esp
  1036bd:	68 e0 0d 14 00       	push   $0x140de0
  1036c2:	68 cc 11 14 00       	push   $0x1411cc
  1036c7:	68 56 a2 10 00       	push   $0x10a256
  1036cc:	e8 e1 53 00 00       	call   108ab2 <printf>
  1036d1:	83 c4 10             	add    $0x10,%esp
  1036d4:	83 ec 0c             	sub    $0xc,%esp
  1036d7:	6a 00                	push   $0x0
  1036d9:	e8 ec 4a 00 00       	call   1081ca <__redirect_printf__>
  1036de:	83 c4 10             	add    $0x10,%esp
  1036e1:	83 ec 08             	sub    $0x8,%esp
  1036e4:	68 e0 09 14 00       	push   $0x1409e0
  1036e9:	68 f8 03 00 00       	push   $0x3f8
  1036ee:	e8 17 eb ff ff       	call   10220a <com_write>
  1036f3:	83 c4 10             	add    $0x10,%esp
  1036f6:	83 ec 04             	sub    $0x4,%esp
  1036f9:	68 00 04 00 00       	push   $0x400
  1036fe:	6a 00                	push   $0x0
  103700:	68 e0 09 14 00       	push   $0x1409e0
  103705:	e8 21 57 00 00       	call   108e2b <memset>
  10370a:	83 c4 10             	add    $0x10,%esp
  10370d:	83 ec 04             	sub    $0x4,%esp
  103710:	68 ec 03 00 00       	push   $0x3ec
  103715:	6a 00                	push   $0x0
  103717:	68 e0 0d 14 00       	push   $0x140de0
  10371c:	e8 0a 57 00 00       	call   108e2b <memset>
  103721:	83 c4 10             	add    $0x10,%esp
  103724:	83 ec 04             	sub    $0x4,%esp
  103727:	6a 14                	push   $0x14
  103729:	6a 00                	push   $0x0
  10372b:	68 cc 11 14 00       	push   $0x1411cc
  103730:	e8 f6 56 00 00       	call   108e2b <memset>
  103735:	83 c4 10             	add    $0x10,%esp
  103738:	e9 41 01 00 00       	jmp    10387e <acpi_shutdown+0x345>
  10373d:	83 ec 0c             	sub    $0xc,%esp
  103740:	68 e0 0d 14 00       	push   $0x140de0
  103745:	e8 80 4a 00 00       	call   1081ca <__redirect_printf__>
  10374a:	83 c4 10             	add    $0x10,%esp
  10374d:	83 ec 0c             	sub    $0xc,%esp
  103750:	68 9c a3 10 00       	push   $0x10a39c
  103755:	e8 58 53 00 00       	call   108ab2 <printf>
  10375a:	83 c4 10             	add    $0x10,%esp
  10375d:	83 ec 0c             	sub    $0xc,%esp
  103760:	6a 00                	push   $0x0
  103762:	e8 63 4a 00 00       	call   1081ca <__redirect_printf__>
  103767:	83 c4 10             	add    $0x10,%esp
  10376a:	83 ec 0c             	sub    $0xc,%esp
  10376d:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  103770:	50                   	push   %eax
  103771:	e8 37 ef ff ff       	call   1026ad <cmos_read_rtc>
  103776:	83 c4 10             	add    $0x10,%esp
  103779:	83 ec 04             	sub    $0x4,%esp
  10377c:	68 cc 11 14 00       	push   $0x1411cc
  103781:	83 ec 08             	sub    $0x8,%esp
  103784:	89 e0                	mov    %esp,%eax
  103786:	8b 55 e6             	mov    -0x1a(%ebp),%edx
  103789:	89 10                	mov    %edx,(%eax)
  10378b:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  10378f:	66 89 50 04          	mov    %dx,0x4(%eax)
  103793:	e8 7a 13 00 00       	call   104b12 <cmos_datetime_to_str>
  103798:	83 c4 10             	add    $0x10,%esp
  10379b:	83 ec 0c             	sub    $0xc,%esp
  10379e:	68 e0 09 14 00       	push   $0x1409e0
  1037a3:	e8 22 4a 00 00       	call   1081ca <__redirect_printf__>
  1037a8:	83 c4 10             	add    $0x10,%esp
  1037ab:	83 ec 04             	sub    $0x4,%esp
  1037ae:	68 e0 0d 14 00       	push   $0x140de0
  1037b3:	68 cc 11 14 00       	push   $0x1411cc
  1037b8:	68 56 a2 10 00       	push   $0x10a256
  1037bd:	e8 f0 52 00 00       	call   108ab2 <printf>
  1037c2:	83 c4 10             	add    $0x10,%esp
  1037c5:	83 ec 0c             	sub    $0xc,%esp
  1037c8:	6a 00                	push   $0x0
  1037ca:	e8 fb 49 00 00       	call   1081ca <__redirect_printf__>
  1037cf:	83 c4 10             	add    $0x10,%esp
  1037d2:	83 ec 08             	sub    $0x8,%esp
  1037d5:	68 e0 09 14 00       	push   $0x1409e0
  1037da:	68 f8 03 00 00       	push   $0x3f8
  1037df:	e8 26 ea ff ff       	call   10220a <com_write>
  1037e4:	83 c4 10             	add    $0x10,%esp
  1037e7:	83 ec 04             	sub    $0x4,%esp
  1037ea:	68 00 04 00 00       	push   $0x400
  1037ef:	6a 00                	push   $0x0
  1037f1:	68 e0 09 14 00       	push   $0x1409e0
  1037f6:	e8 30 56 00 00       	call   108e2b <memset>
  1037fb:	83 c4 10             	add    $0x10,%esp
  1037fe:	83 ec 04             	sub    $0x4,%esp
  103801:	68 ec 03 00 00       	push   $0x3ec
  103806:	6a 00                	push   $0x0
  103808:	68 e0 0d 14 00       	push   $0x140de0
  10380d:	e8 19 56 00 00       	call   108e2b <memset>
  103812:	83 c4 10             	add    $0x10,%esp
  103815:	83 ec 04             	sub    $0x4,%esp
  103818:	6a 14                	push   $0x14
  10381a:	6a 00                	push   $0x0
  10381c:	68 cc 11 14 00       	push   $0x1411cc
  103821:	e8 05 56 00 00       	call   108e2b <memset>
  103826:	83 c4 10             	add    $0x10,%esp
  103829:	0f b7 15 f8 08 14 00 	movzwl 0x1408f8,%edx
  103830:	0f b7 05 fc 08 14 00 	movzwl 0x1408fc,%eax
  103837:	09 d0                	or     %edx,%eax
  103839:	0f b7 c0             	movzwl %ax,%eax
  10383c:	8b 15 f0 08 14 00    	mov    0x1408f0,%edx
  103842:	83 ec 08             	sub    $0x8,%esp
  103845:	50                   	push   %eax
  103846:	52                   	push   %edx
  103847:	e8 9e ce ff ff       	call   1006ea <outw>
  10384c:	83 c4 10             	add    $0x10,%esp
  10384f:	a1 f4 08 14 00       	mov    0x1408f4,%eax
  103854:	85 c0                	test   %eax,%eax
  103856:	74 26                	je     10387e <acpi_shutdown+0x345>
  103858:	0f b7 15 fa 08 14 00 	movzwl 0x1408fa,%edx
  10385f:	0f b7 05 fc 08 14 00 	movzwl 0x1408fc,%eax
  103866:	09 d0                	or     %edx,%eax
  103868:	0f b7 c0             	movzwl %ax,%eax
  10386b:	8b 15 f4 08 14 00    	mov    0x1408f4,%edx
  103871:	83 ec 08             	sub    $0x8,%esp
  103874:	50                   	push   %eax
  103875:	52                   	push   %edx
  103876:	e8 6f ce ff ff       	call   1006ea <outw>
  10387b:	83 c4 10             	add    $0x10,%esp
  10387e:	90                   	nop
  10387f:	c9                   	leave  
  103880:	c3                   	ret    

00103881 <acpi_is_enabled>:
  103881:	55                   	push   %ebp
  103882:	89 e5                	mov    %esp,%ebp
  103884:	0f b6 05 03 09 14 00 	movzbl 0x140903,%eax
  10388b:	5d                   	pop    %ebp
  10388c:	c3                   	ret    

0010388d <acpi_is_initialized>:
  10388d:	55                   	push   %ebp
  10388e:	89 e5                	mov    %esp,%ebp
  103890:	0f b7 05 fe 08 14 00 	movzwl 0x1408fe,%eax
  103897:	66 85 c0             	test   %ax,%ax
  10389a:	0f 95 c0             	setne  %al
  10389d:	5d                   	pop    %ebp
  10389e:	c3                   	ret    

0010389f <acpi_get_boot_arch_flags>:
  10389f:	55                   	push   %ebp
  1038a0:	89 e5                	mov    %esp,%ebp
  1038a2:	0f b7 05 00 09 14 00 	movzwl 0x140900,%eax
  1038a9:	5d                   	pop    %ebp
  1038aa:	c3                   	ret    

001038ab <pit_get_count>:
  1038ab:	55                   	push   %ebp
  1038ac:	89 e5                	mov    %esp,%ebp
  1038ae:	83 ec 18             	sub    $0x18,%esp
  1038b1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1038b8:	c7 05 0c 09 14 00 00 	movl   $0x0,0x14090c
  1038bf:	00 00 00 
  1038c2:	83 ec 08             	sub    $0x8,%esp
  1038c5:	6a 00                	push   $0x0
  1038c7:	6a 43                	push   $0x43
  1038c9:	e8 f2 cd ff ff       	call   1006c0 <outb>
  1038ce:	83 c4 10             	add    $0x10,%esp
  1038d1:	83 ec 0c             	sub    $0xc,%esp
  1038d4:	6a 40                	push   $0x40
  1038d6:	e8 cc cd ff ff       	call   1006a7 <inb>
  1038db:	83 c4 10             	add    $0x10,%esp
  1038de:	88 45 f3             	mov    %al,-0xd(%ebp)
  1038e1:	83 ec 0c             	sub    $0xc,%esp
  1038e4:	6a 40                	push   $0x40
  1038e6:	e8 bc cd ff ff       	call   1006a7 <inb>
  1038eb:	83 c4 10             	add    $0x10,%esp
  1038ee:	88 45 f2             	mov    %al,-0xe(%ebp)
  1038f1:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1038f5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1038f8:	80 7d f2 07          	cmpb   $0x7,-0xe(%ebp)
  1038fc:	0f 96 c0             	setbe  %al
  1038ff:	0f b6 c0             	movzbl %al,%eax
  103902:	09 45 f4             	or     %eax,-0xc(%ebp)
  103905:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103908:	c9                   	leave  
  103909:	c3                   	ret    

0010390a <pit_set_count>:
  10390a:	55                   	push   %ebp
  10390b:	89 e5                	mov    %esp,%ebp
  10390d:	83 ec 08             	sub    $0x8,%esp
  103910:	8b 45 08             	mov    0x8(%ebp),%eax
  103913:	0f b6 c0             	movzbl %al,%eax
  103916:	83 ec 08             	sub    $0x8,%esp
  103919:	50                   	push   %eax
  10391a:	6a 40                	push   $0x40
  10391c:	e8 9f cd ff ff       	call   1006c0 <outb>
  103921:	83 c4 10             	add    $0x10,%esp
  103924:	8b 45 08             	mov    0x8(%ebp),%eax
  103927:	c1 e8 08             	shr    $0x8,%eax
  10392a:	0f b6 c0             	movzbl %al,%eax
  10392d:	83 ec 08             	sub    $0x8,%esp
  103930:	50                   	push   %eax
  103931:	6a 40                	push   $0x40
  103933:	e8 88 cd ff ff       	call   1006c0 <outb>
  103938:	83 c4 10             	add    $0x10,%esp
  10393b:	90                   	nop
  10393c:	c9                   	leave  
  10393d:	c3                   	ret    

0010393e <pit_init>:
  10393e:	55                   	push   %ebp
  10393f:	89 e5                	mov    %esp,%ebp
  103941:	83 ec 18             	sub    $0x18,%esp
  103944:	c7 05 04 09 14 00 00 	movl   $0x0,0x140904
  10394b:	00 00 00 
  10394e:	c7 05 08 09 14 00 00 	movl   $0x0,0x140908
  103955:	00 00 00 
  103958:	66 c7 45 f6 9b 2e    	movw   $0x2e9b,-0xa(%ebp)
  10395e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  103962:	88 45 f5             	mov    %al,-0xb(%ebp)
  103965:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  103969:	66 c1 e8 08          	shr    $0x8,%ax
  10396d:	88 45 f4             	mov    %al,-0xc(%ebp)
  103970:	83 ec 08             	sub    $0x8,%esp
  103973:	6a 37                	push   $0x37
  103975:	6a 43                	push   $0x43
  103977:	e8 44 cd ff ff       	call   1006c0 <outb>
  10397c:	83 c4 10             	add    $0x10,%esp
  10397f:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
  103983:	83 ec 08             	sub    $0x8,%esp
  103986:	50                   	push   %eax
  103987:	6a 40                	push   $0x40
  103989:	e8 32 cd ff ff       	call   1006c0 <outb>
  10398e:	83 c4 10             	add    $0x10,%esp
  103991:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
  103995:	83 ec 08             	sub    $0x8,%esp
  103998:	50                   	push   %eax
  103999:	6a 40                	push   $0x40
  10399b:	e8 20 cd ff ff       	call   1006c0 <outb>
  1039a0:	83 c4 10             	add    $0x10,%esp
  1039a3:	83 ec 08             	sub    $0x8,%esp
  1039a6:	68 f0 39 10 00       	push   $0x1039f0
  1039ab:	6a 20                	push   $0x20
  1039ad:	e8 9c d7 ff ff       	call   10114e <isr_register>
  1039b2:	83 c4 10             	add    $0x10,%esp
  1039b5:	90                   	nop
  1039b6:	c9                   	leave  
  1039b7:	c3                   	ret    

001039b8 <pit_get_millis>:
  1039b8:	55                   	push   %ebp
  1039b9:	89 e5                	mov    %esp,%ebp
  1039bb:	a1 08 09 14 00       	mov    0x140908,%eax
  1039c0:	5d                   	pop    %ebp
  1039c1:	c3                   	ret    

001039c2 <pit_get_seconds>:
  1039c2:	55                   	push   %ebp
  1039c3:	89 e5                	mov    %esp,%ebp
  1039c5:	a1 08 09 14 00       	mov    0x140908,%eax
  1039ca:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  1039cf:	f7 e2                	mul    %edx
  1039d1:	89 d0                	mov    %edx,%eax
  1039d3:	c1 e8 06             	shr    $0x6,%eax
  1039d6:	5d                   	pop    %ebp
  1039d7:	c3                   	ret    

001039d8 <pit_get_ticks>:
  1039d8:	55                   	push   %ebp
  1039d9:	89 e5                	mov    %esp,%ebp
  1039db:	a1 04 09 14 00       	mov    0x140904,%eax
  1039e0:	5d                   	pop    %ebp
  1039e1:	c3                   	ret    

001039e2 <pit_set_callback>:
  1039e2:	55                   	push   %ebp
  1039e3:	89 e5                	mov    %esp,%ebp
  1039e5:	8b 45 08             	mov    0x8(%ebp),%eax
  1039e8:	a3 0c 09 14 00       	mov    %eax,0x14090c
  1039ed:	90                   	nop
  1039ee:	5d                   	pop    %ebp
  1039ef:	c3                   	ret    

001039f0 <pit_irq0_handler>:
  1039f0:	55                   	push   %ebp
  1039f1:	89 e5                	mov    %esp,%ebp
  1039f3:	83 ec 08             	sub    $0x8,%esp
  1039f6:	a1 04 09 14 00       	mov    0x140904,%eax
  1039fb:	83 c0 01             	add    $0x1,%eax
  1039fe:	a3 04 09 14 00       	mov    %eax,0x140904
  103a03:	8b 15 04 09 14 00    	mov    0x140904,%edx
  103a09:	89 d0                	mov    %edx,%eax
  103a0b:	01 c0                	add    %eax,%eax
  103a0d:	01 d0                	add    %edx,%eax
  103a0f:	a3 08 09 14 00       	mov    %eax,0x140908
  103a14:	83 ec 08             	sub    $0x8,%esp
  103a17:	6a 20                	push   $0x20
  103a19:	6a 20                	push   $0x20
  103a1b:	e8 a0 cc ff ff       	call   1006c0 <outb>
  103a20:	83 c4 10             	add    $0x10,%esp
  103a23:	a1 0c 09 14 00       	mov    0x14090c,%eax
  103a28:	85 c0                	test   %eax,%eax
  103a2a:	74 1b                	je     103a47 <pit_irq0_handler+0x57>
  103a2c:	a1 0c 09 14 00       	mov    0x14090c,%eax
  103a31:	8b 0d 08 09 14 00    	mov    0x140908,%ecx
  103a37:	8b 15 04 09 14 00    	mov    0x140904,%edx
  103a3d:	83 ec 08             	sub    $0x8,%esp
  103a40:	51                   	push   %ecx
  103a41:	52                   	push   %edx
  103a42:	ff d0                	call   *%eax
  103a44:	83 c4 10             	add    $0x10,%esp
  103a47:	90                   	nop
  103a48:	c9                   	leave  
  103a49:	c3                   	ret    

00103a4a <keyboard_init>:
  103a4a:	55                   	push   %ebp
  103a4b:	89 e5                	mov    %esp,%ebp
  103a4d:	83 ec 28             	sub    $0x28,%esp
  103a50:	8b 45 08             	mov    0x8(%ebp),%eax
  103a53:	88 45 e4             	mov    %al,-0x1c(%ebp)
  103a56:	c6 05 10 09 14 00 00 	movb   $0x0,0x140910
  103a5d:	c6 05 11 09 14 00 00 	movb   $0x0,0x140911
  103a64:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  103a68:	a2 12 09 14 00       	mov    %al,0x140912
  103a6d:	83 ec 08             	sub    $0x8,%esp
  103a70:	68 6e 3b 10 00       	push   $0x103b6e
  103a75:	6a 21                	push   $0x21
  103a77:	e8 d2 d6 ff ff       	call   10114e <isr_register>
  103a7c:	83 c4 10             	add    $0x10,%esp
  103a7f:	83 ec 0c             	sub    $0xc,%esp
  103a82:	68 e0 0d 14 00       	push   $0x140de0
  103a87:	e8 3e 47 00 00       	call   1081ca <__redirect_printf__>
  103a8c:	83 c4 10             	add    $0x10,%esp
  103a8f:	83 ec 0c             	sub    $0xc,%esp
  103a92:	68 ac a3 10 00       	push   $0x10a3ac
  103a97:	e8 16 50 00 00       	call   108ab2 <printf>
  103a9c:	83 c4 10             	add    $0x10,%esp
  103a9f:	83 ec 0c             	sub    $0xc,%esp
  103aa2:	6a 00                	push   $0x0
  103aa4:	e8 21 47 00 00       	call   1081ca <__redirect_printf__>
  103aa9:	83 c4 10             	add    $0x10,%esp
  103aac:	83 ec 0c             	sub    $0xc,%esp
  103aaf:	8d 45 f2             	lea    -0xe(%ebp),%eax
  103ab2:	50                   	push   %eax
  103ab3:	e8 f5 eb ff ff       	call   1026ad <cmos_read_rtc>
  103ab8:	83 c4 10             	add    $0x10,%esp
  103abb:	83 ec 04             	sub    $0x4,%esp
  103abe:	68 cc 11 14 00       	push   $0x1411cc
  103ac3:	83 ec 08             	sub    $0x8,%esp
  103ac6:	89 e0                	mov    %esp,%eax
  103ac8:	8b 55 f2             	mov    -0xe(%ebp),%edx
  103acb:	89 10                	mov    %edx,(%eax)
  103acd:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  103ad1:	66 89 50 04          	mov    %dx,0x4(%eax)
  103ad5:	e8 38 10 00 00       	call   104b12 <cmos_datetime_to_str>
  103ada:	83 c4 10             	add    $0x10,%esp
  103add:	83 ec 0c             	sub    $0xc,%esp
  103ae0:	68 e0 09 14 00       	push   $0x1409e0
  103ae5:	e8 e0 46 00 00       	call   1081ca <__redirect_printf__>
  103aea:	83 c4 10             	add    $0x10,%esp
  103aed:	83 ec 04             	sub    $0x4,%esp
  103af0:	68 e0 0d 14 00       	push   $0x140de0
  103af5:	68 cc 11 14 00       	push   $0x1411cc
  103afa:	68 c2 a3 10 00       	push   $0x10a3c2
  103aff:	e8 ae 4f 00 00       	call   108ab2 <printf>
  103b04:	83 c4 10             	add    $0x10,%esp
  103b07:	83 ec 0c             	sub    $0xc,%esp
  103b0a:	6a 00                	push   $0x0
  103b0c:	e8 b9 46 00 00       	call   1081ca <__redirect_printf__>
  103b11:	83 c4 10             	add    $0x10,%esp
  103b14:	83 ec 08             	sub    $0x8,%esp
  103b17:	68 e0 09 14 00       	push   $0x1409e0
  103b1c:	68 f8 03 00 00       	push   $0x3f8
  103b21:	e8 e4 e6 ff ff       	call   10220a <com_write>
  103b26:	83 c4 10             	add    $0x10,%esp
  103b29:	83 ec 04             	sub    $0x4,%esp
  103b2c:	68 00 04 00 00       	push   $0x400
  103b31:	6a 00                	push   $0x0
  103b33:	68 e0 09 14 00       	push   $0x1409e0
  103b38:	e8 ee 52 00 00       	call   108e2b <memset>
  103b3d:	83 c4 10             	add    $0x10,%esp
  103b40:	83 ec 04             	sub    $0x4,%esp
  103b43:	68 ec 03 00 00       	push   $0x3ec
  103b48:	6a 00                	push   $0x0
  103b4a:	68 e0 0d 14 00       	push   $0x140de0
  103b4f:	e8 d7 52 00 00       	call   108e2b <memset>
  103b54:	83 c4 10             	add    $0x10,%esp
  103b57:	83 ec 04             	sub    $0x4,%esp
  103b5a:	6a 14                	push   $0x14
  103b5c:	6a 00                	push   $0x0
  103b5e:	68 cc 11 14 00       	push   $0x1411cc
  103b63:	e8 c3 52 00 00       	call   108e2b <memset>
  103b68:	83 c4 10             	add    $0x10,%esp
  103b6b:	90                   	nop
  103b6c:	c9                   	leave  
  103b6d:	c3                   	ret    

00103b6e <keyboard_irq_handler>:
  103b6e:	55                   	push   %ebp
  103b6f:	89 e5                	mov    %esp,%ebp
  103b71:	83 ec 18             	sub    $0x18,%esp
  103b74:	0f b6 05 12 09 14 00 	movzbl 0x140912,%eax
  103b7b:	0f b6 c0             	movzbl %al,%eax
  103b7e:	83 ec 0c             	sub    $0xc,%esp
  103b81:	50                   	push   %eax
  103b82:	e8 20 cb ff ff       	call   1006a7 <inb>
  103b87:	83 c4 10             	add    $0x10,%esp
  103b8a:	88 45 f6             	mov    %al,-0xa(%ebp)
  103b8d:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
  103b91:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  103b95:	3d ba 00 00 00       	cmp    $0xba,%eax
  103b9a:	0f 87 63 06 00 00    	ja     104203 <keyboard_irq_handler+0x695>
  103ba0:	8b 04 85 f8 a3 10 00 	mov    0x10a3f8(,%eax,4),%eax
  103ba7:	ff e0                	jmp    *%eax
  103ba9:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103bb0:	3c 01                	cmp    $0x1,%al
  103bb2:	75 07                	jne    103bbb <keyboard_irq_handler+0x4d>
  103bb4:	b8 21 00 00 00       	mov    $0x21,%eax
  103bb9:	eb 05                	jmp    103bc0 <keyboard_irq_handler+0x52>
  103bbb:	b8 31 00 00 00       	mov    $0x31,%eax
  103bc0:	88 45 f7             	mov    %al,-0x9(%ebp)
  103bc3:	e9 2f 07 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103bc8:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103bcf:	3c 01                	cmp    $0x1,%al
  103bd1:	75 07                	jne    103bda <keyboard_irq_handler+0x6c>
  103bd3:	b8 22 00 00 00       	mov    $0x22,%eax
  103bd8:	eb 05                	jmp    103bdf <keyboard_irq_handler+0x71>
  103bda:	b8 32 00 00 00       	mov    $0x32,%eax
  103bdf:	88 45 f7             	mov    %al,-0x9(%ebp)
  103be2:	e9 10 07 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103be7:	c6 45 f7 33          	movb   $0x33,-0x9(%ebp)
  103beb:	e9 07 07 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103bf0:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103bf7:	3c 01                	cmp    $0x1,%al
  103bf9:	75 07                	jne    103c02 <keyboard_irq_handler+0x94>
  103bfb:	b8 24 00 00 00       	mov    $0x24,%eax
  103c00:	eb 05                	jmp    103c07 <keyboard_irq_handler+0x99>
  103c02:	b8 34 00 00 00       	mov    $0x34,%eax
  103c07:	88 45 f7             	mov    %al,-0x9(%ebp)
  103c0a:	e9 e8 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103c0f:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103c16:	3c 01                	cmp    $0x1,%al
  103c18:	75 07                	jne    103c21 <keyboard_irq_handler+0xb3>
  103c1a:	b8 25 00 00 00       	mov    $0x25,%eax
  103c1f:	eb 05                	jmp    103c26 <keyboard_irq_handler+0xb8>
  103c21:	b8 35 00 00 00       	mov    $0x35,%eax
  103c26:	88 45 f7             	mov    %al,-0x9(%ebp)
  103c29:	e9 c9 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103c2e:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103c35:	3c 01                	cmp    $0x1,%al
  103c37:	75 07                	jne    103c40 <keyboard_irq_handler+0xd2>
  103c39:	b8 26 00 00 00       	mov    $0x26,%eax
  103c3e:	eb 05                	jmp    103c45 <keyboard_irq_handler+0xd7>
  103c40:	b8 36 00 00 00       	mov    $0x36,%eax
  103c45:	88 45 f7             	mov    %al,-0x9(%ebp)
  103c48:	e9 aa 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103c4d:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103c54:	3c 01                	cmp    $0x1,%al
  103c56:	75 07                	jne    103c5f <keyboard_irq_handler+0xf1>
  103c58:	b8 2f 00 00 00       	mov    $0x2f,%eax
  103c5d:	eb 05                	jmp    103c64 <keyboard_irq_handler+0xf6>
  103c5f:	b8 37 00 00 00       	mov    $0x37,%eax
  103c64:	88 45 f7             	mov    %al,-0x9(%ebp)
  103c67:	e9 8b 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103c6c:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103c73:	3c 01                	cmp    $0x1,%al
  103c75:	75 07                	jne    103c7e <keyboard_irq_handler+0x110>
  103c77:	b8 28 00 00 00       	mov    $0x28,%eax
  103c7c:	eb 05                	jmp    103c83 <keyboard_irq_handler+0x115>
  103c7e:	b8 38 00 00 00       	mov    $0x38,%eax
  103c83:	88 45 f7             	mov    %al,-0x9(%ebp)
  103c86:	e9 6c 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103c8b:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103c92:	3c 01                	cmp    $0x1,%al
  103c94:	75 07                	jne    103c9d <keyboard_irq_handler+0x12f>
  103c96:	b8 29 00 00 00       	mov    $0x29,%eax
  103c9b:	eb 05                	jmp    103ca2 <keyboard_irq_handler+0x134>
  103c9d:	b8 39 00 00 00       	mov    $0x39,%eax
  103ca2:	88 45 f7             	mov    %al,-0x9(%ebp)
  103ca5:	e9 4d 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103caa:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103cb1:	3c 01                	cmp    $0x1,%al
  103cb3:	75 07                	jne    103cbc <keyboard_irq_handler+0x14e>
  103cb5:	b8 3d 00 00 00       	mov    $0x3d,%eax
  103cba:	eb 05                	jmp    103cc1 <keyboard_irq_handler+0x153>
  103cbc:	b8 30 00 00 00       	mov    $0x30,%eax
  103cc1:	88 45 f7             	mov    %al,-0x9(%ebp)
  103cc4:	e9 2e 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103cc9:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103cd0:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103cd7:	38 c2                	cmp    %al,%dl
  103cd9:	75 07                	jne    103ce2 <keyboard_irq_handler+0x174>
  103cdb:	b8 71 00 00 00       	mov    $0x71,%eax
  103ce0:	eb 05                	jmp    103ce7 <keyboard_irq_handler+0x179>
  103ce2:	b8 51 00 00 00       	mov    $0x51,%eax
  103ce7:	88 45 f7             	mov    %al,-0x9(%ebp)
  103cea:	e9 08 06 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103cef:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103cf6:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103cfd:	38 c2                	cmp    %al,%dl
  103cff:	75 07                	jne    103d08 <keyboard_irq_handler+0x19a>
  103d01:	b8 77 00 00 00       	mov    $0x77,%eax
  103d06:	eb 05                	jmp    103d0d <keyboard_irq_handler+0x19f>
  103d08:	b8 57 00 00 00       	mov    $0x57,%eax
  103d0d:	88 45 f7             	mov    %al,-0x9(%ebp)
  103d10:	e9 e2 05 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103d15:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103d1c:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103d23:	38 c2                	cmp    %al,%dl
  103d25:	75 07                	jne    103d2e <keyboard_irq_handler+0x1c0>
  103d27:	b8 65 00 00 00       	mov    $0x65,%eax
  103d2c:	eb 05                	jmp    103d33 <keyboard_irq_handler+0x1c5>
  103d2e:	b8 45 00 00 00       	mov    $0x45,%eax
  103d33:	88 45 f7             	mov    %al,-0x9(%ebp)
  103d36:	e9 bc 05 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103d3b:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103d42:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103d49:	38 c2                	cmp    %al,%dl
  103d4b:	75 07                	jne    103d54 <keyboard_irq_handler+0x1e6>
  103d4d:	b8 72 00 00 00       	mov    $0x72,%eax
  103d52:	eb 05                	jmp    103d59 <keyboard_irq_handler+0x1eb>
  103d54:	b8 52 00 00 00       	mov    $0x52,%eax
  103d59:	88 45 f7             	mov    %al,-0x9(%ebp)
  103d5c:	e9 96 05 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103d61:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103d68:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103d6f:	38 c2                	cmp    %al,%dl
  103d71:	75 07                	jne    103d7a <keyboard_irq_handler+0x20c>
  103d73:	b8 74 00 00 00       	mov    $0x74,%eax
  103d78:	eb 05                	jmp    103d7f <keyboard_irq_handler+0x211>
  103d7a:	b8 54 00 00 00       	mov    $0x54,%eax
  103d7f:	88 45 f7             	mov    %al,-0x9(%ebp)
  103d82:	e9 70 05 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103d87:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103d8e:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103d95:	38 c2                	cmp    %al,%dl
  103d97:	75 07                	jne    103da0 <keyboard_irq_handler+0x232>
  103d99:	b8 79 00 00 00       	mov    $0x79,%eax
  103d9e:	eb 05                	jmp    103da5 <keyboard_irq_handler+0x237>
  103da0:	b8 59 00 00 00       	mov    $0x59,%eax
  103da5:	88 45 f7             	mov    %al,-0x9(%ebp)
  103da8:	e9 4a 05 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103dad:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103db4:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103dbb:	38 c2                	cmp    %al,%dl
  103dbd:	75 07                	jne    103dc6 <keyboard_irq_handler+0x258>
  103dbf:	b8 75 00 00 00       	mov    $0x75,%eax
  103dc4:	eb 05                	jmp    103dcb <keyboard_irq_handler+0x25d>
  103dc6:	b8 55 00 00 00       	mov    $0x55,%eax
  103dcb:	88 45 f7             	mov    %al,-0x9(%ebp)
  103dce:	e9 24 05 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103dd3:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103dda:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103de1:	38 c2                	cmp    %al,%dl
  103de3:	75 07                	jne    103dec <keyboard_irq_handler+0x27e>
  103de5:	b8 69 00 00 00       	mov    $0x69,%eax
  103dea:	eb 05                	jmp    103df1 <keyboard_irq_handler+0x283>
  103dec:	b8 49 00 00 00       	mov    $0x49,%eax
  103df1:	88 45 f7             	mov    %al,-0x9(%ebp)
  103df4:	e9 fe 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103df9:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103e00:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103e07:	38 c2                	cmp    %al,%dl
  103e09:	75 07                	jne    103e12 <keyboard_irq_handler+0x2a4>
  103e0b:	b8 6f 00 00 00       	mov    $0x6f,%eax
  103e10:	eb 05                	jmp    103e17 <keyboard_irq_handler+0x2a9>
  103e12:	b8 4f 00 00 00       	mov    $0x4f,%eax
  103e17:	88 45 f7             	mov    %al,-0x9(%ebp)
  103e1a:	e9 d8 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103e1f:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103e26:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103e2d:	38 c2                	cmp    %al,%dl
  103e2f:	75 07                	jne    103e38 <keyboard_irq_handler+0x2ca>
  103e31:	b8 70 00 00 00       	mov    $0x70,%eax
  103e36:	eb 05                	jmp    103e3d <keyboard_irq_handler+0x2cf>
  103e38:	b8 50 00 00 00       	mov    $0x50,%eax
  103e3d:	88 45 f7             	mov    %al,-0x9(%ebp)
  103e40:	e9 b2 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103e45:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103e4c:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103e53:	38 c2                	cmp    %al,%dl
  103e55:	75 07                	jne    103e5e <keyboard_irq_handler+0x2f0>
  103e57:	b8 65 00 00 00       	mov    $0x65,%eax
  103e5c:	eb 05                	jmp    103e63 <keyboard_irq_handler+0x2f5>
  103e5e:	b8 45 00 00 00       	mov    $0x45,%eax
  103e63:	88 45 f7             	mov    %al,-0x9(%ebp)
  103e66:	e9 8c 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103e6b:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  103e72:	84 c0                	test   %al,%al
  103e74:	74 07                	je     103e7d <keyboard_irq_handler+0x30f>
  103e76:	b8 2a 00 00 00       	mov    $0x2a,%eax
  103e7b:	eb 05                	jmp    103e82 <keyboard_irq_handler+0x314>
  103e7d:	b8 2b 00 00 00       	mov    $0x2b,%eax
  103e82:	88 45 f7             	mov    %al,-0x9(%ebp)
  103e85:	e9 6d 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103e8a:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103e91:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103e98:	38 c2                	cmp    %al,%dl
  103e9a:	75 07                	jne    103ea3 <keyboard_irq_handler+0x335>
  103e9c:	b8 61 00 00 00       	mov    $0x61,%eax
  103ea1:	eb 05                	jmp    103ea8 <keyboard_irq_handler+0x33a>
  103ea3:	b8 41 00 00 00       	mov    $0x41,%eax
  103ea8:	88 45 f7             	mov    %al,-0x9(%ebp)
  103eab:	e9 47 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103eb0:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103eb7:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103ebe:	38 c2                	cmp    %al,%dl
  103ec0:	75 07                	jne    103ec9 <keyboard_irq_handler+0x35b>
  103ec2:	b8 73 00 00 00       	mov    $0x73,%eax
  103ec7:	eb 05                	jmp    103ece <keyboard_irq_handler+0x360>
  103ec9:	b8 53 00 00 00       	mov    $0x53,%eax
  103ece:	88 45 f7             	mov    %al,-0x9(%ebp)
  103ed1:	e9 21 04 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103ed6:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103edd:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103ee4:	38 c2                	cmp    %al,%dl
  103ee6:	75 07                	jne    103eef <keyboard_irq_handler+0x381>
  103ee8:	b8 64 00 00 00       	mov    $0x64,%eax
  103eed:	eb 05                	jmp    103ef4 <keyboard_irq_handler+0x386>
  103eef:	b8 44 00 00 00       	mov    $0x44,%eax
  103ef4:	88 45 f7             	mov    %al,-0x9(%ebp)
  103ef7:	e9 fb 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103efc:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103f03:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103f0a:	38 c2                	cmp    %al,%dl
  103f0c:	75 07                	jne    103f15 <keyboard_irq_handler+0x3a7>
  103f0e:	b8 66 00 00 00       	mov    $0x66,%eax
  103f13:	eb 05                	jmp    103f1a <keyboard_irq_handler+0x3ac>
  103f15:	b8 46 00 00 00       	mov    $0x46,%eax
  103f1a:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f1d:	e9 d5 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103f22:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103f29:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103f30:	38 c2                	cmp    %al,%dl
  103f32:	75 07                	jne    103f3b <keyboard_irq_handler+0x3cd>
  103f34:	b8 67 00 00 00       	mov    $0x67,%eax
  103f39:	eb 05                	jmp    103f40 <keyboard_irq_handler+0x3d2>
  103f3b:	b8 47 00 00 00       	mov    $0x47,%eax
  103f40:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f43:	e9 af 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103f48:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103f4f:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103f56:	38 c2                	cmp    %al,%dl
  103f58:	75 07                	jne    103f61 <keyboard_irq_handler+0x3f3>
  103f5a:	b8 68 00 00 00       	mov    $0x68,%eax
  103f5f:	eb 05                	jmp    103f66 <keyboard_irq_handler+0x3f8>
  103f61:	b8 48 00 00 00       	mov    $0x48,%eax
  103f66:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f69:	e9 89 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103f6e:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103f75:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103f7c:	38 c2                	cmp    %al,%dl
  103f7e:	75 07                	jne    103f87 <keyboard_irq_handler+0x419>
  103f80:	b8 6a 00 00 00       	mov    $0x6a,%eax
  103f85:	eb 05                	jmp    103f8c <keyboard_irq_handler+0x41e>
  103f87:	b8 4a 00 00 00       	mov    $0x4a,%eax
  103f8c:	88 45 f7             	mov    %al,-0x9(%ebp)
  103f8f:	e9 63 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103f94:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103f9b:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103fa2:	38 c2                	cmp    %al,%dl
  103fa4:	75 07                	jne    103fad <keyboard_irq_handler+0x43f>
  103fa6:	b8 6b 00 00 00       	mov    $0x6b,%eax
  103fab:	eb 05                	jmp    103fb2 <keyboard_irq_handler+0x444>
  103fad:	b8 4b 00 00 00       	mov    $0x4b,%eax
  103fb2:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fb5:	e9 3d 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103fba:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103fc1:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103fc8:	38 c2                	cmp    %al,%dl
  103fca:	75 07                	jne    103fd3 <keyboard_irq_handler+0x465>
  103fcc:	b8 6c 00 00 00       	mov    $0x6c,%eax
  103fd1:	eb 05                	jmp    103fd8 <keyboard_irq_handler+0x46a>
  103fd3:	b8 4c 00 00 00       	mov    $0x4c,%eax
  103fd8:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fdb:	e9 17 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103fe0:	c6 45 f7 5c          	movb   $0x5c,-0x9(%ebp)
  103fe4:	e9 0e 03 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  103fe9:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  103ff0:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  103ff7:	38 c2                	cmp    %al,%dl
  103ff9:	75 07                	jne    104002 <keyboard_irq_handler+0x494>
  103ffb:	b8 7a 00 00 00       	mov    $0x7a,%eax
  104000:	eb 05                	jmp    104007 <keyboard_irq_handler+0x499>
  104002:	b8 5a 00 00 00       	mov    $0x5a,%eax
  104007:	88 45 f7             	mov    %al,-0x9(%ebp)
  10400a:	e9 e8 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  10400f:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  104016:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  10401d:	38 c2                	cmp    %al,%dl
  10401f:	75 07                	jne    104028 <keyboard_irq_handler+0x4ba>
  104021:	b8 78 00 00 00       	mov    $0x78,%eax
  104026:	eb 05                	jmp    10402d <keyboard_irq_handler+0x4bf>
  104028:	b8 58 00 00 00       	mov    $0x58,%eax
  10402d:	88 45 f7             	mov    %al,-0x9(%ebp)
  104030:	e9 c2 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104035:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  10403c:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  104043:	38 c2                	cmp    %al,%dl
  104045:	75 07                	jne    10404e <keyboard_irq_handler+0x4e0>
  104047:	b8 63 00 00 00       	mov    $0x63,%eax
  10404c:	eb 05                	jmp    104053 <keyboard_irq_handler+0x4e5>
  10404e:	b8 43 00 00 00       	mov    $0x43,%eax
  104053:	88 45 f7             	mov    %al,-0x9(%ebp)
  104056:	e9 9c 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  10405b:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  104062:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  104069:	38 c2                	cmp    %al,%dl
  10406b:	75 07                	jne    104074 <keyboard_irq_handler+0x506>
  10406d:	b8 76 00 00 00       	mov    $0x76,%eax
  104072:	eb 05                	jmp    104079 <keyboard_irq_handler+0x50b>
  104074:	b8 56 00 00 00       	mov    $0x56,%eax
  104079:	88 45 f7             	mov    %al,-0x9(%ebp)
  10407c:	e9 76 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104081:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  104088:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  10408f:	38 c2                	cmp    %al,%dl
  104091:	75 07                	jne    10409a <keyboard_irq_handler+0x52c>
  104093:	b8 62 00 00 00       	mov    $0x62,%eax
  104098:	eb 05                	jmp    10409f <keyboard_irq_handler+0x531>
  10409a:	b8 42 00 00 00       	mov    $0x42,%eax
  10409f:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040a2:	e9 50 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1040a7:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  1040ae:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  1040b5:	38 c2                	cmp    %al,%dl
  1040b7:	75 07                	jne    1040c0 <keyboard_irq_handler+0x552>
  1040b9:	b8 6e 00 00 00       	mov    $0x6e,%eax
  1040be:	eb 05                	jmp    1040c5 <keyboard_irq_handler+0x557>
  1040c0:	b8 4e 00 00 00       	mov    $0x4e,%eax
  1040c5:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040c8:	e9 2a 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1040cd:	0f b6 15 11 09 14 00 	movzbl 0x140911,%edx
  1040d4:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  1040db:	38 c2                	cmp    %al,%dl
  1040dd:	75 07                	jne    1040e6 <keyboard_irq_handler+0x578>
  1040df:	b8 6d 00 00 00       	mov    $0x6d,%eax
  1040e4:	eb 05                	jmp    1040eb <keyboard_irq_handler+0x57d>
  1040e6:	b8 4d 00 00 00       	mov    $0x4d,%eax
  1040eb:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040ee:	e9 04 02 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1040f3:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  1040fa:	84 c0                	test   %al,%al
  1040fc:	74 07                	je     104105 <keyboard_irq_handler+0x597>
  1040fe:	b8 3b 00 00 00       	mov    $0x3b,%eax
  104103:	eb 05                	jmp    10410a <keyboard_irq_handler+0x59c>
  104105:	b8 2e 00 00 00       	mov    $0x2e,%eax
  10410a:	88 45 f7             	mov    %al,-0x9(%ebp)
  10410d:	e9 e5 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104112:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  104119:	84 c0                	test   %al,%al
  10411b:	74 07                	je     104124 <keyboard_irq_handler+0x5b6>
  10411d:	b8 3a 00 00 00       	mov    $0x3a,%eax
  104122:	eb 05                	jmp    104129 <keyboard_irq_handler+0x5bb>
  104124:	b8 2e 00 00 00       	mov    $0x2e,%eax
  104129:	88 45 f7             	mov    %al,-0x9(%ebp)
  10412c:	e9 c6 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104131:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  104138:	84 c0                	test   %al,%al
  10413a:	74 07                	je     104143 <keyboard_irq_handler+0x5d5>
  10413c:	b8 5f 00 00 00       	mov    $0x5f,%eax
  104141:	eb 05                	jmp    104148 <keyboard_irq_handler+0x5da>
  104143:	b8 2d 00 00 00       	mov    $0x2d,%eax
  104148:	88 45 f7             	mov    %al,-0x9(%ebp)
  10414b:	e9 a7 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104150:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  104157:	84 c0                	test   %al,%al
  104159:	74 07                	je     104162 <keyboard_irq_handler+0x5f4>
  10415b:	b8 2b 00 00 00       	mov    $0x2b,%eax
  104160:	eb 05                	jmp    104167 <keyboard_irq_handler+0x5f9>
  104162:	b8 2a 00 00 00       	mov    $0x2a,%eax
  104167:	88 45 f7             	mov    %al,-0x9(%ebp)
  10416a:	e9 88 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  10416f:	c6 45 f7 0a          	movb   $0xa,-0x9(%ebp)
  104173:	e9 7f 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104178:	c6 45 f7 08          	movb   $0x8,-0x9(%ebp)
  10417c:	e9 76 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104181:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
  104185:	e9 6d 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  10418a:	e8 e3 c3 ff ff       	call   100572 <tty_row_up>
  10418f:	e9 63 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  104194:	e8 fd c3 ff ff       	call   100596 <tty_row_down>
  104199:	e9 59 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  10419e:	e8 1c c4 ff ff       	call   1005bf <tty_column_right>
  1041a3:	e9 4f 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1041a8:	e8 3b c4 ff ff       	call   1005e8 <tty_column_left>
  1041ad:	e9 45 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1041b2:	e8 55 c4 ff ff       	call   10060c <tty_reset_column>
  1041b7:	e9 3b 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1041bc:	c6 05 11 09 14 00 01 	movb   $0x1,0x140911
  1041c3:	e9 2f 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1041c8:	c6 05 11 09 14 00 00 	movb   $0x0,0x140911
  1041cf:	e9 23 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1041d4:	0f b6 05 10 09 14 00 	movzbl 0x140910,%eax
  1041db:	3c 01                	cmp    $0x1,%al
  1041dd:	0f 95 c0             	setne  %al
  1041e0:	a2 10 09 14 00       	mov    %al,0x140910
  1041e5:	e9 0d 01 00 00       	jmp    1042f7 <keyboard_irq_handler+0x789>
  1041ea:	0f b6 05 11 09 14 00 	movzbl 0x140911,%eax
  1041f1:	84 c0                	test   %al,%al
  1041f3:	0f 84 fd 00 00 00    	je     1042f6 <keyboard_irq_handler+0x788>
  1041f9:	e8 3b f3 ff ff       	call   103539 <acpi_shutdown>
  1041fe:	e9 f3 00 00 00       	jmp    1042f6 <keyboard_irq_handler+0x788>
  104203:	83 ec 0c             	sub    $0xc,%esp
  104206:	68 e0 0d 14 00       	push   $0x140de0
  10420b:	e8 ba 3f 00 00       	call   1081ca <__redirect_printf__>
  104210:	83 c4 10             	add    $0x10,%esp
  104213:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  104217:	83 ec 08             	sub    $0x8,%esp
  10421a:	50                   	push   %eax
  10421b:	68 c8 a3 10 00       	push   $0x10a3c8
  104220:	e8 8d 48 00 00       	call   108ab2 <printf>
  104225:	83 c4 10             	add    $0x10,%esp
  104228:	83 ec 0c             	sub    $0xc,%esp
  10422b:	6a 00                	push   $0x0
  10422d:	e8 98 3f 00 00       	call   1081ca <__redirect_printf__>
  104232:	83 c4 10             	add    $0x10,%esp
  104235:	83 ec 0c             	sub    $0xc,%esp
  104238:	8d 45 f0             	lea    -0x10(%ebp),%eax
  10423b:	50                   	push   %eax
  10423c:	e8 6c e4 ff ff       	call   1026ad <cmos_read_rtc>
  104241:	83 c4 10             	add    $0x10,%esp
  104244:	83 ec 04             	sub    $0x4,%esp
  104247:	68 cc 11 14 00       	push   $0x1411cc
  10424c:	83 ec 08             	sub    $0x8,%esp
  10424f:	89 e0                	mov    %esp,%eax
  104251:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104254:	89 10                	mov    %edx,(%eax)
  104256:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
  10425a:	66 89 50 04          	mov    %dx,0x4(%eax)
  10425e:	e8 af 08 00 00       	call   104b12 <cmos_datetime_to_str>
  104263:	83 c4 10             	add    $0x10,%esp
  104266:	83 ec 0c             	sub    $0xc,%esp
  104269:	68 e0 09 14 00       	push   $0x1409e0
  10426e:	e8 57 3f 00 00       	call   1081ca <__redirect_printf__>
  104273:	83 c4 10             	add    $0x10,%esp
  104276:	83 ec 04             	sub    $0x4,%esp
  104279:	68 e0 0d 14 00       	push   $0x140de0
  10427e:	68 cc 11 14 00       	push   $0x1411cc
  104283:	68 c2 a3 10 00       	push   $0x10a3c2
  104288:	e8 25 48 00 00       	call   108ab2 <printf>
  10428d:	83 c4 10             	add    $0x10,%esp
  104290:	83 ec 0c             	sub    $0xc,%esp
  104293:	6a 00                	push   $0x0
  104295:	e8 30 3f 00 00       	call   1081ca <__redirect_printf__>
  10429a:	83 c4 10             	add    $0x10,%esp
  10429d:	83 ec 08             	sub    $0x8,%esp
  1042a0:	68 e0 09 14 00       	push   $0x1409e0
  1042a5:	68 f8 03 00 00       	push   $0x3f8
  1042aa:	e8 5b df ff ff       	call   10220a <com_write>
  1042af:	83 c4 10             	add    $0x10,%esp
  1042b2:	83 ec 04             	sub    $0x4,%esp
  1042b5:	68 00 04 00 00       	push   $0x400
  1042ba:	6a 00                	push   $0x0
  1042bc:	68 e0 09 14 00       	push   $0x1409e0
  1042c1:	e8 65 4b 00 00       	call   108e2b <memset>
  1042c6:	83 c4 10             	add    $0x10,%esp
  1042c9:	83 ec 04             	sub    $0x4,%esp
  1042cc:	68 ec 03 00 00       	push   $0x3ec
  1042d1:	6a 00                	push   $0x0
  1042d3:	68 e0 0d 14 00       	push   $0x140de0
  1042d8:	e8 4e 4b 00 00       	call   108e2b <memset>
  1042dd:	83 c4 10             	add    $0x10,%esp
  1042e0:	83 ec 04             	sub    $0x4,%esp
  1042e3:	6a 14                	push   $0x14
  1042e5:	6a 00                	push   $0x0
  1042e7:	68 cc 11 14 00       	push   $0x1411cc
  1042ec:	e8 3a 4b 00 00       	call   108e2b <memset>
  1042f1:	83 c4 10             	add    $0x10,%esp
  1042f4:	eb 01                	jmp    1042f7 <keyboard_irq_handler+0x789>
  1042f6:	90                   	nop
  1042f7:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  1042fb:	74 15                	je     104312 <keyboard_irq_handler+0x7a4>
  1042fd:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
  104301:	83 ec 08             	sub    $0x8,%esp
  104304:	50                   	push   %eax
  104305:	68 f5 a3 10 00       	push   $0x10a3f5
  10430a:	e8 a3 47 00 00       	call   108ab2 <printf>
  10430f:	83 c4 10             	add    $0x10,%esp
  104312:	83 ec 08             	sub    $0x8,%esp
  104315:	6a 20                	push   $0x20
  104317:	6a 20                	push   $0x20
  104319:	e8 a2 c3 ff ff       	call   1006c0 <outb>
  10431e:	83 c4 10             	add    $0x10,%esp
  104321:	90                   	nop
  104322:	c9                   	leave  
  104323:	c3                   	ret    

00104324 <vfs_read>:
  104324:	55                   	push   %ebp
  104325:	89 e5                	mov    %esp,%ebp
  104327:	83 ec 08             	sub    $0x8,%esp
  10432a:	8b 45 08             	mov    0x8(%ebp),%eax
  10432d:	8b 80 9c 00 00 00    	mov    0x9c(%eax),%eax
  104333:	85 c0                	test   %eax,%eax
  104335:	74 1c                	je     104353 <vfs_read+0x2f>
  104337:	8b 45 08             	mov    0x8(%ebp),%eax
  10433a:	8b 80 9c 00 00 00    	mov    0x9c(%eax),%eax
  104340:	ff 75 14             	push   0x14(%ebp)
  104343:	ff 75 10             	push   0x10(%ebp)
  104346:	ff 75 0c             	push   0xc(%ebp)
  104349:	ff 75 08             	push   0x8(%ebp)
  10434c:	ff d0                	call   *%eax
  10434e:	83 c4 10             	add    $0x10,%esp
  104351:	eb 05                	jmp    104358 <vfs_read+0x34>
  104353:	b8 00 00 00 00       	mov    $0x0,%eax
  104358:	c9                   	leave  
  104359:	c3                   	ret    

0010435a <vfs_write>:
  10435a:	55                   	push   %ebp
  10435b:	89 e5                	mov    %esp,%ebp
  10435d:	83 ec 08             	sub    $0x8,%esp
  104360:	8b 45 08             	mov    0x8(%ebp),%eax
  104363:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
  104369:	85 c0                	test   %eax,%eax
  10436b:	74 1c                	je     104389 <vfs_write+0x2f>
  10436d:	8b 45 08             	mov    0x8(%ebp),%eax
  104370:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
  104376:	ff 75 14             	push   0x14(%ebp)
  104379:	ff 75 10             	push   0x10(%ebp)
  10437c:	ff 75 0c             	push   0xc(%ebp)
  10437f:	ff 75 08             	push   0x8(%ebp)
  104382:	ff d0                	call   *%eax
  104384:	83 c4 10             	add    $0x10,%esp
  104387:	eb 05                	jmp    10438e <vfs_write+0x34>
  104389:	b8 00 00 00 00       	mov    $0x0,%eax
  10438e:	c9                   	leave  
  10438f:	c3                   	ret    

00104390 <vfs_open>:
  104390:	55                   	push   %ebp
  104391:	89 e5                	mov    %esp,%ebp
  104393:	83 ec 18             	sub    $0x18,%esp
  104396:	8b 55 0c             	mov    0xc(%ebp),%edx
  104399:	8b 45 10             	mov    0x10(%ebp),%eax
  10439c:	88 55 f4             	mov    %dl,-0xc(%ebp)
  10439f:	88 45 f0             	mov    %al,-0x10(%ebp)
  1043a2:	8b 45 08             	mov    0x8(%ebp),%eax
  1043a5:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
  1043ab:	85 c0                	test   %eax,%eax
  1043ad:	74 15                	je     1043c4 <vfs_open+0x34>
  1043af:	8b 45 08             	mov    0x8(%ebp),%eax
  1043b2:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
  1043b8:	83 ec 0c             	sub    $0xc,%esp
  1043bb:	ff 75 08             	push   0x8(%ebp)
  1043be:	ff d0                	call   *%eax
  1043c0:	83 c4 10             	add    $0x10,%esp
  1043c3:	90                   	nop
  1043c4:	c9                   	leave  
  1043c5:	c3                   	ret    

001043c6 <vfs_close>:
  1043c6:	55                   	push   %ebp
  1043c7:	89 e5                	mov    %esp,%ebp
  1043c9:	83 ec 08             	sub    $0x8,%esp
  1043cc:	8b 45 08             	mov    0x8(%ebp),%eax
  1043cf:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
  1043d5:	85 c0                	test   %eax,%eax
  1043d7:	74 15                	je     1043ee <vfs_close+0x28>
  1043d9:	8b 45 08             	mov    0x8(%ebp),%eax
  1043dc:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
  1043e2:	83 ec 0c             	sub    $0xc,%esp
  1043e5:	ff 75 08             	push   0x8(%ebp)
  1043e8:	ff d0                	call   *%eax
  1043ea:	83 c4 10             	add    $0x10,%esp
  1043ed:	90                   	nop
  1043ee:	c9                   	leave  
  1043ef:	c3                   	ret    

001043f0 <vfs_read_dir>:
  1043f0:	55                   	push   %ebp
  1043f1:	89 e5                	mov    %esp,%ebp
  1043f3:	83 ec 08             	sub    $0x8,%esp
  1043f6:	8b 45 08             	mov    0x8(%ebp),%eax
  1043f9:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  1043ff:	83 e0 07             	and    $0x7,%eax
  104402:	83 f8 02             	cmp    $0x2,%eax
  104405:	75 26                	jne    10442d <vfs_read_dir+0x3d>
  104407:	8b 45 08             	mov    0x8(%ebp),%eax
  10440a:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
  104410:	85 c0                	test   %eax,%eax
  104412:	74 19                	je     10442d <vfs_read_dir+0x3d>
  104414:	8b 45 08             	mov    0x8(%ebp),%eax
  104417:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
  10441d:	83 ec 08             	sub    $0x8,%esp
  104420:	ff 75 0c             	push   0xc(%ebp)
  104423:	ff 75 08             	push   0x8(%ebp)
  104426:	ff d0                	call   *%eax
  104428:	83 c4 10             	add    $0x10,%esp
  10442b:	eb 05                	jmp    104432 <vfs_read_dir+0x42>
  10442d:	b8 00 00 00 00       	mov    $0x0,%eax
  104432:	c9                   	leave  
  104433:	c3                   	ret    

00104434 <vfs_find_dir>:
  104434:	55                   	push   %ebp
  104435:	89 e5                	mov    %esp,%ebp
  104437:	83 ec 08             	sub    $0x8,%esp
  10443a:	8b 45 08             	mov    0x8(%ebp),%eax
  10443d:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  104443:	83 e0 07             	and    $0x7,%eax
  104446:	83 f8 02             	cmp    $0x2,%eax
  104449:	75 26                	jne    104471 <vfs_find_dir+0x3d>
  10444b:	8b 45 08             	mov    0x8(%ebp),%eax
  10444e:	8b 80 b0 00 00 00    	mov    0xb0(%eax),%eax
  104454:	85 c0                	test   %eax,%eax
  104456:	74 19                	je     104471 <vfs_find_dir+0x3d>
  104458:	8b 45 08             	mov    0x8(%ebp),%eax
  10445b:	8b 80 b0 00 00 00    	mov    0xb0(%eax),%eax
  104461:	83 ec 08             	sub    $0x8,%esp
  104464:	ff 75 0c             	push   0xc(%ebp)
  104467:	ff 75 08             	push   0x8(%ebp)
  10446a:	ff d0                	call   *%eax
  10446c:	83 c4 10             	add    $0x10,%esp
  10446f:	eb 05                	jmp    104476 <vfs_find_dir+0x42>
  104471:	b8 00 00 00 00       	mov    $0x0,%eax
  104476:	c9                   	leave  
  104477:	c3                   	ret    

00104478 <initrd_read>:
  104478:	55                   	push   %ebp
  104479:	89 e5                	mov    %esp,%ebp
  10447b:	57                   	push   %edi
  10447c:	56                   	push   %esi
  10447d:	53                   	push   %ebx
  10447e:	83 ec 5c             	sub    $0x5c,%esp
  104481:	8b 15 24 09 14 00    	mov    0x140924,%edx
  104487:	8b 45 08             	mov    0x8(%ebp),%eax
  10448a:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
  104490:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104493:	01 c2                	add    %eax,%edx
  104495:	8d 45 9c             	lea    -0x64(%ebp),%eax
  104498:	89 d3                	mov    %edx,%ebx
  10449a:	ba 13 00 00 00       	mov    $0x13,%edx
  10449f:	89 c7                	mov    %eax,%edi
  1044a1:	89 de                	mov    %ebx,%esi
  1044a3:	89 d1                	mov    %edx,%ecx
  1044a5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1044a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1044aa:	39 45 0c             	cmp    %eax,0xc(%ebp)
  1044ad:	76 07                	jbe    1044b6 <initrd_read+0x3e>
  1044af:	b8 00 00 00 00       	mov    $0x0,%eax
  1044b4:	eb 35                	jmp    1044eb <initrd_read+0x73>
  1044b6:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1044bc:	01 c2                	add    %eax,%edx
  1044be:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1044c1:	39 c2                	cmp    %eax,%edx
  1044c3:	76 09                	jbe    1044ce <initrd_read+0x56>
  1044c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1044c8:	2b 45 0c             	sub    0xc(%ebp),%eax
  1044cb:	89 45 10             	mov    %eax,0x10(%ebp)
  1044ce:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1044d1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044d4:	01 d0                	add    %edx,%eax
  1044d6:	83 ec 04             	sub    $0x4,%esp
  1044d9:	ff 75 10             	push   0x10(%ebp)
  1044dc:	50                   	push   %eax
  1044dd:	ff 75 14             	push   0x14(%ebp)
  1044e0:	e8 05 49 00 00       	call   108dea <memcpy>
  1044e5:	83 c4 10             	add    $0x10,%esp
  1044e8:	8b 45 10             	mov    0x10(%ebp),%eax
  1044eb:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1044ee:	5b                   	pop    %ebx
  1044ef:	5e                   	pop    %esi
  1044f0:	5f                   	pop    %edi
  1044f1:	5d                   	pop    %ebp
  1044f2:	c3                   	ret    

001044f3 <initrd_readdir>:
  1044f3:	55                   	push   %ebp
  1044f4:	89 e5                	mov    %esp,%ebp
  1044f6:	83 ec 08             	sub    $0x8,%esp
  1044f9:	a1 28 09 14 00       	mov    0x140928,%eax
  1044fe:	39 45 08             	cmp    %eax,0x8(%ebp)
  104501:	75 38                	jne    10453b <initrd_readdir+0x48>
  104503:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  104507:	75 32                	jne    10453b <initrd_readdir+0x48>
  104509:	83 ec 04             	sub    $0x4,%esp
  10450c:	6a 03                	push   $0x3
  10450e:	68 e4 a6 10 00       	push   $0x10a6e4
  104513:	68 40 09 14 00       	push   $0x140940
  104518:	e8 cd 48 00 00       	call   108dea <memcpy>
  10451d:	83 c4 10             	add    $0x10,%esp
  104520:	c6 05 43 09 14 00 00 	movb   $0x0,0x140943
  104527:	c7 05 c0 09 14 00 00 	movl   $0x0,0x1409c0
  10452e:	00 00 00 
  104531:	b8 40 09 14 00       	mov    $0x140940,%eax
  104536:	e9 b3 00 00 00       	jmp    1045ee <initrd_readdir+0xfb>
  10453b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10453e:	8d 50 ff             	lea    -0x1(%eax),%edx
  104541:	a1 34 09 14 00       	mov    0x140934,%eax
  104546:	39 c2                	cmp    %eax,%edx
  104548:	72 0a                	jb     104554 <initrd_readdir+0x61>
  10454a:	b8 00 00 00 00       	mov    $0x0,%eax
  10454f:	e9 9a 00 00 00       	jmp    1045ee <initrd_readdir+0xfb>
  104554:	8b 15 30 09 14 00    	mov    0x140930,%edx
  10455a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10455d:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104563:	2d b8 00 00 00       	sub    $0xb8,%eax
  104568:	01 d0                	add    %edx,%eax
  10456a:	83 ec 0c             	sub    $0xc,%esp
  10456d:	50                   	push   %eax
  10456e:	e8 eb 48 00 00       	call   108e5e <strlen>
  104573:	83 c4 10             	add    $0x10,%esp
  104576:	8b 0d 30 09 14 00    	mov    0x140930,%ecx
  10457c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10457f:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104585:	81 ea b8 00 00 00    	sub    $0xb8,%edx
  10458b:	01 ca                	add    %ecx,%edx
  10458d:	83 ec 04             	sub    $0x4,%esp
  104590:	50                   	push   %eax
  104591:	52                   	push   %edx
  104592:	68 40 09 14 00       	push   $0x140940
  104597:	e8 4e 48 00 00       	call   108dea <memcpy>
  10459c:	83 c4 10             	add    $0x10,%esp
  10459f:	8b 15 30 09 14 00    	mov    0x140930,%edx
  1045a5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1045a8:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  1045ae:	2d b8 00 00 00       	sub    $0xb8,%eax
  1045b3:	01 d0                	add    %edx,%eax
  1045b5:	83 ec 0c             	sub    $0xc,%esp
  1045b8:	50                   	push   %eax
  1045b9:	e8 a0 48 00 00       	call   108e5e <strlen>
  1045be:	83 c4 10             	add    $0x10,%esp
  1045c1:	c6 80 40 09 14 00 00 	movb   $0x0,0x140940(%eax)
  1045c8:	8b 15 30 09 14 00    	mov    0x140930,%edx
  1045ce:	8b 45 0c             	mov    0xc(%ebp),%eax
  1045d1:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  1045d7:	2d b8 00 00 00       	sub    $0xb8,%eax
  1045dc:	01 d0                	add    %edx,%eax
  1045de:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
  1045e4:	a3 c0 09 14 00       	mov    %eax,0x1409c0
  1045e9:	b8 40 09 14 00       	mov    $0x140940,%eax
  1045ee:	c9                   	leave  
  1045ef:	c3                   	ret    

001045f0 <initrd_finddir>:
  1045f0:	55                   	push   %ebp
  1045f1:	89 e5                	mov    %esp,%ebp
  1045f3:	83 ec 18             	sub    $0x18,%esp
  1045f6:	a1 28 09 14 00       	mov    0x140928,%eax
  1045fb:	39 45 08             	cmp    %eax,0x8(%ebp)
  1045fe:	75 20                	jne    104620 <initrd_finddir+0x30>
  104600:	83 ec 04             	sub    $0x4,%esp
  104603:	6a 03                	push   $0x3
  104605:	68 e4 a6 10 00       	push   $0x10a6e4
  10460a:	ff 75 0c             	push   0xc(%ebp)
  10460d:	e8 68 47 00 00       	call   108d7a <memcmp>
  104612:	83 c4 10             	add    $0x10,%esp
  104615:	85 c0                	test   %eax,%eax
  104617:	75 07                	jne    104620 <initrd_finddir+0x30>
  104619:	a1 2c 09 14 00       	mov    0x14092c,%eax
  10461e:	eb 71                	jmp    104691 <initrd_finddir+0xa1>
  104620:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104627:	eb 59                	jmp    104682 <initrd_finddir+0x92>
  104629:	8b 15 30 09 14 00    	mov    0x140930,%edx
  10462f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104632:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104638:	01 d0                	add    %edx,%eax
  10463a:	83 ec 0c             	sub    $0xc,%esp
  10463d:	50                   	push   %eax
  10463e:	e8 1b 48 00 00       	call   108e5e <strlen>
  104643:	83 c4 10             	add    $0x10,%esp
  104646:	8b 0d 30 09 14 00    	mov    0x140930,%ecx
  10464c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10464f:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104655:	01 ca                	add    %ecx,%edx
  104657:	83 ec 04             	sub    $0x4,%esp
  10465a:	50                   	push   %eax
  10465b:	52                   	push   %edx
  10465c:	ff 75 0c             	push   0xc(%ebp)
  10465f:	e8 16 47 00 00       	call   108d7a <memcmp>
  104664:	83 c4 10             	add    $0x10,%esp
  104667:	85 c0                	test   %eax,%eax
  104669:	75 13                	jne    10467e <initrd_finddir+0x8e>
  10466b:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104671:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104674:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  10467a:	01 d0                	add    %edx,%eax
  10467c:	eb 13                	jmp    104691 <initrd_finddir+0xa1>
  10467e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104682:	a1 34 09 14 00       	mov    0x140934,%eax
  104687:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10468a:	72 9d                	jb     104629 <initrd_finddir+0x39>
  10468c:	b8 00 00 00 00       	mov    $0x0,%eax
  104691:	c9                   	leave  
  104692:	c3                   	ret    

00104693 <initrd_init>:
  104693:	55                   	push   %ebp
  104694:	89 e5                	mov    %esp,%ebp
  104696:	53                   	push   %ebx
  104697:	83 ec 14             	sub    $0x14,%esp
  10469a:	8b 45 08             	mov    0x8(%ebp),%eax
  10469d:	a3 20 09 14 00       	mov    %eax,0x140920
  1046a2:	8b 45 08             	mov    0x8(%ebp),%eax
  1046a5:	83 c0 04             	add    $0x4,%eax
  1046a8:	a3 24 09 14 00       	mov    %eax,0x140924
  1046ad:	83 ec 0c             	sub    $0xc,%esp
  1046b0:	68 b8 00 00 00       	push   $0xb8
  1046b5:	e8 6e 14 00 00       	call   105b28 <kmalloc>
  1046ba:	83 c4 10             	add    $0x10,%esp
  1046bd:	a3 28 09 14 00       	mov    %eax,0x140928
  1046c2:	a1 28 09 14 00       	mov    0x140928,%eax
  1046c7:	83 ec 04             	sub    $0x4,%esp
  1046ca:	68 80 00 00 00       	push   $0x80
  1046cf:	6a 00                	push   $0x0
  1046d1:	50                   	push   %eax
  1046d2:	e8 54 47 00 00       	call   108e2b <memset>
  1046d7:	83 c4 10             	add    $0x10,%esp
  1046da:	a1 28 09 14 00       	mov    0x140928,%eax
  1046df:	83 ec 04             	sub    $0x4,%esp
  1046e2:	6a 07                	push   $0x7
  1046e4:	68 e8 a6 10 00       	push   $0x10a6e8
  1046e9:	50                   	push   %eax
  1046ea:	e8 fb 46 00 00       	call   108dea <memcpy>
  1046ef:	83 c4 10             	add    $0x10,%esp
  1046f2:	a1 28 09 14 00       	mov    0x140928,%eax
  1046f7:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
  1046fe:	00 00 00 
  104701:	a1 28 09 14 00       	mov    0x140928,%eax
  104706:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  10470d:	00 00 00 
  104710:	a1 28 09 14 00       	mov    0x140928,%eax
  104715:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
  10471c:	00 00 00 
  10471f:	a1 28 09 14 00       	mov    0x140928,%eax
  104724:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
  10472b:	00 00 00 
  10472e:	a1 28 09 14 00       	mov    0x140928,%eax
  104733:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
  10473a:	00 00 00 
  10473d:	a1 28 09 14 00       	mov    0x140928,%eax
  104742:	c7 80 8c 00 00 00 02 	movl   $0x2,0x8c(%eax)
  104749:	00 00 00 
  10474c:	a1 28 09 14 00       	mov    0x140928,%eax
  104751:	c7 80 9c 00 00 00 00 	movl   $0x0,0x9c(%eax)
  104758:	00 00 00 
  10475b:	a1 28 09 14 00       	mov    0x140928,%eax
  104760:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104767:	00 00 00 
  10476a:	a1 28 09 14 00       	mov    0x140928,%eax
  10476f:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104776:	00 00 00 
  104779:	a1 28 09 14 00       	mov    0x140928,%eax
  10477e:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104785:	00 00 00 
  104788:	a1 28 09 14 00       	mov    0x140928,%eax
  10478d:	c7 80 ac 00 00 00 f3 	movl   $0x1044f3,0xac(%eax)
  104794:	44 10 00 
  104797:	a1 28 09 14 00       	mov    0x140928,%eax
  10479c:	c7 80 b0 00 00 00 f0 	movl   $0x1045f0,0xb0(%eax)
  1047a3:	45 10 00 
  1047a6:	a1 28 09 14 00       	mov    0x140928,%eax
  1047ab:	c7 80 b4 00 00 00 00 	movl   $0x0,0xb4(%eax)
  1047b2:	00 00 00 
  1047b5:	a1 28 09 14 00       	mov    0x140928,%eax
  1047ba:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  1047c1:	00 00 00 
  1047c4:	83 ec 0c             	sub    $0xc,%esp
  1047c7:	68 b8 00 00 00       	push   $0xb8
  1047cc:	e8 57 13 00 00       	call   105b28 <kmalloc>
  1047d1:	83 c4 10             	add    $0x10,%esp
  1047d4:	a3 2c 09 14 00       	mov    %eax,0x14092c
  1047d9:	a1 2c 09 14 00       	mov    0x14092c,%eax
  1047de:	83 ec 04             	sub    $0x4,%esp
  1047e1:	68 80 00 00 00       	push   $0x80
  1047e6:	6a 00                	push   $0x0
  1047e8:	50                   	push   %eax
  1047e9:	e8 3d 46 00 00       	call   108e2b <memset>
  1047ee:	83 c4 10             	add    $0x10,%esp
  1047f1:	a1 2c 09 14 00       	mov    0x14092c,%eax
  1047f6:	83 ec 04             	sub    $0x4,%esp
  1047f9:	6a 03                	push   $0x3
  1047fb:	68 e4 a6 10 00       	push   $0x10a6e4
  104800:	50                   	push   %eax
  104801:	e8 e4 45 00 00       	call   108dea <memcpy>
  104806:	83 c4 10             	add    $0x10,%esp
  104809:	a1 2c 09 14 00       	mov    0x14092c,%eax
  10480e:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
  104815:	00 00 00 
  104818:	a1 2c 09 14 00       	mov    0x14092c,%eax
  10481d:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104824:	00 00 00 
  104827:	a1 2c 09 14 00       	mov    0x14092c,%eax
  10482c:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104833:	00 00 00 
  104836:	a1 2c 09 14 00       	mov    0x14092c,%eax
  10483b:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
  104842:	00 00 00 
  104845:	a1 2c 09 14 00       	mov    0x14092c,%eax
  10484a:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
  104851:	00 00 00 
  104854:	a1 2c 09 14 00       	mov    0x14092c,%eax
  104859:	c7 80 8c 00 00 00 02 	movl   $0x2,0x8c(%eax)
  104860:	00 00 00 
  104863:	a1 2c 09 14 00       	mov    0x14092c,%eax
  104868:	c7 80 9c 00 00 00 00 	movl   $0x0,0x9c(%eax)
  10486f:	00 00 00 
  104872:	a1 2c 09 14 00       	mov    0x14092c,%eax
  104877:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  10487e:	00 00 00 
  104881:	a1 2c 09 14 00       	mov    0x14092c,%eax
  104886:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  10488d:	00 00 00 
  104890:	a1 2c 09 14 00       	mov    0x14092c,%eax
  104895:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  10489c:	00 00 00 
  10489f:	a1 2c 09 14 00       	mov    0x14092c,%eax
  1048a4:	c7 80 ac 00 00 00 f3 	movl   $0x1044f3,0xac(%eax)
  1048ab:	44 10 00 
  1048ae:	a1 2c 09 14 00       	mov    0x14092c,%eax
  1048b3:	c7 80 b0 00 00 00 f0 	movl   $0x1045f0,0xb0(%eax)
  1048ba:	45 10 00 
  1048bd:	a1 2c 09 14 00       	mov    0x14092c,%eax
  1048c2:	c7 80 b4 00 00 00 00 	movl   $0x0,0xb4(%eax)
  1048c9:	00 00 00 
  1048cc:	a1 2c 09 14 00       	mov    0x14092c,%eax
  1048d1:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  1048d8:	00 00 00 
  1048db:	a1 20 09 14 00       	mov    0x140920,%eax
  1048e0:	8b 00                	mov    (%eax),%eax
  1048e2:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  1048e8:	83 ec 0c             	sub    $0xc,%esp
  1048eb:	50                   	push   %eax
  1048ec:	e8 37 12 00 00       	call   105b28 <kmalloc>
  1048f1:	83 c4 10             	add    $0x10,%esp
  1048f4:	a3 30 09 14 00       	mov    %eax,0x140930
  1048f9:	a1 20 09 14 00       	mov    0x140920,%eax
  1048fe:	8b 00                	mov    (%eax),%eax
  104900:	a3 34 09 14 00       	mov    %eax,0x140934
  104905:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10490c:	e9 e7 01 00 00       	jmp    104af8 <initrd_init+0x465>
  104911:	8b 15 24 09 14 00    	mov    0x140924,%edx
  104917:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10491a:	6b c0 4c             	imul   $0x4c,%eax,%eax
  10491d:	01 d0                	add    %edx,%eax
  10491f:	8b 48 44             	mov    0x44(%eax),%ecx
  104922:	8b 15 24 09 14 00    	mov    0x140924,%edx
  104928:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10492b:	6b c0 4c             	imul   $0x4c,%eax,%eax
  10492e:	01 d0                	add    %edx,%eax
  104930:	8b 55 08             	mov    0x8(%ebp),%edx
  104933:	01 ca                	add    %ecx,%edx
  104935:	89 50 44             	mov    %edx,0x44(%eax)
  104938:	8b 15 24 09 14 00    	mov    0x140924,%edx
  10493e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104941:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104944:	01 d0                	add    %edx,%eax
  104946:	83 c0 01             	add    $0x1,%eax
  104949:	83 ec 0c             	sub    $0xc,%esp
  10494c:	50                   	push   %eax
  10494d:	e8 0c 45 00 00       	call   108e5e <strlen>
  104952:	83 c4 10             	add    $0x10,%esp
  104955:	8b 0d 24 09 14 00    	mov    0x140924,%ecx
  10495b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10495e:	6b d2 4c             	imul   $0x4c,%edx,%edx
  104961:	01 ca                	add    %ecx,%edx
  104963:	83 c2 01             	add    $0x1,%edx
  104966:	8b 1d 30 09 14 00    	mov    0x140930,%ebx
  10496c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10496f:	69 c9 b8 00 00 00    	imul   $0xb8,%ecx,%ecx
  104975:	01 d9                	add    %ebx,%ecx
  104977:	83 ec 04             	sub    $0x4,%esp
  10497a:	50                   	push   %eax
  10497b:	52                   	push   %edx
  10497c:	51                   	push   %ecx
  10497d:	e8 68 44 00 00       	call   108dea <memcpy>
  104982:	83 c4 10             	add    $0x10,%esp
  104985:	8b 15 30 09 14 00    	mov    0x140930,%edx
  10498b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10498e:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104994:	01 c2                	add    %eax,%edx
  104996:	c7 82 88 00 00 00 00 	movl   $0x0,0x88(%edx)
  10499d:	00 00 00 
  1049a0:	8b 0d 30 09 14 00    	mov    0x140930,%ecx
  1049a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1049a9:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  1049af:	01 c8                	add    %ecx,%eax
  1049b1:	8b 92 88 00 00 00    	mov    0x88(%edx),%edx
  1049b7:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
  1049bd:	8b 0d 30 09 14 00    	mov    0x140930,%ecx
  1049c3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1049c6:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  1049cc:	01 ca                	add    %ecx,%edx
  1049ce:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  1049d4:	89 82 80 00 00 00    	mov    %eax,0x80(%edx)
  1049da:	8b 15 24 09 14 00    	mov    0x140924,%edx
  1049e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1049e3:	6b c0 4c             	imul   $0x4c,%eax,%eax
  1049e6:	01 d0                	add    %edx,%eax
  1049e8:	8b 0d 30 09 14 00    	mov    0x140930,%ecx
  1049ee:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1049f1:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  1049f7:	01 ca                	add    %ecx,%edx
  1049f9:	8b 40 48             	mov    0x48(%eax),%eax
  1049fc:	89 82 94 00 00 00    	mov    %eax,0x94(%edx)
  104a02:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104a08:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a0b:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a11:	01 c2                	add    %eax,%edx
  104a13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a16:	89 82 90 00 00 00    	mov    %eax,0x90(%edx)
  104a1c:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104a22:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a25:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a2b:	01 d0                	add    %edx,%eax
  104a2d:	c7 80 8c 00 00 00 01 	movl   $0x1,0x8c(%eax)
  104a34:	00 00 00 
  104a37:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104a3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a40:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a46:	01 d0                	add    %edx,%eax
  104a48:	c7 80 9c 00 00 00 78 	movl   $0x104478,0x9c(%eax)
  104a4f:	44 10 00 
  104a52:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104a58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a5b:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a61:	01 d0                	add    %edx,%eax
  104a63:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104a6a:	00 00 00 
  104a6d:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104a73:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a76:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a7c:	01 d0                	add    %edx,%eax
  104a7e:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
  104a85:	00 00 00 
  104a88:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104a8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104a91:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a97:	01 d0                	add    %edx,%eax
  104a99:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
  104aa0:	00 00 00 
  104aa3:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104aa9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104aac:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104ab2:	01 d0                	add    %edx,%eax
  104ab4:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104abb:	00 00 00 
  104abe:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104ac4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ac7:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104acd:	01 d0                	add    %edx,%eax
  104acf:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104ad6:	00 00 00 
  104ad9:	8b 15 30 09 14 00    	mov    0x140930,%edx
  104adf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ae2:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104ae8:	01 d0                	add    %edx,%eax
  104aea:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104af1:	00 00 00 
  104af4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104af8:	a1 20 09 14 00       	mov    0x140920,%eax
  104afd:	8b 00                	mov    (%eax),%eax
  104aff:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104b02:	0f 82 09 fe ff ff    	jb     104911 <initrd_init+0x27e>
  104b08:	a1 28 09 14 00       	mov    0x140928,%eax
  104b0d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104b10:	c9                   	leave  
  104b11:	c3                   	ret    

00104b12 <cmos_datetime_to_str>:
  104b12:	55                   	push   %ebp
  104b13:	89 e5                	mov    %esp,%ebp
  104b15:	83 ec 28             	sub    $0x28,%esp
  104b18:	c6 45 e8 00          	movb   $0x0,-0x18(%ebp)
  104b1c:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  104b20:	88 45 eb             	mov    %al,-0x15(%ebp)
  104b23:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  104b27:	88 45 ee             	mov    %al,-0x12(%ebp)
  104b2a:	0f b6 45 ee          	movzbl -0x12(%ebp),%eax
  104b2e:	88 45 f1             	mov    %al,-0xf(%ebp)
  104b31:	0f b6 45 f1          	movzbl -0xf(%ebp),%eax
  104b35:	88 45 f4             	mov    %al,-0xc(%ebp)
  104b38:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
  104b3c:	88 45 f7             	mov    %al,-0x9(%ebp)
  104b3f:	83 ec 0c             	sub    $0xc,%esp
  104b42:	8d 45 f5             	lea    -0xb(%ebp),%eax
  104b45:	50                   	push   %eax
  104b46:	e8 7f 36 00 00       	call   1081ca <__redirect_printf__>
  104b4b:	83 c4 10             	add    $0x10,%esp
  104b4e:	0f b6 45 0b          	movzbl 0xb(%ebp),%eax
  104b52:	0f b6 c0             	movzbl %al,%eax
  104b55:	0f b6 55 0b          	movzbl 0xb(%ebp),%edx
  104b59:	80 fa 09             	cmp    $0x9,%dl
  104b5c:	77 07                	ja     104b65 <cmos_datetime_to_str+0x53>
  104b5e:	ba ef a6 10 00       	mov    $0x10a6ef,%edx
  104b63:	eb 05                	jmp    104b6a <cmos_datetime_to_str+0x58>
  104b65:	ba f1 a6 10 00       	mov    $0x10a6f1,%edx
  104b6a:	83 ec 04             	sub    $0x4,%esp
  104b6d:	50                   	push   %eax
  104b6e:	52                   	push   %edx
  104b6f:	68 f2 a6 10 00       	push   $0x10a6f2
  104b74:	e8 39 3f 00 00       	call   108ab2 <printf>
  104b79:	83 c4 10             	add    $0x10,%esp
  104b7c:	83 ec 0c             	sub    $0xc,%esp
  104b7f:	6a 00                	push   $0x0
  104b81:	e8 44 36 00 00       	call   1081ca <__redirect_printf__>
  104b86:	83 c4 10             	add    $0x10,%esp
  104b89:	83 ec 0c             	sub    $0xc,%esp
  104b8c:	8d 45 f2             	lea    -0xe(%ebp),%eax
  104b8f:	50                   	push   %eax
  104b90:	e8 35 36 00 00       	call   1081ca <__redirect_printf__>
  104b95:	83 c4 10             	add    $0x10,%esp
  104b98:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
  104b9c:	0f b6 c0             	movzbl %al,%eax
  104b9f:	0f b6 55 0c          	movzbl 0xc(%ebp),%edx
  104ba3:	80 fa 09             	cmp    $0x9,%dl
  104ba6:	77 07                	ja     104baf <cmos_datetime_to_str+0x9d>
  104ba8:	ba ef a6 10 00       	mov    $0x10a6ef,%edx
  104bad:	eb 05                	jmp    104bb4 <cmos_datetime_to_str+0xa2>
  104baf:	ba f1 a6 10 00       	mov    $0x10a6f1,%edx
  104bb4:	83 ec 04             	sub    $0x4,%esp
  104bb7:	50                   	push   %eax
  104bb8:	52                   	push   %edx
  104bb9:	68 f2 a6 10 00       	push   $0x10a6f2
  104bbe:	e8 ef 3e 00 00       	call   108ab2 <printf>
  104bc3:	83 c4 10             	add    $0x10,%esp
  104bc6:	83 ec 0c             	sub    $0xc,%esp
  104bc9:	6a 00                	push   $0x0
  104bcb:	e8 fa 35 00 00       	call   1081ca <__redirect_printf__>
  104bd0:	83 c4 10             	add    $0x10,%esp
  104bd3:	83 ec 0c             	sub    $0xc,%esp
  104bd6:	8d 45 ef             	lea    -0x11(%ebp),%eax
  104bd9:	50                   	push   %eax
  104bda:	e8 eb 35 00 00       	call   1081ca <__redirect_printf__>
  104bdf:	83 c4 10             	add    $0x10,%esp
  104be2:	0f b6 45 0d          	movzbl 0xd(%ebp),%eax
  104be6:	0f b6 c0             	movzbl %al,%eax
  104be9:	0f b6 55 0d          	movzbl 0xd(%ebp),%edx
  104bed:	80 fa 09             	cmp    $0x9,%dl
  104bf0:	77 07                	ja     104bf9 <cmos_datetime_to_str+0xe7>
  104bf2:	ba ef a6 10 00       	mov    $0x10a6ef,%edx
  104bf7:	eb 05                	jmp    104bfe <cmos_datetime_to_str+0xec>
  104bf9:	ba f1 a6 10 00       	mov    $0x10a6f1,%edx
  104bfe:	83 ec 04             	sub    $0x4,%esp
  104c01:	50                   	push   %eax
  104c02:	52                   	push   %edx
  104c03:	68 f2 a6 10 00       	push   $0x10a6f2
  104c08:	e8 a5 3e 00 00       	call   108ab2 <printf>
  104c0d:	83 c4 10             	add    $0x10,%esp
  104c10:	83 ec 0c             	sub    $0xc,%esp
  104c13:	6a 00                	push   $0x0
  104c15:	e8 b0 35 00 00       	call   1081ca <__redirect_printf__>
  104c1a:	83 c4 10             	add    $0x10,%esp
  104c1d:	83 ec 0c             	sub    $0xc,%esp
  104c20:	8d 45 ec             	lea    -0x14(%ebp),%eax
  104c23:	50                   	push   %eax
  104c24:	e8 a1 35 00 00       	call   1081ca <__redirect_printf__>
  104c29:	83 c4 10             	add    $0x10,%esp
  104c2c:	0f b6 45 0a          	movzbl 0xa(%ebp),%eax
  104c30:	0f b6 c0             	movzbl %al,%eax
  104c33:	0f b6 55 0a          	movzbl 0xa(%ebp),%edx
  104c37:	80 fa 09             	cmp    $0x9,%dl
  104c3a:	77 07                	ja     104c43 <cmos_datetime_to_str+0x131>
  104c3c:	ba ef a6 10 00       	mov    $0x10a6ef,%edx
  104c41:	eb 05                	jmp    104c48 <cmos_datetime_to_str+0x136>
  104c43:	ba f1 a6 10 00       	mov    $0x10a6f1,%edx
  104c48:	83 ec 04             	sub    $0x4,%esp
  104c4b:	50                   	push   %eax
  104c4c:	52                   	push   %edx
  104c4d:	68 f2 a6 10 00       	push   $0x10a6f2
  104c52:	e8 5b 3e 00 00       	call   108ab2 <printf>
  104c57:	83 c4 10             	add    $0x10,%esp
  104c5a:	83 ec 0c             	sub    $0xc,%esp
  104c5d:	6a 00                	push   $0x0
  104c5f:	e8 66 35 00 00       	call   1081ca <__redirect_printf__>
  104c64:	83 c4 10             	add    $0x10,%esp
  104c67:	83 ec 0c             	sub    $0xc,%esp
  104c6a:	8d 45 e9             	lea    -0x17(%ebp),%eax
  104c6d:	50                   	push   %eax
  104c6e:	e8 57 35 00 00       	call   1081ca <__redirect_printf__>
  104c73:	83 c4 10             	add    $0x10,%esp
  104c76:	0f b6 45 09          	movzbl 0x9(%ebp),%eax
  104c7a:	0f b6 c0             	movzbl %al,%eax
  104c7d:	0f b6 55 09          	movzbl 0x9(%ebp),%edx
  104c81:	80 fa 09             	cmp    $0x9,%dl
  104c84:	77 07                	ja     104c8d <cmos_datetime_to_str+0x17b>
  104c86:	ba ef a6 10 00       	mov    $0x10a6ef,%edx
  104c8b:	eb 05                	jmp    104c92 <cmos_datetime_to_str+0x180>
  104c8d:	ba f1 a6 10 00       	mov    $0x10a6f1,%edx
  104c92:	83 ec 04             	sub    $0x4,%esp
  104c95:	50                   	push   %eax
  104c96:	52                   	push   %edx
  104c97:	68 f2 a6 10 00       	push   $0x10a6f2
  104c9c:	e8 11 3e 00 00       	call   108ab2 <printf>
  104ca1:	83 c4 10             	add    $0x10,%esp
  104ca4:	83 ec 0c             	sub    $0xc,%esp
  104ca7:	6a 00                	push   $0x0
  104ca9:	e8 1c 35 00 00       	call   1081ca <__redirect_printf__>
  104cae:	83 c4 10             	add    $0x10,%esp
  104cb1:	83 ec 0c             	sub    $0xc,%esp
  104cb4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  104cb7:	50                   	push   %eax
  104cb8:	e8 0d 35 00 00       	call   1081ca <__redirect_printf__>
  104cbd:	83 c4 10             	add    $0x10,%esp
  104cc0:	0f b6 45 08          	movzbl 0x8(%ebp),%eax
  104cc4:	0f b6 c0             	movzbl %al,%eax
  104cc7:	0f b6 55 08          	movzbl 0x8(%ebp),%edx
  104ccb:	80 fa 09             	cmp    $0x9,%dl
  104cce:	77 07                	ja     104cd7 <cmos_datetime_to_str+0x1c5>
  104cd0:	ba ef a6 10 00       	mov    $0x10a6ef,%edx
  104cd5:	eb 05                	jmp    104cdc <cmos_datetime_to_str+0x1ca>
  104cd7:	ba f1 a6 10 00       	mov    $0x10a6f1,%edx
  104cdc:	83 ec 04             	sub    $0x4,%esp
  104cdf:	50                   	push   %eax
  104ce0:	52                   	push   %edx
  104ce1:	68 f2 a6 10 00       	push   $0x10a6f2
  104ce6:	e8 c7 3d 00 00       	call   108ab2 <printf>
  104ceb:	83 c4 10             	add    $0x10,%esp
  104cee:	83 ec 0c             	sub    $0xc,%esp
  104cf1:	6a 00                	push   $0x0
  104cf3:	e8 d2 34 00 00       	call   1081ca <__redirect_printf__>
  104cf8:	83 c4 10             	add    $0x10,%esp
  104cfb:	83 ec 0c             	sub    $0xc,%esp
  104cfe:	ff 75 10             	push   0x10(%ebp)
  104d01:	e8 c4 34 00 00       	call   1081ca <__redirect_printf__>
  104d06:	83 c4 10             	add    $0x10,%esp
  104d09:	83 ec 04             	sub    $0x4,%esp
  104d0c:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  104d0f:	50                   	push   %eax
  104d10:	8d 45 e9             	lea    -0x17(%ebp),%eax
  104d13:	50                   	push   %eax
  104d14:	8d 45 ec             	lea    -0x14(%ebp),%eax
  104d17:	50                   	push   %eax
  104d18:	8d 45 ef             	lea    -0x11(%ebp),%eax
  104d1b:	50                   	push   %eax
  104d1c:	8d 45 f2             	lea    -0xe(%ebp),%eax
  104d1f:	50                   	push   %eax
  104d20:	8d 45 f5             	lea    -0xb(%ebp),%eax
  104d23:	50                   	push   %eax
  104d24:	68 f7 a6 10 00       	push   $0x10a6f7
  104d29:	e8 84 3d 00 00       	call   108ab2 <printf>
  104d2e:	83 c4 20             	add    $0x20,%esp
  104d31:	83 ec 0c             	sub    $0xc,%esp
  104d34:	6a 00                	push   $0x0
  104d36:	e8 8f 34 00 00       	call   1081ca <__redirect_printf__>
  104d3b:	83 c4 10             	add    $0x10,%esp
  104d3e:	90                   	nop
  104d3f:	c9                   	leave  
  104d40:	c3                   	ret    

00104d41 <sleep>:
  104d41:	55                   	push   %ebp
  104d42:	89 e5                	mov    %esp,%ebp
  104d44:	83 ec 18             	sub    $0x18,%esp
  104d47:	e8 6c ec ff ff       	call   1039b8 <pit_get_millis>
  104d4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104d4f:	90                   	nop
  104d50:	e8 63 ec ff ff       	call   1039b8 <pit_get_millis>
  104d55:	2b 45 f4             	sub    -0xc(%ebp),%eax
  104d58:	39 45 08             	cmp    %eax,0x8(%ebp)
  104d5b:	77 f3                	ja     104d50 <sleep+0xf>
  104d5d:	90                   	nop
  104d5e:	90                   	nop
  104d5f:	c9                   	leave  
  104d60:	c3                   	ret    

00104d61 <standard_lessthan_predicate>:
  104d61:	55                   	push   %ebp
  104d62:	89 e5                	mov    %esp,%ebp
  104d64:	8b 45 08             	mov    0x8(%ebp),%eax
  104d67:	3b 45 0c             	cmp    0xc(%ebp),%eax
  104d6a:	0f 92 c0             	setb   %al
  104d6d:	5d                   	pop    %ebp
  104d6e:	c3                   	ret    

00104d6f <ordered_array_new>:
  104d6f:	55                   	push   %ebp
  104d70:	89 e5                	mov    %esp,%ebp
  104d72:	83 ec 18             	sub    $0x18,%esp
  104d75:	8b 45 0c             	mov    0xc(%ebp),%eax
  104d78:	c1 e0 02             	shl    $0x2,%eax
  104d7b:	83 ec 0c             	sub    $0xc,%esp
  104d7e:	50                   	push   %eax
  104d7f:	e8 a4 0d 00 00       	call   105b28 <kmalloc>
  104d84:	83 c4 10             	add    $0x10,%esp
  104d87:	89 45 e8             	mov    %eax,-0x18(%ebp)
  104d8a:	8b 45 0c             	mov    0xc(%ebp),%eax
  104d8d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  104d94:	8b 45 e8             	mov    -0x18(%ebp),%eax
  104d97:	83 ec 04             	sub    $0x4,%esp
  104d9a:	52                   	push   %edx
  104d9b:	6a 00                	push   $0x0
  104d9d:	50                   	push   %eax
  104d9e:	e8 88 40 00 00       	call   108e2b <memset>
  104da3:	83 c4 10             	add    $0x10,%esp
  104da6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  104dad:	8b 45 0c             	mov    0xc(%ebp),%eax
  104db0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104db3:	8b 45 10             	mov    0x10(%ebp),%eax
  104db6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104db9:	8b 45 08             	mov    0x8(%ebp),%eax
  104dbc:	8b 55 e8             	mov    -0x18(%ebp),%edx
  104dbf:	89 10                	mov    %edx,(%eax)
  104dc1:	8b 55 ec             	mov    -0x14(%ebp),%edx
  104dc4:	89 50 04             	mov    %edx,0x4(%eax)
  104dc7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104dca:	89 50 08             	mov    %edx,0x8(%eax)
  104dcd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104dd0:	89 50 0c             	mov    %edx,0xc(%eax)
  104dd3:	8b 45 08             	mov    0x8(%ebp),%eax
  104dd6:	c9                   	leave  
  104dd7:	c2 04 00             	ret    $0x4

00104dda <ordered_array_new_at>:
  104dda:	55                   	push   %ebp
  104ddb:	89 e5                	mov    %esp,%ebp
  104ddd:	83 ec 18             	sub    $0x18,%esp
  104de0:	8b 45 0c             	mov    0xc(%ebp),%eax
  104de3:	89 45 e8             	mov    %eax,-0x18(%ebp)
  104de6:	8b 45 10             	mov    0x10(%ebp),%eax
  104de9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  104df0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  104df3:	83 ec 04             	sub    $0x4,%esp
  104df6:	52                   	push   %edx
  104df7:	6a 00                	push   $0x0
  104df9:	50                   	push   %eax
  104dfa:	e8 2c 40 00 00       	call   108e2b <memset>
  104dff:	83 c4 10             	add    $0x10,%esp
  104e02:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  104e09:	8b 45 10             	mov    0x10(%ebp),%eax
  104e0c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104e0f:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  104e13:	74 05                	je     104e1a <ordered_array_new_at+0x40>
  104e15:	8b 45 14             	mov    0x14(%ebp),%eax
  104e18:	eb 05                	jmp    104e1f <ordered_array_new_at+0x45>
  104e1a:	b8 61 4d 10 00       	mov    $0x104d61,%eax
  104e1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104e22:	8b 45 08             	mov    0x8(%ebp),%eax
  104e25:	8b 55 e8             	mov    -0x18(%ebp),%edx
  104e28:	89 10                	mov    %edx,(%eax)
  104e2a:	8b 55 ec             	mov    -0x14(%ebp),%edx
  104e2d:	89 50 04             	mov    %edx,0x4(%eax)
  104e30:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104e33:	89 50 08             	mov    %edx,0x8(%eax)
  104e36:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104e39:	89 50 0c             	mov    %edx,0xc(%eax)
  104e3c:	8b 45 08             	mov    0x8(%ebp),%eax
  104e3f:	c9                   	leave  
  104e40:	c2 04 00             	ret    $0x4

00104e43 <ordered_array_delete>:
  104e43:	55                   	push   %ebp
  104e44:	89 e5                	mov    %esp,%ebp
  104e46:	83 ec 08             	sub    $0x8,%esp
  104e49:	83 ec 0c             	sub    $0xc,%esp
  104e4c:	ff 75 08             	push   0x8(%ebp)
  104e4f:	e8 74 0d 00 00       	call   105bc8 <kfree>
  104e54:	83 c4 10             	add    $0x10,%esp
  104e57:	90                   	nop
  104e58:	c9                   	leave  
  104e59:	c3                   	ret    

00104e5a <ordered_array_insert>:
  104e5a:	55                   	push   %ebp
  104e5b:	89 e5                	mov    %esp,%ebp
  104e5d:	83 ec 18             	sub    $0x18,%esp
  104e60:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104e67:	eb 2e                	jmp    104e97 <ordered_array_insert+0x3d>
  104e69:	8b 45 08             	mov    0x8(%ebp),%eax
  104e6c:	8b 10                	mov    (%eax),%edx
  104e6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e71:	c1 e0 02             	shl    $0x2,%eax
  104e74:	01 d0                	add    %edx,%eax
  104e76:	8b 00                	mov    (%eax),%eax
  104e78:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104e7b:	8b 45 08             	mov    0x8(%ebp),%eax
  104e7e:	8b 40 0c             	mov    0xc(%eax),%eax
  104e81:	83 ec 08             	sub    $0x8,%esp
  104e84:	ff 75 ec             	push   -0x14(%ebp)
  104e87:	ff 75 0c             	push   0xc(%ebp)
  104e8a:	ff d0                	call   *%eax
  104e8c:	83 c4 10             	add    $0x10,%esp
  104e8f:	84 c0                	test   %al,%al
  104e91:	75 11                	jne    104ea4 <ordered_array_insert+0x4a>
  104e93:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104e97:	8b 45 08             	mov    0x8(%ebp),%eax
  104e9a:	8b 40 04             	mov    0x4(%eax),%eax
  104e9d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104ea0:	72 c7                	jb     104e69 <ordered_array_insert+0xf>
  104ea2:	eb 01                	jmp    104ea5 <ordered_array_insert+0x4b>
  104ea4:	90                   	nop
  104ea5:	8b 45 08             	mov    0x8(%ebp),%eax
  104ea8:	8b 40 04             	mov    0x4(%eax),%eax
  104eab:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104eae:	75 32                	jne    104ee2 <ordered_array_insert+0x88>
  104eb0:	8b 45 08             	mov    0x8(%ebp),%eax
  104eb3:	8b 40 08             	mov    0x8(%eax),%eax
  104eb6:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104eb9:	0f 83 8f 00 00 00    	jae    104f4e <ordered_array_insert+0xf4>
  104ebf:	8b 45 08             	mov    0x8(%ebp),%eax
  104ec2:	8b 40 04             	mov    0x4(%eax),%eax
  104ec5:	8d 50 01             	lea    0x1(%eax),%edx
  104ec8:	8b 45 08             	mov    0x8(%ebp),%eax
  104ecb:	89 50 04             	mov    %edx,0x4(%eax)
  104ece:	8b 45 08             	mov    0x8(%ebp),%eax
  104ed1:	8b 10                	mov    (%eax),%edx
  104ed3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ed6:	c1 e0 02             	shl    $0x2,%eax
  104ed9:	01 c2                	add    %eax,%edx
  104edb:	8b 45 0c             	mov    0xc(%ebp),%eax
  104ede:	89 02                	mov    %eax,(%edx)
  104ee0:	eb 6c                	jmp    104f4e <ordered_array_insert+0xf4>
  104ee2:	8b 45 08             	mov    0x8(%ebp),%eax
  104ee5:	8b 50 04             	mov    0x4(%eax),%edx
  104ee8:	8b 45 08             	mov    0x8(%ebp),%eax
  104eeb:	8b 40 08             	mov    0x8(%eax),%eax
  104eee:	39 c2                	cmp    %eax,%edx
  104ef0:	73 5c                	jae    104f4e <ordered_array_insert+0xf4>
  104ef2:	8b 45 08             	mov    0x8(%ebp),%eax
  104ef5:	8b 40 04             	mov    0x4(%eax),%eax
  104ef8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104efb:	eb 28                	jmp    104f25 <ordered_array_insert+0xcb>
  104efd:	8b 45 08             	mov    0x8(%ebp),%eax
  104f00:	8b 10                	mov    (%eax),%edx
  104f02:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104f05:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
  104f0a:	c1 e0 02             	shl    $0x2,%eax
  104f0d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  104f10:	8b 45 08             	mov    0x8(%ebp),%eax
  104f13:	8b 10                	mov    (%eax),%edx
  104f15:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104f18:	c1 e0 02             	shl    $0x2,%eax
  104f1b:	01 c2                	add    %eax,%edx
  104f1d:	8b 01                	mov    (%ecx),%eax
  104f1f:	89 02                	mov    %eax,(%edx)
  104f21:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  104f25:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104f28:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  104f2b:	77 d0                	ja     104efd <ordered_array_insert+0xa3>
  104f2d:	8b 45 08             	mov    0x8(%ebp),%eax
  104f30:	8b 10                	mov    (%eax),%edx
  104f32:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f35:	c1 e0 02             	shl    $0x2,%eax
  104f38:	01 c2                	add    %eax,%edx
  104f3a:	8b 45 0c             	mov    0xc(%ebp),%eax
  104f3d:	89 02                	mov    %eax,(%edx)
  104f3f:	8b 45 08             	mov    0x8(%ebp),%eax
  104f42:	8b 40 04             	mov    0x4(%eax),%eax
  104f45:	8d 50 01             	lea    0x1(%eax),%edx
  104f48:	8b 45 08             	mov    0x8(%ebp),%eax
  104f4b:	89 50 04             	mov    %edx,0x4(%eax)
  104f4e:	90                   	nop
  104f4f:	c9                   	leave  
  104f50:	c3                   	ret    

00104f51 <ordered_array_delete_at>:
  104f51:	55                   	push   %ebp
  104f52:	89 e5                	mov    %esp,%ebp
  104f54:	83 ec 18             	sub    $0x18,%esp
  104f57:	8b 45 0c             	mov    0xc(%ebp),%eax
  104f5a:	89 45 e8             	mov    %eax,-0x18(%ebp)
  104f5d:	8b 45 10             	mov    0x10(%ebp),%eax
  104f60:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104f63:	8b 45 08             	mov    0x8(%ebp),%eax
  104f66:	8b 40 04             	mov    0x4(%eax),%eax
  104f69:	85 c0                	test   %eax,%eax
  104f6b:	74 4e                	je     104fbb <ordered_array_delete_at+0x6a>
  104f6d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  104f71:	78 48                	js     104fbb <ordered_array_delete_at+0x6a>
  104f73:	8b 45 e8             	mov    -0x18(%ebp),%eax
  104f76:	89 45 fc             	mov    %eax,-0x4(%ebp)
  104f79:	eb 26                	jmp    104fa1 <ordered_array_delete_at+0x50>
  104f7b:	8b 45 08             	mov    0x8(%ebp),%eax
  104f7e:	8b 10                	mov    (%eax),%edx
  104f80:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104f83:	83 c0 01             	add    $0x1,%eax
  104f86:	c1 e0 02             	shl    $0x2,%eax
  104f89:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  104f8c:	8b 45 08             	mov    0x8(%ebp),%eax
  104f8f:	8b 10                	mov    (%eax),%edx
  104f91:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104f94:	c1 e0 02             	shl    $0x2,%eax
  104f97:	01 c2                	add    %eax,%edx
  104f99:	8b 01                	mov    (%ecx),%eax
  104f9b:	89 02                	mov    %eax,(%edx)
  104f9d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  104fa1:	8b 45 08             	mov    0x8(%ebp),%eax
  104fa4:	8b 40 04             	mov    0x4(%eax),%eax
  104fa7:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  104faa:	72 cf                	jb     104f7b <ordered_array_delete_at+0x2a>
  104fac:	8b 45 08             	mov    0x8(%ebp),%eax
  104faf:	8b 40 04             	mov    0x4(%eax),%eax
  104fb2:	8d 50 ff             	lea    -0x1(%eax),%edx
  104fb5:	8b 45 08             	mov    0x8(%ebp),%eax
  104fb8:	89 50 04             	mov    %edx,0x4(%eax)
  104fbb:	90                   	nop
  104fbc:	c9                   	leave  
  104fbd:	c3                   	ret    

00104fbe <ordered_array_at>:
  104fbe:	55                   	push   %ebp
  104fbf:	89 e5                	mov    %esp,%ebp
  104fc1:	83 ec 08             	sub    $0x8,%esp
  104fc4:	8b 45 0c             	mov    0xc(%ebp),%eax
  104fc7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  104fca:	8b 45 10             	mov    0x10(%ebp),%eax
  104fcd:	89 45 fc             	mov    %eax,-0x4(%ebp)
  104fd0:	8b 55 f8             	mov    -0x8(%ebp),%edx
  104fd3:	8b 45 08             	mov    0x8(%ebp),%eax
  104fd6:	8b 40 04             	mov    0x4(%eax),%eax
  104fd9:	39 c2                	cmp    %eax,%edx
  104fdb:	73 17                	jae    104ff4 <ordered_array_at+0x36>
  104fdd:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  104fe1:	78 11                	js     104ff4 <ordered_array_at+0x36>
  104fe3:	8b 45 08             	mov    0x8(%ebp),%eax
  104fe6:	8b 10                	mov    (%eax),%edx
  104fe8:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104feb:	c1 e0 02             	shl    $0x2,%eax
  104fee:	01 d0                	add    %edx,%eax
  104ff0:	8b 00                	mov    (%eax),%eax
  104ff2:	eb 05                	jmp    104ff9 <ordered_array_at+0x3b>
  104ff4:	b8 00 00 00 00       	mov    $0x0,%eax
  104ff9:	c9                   	leave  
  104ffa:	c3                   	ret    

00104ffb <ordered_array_index_of>:
  104ffb:	55                   	push   %ebp
  104ffc:	89 e5                	mov    %esp,%ebp
  104ffe:	83 ec 10             	sub    $0x10,%esp
  105001:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
  105008:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  10500f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105016:	eb 27                	jmp    10503f <ordered_array_index_of+0x44>
  105018:	8b 45 08             	mov    0x8(%ebp),%eax
  10501b:	8b 10                	mov    (%eax),%edx
  10501d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105020:	c1 e0 02             	shl    $0x2,%eax
  105023:	01 d0                	add    %edx,%eax
  105025:	8b 00                	mov    (%eax),%eax
  105027:	39 45 0c             	cmp    %eax,0xc(%ebp)
  10502a:	75 0f                	jne    10503b <ordered_array_index_of+0x40>
  10502c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10502f:	89 45 f8             	mov    %eax,-0x8(%ebp)
  105032:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  105039:	eb 0f                	jmp    10504a <ordered_array_index_of+0x4f>
  10503b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10503f:	8b 45 08             	mov    0x8(%ebp),%eax
  105042:	8b 40 04             	mov    0x4(%eax),%eax
  105045:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105048:	72 ce                	jb     105018 <ordered_array_index_of+0x1d>
  10504a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10504d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  105050:	c9                   	leave  
  105051:	c3                   	ret    

00105052 <merge_available_blocks>:
  105052:	55                   	push   %ebp
  105053:	89 e5                	mov    %esp,%ebp
  105055:	83 ec 38             	sub    $0x38,%esp
  105058:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10505f:	e9 84 00 00 00       	jmp    1050e8 <merge_available_blocks+0x96>
  105064:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105067:	ba 00 00 00 00       	mov    $0x0,%edx
  10506c:	83 ec 04             	sub    $0x4,%esp
  10506f:	52                   	push   %edx
  105070:	50                   	push   %eax
  105071:	68 e0 11 14 00       	push   $0x1411e0
  105076:	e8 43 ff ff ff       	call   104fbe <ordered_array_at>
  10507b:	83 c4 10             	add    $0x10,%esp
  10507e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105081:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105084:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105088:	84 c0                	test   %al,%al
  10508a:	75 58                	jne    1050e4 <merge_available_blocks+0x92>
  10508c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10508f:	83 c0 01             	add    $0x1,%eax
  105092:	89 45 dc             	mov    %eax,-0x24(%ebp)
  105095:	8b 45 dc             	mov    -0x24(%ebp),%eax
  105098:	ba 00 00 00 00       	mov    $0x0,%edx
  10509d:	83 ec 04             	sub    $0x4,%esp
  1050a0:	52                   	push   %edx
  1050a1:	50                   	push   %eax
  1050a2:	68 e0 11 14 00       	push   $0x1411e0
  1050a7:	e8 12 ff ff ff       	call   104fbe <ordered_array_at>
  1050ac:	83 c4 10             	add    $0x10,%esp
  1050af:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1050b2:	eb 1b                	jmp    1050cf <merge_available_blocks+0x7d>
  1050b4:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1050b7:	8b 50 04             	mov    0x4(%eax),%edx
  1050ba:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1050bd:	8b 40 04             	mov    0x4(%eax),%eax
  1050c0:	01 c2                	add    %eax,%edx
  1050c2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1050c5:	89 50 04             	mov    %edx,0x4(%eax)
  1050c8:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1050cb:	c6 40 08 02          	movb   $0x2,0x8(%eax)
  1050cf:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  1050d4:	39 45 dc             	cmp    %eax,-0x24(%ebp)
  1050d7:	73 0b                	jae    1050e4 <merge_available_blocks+0x92>
  1050d9:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1050dc:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  1050e0:	84 c0                	test   %al,%al
  1050e2:	74 d0                	je     1050b4 <merge_available_blocks+0x62>
  1050e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1050e8:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  1050ed:	83 e8 01             	sub    $0x1,%eax
  1050f0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1050f3:	0f 82 6b ff ff ff    	jb     105064 <merge_available_blocks+0x12>
  1050f9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  105100:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  105107:	83 ec 04             	sub    $0x4,%esp
  10510a:	ff 75 ec             	push   -0x14(%ebp)
  10510d:	ff 75 e8             	push   -0x18(%ebp)
  105110:	68 e0 11 14 00       	push   $0x1411e0
  105115:	e8 a4 fe ff ff       	call   104fbe <ordered_array_at>
  10511a:	83 c4 10             	add    $0x10,%esp
  10511d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105120:	eb 5d                	jmp    10517f <merge_available_blocks+0x12d>
  105122:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  105125:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105129:	3c 02                	cmp    $0x2,%al
  10512b:	75 31                	jne    10515e <merge_available_blocks+0x10c>
  10512d:	83 ec 04             	sub    $0x4,%esp
  105130:	ff 75 ec             	push   -0x14(%ebp)
  105133:	ff 75 e8             	push   -0x18(%ebp)
  105136:	68 e0 11 14 00       	push   $0x1411e0
  10513b:	e8 11 fe ff ff       	call   104f51 <ordered_array_delete_at>
  105140:	83 c4 10             	add    $0x10,%esp
  105143:	83 ec 04             	sub    $0x4,%esp
  105146:	ff 75 ec             	push   -0x14(%ebp)
  105149:	ff 75 e8             	push   -0x18(%ebp)
  10514c:	68 e0 11 14 00       	push   $0x1411e0
  105151:	e8 68 fe ff ff       	call   104fbe <ordered_array_at>
  105156:	83 c4 10             	add    $0x10,%esp
  105159:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10515c:	eb 21                	jmp    10517f <merge_available_blocks+0x12d>
  10515e:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  105162:	83 55 ec 00          	adcl   $0x0,-0x14(%ebp)
  105166:	83 ec 04             	sub    $0x4,%esp
  105169:	ff 75 ec             	push   -0x14(%ebp)
  10516c:	ff 75 e8             	push   -0x18(%ebp)
  10516f:	68 e0 11 14 00       	push   $0x1411e0
  105174:	e8 45 fe ff ff       	call   104fbe <ordered_array_at>
  105179:	83 c4 10             	add    $0x10,%esp
  10517c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10517f:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  105184:	ba 00 00 00 00       	mov    $0x0,%edx
  105189:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10518c:	39 45 e8             	cmp    %eax,-0x18(%ebp)
  10518f:	19 d1                	sbb    %edx,%ecx
  105191:	7c 8f                	jl     105122 <merge_available_blocks+0xd0>
  105193:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  105198:	83 f8 01             	cmp    $0x1,%eax
  10519b:	0f 85 20 01 00 00    	jne    1052c1 <merge_available_blocks+0x26f>
  1051a1:	83 ec 04             	sub    $0x4,%esp
  1051a4:	6a 00                	push   $0x0
  1051a6:	6a 00                	push   $0x0
  1051a8:	68 e0 11 14 00       	push   $0x1411e0
  1051ad:	e8 0c fe ff ff       	call   104fbe <ordered_array_at>
  1051b2:	83 c4 10             	add    $0x10,%esp
  1051b5:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  1051b9:	84 c0                	test   %al,%al
  1051bb:	0f 85 00 01 00 00    	jne    1052c1 <merge_available_blocks+0x26f>
  1051c1:	83 ec 04             	sub    $0x4,%esp
  1051c4:	6a 00                	push   $0x0
  1051c6:	6a 00                	push   $0x0
  1051c8:	68 e0 11 14 00       	push   $0x1411e0
  1051cd:	e8 7f fd ff ff       	call   104f51 <ordered_array_delete_at>
  1051d2:	83 c4 10             	add    $0x10,%esp
  1051d5:	83 ec 0c             	sub    $0xc,%esp
  1051d8:	68 e0 0d 14 00       	push   $0x140de0
  1051dd:	e8 e8 2f 00 00       	call   1081ca <__redirect_printf__>
  1051e2:	83 c4 10             	add    $0x10,%esp
  1051e5:	83 ec 0c             	sub    $0xc,%esp
  1051e8:	68 0c a7 10 00       	push   $0x10a70c
  1051ed:	e8 c0 38 00 00       	call   108ab2 <printf>
  1051f2:	83 c4 10             	add    $0x10,%esp
  1051f5:	83 ec 0c             	sub    $0xc,%esp
  1051f8:	6a 00                	push   $0x0
  1051fa:	e8 cb 2f 00 00       	call   1081ca <__redirect_printf__>
  1051ff:	83 c4 10             	add    $0x10,%esp
  105202:	83 ec 0c             	sub    $0xc,%esp
  105205:	8d 45 d2             	lea    -0x2e(%ebp),%eax
  105208:	50                   	push   %eax
  105209:	e8 9f d4 ff ff       	call   1026ad <cmos_read_rtc>
  10520e:	83 c4 10             	add    $0x10,%esp
  105211:	83 ec 04             	sub    $0x4,%esp
  105214:	68 cc 11 14 00       	push   $0x1411cc
  105219:	83 ec 08             	sub    $0x8,%esp
  10521c:	89 e0                	mov    %esp,%eax
  10521e:	8b 55 d2             	mov    -0x2e(%ebp),%edx
  105221:	89 10                	mov    %edx,(%eax)
  105223:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
  105227:	66 89 50 04          	mov    %dx,0x4(%eax)
  10522b:	e8 e2 f8 ff ff       	call   104b12 <cmos_datetime_to_str>
  105230:	83 c4 10             	add    $0x10,%esp
  105233:	83 ec 0c             	sub    $0xc,%esp
  105236:	68 e0 09 14 00       	push   $0x1409e0
  10523b:	e8 8a 2f 00 00       	call   1081ca <__redirect_printf__>
  105240:	83 c4 10             	add    $0x10,%esp
  105243:	83 ec 04             	sub    $0x4,%esp
  105246:	68 e0 0d 14 00       	push   $0x140de0
  10524b:	68 cc 11 14 00       	push   $0x1411cc
  105250:	68 40 a7 10 00       	push   $0x10a740
  105255:	e8 58 38 00 00       	call   108ab2 <printf>
  10525a:	83 c4 10             	add    $0x10,%esp
  10525d:	83 ec 0c             	sub    $0xc,%esp
  105260:	6a 00                	push   $0x0
  105262:	e8 63 2f 00 00       	call   1081ca <__redirect_printf__>
  105267:	83 c4 10             	add    $0x10,%esp
  10526a:	83 ec 08             	sub    $0x8,%esp
  10526d:	68 e0 09 14 00       	push   $0x1409e0
  105272:	68 f8 03 00 00       	push   $0x3f8
  105277:	e8 8e cf ff ff       	call   10220a <com_write>
  10527c:	83 c4 10             	add    $0x10,%esp
  10527f:	83 ec 04             	sub    $0x4,%esp
  105282:	68 00 04 00 00       	push   $0x400
  105287:	6a 00                	push   $0x0
  105289:	68 e0 09 14 00       	push   $0x1409e0
  10528e:	e8 98 3b 00 00       	call   108e2b <memset>
  105293:	83 c4 10             	add    $0x10,%esp
  105296:	83 ec 04             	sub    $0x4,%esp
  105299:	68 ec 03 00 00       	push   $0x3ec
  10529e:	6a 00                	push   $0x0
  1052a0:	68 e0 0d 14 00       	push   $0x140de0
  1052a5:	e8 81 3b 00 00       	call   108e2b <memset>
  1052aa:	83 c4 10             	add    $0x10,%esp
  1052ad:	83 ec 04             	sub    $0x4,%esp
  1052b0:	6a 14                	push   $0x14
  1052b2:	6a 00                	push   $0x0
  1052b4:	68 cc 11 14 00       	push   $0x1411cc
  1052b9:	e8 6d 3b 00 00       	call   108e2b <memset>
  1052be:	83 c4 10             	add    $0x10,%esp
  1052c1:	90                   	nop
  1052c2:	c9                   	leave  
  1052c3:	c3                   	ret    

001052c4 <__kheap_malloc_at__>:
  1052c4:	55                   	push   %ebp
  1052c5:	89 e5                	mov    %esp,%ebp
  1052c7:	83 ec 48             	sub    $0x48,%esp
  1052ca:	8b 45 10             	mov    0x10(%ebp),%eax
  1052cd:	88 45 c4             	mov    %al,-0x3c(%ebp)
  1052d0:	8b 45 08             	mov    0x8(%ebp),%eax
  1052d3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1052d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1052d9:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1052dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1052df:	83 c0 0c             	add    $0xc,%eax
  1052e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1052e5:	83 ec 08             	sub    $0x8,%esp
  1052e8:	ff 75 ec             	push   -0x14(%ebp)
  1052eb:	68 e0 11 14 00       	push   $0x1411e0
  1052f0:	e8 06 fd ff ff       	call   104ffb <ordered_array_index_of>
  1052f5:	83 c4 10             	add    $0x10,%esp
  1052f8:	83 ec 04             	sub    $0x4,%esp
  1052fb:	52                   	push   %edx
  1052fc:	50                   	push   %eax
  1052fd:	68 e0 11 14 00       	push   $0x1411e0
  105302:	e8 4a fc ff ff       	call   104f51 <ordered_array_delete_at>
  105307:	83 c4 10             	add    $0x10,%esp
  10530a:	80 7d c4 01          	cmpb   $0x1,-0x3c(%ebp)
  10530e:	75 1a                	jne    10532a <__kheap_malloc_at__+0x66>
  105310:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105313:	25 ff 0f 00 00       	and    $0xfff,%eax
  105318:	85 c0                	test   %eax,%eax
  10531a:	74 0e                	je     10532a <__kheap_malloc_at__+0x66>
  10531c:	81 65 f4 00 f0 ff ff 	andl   $0xfffff000,-0xc(%ebp)
  105323:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  10532a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10532d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105330:	89 10                	mov    %edx,(%eax)
  105332:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105335:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  105339:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10533c:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10533f:	89 c2                	mov    %eax,%edx
  105341:	8b 45 0c             	mov    0xc(%ebp),%eax
  105344:	01 c2                	add    %eax,%edx
  105346:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105349:	89 50 04             	mov    %edx,0x4(%eax)
  10534c:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  105350:	74 58                	je     1053aa <__kheap_malloc_at__+0xe6>
  105352:	e8 61 10 00 00       	call   1063b8 <paging_kernel_page_directory>
  105357:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10535a:	83 ec 04             	sub    $0x4,%esp
  10535d:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  105360:	50                   	push   %eax
  105361:	8d 45 d8             	lea    -0x28(%ebp),%eax
  105364:	50                   	push   %eax
  105365:	ff 75 f4             	push   -0xc(%ebp)
  105368:	e8 02 0f 00 00       	call   10626f <paging_get_page>
  10536d:	83 c4 10             	add    $0x10,%esp
  105370:	8b 55 d8             	mov    -0x28(%ebp),%edx
  105373:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105376:	8b 14 90             	mov    (%eax,%edx,4),%edx
  105379:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  10537c:	c1 e0 02             	shl    $0x2,%eax
  10537f:	01 d0                	add    %edx,%eax
  105381:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105384:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  105387:	8b 00                	mov    (%eax),%eax
  105389:	c1 e8 0c             	shr    $0xc,%eax
  10538c:	c1 e0 0c             	shl    $0xc,%eax
  10538f:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105392:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105395:	25 ff 0f 00 00       	and    $0xfff,%eax
  10539a:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10539d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1053a0:	0b 45 dc             	or     -0x24(%ebp),%eax
  1053a3:	89 c2                	mov    %eax,%edx
  1053a5:	8b 45 14             	mov    0x14(%ebp),%eax
  1053a8:	89 10                	mov    %edx,(%eax)
  1053aa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1053ad:	8b 40 04             	mov    0x4(%eax),%eax
  1053b0:	8d 50 f4             	lea    -0xc(%eax),%edx
  1053b3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1053b6:	05 90 00 00 00       	add    $0x90,%eax
  1053bb:	83 ec 04             	sub    $0x4,%esp
  1053be:	52                   	push   %edx
  1053bf:	6a 00                	push   $0x0
  1053c1:	50                   	push   %eax
  1053c2:	e8 64 3a 00 00       	call   108e2b <memset>
  1053c7:	83 c4 10             	add    $0x10,%esp
  1053ca:	83 ec 08             	sub    $0x8,%esp
  1053cd:	ff 75 ec             	push   -0x14(%ebp)
  1053d0:	68 e0 11 14 00       	push   $0x1411e0
  1053d5:	e8 80 fa ff ff       	call   104e5a <ordered_array_insert>
  1053da:	83 c4 10             	add    $0x10,%esp
  1053dd:	83 ec 0c             	sub    $0xc,%esp
  1053e0:	68 e0 0d 14 00       	push   $0x140de0
  1053e5:	e8 e0 2d 00 00       	call   1081ca <__redirect_printf__>
  1053ea:	83 c4 10             	add    $0x10,%esp
  1053ed:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1053f0:	8b 10                	mov    (%eax),%edx
  1053f2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1053f5:	8b 40 04             	mov    0x4(%eax),%eax
  1053f8:	83 ec 0c             	sub    $0xc,%esp
  1053fb:	52                   	push   %edx
  1053fc:	ff 75 08             	push   0x8(%ebp)
  1053ff:	50                   	push   %eax
  105400:	ff 75 0c             	push   0xc(%ebp)
  105403:	68 48 a7 10 00       	push   $0x10a748
  105408:	e8 a5 36 00 00       	call   108ab2 <printf>
  10540d:	83 c4 20             	add    $0x20,%esp
  105410:	83 ec 0c             	sub    $0xc,%esp
  105413:	6a 00                	push   $0x0
  105415:	e8 b0 2d 00 00       	call   1081ca <__redirect_printf__>
  10541a:	83 c4 10             	add    $0x10,%esp
  10541d:	83 ec 0c             	sub    $0xc,%esp
  105420:	8d 45 ce             	lea    -0x32(%ebp),%eax
  105423:	50                   	push   %eax
  105424:	e8 84 d2 ff ff       	call   1026ad <cmos_read_rtc>
  105429:	83 c4 10             	add    $0x10,%esp
  10542c:	83 ec 04             	sub    $0x4,%esp
  10542f:	68 cc 11 14 00       	push   $0x1411cc
  105434:	83 ec 08             	sub    $0x8,%esp
  105437:	89 e0                	mov    %esp,%eax
  105439:	8b 55 ce             	mov    -0x32(%ebp),%edx
  10543c:	89 10                	mov    %edx,(%eax)
  10543e:	0f b7 55 d2          	movzwl -0x2e(%ebp),%edx
  105442:	66 89 50 04          	mov    %dx,0x4(%eax)
  105446:	e8 c7 f6 ff ff       	call   104b12 <cmos_datetime_to_str>
  10544b:	83 c4 10             	add    $0x10,%esp
  10544e:	83 ec 0c             	sub    $0xc,%esp
  105451:	68 e0 09 14 00       	push   $0x1409e0
  105456:	e8 6f 2d 00 00       	call   1081ca <__redirect_printf__>
  10545b:	83 c4 10             	add    $0x10,%esp
  10545e:	83 ec 04             	sub    $0x4,%esp
  105461:	68 e0 0d 14 00       	push   $0x140de0
  105466:	68 cc 11 14 00       	push   $0x1411cc
  10546b:	68 40 a7 10 00       	push   $0x10a740
  105470:	e8 3d 36 00 00       	call   108ab2 <printf>
  105475:	83 c4 10             	add    $0x10,%esp
  105478:	83 ec 0c             	sub    $0xc,%esp
  10547b:	6a 00                	push   $0x0
  10547d:	e8 48 2d 00 00       	call   1081ca <__redirect_printf__>
  105482:	83 c4 10             	add    $0x10,%esp
  105485:	83 ec 08             	sub    $0x8,%esp
  105488:	68 e0 09 14 00       	push   $0x1409e0
  10548d:	68 f8 03 00 00       	push   $0x3f8
  105492:	e8 73 cd ff ff       	call   10220a <com_write>
  105497:	83 c4 10             	add    $0x10,%esp
  10549a:	83 ec 04             	sub    $0x4,%esp
  10549d:	68 00 04 00 00       	push   $0x400
  1054a2:	6a 00                	push   $0x0
  1054a4:	68 e0 09 14 00       	push   $0x1409e0
  1054a9:	e8 7d 39 00 00       	call   108e2b <memset>
  1054ae:	83 c4 10             	add    $0x10,%esp
  1054b1:	83 ec 04             	sub    $0x4,%esp
  1054b4:	68 ec 03 00 00       	push   $0x3ec
  1054b9:	6a 00                	push   $0x0
  1054bb:	68 e0 0d 14 00       	push   $0x140de0
  1054c0:	e8 66 39 00 00       	call   108e2b <memset>
  1054c5:	83 c4 10             	add    $0x10,%esp
  1054c8:	83 ec 04             	sub    $0x4,%esp
  1054cb:	6a 14                	push   $0x14
  1054cd:	6a 00                	push   $0x0
  1054cf:	68 cc 11 14 00       	push   $0x1411cc
  1054d4:	e8 52 39 00 00       	call   108e2b <memset>
  1054d9:	83 c4 10             	add    $0x10,%esp
  1054dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1054df:	8b 00                	mov    (%eax),%eax
  1054e1:	c9                   	leave  
  1054e2:	c3                   	ret    

001054e3 <__kheap_malloc__>:
  1054e3:	55                   	push   %ebp
  1054e4:	89 e5                	mov    %esp,%ebp
  1054e6:	83 ec 38             	sub    $0x38,%esp
  1054e9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1054ec:	88 45 d4             	mov    %al,-0x2c(%ebp)
  1054ef:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  1054f4:	85 c0                	test   %eax,%eax
  1054f6:	75 1d                	jne    105515 <__kheap_malloc__+0x32>
  1054f8:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
  1054fc:	ff 75 10             	push   0x10(%ebp)
  1054ff:	50                   	push   %eax
  105500:	ff 75 08             	push   0x8(%ebp)
  105503:	68 00 00 00 c0       	push   $0xc0000000
  105508:	e8 b7 fd ff ff       	call   1052c4 <__kheap_malloc_at__>
  10550d:	83 c4 10             	add    $0x10,%esp
  105510:	e9 29 01 00 00       	jmp    10563e <__kheap_malloc__+0x15b>
  105515:	8b 45 08             	mov    0x8(%ebp),%eax
  105518:	83 c0 0c             	add    $0xc,%eax
  10551b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10551e:	80 7d d4 01          	cmpb   $0x1,-0x2c(%ebp)
  105522:	75 07                	jne    10552b <__kheap_malloc__+0x48>
  105524:	b8 f3 0f 00 00       	mov    $0xff3,%eax
  105529:	eb 05                	jmp    105530 <__kheap_malloc__+0x4d>
  10552b:	b8 00 00 00 00       	mov    $0x0,%eax
  105530:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105533:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10553a:	eb 5a                	jmp    105596 <__kheap_malloc__+0xb3>
  10553c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10553f:	ba 00 00 00 00       	mov    $0x0,%edx
  105544:	83 ec 04             	sub    $0x4,%esp
  105547:	52                   	push   %edx
  105548:	50                   	push   %eax
  105549:	68 e0 11 14 00       	push   $0x1411e0
  10554e:	e8 6b fa ff ff       	call   104fbe <ordered_array_at>
  105553:	83 c4 10             	add    $0x10,%esp
  105556:	89 45 d8             	mov    %eax,-0x28(%ebp)
  105559:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10555c:	8b 40 04             	mov    0x4(%eax),%eax
  10555f:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  105562:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  105565:	01 ca                	add    %ecx,%edx
  105567:	39 d0                	cmp    %edx,%eax
  105569:	72 27                	jb     105592 <__kheap_malloc__+0xaf>
  10556b:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10556e:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105572:	84 c0                	test   %al,%al
  105574:	75 1c                	jne    105592 <__kheap_malloc__+0xaf>
  105576:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  10557a:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10557d:	ff 75 10             	push   0x10(%ebp)
  105580:	52                   	push   %edx
  105581:	ff 75 08             	push   0x8(%ebp)
  105584:	50                   	push   %eax
  105585:	e8 3a fd ff ff       	call   1052c4 <__kheap_malloc_at__>
  10558a:	83 c4 10             	add    $0x10,%esp
  10558d:	e9 ac 00 00 00       	jmp    10563e <__kheap_malloc__+0x15b>
  105592:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105596:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  10559b:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10559e:	72 9c                	jb     10553c <__kheap_malloc__+0x59>
  1055a0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1055a7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1055ae:	eb 45                	jmp    1055f5 <__kheap_malloc__+0x112>
  1055b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1055b3:	ba 00 00 00 00       	mov    $0x0,%edx
  1055b8:	83 ec 04             	sub    $0x4,%esp
  1055bb:	52                   	push   %edx
  1055bc:	50                   	push   %eax
  1055bd:	68 e0 11 14 00       	push   $0x1411e0
  1055c2:	e8 f7 f9 ff ff       	call   104fbe <ordered_array_at>
  1055c7:	83 c4 10             	add    $0x10,%esp
  1055ca:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1055cd:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1055d0:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1055d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1055d6:	8b 50 04             	mov    0x4(%eax),%edx
  1055d9:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1055dc:	01 d0                	add    %edx,%eax
  1055de:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  1055e1:	73 0e                	jae    1055f1 <__kheap_malloc__+0x10e>
  1055e3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1055e6:	8b 50 04             	mov    0x4(%eax),%edx
  1055e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1055ec:	01 d0                	add    %edx,%eax
  1055ee:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1055f1:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1055f5:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  1055fa:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1055fd:	72 b1                	jb     1055b0 <__kheap_malloc__+0xcd>
  1055ff:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105602:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105605:	01 c2                	add    %eax,%edx
  105607:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10560a:	01 d0                	add    %edx,%eax
  10560c:	3d 00 00 00 c1       	cmp    $0xc1000000,%eax
  105611:	76 15                	jbe    105628 <__kheap_malloc__+0x145>
  105613:	83 ec 0c             	sub    $0xc,%esp
  105616:	68 a8 a7 10 00       	push   $0x10a7a8
  10561b:	e8 92 34 00 00       	call   108ab2 <printf>
  105620:	83 c4 10             	add    $0x10,%esp
  105623:	e8 3a 37 00 00       	call   108d62 <abort>
  105628:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
  10562c:	ff 75 10             	push   0x10(%ebp)
  10562f:	50                   	push   %eax
  105630:	ff 75 08             	push   0x8(%ebp)
  105633:	ff 75 f0             	push   -0x10(%ebp)
  105636:	e8 89 fc ff ff       	call   1052c4 <__kheap_malloc_at__>
  10563b:	83 c4 10             	add    $0x10,%esp
  10563e:	c9                   	leave  
  10563f:	c3                   	ret    

00105640 <size_based_less_than>:
  105640:	55                   	push   %ebp
  105641:	89 e5                	mov    %esp,%ebp
  105643:	83 ec 10             	sub    $0x10,%esp
  105646:	8b 45 08             	mov    0x8(%ebp),%eax
  105649:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10564c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10564f:	89 45 f8             	mov    %eax,-0x8(%ebp)
  105652:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105655:	8b 50 04             	mov    0x4(%eax),%edx
  105658:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10565b:	8b 40 04             	mov    0x4(%eax),%eax
  10565e:	39 c2                	cmp    %eax,%edx
  105660:	0f 92 c0             	setb   %al
  105663:	c9                   	leave  
  105664:	c3                   	ret    

00105665 <kheap_init>:
  105665:	55                   	push   %ebp
  105666:	89 e5                	mov    %esp,%ebp
  105668:	83 ec 18             	sub    $0x18,%esp
  10566b:	8d 45 e8             	lea    -0x18(%ebp),%eax
  10566e:	83 ec 04             	sub    $0x4,%esp
  105671:	68 40 56 10 00       	push   $0x105640
  105676:	68 00 00 00 01       	push   $0x1000000
  10567b:	50                   	push   %eax
  10567c:	e8 ee f6 ff ff       	call   104d6f <ordered_array_new>
  105681:	83 c4 0c             	add    $0xc,%esp
  105684:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105687:	a3 e0 11 14 00       	mov    %eax,0x1411e0
  10568c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10568f:	a3 e4 11 14 00       	mov    %eax,0x1411e4
  105694:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105697:	a3 e8 11 14 00       	mov    %eax,0x1411e8
  10569c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10569f:	a3 ec 11 14 00       	mov    %eax,0x1411ec
  1056a4:	90                   	nop
  1056a5:	c9                   	leave  
  1056a6:	c3                   	ret    

001056a7 <kheap_malloc>:
  1056a7:	55                   	push   %ebp
  1056a8:	89 e5                	mov    %esp,%ebp
  1056aa:	83 ec 08             	sub    $0x8,%esp
  1056ad:	83 ec 04             	sub    $0x4,%esp
  1056b0:	6a 00                	push   $0x0
  1056b2:	6a 00                	push   $0x0
  1056b4:	ff 75 08             	push   0x8(%ebp)
  1056b7:	e8 27 fe ff ff       	call   1054e3 <__kheap_malloc__>
  1056bc:	83 c4 10             	add    $0x10,%esp
  1056bf:	c9                   	leave  
  1056c0:	c3                   	ret    

001056c1 <kheap_malloc_a>:
  1056c1:	55                   	push   %ebp
  1056c2:	89 e5                	mov    %esp,%ebp
  1056c4:	83 ec 08             	sub    $0x8,%esp
  1056c7:	83 ec 04             	sub    $0x4,%esp
  1056ca:	6a 00                	push   $0x0
  1056cc:	6a 01                	push   $0x1
  1056ce:	ff 75 08             	push   0x8(%ebp)
  1056d1:	e8 0d fe ff ff       	call   1054e3 <__kheap_malloc__>
  1056d6:	83 c4 10             	add    $0x10,%esp
  1056d9:	c9                   	leave  
  1056da:	c3                   	ret    

001056db <kheap_malloc_ap>:
  1056db:	55                   	push   %ebp
  1056dc:	89 e5                	mov    %esp,%ebp
  1056de:	83 ec 08             	sub    $0x8,%esp
  1056e1:	83 ec 04             	sub    $0x4,%esp
  1056e4:	ff 75 0c             	push   0xc(%ebp)
  1056e7:	6a 01                	push   $0x1
  1056e9:	ff 75 08             	push   0x8(%ebp)
  1056ec:	e8 f2 fd ff ff       	call   1054e3 <__kheap_malloc__>
  1056f1:	83 c4 10             	add    $0x10,%esp
  1056f4:	c9                   	leave  
  1056f5:	c3                   	ret    

001056f6 <kheap_free>:
  1056f6:	55                   	push   %ebp
  1056f7:	89 e5                	mov    %esp,%ebp
  1056f9:	83 ec 28             	sub    $0x28,%esp
  1056fc:	8b 45 08             	mov    0x8(%ebp),%eax
  1056ff:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105702:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105709:	e9 4f 01 00 00       	jmp    10585d <kheap_free+0x167>
  10570e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105711:	ba 00 00 00 00       	mov    $0x0,%edx
  105716:	83 ec 04             	sub    $0x4,%esp
  105719:	52                   	push   %edx
  10571a:	50                   	push   %eax
  10571b:	68 e0 11 14 00       	push   $0x1411e0
  105720:	e8 99 f8 ff ff       	call   104fbe <ordered_array_at>
  105725:	83 c4 10             	add    $0x10,%esp
  105728:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10572b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10572e:	8b 00                	mov    (%eax),%eax
  105730:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  105733:	0f 85 20 01 00 00    	jne    105859 <kheap_free+0x163>
  105739:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10573c:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105740:	3c 01                	cmp    $0x1,%al
  105742:	74 18                	je     10575c <kheap_free+0x66>
  105744:	83 ec 08             	sub    $0x8,%esp
  105747:	ff 75 08             	push   0x8(%ebp)
  10574a:	68 cc a7 10 00       	push   $0x10a7cc
  10574f:	e8 5e 33 00 00       	call   108ab2 <printf>
  105754:	83 c4 10             	add    $0x10,%esp
  105757:	e8 06 36 00 00       	call   108d62 <abort>
  10575c:	83 ec 0c             	sub    $0xc,%esp
  10575f:	68 e0 0d 14 00       	push   $0x140de0
  105764:	e8 61 2a 00 00       	call   1081ca <__redirect_printf__>
  105769:	83 c4 10             	add    $0x10,%esp
  10576c:	83 ec 08             	sub    $0x8,%esp
  10576f:	ff 75 f0             	push   -0x10(%ebp)
  105772:	68 ed a7 10 00       	push   $0x10a7ed
  105777:	e8 36 33 00 00       	call   108ab2 <printf>
  10577c:	83 c4 10             	add    $0x10,%esp
  10577f:	83 ec 0c             	sub    $0xc,%esp
  105782:	6a 00                	push   $0x0
  105784:	e8 41 2a 00 00       	call   1081ca <__redirect_printf__>
  105789:	83 c4 10             	add    $0x10,%esp
  10578c:	83 ec 0c             	sub    $0xc,%esp
  10578f:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  105792:	50                   	push   %eax
  105793:	e8 15 cf ff ff       	call   1026ad <cmos_read_rtc>
  105798:	83 c4 10             	add    $0x10,%esp
  10579b:	83 ec 04             	sub    $0x4,%esp
  10579e:	68 cc 11 14 00       	push   $0x1411cc
  1057a3:	83 ec 08             	sub    $0x8,%esp
  1057a6:	89 e0                	mov    %esp,%eax
  1057a8:	8b 55 e6             	mov    -0x1a(%ebp),%edx
  1057ab:	89 10                	mov    %edx,(%eax)
  1057ad:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  1057b1:	66 89 50 04          	mov    %dx,0x4(%eax)
  1057b5:	e8 58 f3 ff ff       	call   104b12 <cmos_datetime_to_str>
  1057ba:	83 c4 10             	add    $0x10,%esp
  1057bd:	83 ec 0c             	sub    $0xc,%esp
  1057c0:	68 e0 09 14 00       	push   $0x1409e0
  1057c5:	e8 00 2a 00 00       	call   1081ca <__redirect_printf__>
  1057ca:	83 c4 10             	add    $0x10,%esp
  1057cd:	83 ec 04             	sub    $0x4,%esp
  1057d0:	68 e0 0d 14 00       	push   $0x140de0
  1057d5:	68 cc 11 14 00       	push   $0x1411cc
  1057da:	68 40 a7 10 00       	push   $0x10a740
  1057df:	e8 ce 32 00 00       	call   108ab2 <printf>
  1057e4:	83 c4 10             	add    $0x10,%esp
  1057e7:	83 ec 0c             	sub    $0xc,%esp
  1057ea:	6a 00                	push   $0x0
  1057ec:	e8 d9 29 00 00       	call   1081ca <__redirect_printf__>
  1057f1:	83 c4 10             	add    $0x10,%esp
  1057f4:	83 ec 08             	sub    $0x8,%esp
  1057f7:	68 e0 09 14 00       	push   $0x1409e0
  1057fc:	68 f8 03 00 00       	push   $0x3f8
  105801:	e8 04 ca ff ff       	call   10220a <com_write>
  105806:	83 c4 10             	add    $0x10,%esp
  105809:	83 ec 04             	sub    $0x4,%esp
  10580c:	68 00 04 00 00       	push   $0x400
  105811:	6a 00                	push   $0x0
  105813:	68 e0 09 14 00       	push   $0x1409e0
  105818:	e8 0e 36 00 00       	call   108e2b <memset>
  10581d:	83 c4 10             	add    $0x10,%esp
  105820:	83 ec 04             	sub    $0x4,%esp
  105823:	68 ec 03 00 00       	push   $0x3ec
  105828:	6a 00                	push   $0x0
  10582a:	68 e0 0d 14 00       	push   $0x140de0
  10582f:	e8 f7 35 00 00       	call   108e2b <memset>
  105834:	83 c4 10             	add    $0x10,%esp
  105837:	83 ec 04             	sub    $0x4,%esp
  10583a:	6a 14                	push   $0x14
  10583c:	6a 00                	push   $0x0
  10583e:	68 cc 11 14 00       	push   $0x1411cc
  105843:	e8 e3 35 00 00       	call   108e2b <memset>
  105848:	83 c4 10             	add    $0x10,%esp
  10584b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10584e:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  105852:	e8 fb f7 ff ff       	call   105052 <merge_available_blocks>
  105857:	eb 2a                	jmp    105883 <kheap_free+0x18d>
  105859:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10585d:	a1 e4 11 14 00       	mov    0x1411e4,%eax
  105862:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105865:	0f 82 a3 fe ff ff    	jb     10570e <kheap_free+0x18>
  10586b:	83 ec 08             	sub    $0x8,%esp
  10586e:	ff 75 08             	push   0x8(%ebp)
  105871:	68 08 a8 10 00       	push   $0x10a808
  105876:	e8 37 32 00 00       	call   108ab2 <printf>
  10587b:	83 c4 10             	add    $0x10,%esp
  10587e:	e8 df 34 00 00       	call   108d62 <abort>
  105883:	c9                   	leave  
  105884:	c3                   	ret    

00105885 <__kmalloc__>:
  105885:	55                   	push   %ebp
  105886:	89 e5                	mov    %esp,%ebp
  105888:	83 ec 28             	sub    $0x28,%esp
  10588b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10588e:	88 45 e4             	mov    %al,-0x1c(%ebp)
  105891:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
  105895:	75 2c                	jne    1058c3 <__kmalloc__+0x3e>
  105897:	a1 f8 11 14 00       	mov    0x1411f8,%eax
  10589c:	25 ff 0f 00 00       	and    $0xfff,%eax
  1058a1:	85 c0                	test   %eax,%eax
  1058a3:	74 1e                	je     1058c3 <__kmalloc__+0x3e>
  1058a5:	a1 f8 11 14 00       	mov    0x1411f8,%eax
  1058aa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  1058af:	a3 f8 11 14 00       	mov    %eax,0x1411f8
  1058b4:	a1 f8 11 14 00       	mov    0x1411f8,%eax
  1058b9:	05 00 10 00 00       	add    $0x1000,%eax
  1058be:	a3 f8 11 14 00       	mov    %eax,0x1411f8
  1058c3:	a1 f8 11 14 00       	mov    0x1411f8,%eax
  1058c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1058cb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1058ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1058d1:	01 c2                	add    %eax,%edx
  1058d3:	a1 f0 11 14 00       	mov    0x1411f0,%eax
  1058d8:	39 c2                	cmp    %eax,%edx
  1058da:	73 2c                	jae    105908 <__kmalloc__+0x83>
  1058dc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1058e0:	74 07                	je     1058e9 <__kmalloc__+0x64>
  1058e2:	a1 f8 11 14 00       	mov    0x1411f8,%eax
  1058e7:	eb 05                	jmp    1058ee <__kmalloc__+0x69>
  1058e9:	b8 00 00 00 00       	mov    $0x0,%eax
  1058ee:	8b 55 10             	mov    0x10(%ebp),%edx
  1058f1:	89 02                	mov    %eax,(%edx)
  1058f3:	8b 15 f8 11 14 00    	mov    0x1411f8,%edx
  1058f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1058fc:	01 d0                	add    %edx,%eax
  1058fe:	a3 f8 11 14 00       	mov    %eax,0x1411f8
  105903:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105906:	eb 15                	jmp    10591d <__kmalloc__+0x98>
  105908:	83 ec 0c             	sub    $0xc,%esp
  10590b:	68 40 a8 10 00       	push   $0x10a840
  105910:	e8 9d 31 00 00       	call   108ab2 <printf>
  105915:	83 c4 10             	add    $0x10,%esp
  105918:	e8 45 34 00 00       	call   108d62 <abort>
  10591d:	c9                   	leave  
  10591e:	c3                   	ret    

0010591f <memory_init>:
  10591f:	55                   	push   %ebp
  105920:	89 e5                	mov    %esp,%ebp
  105922:	83 ec 18             	sub    $0x18,%esp
  105925:	c7 05 f0 11 14 00 00 	movl   $0x0,0x1411f0
  10592c:	00 00 00 
  10592f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105936:	eb 34                	jmp    10596c <memory_init+0x4d>
  105938:	8b 45 08             	mov    0x8(%ebp),%eax
  10593b:	8b 50 30             	mov    0x30(%eax),%edx
  10593e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105941:	01 d0                	add    %edx,%eax
  105943:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105946:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105949:	8b 40 14             	mov    0x14(%eax),%eax
  10594c:	83 f8 01             	cmp    $0x1,%eax
  10594f:	75 17                	jne    105968 <memory_init+0x49>
  105951:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105954:	8b 50 10             	mov    0x10(%eax),%edx
  105957:	8b 40 0c             	mov    0xc(%eax),%eax
  10595a:	89 c2                	mov    %eax,%edx
  10595c:	a1 f0 11 14 00       	mov    0x1411f0,%eax
  105961:	01 d0                	add    %edx,%eax
  105963:	a3 f0 11 14 00       	mov    %eax,0x1411f0
  105968:	83 45 f4 18          	addl   $0x18,-0xc(%ebp)
  10596c:	8b 45 08             	mov    0x8(%ebp),%eax
  10596f:	8b 40 2c             	mov    0x2c(%eax),%eax
  105972:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105975:	72 c1                	jb     105938 <memory_init+0x19>
  105977:	a1 f0 11 14 00       	mov    0x1411f0,%eax
  10597c:	c1 e8 0c             	shr    $0xc,%eax
  10597f:	a3 f4 11 14 00       	mov    %eax,0x1411f4
  105984:	a1 f4 11 14 00       	mov    0x1411f4,%eax
  105989:	c1 e8 05             	shr    $0x5,%eax
  10598c:	a3 00 12 14 00       	mov    %eax,0x141200
  105991:	8b 45 08             	mov    0x8(%ebp),%eax
  105994:	8b 40 18             	mov    0x18(%eax),%eax
  105997:	83 c0 04             	add    $0x4,%eax
  10599a:	8b 00                	mov    (%eax),%eax
  10599c:	a3 f8 11 14 00       	mov    %eax,0x1411f8
  1059a1:	a1 00 12 14 00       	mov    0x141200,%eax
  1059a6:	83 ec 0c             	sub    $0xc,%esp
  1059a9:	50                   	push   %eax
  1059aa:	e8 79 01 00 00       	call   105b28 <kmalloc>
  1059af:	83 c4 10             	add    $0x10,%esp
  1059b2:	a3 fc 11 14 00       	mov    %eax,0x1411fc
  1059b7:	a1 00 12 14 00       	mov    0x141200,%eax
  1059bc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1059c3:	a1 fc 11 14 00       	mov    0x1411fc,%eax
  1059c8:	83 ec 04             	sub    $0x4,%esp
  1059cb:	52                   	push   %edx
  1059cc:	6a 00                	push   $0x0
  1059ce:	50                   	push   %eax
  1059cf:	e8 57 34 00 00       	call   108e2b <memset>
  1059d4:	83 c4 10             	add    $0x10,%esp
  1059d7:	90                   	nop
  1059d8:	c9                   	leave  
  1059d9:	c3                   	ret    

001059da <memory_get_size>:
  1059da:	55                   	push   %ebp
  1059db:	89 e5                	mov    %esp,%ebp
  1059dd:	a1 f0 11 14 00       	mov    0x1411f0,%eax
  1059e2:	5d                   	pop    %ebp
  1059e3:	c3                   	ret    

001059e4 <memory_get_alloc_addr>:
  1059e4:	55                   	push   %ebp
  1059e5:	89 e5                	mov    %esp,%ebp
  1059e7:	a1 f8 11 14 00       	mov    0x1411f8,%eax
  1059ec:	5d                   	pop    %ebp
  1059ed:	c3                   	ret    

001059ee <memory_next_available_frame>:
  1059ee:	55                   	push   %ebp
  1059ef:	89 e5                	mov    %esp,%ebp
  1059f1:	83 ec 18             	sub    $0x18,%esp
  1059f4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1059fb:	eb 19                	jmp    105a16 <memory_next_available_frame+0x28>
  1059fd:	8b 15 fc 11 14 00    	mov    0x1411fc,%edx
  105a03:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105a06:	c1 e0 02             	shl    $0x2,%eax
  105a09:	01 d0                	add    %edx,%eax
  105a0b:	8b 00                	mov    (%eax),%eax
  105a0d:	83 f8 ff             	cmp    $0xffffffff,%eax
  105a10:	75 10                	jne    105a22 <memory_next_available_frame+0x34>
  105a12:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105a16:	a1 00 12 14 00       	mov    0x141200,%eax
  105a1b:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105a1e:	72 dd                	jb     1059fd <memory_next_available_frame+0xf>
  105a20:	eb 01                	jmp    105a23 <memory_next_available_frame+0x35>
  105a22:	90                   	nop
  105a23:	a1 00 12 14 00       	mov    0x141200,%eax
  105a28:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105a2b:	75 15                	jne    105a42 <memory_next_available_frame+0x54>
  105a2d:	83 ec 0c             	sub    $0xc,%esp
  105a30:	68 60 a8 10 00       	push   $0x10a860
  105a35:	e8 78 30 00 00       	call   108ab2 <printf>
  105a3a:	83 c4 10             	add    $0x10,%esp
  105a3d:	e8 20 33 00 00       	call   108d62 <abort>
  105a42:	8b 15 fc 11 14 00    	mov    0x1411fc,%edx
  105a48:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105a4b:	c1 e0 02             	shl    $0x2,%eax
  105a4e:	01 d0                	add    %edx,%eax
  105a50:	8b 00                	mov    (%eax),%eax
  105a52:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105a55:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  105a5c:	eb 07                	jmp    105a65 <memory_next_available_frame+0x77>
  105a5e:	d1 7d f0             	sarl   -0x10(%ebp)
  105a61:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  105a65:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  105a69:	75 f3                	jne    105a5e <memory_next_available_frame+0x70>
  105a6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105a6e:	c1 e0 05             	shl    $0x5,%eax
  105a71:	89 c2                	mov    %eax,%edx
  105a73:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105a76:	01 d0                	add    %edx,%eax
  105a78:	c1 e0 0c             	shl    $0xc,%eax
  105a7b:	c9                   	leave  
  105a7c:	c3                   	ret    

00105a7d <memory_acquire_frame>:
  105a7d:	55                   	push   %ebp
  105a7e:	89 e5                	mov    %esp,%ebp
  105a80:	83 ec 18             	sub    $0x18,%esp
  105a83:	8b 45 08             	mov    0x8(%ebp),%eax
  105a86:	25 ff 0f 00 00       	and    $0xfff,%eax
  105a8b:	85 c0                	test   %eax,%eax
  105a8d:	74 18                	je     105aa7 <memory_acquire_frame+0x2a>
  105a8f:	83 ec 08             	sub    $0x8,%esp
  105a92:	ff 75 08             	push   0x8(%ebp)
  105a95:	68 90 a8 10 00       	push   $0x10a890
  105a9a:	e8 13 30 00 00       	call   108ab2 <printf>
  105a9f:	83 c4 10             	add    $0x10,%esp
  105aa2:	e8 bb 32 00 00       	call   108d62 <abort>
  105aa7:	a1 fc 11 14 00       	mov    0x1411fc,%eax
  105aac:	85 c0                	test   %eax,%eax
  105aae:	75 18                	jne    105ac8 <memory_acquire_frame+0x4b>
  105ab0:	83 ec 08             	sub    $0x8,%esp
  105ab3:	ff 75 08             	push   0x8(%ebp)
  105ab6:	68 c8 a8 10 00       	push   $0x10a8c8
  105abb:	e8 f2 2f 00 00       	call   108ab2 <printf>
  105ac0:	83 c4 10             	add    $0x10,%esp
  105ac3:	e8 9a 32 00 00       	call   108d62 <abort>
  105ac8:	8b 45 08             	mov    0x8(%ebp),%eax
  105acb:	c1 e8 0c             	shr    $0xc,%eax
  105ace:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105ad1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105ad4:	c1 e8 05             	shr    $0x5,%eax
  105ad7:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105ada:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105add:	83 e0 1f             	and    $0x1f,%eax
  105ae0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105ae3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105ae6:	ba 01 00 00 00       	mov    $0x1,%edx
  105aeb:	89 c1                	mov    %eax,%ecx
  105aed:	d3 e2                	shl    %cl,%edx
  105aef:	89 d0                	mov    %edx,%eax
  105af1:	89 45 e8             	mov    %eax,-0x18(%ebp)
  105af4:	8b 15 fc 11 14 00    	mov    0x1411fc,%edx
  105afa:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105afd:	c1 e0 02             	shl    $0x2,%eax
  105b00:	01 d0                	add    %edx,%eax
  105b02:	8b 00                	mov    (%eax),%eax
  105b04:	8b 0d fc 11 14 00    	mov    0x1411fc,%ecx
  105b0a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105b0d:	c1 e2 02             	shl    $0x2,%edx
  105b10:	01 ca                	add    %ecx,%edx
  105b12:	0b 45 e8             	or     -0x18(%ebp),%eax
  105b15:	89 02                	mov    %eax,(%edx)
  105b17:	90                   	nop
  105b18:	c9                   	leave  
  105b19:	c3                   	ret    

00105b1a <memory_create_heap>:
  105b1a:	55                   	push   %ebp
  105b1b:	89 e5                	mov    %esp,%ebp
  105b1d:	83 ec 08             	sub    $0x8,%esp
  105b20:	e8 40 fb ff ff       	call   105665 <kheap_init>
  105b25:	90                   	nop
  105b26:	c9                   	leave  
  105b27:	c3                   	ret    

00105b28 <kmalloc>:
  105b28:	55                   	push   %ebp
  105b29:	89 e5                	mov    %esp,%ebp
  105b2b:	83 ec 08             	sub    $0x8,%esp
  105b2e:	a1 04 12 14 00       	mov    0x141204,%eax
  105b33:	83 f8 01             	cmp    $0x1,%eax
  105b36:	75 10                	jne    105b48 <kmalloc+0x20>
  105b38:	83 ec 0c             	sub    $0xc,%esp
  105b3b:	ff 75 08             	push   0x8(%ebp)
  105b3e:	e8 64 fb ff ff       	call   1056a7 <kheap_malloc>
  105b43:	83 c4 10             	add    $0x10,%esp
  105b46:	eb 12                	jmp    105b5a <kmalloc+0x32>
  105b48:	83 ec 04             	sub    $0x4,%esp
  105b4b:	6a 00                	push   $0x0
  105b4d:	6a 00                	push   $0x0
  105b4f:	ff 75 08             	push   0x8(%ebp)
  105b52:	e8 2e fd ff ff       	call   105885 <__kmalloc__>
  105b57:	83 c4 10             	add    $0x10,%esp
  105b5a:	c9                   	leave  
  105b5b:	c3                   	ret    

00105b5c <kmalloc_a>:
  105b5c:	55                   	push   %ebp
  105b5d:	89 e5                	mov    %esp,%ebp
  105b5f:	83 ec 08             	sub    $0x8,%esp
  105b62:	a1 04 12 14 00       	mov    0x141204,%eax
  105b67:	83 f8 01             	cmp    $0x1,%eax
  105b6a:	75 10                	jne    105b7c <kmalloc_a+0x20>
  105b6c:	83 ec 0c             	sub    $0xc,%esp
  105b6f:	ff 75 08             	push   0x8(%ebp)
  105b72:	e8 4a fb ff ff       	call   1056c1 <kheap_malloc_a>
  105b77:	83 c4 10             	add    $0x10,%esp
  105b7a:	eb 12                	jmp    105b8e <kmalloc_a+0x32>
  105b7c:	83 ec 04             	sub    $0x4,%esp
  105b7f:	6a 00                	push   $0x0
  105b81:	6a 01                	push   $0x1
  105b83:	ff 75 08             	push   0x8(%ebp)
  105b86:	e8 fa fc ff ff       	call   105885 <__kmalloc__>
  105b8b:	83 c4 10             	add    $0x10,%esp
  105b8e:	c9                   	leave  
  105b8f:	c3                   	ret    

00105b90 <kmalloc_ap>:
  105b90:	55                   	push   %ebp
  105b91:	89 e5                	mov    %esp,%ebp
  105b93:	83 ec 08             	sub    $0x8,%esp
  105b96:	a1 04 12 14 00       	mov    0x141204,%eax
  105b9b:	83 f8 01             	cmp    $0x1,%eax
  105b9e:	75 13                	jne    105bb3 <kmalloc_ap+0x23>
  105ba0:	83 ec 08             	sub    $0x8,%esp
  105ba3:	ff 75 0c             	push   0xc(%ebp)
  105ba6:	ff 75 08             	push   0x8(%ebp)
  105ba9:	e8 2d fb ff ff       	call   1056db <kheap_malloc_ap>
  105bae:	83 c4 10             	add    $0x10,%esp
  105bb1:	eb 13                	jmp    105bc6 <kmalloc_ap+0x36>
  105bb3:	83 ec 04             	sub    $0x4,%esp
  105bb6:	ff 75 0c             	push   0xc(%ebp)
  105bb9:	6a 01                	push   $0x1
  105bbb:	ff 75 08             	push   0x8(%ebp)
  105bbe:	e8 c2 fc ff ff       	call   105885 <__kmalloc__>
  105bc3:	83 c4 10             	add    $0x10,%esp
  105bc6:	c9                   	leave  
  105bc7:	c3                   	ret    

00105bc8 <kfree>:
  105bc8:	55                   	push   %ebp
  105bc9:	89 e5                	mov    %esp,%ebp
  105bcb:	83 ec 08             	sub    $0x8,%esp
  105bce:	a1 04 12 14 00       	mov    0x141204,%eax
  105bd3:	83 f8 01             	cmp    $0x1,%eax
  105bd6:	75 0e                	jne    105be6 <kfree+0x1e>
  105bd8:	83 ec 0c             	sub    $0xc,%esp
  105bdb:	ff 75 08             	push   0x8(%ebp)
  105bde:	e8 13 fb ff ff       	call   1056f6 <kheap_free>
  105be3:	83 c4 10             	add    $0x10,%esp
  105be6:	c9                   	leave  
  105be7:	c3                   	ret    

00105be8 <memory_enable_heap_malloc>:
  105be8:	55                   	push   %ebp
  105be9:	89 e5                	mov    %esp,%ebp
  105beb:	c7 05 04 12 14 00 01 	movl   $0x1,0x141204
  105bf2:	00 00 00 
  105bf5:	90                   	nop
  105bf6:	5d                   	pop    %ebp
  105bf7:	c3                   	ret    

00105bf8 <new_page_table>:
  105bf8:	55                   	push   %ebp
  105bf9:	89 e5                	mov    %esp,%ebp
  105bfb:	83 ec 18             	sub    $0x18,%esp
  105bfe:	83 ec 08             	sub    $0x8,%esp
  105c01:	ff 75 08             	push   0x8(%ebp)
  105c04:	68 00 10 00 00       	push   $0x1000
  105c09:	e8 82 ff ff ff       	call   105b90 <kmalloc_ap>
  105c0e:	83 c4 10             	add    $0x10,%esp
  105c11:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105c14:	83 ec 04             	sub    $0x4,%esp
  105c17:	68 00 10 00 00       	push   $0x1000
  105c1c:	6a 00                	push   $0x0
  105c1e:	ff 75 f4             	push   -0xc(%ebp)
  105c21:	e8 05 32 00 00       	call   108e2b <memset>
  105c26:	83 c4 10             	add    $0x10,%esp
  105c29:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105c2c:	c9                   	leave  
  105c2d:	c3                   	ret    

00105c2e <clone_table>:
  105c2e:	55                   	push   %ebp
  105c2f:	89 e5                	mov    %esp,%ebp
  105c31:	53                   	push   %ebx
  105c32:	83 ec 14             	sub    $0x14,%esp
  105c35:	83 ec 0c             	sub    $0xc,%esp
  105c38:	ff 75 0c             	push   0xc(%ebp)
  105c3b:	e8 b8 ff ff ff       	call   105bf8 <new_page_table>
  105c40:	83 c4 10             	add    $0x10,%esp
  105c43:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105c46:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105c4d:	e9 50 01 00 00       	jmp    105da2 <clone_table+0x174>
  105c52:	8b 45 08             	mov    0x8(%ebp),%eax
  105c55:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105c58:	8b 04 90             	mov    (%eax,%edx,4),%eax
  105c5b:	c1 e8 0c             	shr    $0xc,%eax
  105c5e:	85 c0                	test   %eax,%eax
  105c60:	0f 84 38 01 00 00    	je     105d9e <clone_table+0x170>
  105c66:	e8 83 fd ff ff       	call   1059ee <memory_next_available_frame>
  105c6b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105c6e:	83 ec 0c             	sub    $0xc,%esp
  105c71:	ff 75 ec             	push   -0x14(%ebp)
  105c74:	e8 04 fe ff ff       	call   105a7d <memory_acquire_frame>
  105c79:	83 c4 10             	add    $0x10,%esp
  105c7c:	8b 45 08             	mov    0x8(%ebp),%eax
  105c7f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105c82:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  105c86:	83 e0 01             	and    $0x1,%eax
  105c89:	89 c1                	mov    %eax,%ecx
  105c8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105c8e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105c91:	89 cb                	mov    %ecx,%ebx
  105c93:	83 e3 01             	and    $0x1,%ebx
  105c96:	0f b6 0c 90          	movzbl (%eax,%edx,4),%ecx
  105c9a:	83 e1 fe             	and    $0xfffffffe,%ecx
  105c9d:	09 d9                	or     %ebx,%ecx
  105c9f:	88 0c 90             	mov    %cl,(%eax,%edx,4)
  105ca2:	8b 45 08             	mov    0x8(%ebp),%eax
  105ca5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105ca8:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  105cac:	d0 e8                	shr    %al
  105cae:	83 e0 01             	and    $0x1,%eax
  105cb1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105cb4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  105cb7:	83 e0 01             	and    $0x1,%eax
  105cba:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
  105cbd:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  105cc1:	83 e0 fd             	and    $0xfffffffd,%eax
  105cc4:	09 d8                	or     %ebx,%eax
  105cc6:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  105cc9:	8b 45 08             	mov    0x8(%ebp),%eax
  105ccc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105ccf:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  105cd3:	c0 e8 02             	shr    $0x2,%al
  105cd6:	83 e0 01             	and    $0x1,%eax
  105cd9:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105cdc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  105cdf:	83 e0 01             	and    $0x1,%eax
  105ce2:	8d 1c 85 00 00 00 00 	lea    0x0(,%eax,4),%ebx
  105ce9:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  105ced:	83 e0 fb             	and    $0xfffffffb,%eax
  105cf0:	09 d8                	or     %ebx,%eax
  105cf2:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  105cf5:	8b 45 08             	mov    0x8(%ebp),%eax
  105cf8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105cfb:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  105cff:	c0 e8 03             	shr    $0x3,%al
  105d02:	83 e0 01             	and    $0x1,%eax
  105d05:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105d08:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  105d0b:	83 e0 01             	and    $0x1,%eax
  105d0e:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  105d15:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  105d19:	83 e0 f7             	and    $0xfffffff7,%eax
  105d1c:	09 d8                	or     %ebx,%eax
  105d1e:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  105d21:	8b 45 08             	mov    0x8(%ebp),%eax
  105d24:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105d27:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  105d2b:	c0 e8 04             	shr    $0x4,%al
  105d2e:	83 e0 01             	and    $0x1,%eax
  105d31:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105d34:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  105d37:	83 e0 01             	and    $0x1,%eax
  105d3a:	c1 e0 04             	shl    $0x4,%eax
  105d3d:	89 c3                	mov    %eax,%ebx
  105d3f:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  105d43:	83 e0 ef             	and    $0xffffffef,%eax
  105d46:	09 d8                	or     %ebx,%eax
  105d48:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  105d4b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105d4e:	c1 e8 0c             	shr    $0xc,%eax
  105d51:	25 ff ff 0f 00       	and    $0xfffff,%eax
  105d56:	89 c1                	mov    %eax,%ecx
  105d58:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105d5b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105d5e:	89 cb                	mov    %ecx,%ebx
  105d60:	c1 e3 0c             	shl    $0xc,%ebx
  105d63:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  105d66:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
  105d6c:	09 d9                	or     %ebx,%ecx
  105d6e:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  105d71:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105d74:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105d77:	8b 04 90             	mov    (%eax,%edx,4),%eax
  105d7a:	c1 e8 0c             	shr    $0xc,%eax
  105d7d:	c1 e0 0c             	shl    $0xc,%eax
  105d80:	89 c1                	mov    %eax,%ecx
  105d82:	8b 45 08             	mov    0x8(%ebp),%eax
  105d85:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105d88:	8b 04 90             	mov    (%eax,%edx,4),%eax
  105d8b:	c1 e8 0c             	shr    $0xc,%eax
  105d8e:	c1 e0 0c             	shl    $0xc,%eax
  105d91:	83 ec 08             	sub    $0x8,%esp
  105d94:	51                   	push   %ecx
  105d95:	50                   	push   %eax
  105d96:	e8 0f b3 ff ff       	call   1010aa <copy_page_physical>
  105d9b:	83 c4 10             	add    $0x10,%esp
  105d9e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105da2:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  105da9:	0f 86 a3 fe ff ff    	jbe    105c52 <clone_table+0x24>
  105daf:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105db2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  105db5:	c9                   	leave  
  105db6:	c3                   	ret    

00105db7 <paging_init>:
  105db7:	55                   	push   %ebp
  105db8:	89 e5                	mov    %esp,%ebp
  105dba:	56                   	push   %esi
  105dbb:	53                   	push   %ebx
  105dbc:	83 ec 20             	sub    $0x20,%esp
  105dbf:	83 ec 0c             	sub    $0xc,%esp
  105dc2:	68 04 20 00 00       	push   $0x2004
  105dc7:	e8 90 fd ff ff       	call   105b5c <kmalloc_a>
  105dcc:	83 c4 10             	add    $0x10,%esp
  105dcf:	a3 08 12 14 00       	mov    %eax,0x141208
  105dd4:	a1 08 12 14 00       	mov    0x141208,%eax
  105dd9:	83 ec 04             	sub    $0x4,%esp
  105ddc:	68 04 20 00 00       	push   $0x2004
  105de1:	6a 00                	push   $0x0
  105de3:	50                   	push   %eax
  105de4:	e8 42 30 00 00       	call   108e2b <memset>
  105de9:	83 c4 10             	add    $0x10,%esp
  105dec:	e8 29 fd ff ff       	call   105b1a <memory_create_heap>
  105df1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105df8:	e9 d9 00 00 00       	jmp    105ed6 <paging_init+0x11f>
  105dfd:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  105e04:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  105e0b:	83 ec 04             	sub    $0x4,%esp
  105e0e:	8d 45 e8             	lea    -0x18(%ebp),%eax
  105e11:	50                   	push   %eax
  105e12:	8d 45 ec             	lea    -0x14(%ebp),%eax
  105e15:	50                   	push   %eax
  105e16:	ff 75 f4             	push   -0xc(%ebp)
  105e19:	e8 51 04 00 00       	call   10626f <paging_get_page>
  105e1e:	83 c4 10             	add    $0x10,%esp
  105e21:	a1 08 12 14 00       	mov    0x141208,%eax
  105e26:	8b 55 ec             	mov    -0x14(%ebp),%edx
  105e29:	8b 04 90             	mov    (%eax,%edx,4),%eax
  105e2c:	85 c0                	test   %eax,%eax
  105e2e:	75 39                	jne    105e69 <paging_init+0xb2>
  105e30:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  105e37:	8b 1d 08 12 14 00    	mov    0x141208,%ebx
  105e3d:	8b 75 ec             	mov    -0x14(%ebp),%esi
  105e40:	83 ec 0c             	sub    $0xc,%esp
  105e43:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  105e46:	50                   	push   %eax
  105e47:	e8 ac fd ff ff       	call   105bf8 <new_page_table>
  105e4c:	83 c4 10             	add    $0x10,%esp
  105e4f:	89 04 b3             	mov    %eax,(%ebx,%esi,4)
  105e52:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  105e55:	a1 08 12 14 00       	mov    0x141208,%eax
  105e5a:	8b 55 ec             	mov    -0x14(%ebp),%edx
  105e5d:	83 c9 07             	or     $0x7,%ecx
  105e60:	81 c2 00 04 00 00    	add    $0x400,%edx
  105e66:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  105e69:	a1 08 12 14 00       	mov    0x141208,%eax
  105e6e:	8b 55 ec             	mov    -0x14(%ebp),%edx
  105e71:	8b 14 90             	mov    (%eax,%edx,4),%edx
  105e74:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105e77:	c1 e0 02             	shl    $0x2,%eax
  105e7a:	01 d0                	add    %edx,%eax
  105e7c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105e7f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105e82:	0f b6 10             	movzbl (%eax),%edx
  105e85:	83 ca 01             	or     $0x1,%edx
  105e88:	88 10                	mov    %dl,(%eax)
  105e8a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105e8d:	0f b6 10             	movzbl (%eax),%edx
  105e90:	83 e2 fd             	and    $0xfffffffd,%edx
  105e93:	88 10                	mov    %dl,(%eax)
  105e95:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105e98:	0f b6 10             	movzbl (%eax),%edx
  105e9b:	83 e2 fb             	and    $0xfffffffb,%edx
  105e9e:	88 10                	mov    %dl,(%eax)
  105ea0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105ea3:	c1 e8 0c             	shr    $0xc,%eax
  105ea6:	25 ff ff 0f 00       	and    $0xfffff,%eax
  105eab:	89 c2                	mov    %eax,%edx
  105ead:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105eb0:	89 d1                	mov    %edx,%ecx
  105eb2:	c1 e1 0c             	shl    $0xc,%ecx
  105eb5:	8b 10                	mov    (%eax),%edx
  105eb7:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  105ebd:	09 ca                	or     %ecx,%edx
  105ebf:	89 10                	mov    %edx,(%eax)
  105ec1:	83 ec 0c             	sub    $0xc,%esp
  105ec4:	ff 75 f4             	push   -0xc(%ebp)
  105ec7:	e8 b1 fb ff ff       	call   105a7d <memory_acquire_frame>
  105ecc:	83 c4 10             	add    $0x10,%esp
  105ecf:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  105ed6:	e8 09 fb ff ff       	call   1059e4 <memory_get_alloc_addr>
  105edb:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105ede:	0f 86 19 ff ff ff    	jbe    105dfd <paging_init+0x46>
  105ee4:	a1 08 12 14 00       	mov    0x141208,%eax
  105ee9:	83 ec 04             	sub    $0x4,%esp
  105eec:	50                   	push   %eax
  105eed:	68 00 00 00 c1       	push   $0xc1000000
  105ef2:	68 00 00 00 c0       	push   $0xc0000000
  105ef7:	e8 47 02 00 00       	call   106143 <paging_map>
  105efc:	83 c4 10             	add    $0x10,%esp
  105eff:	a1 08 12 14 00       	mov    0x141208,%eax
  105f04:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  105f0a:	a1 08 12 14 00       	mov    0x141208,%eax
  105f0f:	89 90 00 20 00 00    	mov    %edx,0x2000(%eax)
  105f15:	a1 08 12 14 00       	mov    0x141208,%eax
  105f1a:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  105f20:	83 ec 0c             	sub    $0xc,%esp
  105f23:	50                   	push   %eax
  105f24:	e8 73 b1 ff ff       	call   10109c <load_page_directory>
  105f29:	83 c4 10             	add    $0x10,%esp
  105f2c:	e8 59 b1 ff ff       	call   10108a <enable_paging>
  105f31:	e8 b2 fc ff ff       	call   105be8 <memory_enable_heap_malloc>
  105f36:	83 ec 0c             	sub    $0xc,%esp
  105f39:	68 e0 0d 14 00       	push   $0x140de0
  105f3e:	e8 87 22 00 00       	call   1081ca <__redirect_printf__>
  105f43:	83 c4 10             	add    $0x10,%esp
  105f46:	83 ec 0c             	sub    $0xc,%esp
  105f49:	68 0a a9 10 00       	push   $0x10a90a
  105f4e:	e8 5f 2b 00 00       	call   108ab2 <printf>
  105f53:	83 c4 10             	add    $0x10,%esp
  105f56:	83 ec 0c             	sub    $0xc,%esp
  105f59:	6a 00                	push   $0x0
  105f5b:	e8 6a 22 00 00       	call   1081ca <__redirect_printf__>
  105f60:	83 c4 10             	add    $0x10,%esp
  105f63:	83 ec 0c             	sub    $0xc,%esp
  105f66:	8d 45 de             	lea    -0x22(%ebp),%eax
  105f69:	50                   	push   %eax
  105f6a:	e8 3e c7 ff ff       	call   1026ad <cmos_read_rtc>
  105f6f:	83 c4 10             	add    $0x10,%esp
  105f72:	83 ec 04             	sub    $0x4,%esp
  105f75:	68 cc 11 14 00       	push   $0x1411cc
  105f7a:	83 ec 08             	sub    $0x8,%esp
  105f7d:	89 e0                	mov    %esp,%eax
  105f7f:	8b 55 de             	mov    -0x22(%ebp),%edx
  105f82:	89 10                	mov    %edx,(%eax)
  105f84:	0f b7 55 e2          	movzwl -0x1e(%ebp),%edx
  105f88:	66 89 50 04          	mov    %dx,0x4(%eax)
  105f8c:	e8 81 eb ff ff       	call   104b12 <cmos_datetime_to_str>
  105f91:	83 c4 10             	add    $0x10,%esp
  105f94:	83 ec 0c             	sub    $0xc,%esp
  105f97:	68 e0 09 14 00       	push   $0x1409e0
  105f9c:	e8 29 22 00 00       	call   1081ca <__redirect_printf__>
  105fa1:	83 c4 10             	add    $0x10,%esp
  105fa4:	83 ec 04             	sub    $0x4,%esp
  105fa7:	68 e0 0d 14 00       	push   $0x140de0
  105fac:	68 cc 11 14 00       	push   $0x1411cc
  105fb1:	68 1c a9 10 00       	push   $0x10a91c
  105fb6:	e8 f7 2a 00 00       	call   108ab2 <printf>
  105fbb:	83 c4 10             	add    $0x10,%esp
  105fbe:	83 ec 0c             	sub    $0xc,%esp
  105fc1:	6a 00                	push   $0x0
  105fc3:	e8 02 22 00 00       	call   1081ca <__redirect_printf__>
  105fc8:	83 c4 10             	add    $0x10,%esp
  105fcb:	83 ec 08             	sub    $0x8,%esp
  105fce:	68 e0 09 14 00       	push   $0x1409e0
  105fd3:	68 f8 03 00 00       	push   $0x3f8
  105fd8:	e8 2d c2 ff ff       	call   10220a <com_write>
  105fdd:	83 c4 10             	add    $0x10,%esp
  105fe0:	83 ec 04             	sub    $0x4,%esp
  105fe3:	68 00 04 00 00       	push   $0x400
  105fe8:	6a 00                	push   $0x0
  105fea:	68 e0 09 14 00       	push   $0x1409e0
  105fef:	e8 37 2e 00 00       	call   108e2b <memset>
  105ff4:	83 c4 10             	add    $0x10,%esp
  105ff7:	83 ec 04             	sub    $0x4,%esp
  105ffa:	68 ec 03 00 00       	push   $0x3ec
  105fff:	6a 00                	push   $0x0
  106001:	68 e0 0d 14 00       	push   $0x140de0
  106006:	e8 20 2e 00 00       	call   108e2b <memset>
  10600b:	83 c4 10             	add    $0x10,%esp
  10600e:	83 ec 04             	sub    $0x4,%esp
  106011:	6a 14                	push   $0x14
  106013:	6a 00                	push   $0x0
  106015:	68 cc 11 14 00       	push   $0x1411cc
  10601a:	e8 0c 2e 00 00       	call   108e2b <memset>
  10601f:	83 c4 10             	add    $0x10,%esp
  106022:	a1 08 12 14 00       	mov    0x141208,%eax
  106027:	83 ec 0c             	sub    $0xc,%esp
  10602a:	50                   	push   %eax
  10602b:	e8 7e 02 00 00       	call   1062ae <paging_clone_directory>
  106030:	83 c4 10             	add    $0x10,%esp
  106033:	a3 0c 12 14 00       	mov    %eax,0x14120c
  106038:	a1 0c 12 14 00       	mov    0x14120c,%eax
  10603d:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  106043:	83 ec 0c             	sub    $0xc,%esp
  106046:	50                   	push   %eax
  106047:	e8 50 b0 ff ff       	call   10109c <load_page_directory>
  10604c:	83 c4 10             	add    $0x10,%esp
  10604f:	83 ec 0c             	sub    $0xc,%esp
  106052:	68 e0 0d 14 00       	push   $0x140de0
  106057:	e8 6e 21 00 00       	call   1081ca <__redirect_printf__>
  10605c:	83 c4 10             	add    $0x10,%esp
  10605f:	83 ec 0c             	sub    $0xc,%esp
  106062:	68 22 a9 10 00       	push   $0x10a922
  106067:	e8 46 2a 00 00       	call   108ab2 <printf>
  10606c:	83 c4 10             	add    $0x10,%esp
  10606f:	83 ec 0c             	sub    $0xc,%esp
  106072:	6a 00                	push   $0x0
  106074:	e8 51 21 00 00       	call   1081ca <__redirect_printf__>
  106079:	83 c4 10             	add    $0x10,%esp
  10607c:	83 ec 0c             	sub    $0xc,%esp
  10607f:	8d 45 d8             	lea    -0x28(%ebp),%eax
  106082:	50                   	push   %eax
  106083:	e8 25 c6 ff ff       	call   1026ad <cmos_read_rtc>
  106088:	83 c4 10             	add    $0x10,%esp
  10608b:	83 ec 04             	sub    $0x4,%esp
  10608e:	68 cc 11 14 00       	push   $0x1411cc
  106093:	83 ec 08             	sub    $0x8,%esp
  106096:	89 e0                	mov    %esp,%eax
  106098:	8b 55 d8             	mov    -0x28(%ebp),%edx
  10609b:	89 10                	mov    %edx,(%eax)
  10609d:	0f b7 55 dc          	movzwl -0x24(%ebp),%edx
  1060a1:	66 89 50 04          	mov    %dx,0x4(%eax)
  1060a5:	e8 68 ea ff ff       	call   104b12 <cmos_datetime_to_str>
  1060aa:	83 c4 10             	add    $0x10,%esp
  1060ad:	83 ec 0c             	sub    $0xc,%esp
  1060b0:	68 e0 09 14 00       	push   $0x1409e0
  1060b5:	e8 10 21 00 00       	call   1081ca <__redirect_printf__>
  1060ba:	83 c4 10             	add    $0x10,%esp
  1060bd:	83 ec 04             	sub    $0x4,%esp
  1060c0:	68 e0 0d 14 00       	push   $0x140de0
  1060c5:	68 cc 11 14 00       	push   $0x1411cc
  1060ca:	68 1c a9 10 00       	push   $0x10a91c
  1060cf:	e8 de 29 00 00       	call   108ab2 <printf>
  1060d4:	83 c4 10             	add    $0x10,%esp
  1060d7:	83 ec 0c             	sub    $0xc,%esp
  1060da:	6a 00                	push   $0x0
  1060dc:	e8 e9 20 00 00       	call   1081ca <__redirect_printf__>
  1060e1:	83 c4 10             	add    $0x10,%esp
  1060e4:	83 ec 08             	sub    $0x8,%esp
  1060e7:	68 e0 09 14 00       	push   $0x1409e0
  1060ec:	68 f8 03 00 00       	push   $0x3f8
  1060f1:	e8 14 c1 ff ff       	call   10220a <com_write>
  1060f6:	83 c4 10             	add    $0x10,%esp
  1060f9:	83 ec 04             	sub    $0x4,%esp
  1060fc:	68 00 04 00 00       	push   $0x400
  106101:	6a 00                	push   $0x0
  106103:	68 e0 09 14 00       	push   $0x1409e0
  106108:	e8 1e 2d 00 00       	call   108e2b <memset>
  10610d:	83 c4 10             	add    $0x10,%esp
  106110:	83 ec 04             	sub    $0x4,%esp
  106113:	68 ec 03 00 00       	push   $0x3ec
  106118:	6a 00                	push   $0x0
  10611a:	68 e0 0d 14 00       	push   $0x140de0
  10611f:	e8 07 2d 00 00       	call   108e2b <memset>
  106124:	83 c4 10             	add    $0x10,%esp
  106127:	83 ec 04             	sub    $0x4,%esp
  10612a:	6a 14                	push   $0x14
  10612c:	6a 00                	push   $0x0
  10612e:	68 cc 11 14 00       	push   $0x1411cc
  106133:	e8 f3 2c 00 00       	call   108e2b <memset>
  106138:	83 c4 10             	add    $0x10,%esp
  10613b:	90                   	nop
  10613c:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10613f:	5b                   	pop    %ebx
  106140:	5e                   	pop    %esi
  106141:	5d                   	pop    %ebp
  106142:	c3                   	ret    

00106143 <paging_map>:
  106143:	55                   	push   %ebp
  106144:	89 e5                	mov    %esp,%ebp
  106146:	53                   	push   %ebx
  106147:	83 ec 24             	sub    $0x24,%esp
  10614a:	8b 45 08             	mov    0x8(%ebp),%eax
  10614d:	25 ff 0f 00 00       	and    $0xfff,%eax
  106152:	85 c0                	test   %eax,%eax
  106154:	74 07                	je     10615d <paging_map+0x1a>
  106156:	81 65 08 00 f0 ff ff 	andl   $0xfffff000,0x8(%ebp)
  10615d:	8b 45 0c             	mov    0xc(%ebp),%eax
  106160:	25 ff 0f 00 00       	and    $0xfff,%eax
  106165:	85 c0                	test   %eax,%eax
  106167:	74 0e                	je     106177 <paging_map+0x34>
  106169:	81 65 0c 00 f0 ff ff 	andl   $0xfffff000,0xc(%ebp)
  106170:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
  106177:	8b 45 08             	mov    0x8(%ebp),%eax
  10617a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10617d:	e9 da 00 00 00       	jmp    10625c <paging_map+0x119>
  106182:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  106189:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  106190:	83 ec 04             	sub    $0x4,%esp
  106193:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  106196:	50                   	push   %eax
  106197:	8d 45 e8             	lea    -0x18(%ebp),%eax
  10619a:	50                   	push   %eax
  10619b:	ff 75 f4             	push   -0xc(%ebp)
  10619e:	e8 cc 00 00 00       	call   10626f <paging_get_page>
  1061a3:	83 c4 10             	add    $0x10,%esp
  1061a6:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1061a9:	8b 45 10             	mov    0x10(%ebp),%eax
  1061ac:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1061af:	85 c0                	test   %eax,%eax
  1061b1:	75 36                	jne    1061e9 <paging_map+0xa6>
  1061b3:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1061ba:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  1061bd:	83 ec 0c             	sub    $0xc,%esp
  1061c0:	8d 45 e0             	lea    -0x20(%ebp),%eax
  1061c3:	50                   	push   %eax
  1061c4:	e8 2f fa ff ff       	call   105bf8 <new_page_table>
  1061c9:	83 c4 10             	add    $0x10,%esp
  1061cc:	8b 55 10             	mov    0x10(%ebp),%edx
  1061cf:	89 04 9a             	mov    %eax,(%edx,%ebx,4)
  1061d2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1061d5:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1061d8:	83 c8 07             	or     $0x7,%eax
  1061db:	89 c1                	mov    %eax,%ecx
  1061dd:	8b 45 10             	mov    0x10(%ebp),%eax
  1061e0:	81 c2 00 04 00 00    	add    $0x400,%edx
  1061e6:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  1061e9:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1061ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1061ef:	8b 14 90             	mov    (%eax,%edx,4),%edx
  1061f2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1061f5:	c1 e0 02             	shl    $0x2,%eax
  1061f8:	01 d0                	add    %edx,%eax
  1061fa:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1061fd:	e8 ec f7 ff ff       	call   1059ee <memory_next_available_frame>
  106202:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106205:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106208:	0f b6 10             	movzbl (%eax),%edx
  10620b:	83 ca 01             	or     $0x1,%edx
  10620e:	88 10                	mov    %dl,(%eax)
  106210:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106213:	0f b6 10             	movzbl (%eax),%edx
  106216:	83 ca 02             	or     $0x2,%edx
  106219:	88 10                	mov    %dl,(%eax)
  10621b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10621e:	0f b6 10             	movzbl (%eax),%edx
  106221:	83 e2 fb             	and    $0xfffffffb,%edx
  106224:	88 10                	mov    %dl,(%eax)
  106226:	8b 45 ec             	mov    -0x14(%ebp),%eax
  106229:	c1 e8 0c             	shr    $0xc,%eax
  10622c:	25 ff ff 0f 00       	and    $0xfffff,%eax
  106231:	89 c2                	mov    %eax,%edx
  106233:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106236:	89 d1                	mov    %edx,%ecx
  106238:	c1 e1 0c             	shl    $0xc,%ecx
  10623b:	8b 10                	mov    (%eax),%edx
  10623d:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  106243:	09 ca                	or     %ecx,%edx
  106245:	89 10                	mov    %edx,(%eax)
  106247:	83 ec 0c             	sub    $0xc,%esp
  10624a:	ff 75 ec             	push   -0x14(%ebp)
  10624d:	e8 2b f8 ff ff       	call   105a7d <memory_acquire_frame>
  106252:	83 c4 10             	add    $0x10,%esp
  106255:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  10625c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10625f:	3b 45 0c             	cmp    0xc(%ebp),%eax
  106262:	0f 86 1a ff ff ff    	jbe    106182 <paging_map+0x3f>
  106268:	90                   	nop
  106269:	90                   	nop
  10626a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10626d:	c9                   	leave  
  10626e:	c3                   	ret    

0010626f <paging_get_page>:
  10626f:	55                   	push   %ebp
  106270:	89 e5                	mov    %esp,%ebp
  106272:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  106276:	74 0d                	je     106285 <paging_get_page+0x16>
  106278:	8b 45 08             	mov    0x8(%ebp),%eax
  10627b:	c1 e8 16             	shr    $0x16,%eax
  10627e:	89 c2                	mov    %eax,%edx
  106280:	8b 45 0c             	mov    0xc(%ebp),%eax
  106283:	89 10                	mov    %edx,(%eax)
  106285:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  106289:	74 12                	je     10629d <paging_get_page+0x2e>
  10628b:	8b 45 08             	mov    0x8(%ebp),%eax
  10628e:	c1 e8 0c             	shr    $0xc,%eax
  106291:	25 ff 03 00 00       	and    $0x3ff,%eax
  106296:	89 c2                	mov    %eax,%edx
  106298:	8b 45 10             	mov    0x10(%ebp),%eax
  10629b:	89 10                	mov    %edx,(%eax)
  10629d:	90                   	nop
  10629e:	5d                   	pop    %ebp
  10629f:	c3                   	ret    

001062a0 <paging_flush_tlb>:
  1062a0:	55                   	push   %ebp
  1062a1:	89 e5                	mov    %esp,%ebp
  1062a3:	83 ec 08             	sub    $0x8,%esp
  1062a6:	e8 37 ae ff ff       	call   1010e2 <flush_tlb>
  1062ab:	90                   	nop
  1062ac:	c9                   	leave  
  1062ad:	c3                   	ret    

001062ae <paging_clone_directory>:
  1062ae:	55                   	push   %ebp
  1062af:	89 e5                	mov    %esp,%ebp
  1062b1:	83 ec 28             	sub    $0x28,%esp
  1062b4:	83 ec 08             	sub    $0x8,%esp
  1062b7:	8d 45 e8             	lea    -0x18(%ebp),%eax
  1062ba:	50                   	push   %eax
  1062bb:	68 04 20 00 00       	push   $0x2004
  1062c0:	e8 cb f8 ff ff       	call   105b90 <kmalloc_ap>
  1062c5:	83 c4 10             	add    $0x10,%esp
  1062c8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1062cb:	83 ec 04             	sub    $0x4,%esp
  1062ce:	68 04 20 00 00       	push   $0x2004
  1062d3:	6a 00                	push   $0x0
  1062d5:	ff 75 f0             	push   -0x10(%ebp)
  1062d8:	e8 4e 2b 00 00       	call   108e2b <memset>
  1062dd:	83 c4 10             	add    $0x10,%esp
  1062e0:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  1062e7:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1062ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1062ed:	01 c2                	add    %eax,%edx
  1062ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1062f2:	89 90 00 20 00 00    	mov    %edx,0x2000(%eax)
  1062f8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1062ff:	e9 98 00 00 00       	jmp    10639c <paging_clone_directory+0xee>
  106304:	8b 45 08             	mov    0x8(%ebp),%eax
  106307:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10630a:	8b 04 90             	mov    (%eax,%edx,4),%eax
  10630d:	85 c0                	test   %eax,%eax
  10630f:	0f 84 83 00 00 00    	je     106398 <paging_clone_directory+0xea>
  106315:	a1 08 12 14 00       	mov    0x141208,%eax
  10631a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10631d:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  106320:	8b 45 08             	mov    0x8(%ebp),%eax
  106323:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106326:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106329:	39 c1                	cmp    %eax,%ecx
  10632b:	75 32                	jne    10635f <paging_clone_directory+0xb1>
  10632d:	8b 45 08             	mov    0x8(%ebp),%eax
  106330:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106333:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  106336:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106339:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10633c:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10633f:	8b 45 08             	mov    0x8(%ebp),%eax
  106342:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106345:	81 c2 00 04 00 00    	add    $0x400,%edx
  10634b:	8b 14 90             	mov    (%eax,%edx,4),%edx
  10634e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106351:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  106354:	81 c1 00 04 00 00    	add    $0x400,%ecx
  10635a:	89 14 88             	mov    %edx,(%eax,%ecx,4)
  10635d:	eb 39                	jmp    106398 <paging_clone_directory+0xea>
  10635f:	8b 45 08             	mov    0x8(%ebp),%eax
  106362:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106365:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106368:	83 ec 08             	sub    $0x8,%esp
  10636b:	8d 55 e4             	lea    -0x1c(%ebp),%edx
  10636e:	52                   	push   %edx
  10636f:	50                   	push   %eax
  106370:	e8 b9 f8 ff ff       	call   105c2e <clone_table>
  106375:	83 c4 10             	add    $0x10,%esp
  106378:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10637b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10637e:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
  106381:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106384:	83 c8 07             	or     $0x7,%eax
  106387:	89 c1                	mov    %eax,%ecx
  106389:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10638c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10638f:	81 c2 00 04 00 00    	add    $0x400,%edx
  106395:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  106398:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10639c:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  1063a3:	0f 86 5b ff ff ff    	jbe    106304 <paging_clone_directory+0x56>
  1063a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1063ac:	c9                   	leave  
  1063ad:	c3                   	ret    

001063ae <paging_current_page_directory>:
  1063ae:	55                   	push   %ebp
  1063af:	89 e5                	mov    %esp,%ebp
  1063b1:	a1 0c 12 14 00       	mov    0x14120c,%eax
  1063b6:	5d                   	pop    %ebp
  1063b7:	c3                   	ret    

001063b8 <paging_kernel_page_directory>:
  1063b8:	55                   	push   %ebp
  1063b9:	89 e5                	mov    %esp,%ebp
  1063bb:	a1 08 12 14 00       	mov    0x141208,%eax
  1063c0:	5d                   	pop    %ebp
  1063c1:	c3                   	ret    

001063c2 <paging_set_current_page_directory>:
  1063c2:	55                   	push   %ebp
  1063c3:	89 e5                	mov    %esp,%ebp
  1063c5:	8b 45 08             	mov    0x8(%ebp),%eax
  1063c8:	a3 0c 12 14 00       	mov    %eax,0x14120c
  1063cd:	90                   	nop
  1063ce:	5d                   	pop    %ebp
  1063cf:	c3                   	ret    

001063d0 <tasking_init>:
  1063d0:	55                   	push   %ebp
  1063d1:	89 e5                	mov    %esp,%ebp
  1063d3:	53                   	push   %ebx
  1063d4:	83 ec 14             	sub    $0x14,%esp
  1063d7:	e8 bd a2 ff ff       	call   100699 <cli>
  1063dc:	c7 05 14 12 14 00 01 	movl   $0x1,0x141214
  1063e3:	00 00 00 
  1063e6:	8b 45 08             	mov    0x8(%ebp),%eax
  1063e9:	a3 10 12 14 00       	mov    %eax,0x141210
  1063ee:	83 ec 0c             	sub    $0xc,%esp
  1063f1:	68 e0 0d 14 00       	push   $0x140de0
  1063f6:	e8 cf 1d 00 00       	call   1081ca <__redirect_printf__>
  1063fb:	83 c4 10             	add    $0x10,%esp
  1063fe:	a1 10 12 14 00       	mov    0x141210,%eax
  106403:	83 ec 08             	sub    $0x8,%esp
  106406:	50                   	push   %eax
  106407:	68 3c a9 10 00       	push   $0x10a93c
  10640c:	e8 a1 26 00 00       	call   108ab2 <printf>
  106411:	83 c4 10             	add    $0x10,%esp
  106414:	83 ec 0c             	sub    $0xc,%esp
  106417:	6a 00                	push   $0x0
  106419:	e8 ac 1d 00 00       	call   1081ca <__redirect_printf__>
  10641e:	83 c4 10             	add    $0x10,%esp
  106421:	83 ec 0c             	sub    $0xc,%esp
  106424:	8d 45 f2             	lea    -0xe(%ebp),%eax
  106427:	50                   	push   %eax
  106428:	e8 80 c2 ff ff       	call   1026ad <cmos_read_rtc>
  10642d:	83 c4 10             	add    $0x10,%esp
  106430:	83 ec 04             	sub    $0x4,%esp
  106433:	68 cc 11 14 00       	push   $0x1411cc
  106438:	83 ec 08             	sub    $0x8,%esp
  10643b:	89 e0                	mov    %esp,%eax
  10643d:	8b 55 f2             	mov    -0xe(%ebp),%edx
  106440:	89 10                	mov    %edx,(%eax)
  106442:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  106446:	66 89 50 04          	mov    %dx,0x4(%eax)
  10644a:	e8 c3 e6 ff ff       	call   104b12 <cmos_datetime_to_str>
  10644f:	83 c4 10             	add    $0x10,%esp
  106452:	83 ec 0c             	sub    $0xc,%esp
  106455:	68 e0 09 14 00       	push   $0x1409e0
  10645a:	e8 6b 1d 00 00       	call   1081ca <__redirect_printf__>
  10645f:	83 c4 10             	add    $0x10,%esp
  106462:	83 ec 04             	sub    $0x4,%esp
  106465:	68 e0 0d 14 00       	push   $0x140de0
  10646a:	68 cc 11 14 00       	push   $0x1411cc
  10646f:	68 67 a9 10 00       	push   $0x10a967
  106474:	e8 39 26 00 00       	call   108ab2 <printf>
  106479:	83 c4 10             	add    $0x10,%esp
  10647c:	83 ec 0c             	sub    $0xc,%esp
  10647f:	6a 00                	push   $0x0
  106481:	e8 44 1d 00 00       	call   1081ca <__redirect_printf__>
  106486:	83 c4 10             	add    $0x10,%esp
  106489:	83 ec 08             	sub    $0x8,%esp
  10648c:	68 e0 09 14 00       	push   $0x1409e0
  106491:	68 f8 03 00 00       	push   $0x3f8
  106496:	e8 6f bd ff ff       	call   10220a <com_write>
  10649b:	83 c4 10             	add    $0x10,%esp
  10649e:	83 ec 04             	sub    $0x4,%esp
  1064a1:	68 00 04 00 00       	push   $0x400
  1064a6:	6a 00                	push   $0x0
  1064a8:	68 e0 09 14 00       	push   $0x1409e0
  1064ad:	e8 79 29 00 00       	call   108e2b <memset>
  1064b2:	83 c4 10             	add    $0x10,%esp
  1064b5:	83 ec 04             	sub    $0x4,%esp
  1064b8:	68 ec 03 00 00       	push   $0x3ec
  1064bd:	6a 00                	push   $0x0
  1064bf:	68 e0 0d 14 00       	push   $0x140de0
  1064c4:	e8 62 29 00 00       	call   108e2b <memset>
  1064c9:	83 c4 10             	add    $0x10,%esp
  1064cc:	83 ec 04             	sub    $0x4,%esp
  1064cf:	6a 14                	push   $0x14
  1064d1:	6a 00                	push   $0x0
  1064d3:	68 cc 11 14 00       	push   $0x1411cc
  1064d8:	e8 4e 29 00 00       	call   108e2b <memset>
  1064dd:	83 c4 10             	add    $0x10,%esp
  1064e0:	83 ec 08             	sub    $0x8,%esp
  1064e3:	68 00 00 02 00       	push   $0x20000
  1064e8:	68 00 00 00 e0       	push   $0xe0000000
  1064ed:	e8 41 04 00 00       	call   106933 <tasking_move_stack>
  1064f2:	83 c4 10             	add    $0x10,%esp
  1064f5:	83 ec 0c             	sub    $0xc,%esp
  1064f8:	6a 18                	push   $0x18
  1064fa:	e8 29 f6 ff ff       	call   105b28 <kmalloc>
  1064ff:	83 c4 10             	add    $0x10,%esp
  106502:	a3 18 12 14 00       	mov    %eax,0x141218
  106507:	8b 15 14 12 14 00    	mov    0x141214,%edx
  10650d:	a1 18 12 14 00       	mov    0x141218,%eax
  106512:	89 10                	mov    %edx,(%eax)
  106514:	a1 18 12 14 00       	mov    0x141218,%eax
  106519:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  106520:	a1 18 12 14 00       	mov    0x141218,%eax
  106525:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  10652c:	a1 18 12 14 00       	mov    0x141218,%eax
  106531:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  106538:	8b 1d 18 12 14 00    	mov    0x141218,%ebx
  10653e:	e8 6b fe ff ff       	call   1063ae <paging_current_page_directory>
  106543:	89 43 10             	mov    %eax,0x10(%ebx)
  106546:	a1 18 12 14 00       	mov    0x141218,%eax
  10654b:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  106552:	a1 18 12 14 00       	mov    0x141218,%eax
  106557:	a3 1c 12 14 00       	mov    %eax,0x14121c
  10655c:	a1 14 12 14 00       	mov    0x141214,%eax
  106561:	83 c0 01             	add    $0x1,%eax
  106564:	a3 14 12 14 00       	mov    %eax,0x141214
  106569:	83 ec 0c             	sub    $0xc,%esp
  10656c:	68 e0 0d 14 00       	push   $0x140de0
  106571:	e8 54 1c 00 00       	call   1081ca <__redirect_printf__>
  106576:	83 c4 10             	add    $0x10,%esp
  106579:	a1 18 12 14 00       	mov    0x141218,%eax
  10657e:	8b 00                	mov    (%eax),%eax
  106580:	83 ec 08             	sub    $0x8,%esp
  106583:	50                   	push   %eax
  106584:	68 70 a9 10 00       	push   $0x10a970
  106589:	e8 24 25 00 00       	call   108ab2 <printf>
  10658e:	83 c4 10             	add    $0x10,%esp
  106591:	83 ec 0c             	sub    $0xc,%esp
  106594:	6a 00                	push   $0x0
  106596:	e8 2f 1c 00 00       	call   1081ca <__redirect_printf__>
  10659b:	83 c4 10             	add    $0x10,%esp
  10659e:	83 ec 0c             	sub    $0xc,%esp
  1065a1:	8d 45 ec             	lea    -0x14(%ebp),%eax
  1065a4:	50                   	push   %eax
  1065a5:	e8 03 c1 ff ff       	call   1026ad <cmos_read_rtc>
  1065aa:	83 c4 10             	add    $0x10,%esp
  1065ad:	83 ec 04             	sub    $0x4,%esp
  1065b0:	68 cc 11 14 00       	push   $0x1411cc
  1065b5:	83 ec 08             	sub    $0x8,%esp
  1065b8:	89 e0                	mov    %esp,%eax
  1065ba:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1065bd:	89 10                	mov    %edx,(%eax)
  1065bf:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  1065c3:	66 89 50 04          	mov    %dx,0x4(%eax)
  1065c7:	e8 46 e5 ff ff       	call   104b12 <cmos_datetime_to_str>
  1065cc:	83 c4 10             	add    $0x10,%esp
  1065cf:	83 ec 0c             	sub    $0xc,%esp
  1065d2:	68 e0 09 14 00       	push   $0x1409e0
  1065d7:	e8 ee 1b 00 00       	call   1081ca <__redirect_printf__>
  1065dc:	83 c4 10             	add    $0x10,%esp
  1065df:	83 ec 04             	sub    $0x4,%esp
  1065e2:	68 e0 0d 14 00       	push   $0x140de0
  1065e7:	68 cc 11 14 00       	push   $0x1411cc
  1065ec:	68 67 a9 10 00       	push   $0x10a967
  1065f1:	e8 bc 24 00 00       	call   108ab2 <printf>
  1065f6:	83 c4 10             	add    $0x10,%esp
  1065f9:	83 ec 0c             	sub    $0xc,%esp
  1065fc:	6a 00                	push   $0x0
  1065fe:	e8 c7 1b 00 00       	call   1081ca <__redirect_printf__>
  106603:	83 c4 10             	add    $0x10,%esp
  106606:	83 ec 08             	sub    $0x8,%esp
  106609:	68 e0 09 14 00       	push   $0x1409e0
  10660e:	68 f8 03 00 00       	push   $0x3f8
  106613:	e8 f2 bb ff ff       	call   10220a <com_write>
  106618:	83 c4 10             	add    $0x10,%esp
  10661b:	83 ec 04             	sub    $0x4,%esp
  10661e:	68 00 04 00 00       	push   $0x400
  106623:	6a 00                	push   $0x0
  106625:	68 e0 09 14 00       	push   $0x1409e0
  10662a:	e8 fc 27 00 00       	call   108e2b <memset>
  10662f:	83 c4 10             	add    $0x10,%esp
  106632:	83 ec 04             	sub    $0x4,%esp
  106635:	68 ec 03 00 00       	push   $0x3ec
  10663a:	6a 00                	push   $0x0
  10663c:	68 e0 0d 14 00       	push   $0x140de0
  106641:	e8 e5 27 00 00       	call   108e2b <memset>
  106646:	83 c4 10             	add    $0x10,%esp
  106649:	83 ec 04             	sub    $0x4,%esp
  10664c:	6a 14                	push   $0x14
  10664e:	6a 00                	push   $0x0
  106650:	68 cc 11 14 00       	push   $0x1411cc
  106655:	e8 d1 27 00 00       	call   108e2b <memset>
  10665a:	83 c4 10             	add    $0x10,%esp
  10665d:	e8 3e a0 ff ff       	call   1006a0 <sti>
  106662:	90                   	nop
  106663:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106666:	c9                   	leave  
  106667:	c3                   	ret    

00106668 <tasking_fork>:
  106668:	55                   	push   %ebp
  106669:	89 e5                	mov    %esp,%ebp
  10666b:	83 ec 38             	sub    $0x38,%esp
  10666e:	e8 26 a0 ff ff       	call   100699 <cli>
  106673:	a1 18 12 14 00       	mov    0x141218,%eax
  106678:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10667b:	e8 2e fd ff ff       	call   1063ae <paging_current_page_directory>
  106680:	83 ec 0c             	sub    $0xc,%esp
  106683:	50                   	push   %eax
  106684:	e8 25 fc ff ff       	call   1062ae <paging_clone_directory>
  106689:	83 c4 10             	add    $0x10,%esp
  10668c:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10668f:	83 ec 0c             	sub    $0xc,%esp
  106692:	6a 18                	push   $0x18
  106694:	e8 8f f4 ff ff       	call   105b28 <kmalloc>
  106699:	83 c4 10             	add    $0x10,%esp
  10669c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10669f:	a1 14 12 14 00       	mov    0x141214,%eax
  1066a4:	89 c2                	mov    %eax,%edx
  1066a6:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1066a9:	89 10                	mov    %edx,(%eax)
  1066ab:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1066ae:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  1066b5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1066b8:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  1066bf:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1066c2:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  1066c9:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1066cc:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1066cf:	89 50 10             	mov    %edx,0x10(%eax)
  1066d2:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1066d5:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  1066dc:	a1 14 12 14 00       	mov    0x141214,%eax
  1066e1:	83 c0 01             	add    $0x1,%eax
  1066e4:	a3 14 12 14 00       	mov    %eax,0x141214
  1066e9:	a1 1c 12 14 00       	mov    0x14121c,%eax
  1066ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1066f1:	eb 09                	jmp    1066fc <tasking_fork+0x94>
  1066f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1066f6:	8b 40 14             	mov    0x14(%eax),%eax
  1066f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1066fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1066ff:	8b 40 14             	mov    0x14(%eax),%eax
  106702:	85 c0                	test   %eax,%eax
  106704:	75 ed                	jne    1066f3 <tasking_fork+0x8b>
  106706:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106709:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10670c:	89 50 14             	mov    %edx,0x14(%eax)
  10670f:	83 ec 0c             	sub    $0xc,%esp
  106712:	68 e0 0d 14 00       	push   $0x140de0
  106717:	e8 ae 1a 00 00       	call   1081ca <__redirect_printf__>
  10671c:	83 c4 10             	add    $0x10,%esp
  10671f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106722:	8b 40 14             	mov    0x14(%eax),%eax
  106725:	8b 10                	mov    (%eax),%edx
  106727:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10672a:	8b 00                	mov    (%eax),%eax
  10672c:	83 ec 04             	sub    $0x4,%esp
  10672f:	52                   	push   %edx
  106730:	50                   	push   %eax
  106731:	68 a8 a9 10 00       	push   $0x10a9a8
  106736:	e8 77 23 00 00       	call   108ab2 <printf>
  10673b:	83 c4 10             	add    $0x10,%esp
  10673e:	83 ec 0c             	sub    $0xc,%esp
  106741:	6a 00                	push   $0x0
  106743:	e8 82 1a 00 00       	call   1081ca <__redirect_printf__>
  106748:	83 c4 10             	add    $0x10,%esp
  10674b:	83 ec 0c             	sub    $0xc,%esp
  10674e:	8d 45 d6             	lea    -0x2a(%ebp),%eax
  106751:	50                   	push   %eax
  106752:	e8 56 bf ff ff       	call   1026ad <cmos_read_rtc>
  106757:	83 c4 10             	add    $0x10,%esp
  10675a:	83 ec 04             	sub    $0x4,%esp
  10675d:	68 cc 11 14 00       	push   $0x1411cc
  106762:	83 ec 08             	sub    $0x8,%esp
  106765:	89 e0                	mov    %esp,%eax
  106767:	8b 55 d6             	mov    -0x2a(%ebp),%edx
  10676a:	89 10                	mov    %edx,(%eax)
  10676c:	0f b7 55 da          	movzwl -0x26(%ebp),%edx
  106770:	66 89 50 04          	mov    %dx,0x4(%eax)
  106774:	e8 99 e3 ff ff       	call   104b12 <cmos_datetime_to_str>
  106779:	83 c4 10             	add    $0x10,%esp
  10677c:	83 ec 0c             	sub    $0xc,%esp
  10677f:	68 e0 09 14 00       	push   $0x1409e0
  106784:	e8 41 1a 00 00       	call   1081ca <__redirect_printf__>
  106789:	83 c4 10             	add    $0x10,%esp
  10678c:	83 ec 04             	sub    $0x4,%esp
  10678f:	68 e0 0d 14 00       	push   $0x140de0
  106794:	68 cc 11 14 00       	push   $0x1411cc
  106799:	68 67 a9 10 00       	push   $0x10a967
  10679e:	e8 0f 23 00 00       	call   108ab2 <printf>
  1067a3:	83 c4 10             	add    $0x10,%esp
  1067a6:	83 ec 0c             	sub    $0xc,%esp
  1067a9:	6a 00                	push   $0x0
  1067ab:	e8 1a 1a 00 00       	call   1081ca <__redirect_printf__>
  1067b0:	83 c4 10             	add    $0x10,%esp
  1067b3:	83 ec 08             	sub    $0x8,%esp
  1067b6:	68 e0 09 14 00       	push   $0x1409e0
  1067bb:	68 f8 03 00 00       	push   $0x3f8
  1067c0:	e8 45 ba ff ff       	call   10220a <com_write>
  1067c5:	83 c4 10             	add    $0x10,%esp
  1067c8:	83 ec 04             	sub    $0x4,%esp
  1067cb:	68 00 04 00 00       	push   $0x400
  1067d0:	6a 00                	push   $0x0
  1067d2:	68 e0 09 14 00       	push   $0x1409e0
  1067d7:	e8 4f 26 00 00       	call   108e2b <memset>
  1067dc:	83 c4 10             	add    $0x10,%esp
  1067df:	83 ec 04             	sub    $0x4,%esp
  1067e2:	68 ec 03 00 00       	push   $0x3ec
  1067e7:	6a 00                	push   $0x0
  1067e9:	68 e0 0d 14 00       	push   $0x140de0
  1067ee:	e8 38 26 00 00       	call   108e2b <memset>
  1067f3:	83 c4 10             	add    $0x10,%esp
  1067f6:	83 ec 04             	sub    $0x4,%esp
  1067f9:	6a 14                	push   $0x14
  1067fb:	6a 00                	push   $0x0
  1067fd:	68 cc 11 14 00       	push   $0x1411cc
  106802:	e8 24 26 00 00       	call   108e2b <memset>
  106807:	83 c4 10             	add    $0x10,%esp
  10680a:	e8 d9 a8 ff ff       	call   1010e8 <read_eip>
  10680f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  106812:	a1 18 12 14 00       	mov    0x141218,%eax
  106817:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  10681a:	75 31                	jne    10684d <tasking_fork+0x1e5>
  10681c:	89 e0                	mov    %esp,%eax
  10681e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106821:	89 e8                	mov    %ebp,%eax
  106823:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106826:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106829:	8b 55 e0             	mov    -0x20(%ebp),%edx
  10682c:	89 50 04             	mov    %edx,0x4(%eax)
  10682f:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106832:	8b 55 dc             	mov    -0x24(%ebp),%edx
  106835:	89 50 08             	mov    %edx,0x8(%eax)
  106838:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10683b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10683e:	89 50 0c             	mov    %edx,0xc(%eax)
  106841:	e8 5a 9e ff ff       	call   1006a0 <sti>
  106846:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106849:	8b 00                	mov    (%eax),%eax
  10684b:	eb 05                	jmp    106852 <tasking_fork+0x1ea>
  10684d:	b8 00 00 00 00       	mov    $0x0,%eax
  106852:	c9                   	leave  
  106853:	c3                   	ret    

00106854 <tasking_scheduler>:
  106854:	55                   	push   %ebp
  106855:	89 e5                	mov    %esp,%ebp
  106857:	53                   	push   %ebx
  106858:	83 ec 14             	sub    $0x14,%esp
  10685b:	a1 18 12 14 00       	mov    0x141218,%eax
  106860:	85 c0                	test   %eax,%eax
  106862:	0f 84 b6 00 00 00    	je     10691e <tasking_scheduler+0xca>
  106868:	89 e0                	mov    %esp,%eax
  10686a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10686d:	89 e8                	mov    %ebp,%eax
  10686f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106872:	e8 71 a8 ff ff       	call   1010e8 <read_eip>
  106877:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10687a:	81 7d ec ed ad 10 7a 	cmpl   $0x7a10aded,-0x14(%ebp)
  106881:	0f 84 9a 00 00 00    	je     106921 <tasking_scheduler+0xcd>
  106887:	a1 18 12 14 00       	mov    0x141218,%eax
  10688c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10688f:	89 50 04             	mov    %edx,0x4(%eax)
  106892:	a1 18 12 14 00       	mov    0x141218,%eax
  106897:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10689a:	89 50 08             	mov    %edx,0x8(%eax)
  10689d:	a1 18 12 14 00       	mov    0x141218,%eax
  1068a2:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1068a5:	89 50 0c             	mov    %edx,0xc(%eax)
  1068a8:	8b 1d 18 12 14 00    	mov    0x141218,%ebx
  1068ae:	e8 fb fa ff ff       	call   1063ae <paging_current_page_directory>
  1068b3:	89 43 10             	mov    %eax,0x10(%ebx)
  1068b6:	a1 18 12 14 00       	mov    0x141218,%eax
  1068bb:	8b 40 14             	mov    0x14(%eax),%eax
  1068be:	a3 18 12 14 00       	mov    %eax,0x141218
  1068c3:	a1 18 12 14 00       	mov    0x141218,%eax
  1068c8:	85 c0                	test   %eax,%eax
  1068ca:	75 0a                	jne    1068d6 <tasking_scheduler+0x82>
  1068cc:	a1 1c 12 14 00       	mov    0x14121c,%eax
  1068d1:	a3 18 12 14 00       	mov    %eax,0x141218
  1068d6:	a1 18 12 14 00       	mov    0x141218,%eax
  1068db:	8b 40 10             	mov    0x10(%eax),%eax
  1068de:	83 ec 0c             	sub    $0xc,%esp
  1068e1:	50                   	push   %eax
  1068e2:	e8 db fa ff ff       	call   1063c2 <paging_set_current_page_directory>
  1068e7:	83 c4 10             	add    $0x10,%esp
  1068ea:	a1 18 12 14 00       	mov    0x141218,%eax
  1068ef:	8b 40 10             	mov    0x10(%eax),%eax
  1068f2:	8b 98 00 20 00 00    	mov    0x2000(%eax),%ebx
  1068f8:	a1 18 12 14 00       	mov    0x141218,%eax
  1068fd:	8b 48 08             	mov    0x8(%eax),%ecx
  106900:	a1 18 12 14 00       	mov    0x141218,%eax
  106905:	8b 50 04             	mov    0x4(%eax),%edx
  106908:	a1 18 12 14 00       	mov    0x141218,%eax
  10690d:	8b 40 0c             	mov    0xc(%eax),%eax
  106910:	53                   	push   %ebx
  106911:	51                   	push   %ecx
  106912:	52                   	push   %edx
  106913:	50                   	push   %eax
  106914:	e8 d2 a7 ff ff       	call   1010eb <context_switch>
  106919:	83 c4 10             	add    $0x10,%esp
  10691c:	eb 04                	jmp    106922 <tasking_scheduler+0xce>
  10691e:	90                   	nop
  10691f:	eb 01                	jmp    106922 <tasking_scheduler+0xce>
  106921:	90                   	nop
  106922:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106925:	c9                   	leave  
  106926:	c3                   	ret    

00106927 <tasking_gettid>:
  106927:	55                   	push   %ebp
  106928:	89 e5                	mov    %esp,%ebp
  10692a:	a1 18 12 14 00       	mov    0x141218,%eax
  10692f:	8b 00                	mov    (%eax),%eax
  106931:	5d                   	pop    %ebp
  106932:	c3                   	ret    

00106933 <tasking_move_stack>:
  106933:	55                   	push   %ebp
  106934:	89 e5                	mov    %esp,%ebp
  106936:	83 ec 48             	sub    $0x48,%esp
  106939:	e8 70 fa ff ff       	call   1063ae <paging_current_page_directory>
  10693e:	8b 55 08             	mov    0x8(%ebp),%edx
  106941:	2b 55 0c             	sub    0xc(%ebp),%edx
  106944:	83 ec 04             	sub    $0x4,%esp
  106947:	50                   	push   %eax
  106948:	ff 75 08             	push   0x8(%ebp)
  10694b:	52                   	push   %edx
  10694c:	e8 f2 f7 ff ff       	call   106143 <paging_map>
  106951:	83 c4 10             	add    $0x10,%esp
  106954:	c7 45 f0 04 fe ff df 	movl   $0xdffffe04,-0x10(%ebp)
  10695b:	83 ec 04             	sub    $0x4,%esp
  10695e:	8d 45 cc             	lea    -0x34(%ebp),%eax
  106961:	50                   	push   %eax
  106962:	8d 45 d0             	lea    -0x30(%ebp),%eax
  106965:	50                   	push   %eax
  106966:	ff 75 f0             	push   -0x10(%ebp)
  106969:	e8 01 f9 ff ff       	call   10626f <paging_get_page>
  10696e:	83 c4 10             	add    $0x10,%esp
  106971:	e8 2a f9 ff ff       	call   1062a0 <paging_flush_tlb>
  106976:	83 ec 0c             	sub    $0xc,%esp
  106979:	68 e0 0d 14 00       	push   $0x140de0
  10697e:	e8 47 18 00 00       	call   1081ca <__redirect_printf__>
  106983:	83 c4 10             	add    $0x10,%esp
  106986:	83 ec 04             	sub    $0x4,%esp
  106989:	ff 75 0c             	push   0xc(%ebp)
  10698c:	ff 75 08             	push   0x8(%ebp)
  10698f:	68 d4 a9 10 00       	push   $0x10a9d4
  106994:	e8 19 21 00 00       	call   108ab2 <printf>
  106999:	83 c4 10             	add    $0x10,%esp
  10699c:	83 ec 0c             	sub    $0xc,%esp
  10699f:	6a 00                	push   $0x0
  1069a1:	e8 24 18 00 00       	call   1081ca <__redirect_printf__>
  1069a6:	83 c4 10             	add    $0x10,%esp
  1069a9:	83 ec 0c             	sub    $0xc,%esp
  1069ac:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  1069af:	50                   	push   %eax
  1069b0:	e8 f8 bc ff ff       	call   1026ad <cmos_read_rtc>
  1069b5:	83 c4 10             	add    $0x10,%esp
  1069b8:	83 ec 04             	sub    $0x4,%esp
  1069bb:	68 cc 11 14 00       	push   $0x1411cc
  1069c0:	83 ec 08             	sub    $0x8,%esp
  1069c3:	89 e0                	mov    %esp,%eax
  1069c5:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  1069c8:	89 10                	mov    %edx,(%eax)
  1069ca:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  1069ce:	66 89 50 04          	mov    %dx,0x4(%eax)
  1069d2:	e8 3b e1 ff ff       	call   104b12 <cmos_datetime_to_str>
  1069d7:	83 c4 10             	add    $0x10,%esp
  1069da:	83 ec 0c             	sub    $0xc,%esp
  1069dd:	68 e0 09 14 00       	push   $0x1409e0
  1069e2:	e8 e3 17 00 00       	call   1081ca <__redirect_printf__>
  1069e7:	83 c4 10             	add    $0x10,%esp
  1069ea:	83 ec 04             	sub    $0x4,%esp
  1069ed:	68 e0 0d 14 00       	push   $0x140de0
  1069f2:	68 cc 11 14 00       	push   $0x1411cc
  1069f7:	68 67 a9 10 00       	push   $0x10a967
  1069fc:	e8 b1 20 00 00       	call   108ab2 <printf>
  106a01:	83 c4 10             	add    $0x10,%esp
  106a04:	83 ec 0c             	sub    $0xc,%esp
  106a07:	6a 00                	push   $0x0
  106a09:	e8 bc 17 00 00       	call   1081ca <__redirect_printf__>
  106a0e:	83 c4 10             	add    $0x10,%esp
  106a11:	83 ec 08             	sub    $0x8,%esp
  106a14:	68 e0 09 14 00       	push   $0x1409e0
  106a19:	68 f8 03 00 00       	push   $0x3f8
  106a1e:	e8 e7 b7 ff ff       	call   10220a <com_write>
  106a23:	83 c4 10             	add    $0x10,%esp
  106a26:	83 ec 04             	sub    $0x4,%esp
  106a29:	68 00 04 00 00       	push   $0x400
  106a2e:	6a 00                	push   $0x0
  106a30:	68 e0 09 14 00       	push   $0x1409e0
  106a35:	e8 f1 23 00 00       	call   108e2b <memset>
  106a3a:	83 c4 10             	add    $0x10,%esp
  106a3d:	83 ec 04             	sub    $0x4,%esp
  106a40:	68 ec 03 00 00       	push   $0x3ec
  106a45:	6a 00                	push   $0x0
  106a47:	68 e0 0d 14 00       	push   $0x140de0
  106a4c:	e8 da 23 00 00       	call   108e2b <memset>
  106a51:	83 c4 10             	add    $0x10,%esp
  106a54:	83 ec 04             	sub    $0x4,%esp
  106a57:	6a 14                	push   $0x14
  106a59:	6a 00                	push   $0x0
  106a5b:	68 cc 11 14 00       	push   $0x1411cc
  106a60:	e8 c6 23 00 00       	call   108e2b <memset>
  106a65:	83 c4 10             	add    $0x10,%esp
  106a68:	89 e0                	mov    %esp,%eax
  106a6a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106a6d:	89 e8                	mov    %ebp,%eax
  106a6f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  106a72:	8b 15 10 12 14 00    	mov    0x141210,%edx
  106a78:	8b 45 08             	mov    0x8(%ebp),%eax
  106a7b:	29 d0                	sub    %edx,%eax
  106a7d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  106a80:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106a83:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106a86:	01 d0                	add    %edx,%eax
  106a88:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106a8b:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106a8e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106a91:	01 d0                	add    %edx,%eax
  106a93:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106a96:	a1 10 12 14 00       	mov    0x141210,%eax
  106a9b:	2b 45 ec             	sub    -0x14(%ebp),%eax
  106a9e:	89 c1                	mov    %eax,%ecx
  106aa0:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106aa3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106aa6:	83 ec 04             	sub    $0x4,%esp
  106aa9:	51                   	push   %ecx
  106aaa:	52                   	push   %edx
  106aab:	50                   	push   %eax
  106aac:	e8 39 23 00 00       	call   108dea <memcpy>
  106ab1:	83 c4 10             	add    $0x10,%esp
  106ab4:	83 ec 0c             	sub    $0xc,%esp
  106ab7:	68 e0 0d 14 00       	push   $0x140de0
  106abc:	e8 09 17 00 00       	call   1081ca <__redirect_printf__>
  106ac1:	83 c4 10             	add    $0x10,%esp
  106ac4:	83 ec 0c             	sub    $0xc,%esp
  106ac7:	68 00 aa 10 00       	push   $0x10aa00
  106acc:	e8 e1 1f 00 00       	call   108ab2 <printf>
  106ad1:	83 c4 10             	add    $0x10,%esp
  106ad4:	83 ec 0c             	sub    $0xc,%esp
  106ad7:	6a 00                	push   $0x0
  106ad9:	e8 ec 16 00 00       	call   1081ca <__redirect_printf__>
  106ade:	83 c4 10             	add    $0x10,%esp
  106ae1:	83 ec 0c             	sub    $0xc,%esp
  106ae4:	8d 45 c0             	lea    -0x40(%ebp),%eax
  106ae7:	50                   	push   %eax
  106ae8:	e8 c0 bb ff ff       	call   1026ad <cmos_read_rtc>
  106aed:	83 c4 10             	add    $0x10,%esp
  106af0:	83 ec 04             	sub    $0x4,%esp
  106af3:	68 cc 11 14 00       	push   $0x1411cc
  106af8:	83 ec 08             	sub    $0x8,%esp
  106afb:	89 e0                	mov    %esp,%eax
  106afd:	8b 55 c0             	mov    -0x40(%ebp),%edx
  106b00:	89 10                	mov    %edx,(%eax)
  106b02:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  106b06:	66 89 50 04          	mov    %dx,0x4(%eax)
  106b0a:	e8 03 e0 ff ff       	call   104b12 <cmos_datetime_to_str>
  106b0f:	83 c4 10             	add    $0x10,%esp
  106b12:	83 ec 0c             	sub    $0xc,%esp
  106b15:	68 e0 09 14 00       	push   $0x1409e0
  106b1a:	e8 ab 16 00 00       	call   1081ca <__redirect_printf__>
  106b1f:	83 c4 10             	add    $0x10,%esp
  106b22:	83 ec 04             	sub    $0x4,%esp
  106b25:	68 e0 0d 14 00       	push   $0x140de0
  106b2a:	68 cc 11 14 00       	push   $0x1411cc
  106b2f:	68 67 a9 10 00       	push   $0x10a967
  106b34:	e8 79 1f 00 00       	call   108ab2 <printf>
  106b39:	83 c4 10             	add    $0x10,%esp
  106b3c:	83 ec 0c             	sub    $0xc,%esp
  106b3f:	6a 00                	push   $0x0
  106b41:	e8 84 16 00 00       	call   1081ca <__redirect_printf__>
  106b46:	83 c4 10             	add    $0x10,%esp
  106b49:	83 ec 08             	sub    $0x8,%esp
  106b4c:	68 e0 09 14 00       	push   $0x1409e0
  106b51:	68 f8 03 00 00       	push   $0x3f8
  106b56:	e8 af b6 ff ff       	call   10220a <com_write>
  106b5b:	83 c4 10             	add    $0x10,%esp
  106b5e:	83 ec 04             	sub    $0x4,%esp
  106b61:	68 00 04 00 00       	push   $0x400
  106b66:	6a 00                	push   $0x0
  106b68:	68 e0 09 14 00       	push   $0x1409e0
  106b6d:	e8 b9 22 00 00       	call   108e2b <memset>
  106b72:	83 c4 10             	add    $0x10,%esp
  106b75:	83 ec 04             	sub    $0x4,%esp
  106b78:	68 ec 03 00 00       	push   $0x3ec
  106b7d:	6a 00                	push   $0x0
  106b7f:	68 e0 0d 14 00       	push   $0x140de0
  106b84:	e8 a2 22 00 00       	call   108e2b <memset>
  106b89:	83 c4 10             	add    $0x10,%esp
  106b8c:	83 ec 04             	sub    $0x4,%esp
  106b8f:	6a 14                	push   $0x14
  106b91:	6a 00                	push   $0x0
  106b93:	68 cc 11 14 00       	push   $0x1411cc
  106b98:	e8 8e 22 00 00       	call   108e2b <memset>
  106b9d:	83 c4 10             	add    $0x10,%esp
  106ba0:	8b 45 08             	mov    0x8(%ebp),%eax
  106ba3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106ba6:	eb 32                	jmp    106bda <tasking_move_stack+0x2a7>
  106ba8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106bab:	8b 00                	mov    (%eax),%eax
  106bad:	89 45 d8             	mov    %eax,-0x28(%ebp)
  106bb0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  106bb3:	3b 45 d8             	cmp    -0x28(%ebp),%eax
  106bb6:	73 1e                	jae    106bd6 <tasking_move_stack+0x2a3>
  106bb8:	a1 10 12 14 00       	mov    0x141210,%eax
  106bbd:	39 45 d8             	cmp    %eax,-0x28(%ebp)
  106bc0:	73 14                	jae    106bd6 <tasking_move_stack+0x2a3>
  106bc2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106bc5:	01 45 d8             	add    %eax,-0x28(%ebp)
  106bc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106bcb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  106bce:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  106bd1:	8b 55 d8             	mov    -0x28(%ebp),%edx
  106bd4:	89 10                	mov    %edx,(%eax)
  106bd6:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
  106bda:	8b 45 08             	mov    0x8(%ebp),%eax
  106bdd:	2b 45 0c             	sub    0xc(%ebp),%eax
  106be0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  106be3:	77 c3                	ja     106ba8 <tasking_move_stack+0x275>
  106be5:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106be8:	89 c4                	mov    %eax,%esp
  106bea:	8b 45 dc             	mov    -0x24(%ebp),%eax
  106bed:	89 c5                	mov    %eax,%ebp
  106bef:	83 ec 0c             	sub    $0xc,%esp
  106bf2:	68 e0 0d 14 00       	push   $0x140de0
  106bf7:	e8 ce 15 00 00       	call   1081ca <__redirect_printf__>
  106bfc:	83 c4 10             	add    $0x10,%esp
  106bff:	83 ec 04             	sub    $0x4,%esp
  106c02:	ff 75 e0             	push   -0x20(%ebp)
  106c05:	ff 75 ec             	push   -0x14(%ebp)
  106c08:	68 2a aa 10 00       	push   $0x10aa2a
  106c0d:	e8 a0 1e 00 00       	call   108ab2 <printf>
  106c12:	83 c4 10             	add    $0x10,%esp
  106c15:	83 ec 0c             	sub    $0xc,%esp
  106c18:	6a 00                	push   $0x0
  106c1a:	e8 ab 15 00 00       	call   1081ca <__redirect_printf__>
  106c1f:	83 c4 10             	add    $0x10,%esp
  106c22:	83 ec 0c             	sub    $0xc,%esp
  106c25:	8d 45 ba             	lea    -0x46(%ebp),%eax
  106c28:	50                   	push   %eax
  106c29:	e8 7f ba ff ff       	call   1026ad <cmos_read_rtc>
  106c2e:	83 c4 10             	add    $0x10,%esp
  106c31:	83 ec 04             	sub    $0x4,%esp
  106c34:	68 cc 11 14 00       	push   $0x1411cc
  106c39:	83 ec 08             	sub    $0x8,%esp
  106c3c:	89 e0                	mov    %esp,%eax
  106c3e:	8b 55 ba             	mov    -0x46(%ebp),%edx
  106c41:	89 10                	mov    %edx,(%eax)
  106c43:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  106c47:	66 89 50 04          	mov    %dx,0x4(%eax)
  106c4b:	e8 c2 de ff ff       	call   104b12 <cmos_datetime_to_str>
  106c50:	83 c4 10             	add    $0x10,%esp
  106c53:	83 ec 0c             	sub    $0xc,%esp
  106c56:	68 e0 09 14 00       	push   $0x1409e0
  106c5b:	e8 6a 15 00 00       	call   1081ca <__redirect_printf__>
  106c60:	83 c4 10             	add    $0x10,%esp
  106c63:	83 ec 04             	sub    $0x4,%esp
  106c66:	68 e0 0d 14 00       	push   $0x140de0
  106c6b:	68 cc 11 14 00       	push   $0x1411cc
  106c70:	68 67 a9 10 00       	push   $0x10a967
  106c75:	e8 38 1e 00 00       	call   108ab2 <printf>
  106c7a:	83 c4 10             	add    $0x10,%esp
  106c7d:	83 ec 0c             	sub    $0xc,%esp
  106c80:	6a 00                	push   $0x0
  106c82:	e8 43 15 00 00       	call   1081ca <__redirect_printf__>
  106c87:	83 c4 10             	add    $0x10,%esp
  106c8a:	83 ec 08             	sub    $0x8,%esp
  106c8d:	68 e0 09 14 00       	push   $0x1409e0
  106c92:	68 f8 03 00 00       	push   $0x3f8
  106c97:	e8 6e b5 ff ff       	call   10220a <com_write>
  106c9c:	83 c4 10             	add    $0x10,%esp
  106c9f:	83 ec 04             	sub    $0x4,%esp
  106ca2:	68 00 04 00 00       	push   $0x400
  106ca7:	6a 00                	push   $0x0
  106ca9:	68 e0 09 14 00       	push   $0x1409e0
  106cae:	e8 78 21 00 00       	call   108e2b <memset>
  106cb3:	83 c4 10             	add    $0x10,%esp
  106cb6:	83 ec 04             	sub    $0x4,%esp
  106cb9:	68 ec 03 00 00       	push   $0x3ec
  106cbe:	6a 00                	push   $0x0
  106cc0:	68 e0 0d 14 00       	push   $0x140de0
  106cc5:	e8 61 21 00 00       	call   108e2b <memset>
  106cca:	83 c4 10             	add    $0x10,%esp
  106ccd:	83 ec 04             	sub    $0x4,%esp
  106cd0:	6a 14                	push   $0x14
  106cd2:	6a 00                	push   $0x0
  106cd4:	68 cc 11 14 00       	push   $0x1411cc
  106cd9:	e8 4d 21 00 00       	call   108e2b <memset>
  106cde:	83 c4 10             	add    $0x10,%esp
  106ce1:	90                   	nop
  106ce2:	c9                   	leave  
  106ce3:	c3                   	ret    

00106ce4 <com_scheduler>:
  106ce4:	55                   	push   %ebp
  106ce5:	89 e5                	mov    %esp,%ebp
  106ce7:	83 ec 08             	sub    $0x8,%esp
  106cea:	83 ec 0c             	sub    $0xc,%esp
  106ced:	68 f8 03 00 00       	push   $0x3f8
  106cf2:	e8 c8 b4 ff ff       	call   1021bf <com_is_initialized>
  106cf7:	83 c4 10             	add    $0x10,%esp
  106cfa:	3c 01                	cmp    $0x1,%al
  106cfc:	75 10                	jne    106d0e <com_scheduler+0x2a>
  106cfe:	83 ec 0c             	sub    $0xc,%esp
  106d01:	68 f8 03 00 00       	push   $0x3f8
  106d06:	e8 48 b8 ff ff       	call   102553 <com_flush>
  106d0b:	83 c4 10             	add    $0x10,%esp
  106d0e:	83 ec 0c             	sub    $0xc,%esp
  106d11:	68 f8 02 00 00       	push   $0x2f8
  106d16:	e8 a4 b4 ff ff       	call   1021bf <com_is_initialized>
  106d1b:	83 c4 10             	add    $0x10,%esp
  106d1e:	3c 01                	cmp    $0x1,%al
  106d20:	75 10                	jne    106d32 <com_scheduler+0x4e>
  106d22:	83 ec 0c             	sub    $0xc,%esp
  106d25:	68 f8 02 00 00       	push   $0x2f8
  106d2a:	e8 24 b8 ff ff       	call   102553 <com_flush>
  106d2f:	83 c4 10             	add    $0x10,%esp
  106d32:	83 ec 0c             	sub    $0xc,%esp
  106d35:	68 e8 03 00 00       	push   $0x3e8
  106d3a:	e8 80 b4 ff ff       	call   1021bf <com_is_initialized>
  106d3f:	83 c4 10             	add    $0x10,%esp
  106d42:	3c 01                	cmp    $0x1,%al
  106d44:	75 10                	jne    106d56 <com_scheduler+0x72>
  106d46:	83 ec 0c             	sub    $0xc,%esp
  106d49:	68 e8 03 00 00       	push   $0x3e8
  106d4e:	e8 00 b8 ff ff       	call   102553 <com_flush>
  106d53:	83 c4 10             	add    $0x10,%esp
  106d56:	90                   	nop
  106d57:	c9                   	leave  
  106d58:	c3                   	ret    

00106d59 <scheduler_init>:
  106d59:	55                   	push   %ebp
  106d5a:	89 e5                	mov    %esp,%ebp
  106d5c:	83 ec 18             	sub    $0x18,%esp
  106d5f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  106d63:	75 0c                	jne    106d71 <scheduler_init+0x18>
  106d65:	c7 05 20 12 14 00 01 	movl   $0x1,0x141220
  106d6c:	00 00 00 
  106d6f:	eb 1d                	jmp    106d8e <scheduler_init+0x35>
  106d71:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  106d78:	76 0c                	jbe    106d86 <scheduler_init+0x2d>
  106d7a:	c7 05 20 12 14 00 e8 	movl   $0x3e8,0x141220
  106d81:	03 00 00 
  106d84:	eb 08                	jmp    106d8e <scheduler_init+0x35>
  106d86:	8b 45 08             	mov    0x8(%ebp),%eax
  106d89:	a3 20 12 14 00       	mov    %eax,0x141220
  106d8e:	83 ec 0c             	sub    $0xc,%esp
  106d91:	68 e0 0d 14 00       	push   $0x140de0
  106d96:	e8 2f 14 00 00       	call   1081ca <__redirect_printf__>
  106d9b:	83 c4 10             	add    $0x10,%esp
  106d9e:	a1 20 12 14 00       	mov    0x141220,%eax
  106da3:	83 ec 04             	sub    $0x4,%esp
  106da6:	50                   	push   %eax
  106da7:	ff 75 08             	push   0x8(%ebp)
  106daa:	68 48 aa 10 00       	push   $0x10aa48
  106daf:	e8 fe 1c 00 00       	call   108ab2 <printf>
  106db4:	83 c4 10             	add    $0x10,%esp
  106db7:	83 ec 0c             	sub    $0xc,%esp
  106dba:	6a 00                	push   $0x0
  106dbc:	e8 09 14 00 00       	call   1081ca <__redirect_printf__>
  106dc1:	83 c4 10             	add    $0x10,%esp
  106dc4:	83 ec 0c             	sub    $0xc,%esp
  106dc7:	8d 45 f2             	lea    -0xe(%ebp),%eax
  106dca:	50                   	push   %eax
  106dcb:	e8 dd b8 ff ff       	call   1026ad <cmos_read_rtc>
  106dd0:	83 c4 10             	add    $0x10,%esp
  106dd3:	83 ec 04             	sub    $0x4,%esp
  106dd6:	68 cc 11 14 00       	push   $0x1411cc
  106ddb:	83 ec 08             	sub    $0x8,%esp
  106dde:	89 e0                	mov    %esp,%eax
  106de0:	8b 55 f2             	mov    -0xe(%ebp),%edx
  106de3:	89 10                	mov    %edx,(%eax)
  106de5:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  106de9:	66 89 50 04          	mov    %dx,0x4(%eax)
  106ded:	e8 20 dd ff ff       	call   104b12 <cmos_datetime_to_str>
  106df2:	83 c4 10             	add    $0x10,%esp
  106df5:	83 ec 0c             	sub    $0xc,%esp
  106df8:	68 e0 09 14 00       	push   $0x1409e0
  106dfd:	e8 c8 13 00 00       	call   1081ca <__redirect_printf__>
  106e02:	83 c4 10             	add    $0x10,%esp
  106e05:	83 ec 04             	sub    $0x4,%esp
  106e08:	68 e0 0d 14 00       	push   $0x140de0
  106e0d:	68 cc 11 14 00       	push   $0x1411cc
  106e12:	68 8e aa 10 00       	push   $0x10aa8e
  106e17:	e8 96 1c 00 00       	call   108ab2 <printf>
  106e1c:	83 c4 10             	add    $0x10,%esp
  106e1f:	83 ec 0c             	sub    $0xc,%esp
  106e22:	6a 00                	push   $0x0
  106e24:	e8 a1 13 00 00       	call   1081ca <__redirect_printf__>
  106e29:	83 c4 10             	add    $0x10,%esp
  106e2c:	83 ec 08             	sub    $0x8,%esp
  106e2f:	68 e0 09 14 00       	push   $0x1409e0
  106e34:	68 f8 03 00 00       	push   $0x3f8
  106e39:	e8 cc b3 ff ff       	call   10220a <com_write>
  106e3e:	83 c4 10             	add    $0x10,%esp
  106e41:	83 ec 04             	sub    $0x4,%esp
  106e44:	68 00 04 00 00       	push   $0x400
  106e49:	6a 00                	push   $0x0
  106e4b:	68 e0 09 14 00       	push   $0x1409e0
  106e50:	e8 d6 1f 00 00       	call   108e2b <memset>
  106e55:	83 c4 10             	add    $0x10,%esp
  106e58:	83 ec 04             	sub    $0x4,%esp
  106e5b:	68 ec 03 00 00       	push   $0x3ec
  106e60:	6a 00                	push   $0x0
  106e62:	68 e0 0d 14 00       	push   $0x140de0
  106e67:	e8 bf 1f 00 00       	call   108e2b <memset>
  106e6c:	83 c4 10             	add    $0x10,%esp
  106e6f:	83 ec 04             	sub    $0x4,%esp
  106e72:	6a 14                	push   $0x14
  106e74:	6a 00                	push   $0x0
  106e76:	68 cc 11 14 00       	push   $0x1411cc
  106e7b:	e8 ab 1f 00 00       	call   108e2b <memset>
  106e80:	83 c4 10             	add    $0x10,%esp
  106e83:	90                   	nop
  106e84:	c9                   	leave  
  106e85:	c3                   	ret    

00106e86 <scheduler>:
  106e86:	55                   	push   %ebp
  106e87:	89 e5                	mov    %esp,%ebp
  106e89:	83 ec 18             	sub    $0x18,%esp
  106e8c:	8b 0d 20 12 14 00    	mov    0x141220,%ecx
  106e92:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  106e97:	ba 00 00 00 00       	mov    $0x0,%edx
  106e9c:	f7 f1                	div    %ecx
  106e9e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106ea1:	8b 45 0c             	mov    0xc(%ebp),%eax
  106ea4:	ba 00 00 00 00       	mov    $0x0,%edx
  106ea9:	f7 75 f4             	divl   -0xc(%ebp)
  106eac:	89 d0                	mov    %edx,%eax
  106eae:	85 c0                	test   %eax,%eax
  106eb0:	75 05                	jne    106eb7 <scheduler+0x31>
  106eb2:	e8 2d fe ff ff       	call   106ce4 <com_scheduler>
  106eb7:	83 ec 08             	sub    $0x8,%esp
  106eba:	ff 75 0c             	push   0xc(%ebp)
  106ebd:	ff 75 08             	push   0x8(%ebp)
  106ec0:	e8 8f f9 ff ff       	call   106854 <tasking_scheduler>
  106ec5:	83 c4 10             	add    $0x10,%esp
  106ec8:	90                   	nop
  106ec9:	c9                   	leave  
  106eca:	c3                   	ret    

00106ecb <kernel_main>:
  106ecb:	55                   	push   %ebp
  106ecc:	89 e5                	mov    %esp,%ebp
  106ece:	53                   	push   %ebx
  106ecf:	81 ec 94 01 00 00    	sub    $0x194,%esp
  106ed5:	e8 bf 97 ff ff       	call   100699 <cli>
  106eda:	c6 05 24 12 14 00 00 	movb   $0x0,0x141224
  106ee1:	83 ec 0c             	sub    $0xc,%esp
  106ee4:	68 e0 0d 14 00       	push   $0x140de0
  106ee9:	e8 dc 12 00 00       	call   1081ca <__redirect_printf__>
  106eee:	83 c4 10             	add    $0x10,%esp
  106ef1:	83 ec 0c             	sub    $0xc,%esp
  106ef4:	68 94 aa 10 00       	push   $0x10aa94
  106ef9:	e8 b4 1b 00 00       	call   108ab2 <printf>
  106efe:	83 c4 10             	add    $0x10,%esp
  106f01:	83 ec 0c             	sub    $0xc,%esp
  106f04:	6a 00                	push   $0x0
  106f06:	e8 bf 12 00 00       	call   1081ca <__redirect_printf__>
  106f0b:	83 c4 10             	add    $0x10,%esp
  106f0e:	83 ec 0c             	sub    $0xc,%esp
  106f11:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  106f14:	50                   	push   %eax
  106f15:	e8 93 b7 ff ff       	call   1026ad <cmos_read_rtc>
  106f1a:	83 c4 10             	add    $0x10,%esp
  106f1d:	83 ec 04             	sub    $0x4,%esp
  106f20:	68 cc 11 14 00       	push   $0x1411cc
  106f25:	83 ec 08             	sub    $0x8,%esp
  106f28:	89 e0                	mov    %esp,%eax
  106f2a:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  106f2d:	89 10                	mov    %edx,(%eax)
  106f2f:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  106f33:	66 89 50 04          	mov    %dx,0x4(%eax)
  106f37:	e8 d6 db ff ff       	call   104b12 <cmos_datetime_to_str>
  106f3c:	83 c4 10             	add    $0x10,%esp
  106f3f:	83 ec 0c             	sub    $0xc,%esp
  106f42:	68 e0 09 14 00       	push   $0x1409e0
  106f47:	e8 7e 12 00 00       	call   1081ca <__redirect_printf__>
  106f4c:	83 c4 10             	add    $0x10,%esp
  106f4f:	83 ec 04             	sub    $0x4,%esp
  106f52:	68 e0 0d 14 00       	push   $0x140de0
  106f57:	68 cc 11 14 00       	push   $0x1411cc
  106f5c:	68 a1 aa 10 00       	push   $0x10aaa1
  106f61:	e8 4c 1b 00 00       	call   108ab2 <printf>
  106f66:	83 c4 10             	add    $0x10,%esp
  106f69:	83 ec 0c             	sub    $0xc,%esp
  106f6c:	6a 00                	push   $0x0
  106f6e:	e8 57 12 00 00       	call   1081ca <__redirect_printf__>
  106f73:	83 c4 10             	add    $0x10,%esp
  106f76:	83 ec 08             	sub    $0x8,%esp
  106f79:	68 e0 09 14 00       	push   $0x1409e0
  106f7e:	68 f8 03 00 00       	push   $0x3f8
  106f83:	e8 82 b2 ff ff       	call   10220a <com_write>
  106f88:	83 c4 10             	add    $0x10,%esp
  106f8b:	83 ec 04             	sub    $0x4,%esp
  106f8e:	68 00 04 00 00       	push   $0x400
  106f93:	6a 00                	push   $0x0
  106f95:	68 e0 09 14 00       	push   $0x1409e0
  106f9a:	e8 8c 1e 00 00       	call   108e2b <memset>
  106f9f:	83 c4 10             	add    $0x10,%esp
  106fa2:	83 ec 04             	sub    $0x4,%esp
  106fa5:	68 ec 03 00 00       	push   $0x3ec
  106faa:	6a 00                	push   $0x0
  106fac:	68 e0 0d 14 00       	push   $0x140de0
  106fb1:	e8 75 1e 00 00       	call   108e2b <memset>
  106fb6:	83 c4 10             	add    $0x10,%esp
  106fb9:	83 ec 04             	sub    $0x4,%esp
  106fbc:	6a 14                	push   $0x14
  106fbe:	6a 00                	push   $0x0
  106fc0:	68 cc 11 14 00       	push   $0x1411cc
  106fc5:	e8 61 1e 00 00       	call   108e2b <memset>
  106fca:	83 c4 10             	add    $0x10,%esp
  106fcd:	e8 c7 91 ff ff       	call   100199 <tty_init>
  106fd2:	e8 49 97 ff ff       	call   100720 <gdt_init>
  106fd7:	e8 59 a8 ff ff       	call   101835 <pic_remap>
  106fdc:	e8 a4 98 ff ff       	call   100885 <idt_init>
  106fe1:	83 ec 0c             	sub    $0xc,%esp
  106fe4:	68 e0 0d 14 00       	push   $0x140de0
  106fe9:	e8 dc 11 00 00       	call   1081ca <__redirect_printf__>
  106fee:	83 c4 10             	add    $0x10,%esp
  106ff1:	83 ec 0c             	sub    $0xc,%esp
  106ff4:	68 a7 aa 10 00       	push   $0x10aaa7
  106ff9:	e8 b4 1a 00 00       	call   108ab2 <printf>
  106ffe:	83 c4 10             	add    $0x10,%esp
  107001:	83 ec 0c             	sub    $0xc,%esp
  107004:	6a 00                	push   $0x0
  107006:	e8 bf 11 00 00       	call   1081ca <__redirect_printf__>
  10700b:	83 c4 10             	add    $0x10,%esp
  10700e:	83 ec 0c             	sub    $0xc,%esp
  107011:	8d 45 c0             	lea    -0x40(%ebp),%eax
  107014:	50                   	push   %eax
  107015:	e8 93 b6 ff ff       	call   1026ad <cmos_read_rtc>
  10701a:	83 c4 10             	add    $0x10,%esp
  10701d:	83 ec 04             	sub    $0x4,%esp
  107020:	68 cc 11 14 00       	push   $0x1411cc
  107025:	83 ec 08             	sub    $0x8,%esp
  107028:	89 e0                	mov    %esp,%eax
  10702a:	8b 55 c0             	mov    -0x40(%ebp),%edx
  10702d:	89 10                	mov    %edx,(%eax)
  10702f:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  107033:	66 89 50 04          	mov    %dx,0x4(%eax)
  107037:	e8 d6 da ff ff       	call   104b12 <cmos_datetime_to_str>
  10703c:	83 c4 10             	add    $0x10,%esp
  10703f:	83 ec 0c             	sub    $0xc,%esp
  107042:	68 e0 09 14 00       	push   $0x1409e0
  107047:	e8 7e 11 00 00       	call   1081ca <__redirect_printf__>
  10704c:	83 c4 10             	add    $0x10,%esp
  10704f:	83 ec 04             	sub    $0x4,%esp
  107052:	68 e0 0d 14 00       	push   $0x140de0
  107057:	68 cc 11 14 00       	push   $0x1411cc
  10705c:	68 a1 aa 10 00       	push   $0x10aaa1
  107061:	e8 4c 1a 00 00       	call   108ab2 <printf>
  107066:	83 c4 10             	add    $0x10,%esp
  107069:	83 ec 0c             	sub    $0xc,%esp
  10706c:	6a 00                	push   $0x0
  10706e:	e8 57 11 00 00       	call   1081ca <__redirect_printf__>
  107073:	83 c4 10             	add    $0x10,%esp
  107076:	83 ec 08             	sub    $0x8,%esp
  107079:	68 e0 09 14 00       	push   $0x1409e0
  10707e:	68 f8 03 00 00       	push   $0x3f8
  107083:	e8 82 b1 ff ff       	call   10220a <com_write>
  107088:	83 c4 10             	add    $0x10,%esp
  10708b:	83 ec 04             	sub    $0x4,%esp
  10708e:	68 00 04 00 00       	push   $0x400
  107093:	6a 00                	push   $0x0
  107095:	68 e0 09 14 00       	push   $0x1409e0
  10709a:	e8 8c 1d 00 00       	call   108e2b <memset>
  10709f:	83 c4 10             	add    $0x10,%esp
  1070a2:	83 ec 04             	sub    $0x4,%esp
  1070a5:	68 ec 03 00 00       	push   $0x3ec
  1070aa:	6a 00                	push   $0x0
  1070ac:	68 e0 0d 14 00       	push   $0x140de0
  1070b1:	e8 75 1d 00 00       	call   108e2b <memset>
  1070b6:	83 c4 10             	add    $0x10,%esp
  1070b9:	83 ec 04             	sub    $0x4,%esp
  1070bc:	6a 14                	push   $0x14
  1070be:	6a 00                	push   $0x0
  1070c0:	68 cc 11 14 00       	push   $0x1411cc
  1070c5:	e8 61 1d 00 00       	call   108e2b <memset>
  1070ca:	83 c4 10             	add    $0x10,%esp
  1070cd:	e8 4a a6 ff ff       	call   10171c <syscall_init>
  1070d2:	83 ec 08             	sub    $0x8,%esp
  1070d5:	6a 00                	push   $0x0
  1070d7:	6a 07                	push   $0x7
  1070d9:	e8 86 91 ff ff       	call   100264 <tty_set_color>
  1070de:	83 c4 10             	add    $0x10,%esp
  1070e1:	6a 42                	push   $0x42
  1070e3:	6a 01                	push   $0x1
  1070e5:	6a 00                	push   $0x0
  1070e7:	68 c0 aa 10 00       	push   $0x10aac0
  1070ec:	e8 c1 19 00 00       	call   108ab2 <printf>
  1070f1:	83 c4 10             	add    $0x10,%esp
  1070f4:	81 7d 0c 02 b0 ad 2b 	cmpl   $0x2badb002,0xc(%ebp)
  1070fb:	74 24                	je     107121 <kernel_main+0x256>
  1070fd:	83 ec 08             	sub    $0x8,%esp
  107100:	6a 00                	push   $0x0
  107102:	6a 04                	push   $0x4
  107104:	e8 5b 91 ff ff       	call   100264 <tty_set_color>
  107109:	83 c4 10             	add    $0x10,%esp
  10710c:	83 ec 0c             	sub    $0xc,%esp
  10710f:	68 dc aa 10 00       	push   $0x10aadc
  107114:	e8 99 19 00 00       	call   108ab2 <printf>
  107119:	83 c4 10             	add    $0x10,%esp
  10711c:	e8 41 1c 00 00       	call   108d62 <abort>
  107121:	83 ec 0c             	sub    $0xc,%esp
  107124:	ff 75 08             	push   0x8(%ebp)
  107127:	e8 f3 e7 ff ff       	call   10591f <memory_init>
  10712c:	83 c4 10             	add    $0x10,%esp
  10712f:	e8 a6 e8 ff ff       	call   1059da <memory_get_size>
  107134:	89 45 e8             	mov    %eax,-0x18(%ebp)
  107137:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10713e:	83 ec 0c             	sub    $0xc,%esp
  107141:	68 ff aa 10 00       	push   $0x10aaff
  107146:	e8 67 19 00 00       	call   108ab2 <printf>
  10714b:	83 c4 10             	add    $0x10,%esp
  10714e:	83 ec 08             	sub    $0x8,%esp
  107151:	6a 00                	push   $0x0
  107153:	6a 02                	push   $0x2
  107155:	e8 0a 91 ff ff       	call   100264 <tty_set_color>
  10715a:	83 c4 10             	add    $0x10,%esp
  10715d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  107160:	8b 55 ec             	mov    -0x14(%ebp),%edx
  107163:	0f ac d0 0a          	shrd   $0xa,%edx,%eax
  107167:	c1 ea 0a             	shr    $0xa,%edx
  10716a:	83 ec 04             	sub    $0x4,%esp
  10716d:	52                   	push   %edx
  10716e:	50                   	push   %eax
  10716f:	68 13 ab 10 00       	push   $0x10ab13
  107174:	e8 39 19 00 00       	call   108ab2 <printf>
  107179:	83 c4 10             	add    $0x10,%esp
  10717c:	83 ec 08             	sub    $0x8,%esp
  10717f:	6a 00                	push   $0x0
  107181:	6a 07                	push   $0x7
  107183:	e8 dc 90 ff ff       	call   100264 <tty_set_color>
  107188:	83 c4 10             	add    $0x10,%esp
  10718b:	83 ec 0c             	sub    $0xc,%esp
  10718e:	68 1d ab 10 00       	push   $0x10ab1d
  107193:	e8 1a 19 00 00       	call   108ab2 <printf>
  107198:	83 c4 10             	add    $0x10,%esp
  10719b:	e8 d4 9e ff ff       	call   101074 <cpuid_supported>
  1071a0:	88 45 e7             	mov    %al,-0x19(%ebp)
  1071a3:	80 7d e7 00          	cmpb   $0x0,-0x19(%ebp)
  1071a7:	75 24                	jne    1071cd <kernel_main+0x302>
  1071a9:	83 ec 08             	sub    $0x8,%esp
  1071ac:	6a 00                	push   $0x0
  1071ae:	6a 04                	push   $0x4
  1071b0:	e8 af 90 ff ff       	call   100264 <tty_set_color>
  1071b5:	83 c4 10             	add    $0x10,%esp
  1071b8:	83 ec 0c             	sub    $0xc,%esp
  1071bb:	68 33 ab 10 00       	push   $0x10ab33
  1071c0:	e8 ed 18 00 00       	call   108ab2 <printf>
  1071c5:	83 c4 10             	add    $0x10,%esp
  1071c8:	e9 b0 00 00 00       	jmp    10727d <kernel_main+0x3b2>
  1071cd:	83 ec 08             	sub    $0x8,%esp
  1071d0:	6a 00                	push   $0x0
  1071d2:	6a 02                	push   $0x2
  1071d4:	e8 8b 90 ff ff       	call   100264 <tty_set_color>
  1071d9:	83 c4 10             	add    $0x10,%esp
  1071dc:	83 ec 04             	sub    $0x4,%esp
  1071df:	8d 45 b4             	lea    -0x4c(%ebp),%eax
  1071e2:	83 c0 08             	add    $0x8,%eax
  1071e5:	50                   	push   %eax
  1071e6:	8d 45 b4             	lea    -0x4c(%ebp),%eax
  1071e9:	83 c0 04             	add    $0x4,%eax
  1071ec:	50                   	push   %eax
  1071ed:	8d 45 b4             	lea    -0x4c(%ebp),%eax
  1071f0:	50                   	push   %eax
  1071f1:	e8 46 9e ff ff       	call   10103c <cpuid_get_model>
  1071f6:	83 c4 10             	add    $0x10,%esp
  1071f9:	83 ec 0c             	sub    $0xc,%esp
  1071fc:	68 39 ab 10 00       	push   $0x10ab39
  107201:	e8 ac 18 00 00       	call   108ab2 <printf>
  107206:	83 c4 10             	add    $0x10,%esp
  107209:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  107210:	eb 55                	jmp    107267 <kernel_main+0x39c>
  107212:	8b 45 f4             	mov    -0xc(%ebp),%eax
  107215:	8b 44 85 b4          	mov    -0x4c(%ebp,%eax,4),%eax
  107219:	89 45 b0             	mov    %eax,-0x50(%ebp)
  10721c:	8d 45 b0             	lea    -0x50(%ebp),%eax
  10721f:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107222:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107225:	83 c0 03             	add    $0x3,%eax
  107228:	0f b6 00             	movzbl (%eax),%eax
  10722b:	0f be d8             	movsbl %al,%ebx
  10722e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107231:	83 c0 02             	add    $0x2,%eax
  107234:	0f b6 00             	movzbl (%eax),%eax
  107237:	0f be c8             	movsbl %al,%ecx
  10723a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10723d:	83 c0 01             	add    $0x1,%eax
  107240:	0f b6 00             	movzbl (%eax),%eax
  107243:	0f be d0             	movsbl %al,%edx
  107246:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107249:	0f b6 00             	movzbl (%eax),%eax
  10724c:	0f be c0             	movsbl %al,%eax
  10724f:	83 ec 0c             	sub    $0xc,%esp
  107252:	53                   	push   %ebx
  107253:	51                   	push   %ecx
  107254:	52                   	push   %edx
  107255:	50                   	push   %eax
  107256:	68 3b ab 10 00       	push   $0x10ab3b
  10725b:	e8 52 18 00 00       	call   108ab2 <printf>
  107260:	83 c4 20             	add    $0x20,%esp
  107263:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  107267:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
  10726b:	7e a5                	jle    107212 <kernel_main+0x347>
  10726d:	83 ec 0c             	sub    $0xc,%esp
  107270:	68 44 ab 10 00       	push   $0x10ab44
  107275:	e8 38 18 00 00       	call   108ab2 <printf>
  10727a:	83 c4 10             	add    $0x10,%esp
  10727d:	83 ec 08             	sub    $0x8,%esp
  107280:	6a 00                	push   $0x0
  107282:	6a 07                	push   $0x7
  107284:	e8 db 8f ff ff       	call   100264 <tty_set_color>
  107289:	83 c4 10             	add    $0x10,%esp
  10728c:	83 ec 0c             	sub    $0xc,%esp
  10728f:	68 47 ab 10 00       	push   $0x10ab47
  107294:	e8 19 18 00 00       	call   108ab2 <printf>
  107299:	83 c4 10             	add    $0x10,%esp
  10729c:	e8 60 bb ff ff       	call   102e01 <acpi_init>
  1072a1:	e8 e7 c5 ff ff       	call   10388d <acpi_is_initialized>
  1072a6:	3c 01                	cmp    $0x1,%al
  1072a8:	0f 85 8e 00 00 00    	jne    10733c <kernel_main+0x471>
  1072ae:	83 ec 08             	sub    $0x8,%esp
  1072b1:	6a 00                	push   $0x0
  1072b3:	6a 02                	push   $0x2
  1072b5:	e8 aa 8f ff ff       	call   100264 <tty_set_color>
  1072ba:	83 c4 10             	add    $0x10,%esp
  1072bd:	83 ec 0c             	sub    $0xc,%esp
  1072c0:	68 5c ab 10 00       	push   $0x10ab5c
  1072c5:	e8 e8 17 00 00       	call   108ab2 <printf>
  1072ca:	83 c4 10             	add    $0x10,%esp
  1072cd:	83 ec 08             	sub    $0x8,%esp
  1072d0:	6a 00                	push   $0x0
  1072d2:	6a 07                	push   $0x7
  1072d4:	e8 8b 8f ff ff       	call   100264 <tty_set_color>
  1072d9:	83 c4 10             	add    $0x10,%esp
  1072dc:	83 ec 0c             	sub    $0xc,%esp
  1072df:	68 62 ab 10 00       	push   $0x10ab62
  1072e4:	e8 c9 17 00 00       	call   108ab2 <printf>
  1072e9:	83 c4 10             	add    $0x10,%esp
  1072ec:	e8 1e b8 ff ff       	call   102b0f <acpi_enable>
  1072f1:	e8 8b c5 ff ff       	call   103881 <acpi_is_enabled>
  1072f6:	3c 01                	cmp    $0x1,%al
  1072f8:	75 21                	jne    10731b <kernel_main+0x450>
  1072fa:	83 ec 08             	sub    $0x8,%esp
  1072fd:	6a 00                	push   $0x0
  1072ff:	6a 02                	push   $0x2
  107301:	e8 5e 8f ff ff       	call   100264 <tty_set_color>
  107306:	83 c4 10             	add    $0x10,%esp
  107309:	83 ec 0c             	sub    $0xc,%esp
  10730c:	68 5c ab 10 00       	push   $0x10ab5c
  107311:	e8 9c 17 00 00       	call   108ab2 <printf>
  107316:	83 c4 10             	add    $0x10,%esp
  107319:	eb 40                	jmp    10735b <kernel_main+0x490>
  10731b:	83 ec 08             	sub    $0x8,%esp
  10731e:	6a 00                	push   $0x0
  107320:	6a 04                	push   $0x4
  107322:	e8 3d 8f ff ff       	call   100264 <tty_set_color>
  107327:	83 c4 10             	add    $0x10,%esp
  10732a:	83 ec 0c             	sub    $0xc,%esp
  10732d:	68 33 ab 10 00       	push   $0x10ab33
  107332:	e8 7b 17 00 00       	call   108ab2 <printf>
  107337:	83 c4 10             	add    $0x10,%esp
  10733a:	eb 1f                	jmp    10735b <kernel_main+0x490>
  10733c:	83 ec 08             	sub    $0x8,%esp
  10733f:	6a 00                	push   $0x0
  107341:	6a 04                	push   $0x4
  107343:	e8 1c 8f ff ff       	call   100264 <tty_set_color>
  107348:	83 c4 10             	add    $0x10,%esp
  10734b:	83 ec 0c             	sub    $0xc,%esp
  10734e:	68 33 ab 10 00       	push   $0x10ab33
  107353:	e8 5a 17 00 00       	call   108ab2 <printf>
  107358:	83 c4 10             	add    $0x10,%esp
  10735b:	83 ec 08             	sub    $0x8,%esp
  10735e:	6a 00                	push   $0x0
  107360:	6a 07                	push   $0x7
  107362:	e8 fd 8e ff ff       	call   100264 <tty_set_color>
  107367:	83 c4 10             	add    $0x10,%esp
  10736a:	83 ec 0c             	sub    $0xc,%esp
  10736d:	68 73 ab 10 00       	push   $0x10ab73
  107372:	e8 3b 17 00 00       	call   108ab2 <printf>
  107377:	83 c4 10             	add    $0x10,%esp
  10737a:	e8 38 ea ff ff       	call   105db7 <paging_init>
  10737f:	83 ec 08             	sub    $0x8,%esp
  107382:	6a 00                	push   $0x0
  107384:	6a 02                	push   $0x2
  107386:	e8 d9 8e ff ff       	call   100264 <tty_set_color>
  10738b:	83 c4 10             	add    $0x10,%esp
  10738e:	83 ec 0c             	sub    $0xc,%esp
  107391:	68 5c ab 10 00       	push   $0x10ab5c
  107396:	e8 17 17 00 00       	call   108ab2 <printf>
  10739b:	83 c4 10             	add    $0x10,%esp
  10739e:	83 ec 08             	sub    $0x8,%esp
  1073a1:	6a 00                	push   $0x0
  1073a3:	6a 07                	push   $0x7
  1073a5:	e8 ba 8e ff ff       	call   100264 <tty_set_color>
  1073aa:	83 c4 10             	add    $0x10,%esp
  1073ad:	83 ec 0c             	sub    $0xc,%esp
  1073b0:	6a 00                	push   $0x0
  1073b2:	6a 00                	push   $0x0
  1073b4:	6a 03                	push   $0x3
  1073b6:	68 80 25 00 00       	push   $0x2580
  1073bb:	68 f8 03 00 00       	push   $0x3f8
  1073c0:	e8 f8 ab ff ff       	call   101fbd <com_init>
  1073c5:	83 c4 20             	add    $0x20,%esp
  1073c8:	83 ec 0c             	sub    $0xc,%esp
  1073cb:	6a 00                	push   $0x0
  1073cd:	6a 00                	push   $0x0
  1073cf:	6a 03                	push   $0x3
  1073d1:	68 80 25 00 00       	push   $0x2580
  1073d6:	68 f8 02 00 00       	push   $0x2f8
  1073db:	e8 dd ab ff ff       	call   101fbd <com_init>
  1073e0:	83 c4 20             	add    $0x20,%esp
  1073e3:	83 ec 0c             	sub    $0xc,%esp
  1073e6:	6a 00                	push   $0x0
  1073e8:	6a 00                	push   $0x0
  1073ea:	6a 03                	push   $0x3
  1073ec:	68 80 25 00 00       	push   $0x2580
  1073f1:	68 e8 03 00 00       	push   $0x3e8
  1073f6:	e8 c2 ab ff ff       	call   101fbd <com_init>
  1073fb:	83 c4 20             	add    $0x20,%esp
  1073fe:	83 ec 0c             	sub    $0xc,%esp
  107401:	6a 0d                	push   $0xd
  107403:	e8 9f ad ff ff       	call   1021a7 <com_set_int_byte>
  107408:	83 c4 10             	add    $0x10,%esp
  10740b:	83 ec 0c             	sub    $0xc,%esp
  10740e:	68 e0 0d 14 00       	push   $0x140de0
  107413:	e8 b2 0d 00 00       	call   1081ca <__redirect_printf__>
  107418:	83 c4 10             	add    $0x10,%esp
  10741b:	83 ec 0c             	sub    $0xc,%esp
  10741e:	68 89 ab 10 00       	push   $0x10ab89
  107423:	e8 8a 16 00 00       	call   108ab2 <printf>
  107428:	83 c4 10             	add    $0x10,%esp
  10742b:	83 ec 0c             	sub    $0xc,%esp
  10742e:	6a 00                	push   $0x0
  107430:	e8 95 0d 00 00       	call   1081ca <__redirect_printf__>
  107435:	83 c4 10             	add    $0x10,%esp
  107438:	83 ec 0c             	sub    $0xc,%esp
  10743b:	8d 45 aa             	lea    -0x56(%ebp),%eax
  10743e:	50                   	push   %eax
  10743f:	e8 69 b2 ff ff       	call   1026ad <cmos_read_rtc>
  107444:	83 c4 10             	add    $0x10,%esp
  107447:	83 ec 04             	sub    $0x4,%esp
  10744a:	68 cc 11 14 00       	push   $0x1411cc
  10744f:	83 ec 08             	sub    $0x8,%esp
  107452:	89 e0                	mov    %esp,%eax
  107454:	8b 55 aa             	mov    -0x56(%ebp),%edx
  107457:	89 10                	mov    %edx,(%eax)
  107459:	0f b7 55 ae          	movzwl -0x52(%ebp),%edx
  10745d:	66 89 50 04          	mov    %dx,0x4(%eax)
  107461:	e8 ac d6 ff ff       	call   104b12 <cmos_datetime_to_str>
  107466:	83 c4 10             	add    $0x10,%esp
  107469:	83 ec 0c             	sub    $0xc,%esp
  10746c:	68 e0 09 14 00       	push   $0x1409e0
  107471:	e8 54 0d 00 00       	call   1081ca <__redirect_printf__>
  107476:	83 c4 10             	add    $0x10,%esp
  107479:	83 ec 04             	sub    $0x4,%esp
  10747c:	68 e0 0d 14 00       	push   $0x140de0
  107481:	68 cc 11 14 00       	push   $0x1411cc
  107486:	68 a1 aa 10 00       	push   $0x10aaa1
  10748b:	e8 22 16 00 00       	call   108ab2 <printf>
  107490:	83 c4 10             	add    $0x10,%esp
  107493:	83 ec 0c             	sub    $0xc,%esp
  107496:	6a 00                	push   $0x0
  107498:	e8 2d 0d 00 00       	call   1081ca <__redirect_printf__>
  10749d:	83 c4 10             	add    $0x10,%esp
  1074a0:	83 ec 08             	sub    $0x8,%esp
  1074a3:	68 e0 09 14 00       	push   $0x1409e0
  1074a8:	68 f8 03 00 00       	push   $0x3f8
  1074ad:	e8 58 ad ff ff       	call   10220a <com_write>
  1074b2:	83 c4 10             	add    $0x10,%esp
  1074b5:	83 ec 04             	sub    $0x4,%esp
  1074b8:	68 00 04 00 00       	push   $0x400
  1074bd:	6a 00                	push   $0x0
  1074bf:	68 e0 09 14 00       	push   $0x1409e0
  1074c4:	e8 62 19 00 00       	call   108e2b <memset>
  1074c9:	83 c4 10             	add    $0x10,%esp
  1074cc:	83 ec 04             	sub    $0x4,%esp
  1074cf:	68 ec 03 00 00       	push   $0x3ec
  1074d4:	6a 00                	push   $0x0
  1074d6:	68 e0 0d 14 00       	push   $0x140de0
  1074db:	e8 4b 19 00 00       	call   108e2b <memset>
  1074e0:	83 c4 10             	add    $0x10,%esp
  1074e3:	83 ec 04             	sub    $0x4,%esp
  1074e6:	6a 14                	push   $0x14
  1074e8:	6a 00                	push   $0x0
  1074ea:	68 cc 11 14 00       	push   $0x1411cc
  1074ef:	e8 37 19 00 00       	call   108e2b <memset>
  1074f4:	83 c4 10             	add    $0x10,%esp
  1074f7:	83 ec 0c             	sub    $0xc,%esp
  1074fa:	68 a0 ab 10 00       	push   $0x10aba0
  1074ff:	e8 ae 15 00 00       	call   108ab2 <printf>
  107504:	83 c4 10             	add    $0x10,%esp
  107507:	83 ec 0c             	sub    $0xc,%esp
  10750a:	68 f8 03 00 00       	push   $0x3f8
  10750f:	e8 ab ac ff ff       	call   1021bf <com_is_initialized>
  107514:	83 c4 10             	add    $0x10,%esp
  107517:	3c 01                	cmp    $0x1,%al
  107519:	0f 85 0d 01 00 00    	jne    10762c <kernel_main+0x761>
  10751f:	83 ec 08             	sub    $0x8,%esp
  107522:	6a 00                	push   $0x0
  107524:	6a 02                	push   $0x2
  107526:	e8 39 8d ff ff       	call   100264 <tty_set_color>
  10752b:	83 c4 10             	add    $0x10,%esp
  10752e:	83 ec 0c             	sub    $0xc,%esp
  107531:	68 5c ab 10 00       	push   $0x10ab5c
  107536:	e8 77 15 00 00       	call   108ab2 <printf>
  10753b:	83 c4 10             	add    $0x10,%esp
  10753e:	83 ec 0c             	sub    $0xc,%esp
  107541:	68 e0 0d 14 00       	push   $0x140de0
  107546:	e8 7f 0c 00 00       	call   1081ca <__redirect_printf__>
  10754b:	83 c4 10             	add    $0x10,%esp
  10754e:	83 ec 0c             	sub    $0xc,%esp
  107551:	68 b2 ab 10 00       	push   $0x10abb2
  107556:	e8 57 15 00 00       	call   108ab2 <printf>
  10755b:	83 c4 10             	add    $0x10,%esp
  10755e:	83 ec 0c             	sub    $0xc,%esp
  107561:	6a 00                	push   $0x0
  107563:	e8 62 0c 00 00       	call   1081ca <__redirect_printf__>
  107568:	83 c4 10             	add    $0x10,%esp
  10756b:	83 ec 0c             	sub    $0xc,%esp
  10756e:	8d 45 a4             	lea    -0x5c(%ebp),%eax
  107571:	50                   	push   %eax
  107572:	e8 36 b1 ff ff       	call   1026ad <cmos_read_rtc>
  107577:	83 c4 10             	add    $0x10,%esp
  10757a:	83 ec 04             	sub    $0x4,%esp
  10757d:	68 cc 11 14 00       	push   $0x1411cc
  107582:	83 ec 08             	sub    $0x8,%esp
  107585:	89 e0                	mov    %esp,%eax
  107587:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  10758a:	89 10                	mov    %edx,(%eax)
  10758c:	0f b7 55 a8          	movzwl -0x58(%ebp),%edx
  107590:	66 89 50 04          	mov    %dx,0x4(%eax)
  107594:	e8 79 d5 ff ff       	call   104b12 <cmos_datetime_to_str>
  107599:	83 c4 10             	add    $0x10,%esp
  10759c:	83 ec 0c             	sub    $0xc,%esp
  10759f:	68 e0 09 14 00       	push   $0x1409e0
  1075a4:	e8 21 0c 00 00       	call   1081ca <__redirect_printf__>
  1075a9:	83 c4 10             	add    $0x10,%esp
  1075ac:	83 ec 04             	sub    $0x4,%esp
  1075af:	68 e0 0d 14 00       	push   $0x140de0
  1075b4:	68 cc 11 14 00       	push   $0x1411cc
  1075b9:	68 a1 aa 10 00       	push   $0x10aaa1
  1075be:	e8 ef 14 00 00       	call   108ab2 <printf>
  1075c3:	83 c4 10             	add    $0x10,%esp
  1075c6:	83 ec 0c             	sub    $0xc,%esp
  1075c9:	6a 00                	push   $0x0
  1075cb:	e8 fa 0b 00 00       	call   1081ca <__redirect_printf__>
  1075d0:	83 c4 10             	add    $0x10,%esp
  1075d3:	83 ec 08             	sub    $0x8,%esp
  1075d6:	68 e0 09 14 00       	push   $0x1409e0
  1075db:	68 f8 03 00 00       	push   $0x3f8
  1075e0:	e8 25 ac ff ff       	call   10220a <com_write>
  1075e5:	83 c4 10             	add    $0x10,%esp
  1075e8:	83 ec 04             	sub    $0x4,%esp
  1075eb:	68 00 04 00 00       	push   $0x400
  1075f0:	6a 00                	push   $0x0
  1075f2:	68 e0 09 14 00       	push   $0x1409e0
  1075f7:	e8 2f 18 00 00       	call   108e2b <memset>
  1075fc:	83 c4 10             	add    $0x10,%esp
  1075ff:	83 ec 04             	sub    $0x4,%esp
  107602:	68 ec 03 00 00       	push   $0x3ec
  107607:	6a 00                	push   $0x0
  107609:	68 e0 0d 14 00       	push   $0x140de0
  10760e:	e8 18 18 00 00       	call   108e2b <memset>
  107613:	83 c4 10             	add    $0x10,%esp
  107616:	83 ec 04             	sub    $0x4,%esp
  107619:	6a 14                	push   $0x14
  10761b:	6a 00                	push   $0x0
  10761d:	68 cc 11 14 00       	push   $0x1411cc
  107622:	e8 04 18 00 00       	call   108e2b <memset>
  107627:	83 c4 10             	add    $0x10,%esp
  10762a:	eb 1f                	jmp    10764b <kernel_main+0x780>
  10762c:	83 ec 08             	sub    $0x8,%esp
  10762f:	6a 00                	push   $0x0
  107631:	6a 04                	push   $0x4
  107633:	e8 2c 8c ff ff       	call   100264 <tty_set_color>
  107638:	83 c4 10             	add    $0x10,%esp
  10763b:	83 ec 0c             	sub    $0xc,%esp
  10763e:	68 33 ab 10 00       	push   $0x10ab33
  107643:	e8 6a 14 00 00       	call   108ab2 <printf>
  107648:	83 c4 10             	add    $0x10,%esp
  10764b:	83 ec 08             	sub    $0x8,%esp
  10764e:	6a 00                	push   $0x0
  107650:	6a 07                	push   $0x7
  107652:	e8 0d 8c ff ff       	call   100264 <tty_set_color>
  107657:	83 c4 10             	add    $0x10,%esp
  10765a:	83 ec 0c             	sub    $0xc,%esp
  10765d:	68 c2 ab 10 00       	push   $0x10abc2
  107662:	e8 4b 14 00 00       	call   108ab2 <printf>
  107667:	83 c4 10             	add    $0x10,%esp
  10766a:	83 ec 0c             	sub    $0xc,%esp
  10766d:	68 f8 02 00 00       	push   $0x2f8
  107672:	e8 48 ab ff ff       	call   1021bf <com_is_initialized>
  107677:	83 c4 10             	add    $0x10,%esp
  10767a:	3c 01                	cmp    $0x1,%al
  10767c:	0f 85 10 01 00 00    	jne    107792 <kernel_main+0x8c7>
  107682:	83 ec 08             	sub    $0x8,%esp
  107685:	6a 00                	push   $0x0
  107687:	6a 02                	push   $0x2
  107689:	e8 d6 8b ff ff       	call   100264 <tty_set_color>
  10768e:	83 c4 10             	add    $0x10,%esp
  107691:	83 ec 0c             	sub    $0xc,%esp
  107694:	68 5c ab 10 00       	push   $0x10ab5c
  107699:	e8 14 14 00 00       	call   108ab2 <printf>
  10769e:	83 c4 10             	add    $0x10,%esp
  1076a1:	83 ec 0c             	sub    $0xc,%esp
  1076a4:	68 e0 0d 14 00       	push   $0x140de0
  1076a9:	e8 1c 0b 00 00       	call   1081ca <__redirect_printf__>
  1076ae:	83 c4 10             	add    $0x10,%esp
  1076b1:	83 ec 0c             	sub    $0xc,%esp
  1076b4:	68 d4 ab 10 00       	push   $0x10abd4
  1076b9:	e8 f4 13 00 00       	call   108ab2 <printf>
  1076be:	83 c4 10             	add    $0x10,%esp
  1076c1:	83 ec 0c             	sub    $0xc,%esp
  1076c4:	6a 00                	push   $0x0
  1076c6:	e8 ff 0a 00 00       	call   1081ca <__redirect_printf__>
  1076cb:	83 c4 10             	add    $0x10,%esp
  1076ce:	83 ec 0c             	sub    $0xc,%esp
  1076d1:	8d 45 9e             	lea    -0x62(%ebp),%eax
  1076d4:	50                   	push   %eax
  1076d5:	e8 d3 af ff ff       	call   1026ad <cmos_read_rtc>
  1076da:	83 c4 10             	add    $0x10,%esp
  1076dd:	83 ec 04             	sub    $0x4,%esp
  1076e0:	68 cc 11 14 00       	push   $0x1411cc
  1076e5:	83 ec 08             	sub    $0x8,%esp
  1076e8:	89 e0                	mov    %esp,%eax
  1076ea:	8b 55 9e             	mov    -0x62(%ebp),%edx
  1076ed:	89 10                	mov    %edx,(%eax)
  1076ef:	0f b7 55 a2          	movzwl -0x5e(%ebp),%edx
  1076f3:	66 89 50 04          	mov    %dx,0x4(%eax)
  1076f7:	e8 16 d4 ff ff       	call   104b12 <cmos_datetime_to_str>
  1076fc:	83 c4 10             	add    $0x10,%esp
  1076ff:	83 ec 0c             	sub    $0xc,%esp
  107702:	68 e0 09 14 00       	push   $0x1409e0
  107707:	e8 be 0a 00 00       	call   1081ca <__redirect_printf__>
  10770c:	83 c4 10             	add    $0x10,%esp
  10770f:	83 ec 04             	sub    $0x4,%esp
  107712:	68 e0 0d 14 00       	push   $0x140de0
  107717:	68 cc 11 14 00       	push   $0x1411cc
  10771c:	68 a1 aa 10 00       	push   $0x10aaa1
  107721:	e8 8c 13 00 00       	call   108ab2 <printf>
  107726:	83 c4 10             	add    $0x10,%esp
  107729:	83 ec 0c             	sub    $0xc,%esp
  10772c:	6a 00                	push   $0x0
  10772e:	e8 97 0a 00 00       	call   1081ca <__redirect_printf__>
  107733:	83 c4 10             	add    $0x10,%esp
  107736:	83 ec 08             	sub    $0x8,%esp
  107739:	68 e0 09 14 00       	push   $0x1409e0
  10773e:	68 f8 03 00 00       	push   $0x3f8
  107743:	e8 c2 aa ff ff       	call   10220a <com_write>
  107748:	83 c4 10             	add    $0x10,%esp
  10774b:	83 ec 04             	sub    $0x4,%esp
  10774e:	68 00 04 00 00       	push   $0x400
  107753:	6a 00                	push   $0x0
  107755:	68 e0 09 14 00       	push   $0x1409e0
  10775a:	e8 cc 16 00 00       	call   108e2b <memset>
  10775f:	83 c4 10             	add    $0x10,%esp
  107762:	83 ec 04             	sub    $0x4,%esp
  107765:	68 ec 03 00 00       	push   $0x3ec
  10776a:	6a 00                	push   $0x0
  10776c:	68 e0 0d 14 00       	push   $0x140de0
  107771:	e8 b5 16 00 00       	call   108e2b <memset>
  107776:	83 c4 10             	add    $0x10,%esp
  107779:	83 ec 04             	sub    $0x4,%esp
  10777c:	6a 14                	push   $0x14
  10777e:	6a 00                	push   $0x0
  107780:	68 cc 11 14 00       	push   $0x1411cc
  107785:	e8 a1 16 00 00       	call   108e2b <memset>
  10778a:	83 c4 10             	add    $0x10,%esp
  10778d:	e9 0b 01 00 00       	jmp    10789d <kernel_main+0x9d2>
  107792:	83 ec 08             	sub    $0x8,%esp
  107795:	6a 00                	push   $0x0
  107797:	6a 04                	push   $0x4
  107799:	e8 c6 8a ff ff       	call   100264 <tty_set_color>
  10779e:	83 c4 10             	add    $0x10,%esp
  1077a1:	83 ec 0c             	sub    $0xc,%esp
  1077a4:	68 33 ab 10 00       	push   $0x10ab33
  1077a9:	e8 04 13 00 00       	call   108ab2 <printf>
  1077ae:	83 c4 10             	add    $0x10,%esp
  1077b1:	83 ec 0c             	sub    $0xc,%esp
  1077b4:	68 e0 0d 14 00       	push   $0x140de0
  1077b9:	e8 0c 0a 00 00       	call   1081ca <__redirect_printf__>
  1077be:	83 c4 10             	add    $0x10,%esp
  1077c1:	83 ec 0c             	sub    $0xc,%esp
  1077c4:	68 e4 ab 10 00       	push   $0x10abe4
  1077c9:	e8 e4 12 00 00       	call   108ab2 <printf>
  1077ce:	83 c4 10             	add    $0x10,%esp
  1077d1:	83 ec 0c             	sub    $0xc,%esp
  1077d4:	6a 00                	push   $0x0
  1077d6:	e8 ef 09 00 00       	call   1081ca <__redirect_printf__>
  1077db:	83 c4 10             	add    $0x10,%esp
  1077de:	83 ec 0c             	sub    $0xc,%esp
  1077e1:	8d 45 98             	lea    -0x68(%ebp),%eax
  1077e4:	50                   	push   %eax
  1077e5:	e8 c3 ae ff ff       	call   1026ad <cmos_read_rtc>
  1077ea:	83 c4 10             	add    $0x10,%esp
  1077ed:	83 ec 04             	sub    $0x4,%esp
  1077f0:	68 cc 11 14 00       	push   $0x1411cc
  1077f5:	83 ec 08             	sub    $0x8,%esp
  1077f8:	89 e0                	mov    %esp,%eax
  1077fa:	8b 55 98             	mov    -0x68(%ebp),%edx
  1077fd:	89 10                	mov    %edx,(%eax)
  1077ff:	0f b7 55 9c          	movzwl -0x64(%ebp),%edx
  107803:	66 89 50 04          	mov    %dx,0x4(%eax)
  107807:	e8 06 d3 ff ff       	call   104b12 <cmos_datetime_to_str>
  10780c:	83 c4 10             	add    $0x10,%esp
  10780f:	83 ec 0c             	sub    $0xc,%esp
  107812:	68 e0 09 14 00       	push   $0x1409e0
  107817:	e8 ae 09 00 00       	call   1081ca <__redirect_printf__>
  10781c:	83 c4 10             	add    $0x10,%esp
  10781f:	83 ec 04             	sub    $0x4,%esp
  107822:	68 e0 0d 14 00       	push   $0x140de0
  107827:	68 cc 11 14 00       	push   $0x1411cc
  10782c:	68 a1 aa 10 00       	push   $0x10aaa1
  107831:	e8 7c 12 00 00       	call   108ab2 <printf>
  107836:	83 c4 10             	add    $0x10,%esp
  107839:	83 ec 0c             	sub    $0xc,%esp
  10783c:	6a 00                	push   $0x0
  10783e:	e8 87 09 00 00       	call   1081ca <__redirect_printf__>
  107843:	83 c4 10             	add    $0x10,%esp
  107846:	83 ec 08             	sub    $0x8,%esp
  107849:	68 e0 09 14 00       	push   $0x1409e0
  10784e:	68 f8 03 00 00       	push   $0x3f8
  107853:	e8 b2 a9 ff ff       	call   10220a <com_write>
  107858:	83 c4 10             	add    $0x10,%esp
  10785b:	83 ec 04             	sub    $0x4,%esp
  10785e:	68 00 04 00 00       	push   $0x400
  107863:	6a 00                	push   $0x0
  107865:	68 e0 09 14 00       	push   $0x1409e0
  10786a:	e8 bc 15 00 00       	call   108e2b <memset>
  10786f:	83 c4 10             	add    $0x10,%esp
  107872:	83 ec 04             	sub    $0x4,%esp
  107875:	68 ec 03 00 00       	push   $0x3ec
  10787a:	6a 00                	push   $0x0
  10787c:	68 e0 0d 14 00       	push   $0x140de0
  107881:	e8 a5 15 00 00       	call   108e2b <memset>
  107886:	83 c4 10             	add    $0x10,%esp
  107889:	83 ec 04             	sub    $0x4,%esp
  10788c:	6a 14                	push   $0x14
  10788e:	6a 00                	push   $0x0
  107890:	68 cc 11 14 00       	push   $0x1411cc
  107895:	e8 91 15 00 00       	call   108e2b <memset>
  10789a:	83 c4 10             	add    $0x10,%esp
  10789d:	83 ec 08             	sub    $0x8,%esp
  1078a0:	6a 00                	push   $0x0
  1078a2:	6a 07                	push   $0x7
  1078a4:	e8 bb 89 ff ff       	call   100264 <tty_set_color>
  1078a9:	83 c4 10             	add    $0x10,%esp
  1078ac:	83 ec 0c             	sub    $0xc,%esp
  1078af:	68 f8 ab 10 00       	push   $0x10abf8
  1078b4:	e8 f9 11 00 00       	call   108ab2 <printf>
  1078b9:	83 c4 10             	add    $0x10,%esp
  1078bc:	83 ec 0c             	sub    $0xc,%esp
  1078bf:	68 e8 03 00 00       	push   $0x3e8
  1078c4:	e8 f6 a8 ff ff       	call   1021bf <com_is_initialized>
  1078c9:	83 c4 10             	add    $0x10,%esp
  1078cc:	3c 01                	cmp    $0x1,%al
  1078ce:	0f 85 10 01 00 00    	jne    1079e4 <kernel_main+0xb19>
  1078d4:	83 ec 08             	sub    $0x8,%esp
  1078d7:	6a 00                	push   $0x0
  1078d9:	6a 02                	push   $0x2
  1078db:	e8 84 89 ff ff       	call   100264 <tty_set_color>
  1078e0:	83 c4 10             	add    $0x10,%esp
  1078e3:	83 ec 0c             	sub    $0xc,%esp
  1078e6:	68 5c ab 10 00       	push   $0x10ab5c
  1078eb:	e8 c2 11 00 00       	call   108ab2 <printf>
  1078f0:	83 c4 10             	add    $0x10,%esp
  1078f3:	83 ec 0c             	sub    $0xc,%esp
  1078f6:	68 e0 0d 14 00       	push   $0x140de0
  1078fb:	e8 ca 08 00 00       	call   1081ca <__redirect_printf__>
  107900:	83 c4 10             	add    $0x10,%esp
  107903:	83 ec 0c             	sub    $0xc,%esp
  107906:	68 0a ac 10 00       	push   $0x10ac0a
  10790b:	e8 a2 11 00 00       	call   108ab2 <printf>
  107910:	83 c4 10             	add    $0x10,%esp
  107913:	83 ec 0c             	sub    $0xc,%esp
  107916:	6a 00                	push   $0x0
  107918:	e8 ad 08 00 00       	call   1081ca <__redirect_printf__>
  10791d:	83 c4 10             	add    $0x10,%esp
  107920:	83 ec 0c             	sub    $0xc,%esp
  107923:	8d 45 92             	lea    -0x6e(%ebp),%eax
  107926:	50                   	push   %eax
  107927:	e8 81 ad ff ff       	call   1026ad <cmos_read_rtc>
  10792c:	83 c4 10             	add    $0x10,%esp
  10792f:	83 ec 04             	sub    $0x4,%esp
  107932:	68 cc 11 14 00       	push   $0x1411cc
  107937:	83 ec 08             	sub    $0x8,%esp
  10793a:	89 e0                	mov    %esp,%eax
  10793c:	8b 55 92             	mov    -0x6e(%ebp),%edx
  10793f:	89 10                	mov    %edx,(%eax)
  107941:	0f b7 55 96          	movzwl -0x6a(%ebp),%edx
  107945:	66 89 50 04          	mov    %dx,0x4(%eax)
  107949:	e8 c4 d1 ff ff       	call   104b12 <cmos_datetime_to_str>
  10794e:	83 c4 10             	add    $0x10,%esp
  107951:	83 ec 0c             	sub    $0xc,%esp
  107954:	68 e0 09 14 00       	push   $0x1409e0
  107959:	e8 6c 08 00 00       	call   1081ca <__redirect_printf__>
  10795e:	83 c4 10             	add    $0x10,%esp
  107961:	83 ec 04             	sub    $0x4,%esp
  107964:	68 e0 0d 14 00       	push   $0x140de0
  107969:	68 cc 11 14 00       	push   $0x1411cc
  10796e:	68 a1 aa 10 00       	push   $0x10aaa1
  107973:	e8 3a 11 00 00       	call   108ab2 <printf>
  107978:	83 c4 10             	add    $0x10,%esp
  10797b:	83 ec 0c             	sub    $0xc,%esp
  10797e:	6a 00                	push   $0x0
  107980:	e8 45 08 00 00       	call   1081ca <__redirect_printf__>
  107985:	83 c4 10             	add    $0x10,%esp
  107988:	83 ec 08             	sub    $0x8,%esp
  10798b:	68 e0 09 14 00       	push   $0x1409e0
  107990:	68 f8 03 00 00       	push   $0x3f8
  107995:	e8 70 a8 ff ff       	call   10220a <com_write>
  10799a:	83 c4 10             	add    $0x10,%esp
  10799d:	83 ec 04             	sub    $0x4,%esp
  1079a0:	68 00 04 00 00       	push   $0x400
  1079a5:	6a 00                	push   $0x0
  1079a7:	68 e0 09 14 00       	push   $0x1409e0
  1079ac:	e8 7a 14 00 00       	call   108e2b <memset>
  1079b1:	83 c4 10             	add    $0x10,%esp
  1079b4:	83 ec 04             	sub    $0x4,%esp
  1079b7:	68 ec 03 00 00       	push   $0x3ec
  1079bc:	6a 00                	push   $0x0
  1079be:	68 e0 0d 14 00       	push   $0x140de0
  1079c3:	e8 63 14 00 00       	call   108e2b <memset>
  1079c8:	83 c4 10             	add    $0x10,%esp
  1079cb:	83 ec 04             	sub    $0x4,%esp
  1079ce:	6a 14                	push   $0x14
  1079d0:	6a 00                	push   $0x0
  1079d2:	68 cc 11 14 00       	push   $0x1411cc
  1079d7:	e8 4f 14 00 00       	call   108e2b <memset>
  1079dc:	83 c4 10             	add    $0x10,%esp
  1079df:	e9 0b 01 00 00       	jmp    107aef <kernel_main+0xc24>
  1079e4:	83 ec 08             	sub    $0x8,%esp
  1079e7:	6a 00                	push   $0x0
  1079e9:	6a 04                	push   $0x4
  1079eb:	e8 74 88 ff ff       	call   100264 <tty_set_color>
  1079f0:	83 c4 10             	add    $0x10,%esp
  1079f3:	83 ec 0c             	sub    $0xc,%esp
  1079f6:	68 33 ab 10 00       	push   $0x10ab33
  1079fb:	e8 b2 10 00 00       	call   108ab2 <printf>
  107a00:	83 c4 10             	add    $0x10,%esp
  107a03:	83 ec 0c             	sub    $0xc,%esp
  107a06:	68 e0 0d 14 00       	push   $0x140de0
  107a0b:	e8 ba 07 00 00       	call   1081ca <__redirect_printf__>
  107a10:	83 c4 10             	add    $0x10,%esp
  107a13:	83 ec 0c             	sub    $0xc,%esp
  107a16:	68 1a ac 10 00       	push   $0x10ac1a
  107a1b:	e8 92 10 00 00       	call   108ab2 <printf>
  107a20:	83 c4 10             	add    $0x10,%esp
  107a23:	83 ec 0c             	sub    $0xc,%esp
  107a26:	6a 00                	push   $0x0
  107a28:	e8 9d 07 00 00       	call   1081ca <__redirect_printf__>
  107a2d:	83 c4 10             	add    $0x10,%esp
  107a30:	83 ec 0c             	sub    $0xc,%esp
  107a33:	8d 45 8c             	lea    -0x74(%ebp),%eax
  107a36:	50                   	push   %eax
  107a37:	e8 71 ac ff ff       	call   1026ad <cmos_read_rtc>
  107a3c:	83 c4 10             	add    $0x10,%esp
  107a3f:	83 ec 04             	sub    $0x4,%esp
  107a42:	68 cc 11 14 00       	push   $0x1411cc
  107a47:	83 ec 08             	sub    $0x8,%esp
  107a4a:	89 e0                	mov    %esp,%eax
  107a4c:	8b 55 8c             	mov    -0x74(%ebp),%edx
  107a4f:	89 10                	mov    %edx,(%eax)
  107a51:	0f b7 55 90          	movzwl -0x70(%ebp),%edx
  107a55:	66 89 50 04          	mov    %dx,0x4(%eax)
  107a59:	e8 b4 d0 ff ff       	call   104b12 <cmos_datetime_to_str>
  107a5e:	83 c4 10             	add    $0x10,%esp
  107a61:	83 ec 0c             	sub    $0xc,%esp
  107a64:	68 e0 09 14 00       	push   $0x1409e0
  107a69:	e8 5c 07 00 00       	call   1081ca <__redirect_printf__>
  107a6e:	83 c4 10             	add    $0x10,%esp
  107a71:	83 ec 04             	sub    $0x4,%esp
  107a74:	68 e0 0d 14 00       	push   $0x140de0
  107a79:	68 cc 11 14 00       	push   $0x1411cc
  107a7e:	68 a1 aa 10 00       	push   $0x10aaa1
  107a83:	e8 2a 10 00 00       	call   108ab2 <printf>
  107a88:	83 c4 10             	add    $0x10,%esp
  107a8b:	83 ec 0c             	sub    $0xc,%esp
  107a8e:	6a 00                	push   $0x0
  107a90:	e8 35 07 00 00       	call   1081ca <__redirect_printf__>
  107a95:	83 c4 10             	add    $0x10,%esp
  107a98:	83 ec 08             	sub    $0x8,%esp
  107a9b:	68 e0 09 14 00       	push   $0x1409e0
  107aa0:	68 f8 03 00 00       	push   $0x3f8
  107aa5:	e8 60 a7 ff ff       	call   10220a <com_write>
  107aaa:	83 c4 10             	add    $0x10,%esp
  107aad:	83 ec 04             	sub    $0x4,%esp
  107ab0:	68 00 04 00 00       	push   $0x400
  107ab5:	6a 00                	push   $0x0
  107ab7:	68 e0 09 14 00       	push   $0x1409e0
  107abc:	e8 6a 13 00 00       	call   108e2b <memset>
  107ac1:	83 c4 10             	add    $0x10,%esp
  107ac4:	83 ec 04             	sub    $0x4,%esp
  107ac7:	68 ec 03 00 00       	push   $0x3ec
  107acc:	6a 00                	push   $0x0
  107ace:	68 e0 0d 14 00       	push   $0x140de0
  107ad3:	e8 53 13 00 00       	call   108e2b <memset>
  107ad8:	83 c4 10             	add    $0x10,%esp
  107adb:	83 ec 04             	sub    $0x4,%esp
  107ade:	6a 14                	push   $0x14
  107ae0:	6a 00                	push   $0x0
  107ae2:	68 cc 11 14 00       	push   $0x1411cc
  107ae7:	e8 3f 13 00 00       	call   108e2b <memset>
  107aec:	83 c4 10             	add    $0x10,%esp
  107aef:	83 ec 08             	sub    $0x8,%esp
  107af2:	6a 00                	push   $0x0
  107af4:	6a 07                	push   $0x7
  107af6:	e8 69 87 ff ff       	call   100264 <tty_set_color>
  107afb:	83 c4 10             	add    $0x10,%esp
  107afe:	83 ec 0c             	sub    $0xc,%esp
  107b01:	68 2e ac 10 00       	push   $0x10ac2e
  107b06:	e8 a7 0f 00 00       	call   108ab2 <printf>
  107b0b:	83 c4 10             	add    $0x10,%esp
  107b0e:	e8 24 9e ff ff       	call   101937 <ps2_controller_init>
  107b13:	e8 23 a4 ff ff       	call   101f3b <ps2_is_present>
  107b18:	84 c0                	test   %al,%al
  107b1a:	74 46                	je     107b62 <kernel_main+0xc97>
  107b1c:	83 ec 08             	sub    $0x8,%esp
  107b1f:	6a 00                	push   $0x0
  107b21:	6a 02                	push   $0x2
  107b23:	e8 3c 87 ff ff       	call   100264 <tty_set_color>
  107b28:	83 c4 10             	add    $0x10,%esp
  107b2b:	e8 ff a3 ff ff       	call   101f2f <ps2_is_dual_channel>
  107b30:	3c 01                	cmp    $0x1,%al
  107b32:	75 07                	jne    107b3b <kernel_main+0xc70>
  107b34:	b8 48 ac 10 00       	mov    $0x10ac48,%eax
  107b39:	eb 05                	jmp    107b40 <kernel_main+0xc75>
  107b3b:	b8 4a ac 10 00       	mov    $0x10ac4a,%eax
  107b40:	83 ec 08             	sub    $0x8,%esp
  107b43:	50                   	push   %eax
  107b44:	68 4c ac 10 00       	push   $0x10ac4c
  107b49:	e8 64 0f 00 00       	call   108ab2 <printf>
  107b4e:	83 c4 10             	add    $0x10,%esp
  107b51:	83 ec 08             	sub    $0x8,%esp
  107b54:	6a 00                	push   $0x0
  107b56:	6a 07                	push   $0x7
  107b58:	e8 07 87 ff ff       	call   100264 <tty_set_color>
  107b5d:	83 c4 10             	add    $0x10,%esp
  107b60:	eb 2e                	jmp    107b90 <kernel_main+0xcc5>
  107b62:	83 ec 08             	sub    $0x8,%esp
  107b65:	6a 00                	push   $0x0
  107b67:	6a 04                	push   $0x4
  107b69:	e8 f6 86 ff ff       	call   100264 <tty_set_color>
  107b6e:	83 c4 10             	add    $0x10,%esp
  107b71:	83 ec 0c             	sub    $0xc,%esp
  107b74:	68 52 ac 10 00       	push   $0x10ac52
  107b79:	e8 34 0f 00 00       	call   108ab2 <printf>
  107b7e:	83 c4 10             	add    $0x10,%esp
  107b81:	83 ec 08             	sub    $0x8,%esp
  107b84:	6a 00                	push   $0x0
  107b86:	6a 07                	push   $0x7
  107b88:	e8 d7 86 ff ff       	call   100264 <tty_set_color>
  107b8d:	83 c4 10             	add    $0x10,%esp
  107b90:	83 ec 08             	sub    $0x8,%esp
  107b93:	6a 00                	push   $0x0
  107b95:	6a 07                	push   $0x7
  107b97:	e8 c8 86 ff ff       	call   100264 <tty_set_color>
  107b9c:	83 c4 10             	add    $0x10,%esp
  107b9f:	83 ec 0c             	sub    $0xc,%esp
  107ba2:	68 57 ac 10 00       	push   $0x10ac57
  107ba7:	e8 06 0f 00 00       	call   108ab2 <printf>
  107bac:	83 c4 10             	add    $0x10,%esp
  107baf:	e8 8a bd ff ff       	call   10393e <pit_init>
  107bb4:	83 ec 0c             	sub    $0xc,%esp
  107bb7:	6a 60                	push   $0x60
  107bb9:	e8 8c be ff ff       	call   103a4a <keyboard_init>
  107bbe:	83 c4 10             	add    $0x10,%esp
  107bc1:	83 ec 08             	sub    $0x8,%esp
  107bc4:	6a 00                	push   $0x0
  107bc6:	6a 02                	push   $0x2
  107bc8:	e8 97 86 ff ff       	call   100264 <tty_set_color>
  107bcd:	83 c4 10             	add    $0x10,%esp
  107bd0:	83 ec 0c             	sub    $0xc,%esp
  107bd3:	68 5c ab 10 00       	push   $0x10ab5c
  107bd8:	e8 d5 0e 00 00       	call   108ab2 <printf>
  107bdd:	83 c4 10             	add    $0x10,%esp
  107be0:	83 ec 08             	sub    $0x8,%esp
  107be3:	6a 00                	push   $0x0
  107be5:	6a 07                	push   $0x7
  107be7:	e8 78 86 ff ff       	call   100264 <tty_set_color>
  107bec:	83 c4 10             	add    $0x10,%esp
  107bef:	83 ec 0c             	sub    $0xc,%esp
  107bf2:	68 70 ac 10 00       	push   $0x10ac70
  107bf7:	e8 b6 0e 00 00       	call   108ab2 <printf>
  107bfc:	83 c4 10             	add    $0x10,%esp
  107bff:	8b 45 08             	mov    0x8(%ebp),%eax
  107c02:	8b 40 18             	mov    0x18(%eax),%eax
  107c05:	8b 00                	mov    (%eax),%eax
  107c07:	83 ec 0c             	sub    $0xc,%esp
  107c0a:	50                   	push   %eax
  107c0b:	e8 83 ca ff ff       	call   104693 <initrd_init>
  107c10:	83 c4 10             	add    $0x10,%esp
  107c13:	89 45 dc             	mov    %eax,-0x24(%ebp)
  107c16:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  107c1d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  107c24:	e9 26 04 00 00       	jmp    10804f <kernel_main+0x1184>
  107c29:	83 ec 0c             	sub    $0xc,%esp
  107c2c:	68 e0 0d 14 00       	push   $0x140de0
  107c31:	e8 94 05 00 00       	call   1081ca <__redirect_printf__>
  107c36:	83 c4 10             	add    $0x10,%esp
  107c39:	8b 45 d8             	mov    -0x28(%ebp),%eax
  107c3c:	83 ec 08             	sub    $0x8,%esp
  107c3f:	50                   	push   %eax
  107c40:	68 83 ac 10 00       	push   $0x10ac83
  107c45:	e8 68 0e 00 00       	call   108ab2 <printf>
  107c4a:	83 c4 10             	add    $0x10,%esp
  107c4d:	83 ec 0c             	sub    $0xc,%esp
  107c50:	6a 00                	push   $0x0
  107c52:	e8 73 05 00 00       	call   1081ca <__redirect_printf__>
  107c57:	83 c4 10             	add    $0x10,%esp
  107c5a:	83 ec 0c             	sub    $0xc,%esp
  107c5d:	8d 45 86             	lea    -0x7a(%ebp),%eax
  107c60:	50                   	push   %eax
  107c61:	e8 47 aa ff ff       	call   1026ad <cmos_read_rtc>
  107c66:	83 c4 10             	add    $0x10,%esp
  107c69:	83 ec 04             	sub    $0x4,%esp
  107c6c:	68 cc 11 14 00       	push   $0x1411cc
  107c71:	83 ec 08             	sub    $0x8,%esp
  107c74:	89 e0                	mov    %esp,%eax
  107c76:	8b 55 86             	mov    -0x7a(%ebp),%edx
  107c79:	89 10                	mov    %edx,(%eax)
  107c7b:	0f b7 55 8a          	movzwl -0x76(%ebp),%edx
  107c7f:	66 89 50 04          	mov    %dx,0x4(%eax)
  107c83:	e8 8a ce ff ff       	call   104b12 <cmos_datetime_to_str>
  107c88:	83 c4 10             	add    $0x10,%esp
  107c8b:	83 ec 0c             	sub    $0xc,%esp
  107c8e:	68 e0 09 14 00       	push   $0x1409e0
  107c93:	e8 32 05 00 00       	call   1081ca <__redirect_printf__>
  107c98:	83 c4 10             	add    $0x10,%esp
  107c9b:	83 ec 04             	sub    $0x4,%esp
  107c9e:	68 e0 0d 14 00       	push   $0x140de0
  107ca3:	68 cc 11 14 00       	push   $0x1411cc
  107ca8:	68 a1 aa 10 00       	push   $0x10aaa1
  107cad:	e8 00 0e 00 00       	call   108ab2 <printf>
  107cb2:	83 c4 10             	add    $0x10,%esp
  107cb5:	83 ec 0c             	sub    $0xc,%esp
  107cb8:	6a 00                	push   $0x0
  107cba:	e8 0b 05 00 00       	call   1081ca <__redirect_printf__>
  107cbf:	83 c4 10             	add    $0x10,%esp
  107cc2:	83 ec 08             	sub    $0x8,%esp
  107cc5:	68 e0 09 14 00       	push   $0x1409e0
  107cca:	68 f8 03 00 00       	push   $0x3f8
  107ccf:	e8 36 a5 ff ff       	call   10220a <com_write>
  107cd4:	83 c4 10             	add    $0x10,%esp
  107cd7:	83 ec 04             	sub    $0x4,%esp
  107cda:	68 00 04 00 00       	push   $0x400
  107cdf:	6a 00                	push   $0x0
  107ce1:	68 e0 09 14 00       	push   $0x1409e0
  107ce6:	e8 40 11 00 00       	call   108e2b <memset>
  107ceb:	83 c4 10             	add    $0x10,%esp
  107cee:	83 ec 04             	sub    $0x4,%esp
  107cf1:	68 ec 03 00 00       	push   $0x3ec
  107cf6:	6a 00                	push   $0x0
  107cf8:	68 e0 0d 14 00       	push   $0x140de0
  107cfd:	e8 29 11 00 00       	call   108e2b <memset>
  107d02:	83 c4 10             	add    $0x10,%esp
  107d05:	83 ec 04             	sub    $0x4,%esp
  107d08:	6a 14                	push   $0x14
  107d0a:	6a 00                	push   $0x0
  107d0c:	68 cc 11 14 00       	push   $0x1411cc
  107d11:	e8 15 11 00 00       	call   108e2b <memset>
  107d16:	83 c4 10             	add    $0x10,%esp
  107d19:	8b 45 d8             	mov    -0x28(%ebp),%eax
  107d1c:	83 ec 08             	sub    $0x8,%esp
  107d1f:	50                   	push   %eax
  107d20:	ff 75 dc             	push   -0x24(%ebp)
  107d23:	e8 0c c7 ff ff       	call   104434 <vfs_find_dir>
  107d28:	83 c4 10             	add    $0x10,%esp
  107d2b:	89 45 cc             	mov    %eax,-0x34(%ebp)
  107d2e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  107d31:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  107d37:	83 f8 02             	cmp    $0x2,%eax
  107d3a:	0f 85 f9 00 00 00    	jne    107e39 <kernel_main+0xf6e>
  107d40:	83 ec 0c             	sub    $0xc,%esp
  107d43:	68 e0 0d 14 00       	push   $0x140de0
  107d48:	e8 7d 04 00 00       	call   1081ca <__redirect_printf__>
  107d4d:	83 c4 10             	add    $0x10,%esp
  107d50:	8b 55 cc             	mov    -0x34(%ebp),%edx
  107d53:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107d56:	83 ec 04             	sub    $0x4,%esp
  107d59:	52                   	push   %edx
  107d5a:	50                   	push   %eax
  107d5b:	68 92 ac 10 00       	push   $0x10ac92
  107d60:	e8 4d 0d 00 00       	call   108ab2 <printf>
  107d65:	83 c4 10             	add    $0x10,%esp
  107d68:	83 ec 0c             	sub    $0xc,%esp
  107d6b:	6a 00                	push   $0x0
  107d6d:	e8 58 04 00 00       	call   1081ca <__redirect_printf__>
  107d72:	83 c4 10             	add    $0x10,%esp
  107d75:	83 ec 0c             	sub    $0xc,%esp
  107d78:	8d 45 80             	lea    -0x80(%ebp),%eax
  107d7b:	50                   	push   %eax
  107d7c:	e8 2c a9 ff ff       	call   1026ad <cmos_read_rtc>
  107d81:	83 c4 10             	add    $0x10,%esp
  107d84:	83 ec 04             	sub    $0x4,%esp
  107d87:	68 cc 11 14 00       	push   $0x1411cc
  107d8c:	83 ec 08             	sub    $0x8,%esp
  107d8f:	89 e0                	mov    %esp,%eax
  107d91:	8b 55 80             	mov    -0x80(%ebp),%edx
  107d94:	89 10                	mov    %edx,(%eax)
  107d96:	0f b7 55 84          	movzwl -0x7c(%ebp),%edx
  107d9a:	66 89 50 04          	mov    %dx,0x4(%eax)
  107d9e:	e8 6f cd ff ff       	call   104b12 <cmos_datetime_to_str>
  107da3:	83 c4 10             	add    $0x10,%esp
  107da6:	83 ec 0c             	sub    $0xc,%esp
  107da9:	68 e0 09 14 00       	push   $0x1409e0
  107dae:	e8 17 04 00 00       	call   1081ca <__redirect_printf__>
  107db3:	83 c4 10             	add    $0x10,%esp
  107db6:	83 ec 04             	sub    $0x4,%esp
  107db9:	68 e0 0d 14 00       	push   $0x140de0
  107dbe:	68 cc 11 14 00       	push   $0x1411cc
  107dc3:	68 a1 aa 10 00       	push   $0x10aaa1
  107dc8:	e8 e5 0c 00 00       	call   108ab2 <printf>
  107dcd:	83 c4 10             	add    $0x10,%esp
  107dd0:	83 ec 0c             	sub    $0xc,%esp
  107dd3:	6a 00                	push   $0x0
  107dd5:	e8 f0 03 00 00       	call   1081ca <__redirect_printf__>
  107dda:	83 c4 10             	add    $0x10,%esp
  107ddd:	83 ec 08             	sub    $0x8,%esp
  107de0:	68 e0 09 14 00       	push   $0x1409e0
  107de5:	68 f8 03 00 00       	push   $0x3f8
  107dea:	e8 1b a4 ff ff       	call   10220a <com_write>
  107def:	83 c4 10             	add    $0x10,%esp
  107df2:	83 ec 04             	sub    $0x4,%esp
  107df5:	68 00 04 00 00       	push   $0x400
  107dfa:	6a 00                	push   $0x0
  107dfc:	68 e0 09 14 00       	push   $0x1409e0
  107e01:	e8 25 10 00 00       	call   108e2b <memset>
  107e06:	83 c4 10             	add    $0x10,%esp
  107e09:	83 ec 04             	sub    $0x4,%esp
  107e0c:	68 ec 03 00 00       	push   $0x3ec
  107e11:	6a 00                	push   $0x0
  107e13:	68 e0 0d 14 00       	push   $0x140de0
  107e18:	e8 0e 10 00 00       	call   108e2b <memset>
  107e1d:	83 c4 10             	add    $0x10,%esp
  107e20:	83 ec 04             	sub    $0x4,%esp
  107e23:	6a 14                	push   $0x14
  107e25:	6a 00                	push   $0x0
  107e27:	68 cc 11 14 00       	push   $0x1411cc
  107e2c:	e8 fa 0f 00 00       	call   108e2b <memset>
  107e31:	83 c4 10             	add    $0x10,%esp
  107e34:	e9 12 02 00 00       	jmp    10804b <kernel_main+0x1180>
  107e39:	83 ec 0c             	sub    $0xc,%esp
  107e3c:	68 e0 0d 14 00       	push   $0x140de0
  107e41:	e8 84 03 00 00       	call   1081ca <__redirect_printf__>
  107e46:	83 c4 10             	add    $0x10,%esp
  107e49:	8b 55 cc             	mov    -0x34(%ebp),%edx
  107e4c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107e4f:	83 ec 04             	sub    $0x4,%esp
  107e52:	52                   	push   %edx
  107e53:	50                   	push   %eax
  107e54:	68 a8 ac 10 00       	push   $0x10aca8
  107e59:	e8 54 0c 00 00       	call   108ab2 <printf>
  107e5e:	83 c4 10             	add    $0x10,%esp
  107e61:	83 ec 0c             	sub    $0xc,%esp
  107e64:	6a 00                	push   $0x0
  107e66:	e8 5f 03 00 00       	call   1081ca <__redirect_printf__>
  107e6b:	83 c4 10             	add    $0x10,%esp
  107e6e:	83 ec 0c             	sub    $0xc,%esp
  107e71:	8d 85 7a ff ff ff    	lea    -0x86(%ebp),%eax
  107e77:	50                   	push   %eax
  107e78:	e8 30 a8 ff ff       	call   1026ad <cmos_read_rtc>
  107e7d:	83 c4 10             	add    $0x10,%esp
  107e80:	83 ec 04             	sub    $0x4,%esp
  107e83:	68 cc 11 14 00       	push   $0x1411cc
  107e88:	83 ec 08             	sub    $0x8,%esp
  107e8b:	89 e0                	mov    %esp,%eax
  107e8d:	8b 95 7a ff ff ff    	mov    -0x86(%ebp),%edx
  107e93:	89 10                	mov    %edx,(%eax)
  107e95:	0f b7 95 7e ff ff ff 	movzwl -0x82(%ebp),%edx
  107e9c:	66 89 50 04          	mov    %dx,0x4(%eax)
  107ea0:	e8 6d cc ff ff       	call   104b12 <cmos_datetime_to_str>
  107ea5:	83 c4 10             	add    $0x10,%esp
  107ea8:	83 ec 0c             	sub    $0xc,%esp
  107eab:	68 e0 09 14 00       	push   $0x1409e0
  107eb0:	e8 15 03 00 00       	call   1081ca <__redirect_printf__>
  107eb5:	83 c4 10             	add    $0x10,%esp
  107eb8:	83 ec 04             	sub    $0x4,%esp
  107ebb:	68 e0 0d 14 00       	push   $0x140de0
  107ec0:	68 cc 11 14 00       	push   $0x1411cc
  107ec5:	68 a1 aa 10 00       	push   $0x10aaa1
  107eca:	e8 e3 0b 00 00       	call   108ab2 <printf>
  107ecf:	83 c4 10             	add    $0x10,%esp
  107ed2:	83 ec 0c             	sub    $0xc,%esp
  107ed5:	6a 00                	push   $0x0
  107ed7:	e8 ee 02 00 00       	call   1081ca <__redirect_printf__>
  107edc:	83 c4 10             	add    $0x10,%esp
  107edf:	83 ec 08             	sub    $0x8,%esp
  107ee2:	68 e0 09 14 00       	push   $0x1409e0
  107ee7:	68 f8 03 00 00       	push   $0x3f8
  107eec:	e8 19 a3 ff ff       	call   10220a <com_write>
  107ef1:	83 c4 10             	add    $0x10,%esp
  107ef4:	83 ec 04             	sub    $0x4,%esp
  107ef7:	68 00 04 00 00       	push   $0x400
  107efc:	6a 00                	push   $0x0
  107efe:	68 e0 09 14 00       	push   $0x1409e0
  107f03:	e8 23 0f 00 00       	call   108e2b <memset>
  107f08:	83 c4 10             	add    $0x10,%esp
  107f0b:	83 ec 04             	sub    $0x4,%esp
  107f0e:	68 ec 03 00 00       	push   $0x3ec
  107f13:	6a 00                	push   $0x0
  107f15:	68 e0 0d 14 00       	push   $0x140de0
  107f1a:	e8 0c 0f 00 00       	call   108e2b <memset>
  107f1f:	83 c4 10             	add    $0x10,%esp
  107f22:	83 ec 04             	sub    $0x4,%esp
  107f25:	6a 14                	push   $0x14
  107f27:	6a 00                	push   $0x0
  107f29:	68 cc 11 14 00       	push   $0x1411cc
  107f2e:	e8 f8 0e 00 00       	call   108e2b <memset>
  107f33:	83 c4 10             	add    $0x10,%esp
  107f36:	8d 85 74 fe ff ff    	lea    -0x18c(%ebp),%eax
  107f3c:	50                   	push   %eax
  107f3d:	68 00 01 00 00       	push   $0x100
  107f42:	6a 00                	push   $0x0
  107f44:	ff 75 cc             	push   -0x34(%ebp)
  107f47:	e8 d8 c3 ff ff       	call   104324 <vfs_read>
  107f4c:	83 c4 10             	add    $0x10,%esp
  107f4f:	83 ec 0c             	sub    $0xc,%esp
  107f52:	68 e0 0d 14 00       	push   $0x140de0
  107f57:	e8 6e 02 00 00       	call   1081ca <__redirect_printf__>
  107f5c:	83 c4 10             	add    $0x10,%esp
  107f5f:	83 ec 08             	sub    $0x8,%esp
  107f62:	8d 85 74 fe ff ff    	lea    -0x18c(%ebp),%eax
  107f68:	50                   	push   %eax
  107f69:	68 b9 ac 10 00       	push   $0x10acb9
  107f6e:	e8 3f 0b 00 00       	call   108ab2 <printf>
  107f73:	83 c4 10             	add    $0x10,%esp
  107f76:	83 ec 0c             	sub    $0xc,%esp
  107f79:	6a 00                	push   $0x0
  107f7b:	e8 4a 02 00 00       	call   1081ca <__redirect_printf__>
  107f80:	83 c4 10             	add    $0x10,%esp
  107f83:	83 ec 0c             	sub    $0xc,%esp
  107f86:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
  107f8c:	50                   	push   %eax
  107f8d:	e8 1b a7 ff ff       	call   1026ad <cmos_read_rtc>
  107f92:	83 c4 10             	add    $0x10,%esp
  107f95:	83 ec 04             	sub    $0x4,%esp
  107f98:	68 cc 11 14 00       	push   $0x1411cc
  107f9d:	83 ec 08             	sub    $0x8,%esp
  107fa0:	89 e0                	mov    %esp,%eax
  107fa2:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
  107fa8:	89 10                	mov    %edx,(%eax)
  107faa:	0f b7 95 78 ff ff ff 	movzwl -0x88(%ebp),%edx
  107fb1:	66 89 50 04          	mov    %dx,0x4(%eax)
  107fb5:	e8 58 cb ff ff       	call   104b12 <cmos_datetime_to_str>
  107fba:	83 c4 10             	add    $0x10,%esp
  107fbd:	83 ec 0c             	sub    $0xc,%esp
  107fc0:	68 e0 09 14 00       	push   $0x1409e0
  107fc5:	e8 00 02 00 00       	call   1081ca <__redirect_printf__>
  107fca:	83 c4 10             	add    $0x10,%esp
  107fcd:	83 ec 04             	sub    $0x4,%esp
  107fd0:	68 e0 0d 14 00       	push   $0x140de0
  107fd5:	68 cc 11 14 00       	push   $0x1411cc
  107fda:	68 a1 aa 10 00       	push   $0x10aaa1
  107fdf:	e8 ce 0a 00 00       	call   108ab2 <printf>
  107fe4:	83 c4 10             	add    $0x10,%esp
  107fe7:	83 ec 0c             	sub    $0xc,%esp
  107fea:	6a 00                	push   $0x0
  107fec:	e8 d9 01 00 00       	call   1081ca <__redirect_printf__>
  107ff1:	83 c4 10             	add    $0x10,%esp
  107ff4:	83 ec 08             	sub    $0x8,%esp
  107ff7:	68 e0 09 14 00       	push   $0x1409e0
  107ffc:	68 f8 03 00 00       	push   $0x3f8
  108001:	e8 04 a2 ff ff       	call   10220a <com_write>
  108006:	83 c4 10             	add    $0x10,%esp
  108009:	83 ec 04             	sub    $0x4,%esp
  10800c:	68 00 04 00 00       	push   $0x400
  108011:	6a 00                	push   $0x0
  108013:	68 e0 09 14 00       	push   $0x1409e0
  108018:	e8 0e 0e 00 00       	call   108e2b <memset>
  10801d:	83 c4 10             	add    $0x10,%esp
  108020:	83 ec 04             	sub    $0x4,%esp
  108023:	68 ec 03 00 00       	push   $0x3ec
  108028:	6a 00                	push   $0x0
  10802a:	68 e0 0d 14 00       	push   $0x140de0
  10802f:	e8 f7 0d 00 00       	call   108e2b <memset>
  108034:	83 c4 10             	add    $0x10,%esp
  108037:	83 ec 04             	sub    $0x4,%esp
  10803a:	6a 14                	push   $0x14
  10803c:	6a 00                	push   $0x0
  10803e:	68 cc 11 14 00       	push   $0x1411cc
  108043:	e8 e3 0d 00 00       	call   108e2b <memset>
  108048:	83 c4 10             	add    $0x10,%esp
  10804b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10804f:	83 ec 08             	sub    $0x8,%esp
  108052:	ff 75 f0             	push   -0x10(%ebp)
  108055:	ff 75 dc             	push   -0x24(%ebp)
  108058:	e8 93 c3 ff ff       	call   1043f0 <vfs_read_dir>
  10805d:	83 c4 10             	add    $0x10,%esp
  108060:	89 45 d8             	mov    %eax,-0x28(%ebp)
  108063:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
  108067:	0f 85 bc fb ff ff    	jne    107c29 <kernel_main+0xd5e>
  10806d:	83 ec 08             	sub    $0x8,%esp
  108070:	6a 00                	push   $0x0
  108072:	6a 02                	push   $0x2
  108074:	e8 eb 81 ff ff       	call   100264 <tty_set_color>
  108079:	83 c4 10             	add    $0x10,%esp
  10807c:	83 ec 0c             	sub    $0xc,%esp
  10807f:	68 5c ab 10 00       	push   $0x10ab5c
  108084:	e8 29 0a 00 00       	call   108ab2 <printf>
  108089:	83 c4 10             	add    $0x10,%esp
  10808c:	83 ec 08             	sub    $0x8,%esp
  10808f:	6a 00                	push   $0x0
  108091:	6a 07                	push   $0x7
  108093:	e8 cc 81 ff ff       	call   100264 <tty_set_color>
  108098:	83 c4 10             	add    $0x10,%esp
  10809b:	83 ec 0c             	sub    $0xc,%esp
  10809e:	68 cb ac 10 00       	push   $0x10accb
  1080a3:	e8 0a 0a 00 00       	call   108ab2 <printf>
  1080a8:	83 c4 10             	add    $0x10,%esp
  1080ab:	83 ec 0c             	sub    $0xc,%esp
  1080ae:	ff 75 10             	push   0x10(%ebp)
  1080b1:	e8 1a e3 ff ff       	call   1063d0 <tasking_init>
  1080b6:	83 c4 10             	add    $0x10,%esp
  1080b9:	83 ec 0c             	sub    $0xc,%esp
  1080bc:	6a 64                	push   $0x64
  1080be:	e8 96 ec ff ff       	call   106d59 <scheduler_init>
  1080c3:	83 c4 10             	add    $0x10,%esp
  1080c6:	83 ec 0c             	sub    $0xc,%esp
  1080c9:	68 86 6e 10 00       	push   $0x106e86
  1080ce:	e8 0f b9 ff ff       	call   1039e2 <pit_set_callback>
  1080d3:	83 c4 10             	add    $0x10,%esp
  1080d6:	83 ec 08             	sub    $0x8,%esp
  1080d9:	6a 00                	push   $0x0
  1080db:	6a 02                	push   $0x2
  1080dd:	e8 82 81 ff ff       	call   100264 <tty_set_color>
  1080e2:	83 c4 10             	add    $0x10,%esp
  1080e5:	83 ec 0c             	sub    $0xc,%esp
  1080e8:	68 5c ab 10 00       	push   $0x10ab5c
  1080ed:	e8 c0 09 00 00       	call   108ab2 <printf>
  1080f2:	83 c4 10             	add    $0x10,%esp
  1080f5:	83 ec 08             	sub    $0x8,%esp
  1080f8:	6a 00                	push   $0x0
  1080fa:	6a 07                	push   $0x7
  1080fc:	e8 63 81 ff ff       	call   100264 <tty_set_color>
  108101:	83 c4 10             	add    $0x10,%esp
  108104:	e8 97 85 ff ff       	call   1006a0 <sti>
  108109:	e8 5a e5 ff ff       	call   106668 <tasking_fork>
  10810e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  108111:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  108115:	75 64                	jne    10817b <kernel_main+0x12b0>
  108117:	e8 4c e5 ff ff       	call   106668 <tasking_fork>
  10811c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  10811f:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  108123:	75 2b                	jne    108150 <kernel_main+0x1285>
  108125:	e8 fd e7 ff ff       	call   106927 <tasking_gettid>
  10812a:	50                   	push   %eax
  10812b:	ff 75 d0             	push   -0x30(%ebp)
  10812e:	ff 75 d4             	push   -0x2c(%ebp)
  108131:	68 e4 ac 10 00       	push   $0x10ace4
  108136:	e8 77 09 00 00       	call   108ab2 <printf>
  10813b:	83 c4 10             	add    $0x10,%esp
  10813e:	83 ec 0c             	sub    $0xc,%esp
  108141:	68 e8 03 00 00       	push   $0x3e8
  108146:	e8 f6 cb ff ff       	call   104d41 <sleep>
  10814b:	83 c4 10             	add    $0x10,%esp
  10814e:	eb d5                	jmp    108125 <kernel_main+0x125a>
  108150:	e8 d2 e7 ff ff       	call   106927 <tasking_gettid>
  108155:	50                   	push   %eax
  108156:	ff 75 d0             	push   -0x30(%ebp)
  108159:	ff 75 d4             	push   -0x2c(%ebp)
  10815c:	68 2c ad 10 00       	push   $0x10ad2c
  108161:	e8 4c 09 00 00       	call   108ab2 <printf>
  108166:	83 c4 10             	add    $0x10,%esp
  108169:	83 ec 0c             	sub    $0xc,%esp
  10816c:	68 d0 07 00 00       	push   $0x7d0
  108171:	e8 cb cb ff ff       	call   104d41 <sleep>
  108176:	83 c4 10             	add    $0x10,%esp
  108179:	eb d5                	jmp    108150 <kernel_main+0x1285>
  10817b:	e8 a7 e7 ff ff       	call   106927 <tasking_gettid>
  108180:	83 ec 04             	sub    $0x4,%esp
  108183:	50                   	push   %eax
  108184:	ff 75 d4             	push   -0x2c(%ebp)
  108187:	68 78 ad 10 00       	push   $0x10ad78
  10818c:	e8 21 09 00 00       	call   108ab2 <printf>
  108191:	83 c4 10             	add    $0x10,%esp
  108194:	83 ec 0c             	sub    $0xc,%esp
  108197:	68 a0 0f 00 00       	push   $0xfa0
  10819c:	e8 a0 cb ff ff       	call   104d41 <sleep>
  1081a1:	83 c4 10             	add    $0x10,%esp
  1081a4:	eb d5                	jmp    10817b <kernel_main+0x12b0>

001081a6 <read>:
  1081a6:	55                   	push   %ebp
  1081a7:	89 e5                	mov    %esp,%ebp
  1081a9:	83 ec 08             	sub    $0x8,%esp
  1081ac:	8b 45 0c             	mov    0xc(%ebp),%eax
  1081af:	83 ec 0c             	sub    $0xc,%esp
  1081b2:	6a 00                	push   $0x0
  1081b4:	ff 75 10             	push   0x10(%ebp)
  1081b7:	50                   	push   %eax
  1081b8:	ff 75 08             	push   0x8(%ebp)
  1081bb:	6a 50                	push   $0x50
  1081bd:	e8 4e 8f ff ff       	call   101110 <syscall_interface>
  1081c2:	83 c4 20             	add    $0x20,%esp
  1081c5:	8b 45 10             	mov    0x10(%ebp),%eax
  1081c8:	c9                   	leave  
  1081c9:	c3                   	ret    

001081ca <__redirect_printf__>:
  1081ca:	55                   	push   %ebp
  1081cb:	89 e5                	mov    %esp,%ebp
  1081cd:	8b 45 08             	mov    0x8(%ebp),%eax
  1081d0:	a3 28 12 14 00       	mov    %eax,0x141228
  1081d5:	c7 05 2c 12 14 00 00 	movl   $0x0,0x14122c
  1081dc:	00 00 00 
  1081df:	90                   	nop
  1081e0:	5d                   	pop    %ebp
  1081e1:	c3                   	ret    

001081e2 <print>:
  1081e2:	55                   	push   %ebp
  1081e3:	89 e5                	mov    %esp,%ebp
  1081e5:	83 ec 18             	sub    $0x18,%esp
  1081e8:	8b 45 08             	mov    0x8(%ebp),%eax
  1081eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1081ee:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1081f5:	eb 5b                	jmp    108252 <print+0x70>
  1081f7:	a1 28 12 14 00       	mov    0x141228,%eax
  1081fc:	85 c0                	test   %eax,%eax
  1081fe:	75 26                	jne    108226 <print+0x44>
  108200:	8b 55 f0             	mov    -0x10(%ebp),%edx
  108203:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108206:	01 d0                	add    %edx,%eax
  108208:	0f b6 00             	movzbl (%eax),%eax
  10820b:	0f b6 c0             	movzbl %al,%eax
  10820e:	83 ec 0c             	sub    $0xc,%esp
  108211:	50                   	push   %eax
  108212:	e8 2c 0b 00 00       	call   108d43 <putchar>
  108217:	83 c4 10             	add    $0x10,%esp
  10821a:	83 f8 ff             	cmp    $0xffffffff,%eax
  10821d:	75 2f                	jne    10824e <print+0x6c>
  10821f:	b8 00 00 00 00       	mov    $0x0,%eax
  108224:	eb 39                	jmp    10825f <print+0x7d>
  108226:	8b 55 08             	mov    0x8(%ebp),%edx
  108229:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10822c:	01 d0                	add    %edx,%eax
  10822e:	8b 0d 28 12 14 00    	mov    0x141228,%ecx
  108234:	8b 15 2c 12 14 00    	mov    0x14122c,%edx
  10823a:	01 ca                	add    %ecx,%edx
  10823c:	0f b6 00             	movzbl (%eax),%eax
  10823f:	88 02                	mov    %al,(%edx)
  108241:	a1 2c 12 14 00       	mov    0x14122c,%eax
  108246:	83 c0 01             	add    $0x1,%eax
  108249:	a3 2c 12 14 00       	mov    %eax,0x14122c
  10824e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  108252:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108255:	3b 45 0c             	cmp    0xc(%ebp),%eax
  108258:	72 9d                	jb     1081f7 <print+0x15>
  10825a:	b8 01 00 00 00       	mov    $0x1,%eax
  10825f:	c9                   	leave  
  108260:	c3                   	ret    

00108261 <print_char>:
  108261:	55                   	push   %ebp
  108262:	89 e5                	mov    %esp,%ebp
  108264:	83 ec 08             	sub    $0x8,%esp
  108267:	83 ec 08             	sub    $0x8,%esp
  10826a:	6a 01                	push   $0x1
  10826c:	ff 75 08             	push   0x8(%ebp)
  10826f:	e8 6e ff ff ff       	call   1081e2 <print>
  108274:	83 c4 10             	add    $0x10,%esp
  108277:	b8 01 00 00 00       	mov    $0x1,%eax
  10827c:	c9                   	leave  
  10827d:	c3                   	ret    

0010827e <print_signed_integer>:
  10827e:	55                   	push   %ebp
  10827f:	89 e5                	mov    %esp,%ebp
  108281:	53                   	push   %ebx
  108282:	81 ec 24 02 00 00    	sub    $0x224,%esp
  108288:	8b 45 08             	mov    0x8(%ebp),%eax
  10828b:	8b 00                	mov    (%eax),%eax
  10828d:	85 c0                	test   %eax,%eax
  10828f:	75 1c                	jne    1082ad <print_signed_integer+0x2f>
  108291:	83 ec 08             	sub    $0x8,%esp
  108294:	6a 01                	push   $0x1
  108296:	68 b8 ad 10 00       	push   $0x10adb8
  10829b:	e8 42 ff ff ff       	call   1081e2 <print>
  1082a0:	83 c4 10             	add    $0x10,%esp
  1082a3:	b8 01 00 00 00       	mov    $0x1,%eax
  1082a8:	e9 4d 01 00 00       	jmp    1083fa <print_signed_integer+0x17c>
  1082ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1082b0:	8b 00                	mov    (%eax),%eax
  1082b2:	f7 d0                	not    %eax
  1082b4:	c1 e8 1f             	shr    $0x1f,%eax
  1082b7:	88 45 eb             	mov    %al,-0x15(%ebp)
  1082ba:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
  1082be:	74 07                	je     1082c7 <print_signed_integer+0x49>
  1082c0:	8b 45 08             	mov    0x8(%ebp),%eax
  1082c3:	8b 00                	mov    (%eax),%eax
  1082c5:	eb 07                	jmp    1082ce <print_signed_integer+0x50>
  1082c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1082ca:	8b 00                	mov    (%eax),%eax
  1082cc:	f7 d8                	neg    %eax
  1082ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1082d1:	83 ec 04             	sub    $0x4,%esp
  1082d4:	68 00 01 00 00       	push   $0x100
  1082d9:	6a 00                	push   $0x0
  1082db:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
  1082e1:	50                   	push   %eax
  1082e2:	e8 44 0b 00 00       	call   108e2b <memset>
  1082e7:	83 c4 10             	add    $0x10,%esp
  1082ea:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1082f1:	eb 5f                	jmp    108352 <print_signed_integer+0xd4>
  1082f3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1082f6:	ba 67 66 66 66       	mov    $0x66666667,%edx
  1082fb:	89 c8                	mov    %ecx,%eax
  1082fd:	f7 ea                	imul   %edx
  1082ff:	89 d0                	mov    %edx,%eax
  108301:	c1 f8 02             	sar    $0x2,%eax
  108304:	89 cb                	mov    %ecx,%ebx
  108306:	c1 fb 1f             	sar    $0x1f,%ebx
  108309:	29 d8                	sub    %ebx,%eax
  10830b:	89 c2                	mov    %eax,%edx
  10830d:	89 d0                	mov    %edx,%eax
  10830f:	c1 e0 02             	shl    $0x2,%eax
  108312:	01 d0                	add    %edx,%eax
  108314:	01 c0                	add    %eax,%eax
  108316:	29 c1                	sub    %eax,%ecx
  108318:	89 ca                	mov    %ecx,%edx
  10831a:	89 d0                	mov    %edx,%eax
  10831c:	83 c0 30             	add    $0x30,%eax
  10831f:	88 45 ea             	mov    %al,-0x16(%ebp)
  108322:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  108325:	ba 67 66 66 66       	mov    $0x66666667,%edx
  10832a:	89 c8                	mov    %ecx,%eax
  10832c:	f7 ea                	imul   %edx
  10832e:	89 d0                	mov    %edx,%eax
  108330:	c1 f8 02             	sar    $0x2,%eax
  108333:	c1 f9 1f             	sar    $0x1f,%ecx
  108336:	89 ca                	mov    %ecx,%edx
  108338:	29 d0                	sub    %edx,%eax
  10833a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10833d:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
  108343:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108346:	01 c2                	add    %eax,%edx
  108348:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
  10834c:	88 02                	mov    %al,(%edx)
  10834e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108352:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  108356:	74 09                	je     108361 <print_signed_integer+0xe3>
  108358:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  10835f:	76 92                	jbe    1082f3 <print_signed_integer+0x75>
  108361:	83 ec 04             	sub    $0x4,%esp
  108364:	68 00 01 00 00       	push   $0x100
  108369:	6a 00                	push   $0x0
  10836b:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  108371:	50                   	push   %eax
  108372:	e8 b4 0a 00 00       	call   108e2b <memset>
  108377:	83 c4 10             	add    $0x10,%esp
  10837a:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  10837e:	83 f0 01             	xor    $0x1,%eax
  108381:	0f b6 c0             	movzbl %al,%eax
  108384:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  108387:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  10838b:	83 f0 01             	xor    $0x1,%eax
  10838e:	84 c0                	test   %al,%al
  108390:	74 07                	je     108399 <print_signed_integer+0x11b>
  108392:	c6 85 e4 fd ff ff 2d 	movb   $0x2d,-0x21c(%ebp)
  108399:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10839c:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10839f:	eb 29                	jmp    1083ca <print_signed_integer+0x14c>
  1083a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1083a4:	2b 45 ec             	sub    -0x14(%ebp),%eax
  1083a7:	89 c2                	mov    %eax,%edx
  1083a9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1083ac:	01 d0                	add    %edx,%eax
  1083ae:	83 e8 01             	sub    $0x1,%eax
  1083b1:	0f b6 84 05 e4 fe ff 	movzbl -0x11c(%ebp,%eax,1),%eax
  1083b8:	ff 
  1083b9:	8d 8d e4 fd ff ff    	lea    -0x21c(%ebp),%ecx
  1083bf:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1083c2:	01 ca                	add    %ecx,%edx
  1083c4:	88 02                	mov    %al,(%edx)
  1083c6:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1083ca:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1083cd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1083d0:	01 d0                	add    %edx,%eax
  1083d2:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1083d5:	72 ca                	jb     1083a1 <print_signed_integer+0x123>
  1083d7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1083da:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1083dd:	01 d0                	add    %edx,%eax
  1083df:	83 ec 08             	sub    $0x8,%esp
  1083e2:	50                   	push   %eax
  1083e3:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  1083e9:	50                   	push   %eax
  1083ea:	e8 f3 fd ff ff       	call   1081e2 <print>
  1083ef:	83 c4 10             	add    $0x10,%esp
  1083f2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1083f5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1083f8:	01 d0                	add    %edx,%eax
  1083fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1083fd:	c9                   	leave  
  1083fe:	c3                   	ret    

001083ff <print_unsigned_integer>:
  1083ff:	55                   	push   %ebp
  108400:	89 e5                	mov    %esp,%ebp
  108402:	81 ec 18 02 00 00    	sub    $0x218,%esp
  108408:	8b 45 08             	mov    0x8(%ebp),%eax
  10840b:	8b 00                	mov    (%eax),%eax
  10840d:	85 c0                	test   %eax,%eax
  10840f:	75 1c                	jne    10842d <print_unsigned_integer+0x2e>
  108411:	83 ec 08             	sub    $0x8,%esp
  108414:	6a 01                	push   $0x1
  108416:	68 b8 ad 10 00       	push   $0x10adb8
  10841b:	e8 c2 fd ff ff       	call   1081e2 <print>
  108420:	83 c4 10             	add    $0x10,%esp
  108423:	b8 01 00 00 00       	mov    $0x1,%eax
  108428:	e9 e8 00 00 00       	jmp    108515 <print_unsigned_integer+0x116>
  10842d:	8b 45 08             	mov    0x8(%ebp),%eax
  108430:	8b 00                	mov    (%eax),%eax
  108432:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108435:	83 ec 04             	sub    $0x4,%esp
  108438:	68 00 01 00 00       	push   $0x100
  10843d:	6a 00                	push   $0x0
  10843f:	8d 85 eb fe ff ff    	lea    -0x115(%ebp),%eax
  108445:	50                   	push   %eax
  108446:	e8 e0 09 00 00       	call   108e2b <memset>
  10844b:	83 c4 10             	add    $0x10,%esp
  10844e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  108455:	eb 4b                	jmp    1084a2 <print_unsigned_integer+0xa3>
  108457:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10845a:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  10845f:	89 c8                	mov    %ecx,%eax
  108461:	f7 e2                	mul    %edx
  108463:	c1 ea 03             	shr    $0x3,%edx
  108466:	89 d0                	mov    %edx,%eax
  108468:	c1 e0 02             	shl    $0x2,%eax
  10846b:	01 d0                	add    %edx,%eax
  10846d:	01 c0                	add    %eax,%eax
  10846f:	29 c1                	sub    %eax,%ecx
  108471:	89 ca                	mov    %ecx,%edx
  108473:	89 d0                	mov    %edx,%eax
  108475:	83 c0 30             	add    $0x30,%eax
  108478:	88 45 eb             	mov    %al,-0x15(%ebp)
  10847b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10847e:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  108483:	f7 e2                	mul    %edx
  108485:	89 d0                	mov    %edx,%eax
  108487:	c1 e8 03             	shr    $0x3,%eax
  10848a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10848d:	8d 95 eb fe ff ff    	lea    -0x115(%ebp),%edx
  108493:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108496:	01 c2                	add    %eax,%edx
  108498:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  10849c:	88 02                	mov    %al,(%edx)
  10849e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1084a2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1084a6:	74 09                	je     1084b1 <print_unsigned_integer+0xb2>
  1084a8:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  1084af:	76 a6                	jbe    108457 <print_unsigned_integer+0x58>
  1084b1:	83 ec 04             	sub    $0x4,%esp
  1084b4:	68 00 01 00 00       	push   $0x100
  1084b9:	6a 00                	push   $0x0
  1084bb:	8d 85 eb fd ff ff    	lea    -0x215(%ebp),%eax
  1084c1:	50                   	push   %eax
  1084c2:	e8 64 09 00 00       	call   108e2b <memset>
  1084c7:	83 c4 10             	add    $0x10,%esp
  1084ca:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1084d1:	eb 22                	jmp    1084f5 <print_unsigned_integer+0xf6>
  1084d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1084d6:	2b 45 ec             	sub    -0x14(%ebp),%eax
  1084d9:	83 e8 01             	sub    $0x1,%eax
  1084dc:	0f b6 84 05 eb fe ff 	movzbl -0x115(%ebp,%eax,1),%eax
  1084e3:	ff 
  1084e4:	8d 8d eb fd ff ff    	lea    -0x215(%ebp),%ecx
  1084ea:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1084ed:	01 ca                	add    %ecx,%edx
  1084ef:	88 02                	mov    %al,(%edx)
  1084f1:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1084f5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1084f8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1084fb:	72 d6                	jb     1084d3 <print_unsigned_integer+0xd4>
  1084fd:	83 ec 08             	sub    $0x8,%esp
  108500:	ff 75 f0             	push   -0x10(%ebp)
  108503:	8d 85 eb fd ff ff    	lea    -0x215(%ebp),%eax
  108509:	50                   	push   %eax
  10850a:	e8 d3 fc ff ff       	call   1081e2 <print>
  10850f:	83 c4 10             	add    $0x10,%esp
  108512:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108515:	c9                   	leave  
  108516:	c3                   	ret    

00108517 <print_unsigned_long>:
  108517:	55                   	push   %ebp
  108518:	89 e5                	mov    %esp,%ebp
  10851a:	57                   	push   %edi
  10851b:	56                   	push   %esi
  10851c:	53                   	push   %ebx
  10851d:	81 ec 3c 02 00 00    	sub    $0x23c,%esp
  108523:	8b 45 08             	mov    0x8(%ebp),%eax
  108526:	8b 50 04             	mov    0x4(%eax),%edx
  108529:	8b 00                	mov    (%eax),%eax
  10852b:	89 c7                	mov    %eax,%edi
  10852d:	83 f7 00             	xor    $0x0,%edi
  108530:	89 f9                	mov    %edi,%ecx
  108532:	89 d0                	mov    %edx,%eax
  108534:	80 f4 00             	xor    $0x0,%ah
  108537:	89 c3                	mov    %eax,%ebx
  108539:	89 d8                	mov    %ebx,%eax
  10853b:	09 c8                	or     %ecx,%eax
  10853d:	85 c0                	test   %eax,%eax
  10853f:	75 1c                	jne    10855d <print_unsigned_long+0x46>
  108541:	83 ec 08             	sub    $0x8,%esp
  108544:	6a 01                	push   $0x1
  108546:	68 b8 ad 10 00       	push   $0x10adb8
  10854b:	e8 92 fc ff ff       	call   1081e2 <print>
  108550:	83 c4 10             	add    $0x10,%esp
  108553:	b8 01 00 00 00       	mov    $0x1,%eax
  108558:	e9 0e 01 00 00       	jmp    10866b <print_unsigned_long+0x154>
  10855d:	8b 45 08             	mov    0x8(%ebp),%eax
  108560:	8b 50 04             	mov    0x4(%eax),%edx
  108563:	8b 00                	mov    (%eax),%eax
  108565:	89 45 e0             	mov    %eax,-0x20(%ebp)
  108568:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10856b:	83 ec 04             	sub    $0x4,%esp
  10856e:	68 00 01 00 00       	push   $0x100
  108573:	6a 00                	push   $0x0
  108575:	8d 85 d7 fe ff ff    	lea    -0x129(%ebp),%eax
  10857b:	50                   	push   %eax
  10857c:	e8 aa 08 00 00       	call   108e2b <memset>
  108581:	83 c4 10             	add    $0x10,%esp
  108584:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10858b:	eb 49                	jmp    1085d6 <print_unsigned_long+0xbf>
  10858d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108590:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  108593:	6a 00                	push   $0x0
  108595:	6a 0a                	push   $0xa
  108597:	52                   	push   %edx
  108598:	50                   	push   %eax
  108599:	e8 22 0a 00 00       	call   108fc0 <__umoddi3>
  10859e:	83 c4 10             	add    $0x10,%esp
  1085a1:	83 c0 30             	add    $0x30,%eax
  1085a4:	88 45 d7             	mov    %al,-0x29(%ebp)
  1085a7:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1085aa:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1085ad:	6a 00                	push   $0x0
  1085af:	6a 0a                	push   $0xa
  1085b1:	52                   	push   %edx
  1085b2:	50                   	push   %eax
  1085b3:	e8 d8 08 00 00       	call   108e90 <__udivdi3>
  1085b8:	83 c4 10             	add    $0x10,%esp
  1085bb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1085be:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1085c1:	8d 95 d7 fe ff ff    	lea    -0x129(%ebp),%edx
  1085c7:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1085ca:	01 c2                	add    %eax,%edx
  1085cc:	0f b6 45 d7          	movzbl -0x29(%ebp),%eax
  1085d0:	88 02                	mov    %al,(%edx)
  1085d2:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
  1085d6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1085d9:	80 f4 00             	xor    $0x0,%ah
  1085dc:	89 85 c0 fd ff ff    	mov    %eax,-0x240(%ebp)
  1085e2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1085e5:	80 f4 00             	xor    $0x0,%ah
  1085e8:	89 85 c4 fd ff ff    	mov    %eax,-0x23c(%ebp)
  1085ee:	8b 85 c4 fd ff ff    	mov    -0x23c(%ebp),%eax
  1085f4:	0b 85 c0 fd ff ff    	or     -0x240(%ebp),%eax
  1085fa:	85 c0                	test   %eax,%eax
  1085fc:	74 09                	je     108607 <print_unsigned_long+0xf0>
  1085fe:	81 7d dc ff 00 00 00 	cmpl   $0xff,-0x24(%ebp)
  108605:	76 86                	jbe    10858d <print_unsigned_long+0x76>
  108607:	83 ec 04             	sub    $0x4,%esp
  10860a:	68 00 01 00 00       	push   $0x100
  10860f:	6a 00                	push   $0x0
  108611:	8d 85 d7 fd ff ff    	lea    -0x229(%ebp),%eax
  108617:	50                   	push   %eax
  108618:	e8 0e 08 00 00       	call   108e2b <memset>
  10861d:	83 c4 10             	add    $0x10,%esp
  108620:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  108627:	eb 22                	jmp    10864b <print_unsigned_long+0x134>
  108629:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10862c:	2b 45 d8             	sub    -0x28(%ebp),%eax
  10862f:	83 e8 01             	sub    $0x1,%eax
  108632:	0f b6 84 05 d7 fe ff 	movzbl -0x129(%ebp,%eax,1),%eax
  108639:	ff 
  10863a:	8d 8d d7 fd ff ff    	lea    -0x229(%ebp),%ecx
  108640:	8b 55 d8             	mov    -0x28(%ebp),%edx
  108643:	01 ca                	add    %ecx,%edx
  108645:	88 02                	mov    %al,(%edx)
  108647:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  10864b:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10864e:	3b 45 dc             	cmp    -0x24(%ebp),%eax
  108651:	72 d6                	jb     108629 <print_unsigned_long+0x112>
  108653:	83 ec 08             	sub    $0x8,%esp
  108656:	ff 75 dc             	push   -0x24(%ebp)
  108659:	8d 85 d7 fd ff ff    	lea    -0x229(%ebp),%eax
  10865f:	50                   	push   %eax
  108660:	e8 7d fb ff ff       	call   1081e2 <print>
  108665:	83 c4 10             	add    $0x10,%esp
  108668:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10866b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10866e:	5b                   	pop    %ebx
  10866f:	5e                   	pop    %esi
  108670:	5f                   	pop    %edi
  108671:	5d                   	pop    %ebp
  108672:	c3                   	ret    

00108673 <print_hex>:
  108673:	55                   	push   %ebp
  108674:	89 e5                	mov    %esp,%ebp
  108676:	81 ec 38 02 00 00    	sub    $0x238,%esp
  10867c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10867f:	88 85 d4 fd ff ff    	mov    %al,-0x22c(%ebp)
  108685:	8b 45 08             	mov    0x8(%ebp),%eax
  108688:	8b 00                	mov    (%eax),%eax
  10868a:	85 c0                	test   %eax,%eax
  10868c:	75 1c                	jne    1086aa <print_hex+0x37>
  10868e:	83 ec 08             	sub    $0x8,%esp
  108691:	6a 01                	push   $0x1
  108693:	68 b8 ad 10 00       	push   $0x10adb8
  108698:	e8 45 fb ff ff       	call   1081e2 <print>
  10869d:	83 c4 10             	add    $0x10,%esp
  1086a0:	b8 01 00 00 00       	mov    $0x1,%eax
  1086a5:	e9 9b 01 00 00       	jmp    108845 <print_hex+0x1d2>
  1086aa:	8b 45 08             	mov    0x8(%ebp),%eax
  1086ad:	8b 00                	mov    (%eax),%eax
  1086af:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1086b2:	83 ec 04             	sub    $0x4,%esp
  1086b5:	68 00 01 00 00       	push   $0x100
  1086ba:	6a 00                	push   $0x0
  1086bc:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
  1086c2:	50                   	push   %eax
  1086c3:	e8 63 07 00 00       	call   108e2b <memset>
  1086c8:	83 c4 10             	add    $0x10,%esp
  1086cb:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1086d2:	e9 f7 00 00 00       	jmp    1087ce <print_hex+0x15b>
  1086d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1086da:	83 e0 0f             	and    $0xf,%eax
  1086dd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1086e0:	83 7d e4 0f          	cmpl   $0xf,-0x1c(%ebp)
  1086e4:	0f 87 bc 00 00 00    	ja     1087a6 <print_hex+0x133>
  1086ea:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1086ed:	c1 e0 02             	shl    $0x2,%eax
  1086f0:	05 bc ad 10 00       	add    $0x10adbc,%eax
  1086f5:	8b 00                	mov    (%eax),%eax
  1086f7:	ff e0                	jmp    *%eax
  1086f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1086fc:	83 c0 30             	add    $0x30,%eax
  1086ff:	88 45 ef             	mov    %al,-0x11(%ebp)
  108702:	e9 a9 00 00 00       	jmp    1087b0 <print_hex+0x13d>
  108707:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  10870e:	74 07                	je     108717 <print_hex+0xa4>
  108710:	b8 61 00 00 00       	mov    $0x61,%eax
  108715:	eb 05                	jmp    10871c <print_hex+0xa9>
  108717:	b8 41 00 00 00       	mov    $0x41,%eax
  10871c:	88 45 ef             	mov    %al,-0x11(%ebp)
  10871f:	e9 8c 00 00 00       	jmp    1087b0 <print_hex+0x13d>
  108724:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  10872b:	74 07                	je     108734 <print_hex+0xc1>
  10872d:	b8 62 00 00 00       	mov    $0x62,%eax
  108732:	eb 05                	jmp    108739 <print_hex+0xc6>
  108734:	b8 42 00 00 00       	mov    $0x42,%eax
  108739:	88 45 ef             	mov    %al,-0x11(%ebp)
  10873c:	eb 72                	jmp    1087b0 <print_hex+0x13d>
  10873e:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  108745:	74 07                	je     10874e <print_hex+0xdb>
  108747:	b8 63 00 00 00       	mov    $0x63,%eax
  10874c:	eb 05                	jmp    108753 <print_hex+0xe0>
  10874e:	b8 43 00 00 00       	mov    $0x43,%eax
  108753:	88 45 ef             	mov    %al,-0x11(%ebp)
  108756:	eb 58                	jmp    1087b0 <print_hex+0x13d>
  108758:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  10875f:	74 07                	je     108768 <print_hex+0xf5>
  108761:	b8 64 00 00 00       	mov    $0x64,%eax
  108766:	eb 05                	jmp    10876d <print_hex+0xfa>
  108768:	b8 44 00 00 00       	mov    $0x44,%eax
  10876d:	88 45 ef             	mov    %al,-0x11(%ebp)
  108770:	eb 3e                	jmp    1087b0 <print_hex+0x13d>
  108772:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  108779:	74 07                	je     108782 <print_hex+0x10f>
  10877b:	b8 65 00 00 00       	mov    $0x65,%eax
  108780:	eb 05                	jmp    108787 <print_hex+0x114>
  108782:	b8 45 00 00 00       	mov    $0x45,%eax
  108787:	88 45 ef             	mov    %al,-0x11(%ebp)
  10878a:	eb 24                	jmp    1087b0 <print_hex+0x13d>
  10878c:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  108793:	74 07                	je     10879c <print_hex+0x129>
  108795:	b8 66 00 00 00       	mov    $0x66,%eax
  10879a:	eb 05                	jmp    1087a1 <print_hex+0x12e>
  10879c:	b8 46 00 00 00       	mov    $0x46,%eax
  1087a1:	88 45 ef             	mov    %al,-0x11(%ebp)
  1087a4:	eb 0a                	jmp    1087b0 <print_hex+0x13d>
  1087a6:	b8 00 00 00 00       	mov    $0x0,%eax
  1087ab:	e9 95 00 00 00       	jmp    108845 <print_hex+0x1d2>
  1087b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1087b3:	c1 e8 04             	shr    $0x4,%eax
  1087b6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1087b9:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
  1087bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1087c2:	01 c2                	add    %eax,%edx
  1087c4:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  1087c8:	88 02                	mov    %al,(%edx)
  1087ca:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1087ce:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1087d2:	74 0d                	je     1087e1 <print_hex+0x16e>
  1087d4:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  1087db:	0f 86 f6 fe ff ff    	jbe    1086d7 <print_hex+0x64>
  1087e1:	83 ec 04             	sub    $0x4,%esp
  1087e4:	68 00 01 00 00       	push   $0x100
  1087e9:	6a 00                	push   $0x0
  1087eb:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  1087f1:	50                   	push   %eax
  1087f2:	e8 34 06 00 00       	call   108e2b <memset>
  1087f7:	83 c4 10             	add    $0x10,%esp
  1087fa:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  108801:	eb 22                	jmp    108825 <print_hex+0x1b2>
  108803:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108806:	2b 45 e8             	sub    -0x18(%ebp),%eax
  108809:	83 e8 01             	sub    $0x1,%eax
  10880c:	0f b6 84 05 e4 fe ff 	movzbl -0x11c(%ebp,%eax,1),%eax
  108813:	ff 
  108814:	8d 8d e4 fd ff ff    	lea    -0x21c(%ebp),%ecx
  10881a:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10881d:	01 ca                	add    %ecx,%edx
  10881f:	88 02                	mov    %al,(%edx)
  108821:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  108825:	8b 45 e8             	mov    -0x18(%ebp),%eax
  108828:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  10882b:	72 d6                	jb     108803 <print_hex+0x190>
  10882d:	83 ec 08             	sub    $0x8,%esp
  108830:	ff 75 f0             	push   -0x10(%ebp)
  108833:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  108839:	50                   	push   %eax
  10883a:	e8 a3 f9 ff ff       	call   1081e2 <print>
  10883f:	83 c4 10             	add    $0x10,%esp
  108842:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108845:	c9                   	leave  
  108846:	c3                   	ret    

00108847 <print_float>:
  108847:	55                   	push   %ebp
  108848:	89 e5                	mov    %esp,%ebp
  10884a:	57                   	push   %edi
  10884b:	56                   	push   %esi
  10884c:	83 ec 60             	sub    $0x60,%esp
  10884f:	8b 45 08             	mov    0x8(%ebp),%eax
  108852:	dd 00                	fldl   (%eax)
  108854:	dd 5d e8             	fstpl  -0x18(%ebp)
  108857:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  10885e:	dd 45 e8             	fldl   -0x18(%ebp)
  108861:	d9 7d b6             	fnstcw -0x4a(%ebp)
  108864:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  108868:	80 cc 0c             	or     $0xc,%ah
  10886b:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  10886f:	d9 6d b4             	fldcw  -0x4c(%ebp)
  108872:	db 5d b0             	fistpl -0x50(%ebp)
  108875:	d9 6d b6             	fldcw  -0x4a(%ebp)
  108878:	8b 45 b0             	mov    -0x50(%ebp),%eax
  10887b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  10887e:	83 ec 0c             	sub    $0xc,%esp
  108881:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  108884:	50                   	push   %eax
  108885:	e8 f4 f9 ff ff       	call   10827e <print_signed_integer>
  10888a:	83 c4 10             	add    $0x10,%esp
  10888d:	01 45 e4             	add    %eax,-0x1c(%ebp)
  108890:	83 ec 0c             	sub    $0xc,%esp
  108893:	68 fc ad 10 00       	push   $0x10adfc
  108898:	e8 c4 f9 ff ff       	call   108261 <print_char>
  10889d:	83 c4 10             	add    $0x10,%esp
  1088a0:	01 45 e4             	add    %eax,-0x1c(%ebp)
  1088a3:	8b 45 08             	mov    0x8(%ebp),%eax
  1088a6:	dd 00                	fldl   (%eax)
  1088a8:	d9 ee                	fldz   
  1088aa:	df f1                	fcomip %st(1),%st
  1088ac:	dd d8                	fstp   %st(0)
  1088ae:	76 09                	jbe    1088b9 <print_float+0x72>
  1088b0:	8b 45 08             	mov    0x8(%ebp),%eax
  1088b3:	dd 00                	fldl   (%eax)
  1088b5:	d9 e0                	fchs   
  1088b7:	eb 05                	jmp    1088be <print_float+0x77>
  1088b9:	8b 45 08             	mov    0x8(%ebp),%eax
  1088bc:	dd 00                	fldl   (%eax)
  1088be:	dd 5d d8             	fstpl  -0x28(%ebp)
  1088c1:	dd 45 d8             	fldl   -0x28(%ebp)
  1088c4:	d9 7d b6             	fnstcw -0x4a(%ebp)
  1088c7:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  1088cb:	80 cc 0c             	or     $0xc,%ah
  1088ce:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  1088d2:	d9 6d b4             	fldcw  -0x4c(%ebp)
  1088d5:	db 5d d4             	fistpl -0x2c(%ebp)
  1088d8:	d9 6d b6             	fldcw  -0x4a(%ebp)
  1088db:	db 45 d4             	fildl  -0x2c(%ebp)
  1088de:	dd 45 d8             	fldl   -0x28(%ebp)
  1088e1:	de e1                	fsubp  %st,%st(1)
  1088e3:	dd 5d f0             	fstpl  -0x10(%ebp)
  1088e6:	dd 45 f0             	fldl   -0x10(%ebp)
  1088e9:	dd 05 90 ae 10 00    	fldl   0x10ae90
  1088ef:	de c9                	fmulp  %st,%st(1)
  1088f1:	dd 5d f0             	fstpl  -0x10(%ebp)
  1088f4:	dd 45 f0             	fldl   -0x10(%ebp)
  1088f7:	dd 05 90 ae 10 00    	fldl   0x10ae90
  1088fd:	de c9                	fmulp  %st,%st(1)
  1088ff:	dd 05 98 ae 10 00    	fldl   0x10ae98
  108905:	d9 c9                	fxch   %st(1)
  108907:	db f1                	fcomi  %st(1),%st
  108909:	dd d9                	fstp   %st(1)
  10890b:	73 0b                	jae    108918 <print_float+0xd1>
  10890d:	d9 6d b4             	fldcw  -0x4c(%ebp)
  108910:	df 7d c8             	fistpll -0x38(%ebp)
  108913:	d9 6d b6             	fldcw  -0x4a(%ebp)
  108916:	eb 29                	jmp    108941 <print_float+0xfa>
  108918:	dd 05 98 ae 10 00    	fldl   0x10ae98
  10891e:	de e9                	fsubrp %st,%st(1)
  108920:	d9 6d b4             	fldcw  -0x4c(%ebp)
  108923:	df 7d c8             	fistpll -0x38(%ebp)
  108926:	d9 6d b6             	fldcw  -0x4a(%ebp)
  108929:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10892c:	80 f4 00             	xor    $0x0,%ah
  10892f:	89 c6                	mov    %eax,%esi
  108931:	8b 45 cc             	mov    -0x34(%ebp),%eax
  108934:	35 00 00 00 80       	xor    $0x80000000,%eax
  108939:	89 c7                	mov    %eax,%edi
  10893b:	89 75 c8             	mov    %esi,-0x38(%ebp)
  10893e:	89 7d cc             	mov    %edi,-0x34(%ebp)
  108941:	8b 45 c8             	mov    -0x38(%ebp),%eax
  108944:	8b 55 cc             	mov    -0x34(%ebp),%edx
  108947:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10894a:	89 55 cc             	mov    %edx,-0x34(%ebp)
  10894d:	8b 45 c8             	mov    -0x38(%ebp),%eax
  108950:	8b 55 cc             	mov    -0x34(%ebp),%edx
  108953:	6a 00                	push   $0x0
  108955:	6a 0a                	push   $0xa
  108957:	52                   	push   %edx
  108958:	50                   	push   %eax
  108959:	e8 62 06 00 00       	call   108fc0 <__umoddi3>
  10895e:	83 c4 10             	add    $0x10,%esp
  108961:	89 c1                	mov    %eax,%ecx
  108963:	80 f5 00             	xor    $0x0,%ch
  108966:	89 4d a8             	mov    %ecx,-0x58(%ebp)
  108969:	89 d0                	mov    %edx,%eax
  10896b:	80 f4 00             	xor    $0x0,%ah
  10896e:	89 45 ac             	mov    %eax,-0x54(%ebp)
  108971:	8b 55 a8             	mov    -0x58(%ebp),%edx
  108974:	8b 4d ac             	mov    -0x54(%ebp),%ecx
  108977:	89 c8                	mov    %ecx,%eax
  108979:	09 d0                	or     %edx,%eax
  10897b:	85 c0                	test   %eax,%eax
  10897d:	74 13                	je     108992 <print_float+0x14b>
  10897f:	d9 7d b6             	fnstcw -0x4a(%ebp)
  108982:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  108986:	80 cc 0c             	or     $0xc,%ah
  108989:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  10898d:	e9 54 ff ff ff       	jmp    1088e6 <print_float+0x9f>
  108992:	90                   	nop
  108993:	dd 05 98 ae 10 00    	fldl   0x10ae98
  108999:	dd 45 f0             	fldl   -0x10(%ebp)
  10899c:	df f1                	fcomip %st(1),%st
  10899e:	dd d8                	fstp   %st(0)
  1089a0:	73 1c                	jae    1089be <print_float+0x177>
  1089a2:	dd 45 f0             	fldl   -0x10(%ebp)
  1089a5:	d9 7d b6             	fnstcw -0x4a(%ebp)
  1089a8:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  1089ac:	80 cc 0c             	or     $0xc,%ah
  1089af:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  1089b3:	d9 6d b4             	fldcw  -0x4c(%ebp)
  1089b6:	df 7d a8             	fistpll -0x58(%ebp)
  1089b9:	d9 6d b6             	fldcw  -0x4a(%ebp)
  1089bc:	eb 42                	jmp    108a00 <print_float+0x1b9>
  1089be:	dd 45 f0             	fldl   -0x10(%ebp)
  1089c1:	dd 05 98 ae 10 00    	fldl   0x10ae98
  1089c7:	de e9                	fsubrp %st,%st(1)
  1089c9:	d9 7d b6             	fnstcw -0x4a(%ebp)
  1089cc:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  1089d0:	80 cc 0c             	or     $0xc,%ah
  1089d3:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  1089d7:	d9 6d b4             	fldcw  -0x4c(%ebp)
  1089da:	df 7d a8             	fistpll -0x58(%ebp)
  1089dd:	d9 6d b6             	fldcw  -0x4a(%ebp)
  1089e0:	8b 45 a8             	mov    -0x58(%ebp),%eax
  1089e3:	80 f4 00             	xor    $0x0,%ah
  1089e6:	89 45 a0             	mov    %eax,-0x60(%ebp)
  1089e9:	8b 45 ac             	mov    -0x54(%ebp),%eax
  1089ec:	35 00 00 00 80       	xor    $0x80000000,%eax
  1089f1:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  1089f4:	8b 45 a0             	mov    -0x60(%ebp),%eax
  1089f7:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  1089fa:	89 45 a8             	mov    %eax,-0x58(%ebp)
  1089fd:	89 55 ac             	mov    %edx,-0x54(%ebp)
  108a00:	8b 45 a8             	mov    -0x58(%ebp),%eax
  108a03:	8b 55 ac             	mov    -0x54(%ebp),%edx
  108a06:	89 45 b8             	mov    %eax,-0x48(%ebp)
  108a09:	89 55 bc             	mov    %edx,-0x44(%ebp)
  108a0c:	83 ec 0c             	sub    $0xc,%esp
  108a0f:	8d 45 b8             	lea    -0x48(%ebp),%eax
  108a12:	50                   	push   %eax
  108a13:	e8 ff fa ff ff       	call   108517 <print_unsigned_long>
  108a18:	83 c4 10             	add    $0x10,%esp
  108a1b:	01 45 e4             	add    %eax,-0x1c(%ebp)
  108a1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108a21:	8d 65 f8             	lea    -0x8(%ebp),%esp
  108a24:	5e                   	pop    %esi
  108a25:	5f                   	pop    %edi
  108a26:	5d                   	pop    %ebp
  108a27:	c3                   	ret    

00108a28 <print_unsigned_int8>:
  108a28:	55                   	push   %ebp
  108a29:	89 e5                	mov    %esp,%ebp
  108a2b:	83 ec 18             	sub    $0x18,%esp
  108a2e:	8b 45 08             	mov    0x8(%ebp),%eax
  108a31:	0f b6 00             	movzbl (%eax),%eax
  108a34:	0f b6 c0             	movzbl %al,%eax
  108a37:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108a3a:	83 ec 0c             	sub    $0xc,%esp
  108a3d:	8d 45 f4             	lea    -0xc(%ebp),%eax
  108a40:	50                   	push   %eax
  108a41:	e8 b9 f9 ff ff       	call   1083ff <print_unsigned_integer>
  108a46:	83 c4 10             	add    $0x10,%esp
  108a49:	c9                   	leave  
  108a4a:	c3                   	ret    

00108a4b <print_signed_int8>:
  108a4b:	55                   	push   %ebp
  108a4c:	89 e5                	mov    %esp,%ebp
  108a4e:	83 ec 18             	sub    $0x18,%esp
  108a51:	8b 45 08             	mov    0x8(%ebp),%eax
  108a54:	0f b6 00             	movzbl (%eax),%eax
  108a57:	0f be c0             	movsbl %al,%eax
  108a5a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108a5d:	83 ec 0c             	sub    $0xc,%esp
  108a60:	8d 45 f4             	lea    -0xc(%ebp),%eax
  108a63:	50                   	push   %eax
  108a64:	e8 15 f8 ff ff       	call   10827e <print_signed_integer>
  108a69:	83 c4 10             	add    $0x10,%esp
  108a6c:	c9                   	leave  
  108a6d:	c3                   	ret    

00108a6e <print_unsigned_int16>:
  108a6e:	55                   	push   %ebp
  108a6f:	89 e5                	mov    %esp,%ebp
  108a71:	83 ec 18             	sub    $0x18,%esp
  108a74:	8b 45 08             	mov    0x8(%ebp),%eax
  108a77:	0f b7 00             	movzwl (%eax),%eax
  108a7a:	0f b7 c0             	movzwl %ax,%eax
  108a7d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108a80:	83 ec 0c             	sub    $0xc,%esp
  108a83:	8d 45 f4             	lea    -0xc(%ebp),%eax
  108a86:	50                   	push   %eax
  108a87:	e8 73 f9 ff ff       	call   1083ff <print_unsigned_integer>
  108a8c:	83 c4 10             	add    $0x10,%esp
  108a8f:	c9                   	leave  
  108a90:	c3                   	ret    

00108a91 <print_signed_int16>:
  108a91:	55                   	push   %ebp
  108a92:	89 e5                	mov    %esp,%ebp
  108a94:	83 ec 18             	sub    $0x18,%esp
  108a97:	8b 45 08             	mov    0x8(%ebp),%eax
  108a9a:	0f b7 00             	movzwl (%eax),%eax
  108a9d:	98                   	cwtl   
  108a9e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108aa1:	83 ec 0c             	sub    $0xc,%esp
  108aa4:	8d 45 f4             	lea    -0xc(%ebp),%eax
  108aa7:	50                   	push   %eax
  108aa8:	e8 d1 f7 ff ff       	call   10827e <print_signed_integer>
  108aad:	83 c4 10             	add    $0x10,%esp
  108ab0:	c9                   	leave  
  108ab1:	c3                   	ret    

00108ab2 <printf>:
  108ab2:	55                   	push   %ebp
  108ab3:	89 e5                	mov    %esp,%ebp
  108ab5:	83 ec 58             	sub    $0x58,%esp
  108ab8:	8d 45 0c             	lea    0xc(%ebp),%eax
  108abb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  108abe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  108ac5:	8b 45 08             	mov    0x8(%ebp),%eax
  108ac8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  108acb:	e9 60 02 00 00       	jmp    108d30 <printf+0x27e>
  108ad0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108ad3:	0f b6 00             	movzbl (%eax),%eax
  108ad6:	88 45 df             	mov    %al,-0x21(%ebp)
  108ad9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108adc:	83 c0 01             	add    $0x1,%eax
  108adf:	0f b6 00             	movzbl (%eax),%eax
  108ae2:	88 45 ef             	mov    %al,-0x11(%ebp)
  108ae5:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
  108ae9:	3c 25                	cmp    $0x25,%al
  108aeb:	0f 85 23 02 00 00    	jne    108d14 <printf+0x262>
  108af1:	0f be 45 ef          	movsbl -0x11(%ebp),%eax
  108af5:	83 e8 55             	sub    $0x55,%eax
  108af8:	83 f8 23             	cmp    $0x23,%eax
  108afb:	0f 87 2a 02 00 00    	ja     108d2b <printf+0x279>
  108b01:	8b 04 85 00 ae 10 00 	mov    0x10ae00(,%eax,4),%eax
  108b08:	ff e0                	jmp    *%eax
  108b0a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108b0e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108b11:	8d 50 04             	lea    0x4(%eax),%edx
  108b14:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108b17:	8b 00                	mov    (%eax),%eax
  108b19:	88 45 de             	mov    %al,-0x22(%ebp)
  108b1c:	83 ec 0c             	sub    $0xc,%esp
  108b1f:	8d 45 de             	lea    -0x22(%ebp),%eax
  108b22:	50                   	push   %eax
  108b23:	e8 39 f7 ff ff       	call   108261 <print_char>
  108b28:	83 c4 10             	add    $0x10,%esp
  108b2b:	01 45 f4             	add    %eax,-0xc(%ebp)
  108b2e:	e9 f9 01 00 00       	jmp    108d2c <printf+0x27a>
  108b33:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108b37:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108b3a:	8d 50 04             	lea    0x4(%eax),%edx
  108b3d:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108b40:	8b 00                	mov    (%eax),%eax
  108b42:	89 45 d8             	mov    %eax,-0x28(%ebp)
  108b45:	83 ec 0c             	sub    $0xc,%esp
  108b48:	8d 45 d8             	lea    -0x28(%ebp),%eax
  108b4b:	50                   	push   %eax
  108b4c:	e8 2d f7 ff ff       	call   10827e <print_signed_integer>
  108b51:	83 c4 10             	add    $0x10,%esp
  108b54:	01 45 f4             	add    %eax,-0xc(%ebp)
  108b57:	e9 d0 01 00 00       	jmp    108d2c <printf+0x27a>
  108b5c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108b60:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108b63:	8d 50 04             	lea    0x4(%eax),%edx
  108b66:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108b69:	8b 00                	mov    (%eax),%eax
  108b6b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  108b6e:	83 ec 0c             	sub    $0xc,%esp
  108b71:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  108b74:	50                   	push   %eax
  108b75:	e8 85 f8 ff ff       	call   1083ff <print_unsigned_integer>
  108b7a:	83 c4 10             	add    $0x10,%esp
  108b7d:	01 45 f4             	add    %eax,-0xc(%ebp)
  108b80:	e9 a7 01 00 00       	jmp    108d2c <printf+0x27a>
  108b85:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108b89:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108b8c:	8d 50 08             	lea    0x8(%eax),%edx
  108b8f:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108b92:	8b 50 04             	mov    0x4(%eax),%edx
  108b95:	8b 00                	mov    (%eax),%eax
  108b97:	89 45 c8             	mov    %eax,-0x38(%ebp)
  108b9a:	89 55 cc             	mov    %edx,-0x34(%ebp)
  108b9d:	83 ec 0c             	sub    $0xc,%esp
  108ba0:	8d 45 c8             	lea    -0x38(%ebp),%eax
  108ba3:	50                   	push   %eax
  108ba4:	e8 6e f9 ff ff       	call   108517 <print_unsigned_long>
  108ba9:	83 c4 10             	add    $0x10,%esp
  108bac:	01 45 f4             	add    %eax,-0xc(%ebp)
  108baf:	e9 78 01 00 00       	jmp    108d2c <printf+0x27a>
  108bb4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108bb8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108bbb:	8d 50 04             	lea    0x4(%eax),%edx
  108bbe:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108bc1:	8b 00                	mov    (%eax),%eax
  108bc3:	88 45 c7             	mov    %al,-0x39(%ebp)
  108bc6:	83 ec 0c             	sub    $0xc,%esp
  108bc9:	8d 45 c7             	lea    -0x39(%ebp),%eax
  108bcc:	50                   	push   %eax
  108bcd:	e8 56 fe ff ff       	call   108a28 <print_unsigned_int8>
  108bd2:	83 c4 10             	add    $0x10,%esp
  108bd5:	01 45 f4             	add    %eax,-0xc(%ebp)
  108bd8:	e9 4f 01 00 00       	jmp    108d2c <printf+0x27a>
  108bdd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108be1:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108be4:	8d 50 04             	lea    0x4(%eax),%edx
  108be7:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108bea:	8b 00                	mov    (%eax),%eax
  108bec:	88 45 c6             	mov    %al,-0x3a(%ebp)
  108bef:	83 ec 0c             	sub    $0xc,%esp
  108bf2:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  108bf5:	50                   	push   %eax
  108bf6:	e8 50 fe ff ff       	call   108a4b <print_signed_int8>
  108bfb:	83 c4 10             	add    $0x10,%esp
  108bfe:	01 45 f4             	add    %eax,-0xc(%ebp)
  108c01:	e9 26 01 00 00       	jmp    108d2c <printf+0x27a>
  108c06:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108c0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108c0d:	8d 50 04             	lea    0x4(%eax),%edx
  108c10:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108c13:	8b 00                	mov    (%eax),%eax
  108c15:	66 89 45 c4          	mov    %ax,-0x3c(%ebp)
  108c19:	83 ec 0c             	sub    $0xc,%esp
  108c1c:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  108c1f:	50                   	push   %eax
  108c20:	e8 49 fe ff ff       	call   108a6e <print_unsigned_int16>
  108c25:	83 c4 10             	add    $0x10,%esp
  108c28:	01 45 f4             	add    %eax,-0xc(%ebp)
  108c2b:	e9 fc 00 00 00       	jmp    108d2c <printf+0x27a>
  108c30:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108c34:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108c37:	8d 50 04             	lea    0x4(%eax),%edx
  108c3a:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108c3d:	8b 00                	mov    (%eax),%eax
  108c3f:	66 89 45 c2          	mov    %ax,-0x3e(%ebp)
  108c43:	83 ec 0c             	sub    $0xc,%esp
  108c46:	8d 45 c2             	lea    -0x3e(%ebp),%eax
  108c49:	50                   	push   %eax
  108c4a:	e8 42 fe ff ff       	call   108a91 <print_signed_int16>
  108c4f:	83 c4 10             	add    $0x10,%esp
  108c52:	01 45 f4             	add    %eax,-0xc(%ebp)
  108c55:	e9 d2 00 00 00       	jmp    108d2c <printf+0x27a>
  108c5a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108c5e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108c61:	8d 50 04             	lea    0x4(%eax),%edx
  108c64:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108c67:	8b 00                	mov    (%eax),%eax
  108c69:	89 45 bc             	mov    %eax,-0x44(%ebp)
  108c6c:	83 ec 08             	sub    $0x8,%esp
  108c6f:	6a 01                	push   $0x1
  108c71:	8d 45 bc             	lea    -0x44(%ebp),%eax
  108c74:	50                   	push   %eax
  108c75:	e8 f9 f9 ff ff       	call   108673 <print_hex>
  108c7a:	83 c4 10             	add    $0x10,%esp
  108c7d:	01 45 f4             	add    %eax,-0xc(%ebp)
  108c80:	e9 a7 00 00 00       	jmp    108d2c <printf+0x27a>
  108c85:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108c89:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108c8c:	8d 50 04             	lea    0x4(%eax),%edx
  108c8f:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108c92:	8b 00                	mov    (%eax),%eax
  108c94:	89 45 b8             	mov    %eax,-0x48(%ebp)
  108c97:	83 ec 08             	sub    $0x8,%esp
  108c9a:	6a 00                	push   $0x0
  108c9c:	8d 45 b8             	lea    -0x48(%ebp),%eax
  108c9f:	50                   	push   %eax
  108ca0:	e8 ce f9 ff ff       	call   108673 <print_hex>
  108ca5:	83 c4 10             	add    $0x10,%esp
  108ca8:	01 45 f4             	add    %eax,-0xc(%ebp)
  108cab:	eb 7f                	jmp    108d2c <printf+0x27a>
  108cad:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108cb1:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108cb4:	8d 50 04             	lea    0x4(%eax),%edx
  108cb7:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108cba:	8b 00                	mov    (%eax),%eax
  108cbc:	89 45 e8             	mov    %eax,-0x18(%ebp)
  108cbf:	83 ec 0c             	sub    $0xc,%esp
  108cc2:	ff 75 e8             	push   -0x18(%ebp)
  108cc5:	e8 94 01 00 00       	call   108e5e <strlen>
  108cca:	83 c4 10             	add    $0x10,%esp
  108ccd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  108cd0:	83 ec 08             	sub    $0x8,%esp
  108cd3:	ff 75 e4             	push   -0x1c(%ebp)
  108cd6:	ff 75 e8             	push   -0x18(%ebp)
  108cd9:	e8 04 f5 ff ff       	call   1081e2 <print>
  108cde:	83 c4 10             	add    $0x10,%esp
  108ce1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  108ce4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108ce7:	01 d0                	add    %edx,%eax
  108ce9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108cec:	eb 3e                	jmp    108d2c <printf+0x27a>
  108cee:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108cf2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108cf5:	8d 50 08             	lea    0x8(%eax),%edx
  108cf8:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108cfb:	dd 00                	fldl   (%eax)
  108cfd:	dd 5d b0             	fstpl  -0x50(%ebp)
  108d00:	83 ec 0c             	sub    $0xc,%esp
  108d03:	8d 45 b0             	lea    -0x50(%ebp),%eax
  108d06:	50                   	push   %eax
  108d07:	e8 3b fb ff ff       	call   108847 <print_float>
  108d0c:	83 c4 10             	add    $0x10,%esp
  108d0f:	01 45 f4             	add    %eax,-0xc(%ebp)
  108d12:	eb 18                	jmp    108d2c <printf+0x27a>
  108d14:	83 ec 08             	sub    $0x8,%esp
  108d17:	6a 01                	push   $0x1
  108d19:	8d 45 df             	lea    -0x21(%ebp),%eax
  108d1c:	50                   	push   %eax
  108d1d:	e8 c0 f4 ff ff       	call   1081e2 <print>
  108d22:	83 c4 10             	add    $0x10,%esp
  108d25:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  108d29:	eb 01                	jmp    108d2c <printf+0x27a>
  108d2b:	90                   	nop
  108d2c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108d30:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108d33:	0f b6 00             	movzbl (%eax),%eax
  108d36:	84 c0                	test   %al,%al
  108d38:	0f 85 92 fd ff ff    	jne    108ad0 <printf+0x1e>
  108d3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108d41:	c9                   	leave  
  108d42:	c3                   	ret    

00108d43 <putchar>:
  108d43:	55                   	push   %ebp
  108d44:	89 e5                	mov    %esp,%ebp
  108d46:	83 ec 08             	sub    $0x8,%esp
  108d49:	8b 45 08             	mov    0x8(%ebp),%eax
  108d4c:	0f be c0             	movsbl %al,%eax
  108d4f:	83 ec 0c             	sub    $0xc,%esp
  108d52:	50                   	push   %eax
  108d53:	e8 03 76 ff ff       	call   10035b <tty_putchar>
  108d58:	83 c4 10             	add    $0x10,%esp
  108d5b:	b8 00 00 00 00       	mov    $0x0,%eax
  108d60:	c9                   	leave  
  108d61:	c3                   	ret    

00108d62 <abort>:
  108d62:	55                   	push   %ebp
  108d63:	89 e5                	mov    %esp,%ebp
  108d65:	83 ec 08             	sub    $0x8,%esp
  108d68:	83 ec 0c             	sub    $0xc,%esp
  108d6b:	68 a0 ae 10 00       	push   $0x10aea0
  108d70:	e8 3d fd ff ff       	call   108ab2 <printf>
  108d75:	83 c4 10             	add    $0x10,%esp
  108d78:	eb fe                	jmp    108d78 <abort+0x16>

00108d7a <memcmp>:
  108d7a:	55                   	push   %ebp
  108d7b:	89 e5                	mov    %esp,%ebp
  108d7d:	83 ec 10             	sub    $0x10,%esp
  108d80:	8b 45 08             	mov    0x8(%ebp),%eax
  108d83:	89 45 f8             	mov    %eax,-0x8(%ebp)
  108d86:	8b 45 0c             	mov    0xc(%ebp),%eax
  108d89:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108d8c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  108d93:	eb 46                	jmp    108ddb <memcmp+0x61>
  108d95:	8b 55 f8             	mov    -0x8(%ebp),%edx
  108d98:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108d9b:	01 d0                	add    %edx,%eax
  108d9d:	0f b6 10             	movzbl (%eax),%edx
  108da0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  108da3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108da6:	01 c8                	add    %ecx,%eax
  108da8:	0f b6 00             	movzbl (%eax),%eax
  108dab:	38 c2                	cmp    %al,%dl
  108dad:	73 07                	jae    108db6 <memcmp+0x3c>
  108daf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  108db4:	eb 32                	jmp    108de8 <memcmp+0x6e>
  108db6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  108db9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108dbc:	01 d0                	add    %edx,%eax
  108dbe:	0f b6 10             	movzbl (%eax),%edx
  108dc1:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  108dc4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108dc7:	01 c8                	add    %ecx,%eax
  108dc9:	0f b6 00             	movzbl (%eax),%eax
  108dcc:	38 c2                	cmp    %al,%dl
  108dce:	73 07                	jae    108dd7 <memcmp+0x5d>
  108dd0:	b8 01 00 00 00       	mov    $0x1,%eax
  108dd5:	eb 11                	jmp    108de8 <memcmp+0x6e>
  108dd7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108ddb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108dde:	3b 45 10             	cmp    0x10(%ebp),%eax
  108de1:	72 b2                	jb     108d95 <memcmp+0x1b>
  108de3:	b8 00 00 00 00       	mov    $0x0,%eax
  108de8:	c9                   	leave  
  108de9:	c3                   	ret    

00108dea <memcpy>:
  108dea:	55                   	push   %ebp
  108deb:	89 e5                	mov    %esp,%ebp
  108ded:	83 ec 10             	sub    $0x10,%esp
  108df0:	8b 45 08             	mov    0x8(%ebp),%eax
  108df3:	89 45 f8             	mov    %eax,-0x8(%ebp)
  108df6:	8b 45 0c             	mov    0xc(%ebp),%eax
  108df9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108dfc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  108e03:	eb 19                	jmp    108e1e <memcpy+0x34>
  108e05:	8b 55 f4             	mov    -0xc(%ebp),%edx
  108e08:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108e0b:	01 d0                	add    %edx,%eax
  108e0d:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  108e10:	8b 55 fc             	mov    -0x4(%ebp),%edx
  108e13:	01 ca                	add    %ecx,%edx
  108e15:	0f b6 00             	movzbl (%eax),%eax
  108e18:	88 02                	mov    %al,(%edx)
  108e1a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108e1e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108e21:	3b 45 10             	cmp    0x10(%ebp),%eax
  108e24:	72 df                	jb     108e05 <memcpy+0x1b>
  108e26:	8b 45 08             	mov    0x8(%ebp),%eax
  108e29:	c9                   	leave  
  108e2a:	c3                   	ret    

00108e2b <memset>:
  108e2b:	55                   	push   %ebp
  108e2c:	89 e5                	mov    %esp,%ebp
  108e2e:	83 ec 10             	sub    $0x10,%esp
  108e31:	8b 45 08             	mov    0x8(%ebp),%eax
  108e34:	89 45 f8             	mov    %eax,-0x8(%ebp)
  108e37:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  108e3e:	eb 11                	jmp    108e51 <memset+0x26>
  108e40:	8b 55 f8             	mov    -0x8(%ebp),%edx
  108e43:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108e46:	01 d0                	add    %edx,%eax
  108e48:	8b 55 0c             	mov    0xc(%ebp),%edx
  108e4b:	88 10                	mov    %dl,(%eax)
  108e4d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108e51:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108e54:	3b 45 10             	cmp    0x10(%ebp),%eax
  108e57:	72 e7                	jb     108e40 <memset+0x15>
  108e59:	8b 45 08             	mov    0x8(%ebp),%eax
  108e5c:	c9                   	leave  
  108e5d:	c3                   	ret    

00108e5e <strlen>:
  108e5e:	55                   	push   %ebp
  108e5f:	89 e5                	mov    %esp,%ebp
  108e61:	83 ec 10             	sub    $0x10,%esp
  108e64:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  108e6b:	eb 04                	jmp    108e71 <strlen+0x13>
  108e6d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  108e71:	8b 55 08             	mov    0x8(%ebp),%edx
  108e74:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108e77:	01 d0                	add    %edx,%eax
  108e79:	0f b6 00             	movzbl (%eax),%eax
  108e7c:	84 c0                	test   %al,%al
  108e7e:	75 ed                	jne    108e6d <strlen+0xf>
  108e80:	8b 45 fc             	mov    -0x4(%ebp),%eax
  108e83:	c9                   	leave  
  108e84:	c3                   	ret    
  108e85:	66 90                	xchg   %ax,%ax
  108e87:	66 90                	xchg   %ax,%ax
  108e89:	66 90                	xchg   %ax,%ax
  108e8b:	66 90                	xchg   %ax,%ax
  108e8d:	66 90                	xchg   %ax,%ax
  108e8f:	90                   	nop

00108e90 <__udivdi3>:
  108e90:	55                   	push   %ebp
  108e91:	89 e5                	mov    %esp,%ebp
  108e93:	57                   	push   %edi
  108e94:	56                   	push   %esi
  108e95:	53                   	push   %ebx
  108e96:	83 ec 1c             	sub    $0x1c,%esp
  108e99:	8b 7d 08             	mov    0x8(%ebp),%edi
  108e9c:	8b 45 14             	mov    0x14(%ebp),%eax
  108e9f:	8b 75 0c             	mov    0xc(%ebp),%esi
  108ea2:	8b 5d 10             	mov    0x10(%ebp),%ebx
  108ea5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  108ea8:	85 c0                	test   %eax,%eax
  108eaa:	75 24                	jne    108ed0 <__udivdi3+0x40>
  108eac:	39 f3                	cmp    %esi,%ebx
  108eae:	76 60                	jbe    108f10 <__udivdi3+0x80>
  108eb0:	89 f8                	mov    %edi,%eax
  108eb2:	31 ff                	xor    %edi,%edi
  108eb4:	89 f2                	mov    %esi,%edx
  108eb6:	f7 f3                	div    %ebx
  108eb8:	89 fa                	mov    %edi,%edx
  108eba:	83 c4 1c             	add    $0x1c,%esp
  108ebd:	5b                   	pop    %ebx
  108ebe:	5e                   	pop    %esi
  108ebf:	5f                   	pop    %edi
  108ec0:	5d                   	pop    %ebp
  108ec1:	c3                   	ret    
  108ec2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108ed0:	39 f0                	cmp    %esi,%eax
  108ed2:	76 1c                	jbe    108ef0 <__udivdi3+0x60>
  108ed4:	31 ff                	xor    %edi,%edi
  108ed6:	31 c0                	xor    %eax,%eax
  108ed8:	89 fa                	mov    %edi,%edx
  108eda:	83 c4 1c             	add    $0x1c,%esp
  108edd:	5b                   	pop    %ebx
  108ede:	5e                   	pop    %esi
  108edf:	5f                   	pop    %edi
  108ee0:	5d                   	pop    %ebp
  108ee1:	c3                   	ret    
  108ee2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108ee9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108ef0:	0f bd f8             	bsr    %eax,%edi
  108ef3:	83 f7 1f             	xor    $0x1f,%edi
  108ef6:	75 48                	jne    108f40 <__udivdi3+0xb0>
  108ef8:	39 f0                	cmp    %esi,%eax
  108efa:	72 07                	jb     108f03 <__udivdi3+0x73>
  108efc:	31 c0                	xor    %eax,%eax
  108efe:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  108f01:	77 d5                	ja     108ed8 <__udivdi3+0x48>
  108f03:	b8 01 00 00 00       	mov    $0x1,%eax
  108f08:	eb ce                	jmp    108ed8 <__udivdi3+0x48>
  108f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108f10:	89 d9                	mov    %ebx,%ecx
  108f12:	85 db                	test   %ebx,%ebx
  108f14:	75 0b                	jne    108f21 <__udivdi3+0x91>
  108f16:	b8 01 00 00 00       	mov    $0x1,%eax
  108f1b:	31 d2                	xor    %edx,%edx
  108f1d:	f7 f3                	div    %ebx
  108f1f:	89 c1                	mov    %eax,%ecx
  108f21:	31 d2                	xor    %edx,%edx
  108f23:	89 f0                	mov    %esi,%eax
  108f25:	f7 f1                	div    %ecx
  108f27:	89 c6                	mov    %eax,%esi
  108f29:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108f2c:	89 f7                	mov    %esi,%edi
  108f2e:	f7 f1                	div    %ecx
  108f30:	89 fa                	mov    %edi,%edx
  108f32:	83 c4 1c             	add    $0x1c,%esp
  108f35:	5b                   	pop    %ebx
  108f36:	5e                   	pop    %esi
  108f37:	5f                   	pop    %edi
  108f38:	5d                   	pop    %ebp
  108f39:	c3                   	ret    
  108f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108f40:	89 f9                	mov    %edi,%ecx
  108f42:	ba 20 00 00 00       	mov    $0x20,%edx
  108f47:	29 fa                	sub    %edi,%edx
  108f49:	d3 e0                	shl    %cl,%eax
  108f4b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  108f4e:	89 d1                	mov    %edx,%ecx
  108f50:	89 d8                	mov    %ebx,%eax
  108f52:	d3 e8                	shr    %cl,%eax
  108f54:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  108f57:	09 c1                	or     %eax,%ecx
  108f59:	89 f0                	mov    %esi,%eax
  108f5b:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  108f5e:	89 f9                	mov    %edi,%ecx
  108f60:	d3 e3                	shl    %cl,%ebx
  108f62:	89 d1                	mov    %edx,%ecx
  108f64:	d3 e8                	shr    %cl,%eax
  108f66:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  108f69:	89 f9                	mov    %edi,%ecx
  108f6b:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  108f6e:	d3 e6                	shl    %cl,%esi
  108f70:	89 d1                	mov    %edx,%ecx
  108f72:	d3 eb                	shr    %cl,%ebx
  108f74:	09 f3                	or     %esi,%ebx
  108f76:	89 c6                	mov    %eax,%esi
  108f78:	89 f2                	mov    %esi,%edx
  108f7a:	89 d8                	mov    %ebx,%eax
  108f7c:	f7 75 e0             	divl   -0x20(%ebp)
  108f7f:	89 d6                	mov    %edx,%esi
  108f81:	89 c3                	mov    %eax,%ebx
  108f83:	f7 65 dc             	mull   -0x24(%ebp)
  108f86:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108f89:	39 d6                	cmp    %edx,%esi
  108f8b:	72 23                	jb     108fb0 <__udivdi3+0x120>
  108f8d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  108f90:	89 f9                	mov    %edi,%ecx
  108f92:	d3 e2                	shl    %cl,%edx
  108f94:	39 c2                	cmp    %eax,%edx
  108f96:	73 05                	jae    108f9d <__udivdi3+0x10d>
  108f98:	3b 75 e0             	cmp    -0x20(%ebp),%esi
  108f9b:	74 13                	je     108fb0 <__udivdi3+0x120>
  108f9d:	89 d8                	mov    %ebx,%eax
  108f9f:	31 ff                	xor    %edi,%edi
  108fa1:	e9 32 ff ff ff       	jmp    108ed8 <__udivdi3+0x48>
  108fa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108fad:	8d 76 00             	lea    0x0(%esi),%esi
  108fb0:	8d 43 ff             	lea    -0x1(%ebx),%eax
  108fb3:	31 ff                	xor    %edi,%edi
  108fb5:	e9 1e ff ff ff       	jmp    108ed8 <__udivdi3+0x48>
  108fba:	66 90                	xchg   %ax,%ax
  108fbc:	66 90                	xchg   %ax,%ax
  108fbe:	66 90                	xchg   %ax,%ax

00108fc0 <__umoddi3>:
  108fc0:	55                   	push   %ebp
  108fc1:	89 e5                	mov    %esp,%ebp
  108fc3:	57                   	push   %edi
  108fc4:	56                   	push   %esi
  108fc5:	53                   	push   %ebx
  108fc6:	83 ec 2c             	sub    $0x2c,%esp
  108fc9:	8b 75 08             	mov    0x8(%ebp),%esi
  108fcc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  108fcf:	8b 45 14             	mov    0x14(%ebp),%eax
  108fd2:	8b 7d 10             	mov    0x10(%ebp),%edi
  108fd5:	89 75 e4             	mov    %esi,-0x1c(%ebp)
  108fd8:	89 da                	mov    %ebx,%edx
  108fda:	85 c0                	test   %eax,%eax
  108fdc:	75 22                	jne    109000 <__umoddi3+0x40>
  108fde:	39 df                	cmp    %ebx,%edi
  108fe0:	76 5e                	jbe    109040 <__umoddi3+0x80>
  108fe2:	89 f0                	mov    %esi,%eax
  108fe4:	f7 f7                	div    %edi
  108fe6:	89 d0                	mov    %edx,%eax
  108fe8:	31 d2                	xor    %edx,%edx
  108fea:	83 c4 2c             	add    $0x2c,%esp
  108fed:	5b                   	pop    %ebx
  108fee:	5e                   	pop    %esi
  108fef:	5f                   	pop    %edi
  108ff0:	5d                   	pop    %ebp
  108ff1:	c3                   	ret    
  108ff2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109000:	39 d8                	cmp    %ebx,%eax
  109002:	76 0c                	jbe    109010 <__umoddi3+0x50>
  109004:	89 f0                	mov    %esi,%eax
  109006:	83 c4 2c             	add    $0x2c,%esp
  109009:	5b                   	pop    %ebx
  10900a:	5e                   	pop    %esi
  10900b:	5f                   	pop    %edi
  10900c:	5d                   	pop    %ebp
  10900d:	c3                   	ret    
  10900e:	66 90                	xchg   %ax,%ax
  109010:	0f bd c8             	bsr    %eax,%ecx
  109013:	83 f1 1f             	xor    $0x1f,%ecx
  109016:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  109019:	75 45                	jne    109060 <__umoddi3+0xa0>
  10901b:	39 d8                	cmp    %ebx,%eax
  10901d:	0f 82 dd 00 00 00    	jb     109100 <__umoddi3+0x140>
  109023:	39 f7                	cmp    %esi,%edi
  109025:	0f 86 d5 00 00 00    	jbe    109100 <__umoddi3+0x140>
  10902b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10902e:	83 c4 2c             	add    $0x2c,%esp
  109031:	5b                   	pop    %ebx
  109032:	5e                   	pop    %esi
  109033:	5f                   	pop    %edi
  109034:	5d                   	pop    %ebp
  109035:	c3                   	ret    
  109036:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10903d:	8d 76 00             	lea    0x0(%esi),%esi
  109040:	89 f9                	mov    %edi,%ecx
  109042:	85 ff                	test   %edi,%edi
  109044:	75 0b                	jne    109051 <__umoddi3+0x91>
  109046:	b8 01 00 00 00       	mov    $0x1,%eax
  10904b:	31 d2                	xor    %edx,%edx
  10904d:	f7 f7                	div    %edi
  10904f:	89 c1                	mov    %eax,%ecx
  109051:	89 d8                	mov    %ebx,%eax
  109053:	31 d2                	xor    %edx,%edx
  109055:	f7 f1                	div    %ecx
  109057:	89 f0                	mov    %esi,%eax
  109059:	f7 f1                	div    %ecx
  10905b:	eb 89                	jmp    108fe6 <__umoddi3+0x26>
  10905d:	8d 76 00             	lea    0x0(%esi),%esi
  109060:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  109063:	ba 20 00 00 00       	mov    $0x20,%edx
  109068:	29 ca                	sub    %ecx,%edx
  10906a:	d3 e0                	shl    %cl,%eax
  10906c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10906f:	89 d1                	mov    %edx,%ecx
  109071:	89 f8                	mov    %edi,%eax
  109073:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  109076:	8b 55 dc             	mov    -0x24(%ebp),%edx
  109079:	d3 e8                	shr    %cl,%eax
  10907b:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  10907f:	09 c2                	or     %eax,%edx
  109081:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  109084:	d3 e7                	shl    %cl,%edi
  109086:	89 55 dc             	mov    %edx,-0x24(%ebp)
  109089:	89 da                	mov    %ebx,%edx
  10908b:	89 c1                	mov    %eax,%ecx
  10908d:	89 7d d8             	mov    %edi,-0x28(%ebp)
  109090:	89 f7                	mov    %esi,%edi
  109092:	d3 ea                	shr    %cl,%edx
  109094:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  109098:	d3 e3                	shl    %cl,%ebx
  10909a:	89 c1                	mov    %eax,%ecx
  10909c:	d3 ef                	shr    %cl,%edi
  10909e:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  1090a2:	89 f8                	mov    %edi,%eax
  1090a4:	d3 e6                	shl    %cl,%esi
  1090a6:	09 d8                	or     %ebx,%eax
  1090a8:	f7 75 dc             	divl   -0x24(%ebp)
  1090ab:	89 d3                	mov    %edx,%ebx
  1090ad:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  1090b0:	89 f7                	mov    %esi,%edi
  1090b2:	f7 65 d8             	mull   -0x28(%ebp)
  1090b5:	89 c6                	mov    %eax,%esi
  1090b7:	89 d1                	mov    %edx,%ecx
  1090b9:	39 d3                	cmp    %edx,%ebx
  1090bb:	72 06                	jb     1090c3 <__umoddi3+0x103>
  1090bd:	75 0e                	jne    1090cd <__umoddi3+0x10d>
  1090bf:	39 c7                	cmp    %eax,%edi
  1090c1:	73 0a                	jae    1090cd <__umoddi3+0x10d>
  1090c3:	2b 45 d8             	sub    -0x28(%ebp),%eax
  1090c6:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  1090c9:	89 d1                	mov    %edx,%ecx
  1090cb:	89 c6                	mov    %eax,%esi
  1090cd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1090d0:	8b 7d e0             	mov    -0x20(%ebp),%edi
  1090d3:	29 f0                	sub    %esi,%eax
  1090d5:	19 cb                	sbb    %ecx,%ebx
  1090d7:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1090db:	89 da                	mov    %ebx,%edx
  1090dd:	d3 e2                	shl    %cl,%edx
  1090df:	89 f9                	mov    %edi,%ecx
  1090e1:	d3 e8                	shr    %cl,%eax
  1090e3:	d3 eb                	shr    %cl,%ebx
  1090e5:	09 d0                	or     %edx,%eax
  1090e7:	89 da                	mov    %ebx,%edx
  1090e9:	83 c4 2c             	add    $0x2c,%esp
  1090ec:	5b                   	pop    %ebx
  1090ed:	5e                   	pop    %esi
  1090ee:	5f                   	pop    %edi
  1090ef:	5d                   	pop    %ebp
  1090f0:	c3                   	ret    
  1090f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1090f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1090ff:	90                   	nop
  109100:	89 f2                	mov    %esi,%edx
  109102:	29 fa                	sub    %edi,%edx
  109104:	19 c3                	sbb    %eax,%ebx
  109106:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  109109:	89 da                	mov    %ebx,%edx
  10910b:	e9 1b ff ff ff       	jmp    10902b <__umoddi3+0x6b>

00109110 <__do_global_ctors_aux>:
  109110:	a1 20 b4 10 00       	mov    0x10b420,%eax
  109115:	83 f8 ff             	cmp    $0xffffffff,%eax
  109118:	74 36                	je     109150 <__do_global_ctors_aux+0x40>
  10911a:	55                   	push   %ebp
  10911b:	89 e5                	mov    %esp,%ebp
  10911d:	53                   	push   %ebx
  10911e:	bb 20 b4 10 00       	mov    $0x10b420,%ebx
  109123:	83 ec 04             	sub    $0x4,%esp
  109126:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10912d:	8d 76 00             	lea    0x0(%esi),%esi
  109130:	ff d0                	call   *%eax
  109132:	8b 43 fc             	mov    -0x4(%ebx),%eax
  109135:	83 eb 04             	sub    $0x4,%ebx
  109138:	83 f8 ff             	cmp    $0xffffffff,%eax
  10913b:	75 f3                	jne    109130 <__do_global_ctors_aux+0x20>
  10913d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  109140:	c9                   	leave  
  109141:	c3                   	ret    
  109142:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109150:	c3                   	ret    

Disassembly of section .init:

00109151 <_init>:
  109151:	55                   	push   %ebp
  109152:	89 e5                	mov    %esp,%ebp
  109154:	e8 c7 6f ff ff       	call   100120 <frame_dummy>
  109159:	e8 b2 ff ff ff       	call   109110 <__do_global_ctors_aux>
  10915e:	5d                   	pop    %ebp
  10915f:	c3                   	ret    

Disassembly of section .fini:

00109160 <_fini>:
  109160:	55                   	push   %ebp
  109161:	89 e5                	mov    %esp,%ebp
  109163:	e8 38 6f ff ff       	call   1000a0 <__do_global_dtors_aux>
  109168:	5d                   	pop    %ebp
  109169:	c3                   	ret    
