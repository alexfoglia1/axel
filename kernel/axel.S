
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
  100010:	b8 30 c4 10 00       	mov    $0x10c430,%eax
  100015:	3d 30 c4 10 00       	cmp    $0x10c430,%eax
  10001a:	74 24                	je     100040 <deregister_tm_clones+0x30>
  10001c:	b8 00 00 00 00       	mov    $0x0,%eax
  100021:	85 c0                	test   %eax,%eax
  100023:	74 1b                	je     100040 <deregister_tm_clones+0x30>
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 14             	sub    $0x14,%esp
  10002b:	68 30 c4 10 00       	push   $0x10c430
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
  100050:	b8 30 c4 10 00       	mov    $0x10c430,%eax
  100055:	2d 30 c4 10 00       	sub    $0x10c430,%eax
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
  100078:	68 30 c4 10 00       	push   $0x10c430
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
  1000a0:	80 3d 00 d0 10 00 00 	cmpb   $0x0,0x10d000
  1000a7:	75 67                	jne    100110 <__do_global_dtors_aux+0x70>
  1000a9:	55                   	push   %ebp
  1000aa:	a1 04 d0 10 00       	mov    0x10d004,%eax
  1000af:	89 e5                	mov    %esp,%ebp
  1000b1:	56                   	push   %esi
  1000b2:	be 28 c4 10 00       	mov    $0x10c428,%esi
  1000b7:	53                   	push   %ebx
  1000b8:	bb 2c c4 10 00       	mov    $0x10c42c,%ebx
  1000bd:	81 eb 28 c4 10 00    	sub    $0x10c428,%ebx
  1000c3:	c1 fb 02             	sar    $0x2,%ebx
  1000c6:	83 eb 01             	sub    $0x1,%ebx
  1000c9:	39 d8                	cmp    %ebx,%eax
  1000cb:	73 17                	jae    1000e4 <__do_global_dtors_aux+0x44>
  1000cd:	8d 76 00             	lea    0x0(%esi),%esi
  1000d0:	83 c0 01             	add    $0x1,%eax
  1000d3:	a3 04 d0 10 00       	mov    %eax,0x10d004
  1000d8:	ff 14 86             	call   *(%esi,%eax,4)
  1000db:	a1 04 d0 10 00       	mov    0x10d004,%eax
  1000e0:	39 d8                	cmp    %ebx,%eax
  1000e2:	72 ec                	jb     1000d0 <__do_global_dtors_aux+0x30>
  1000e4:	e8 27 ff ff ff       	call   100010 <deregister_tm_clones>
  1000e9:	b8 00 00 00 00       	mov    $0x0,%eax
  1000ee:	85 c0                	test   %eax,%eax
  1000f0:	74 10                	je     100102 <__do_global_dtors_aux+0x62>
  1000f2:	83 ec 0c             	sub    $0xc,%esp
  1000f5:	68 90 af 10 00       	push   $0x10af90
  1000fa:	e8 01 ff ef ff       	call   0 <ALIGN-0x1>
  1000ff:	83 c4 10             	add    $0x10,%esp
  100102:	c6 05 00 d0 10 00 01 	movb   $0x1,0x10d000
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
  10012f:	68 08 d0 10 00       	push   $0x10d008
  100134:	68 90 af 10 00       	push   $0x10af90
  100139:	e8 c2 fe ef ff       	call   0 <ALIGN-0x1>
  10013e:	83 c4 10             	add    $0x10,%esp
  100141:	c9                   	leave  
  100142:	e9 09 ff ff ff       	jmp    100050 <register_tm_clones>
  100147:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  10014e:	66 90                	xchg   %ax,%ax
  100150:	e9 fb fe ff ff       	jmp    100050 <register_tm_clones>

00100155 <_start>:
  100155:	bc 20 10 11 00       	mov    $0x111020,%esp
  10015a:	54                   	push   %esp
  10015b:	50                   	push   %eax
  10015c:	53                   	push   %ebx
  10015d:	e8 fb 71 00 00       	call   10735d <kernel_main>
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
  1001a0:	c7 05 20 10 11 00 00 	movl   $0x0,0x111020
  1001a7:	00 00 00 
  1001aa:	c7 05 24 10 11 00 00 	movl   $0x0,0x111024
  1001b1:	00 00 00 
  1001b4:	83 ec 08             	sub    $0x8,%esp
  1001b7:	6a 00                	push   $0x0
  1001b9:	6a 07                	push   $0x7
  1001bb:	e8 a6 ff ff ff       	call   100166 <vga_entry_color>
  1001c0:	83 c4 10             	add    $0x10,%esp
  1001c3:	a2 28 10 11 00       	mov    %al,0x111028
  1001c8:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  1001cd:	a3 2c 10 11 00       	mov    %eax,0x11102c
  1001d2:	c7 05 30 10 11 00 08 	movl   $0x8,0x111030
  1001d9:	00 00 00 
  1001dc:	b8 50 00 00 00       	mov    $0x50,%eax
  1001e1:	8b 0d 30 10 11 00    	mov    0x111030,%ecx
  1001e7:	ba 00 00 00 00       	mov    $0x0,%edx
  1001ec:	f7 f1                	div    %ecx
  1001ee:	a3 34 10 11 00       	mov    %eax,0x111034
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
  100218:	0f b6 05 28 10 11 00 	movzbl 0x111028,%eax
  10021f:	0f b6 c0             	movzbl %al,%eax
  100222:	8b 0d 2c 10 11 00    	mov    0x11102c,%ecx
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
  10027b:	a2 28 10 11 00       	mov    %al,0x111028
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
  1002b9:	8b 15 2c 10 11 00    	mov    0x11102c,%edx
  1002bf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1002c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1002c5:	01 c8                	add    %ecx,%eax
  1002c7:	01 c0                	add    %eax,%eax
  1002c9:	01 d0                	add    %edx,%eax
  1002cb:	8b 0d 2c 10 11 00    	mov    0x11102c,%ecx
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
  10030b:	0f b6 05 28 10 11 00 	movzbl 0x111028,%eax
  100312:	0f b6 c0             	movzbl %al,%eax
  100315:	8b 0d 2c 10 11 00    	mov    0x11102c,%ecx
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
  10036e:	c7 05 24 10 11 00 00 	movl   $0x0,0x111024
  100375:	00 00 00 
  100378:	a1 20 10 11 00       	mov    0x111020,%eax
  10037d:	83 c0 01             	add    $0x1,%eax
  100380:	a3 20 10 11 00       	mov    %eax,0x111020
  100385:	ba 19 00 00 00       	mov    $0x19,%edx
  10038a:	a1 20 10 11 00       	mov    0x111020,%eax
  10038f:	39 c2                	cmp    %eax,%edx
  100391:	0f 85 71 01 00 00    	jne    100508 <tty_putchar+0x1ad>
  100397:	e8 e7 fe ff ff       	call   100283 <tty_scroll>
  10039c:	b8 19 00 00 00       	mov    $0x19,%eax
  1003a1:	83 e8 01             	sub    $0x1,%eax
  1003a4:	a3 20 10 11 00       	mov    %eax,0x111020
  1003a9:	e9 5a 01 00 00       	jmp    100508 <tty_putchar+0x1ad>
  1003ae:	80 7d e4 0d          	cmpb   $0xd,-0x1c(%ebp)
  1003b2:	75 0f                	jne    1003c3 <tty_putchar+0x68>
  1003b4:	c7 05 24 10 11 00 00 	movl   $0x0,0x111024
  1003bb:	00 00 00 
  1003be:	e9 45 01 00 00       	jmp    100508 <tty_putchar+0x1ad>
  1003c3:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  1003c7:	75 2d                	jne    1003f6 <tty_putchar+0x9b>
  1003c9:	a1 24 10 11 00       	mov    0x111024,%eax
  1003ce:	8b 0d 34 10 11 00    	mov    0x111034,%ecx
  1003d4:	ba 00 00 00 00       	mov    $0x0,%edx
  1003d9:	f7 f1                	div    %ecx
  1003db:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1003de:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1003e1:	8d 50 01             	lea    0x1(%eax),%edx
  1003e4:	a1 34 10 11 00       	mov    0x111034,%eax
  1003e9:	0f af c2             	imul   %edx,%eax
  1003ec:	a3 24 10 11 00       	mov    %eax,0x111024
  1003f1:	e9 12 01 00 00       	jmp    100508 <tty_putchar+0x1ad>
  1003f6:	80 7d e4 08          	cmpb   $0x8,-0x1c(%ebp)
  1003fa:	75 75                	jne    100471 <tty_putchar+0x116>
  1003fc:	a1 24 10 11 00       	mov    0x111024,%eax
  100401:	85 c0                	test   %eax,%eax
  100403:	75 31                	jne    100436 <tty_putchar+0xdb>
  100405:	a1 20 10 11 00       	mov    0x111020,%eax
  10040a:	85 c0                	test   %eax,%eax
  10040c:	75 0c                	jne    10041a <tty_putchar+0xbf>
  10040e:	c7 05 20 10 11 00 00 	movl   $0x0,0x111020
  100415:	00 00 00 
  100418:	eb 0d                	jmp    100427 <tty_putchar+0xcc>
  10041a:	a1 20 10 11 00       	mov    0x111020,%eax
  10041f:	83 e8 01             	sub    $0x1,%eax
  100422:	a3 20 10 11 00       	mov    %eax,0x111020
  100427:	b8 50 00 00 00       	mov    $0x50,%eax
  10042c:	83 e8 01             	sub    $0x1,%eax
  10042f:	a3 24 10 11 00       	mov    %eax,0x111024
  100434:	eb 0d                	jmp    100443 <tty_putchar+0xe8>
  100436:	a1 24 10 11 00       	mov    0x111024,%eax
  10043b:	83 e8 01             	sub    $0x1,%eax
  10043e:	a3 24 10 11 00       	mov    %eax,0x111024
  100443:	a1 20 10 11 00       	mov    0x111020,%eax
  100448:	ba 50 00 00 00       	mov    $0x50,%edx
  10044d:	0f af d0             	imul   %eax,%edx
  100450:	a1 24 10 11 00       	mov    0x111024,%eax
  100455:	01 d0                	add    %edx,%eax
  100457:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10045a:	8b 15 2c 10 11 00    	mov    0x11102c,%edx
  100460:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100463:	01 c0                	add    %eax,%eax
  100465:	01 d0                	add    %edx,%eax
  100467:	66 c7 00 20 00       	movw   $0x20,(%eax)
  10046c:	e9 97 00 00 00       	jmp    100508 <tty_putchar+0x1ad>
  100471:	a1 20 10 11 00       	mov    0x111020,%eax
  100476:	ba 50 00 00 00       	mov    $0x50,%edx
  10047b:	0f af d0             	imul   %eax,%edx
  10047e:	a1 24 10 11 00       	mov    0x111024,%eax
  100483:	01 d0                	add    %edx,%eax
  100485:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100488:	0f b6 05 28 10 11 00 	movzbl 0x111028,%eax
  10048f:	0f b6 d0             	movzbl %al,%edx
  100492:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100496:	0f b6 c0             	movzbl %al,%eax
  100499:	8b 1d 2c 10 11 00    	mov    0x11102c,%ebx
  10049f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1004a2:	01 c9                	add    %ecx,%ecx
  1004a4:	01 cb                	add    %ecx,%ebx
  1004a6:	83 ec 08             	sub    $0x8,%esp
  1004a9:	52                   	push   %edx
  1004aa:	50                   	push   %eax
  1004ab:	e8 c8 fc ff ff       	call   100178 <vga_entry>
  1004b0:	83 c4 10             	add    $0x10,%esp
  1004b3:	66 89 03             	mov    %ax,(%ebx)
  1004b6:	a1 24 10 11 00       	mov    0x111024,%eax
  1004bb:	83 c0 01             	add    $0x1,%eax
  1004be:	a3 24 10 11 00       	mov    %eax,0x111024
  1004c3:	a1 24 10 11 00       	mov    0x111024,%eax
  1004c8:	ba 50 00 00 00       	mov    $0x50,%edx
  1004cd:	39 d0                	cmp    %edx,%eax
  1004cf:	75 37                	jne    100508 <tty_putchar+0x1ad>
  1004d1:	c7 05 24 10 11 00 00 	movl   $0x0,0x111024
  1004d8:	00 00 00 
  1004db:	a1 20 10 11 00       	mov    0x111020,%eax
  1004e0:	83 c0 01             	add    $0x1,%eax
  1004e3:	a3 20 10 11 00       	mov    %eax,0x111020
  1004e8:	a1 20 10 11 00       	mov    0x111020,%eax
  1004ed:	ba 19 00 00 00       	mov    $0x19,%edx
  1004f2:	39 d0                	cmp    %edx,%eax
  1004f4:	75 12                	jne    100508 <tty_putchar+0x1ad>
  1004f6:	b8 19 00 00 00       	mov    $0x19,%eax
  1004fb:	83 e8 01             	sub    $0x1,%eax
  1004fe:	a3 20 10 11 00       	mov    %eax,0x111020
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
  100558:	e8 1c 93 00 00       	call   109879 <strlen>
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
  100578:	a1 20 10 11 00       	mov    0x111020,%eax
  10057d:	85 c0                	test   %eax,%eax
  10057f:	74 0d                	je     10058e <tty_row_up+0x1c>
  100581:	a1 20 10 11 00       	mov    0x111020,%eax
  100586:	83 e8 01             	sub    $0x1,%eax
  100589:	a3 20 10 11 00       	mov    %eax,0x111020
  10058e:	e8 91 00 00 00       	call   100624 <tty_update_cursor_position>
  100593:	90                   	nop
  100594:	c9                   	leave  
  100595:	c3                   	ret    

00100596 <tty_row_down>:
  100596:	55                   	push   %ebp
  100597:	89 e5                	mov    %esp,%ebp
  100599:	83 ec 08             	sub    $0x8,%esp
  10059c:	a1 20 10 11 00       	mov    0x111020,%eax
  1005a1:	ba 19 00 00 00       	mov    $0x19,%edx
  1005a6:	39 d0                	cmp    %edx,%eax
  1005a8:	73 0d                	jae    1005b7 <tty_row_down+0x21>
  1005aa:	a1 20 10 11 00       	mov    0x111020,%eax
  1005af:	83 c0 01             	add    $0x1,%eax
  1005b2:	a3 20 10 11 00       	mov    %eax,0x111020
  1005b7:	e8 68 00 00 00       	call   100624 <tty_update_cursor_position>
  1005bc:	90                   	nop
  1005bd:	c9                   	leave  
  1005be:	c3                   	ret    

001005bf <tty_column_right>:
  1005bf:	55                   	push   %ebp
  1005c0:	89 e5                	mov    %esp,%ebp
  1005c2:	83 ec 08             	sub    $0x8,%esp
  1005c5:	a1 24 10 11 00       	mov    0x111024,%eax
  1005ca:	ba 50 00 00 00       	mov    $0x50,%edx
  1005cf:	39 d0                	cmp    %edx,%eax
  1005d1:	73 0d                	jae    1005e0 <tty_column_right+0x21>
  1005d3:	a1 24 10 11 00       	mov    0x111024,%eax
  1005d8:	83 c0 01             	add    $0x1,%eax
  1005db:	a3 24 10 11 00       	mov    %eax,0x111024
  1005e0:	e8 3f 00 00 00       	call   100624 <tty_update_cursor_position>
  1005e5:	90                   	nop
  1005e6:	c9                   	leave  
  1005e7:	c3                   	ret    

001005e8 <tty_column_left>:
  1005e8:	55                   	push   %ebp
  1005e9:	89 e5                	mov    %esp,%ebp
  1005eb:	83 ec 08             	sub    $0x8,%esp
  1005ee:	a1 24 10 11 00       	mov    0x111024,%eax
  1005f3:	85 c0                	test   %eax,%eax
  1005f5:	74 0d                	je     100604 <tty_column_left+0x1c>
  1005f7:	a1 24 10 11 00       	mov    0x111024,%eax
  1005fc:	83 e8 01             	sub    $0x1,%eax
  1005ff:	a3 24 10 11 00       	mov    %eax,0x111024
  100604:	e8 1b 00 00 00       	call   100624 <tty_update_cursor_position>
  100609:	90                   	nop
  10060a:	c9                   	leave  
  10060b:	c3                   	ret    

0010060c <tty_reset_column>:
  10060c:	55                   	push   %ebp
  10060d:	89 e5                	mov    %esp,%ebp
  10060f:	83 ec 08             	sub    $0x8,%esp
  100612:	c7 05 24 10 11 00 00 	movl   $0x0,0x111024
  100619:	00 00 00 
  10061c:	e8 03 00 00 00       	call   100624 <tty_update_cursor_position>
  100621:	90                   	nop
  100622:	c9                   	leave  
  100623:	c3                   	ret    

00100624 <tty_update_cursor_position>:
  100624:	55                   	push   %ebp
  100625:	89 e5                	mov    %esp,%ebp
  100627:	83 ec 18             	sub    $0x18,%esp
  10062a:	a1 20 10 11 00       	mov    0x111020,%eax
  10062f:	ba 50 00 00 00       	mov    $0x50,%edx
  100634:	0f af d0             	imul   %eax,%edx
  100637:	a1 24 10 11 00       	mov    0x111024,%eax
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

00100720 <write_tss>:
  100720:	55                   	push   %ebp
  100721:	89 e5                	mov    %esp,%ebp
  100723:	83 ec 28             	sub    $0x28,%esp
  100726:	8b 45 0c             	mov    0xc(%ebp),%eax
  100729:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  10072d:	c7 45 f4 80 10 11 00 	movl   $0x111080,-0xc(%ebp)
  100734:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100737:	83 c0 68             	add    $0x68,%eax
  10073a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10073d:	83 ec 0c             	sub    $0xc,%esp
  100740:	6a 00                	push   $0x0
  100742:	68 e9 00 00 00       	push   $0xe9
  100747:	ff 75 f0             	push   -0x10(%ebp)
  10074a:	ff 75 f4             	push   -0xc(%ebp)
  10074d:	ff 75 08             	push   0x8(%ebp)
  100750:	e8 2b 01 00 00       	call   100880 <gdt_add_entry>
  100755:	83 c4 20             	add    $0x20,%esp
  100758:	83 ec 04             	sub    $0x4,%esp
  10075b:	6a 68                	push   $0x68
  10075d:	6a 00                	push   $0x0
  10075f:	68 80 10 11 00       	push   $0x111080
  100764:	e8 dd 90 00 00       	call   109846 <memset>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
  100770:	a3 88 10 11 00       	mov    %eax,0x111088
  100775:	8b 45 10             	mov    0x10(%ebp),%eax
  100778:	a3 84 10 11 00       	mov    %eax,0x111084
  10077d:	c7 05 cc 10 11 00 0b 	movl   $0xb,0x1110cc
  100784:	00 00 00 
  100787:	c7 05 dc 10 11 00 13 	movl   $0x13,0x1110dc
  10078e:	00 00 00 
  100791:	a1 dc 10 11 00       	mov    0x1110dc,%eax
  100796:	a3 d8 10 11 00       	mov    %eax,0x1110d8
  10079b:	a1 d8 10 11 00       	mov    0x1110d8,%eax
  1007a0:	a3 c8 10 11 00       	mov    %eax,0x1110c8
  1007a5:	a1 c8 10 11 00       	mov    0x1110c8,%eax
  1007aa:	a3 d4 10 11 00       	mov    %eax,0x1110d4
  1007af:	a1 d4 10 11 00       	mov    0x1110d4,%eax
  1007b4:	a3 d0 10 11 00       	mov    %eax,0x1110d0
  1007b9:	90                   	nop
  1007ba:	c9                   	leave  
  1007bb:	c3                   	ret    

001007bc <gdt_init>:
  1007bc:	55                   	push   %ebp
  1007bd:	89 e5                	mov    %esp,%ebp
  1007bf:	83 ec 08             	sub    $0x8,%esp
  1007c2:	b8 40 10 11 00       	mov    $0x111040,%eax
  1007c7:	a3 72 10 11 00       	mov    %eax,0x111072
  1007cc:	66 c7 05 70 10 11 00 	movw   $0x2f,0x111070
  1007d3:	2f 00 
  1007d5:	83 ec 0c             	sub    $0xc,%esp
  1007d8:	6a 00                	push   $0x0
  1007da:	6a 00                	push   $0x0
  1007dc:	6a 00                	push   $0x0
  1007de:	6a 00                	push   $0x0
  1007e0:	6a 00                	push   $0x0
  1007e2:	e8 99 00 00 00       	call   100880 <gdt_add_entry>
  1007e7:	83 c4 20             	add    $0x20,%esp
  1007ea:	83 ec 0c             	sub    $0xc,%esp
  1007ed:	68 cf 00 00 00       	push   $0xcf
  1007f2:	68 9a 00 00 00       	push   $0x9a
  1007f7:	6a ff                	push   $0xffffffff
  1007f9:	6a 00                	push   $0x0
  1007fb:	6a 01                	push   $0x1
  1007fd:	e8 7e 00 00 00       	call   100880 <gdt_add_entry>
  100802:	83 c4 20             	add    $0x20,%esp
  100805:	83 ec 0c             	sub    $0xc,%esp
  100808:	68 cf 00 00 00       	push   $0xcf
  10080d:	68 92 00 00 00       	push   $0x92
  100812:	6a ff                	push   $0xffffffff
  100814:	6a 00                	push   $0x0
  100816:	6a 02                	push   $0x2
  100818:	e8 63 00 00 00       	call   100880 <gdt_add_entry>
  10081d:	83 c4 20             	add    $0x20,%esp
  100820:	83 ec 0c             	sub    $0xc,%esp
  100823:	68 cf 00 00 00       	push   $0xcf
  100828:	68 fa 00 00 00       	push   $0xfa
  10082d:	6a ff                	push   $0xffffffff
  10082f:	6a 00                	push   $0x0
  100831:	6a 03                	push   $0x3
  100833:	e8 48 00 00 00       	call   100880 <gdt_add_entry>
  100838:	83 c4 20             	add    $0x20,%esp
  10083b:	83 ec 0c             	sub    $0xc,%esp
  10083e:	68 cf 00 00 00       	push   $0xcf
  100843:	68 f2 00 00 00       	push   $0xf2
  100848:	6a ff                	push   $0xffffffff
  10084a:	6a 00                	push   $0x0
  10084c:	6a 04                	push   $0x4
  10084e:	e8 2d 00 00 00       	call   100880 <gdt_add_entry>
  100853:	83 c4 20             	add    $0x20,%esp
  100856:	83 ec 04             	sub    $0x4,%esp
  100859:	6a 00                	push   $0x0
  10085b:	6a 10                	push   $0x10
  10085d:	6a 05                	push   $0x5
  10085f:	e8 bc fe ff ff       	call   100720 <write_tss>
  100864:	83 c4 10             	add    $0x10,%esp
  100867:	b8 70 10 11 00       	mov    $0x111070,%eax
  10086c:	83 ec 0c             	sub    $0xc,%esp
  10086f:	50                   	push   %eax
  100870:	e8 10 06 00 00       	call   100e85 <store_gdt>
  100875:	83 c4 10             	add    $0x10,%esp
  100878:	e8 25 06 00 00       	call   100ea2 <store_tss>
  10087d:	90                   	nop
  10087e:	c9                   	leave  
  10087f:	c3                   	ret    

00100880 <gdt_add_entry>:
  100880:	55                   	push   %ebp
  100881:	89 e5                	mov    %esp,%ebp
  100883:	83 ec 08             	sub    $0x8,%esp
  100886:	8b 55 14             	mov    0x14(%ebp),%edx
  100889:	8b 45 18             	mov    0x18(%ebp),%eax
  10088c:	88 55 fc             	mov    %dl,-0x4(%ebp)
  10088f:	88 45 f8             	mov    %al,-0x8(%ebp)
  100892:	8b 45 0c             	mov    0xc(%ebp),%eax
  100895:	89 c2                	mov    %eax,%edx
  100897:	8b 45 08             	mov    0x8(%ebp),%eax
  10089a:	66 89 14 c5 42 10 11 	mov    %dx,0x111042(,%eax,8)
  1008a1:	00 
  1008a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008a5:	c1 e8 10             	shr    $0x10,%eax
  1008a8:	89 c2                	mov    %eax,%edx
  1008aa:	8b 45 08             	mov    0x8(%ebp),%eax
  1008ad:	88 14 c5 44 10 11 00 	mov    %dl,0x111044(,%eax,8)
  1008b4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008b7:	c1 e8 18             	shr    $0x18,%eax
  1008ba:	89 c2                	mov    %eax,%edx
  1008bc:	8b 45 08             	mov    0x8(%ebp),%eax
  1008bf:	88 14 c5 47 10 11 00 	mov    %dl,0x111047(,%eax,8)
  1008c6:	8b 45 10             	mov    0x10(%ebp),%eax
  1008c9:	89 c2                	mov    %eax,%edx
  1008cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1008ce:	66 89 14 c5 40 10 11 	mov    %dx,0x111040(,%eax,8)
  1008d5:	00 
  1008d6:	8b 45 10             	mov    0x10(%ebp),%eax
  1008d9:	c1 e8 10             	shr    $0x10,%eax
  1008dc:	83 e0 0f             	and    $0xf,%eax
  1008df:	89 c2                	mov    %eax,%edx
  1008e1:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  1008e5:	83 e0 f0             	and    $0xfffffff0,%eax
  1008e8:	09 c2                	or     %eax,%edx
  1008ea:	8b 45 08             	mov    0x8(%ebp),%eax
  1008ed:	88 14 c5 46 10 11 00 	mov    %dl,0x111046(,%eax,8)
  1008f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1008f7:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  1008fb:	88 14 c5 45 10 11 00 	mov    %dl,0x111045(,%eax,8)
  100902:	90                   	nop
  100903:	c9                   	leave  
  100904:	c3                   	ret    

00100905 <gdt_set_kernel_stack>:
  100905:	55                   	push   %ebp
  100906:	89 e5                	mov    %esp,%ebp
  100908:	8b 45 08             	mov    0x8(%ebp),%eax
  10090b:	a3 84 10 11 00       	mov    %eax,0x111084
  100910:	90                   	nop
  100911:	5d                   	pop    %ebp
  100912:	c3                   	ret    

00100913 <idt_init>:
  100913:	55                   	push   %ebp
  100914:	89 e5                	mov    %esp,%ebp
  100916:	83 ec 18             	sub    $0x18,%esp
  100919:	b8 f0 10 11 00       	mov    $0x1110f0,%eax
  10091e:	a3 f2 18 11 00       	mov    %eax,0x1118f2
  100923:	66 c7 05 f0 18 11 00 	movw   $0x800,0x1118f0
  10092a:	00 08 
  10092c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100933:	eb 1f                	jmp    100954 <idt_init+0x41>
  100935:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100938:	c1 e0 03             	shl    $0x3,%eax
  10093b:	05 f0 10 11 00       	add    $0x1110f0,%eax
  100940:	83 ec 04             	sub    $0x4,%esp
  100943:	6a 08                	push   $0x8
  100945:	6a 00                	push   $0x0
  100947:	50                   	push   %eax
  100948:	e8 f9 8e 00 00       	call   109846 <memset>
  10094d:	83 c4 10             	add    $0x10,%esp
  100950:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100954:	81 7d f4 ff 00 00 00 	cmpl   $0xff,-0xc(%ebp)
  10095b:	7e d8                	jle    100935 <idt_init+0x22>
  10095d:	b8 b2 0e 10 00       	mov    $0x100eb2,%eax
  100962:	83 ec 04             	sub    $0x4,%esp
  100965:	68 8f 00 00 00       	push   $0x8f
  10096a:	50                   	push   %eax
  10096b:	6a 00                	push   $0x0
  10096d:	e8 af 04 00 00       	call   100e21 <idt_add_entry>
  100972:	83 c4 10             	add    $0x10,%esp
  100975:	b8 bc 0e 10 00       	mov    $0x100ebc,%eax
  10097a:	83 ec 04             	sub    $0x4,%esp
  10097d:	68 8f 00 00 00       	push   $0x8f
  100982:	50                   	push   %eax
  100983:	6a 01                	push   $0x1
  100985:	e8 97 04 00 00       	call   100e21 <idt_add_entry>
  10098a:	83 c4 10             	add    $0x10,%esp
  10098d:	b8 c6 0e 10 00       	mov    $0x100ec6,%eax
  100992:	83 ec 04             	sub    $0x4,%esp
  100995:	68 8f 00 00 00       	push   $0x8f
  10099a:	50                   	push   %eax
  10099b:	6a 02                	push   $0x2
  10099d:	e8 7f 04 00 00       	call   100e21 <idt_add_entry>
  1009a2:	83 c4 10             	add    $0x10,%esp
  1009a5:	b8 d0 0e 10 00       	mov    $0x100ed0,%eax
  1009aa:	83 ec 04             	sub    $0x4,%esp
  1009ad:	68 8f 00 00 00       	push   $0x8f
  1009b2:	50                   	push   %eax
  1009b3:	6a 03                	push   $0x3
  1009b5:	e8 67 04 00 00       	call   100e21 <idt_add_entry>
  1009ba:	83 c4 10             	add    $0x10,%esp
  1009bd:	b8 da 0e 10 00       	mov    $0x100eda,%eax
  1009c2:	83 ec 04             	sub    $0x4,%esp
  1009c5:	68 8f 00 00 00       	push   $0x8f
  1009ca:	50                   	push   %eax
  1009cb:	6a 04                	push   $0x4
  1009cd:	e8 4f 04 00 00       	call   100e21 <idt_add_entry>
  1009d2:	83 c4 10             	add    $0x10,%esp
  1009d5:	b8 e4 0e 10 00       	mov    $0x100ee4,%eax
  1009da:	83 ec 04             	sub    $0x4,%esp
  1009dd:	68 8f 00 00 00       	push   $0x8f
  1009e2:	50                   	push   %eax
  1009e3:	6a 05                	push   $0x5
  1009e5:	e8 37 04 00 00       	call   100e21 <idt_add_entry>
  1009ea:	83 c4 10             	add    $0x10,%esp
  1009ed:	b8 ee 0e 10 00       	mov    $0x100eee,%eax
  1009f2:	83 ec 04             	sub    $0x4,%esp
  1009f5:	68 8f 00 00 00       	push   $0x8f
  1009fa:	50                   	push   %eax
  1009fb:	6a 06                	push   $0x6
  1009fd:	e8 1f 04 00 00       	call   100e21 <idt_add_entry>
  100a02:	83 c4 10             	add    $0x10,%esp
  100a05:	b8 f8 0e 10 00       	mov    $0x100ef8,%eax
  100a0a:	83 ec 04             	sub    $0x4,%esp
  100a0d:	68 8f 00 00 00       	push   $0x8f
  100a12:	50                   	push   %eax
  100a13:	6a 07                	push   $0x7
  100a15:	e8 07 04 00 00       	call   100e21 <idt_add_entry>
  100a1a:	83 c4 10             	add    $0x10,%esp
  100a1d:	b8 02 0f 10 00       	mov    $0x100f02,%eax
  100a22:	83 ec 04             	sub    $0x4,%esp
  100a25:	68 8f 00 00 00       	push   $0x8f
  100a2a:	50                   	push   %eax
  100a2b:	6a 08                	push   $0x8
  100a2d:	e8 ef 03 00 00       	call   100e21 <idt_add_entry>
  100a32:	83 c4 10             	add    $0x10,%esp
  100a35:	b8 0c 0f 10 00       	mov    $0x100f0c,%eax
  100a3a:	83 ec 04             	sub    $0x4,%esp
  100a3d:	68 8f 00 00 00       	push   $0x8f
  100a42:	50                   	push   %eax
  100a43:	6a 09                	push   $0x9
  100a45:	e8 d7 03 00 00       	call   100e21 <idt_add_entry>
  100a4a:	83 c4 10             	add    $0x10,%esp
  100a4d:	b8 16 0f 10 00       	mov    $0x100f16,%eax
  100a52:	83 ec 04             	sub    $0x4,%esp
  100a55:	68 8f 00 00 00       	push   $0x8f
  100a5a:	50                   	push   %eax
  100a5b:	6a 0a                	push   $0xa
  100a5d:	e8 bf 03 00 00       	call   100e21 <idt_add_entry>
  100a62:	83 c4 10             	add    $0x10,%esp
  100a65:	b8 20 0f 10 00       	mov    $0x100f20,%eax
  100a6a:	83 ec 04             	sub    $0x4,%esp
  100a6d:	68 8f 00 00 00       	push   $0x8f
  100a72:	50                   	push   %eax
  100a73:	6a 0b                	push   $0xb
  100a75:	e8 a7 03 00 00       	call   100e21 <idt_add_entry>
  100a7a:	83 c4 10             	add    $0x10,%esp
  100a7d:	b8 2a 0f 10 00       	mov    $0x100f2a,%eax
  100a82:	83 ec 04             	sub    $0x4,%esp
  100a85:	68 8f 00 00 00       	push   $0x8f
  100a8a:	50                   	push   %eax
  100a8b:	6a 0c                	push   $0xc
  100a8d:	e8 8f 03 00 00       	call   100e21 <idt_add_entry>
  100a92:	83 c4 10             	add    $0x10,%esp
  100a95:	b8 34 0f 10 00       	mov    $0x100f34,%eax
  100a9a:	83 ec 04             	sub    $0x4,%esp
  100a9d:	68 8f 00 00 00       	push   $0x8f
  100aa2:	50                   	push   %eax
  100aa3:	6a 0d                	push   $0xd
  100aa5:	e8 77 03 00 00       	call   100e21 <idt_add_entry>
  100aaa:	83 c4 10             	add    $0x10,%esp
  100aad:	b8 3e 0f 10 00       	mov    $0x100f3e,%eax
  100ab2:	83 ec 04             	sub    $0x4,%esp
  100ab5:	68 8f 00 00 00       	push   $0x8f
  100aba:	50                   	push   %eax
  100abb:	6a 0e                	push   $0xe
  100abd:	e8 5f 03 00 00       	call   100e21 <idt_add_entry>
  100ac2:	83 c4 10             	add    $0x10,%esp
  100ac5:	b8 46 0f 10 00       	mov    $0x100f46,%eax
  100aca:	83 ec 04             	sub    $0x4,%esp
  100acd:	68 8f 00 00 00       	push   $0x8f
  100ad2:	50                   	push   %eax
  100ad3:	6a 0f                	push   $0xf
  100ad5:	e8 47 03 00 00       	call   100e21 <idt_add_entry>
  100ada:	83 c4 10             	add    $0x10,%esp
  100add:	b8 50 0f 10 00       	mov    $0x100f50,%eax
  100ae2:	83 ec 04             	sub    $0x4,%esp
  100ae5:	68 8f 00 00 00       	push   $0x8f
  100aea:	50                   	push   %eax
  100aeb:	6a 10                	push   $0x10
  100aed:	e8 2f 03 00 00       	call   100e21 <idt_add_entry>
  100af2:	83 c4 10             	add    $0x10,%esp
  100af5:	b8 5a 0f 10 00       	mov    $0x100f5a,%eax
  100afa:	83 ec 04             	sub    $0x4,%esp
  100afd:	68 8f 00 00 00       	push   $0x8f
  100b02:	50                   	push   %eax
  100b03:	6a 11                	push   $0x11
  100b05:	e8 17 03 00 00       	call   100e21 <idt_add_entry>
  100b0a:	83 c4 10             	add    $0x10,%esp
  100b0d:	b8 62 0f 10 00       	mov    $0x100f62,%eax
  100b12:	83 ec 04             	sub    $0x4,%esp
  100b15:	68 8f 00 00 00       	push   $0x8f
  100b1a:	50                   	push   %eax
  100b1b:	6a 12                	push   $0x12
  100b1d:	e8 ff 02 00 00       	call   100e21 <idt_add_entry>
  100b22:	83 c4 10             	add    $0x10,%esp
  100b25:	b8 6c 0f 10 00       	mov    $0x100f6c,%eax
  100b2a:	83 ec 04             	sub    $0x4,%esp
  100b2d:	68 8f 00 00 00       	push   $0x8f
  100b32:	50                   	push   %eax
  100b33:	6a 13                	push   $0x13
  100b35:	e8 e7 02 00 00       	call   100e21 <idt_add_entry>
  100b3a:	83 c4 10             	add    $0x10,%esp
  100b3d:	b8 76 0f 10 00       	mov    $0x100f76,%eax
  100b42:	83 ec 04             	sub    $0x4,%esp
  100b45:	68 8f 00 00 00       	push   $0x8f
  100b4a:	50                   	push   %eax
  100b4b:	6a 14                	push   $0x14
  100b4d:	e8 cf 02 00 00       	call   100e21 <idt_add_entry>
  100b52:	83 c4 10             	add    $0x10,%esp
  100b55:	b8 80 0f 10 00       	mov    $0x100f80,%eax
  100b5a:	83 ec 04             	sub    $0x4,%esp
  100b5d:	68 8f 00 00 00       	push   $0x8f
  100b62:	50                   	push   %eax
  100b63:	6a 15                	push   $0x15
  100b65:	e8 b7 02 00 00       	call   100e21 <idt_add_entry>
  100b6a:	83 c4 10             	add    $0x10,%esp
  100b6d:	b8 88 0f 10 00       	mov    $0x100f88,%eax
  100b72:	83 ec 04             	sub    $0x4,%esp
  100b75:	68 8f 00 00 00       	push   $0x8f
  100b7a:	50                   	push   %eax
  100b7b:	6a 16                	push   $0x16
  100b7d:	e8 9f 02 00 00       	call   100e21 <idt_add_entry>
  100b82:	83 c4 10             	add    $0x10,%esp
  100b85:	b8 92 0f 10 00       	mov    $0x100f92,%eax
  100b8a:	83 ec 04             	sub    $0x4,%esp
  100b8d:	68 8f 00 00 00       	push   $0x8f
  100b92:	50                   	push   %eax
  100b93:	6a 17                	push   $0x17
  100b95:	e8 87 02 00 00       	call   100e21 <idt_add_entry>
  100b9a:	83 c4 10             	add    $0x10,%esp
  100b9d:	b8 9c 0f 10 00       	mov    $0x100f9c,%eax
  100ba2:	83 ec 04             	sub    $0x4,%esp
  100ba5:	68 8f 00 00 00       	push   $0x8f
  100baa:	50                   	push   %eax
  100bab:	6a 18                	push   $0x18
  100bad:	e8 6f 02 00 00       	call   100e21 <idt_add_entry>
  100bb2:	83 c4 10             	add    $0x10,%esp
  100bb5:	b8 a6 0f 10 00       	mov    $0x100fa6,%eax
  100bba:	83 ec 04             	sub    $0x4,%esp
  100bbd:	68 8f 00 00 00       	push   $0x8f
  100bc2:	50                   	push   %eax
  100bc3:	6a 19                	push   $0x19
  100bc5:	e8 57 02 00 00       	call   100e21 <idt_add_entry>
  100bca:	83 c4 10             	add    $0x10,%esp
  100bcd:	b8 b0 0f 10 00       	mov    $0x100fb0,%eax
  100bd2:	83 ec 04             	sub    $0x4,%esp
  100bd5:	68 8f 00 00 00       	push   $0x8f
  100bda:	50                   	push   %eax
  100bdb:	6a 1a                	push   $0x1a
  100bdd:	e8 3f 02 00 00       	call   100e21 <idt_add_entry>
  100be2:	83 c4 10             	add    $0x10,%esp
  100be5:	b8 ba 0f 10 00       	mov    $0x100fba,%eax
  100bea:	83 ec 04             	sub    $0x4,%esp
  100bed:	68 8f 00 00 00       	push   $0x8f
  100bf2:	50                   	push   %eax
  100bf3:	6a 1b                	push   $0x1b
  100bf5:	e8 27 02 00 00       	call   100e21 <idt_add_entry>
  100bfa:	83 c4 10             	add    $0x10,%esp
  100bfd:	b8 c4 0f 10 00       	mov    $0x100fc4,%eax
  100c02:	83 ec 04             	sub    $0x4,%esp
  100c05:	68 8f 00 00 00       	push   $0x8f
  100c0a:	50                   	push   %eax
  100c0b:	6a 1c                	push   $0x1c
  100c0d:	e8 0f 02 00 00       	call   100e21 <idt_add_entry>
  100c12:	83 c4 10             	add    $0x10,%esp
  100c15:	b8 ce 0f 10 00       	mov    $0x100fce,%eax
  100c1a:	83 ec 04             	sub    $0x4,%esp
  100c1d:	68 8f 00 00 00       	push   $0x8f
  100c22:	50                   	push   %eax
  100c23:	6a 1d                	push   $0x1d
  100c25:	e8 f7 01 00 00       	call   100e21 <idt_add_entry>
  100c2a:	83 c4 10             	add    $0x10,%esp
  100c2d:	b8 d8 0f 10 00       	mov    $0x100fd8,%eax
  100c32:	83 ec 04             	sub    $0x4,%esp
  100c35:	68 8f 00 00 00       	push   $0x8f
  100c3a:	50                   	push   %eax
  100c3b:	6a 1e                	push   $0x1e
  100c3d:	e8 df 01 00 00       	call   100e21 <idt_add_entry>
  100c42:	83 c4 10             	add    $0x10,%esp
  100c45:	b8 e2 0f 10 00       	mov    $0x100fe2,%eax
  100c4a:	83 ec 04             	sub    $0x4,%esp
  100c4d:	68 8f 00 00 00       	push   $0x8f
  100c52:	50                   	push   %eax
  100c53:	6a 1f                	push   $0x1f
  100c55:	e8 c7 01 00 00       	call   100e21 <idt_add_entry>
  100c5a:	83 c4 10             	add    $0x10,%esp
  100c5d:	b8 00 10 10 00       	mov    $0x101000,%eax
  100c62:	83 ec 04             	sub    $0x4,%esp
  100c65:	68 8e 00 00 00       	push   $0x8e
  100c6a:	50                   	push   %eax
  100c6b:	6a 20                	push   $0x20
  100c6d:	e8 af 01 00 00       	call   100e21 <idt_add_entry>
  100c72:	83 c4 10             	add    $0x10,%esp
  100c75:	b8 0a 10 10 00       	mov    $0x10100a,%eax
  100c7a:	83 ec 04             	sub    $0x4,%esp
  100c7d:	68 8e 00 00 00       	push   $0x8e
  100c82:	50                   	push   %eax
  100c83:	6a 21                	push   $0x21
  100c85:	e8 97 01 00 00       	call   100e21 <idt_add_entry>
  100c8a:	83 c4 10             	add    $0x10,%esp
  100c8d:	b8 14 10 10 00       	mov    $0x101014,%eax
  100c92:	83 ec 04             	sub    $0x4,%esp
  100c95:	68 8e 00 00 00       	push   $0x8e
  100c9a:	50                   	push   %eax
  100c9b:	6a 22                	push   $0x22
  100c9d:	e8 7f 01 00 00       	call   100e21 <idt_add_entry>
  100ca2:	83 c4 10             	add    $0x10,%esp
  100ca5:	b8 1e 10 10 00       	mov    $0x10101e,%eax
  100caa:	83 ec 04             	sub    $0x4,%esp
  100cad:	68 8e 00 00 00       	push   $0x8e
  100cb2:	50                   	push   %eax
  100cb3:	6a 23                	push   $0x23
  100cb5:	e8 67 01 00 00       	call   100e21 <idt_add_entry>
  100cba:	83 c4 10             	add    $0x10,%esp
  100cbd:	b8 28 10 10 00       	mov    $0x101028,%eax
  100cc2:	83 ec 04             	sub    $0x4,%esp
  100cc5:	68 8e 00 00 00       	push   $0x8e
  100cca:	50                   	push   %eax
  100ccb:	6a 24                	push   $0x24
  100ccd:	e8 4f 01 00 00       	call   100e21 <idt_add_entry>
  100cd2:	83 c4 10             	add    $0x10,%esp
  100cd5:	b8 32 10 10 00       	mov    $0x101032,%eax
  100cda:	83 ec 04             	sub    $0x4,%esp
  100cdd:	68 8e 00 00 00       	push   $0x8e
  100ce2:	50                   	push   %eax
  100ce3:	6a 25                	push   $0x25
  100ce5:	e8 37 01 00 00       	call   100e21 <idt_add_entry>
  100cea:	83 c4 10             	add    $0x10,%esp
  100ced:	b8 3c 10 10 00       	mov    $0x10103c,%eax
  100cf2:	83 ec 04             	sub    $0x4,%esp
  100cf5:	68 8e 00 00 00       	push   $0x8e
  100cfa:	50                   	push   %eax
  100cfb:	6a 26                	push   $0x26
  100cfd:	e8 1f 01 00 00       	call   100e21 <idt_add_entry>
  100d02:	83 c4 10             	add    $0x10,%esp
  100d05:	b8 46 10 10 00       	mov    $0x101046,%eax
  100d0a:	83 ec 04             	sub    $0x4,%esp
  100d0d:	68 8e 00 00 00       	push   $0x8e
  100d12:	50                   	push   %eax
  100d13:	6a 27                	push   $0x27
  100d15:	e8 07 01 00 00       	call   100e21 <idt_add_entry>
  100d1a:	83 c4 10             	add    $0x10,%esp
  100d1d:	b8 50 10 10 00       	mov    $0x101050,%eax
  100d22:	83 ec 04             	sub    $0x4,%esp
  100d25:	68 8e 00 00 00       	push   $0x8e
  100d2a:	50                   	push   %eax
  100d2b:	6a 28                	push   $0x28
  100d2d:	e8 ef 00 00 00       	call   100e21 <idt_add_entry>
  100d32:	83 c4 10             	add    $0x10,%esp
  100d35:	b8 5a 10 10 00       	mov    $0x10105a,%eax
  100d3a:	83 ec 04             	sub    $0x4,%esp
  100d3d:	68 8e 00 00 00       	push   $0x8e
  100d42:	50                   	push   %eax
  100d43:	6a 29                	push   $0x29
  100d45:	e8 d7 00 00 00       	call   100e21 <idt_add_entry>
  100d4a:	83 c4 10             	add    $0x10,%esp
  100d4d:	b8 64 10 10 00       	mov    $0x101064,%eax
  100d52:	83 ec 04             	sub    $0x4,%esp
  100d55:	68 8e 00 00 00       	push   $0x8e
  100d5a:	50                   	push   %eax
  100d5b:	6a 2a                	push   $0x2a
  100d5d:	e8 bf 00 00 00       	call   100e21 <idt_add_entry>
  100d62:	83 c4 10             	add    $0x10,%esp
  100d65:	b8 6e 10 10 00       	mov    $0x10106e,%eax
  100d6a:	83 ec 04             	sub    $0x4,%esp
  100d6d:	68 8e 00 00 00       	push   $0x8e
  100d72:	50                   	push   %eax
  100d73:	6a 2b                	push   $0x2b
  100d75:	e8 a7 00 00 00       	call   100e21 <idt_add_entry>
  100d7a:	83 c4 10             	add    $0x10,%esp
  100d7d:	b8 78 10 10 00       	mov    $0x101078,%eax
  100d82:	83 ec 04             	sub    $0x4,%esp
  100d85:	68 8e 00 00 00       	push   $0x8e
  100d8a:	50                   	push   %eax
  100d8b:	6a 2c                	push   $0x2c
  100d8d:	e8 8f 00 00 00       	call   100e21 <idt_add_entry>
  100d92:	83 c4 10             	add    $0x10,%esp
  100d95:	b8 82 10 10 00       	mov    $0x101082,%eax
  100d9a:	83 ec 04             	sub    $0x4,%esp
  100d9d:	68 8e 00 00 00       	push   $0x8e
  100da2:	50                   	push   %eax
  100da3:	6a 2d                	push   $0x2d
  100da5:	e8 77 00 00 00       	call   100e21 <idt_add_entry>
  100daa:	83 c4 10             	add    $0x10,%esp
  100dad:	b8 8c 10 10 00       	mov    $0x10108c,%eax
  100db2:	83 ec 04             	sub    $0x4,%esp
  100db5:	68 8e 00 00 00       	push   $0x8e
  100dba:	50                   	push   %eax
  100dbb:	6a 2e                	push   $0x2e
  100dbd:	e8 5f 00 00 00       	call   100e21 <idt_add_entry>
  100dc2:	83 c4 10             	add    $0x10,%esp
  100dc5:	b8 96 10 10 00       	mov    $0x101096,%eax
  100dca:	83 ec 04             	sub    $0x4,%esp
  100dcd:	68 8e 00 00 00       	push   $0x8e
  100dd2:	50                   	push   %eax
  100dd3:	6a 2f                	push   $0x2f
  100dd5:	e8 47 00 00 00       	call   100e21 <idt_add_entry>
  100dda:	83 c4 10             	add    $0x10,%esp
  100ddd:	b8 ec 0f 10 00       	mov    $0x100fec,%eax
  100de2:	83 ec 04             	sub    $0x4,%esp
  100de5:	68 8f 00 00 00       	push   $0x8f
  100dea:	50                   	push   %eax
  100deb:	6a 50                	push   $0x50
  100ded:	e8 2f 00 00 00       	call   100e21 <idt_add_entry>
  100df2:	83 c4 10             	add    $0x10,%esp
  100df5:	b8 f6 0f 10 00       	mov    $0x100ff6,%eax
  100dfa:	83 ec 04             	sub    $0x4,%esp
  100dfd:	68 8f 00 00 00       	push   $0x8f
  100e02:	50                   	push   %eax
  100e03:	6a 51                	push   $0x51
  100e05:	e8 17 00 00 00       	call   100e21 <idt_add_entry>
  100e0a:	83 c4 10             	add    $0x10,%esp
  100e0d:	b8 f0 18 11 00       	mov    $0x1118f0,%eax
  100e12:	83 ec 0c             	sub    $0xc,%esp
  100e15:	50                   	push   %eax
  100e16:	e8 8f 00 00 00       	call   100eaa <store_idt>
  100e1b:	83 c4 10             	add    $0x10,%esp
  100e1e:	90                   	nop
  100e1f:	c9                   	leave  
  100e20:	c3                   	ret    

00100e21 <idt_add_entry>:
  100e21:	55                   	push   %ebp
  100e22:	89 e5                	mov    %esp,%ebp
  100e24:	83 ec 08             	sub    $0x8,%esp
  100e27:	8b 55 08             	mov    0x8(%ebp),%edx
  100e2a:	8b 45 10             	mov    0x10(%ebp),%eax
  100e2d:	88 55 fc             	mov    %dl,-0x4(%ebp)
  100e30:	88 45 f8             	mov    %al,-0x8(%ebp)
  100e33:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e37:	8b 55 0c             	mov    0xc(%ebp),%edx
  100e3a:	66 89 14 c5 f0 10 11 	mov    %dx,0x1110f0(,%eax,8)
  100e41:	00 
  100e42:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e45:	c1 e8 10             	shr    $0x10,%eax
  100e48:	89 c2                	mov    %eax,%edx
  100e4a:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e4e:	66 89 14 c5 f6 10 11 	mov    %dx,0x1110f6(,%eax,8)
  100e55:	00 
  100e56:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e5a:	66 c7 04 c5 f2 10 11 	movw   $0x8,0x1110f2(,%eax,8)
  100e61:	00 08 00 
  100e64:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e68:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
  100e6c:	83 ca 60             	or     $0x60,%edx
  100e6f:	88 14 c5 f5 10 11 00 	mov    %dl,0x1110f5(,%eax,8)
  100e76:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100e7a:	c6 04 c5 f4 10 11 00 	movb   $0x0,0x1110f4(,%eax,8)
  100e81:	00 
  100e82:	90                   	nop
  100e83:	c9                   	leave  
  100e84:	c3                   	ret    

00100e85 <store_gdt>:
  100e85:	8b 44 24 04          	mov    0x4(%esp),%eax
  100e89:	0f 01 10             	lgdtl  (%eax)
  100e8c:	66 b8 10 00          	mov    $0x10,%ax
  100e90:	8e d8                	mov    %eax,%ds
  100e92:	8e c0                	mov    %eax,%es
  100e94:	8e e0                	mov    %eax,%fs
  100e96:	8e e8                	mov    %eax,%gs
  100e98:	8e d0                	mov    %eax,%ss
  100e9a:	ea a1 0e 10 00 08 00 	ljmp   $0x8,$0x100ea1

00100ea1 <flush>:
  100ea1:	c3                   	ret    

00100ea2 <store_tss>:
  100ea2:	66 b8 2b 00          	mov    $0x2b,%ax
  100ea6:	0f 00 d8             	ltr    %ax
  100ea9:	c3                   	ret    

00100eaa <store_idt>:
  100eaa:	8b 44 24 04          	mov    0x4(%esp),%eax
  100eae:	0f 01 18             	lidtl  (%eax)
  100eb1:	c3                   	ret    

00100eb2 <isr0_entry_point>:
  100eb2:	fa                   	cli    
  100eb3:	6a 00                	push   $0x0
  100eb5:	6a 00                	push   $0x0
  100eb7:	e9 e4 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100ebc <isr1_entry_point>:
  100ebc:	fa                   	cli    
  100ebd:	6a 00                	push   $0x0
  100ebf:	6a 01                	push   $0x1
  100ec1:	e9 da 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100ec6 <isr2_entry_point>:
  100ec6:	fa                   	cli    
  100ec7:	6a 00                	push   $0x0
  100ec9:	6a 02                	push   $0x2
  100ecb:	e9 d0 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100ed0 <isr3_entry_point>:
  100ed0:	fa                   	cli    
  100ed1:	6a 00                	push   $0x0
  100ed3:	6a 03                	push   $0x3
  100ed5:	e9 c6 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100eda <isr4_entry_point>:
  100eda:	fa                   	cli    
  100edb:	6a 00                	push   $0x0
  100edd:	6a 04                	push   $0x4
  100edf:	e9 bc 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100ee4 <isr5_entry_point>:
  100ee4:	fa                   	cli    
  100ee5:	6a 00                	push   $0x0
  100ee7:	6a 05                	push   $0x5
  100ee9:	e9 b2 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100eee <isr6_entry_point>:
  100eee:	fa                   	cli    
  100eef:	6a 17                	push   $0x17
  100ef1:	6a 06                	push   $0x6
  100ef3:	e9 a8 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100ef8 <isr7_entry_point>:
  100ef8:	fa                   	cli    
  100ef9:	6a 00                	push   $0x0
  100efb:	6a 07                	push   $0x7
  100efd:	e9 9e 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f02 <isr8_entry_point>:
  100f02:	fa                   	cli    
  100f03:	6a 00                	push   $0x0
  100f05:	6a 08                	push   $0x8
  100f07:	e9 94 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f0c <isr9_entry_point>:
  100f0c:	fa                   	cli    
  100f0d:	6a 00                	push   $0x0
  100f0f:	6a 09                	push   $0x9
  100f11:	e9 8a 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f16 <isr10_entry_point>:
  100f16:	fa                   	cli    
  100f17:	6a 00                	push   $0x0
  100f19:	6a 0a                	push   $0xa
  100f1b:	e9 80 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f20 <isr11_entry_point>:
  100f20:	fa                   	cli    
  100f21:	6a 00                	push   $0x0
  100f23:	6a 0b                	push   $0xb
  100f25:	e9 76 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f2a <isr12_entry_point>:
  100f2a:	fa                   	cli    
  100f2b:	6a 00                	push   $0x0
  100f2d:	6a 0c                	push   $0xc
  100f2f:	e9 6c 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f34 <isr13_entry_point>:
  100f34:	fa                   	cli    
  100f35:	6a 00                	push   $0x0
  100f37:	6a 0d                	push   $0xd
  100f39:	e9 62 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f3e <isr14_entry_point>:
  100f3e:	fa                   	cli    
  100f3f:	6a 0e                	push   $0xe
  100f41:	e9 5a 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f46 <isr15_entry_point>:
  100f46:	fa                   	cli    
  100f47:	6a 00                	push   $0x0
  100f49:	6a 0f                	push   $0xf
  100f4b:	e9 50 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f50 <isr16_entry_point>:
  100f50:	fa                   	cli    
  100f51:	6a 00                	push   $0x0
  100f53:	6a 10                	push   $0x10
  100f55:	e9 46 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f5a <isr17_entry_point>:
  100f5a:	fa                   	cli    
  100f5b:	6a 11                	push   $0x11
  100f5d:	e9 3e 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f62 <isr18_entry_point>:
  100f62:	fa                   	cli    
  100f63:	6a 00                	push   $0x0
  100f65:	6a 12                	push   $0x12
  100f67:	e9 34 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f6c <isr19_entry_point>:
  100f6c:	fa                   	cli    
  100f6d:	6a 00                	push   $0x0
  100f6f:	6a 13                	push   $0x13
  100f71:	e9 2a 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f76 <isr20_entry_point>:
  100f76:	fa                   	cli    
  100f77:	6a 00                	push   $0x0
  100f79:	6a 14                	push   $0x14
  100f7b:	e9 20 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f80 <isr21_entry_point>:
  100f80:	fa                   	cli    
  100f81:	6a 15                	push   $0x15
  100f83:	e9 18 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f88 <isr22_entry_point>:
  100f88:	fa                   	cli    
  100f89:	6a 00                	push   $0x0
  100f8b:	6a 16                	push   $0x16
  100f8d:	e9 0e 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f92 <isr23_entry_point>:
  100f92:	fa                   	cli    
  100f93:	6a 00                	push   $0x0
  100f95:	6a 17                	push   $0x17
  100f97:	e9 04 01 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100f9c <isr24_entry_point>:
  100f9c:	fa                   	cli    
  100f9d:	6a 00                	push   $0x0
  100f9f:	6a 18                	push   $0x18
  100fa1:	e9 fa 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fa6 <isr25_entry_point>:
  100fa6:	fa                   	cli    
  100fa7:	6a 00                	push   $0x0
  100fa9:	6a 19                	push   $0x19
  100fab:	e9 f0 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fb0 <isr26_entry_point>:
  100fb0:	fa                   	cli    
  100fb1:	6a 00                	push   $0x0
  100fb3:	6a 1a                	push   $0x1a
  100fb5:	e9 e6 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fba <isr27_entry_point>:
  100fba:	fa                   	cli    
  100fbb:	6a 00                	push   $0x0
  100fbd:	6a 1b                	push   $0x1b
  100fbf:	e9 dc 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fc4 <isr28_entry_point>:
  100fc4:	fa                   	cli    
  100fc5:	6a 00                	push   $0x0
  100fc7:	6a 1c                	push   $0x1c
  100fc9:	e9 d2 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fce <isr29_entry_point>:
  100fce:	fa                   	cli    
  100fcf:	6a 00                	push   $0x0
  100fd1:	6a 1d                	push   $0x1d
  100fd3:	e9 c8 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fd8 <isr30_entry_point>:
  100fd8:	fa                   	cli    
  100fd9:	6a 00                	push   $0x0
  100fdb:	6a 1e                	push   $0x1e
  100fdd:	e9 be 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fe2 <isr31_entry_point>:
  100fe2:	fa                   	cli    
  100fe3:	6a 00                	push   $0x0
  100fe5:	6a 1f                	push   $0x1f
  100fe7:	e9 b4 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100fec <isr80_entry_point>:
  100fec:	fa                   	cli    
  100fed:	6a 00                	push   $0x0
  100fef:	6a 50                	push   $0x50
  100ff1:	e9 aa 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00100ff6 <isr81_entry_point>:
  100ff6:	fa                   	cli    
  100ff7:	6a 00                	push   $0x0
  100ff9:	6a 51                	push   $0x51
  100ffb:	e9 a0 00 00 00       	jmp    1010a0 <ll_int_dispatcher>

00101000 <irq0_entry_point>:
  101000:	fa                   	cli    
  101001:	6a 00                	push   $0x0
  101003:	6a 20                	push   $0x20
  101005:	e9 bb 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

0010100a <irq1_entry_point>:
  10100a:	fa                   	cli    
  10100b:	6a 00                	push   $0x0
  10100d:	6a 21                	push   $0x21
  10100f:	e9 b1 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101014 <irq2_entry_point>:
  101014:	fa                   	cli    
  101015:	6a 00                	push   $0x0
  101017:	6a 22                	push   $0x22
  101019:	e9 a7 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

0010101e <irq3_entry_point>:
  10101e:	fa                   	cli    
  10101f:	6a 00                	push   $0x0
  101021:	6a 23                	push   $0x23
  101023:	e9 9d 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101028 <irq4_entry_point>:
  101028:	fa                   	cli    
  101029:	6a 00                	push   $0x0
  10102b:	6a 24                	push   $0x24
  10102d:	e9 93 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101032 <irq5_entry_point>:
  101032:	fa                   	cli    
  101033:	6a 00                	push   $0x0
  101035:	6a 25                	push   $0x25
  101037:	e9 89 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

0010103c <irq6_entry_point>:
  10103c:	fa                   	cli    
  10103d:	6a 00                	push   $0x0
  10103f:	6a 26                	push   $0x26
  101041:	e9 7f 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101046 <irq7_entry_point>:
  101046:	fa                   	cli    
  101047:	6a 00                	push   $0x0
  101049:	6a 27                	push   $0x27
  10104b:	e9 75 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101050 <irq8_entry_point>:
  101050:	fa                   	cli    
  101051:	6a 00                	push   $0x0
  101053:	6a 28                	push   $0x28
  101055:	e9 6b 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

0010105a <irq9_entry_point>:
  10105a:	fa                   	cli    
  10105b:	6a 00                	push   $0x0
  10105d:	6a 29                	push   $0x29
  10105f:	e9 61 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101064 <irq10_entry_point>:
  101064:	fa                   	cli    
  101065:	6a 00                	push   $0x0
  101067:	6a 2a                	push   $0x2a
  101069:	e9 57 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

0010106e <irq11_entry_point>:
  10106e:	fa                   	cli    
  10106f:	6a 00                	push   $0x0
  101071:	6a 2b                	push   $0x2b
  101073:	e9 4d 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101078 <irq12_entry_point>:
  101078:	fa                   	cli    
  101079:	6a 00                	push   $0x0
  10107b:	6a 2c                	push   $0x2c
  10107d:	e9 43 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101082 <irq13_entry_point>:
  101082:	fa                   	cli    
  101083:	6a 00                	push   $0x0
  101085:	6a 2d                	push   $0x2d
  101087:	e9 39 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

0010108c <irq14_entry_point>:
  10108c:	fa                   	cli    
  10108d:	6a 00                	push   $0x0
  10108f:	6a 2e                	push   $0x2e
  101091:	e9 2f 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

00101096 <irq15_entry_point>:
  101096:	fa                   	cli    
  101097:	6a 00                	push   $0x0
  101099:	6a 2f                	push   $0x2f
  10109b:	e9 25 00 00 00       	jmp    1010c5 <ll_irq_dispatcher>

001010a0 <ll_int_dispatcher>:
  1010a0:	60                   	pusha  
  1010a1:	66 8c d8             	mov    %ds,%ax
  1010a4:	50                   	push   %eax
  1010a5:	66 b8 10 00          	mov    $0x10,%ax
  1010a9:	8e d8                	mov    %eax,%ds
  1010ab:	8e c0                	mov    %eax,%es
  1010ad:	8e e0                	mov    %eax,%fs
  1010af:	8e e8                	mov    %eax,%gs
  1010b1:	e8 7e 01 00 00       	call   101234 <hl_int_dispatcher>
  1010b6:	58                   	pop    %eax
  1010b7:	8e d8                	mov    %eax,%ds
  1010b9:	8e c0                	mov    %eax,%es
  1010bb:	8e e0                	mov    %eax,%fs
  1010bd:	8e e8                	mov    %eax,%gs
  1010bf:	61                   	popa   
  1010c0:	83 c4 08             	add    $0x8,%esp
  1010c3:	fb                   	sti    
  1010c4:	cf                   	iret   

001010c5 <ll_irq_dispatcher>:
  1010c5:	60                   	pusha  
  1010c6:	66 8c d8             	mov    %ds,%ax
  1010c9:	50                   	push   %eax
  1010ca:	66 b8 10 00          	mov    $0x10,%ax
  1010ce:	8e d8                	mov    %eax,%ds
  1010d0:	8e c0                	mov    %eax,%es
  1010d2:	8e e0                	mov    %eax,%fs
  1010d4:	8e e8                	mov    %eax,%gs
  1010d6:	e8 a4 02 00 00       	call   10137f <hl_irq_dispatcher>
  1010db:	58                   	pop    %eax
  1010dc:	8e d8                	mov    %eax,%ds
  1010de:	8e c0                	mov    %eax,%es
  1010e0:	8e e0                	mov    %eax,%fs
  1010e2:	8e e8                	mov    %eax,%gs
  1010e4:	61                   	popa   
  1010e5:	83 c4 08             	add    $0x8,%esp
  1010e8:	fb                   	sti    
  1010e9:	cf                   	iret   

001010ea <cpuid_get_model>:
  1010ea:	55                   	push   %ebp
  1010eb:	89 e5                	mov    %esp,%ebp
  1010ed:	53                   	push   %ebx
  1010ee:	83 ec 10             	sub    $0x10,%esp
  1010f1:	b8 00 00 00 00       	mov    $0x0,%eax
  1010f6:	0f a2                	cpuid  
  1010f8:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1010fb:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  1010fe:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  101101:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101104:	8b 45 08             	mov    0x8(%ebp),%eax
  101107:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10110a:	89 10                	mov    %edx,(%eax)
  10110c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10110f:	8b 55 ec             	mov    -0x14(%ebp),%edx
  101112:	89 10                	mov    %edx,(%eax)
  101114:	8b 45 10             	mov    0x10(%ebp),%eax
  101117:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10111a:	89 10                	mov    %edx,(%eax)
  10111c:	90                   	nop
  10111d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101120:	c9                   	leave  
  101121:	c3                   	ret    

00101122 <cpuid_supported>:
  101122:	9c                   	pushf  
  101123:	9c                   	pushf  
  101124:	81 34 24 00 00 20 00 	xorl   $0x200000,(%esp)
  10112b:	9d                   	popf   
  10112c:	9c                   	pushf  
  10112d:	58                   	pop    %eax
  10112e:	31 04 24             	xor    %eax,(%esp)
  101131:	9d                   	popf   
  101132:	25 00 00 20 00       	and    $0x200000,%eax
  101137:	c3                   	ret    

00101138 <enable_paging>:
  101138:	55                   	push   %ebp
  101139:	89 e5                	mov    %esp,%ebp
  10113b:	0f 20 c0             	mov    %cr0,%eax
  10113e:	0d 00 00 00 80       	or     $0x80000000,%eax
  101143:	0f 22 c0             	mov    %eax,%cr0
  101146:	89 ec                	mov    %ebp,%esp
  101148:	5d                   	pop    %ebp
  101149:	c3                   	ret    

0010114a <load_page_directory>:
  10114a:	55                   	push   %ebp
  10114b:	89 e5                	mov    %esp,%ebp
  10114d:	8b 44 24 08          	mov    0x8(%esp),%eax
  101151:	0f 22 d8             	mov    %eax,%cr3
  101154:	89 ec                	mov    %ebp,%esp
  101156:	5d                   	pop    %ebp
  101157:	c3                   	ret    

00101158 <copy_page_physical>:
  101158:	53                   	push   %ebx
  101159:	9c                   	pushf  
  10115a:	fa                   	cli    
  10115b:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  10115f:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  101163:	0f 20 c2             	mov    %cr0,%edx
  101166:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  10116c:	0f 22 c2             	mov    %edx,%cr0
  10116f:	ba 00 04 00 00       	mov    $0x400,%edx

00101174 <loop>:
  101174:	8b 03                	mov    (%ebx),%eax
  101176:	89 01                	mov    %eax,(%ecx)
  101178:	83 c3 04             	add    $0x4,%ebx
  10117b:	83 c1 04             	add    $0x4,%ecx
  10117e:	4a                   	dec    %edx
  10117f:	75 f3                	jne    101174 <loop>
  101181:	0f 20 c2             	mov    %cr0,%edx
  101184:	81 ca 00 00 00 80    	or     $0x80000000,%edx
  10118a:	0f 22 c2             	mov    %edx,%cr0
  10118d:	9d                   	popf   
  10118e:	5b                   	pop    %ebx
  10118f:	c3                   	ret    

00101190 <flush_tlb>:
  101190:	0f 20 d8             	mov    %cr3,%eax
  101193:	0f 22 d8             	mov    %eax,%cr3

00101196 <read_eip>:
  101196:	58                   	pop    %eax
  101197:	ff e0                	jmp    *%eax

00101199 <context_switch>:
  101199:	55                   	push   %ebp
  10119a:	89 e5                	mov    %esp,%ebp
  10119c:	8b 44 24 08          	mov    0x8(%esp),%eax
  1011a0:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  1011a4:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  1011a8:	8b 54 24 14          	mov    0x14(%esp),%edx
  1011ac:	fa                   	cli    
  1011ad:	89 dc                	mov    %ebx,%esp
  1011af:	89 cd                	mov    %ecx,%ebp
  1011b1:	0f 22 da             	mov    %edx,%cr3
  1011b4:	89 c3                	mov    %eax,%ebx
  1011b6:	b8 ed ad 10 7a       	mov    $0x7a10aded,%eax
  1011bb:	fb                   	sti    
  1011bc:	ff e3                	jmp    *%ebx

001011be <enter_user_mode>:
  1011be:	fa                   	cli    
  1011bf:	66 b8 23 00          	mov    $0x23,%ax
  1011c3:	8e d8                	mov    %eax,%ds
  1011c5:	8e c0                	mov    %eax,%es
  1011c7:	8e e0                	mov    %eax,%fs
  1011c9:	8e e8                	mov    %eax,%gs
  1011cb:	89 e0                	mov    %esp,%eax
  1011cd:	6a 23                	push   $0x23
  1011cf:	50                   	push   %eax
  1011d0:	9c                   	pushf  
  1011d1:	58                   	pop    %eax
  1011d2:	0d 00 02 00 00       	or     $0x200,%eax
  1011d7:	50                   	push   %eax
  1011d8:	6a 1b                	push   $0x1b
  1011da:	68 fe 88 10 00       	push   $0x1088fe
  1011df:	cf                   	iret   

001011e0 <syscall_interface>:
  1011e0:	55                   	push   %ebp
  1011e1:	89 e5                	mov    %esp,%ebp
  1011e3:	8b 44 24 08          	mov    0x8(%esp),%eax

001011e7 <test_80>:
  1011e7:	83 f8 50             	cmp    $0x50,%eax
  1011ea:	74 02                	je     1011ee <trigger_int_80>
  1011ec:	eb 14                	jmp    101202 <test_81>

001011ee <trigger_int_80>:
  1011ee:	8b 44 24 0c          	mov    0xc(%esp),%eax
  1011f2:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  1011f6:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  1011fa:	8b 54 24 18          	mov    0x18(%esp),%edx
  1011fe:	cd 50                	int    $0x50
  101200:	eb 1b                	jmp    10121d <_exit>

00101202 <test_81>:
  101202:	83 f8 51             	cmp    $0x51,%eax
  101205:	74 02                	je     101209 <trigger_int_81>
  101207:	eb 14                	jmp    10121d <_exit>

00101209 <trigger_int_81>:
  101209:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10120d:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  101211:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  101215:	8b 54 24 18          	mov    0x18(%esp),%edx
  101219:	cd 51                	int    $0x51
  10121b:	eb 00                	jmp    10121d <_exit>

0010121d <_exit>:
  10121d:	89 ec                	mov    %ebp,%esp
  10121f:	5d                   	pop    %ebp
  101220:	c3                   	ret    

00101221 <isr_register>:
  101221:	55                   	push   %ebp
  101222:	89 e5                	mov    %esp,%ebp
  101224:	8b 45 08             	mov    0x8(%ebp),%eax
  101227:	8b 55 0c             	mov    0xc(%ebp),%edx
  10122a:	89 14 85 20 c0 10 00 	mov    %edx,0x10c020(,%eax,4)
  101231:	90                   	nop
  101232:	5d                   	pop    %ebp
  101233:	c3                   	ret    

00101234 <hl_int_dispatcher>:
  101234:	55                   	push   %ebp
  101235:	89 e5                	mov    %esp,%ebp
  101237:	83 ec 18             	sub    $0x18,%esp
  10123a:	8b 45 2c             	mov    0x2c(%ebp),%eax
  10123d:	8b 04 85 20 c0 10 00 	mov    0x10c020(,%eax,4),%eax
  101244:	85 c0                	test   %eax,%eax
  101246:	74 44                	je     10128c <hl_int_dispatcher+0x58>
  101248:	8b 45 2c             	mov    0x2c(%ebp),%eax
  10124b:	8b 04 85 20 c0 10 00 	mov    0x10c020(,%eax,4),%eax
  101252:	ff 75 44             	push   0x44(%ebp)
  101255:	ff 75 40             	push   0x40(%ebp)
  101258:	ff 75 3c             	push   0x3c(%ebp)
  10125b:	ff 75 38             	push   0x38(%ebp)
  10125e:	ff 75 34             	push   0x34(%ebp)
  101261:	ff 75 30             	push   0x30(%ebp)
  101264:	ff 75 2c             	push   0x2c(%ebp)
  101267:	ff 75 28             	push   0x28(%ebp)
  10126a:	ff 75 24             	push   0x24(%ebp)
  10126d:	ff 75 20             	push   0x20(%ebp)
  101270:	ff 75 1c             	push   0x1c(%ebp)
  101273:	ff 75 18             	push   0x18(%ebp)
  101276:	ff 75 14             	push   0x14(%ebp)
  101279:	ff 75 10             	push   0x10(%ebp)
  10127c:	ff 75 0c             	push   0xc(%ebp)
  10127f:	ff 75 08             	push   0x8(%ebp)
  101282:	ff d0                	call   *%eax
  101284:	83 c4 40             	add    $0x40,%esp
  101287:	e9 f0 00 00 00       	jmp    10137c <hl_int_dispatcher+0x148>
  10128c:	83 ec 0c             	sub    $0xc,%esp
  10128f:	68 80 22 14 00       	push   $0x142280
  101294:	e8 cf 78 00 00       	call   108b68 <__redirect_printf__>
  101299:	83 c4 10             	add    $0x10,%esp
  10129c:	8b 45 2c             	mov    0x2c(%ebp),%eax
  10129f:	83 ec 08             	sub    $0x8,%esp
  1012a2:	50                   	push   %eax
  1012a3:	68 0c a0 10 00       	push   $0x10a00c
  1012a8:	e8 a8 81 00 00       	call   109455 <printf>
  1012ad:	83 c4 10             	add    $0x10,%esp
  1012b0:	83 ec 0c             	sub    $0xc,%esp
  1012b3:	6a 00                	push   $0x0
  1012b5:	e8 ae 78 00 00       	call   108b68 <__redirect_printf__>
  1012ba:	83 c4 10             	add    $0x10,%esp
  1012bd:	83 ec 0c             	sub    $0xc,%esp
  1012c0:	8d 45 f2             	lea    -0xe(%ebp),%eax
  1012c3:	50                   	push   %eax
  1012c4:	e8 d6 17 00 00       	call   102a9f <cmos_read_rtc>
  1012c9:	83 c4 10             	add    $0x10,%esp
  1012cc:	83 ec 04             	sub    $0x4,%esp
  1012cf:	68 6c 26 14 00       	push   $0x14266c
  1012d4:	83 ec 08             	sub    $0x8,%esp
  1012d7:	89 e0                	mov    %esp,%eax
  1012d9:	8b 55 f2             	mov    -0xe(%ebp),%edx
  1012dc:	89 10                	mov    %edx,(%eax)
  1012de:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  1012e2:	66 89 50 04          	mov    %dx,0x4(%eax)
  1012e6:	e8 d9 3c 00 00       	call   104fc4 <cmos_datetime_to_str>
  1012eb:	83 c4 10             	add    $0x10,%esp
  1012ee:	83 ec 0c             	sub    $0xc,%esp
  1012f1:	68 80 1e 14 00       	push   $0x141e80
  1012f6:	e8 6d 78 00 00       	call   108b68 <__redirect_printf__>
  1012fb:	83 c4 10             	add    $0x10,%esp
  1012fe:	83 ec 04             	sub    $0x4,%esp
  101301:	68 80 22 14 00       	push   $0x142280
  101306:	68 6c 26 14 00       	push   $0x14266c
  10130b:	68 46 a0 10 00       	push   $0x10a046
  101310:	e8 40 81 00 00       	call   109455 <printf>
  101315:	83 c4 10             	add    $0x10,%esp
  101318:	83 ec 0c             	sub    $0xc,%esp
  10131b:	6a 00                	push   $0x0
  10131d:	e8 46 78 00 00       	call   108b68 <__redirect_printf__>
  101322:	83 c4 10             	add    $0x10,%esp
  101325:	83 ec 08             	sub    $0x8,%esp
  101328:	68 80 1e 14 00       	push   $0x141e80
  10132d:	68 f8 03 00 00       	push   $0x3f8
  101332:	e8 82 12 00 00       	call   1025b9 <com_write>
  101337:	83 c4 10             	add    $0x10,%esp
  10133a:	83 ec 04             	sub    $0x4,%esp
  10133d:	68 00 04 00 00       	push   $0x400
  101342:	6a 00                	push   $0x0
  101344:	68 80 1e 14 00       	push   $0x141e80
  101349:	e8 f8 84 00 00       	call   109846 <memset>
  10134e:	83 c4 10             	add    $0x10,%esp
  101351:	83 ec 04             	sub    $0x4,%esp
  101354:	68 ec 03 00 00       	push   $0x3ec
  101359:	6a 00                	push   $0x0
  10135b:	68 80 22 14 00       	push   $0x142280
  101360:	e8 e1 84 00 00       	call   109846 <memset>
  101365:	83 c4 10             	add    $0x10,%esp
  101368:	83 ec 04             	sub    $0x4,%esp
  10136b:	6a 14                	push   $0x14
  10136d:	6a 00                	push   $0x0
  10136f:	68 6c 26 14 00       	push   $0x14266c
  101374:	e8 cd 84 00 00       	call   109846 <memset>
  101379:	83 c4 10             	add    $0x10,%esp
  10137c:	90                   	nop
  10137d:	c9                   	leave  
  10137e:	c3                   	ret    

0010137f <hl_irq_dispatcher>:
  10137f:	55                   	push   %ebp
  101380:	89 e5                	mov    %esp,%ebp
  101382:	83 ec 08             	sub    $0x8,%esp
  101385:	8b 45 2c             	mov    0x2c(%ebp),%eax
  101388:	83 f8 27             	cmp    $0x27,%eax
  10138b:	76 05                	jbe    101392 <hl_irq_dispatcher+0x13>
  10138d:	e8 27 09 00 00       	call   101cb9 <pic_reset_slave>
  101392:	e8 fb 08 00 00       	call   101c92 <pic_reset_master>
  101397:	ff 75 44             	push   0x44(%ebp)
  10139a:	ff 75 40             	push   0x40(%ebp)
  10139d:	ff 75 3c             	push   0x3c(%ebp)
  1013a0:	ff 75 38             	push   0x38(%ebp)
  1013a3:	ff 75 34             	push   0x34(%ebp)
  1013a6:	ff 75 30             	push   0x30(%ebp)
  1013a9:	ff 75 2c             	push   0x2c(%ebp)
  1013ac:	ff 75 28             	push   0x28(%ebp)
  1013af:	ff 75 24             	push   0x24(%ebp)
  1013b2:	ff 75 20             	push   0x20(%ebp)
  1013b5:	ff 75 1c             	push   0x1c(%ebp)
  1013b8:	ff 75 18             	push   0x18(%ebp)
  1013bb:	ff 75 14             	push   0x14(%ebp)
  1013be:	ff 75 10             	push   0x10(%ebp)
  1013c1:	ff 75 0c             	push   0xc(%ebp)
  1013c4:	ff 75 08             	push   0x8(%ebp)
  1013c7:	e8 68 fe ff ff       	call   101234 <hl_int_dispatcher>
  1013cc:	83 c4 40             	add    $0x40,%esp
  1013cf:	90                   	nop
  1013d0:	c9                   	leave  
  1013d1:	c3                   	ret    

001013d2 <unhandled_interrupt>:
  1013d2:	55                   	push   %ebp
  1013d3:	89 e5                	mov    %esp,%ebp
  1013d5:	83 ec 18             	sub    $0x18,%esp
  1013d8:	83 ec 0c             	sub    $0xc,%esp
  1013db:	68 80 22 14 00       	push   $0x142280
  1013e0:	e8 83 77 00 00       	call   108b68 <__redirect_printf__>
  1013e5:	83 c4 10             	add    $0x10,%esp
  1013e8:	8b 45 2c             	mov    0x2c(%ebp),%eax
  1013eb:	83 ec 08             	sub    $0x8,%esp
  1013ee:	50                   	push   %eax
  1013ef:	68 4c a0 10 00       	push   $0x10a04c
  1013f4:	e8 5c 80 00 00       	call   109455 <printf>
  1013f9:	83 c4 10             	add    $0x10,%esp
  1013fc:	83 ec 0c             	sub    $0xc,%esp
  1013ff:	6a 00                	push   $0x0
  101401:	e8 62 77 00 00       	call   108b68 <__redirect_printf__>
  101406:	83 c4 10             	add    $0x10,%esp
  101409:	83 ec 0c             	sub    $0xc,%esp
  10140c:	8d 45 f2             	lea    -0xe(%ebp),%eax
  10140f:	50                   	push   %eax
  101410:	e8 8a 16 00 00       	call   102a9f <cmos_read_rtc>
  101415:	83 c4 10             	add    $0x10,%esp
  101418:	83 ec 04             	sub    $0x4,%esp
  10141b:	68 6c 26 14 00       	push   $0x14266c
  101420:	83 ec 08             	sub    $0x8,%esp
  101423:	89 e0                	mov    %esp,%eax
  101425:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101428:	89 10                	mov    %edx,(%eax)
  10142a:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  10142e:	66 89 50 04          	mov    %dx,0x4(%eax)
  101432:	e8 8d 3b 00 00       	call   104fc4 <cmos_datetime_to_str>
  101437:	83 c4 10             	add    $0x10,%esp
  10143a:	83 ec 0c             	sub    $0xc,%esp
  10143d:	68 80 1e 14 00       	push   $0x141e80
  101442:	e8 21 77 00 00       	call   108b68 <__redirect_printf__>
  101447:	83 c4 10             	add    $0x10,%esp
  10144a:	83 ec 04             	sub    $0x4,%esp
  10144d:	68 80 22 14 00       	push   $0x142280
  101452:	68 6c 26 14 00       	push   $0x14266c
  101457:	68 46 a0 10 00       	push   $0x10a046
  10145c:	e8 f4 7f 00 00       	call   109455 <printf>
  101461:	83 c4 10             	add    $0x10,%esp
  101464:	83 ec 0c             	sub    $0xc,%esp
  101467:	6a 00                	push   $0x0
  101469:	e8 fa 76 00 00       	call   108b68 <__redirect_printf__>
  10146e:	83 c4 10             	add    $0x10,%esp
  101471:	83 ec 08             	sub    $0x8,%esp
  101474:	68 80 1e 14 00       	push   $0x141e80
  101479:	68 f8 03 00 00       	push   $0x3f8
  10147e:	e8 36 11 00 00       	call   1025b9 <com_write>
  101483:	83 c4 10             	add    $0x10,%esp
  101486:	83 ec 04             	sub    $0x4,%esp
  101489:	68 00 04 00 00       	push   $0x400
  10148e:	6a 00                	push   $0x0
  101490:	68 80 1e 14 00       	push   $0x141e80
  101495:	e8 ac 83 00 00       	call   109846 <memset>
  10149a:	83 c4 10             	add    $0x10,%esp
  10149d:	83 ec 04             	sub    $0x4,%esp
  1014a0:	68 ec 03 00 00       	push   $0x3ec
  1014a5:	6a 00                	push   $0x0
  1014a7:	68 80 22 14 00       	push   $0x142280
  1014ac:	e8 95 83 00 00       	call   109846 <memset>
  1014b1:	83 c4 10             	add    $0x10,%esp
  1014b4:	83 ec 04             	sub    $0x4,%esp
  1014b7:	6a 14                	push   $0x14
  1014b9:	6a 00                	push   $0x0
  1014bb:	68 6c 26 14 00       	push   $0x14266c
  1014c0:	e8 81 83 00 00       	call   109846 <memset>
  1014c5:	83 c4 10             	add    $0x10,%esp
  1014c8:	90                   	nop
  1014c9:	c9                   	leave  
  1014ca:	c3                   	ret    

001014cb <divide_by_zero_exception>:
  1014cb:	55                   	push   %ebp
  1014cc:	89 e5                	mov    %esp,%ebp
  1014ce:	83 ec 08             	sub    $0x8,%esp
  1014d1:	83 ec 0c             	sub    $0xc,%esp
  1014d4:	68 68 a0 10 00       	push   $0x10a068
  1014d9:	e8 77 7f 00 00       	call   109455 <printf>
  1014de:	83 c4 10             	add    $0x10,%esp
  1014e1:	e8 1f 82 00 00       	call   109705 <abort>

001014e6 <undef_opcode_exception>:
  1014e6:	55                   	push   %ebp
  1014e7:	89 e5                	mov    %esp,%ebp
  1014e9:	53                   	push   %ebx
  1014ea:	83 ec 04             	sub    $0x4,%esp
  1014ed:	83 ec 0c             	sub    $0xc,%esp
  1014f0:	68 90 a0 10 00       	push   $0x10a090
  1014f5:	e8 5b 7f 00 00       	call   109455 <printf>
  1014fa:	83 c4 10             	add    $0x10,%esp
  1014fd:	8b 5d 20             	mov    0x20(%ebp),%ebx
  101500:	8b 4d 24             	mov    0x24(%ebp),%ecx
  101503:	8b 55 1c             	mov    0x1c(%ebp),%edx
  101506:	8b 45 28             	mov    0x28(%ebp),%eax
  101509:	83 ec 0c             	sub    $0xc,%esp
  10150c:	53                   	push   %ebx
  10150d:	51                   	push   %ecx
  10150e:	52                   	push   %edx
  10150f:	50                   	push   %eax
  101510:	68 b4 a0 10 00       	push   $0x10a0b4
  101515:	e8 3b 7f 00 00       	call   109455 <printf>
  10151a:	83 c4 20             	add    $0x20,%esp
  10151d:	8b 45 40             	mov    0x40(%ebp),%eax
  101520:	83 ec 08             	sub    $0x8,%esp
  101523:	50                   	push   %eax
  101524:	68 e1 a0 10 00       	push   $0x10a0e1
  101529:	e8 27 7f 00 00       	call   109455 <printf>
  10152e:	83 c4 10             	add    $0x10,%esp
  101531:	8b 45 34             	mov    0x34(%ebp),%eax
  101534:	83 ec 08             	sub    $0x8,%esp
  101537:	50                   	push   %eax
  101538:	68 f4 a0 10 00       	push   $0x10a0f4
  10153d:	e8 13 7f 00 00       	call   109455 <printf>
  101542:	83 c4 10             	add    $0x10,%esp
  101545:	8b 45 38             	mov    0x38(%ebp),%eax
  101548:	83 ec 08             	sub    $0x8,%esp
  10154b:	50                   	push   %eax
  10154c:	68 00 a1 10 00       	push   $0x10a100
  101551:	e8 ff 7e 00 00       	call   109455 <printf>
  101556:	83 c4 10             	add    $0x10,%esp
  101559:	8b 4d 44             	mov    0x44(%ebp),%ecx
  10155c:	8b 55 30             	mov    0x30(%ebp),%edx
  10155f:	8b 45 3c             	mov    0x3c(%ebp),%eax
  101562:	51                   	push   %ecx
  101563:	52                   	push   %edx
  101564:	50                   	push   %eax
  101565:	68 20 a1 10 00       	push   $0x10a120
  10156a:	e8 e6 7e 00 00       	call   109455 <printf>
  10156f:	83 c4 10             	add    $0x10,%esp
  101572:	e8 8e 81 00 00       	call   109705 <abort>

00101577 <gpf_exception>:
  101577:	55                   	push   %ebp
  101578:	89 e5                	mov    %esp,%ebp
  10157a:	83 ec 08             	sub    $0x8,%esp
  10157d:	83 ec 0c             	sub    $0xc,%esp
  101580:	68 4c a1 10 00       	push   $0x10a14c
  101585:	e8 cb 7e 00 00       	call   109455 <printf>
  10158a:	83 c4 10             	add    $0x10,%esp
  10158d:	e8 73 81 00 00       	call   109705 <abort>

00101592 <page_fault_exception>:
  101592:	55                   	push   %ebp
  101593:	89 e5                	mov    %esp,%ebp
  101595:	83 ec 28             	sub    $0x28,%esp
  101598:	0f 20 d0             	mov    %cr2,%eax
  10159b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10159e:	8b 45 30             	mov    0x30(%ebp),%eax
  1015a1:	83 e0 01             	and    $0x1,%eax
  1015a4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1015a7:	8b 45 30             	mov    0x30(%ebp),%eax
  1015aa:	d1 e8                	shr    %eax
  1015ac:	83 e0 01             	and    $0x1,%eax
  1015af:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1015b2:	8b 45 30             	mov    0x30(%ebp),%eax
  1015b5:	c1 e8 02             	shr    $0x2,%eax
  1015b8:	83 e0 01             	and    $0x1,%eax
  1015bb:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1015be:	8b 45 30             	mov    0x30(%ebp),%eax
  1015c1:	c1 e8 03             	shr    $0x3,%eax
  1015c4:	83 e0 01             	and    $0x1,%eax
  1015c7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1015ca:	8b 45 30             	mov    0x30(%ebp),%eax
  1015cd:	c1 e8 04             	shr    $0x4,%eax
  1015d0:	83 e0 01             	and    $0x1,%eax
  1015d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1015d6:	83 ec 04             	sub    $0x4,%esp
  1015d9:	ff 75 f4             	push   -0xc(%ebp)
  1015dc:	ff 75 e0             	push   -0x20(%ebp)
  1015df:	ff 75 e4             	push   -0x1c(%ebp)
  1015e2:	ff 75 e8             	push   -0x18(%ebp)
  1015e5:	ff 75 ec             	push   -0x14(%ebp)
  1015e8:	ff 75 f0             	push   -0x10(%ebp)
  1015eb:	68 78 a1 10 00       	push   $0x10a178
  1015f0:	e8 60 7e 00 00       	call   109455 <printf>
  1015f5:	83 c4 20             	add    $0x20,%esp
  1015f8:	e8 08 81 00 00       	call   109705 <abort>

001015fd <sys_write>:
  1015fd:	55                   	push   %ebp
  1015fe:	89 e5                	mov    %esp,%ebp
  101600:	83 ec 38             	sub    $0x38,%esp
  101603:	8b 45 28             	mov    0x28(%ebp),%eax
  101606:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101609:	8b 45 1c             	mov    0x1c(%ebp),%eax
  10160c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10160f:	8b 45 24             	mov    0x24(%ebp),%eax
  101612:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101615:	8b 45 20             	mov    0x20(%ebp),%eax
  101618:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10161b:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  10161f:	0f 84 c0 00 00 00    	je     1016e5 <sys_write+0xe8>
  101625:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  101629:	0f 87 f6 00 00 00    	ja     101725 <sys_write+0x128>
  10162f:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
  101633:	74 72                	je     1016a7 <sys_write+0xaa>
  101635:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
  101639:	0f 87 e6 00 00 00    	ja     101725 <sys_write+0x128>
  10163f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  101643:	74 0b                	je     101650 <sys_write+0x53>
  101645:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
  101649:	74 21                	je     10166c <sys_write+0x6f>
  10164b:	e9 d5 00 00 00       	jmp    101725 <sys_write+0x128>
  101650:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101653:	89 45 cc             	mov    %eax,-0x34(%ebp)
  101656:	83 ec 08             	sub    $0x8,%esp
  101659:	ff 75 e0             	push   -0x20(%ebp)
  10165c:	ff 75 cc             	push   -0x34(%ebp)
  10165f:	e8 af ee ff ff       	call   100513 <tty_putchars>
  101664:	83 c4 10             	add    $0x10,%esp
  101667:	e9 ba 00 00 00       	jmp    101726 <sys_write+0x129>
  10166c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10166f:	89 45 d0             	mov    %eax,-0x30(%ebp)
  101672:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101679:	eb 22                	jmp    10169d <sys_write+0xa0>
  10167b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  10167e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101681:	01 d0                	add    %edx,%eax
  101683:	0f b6 00             	movzbl (%eax),%eax
  101686:	0f b6 d0             	movzbl %al,%edx
  101689:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10168c:	83 ec 08             	sub    $0x8,%esp
  10168f:	52                   	push   %edx
  101690:	50                   	push   %eax
  101691:	e8 2a f0 ff ff       	call   1006c0 <outb>
  101696:	83 c4 10             	add    $0x10,%esp
  101699:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10169d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1016a0:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  1016a3:	72 d6                	jb     10167b <sys_write+0x7e>
  1016a5:	eb 7f                	jmp    101726 <sys_write+0x129>
  1016a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1016aa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1016ad:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1016b4:	eb 25                	jmp    1016db <sys_write+0xde>
  1016b6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1016b9:	8d 14 00             	lea    (%eax,%eax,1),%edx
  1016bc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1016bf:	01 d0                	add    %edx,%eax
  1016c1:	0f b7 00             	movzwl (%eax),%eax
  1016c4:	0f b7 d0             	movzwl %ax,%edx
  1016c7:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1016ca:	83 ec 08             	sub    $0x8,%esp
  1016cd:	52                   	push   %edx
  1016ce:	50                   	push   %eax
  1016cf:	e8 16 f0 ff ff       	call   1006ea <outw>
  1016d4:	83 c4 10             	add    $0x10,%esp
  1016d7:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1016db:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1016de:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  1016e1:	72 d3                	jb     1016b6 <sys_write+0xb9>
  1016e3:	eb 41                	jmp    101726 <sys_write+0x129>
  1016e5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1016e8:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1016eb:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1016f2:	eb 27                	jmp    10171b <sys_write+0x11e>
  1016f4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1016f7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1016fe:	8b 45 d8             	mov    -0x28(%ebp),%eax
  101701:	01 d0                	add    %edx,%eax
  101703:	8b 00                	mov    (%eax),%eax
  101705:	89 c2                	mov    %eax,%edx
  101707:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10170a:	83 ec 08             	sub    $0x8,%esp
  10170d:	52                   	push   %edx
  10170e:	50                   	push   %eax
  10170f:	e8 ff ef ff ff       	call   100713 <outl>
  101714:	83 c4 10             	add    $0x10,%esp
  101717:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  10171b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10171e:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  101721:	72 d1                	jb     1016f4 <sys_write+0xf7>
  101723:	eb 01                	jmp    101726 <sys_write+0x129>
  101725:	90                   	nop
  101726:	90                   	nop
  101727:	c9                   	leave  
  101728:	c3                   	ret    

00101729 <sys_read>:
  101729:	55                   	push   %ebp
  10172a:	89 e5                	mov    %esp,%ebp
  10172c:	83 ec 48             	sub    $0x48,%esp
  10172f:	8b 45 28             	mov    0x28(%ebp),%eax
  101732:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101735:	8b 45 1c             	mov    0x1c(%ebp),%eax
  101738:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10173b:	8b 45 24             	mov    0x24(%ebp),%eax
  10173e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101741:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
  101745:	0f 84 59 02 00 00    	je     1019a4 <sys_read+0x27b>
  10174b:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
  10174f:	0f 87 69 03 00 00    	ja     101abe <sys_read+0x395>
  101755:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
  101759:	74 0f                	je     10176a <sys_read+0x41>
  10175b:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
  10175f:	0f 84 22 01 00 00    	je     101887 <sys_read+0x15e>
  101765:	e9 54 03 00 00       	jmp    101abe <sys_read+0x395>
  10176a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10176d:	89 45 d8             	mov    %eax,-0x28(%ebp)
  101770:	83 ec 04             	sub    $0x4,%esp
  101773:	ff 75 ec             	push   -0x14(%ebp)
  101776:	ff 75 d8             	push   -0x28(%ebp)
  101779:	68 f8 03 00 00       	push   $0x3f8
  10177e:	e8 2e 0f 00 00       	call   1026b1 <com_read>
  101783:	83 c4 10             	add    $0x10,%esp
  101786:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  101789:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  10178d:	0f 84 2e 03 00 00    	je     101ac1 <sys_read+0x398>
  101793:	83 ec 0c             	sub    $0xc,%esp
  101796:	68 80 22 14 00       	push   $0x142280
  10179b:	e8 c8 73 00 00       	call   108b68 <__redirect_printf__>
  1017a0:	83 c4 10             	add    $0x10,%esp
  1017a3:	83 ec 08             	sub    $0x8,%esp
  1017a6:	ff 75 d8             	push   -0x28(%ebp)
  1017a9:	68 e8 a1 10 00       	push   $0x10a1e8
  1017ae:	e8 a2 7c 00 00       	call   109455 <printf>
  1017b3:	83 c4 10             	add    $0x10,%esp
  1017b6:	83 ec 0c             	sub    $0xc,%esp
  1017b9:	6a 00                	push   $0x0
  1017bb:	e8 a8 73 00 00       	call   108b68 <__redirect_printf__>
  1017c0:	83 c4 10             	add    $0x10,%esp
  1017c3:	83 ec 0c             	sub    $0xc,%esp
  1017c6:	8d 45 ce             	lea    -0x32(%ebp),%eax
  1017c9:	50                   	push   %eax
  1017ca:	e8 d0 12 00 00       	call   102a9f <cmos_read_rtc>
  1017cf:	83 c4 10             	add    $0x10,%esp
  1017d2:	83 ec 04             	sub    $0x4,%esp
  1017d5:	68 6c 26 14 00       	push   $0x14266c
  1017da:	83 ec 08             	sub    $0x8,%esp
  1017dd:	89 e0                	mov    %esp,%eax
  1017df:	8b 55 ce             	mov    -0x32(%ebp),%edx
  1017e2:	89 10                	mov    %edx,(%eax)
  1017e4:	0f b7 55 d2          	movzwl -0x2e(%ebp),%edx
  1017e8:	66 89 50 04          	mov    %dx,0x4(%eax)
  1017ec:	e8 d3 37 00 00       	call   104fc4 <cmos_datetime_to_str>
  1017f1:	83 c4 10             	add    $0x10,%esp
  1017f4:	83 ec 0c             	sub    $0xc,%esp
  1017f7:	68 80 1e 14 00       	push   $0x141e80
  1017fc:	e8 67 73 00 00       	call   108b68 <__redirect_printf__>
  101801:	83 c4 10             	add    $0x10,%esp
  101804:	83 ec 04             	sub    $0x4,%esp
  101807:	68 80 22 14 00       	push   $0x142280
  10180c:	68 6c 26 14 00       	push   $0x14266c
  101811:	68 f6 a1 10 00       	push   $0x10a1f6
  101816:	e8 3a 7c 00 00       	call   109455 <printf>
  10181b:	83 c4 10             	add    $0x10,%esp
  10181e:	83 ec 0c             	sub    $0xc,%esp
  101821:	6a 00                	push   $0x0
  101823:	e8 40 73 00 00       	call   108b68 <__redirect_printf__>
  101828:	83 c4 10             	add    $0x10,%esp
  10182b:	83 ec 08             	sub    $0x8,%esp
  10182e:	68 80 1e 14 00       	push   $0x141e80
  101833:	68 f8 03 00 00       	push   $0x3f8
  101838:	e8 7c 0d 00 00       	call   1025b9 <com_write>
  10183d:	83 c4 10             	add    $0x10,%esp
  101840:	83 ec 04             	sub    $0x4,%esp
  101843:	68 00 04 00 00       	push   $0x400
  101848:	6a 00                	push   $0x0
  10184a:	68 80 1e 14 00       	push   $0x141e80
  10184f:	e8 f2 7f 00 00       	call   109846 <memset>
  101854:	83 c4 10             	add    $0x10,%esp
  101857:	83 ec 04             	sub    $0x4,%esp
  10185a:	68 ec 03 00 00       	push   $0x3ec
  10185f:	6a 00                	push   $0x0
  101861:	68 80 22 14 00       	push   $0x142280
  101866:	e8 db 7f 00 00       	call   109846 <memset>
  10186b:	83 c4 10             	add    $0x10,%esp
  10186e:	83 ec 04             	sub    $0x4,%esp
  101871:	6a 14                	push   $0x14
  101873:	6a 00                	push   $0x0
  101875:	68 6c 26 14 00       	push   $0x14266c
  10187a:	e8 c7 7f 00 00       	call   109846 <memset>
  10187f:	83 c4 10             	add    $0x10,%esp
  101882:	e9 3a 02 00 00       	jmp    101ac1 <sys_read+0x398>
  101887:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10188a:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10188d:	83 ec 04             	sub    $0x4,%esp
  101890:	ff 75 ec             	push   -0x14(%ebp)
  101893:	ff 75 e0             	push   -0x20(%ebp)
  101896:	68 f8 02 00 00       	push   $0x2f8
  10189b:	e8 11 0e 00 00       	call   1026b1 <com_read>
  1018a0:	83 c4 10             	add    $0x10,%esp
  1018a3:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1018a6:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
  1018aa:	0f 84 14 02 00 00    	je     101ac4 <sys_read+0x39b>
  1018b0:	83 ec 0c             	sub    $0xc,%esp
  1018b3:	68 80 22 14 00       	push   $0x142280
  1018b8:	e8 ab 72 00 00       	call   108b68 <__redirect_printf__>
  1018bd:	83 c4 10             	add    $0x10,%esp
  1018c0:	83 ec 08             	sub    $0x8,%esp
  1018c3:	ff 75 e0             	push   -0x20(%ebp)
  1018c6:	68 fc a1 10 00       	push   $0x10a1fc
  1018cb:	e8 85 7b 00 00       	call   109455 <printf>
  1018d0:	83 c4 10             	add    $0x10,%esp
  1018d3:	83 ec 0c             	sub    $0xc,%esp
  1018d6:	6a 00                	push   $0x0
  1018d8:	e8 8b 72 00 00       	call   108b68 <__redirect_printf__>
  1018dd:	83 c4 10             	add    $0x10,%esp
  1018e0:	83 ec 0c             	sub    $0xc,%esp
  1018e3:	8d 45 c8             	lea    -0x38(%ebp),%eax
  1018e6:	50                   	push   %eax
  1018e7:	e8 b3 11 00 00       	call   102a9f <cmos_read_rtc>
  1018ec:	83 c4 10             	add    $0x10,%esp
  1018ef:	83 ec 04             	sub    $0x4,%esp
  1018f2:	68 6c 26 14 00       	push   $0x14266c
  1018f7:	83 ec 08             	sub    $0x8,%esp
  1018fa:	89 e0                	mov    %esp,%eax
  1018fc:	8b 55 c8             	mov    -0x38(%ebp),%edx
  1018ff:	89 10                	mov    %edx,(%eax)
  101901:	0f b7 55 cc          	movzwl -0x34(%ebp),%edx
  101905:	66 89 50 04          	mov    %dx,0x4(%eax)
  101909:	e8 b6 36 00 00       	call   104fc4 <cmos_datetime_to_str>
  10190e:	83 c4 10             	add    $0x10,%esp
  101911:	83 ec 0c             	sub    $0xc,%esp
  101914:	68 80 1e 14 00       	push   $0x141e80
  101919:	e8 4a 72 00 00       	call   108b68 <__redirect_printf__>
  10191e:	83 c4 10             	add    $0x10,%esp
  101921:	83 ec 04             	sub    $0x4,%esp
  101924:	68 80 22 14 00       	push   $0x142280
  101929:	68 6c 26 14 00       	push   $0x14266c
  10192e:	68 f6 a1 10 00       	push   $0x10a1f6
  101933:	e8 1d 7b 00 00       	call   109455 <printf>
  101938:	83 c4 10             	add    $0x10,%esp
  10193b:	83 ec 0c             	sub    $0xc,%esp
  10193e:	6a 00                	push   $0x0
  101940:	e8 23 72 00 00       	call   108b68 <__redirect_printf__>
  101945:	83 c4 10             	add    $0x10,%esp
  101948:	83 ec 08             	sub    $0x8,%esp
  10194b:	68 80 1e 14 00       	push   $0x141e80
  101950:	68 f8 03 00 00       	push   $0x3f8
  101955:	e8 5f 0c 00 00       	call   1025b9 <com_write>
  10195a:	83 c4 10             	add    $0x10,%esp
  10195d:	83 ec 04             	sub    $0x4,%esp
  101960:	68 00 04 00 00       	push   $0x400
  101965:	6a 00                	push   $0x0
  101967:	68 80 1e 14 00       	push   $0x141e80
  10196c:	e8 d5 7e 00 00       	call   109846 <memset>
  101971:	83 c4 10             	add    $0x10,%esp
  101974:	83 ec 04             	sub    $0x4,%esp
  101977:	68 ec 03 00 00       	push   $0x3ec
  10197c:	6a 00                	push   $0x0
  10197e:	68 80 22 14 00       	push   $0x142280
  101983:	e8 be 7e 00 00       	call   109846 <memset>
  101988:	83 c4 10             	add    $0x10,%esp
  10198b:	83 ec 04             	sub    $0x4,%esp
  10198e:	6a 14                	push   $0x14
  101990:	6a 00                	push   $0x0
  101992:	68 6c 26 14 00       	push   $0x14266c
  101997:	e8 aa 7e 00 00       	call   109846 <memset>
  10199c:	83 c4 10             	add    $0x10,%esp
  10199f:	e9 20 01 00 00       	jmp    101ac4 <sys_read+0x39b>
  1019a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1019a7:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1019aa:	83 ec 04             	sub    $0x4,%esp
  1019ad:	ff 75 ec             	push   -0x14(%ebp)
  1019b0:	ff 75 e8             	push   -0x18(%ebp)
  1019b3:	68 e8 03 00 00       	push   $0x3e8
  1019b8:	e8 f4 0c 00 00       	call   1026b1 <com_read>
  1019bd:	83 c4 10             	add    $0x10,%esp
  1019c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1019c3:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  1019c7:	0f 84 fa 00 00 00    	je     101ac7 <sys_read+0x39e>
  1019cd:	83 ec 0c             	sub    $0xc,%esp
  1019d0:	68 80 22 14 00       	push   $0x142280
  1019d5:	e8 8e 71 00 00       	call   108b68 <__redirect_printf__>
  1019da:	83 c4 10             	add    $0x10,%esp
  1019dd:	83 ec 08             	sub    $0x8,%esp
  1019e0:	ff 75 e8             	push   -0x18(%ebp)
  1019e3:	68 0a a2 10 00       	push   $0x10a20a
  1019e8:	e8 68 7a 00 00       	call   109455 <printf>
  1019ed:	83 c4 10             	add    $0x10,%esp
  1019f0:	83 ec 0c             	sub    $0xc,%esp
  1019f3:	6a 00                	push   $0x0
  1019f5:	e8 6e 71 00 00       	call   108b68 <__redirect_printf__>
  1019fa:	83 c4 10             	add    $0x10,%esp
  1019fd:	83 ec 0c             	sub    $0xc,%esp
  101a00:	8d 45 c2             	lea    -0x3e(%ebp),%eax
  101a03:	50                   	push   %eax
  101a04:	e8 96 10 00 00       	call   102a9f <cmos_read_rtc>
  101a09:	83 c4 10             	add    $0x10,%esp
  101a0c:	83 ec 04             	sub    $0x4,%esp
  101a0f:	68 6c 26 14 00       	push   $0x14266c
  101a14:	83 ec 08             	sub    $0x8,%esp
  101a17:	89 e0                	mov    %esp,%eax
  101a19:	8b 55 c2             	mov    -0x3e(%ebp),%edx
  101a1c:	89 10                	mov    %edx,(%eax)
  101a1e:	0f b7 55 c6          	movzwl -0x3a(%ebp),%edx
  101a22:	66 89 50 04          	mov    %dx,0x4(%eax)
  101a26:	e8 99 35 00 00       	call   104fc4 <cmos_datetime_to_str>
  101a2b:	83 c4 10             	add    $0x10,%esp
  101a2e:	83 ec 0c             	sub    $0xc,%esp
  101a31:	68 80 1e 14 00       	push   $0x141e80
  101a36:	e8 2d 71 00 00       	call   108b68 <__redirect_printf__>
  101a3b:	83 c4 10             	add    $0x10,%esp
  101a3e:	83 ec 04             	sub    $0x4,%esp
  101a41:	68 80 22 14 00       	push   $0x142280
  101a46:	68 6c 26 14 00       	push   $0x14266c
  101a4b:	68 f6 a1 10 00       	push   $0x10a1f6
  101a50:	e8 00 7a 00 00       	call   109455 <printf>
  101a55:	83 c4 10             	add    $0x10,%esp
  101a58:	83 ec 0c             	sub    $0xc,%esp
  101a5b:	6a 00                	push   $0x0
  101a5d:	e8 06 71 00 00       	call   108b68 <__redirect_printf__>
  101a62:	83 c4 10             	add    $0x10,%esp
  101a65:	83 ec 08             	sub    $0x8,%esp
  101a68:	68 80 1e 14 00       	push   $0x141e80
  101a6d:	68 f8 03 00 00       	push   $0x3f8
  101a72:	e8 42 0b 00 00       	call   1025b9 <com_write>
  101a77:	83 c4 10             	add    $0x10,%esp
  101a7a:	83 ec 04             	sub    $0x4,%esp
  101a7d:	68 00 04 00 00       	push   $0x400
  101a82:	6a 00                	push   $0x0
  101a84:	68 80 1e 14 00       	push   $0x141e80
  101a89:	e8 b8 7d 00 00       	call   109846 <memset>
  101a8e:	83 c4 10             	add    $0x10,%esp
  101a91:	83 ec 04             	sub    $0x4,%esp
  101a94:	68 ec 03 00 00       	push   $0x3ec
  101a99:	6a 00                	push   $0x0
  101a9b:	68 80 22 14 00       	push   $0x142280
  101aa0:	e8 a1 7d 00 00       	call   109846 <memset>
  101aa5:	83 c4 10             	add    $0x10,%esp
  101aa8:	83 ec 04             	sub    $0x4,%esp
  101aab:	6a 14                	push   $0x14
  101aad:	6a 00                	push   $0x0
  101aaf:	68 6c 26 14 00       	push   $0x14266c
  101ab4:	e8 8d 7d 00 00       	call   109846 <memset>
  101ab9:	83 c4 10             	add    $0x10,%esp
  101abc:	eb 09                	jmp    101ac7 <sys_read+0x39e>
  101abe:	90                   	nop
  101abf:	eb 07                	jmp    101ac8 <sys_read+0x39f>
  101ac1:	90                   	nop
  101ac2:	eb 04                	jmp    101ac8 <sys_read+0x39f>
  101ac4:	90                   	nop
  101ac5:	eb 01                	jmp    101ac8 <sys_read+0x39f>
  101ac7:	90                   	nop
  101ac8:	90                   	nop
  101ac9:	c9                   	leave  
  101aca:	c3                   	ret    

00101acb <syscall_init>:
  101acb:	55                   	push   %ebp
  101acc:	89 e5                	mov    %esp,%ebp
  101ace:	83 ec 18             	sub    $0x18,%esp
  101ad1:	83 ec 08             	sub    $0x8,%esp
  101ad4:	68 29 17 10 00       	push   $0x101729
  101ad9:	6a 50                	push   $0x50
  101adb:	e8 41 f7 ff ff       	call   101221 <isr_register>
  101ae0:	83 c4 10             	add    $0x10,%esp
  101ae3:	83 ec 08             	sub    $0x8,%esp
  101ae6:	68 fd 15 10 00       	push   $0x1015fd
  101aeb:	6a 51                	push   $0x51
  101aed:	e8 2f f7 ff ff       	call   101221 <isr_register>
  101af2:	83 c4 10             	add    $0x10,%esp
  101af5:	83 ec 0c             	sub    $0xc,%esp
  101af8:	68 80 22 14 00       	push   $0x142280
  101afd:	e8 66 70 00 00       	call   108b68 <__redirect_printf__>
  101b02:	83 c4 10             	add    $0x10,%esp
  101b05:	83 ec 0c             	sub    $0xc,%esp
  101b08:	68 18 a2 10 00       	push   $0x10a218
  101b0d:	e8 43 79 00 00       	call   109455 <printf>
  101b12:	83 c4 10             	add    $0x10,%esp
  101b15:	83 ec 0c             	sub    $0xc,%esp
  101b18:	6a 00                	push   $0x0
  101b1a:	e8 49 70 00 00       	call   108b68 <__redirect_printf__>
  101b1f:	83 c4 10             	add    $0x10,%esp
  101b22:	83 ec 0c             	sub    $0xc,%esp
  101b25:	8d 45 f2             	lea    -0xe(%ebp),%eax
  101b28:	50                   	push   %eax
  101b29:	e8 71 0f 00 00       	call   102a9f <cmos_read_rtc>
  101b2e:	83 c4 10             	add    $0x10,%esp
  101b31:	83 ec 04             	sub    $0x4,%esp
  101b34:	68 6c 26 14 00       	push   $0x14266c
  101b39:	83 ec 08             	sub    $0x8,%esp
  101b3c:	89 e0                	mov    %esp,%eax
  101b3e:	8b 55 f2             	mov    -0xe(%ebp),%edx
  101b41:	89 10                	mov    %edx,(%eax)
  101b43:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  101b47:	66 89 50 04          	mov    %dx,0x4(%eax)
  101b4b:	e8 74 34 00 00       	call   104fc4 <cmos_datetime_to_str>
  101b50:	83 c4 10             	add    $0x10,%esp
  101b53:	83 ec 0c             	sub    $0xc,%esp
  101b56:	68 80 1e 14 00       	push   $0x141e80
  101b5b:	e8 08 70 00 00       	call   108b68 <__redirect_printf__>
  101b60:	83 c4 10             	add    $0x10,%esp
  101b63:	83 ec 04             	sub    $0x4,%esp
  101b66:	68 80 22 14 00       	push   $0x142280
  101b6b:	68 6c 26 14 00       	push   $0x14266c
  101b70:	68 28 a2 10 00       	push   $0x10a228
  101b75:	e8 db 78 00 00       	call   109455 <printf>
  101b7a:	83 c4 10             	add    $0x10,%esp
  101b7d:	83 ec 0c             	sub    $0xc,%esp
  101b80:	6a 00                	push   $0x0
  101b82:	e8 e1 6f 00 00       	call   108b68 <__redirect_printf__>
  101b87:	83 c4 10             	add    $0x10,%esp
  101b8a:	83 ec 08             	sub    $0x8,%esp
  101b8d:	68 80 1e 14 00       	push   $0x141e80
  101b92:	68 f8 03 00 00       	push   $0x3f8
  101b97:	e8 1d 0a 00 00       	call   1025b9 <com_write>
  101b9c:	83 c4 10             	add    $0x10,%esp
  101b9f:	83 ec 04             	sub    $0x4,%esp
  101ba2:	68 00 04 00 00       	push   $0x400
  101ba7:	6a 00                	push   $0x0
  101ba9:	68 80 1e 14 00       	push   $0x141e80
  101bae:	e8 93 7c 00 00       	call   109846 <memset>
  101bb3:	83 c4 10             	add    $0x10,%esp
  101bb6:	83 ec 04             	sub    $0x4,%esp
  101bb9:	68 ec 03 00 00       	push   $0x3ec
  101bbe:	6a 00                	push   $0x0
  101bc0:	68 80 22 14 00       	push   $0x142280
  101bc5:	e8 7c 7c 00 00       	call   109846 <memset>
  101bca:	83 c4 10             	add    $0x10,%esp
  101bcd:	83 ec 04             	sub    $0x4,%esp
  101bd0:	6a 14                	push   $0x14
  101bd2:	6a 00                	push   $0x0
  101bd4:	68 6c 26 14 00       	push   $0x14266c
  101bd9:	e8 68 7c 00 00       	call   109846 <memset>
  101bde:	83 c4 10             	add    $0x10,%esp
  101be1:	90                   	nop
  101be2:	c9                   	leave  
  101be3:	c3                   	ret    

00101be4 <pic_remap>:
  101be4:	55                   	push   %ebp
  101be5:	89 e5                	mov    %esp,%ebp
  101be7:	83 ec 08             	sub    $0x8,%esp
  101bea:	83 ec 08             	sub    $0x8,%esp
  101bed:	6a 11                	push   $0x11
  101bef:	6a 20                	push   $0x20
  101bf1:	e8 ca ea ff ff       	call   1006c0 <outb>
  101bf6:	83 c4 10             	add    $0x10,%esp
  101bf9:	83 ec 08             	sub    $0x8,%esp
  101bfc:	6a 11                	push   $0x11
  101bfe:	68 a0 00 00 00       	push   $0xa0
  101c03:	e8 b8 ea ff ff       	call   1006c0 <outb>
  101c08:	83 c4 10             	add    $0x10,%esp
  101c0b:	83 ec 08             	sub    $0x8,%esp
  101c0e:	6a 20                	push   $0x20
  101c10:	6a 21                	push   $0x21
  101c12:	e8 a9 ea ff ff       	call   1006c0 <outb>
  101c17:	83 c4 10             	add    $0x10,%esp
  101c1a:	83 ec 08             	sub    $0x8,%esp
  101c1d:	6a 28                	push   $0x28
  101c1f:	68 a1 00 00 00       	push   $0xa1
  101c24:	e8 97 ea ff ff       	call   1006c0 <outb>
  101c29:	83 c4 10             	add    $0x10,%esp
  101c2c:	83 ec 08             	sub    $0x8,%esp
  101c2f:	6a 04                	push   $0x4
  101c31:	6a 21                	push   $0x21
  101c33:	e8 88 ea ff ff       	call   1006c0 <outb>
  101c38:	83 c4 10             	add    $0x10,%esp
  101c3b:	83 ec 08             	sub    $0x8,%esp
  101c3e:	6a 02                	push   $0x2
  101c40:	68 a1 00 00 00       	push   $0xa1
  101c45:	e8 76 ea ff ff       	call   1006c0 <outb>
  101c4a:	83 c4 10             	add    $0x10,%esp
  101c4d:	83 ec 08             	sub    $0x8,%esp
  101c50:	6a 01                	push   $0x1
  101c52:	6a 21                	push   $0x21
  101c54:	e8 67 ea ff ff       	call   1006c0 <outb>
  101c59:	83 c4 10             	add    $0x10,%esp
  101c5c:	83 ec 08             	sub    $0x8,%esp
  101c5f:	6a 01                	push   $0x1
  101c61:	68 a1 00 00 00       	push   $0xa1
  101c66:	e8 55 ea ff ff       	call   1006c0 <outb>
  101c6b:	83 c4 10             	add    $0x10,%esp
  101c6e:	83 ec 08             	sub    $0x8,%esp
  101c71:	6a 00                	push   $0x0
  101c73:	6a 21                	push   $0x21
  101c75:	e8 46 ea ff ff       	call   1006c0 <outb>
  101c7a:	83 c4 10             	add    $0x10,%esp
  101c7d:	83 ec 08             	sub    $0x8,%esp
  101c80:	6a 00                	push   $0x0
  101c82:	68 a1 00 00 00       	push   $0xa1
  101c87:	e8 34 ea ff ff       	call   1006c0 <outb>
  101c8c:	83 c4 10             	add    $0x10,%esp
  101c8f:	90                   	nop
  101c90:	c9                   	leave  
  101c91:	c3                   	ret    

00101c92 <pic_reset_master>:
  101c92:	55                   	push   %ebp
  101c93:	89 e5                	mov    %esp,%ebp
  101c95:	83 ec 08             	sub    $0x8,%esp
  101c98:	83 ec 08             	sub    $0x8,%esp
  101c9b:	6a 20                	push   $0x20
  101c9d:	6a 20                	push   $0x20
  101c9f:	e8 1c ea ff ff       	call   1006c0 <outb>
  101ca4:	83 c4 10             	add    $0x10,%esp
  101ca7:	83 ec 08             	sub    $0x8,%esp
  101caa:	6a 20                	push   $0x20
  101cac:	6a 21                	push   $0x21
  101cae:	e8 0d ea ff ff       	call   1006c0 <outb>
  101cb3:	83 c4 10             	add    $0x10,%esp
  101cb6:	90                   	nop
  101cb7:	c9                   	leave  
  101cb8:	c3                   	ret    

00101cb9 <pic_reset_slave>:
  101cb9:	55                   	push   %ebp
  101cba:	89 e5                	mov    %esp,%ebp
  101cbc:	83 ec 08             	sub    $0x8,%esp
  101cbf:	83 ec 08             	sub    $0x8,%esp
  101cc2:	6a 20                	push   $0x20
  101cc4:	68 a0 00 00 00       	push   $0xa0
  101cc9:	e8 f2 e9 ff ff       	call   1006c0 <outb>
  101cce:	83 c4 10             	add    $0x10,%esp
  101cd1:	83 ec 08             	sub    $0x8,%esp
  101cd4:	6a 20                	push   $0x20
  101cd6:	68 a1 00 00 00       	push   $0xa1
  101cdb:	e8 e0 e9 ff ff       	call   1006c0 <outb>
  101ce0:	83 c4 10             	add    $0x10,%esp
  101ce3:	90                   	nop
  101ce4:	c9                   	leave  
  101ce5:	c3                   	ret    

00101ce6 <ps2_controller_init>:
  101ce6:	55                   	push   %ebp
  101ce7:	89 e5                	mov    %esp,%ebp
  101ce9:	83 ec 28             	sub    $0x28,%esp
  101cec:	c6 05 f7 18 11 00 00 	movb   $0x0,0x1118f7
  101cf3:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  101cfa:	e8 92 1f 00 00       	call   103c91 <acpi_get_boot_arch_flags>
  101cff:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  101d03:	83 ec 0c             	sub    $0xc,%esp
  101d06:	68 80 22 14 00       	push   $0x142280
  101d0b:	e8 58 6e 00 00       	call   108b68 <__redirect_printf__>
  101d10:	83 c4 10             	add    $0x10,%esp
  101d13:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  101d17:	83 ec 08             	sub    $0x8,%esp
  101d1a:	50                   	push   %eax
  101d1b:	68 30 a2 10 00       	push   $0x10a230
  101d20:	e8 30 77 00 00       	call   109455 <printf>
  101d25:	83 c4 10             	add    $0x10,%esp
  101d28:	83 ec 0c             	sub    $0xc,%esp
  101d2b:	6a 00                	push   $0x0
  101d2d:	e8 36 6e 00 00       	call   108b68 <__redirect_printf__>
  101d32:	83 c4 10             	add    $0x10,%esp
  101d35:	83 ec 0c             	sub    $0xc,%esp
  101d38:	8d 45 eb             	lea    -0x15(%ebp),%eax
  101d3b:	50                   	push   %eax
  101d3c:	e8 5e 0d 00 00       	call   102a9f <cmos_read_rtc>
  101d41:	83 c4 10             	add    $0x10,%esp
  101d44:	83 ec 04             	sub    $0x4,%esp
  101d47:	68 6c 26 14 00       	push   $0x14266c
  101d4c:	83 ec 08             	sub    $0x8,%esp
  101d4f:	89 e0                	mov    %esp,%eax
  101d51:	8b 55 eb             	mov    -0x15(%ebp),%edx
  101d54:	89 10                	mov    %edx,(%eax)
  101d56:	0f b7 55 ef          	movzwl -0x11(%ebp),%edx
  101d5a:	66 89 50 04          	mov    %dx,0x4(%eax)
  101d5e:	e8 61 32 00 00       	call   104fc4 <cmos_datetime_to_str>
  101d63:	83 c4 10             	add    $0x10,%esp
  101d66:	83 ec 0c             	sub    $0xc,%esp
  101d69:	68 80 1e 14 00       	push   $0x141e80
  101d6e:	e8 f5 6d 00 00       	call   108b68 <__redirect_printf__>
  101d73:	83 c4 10             	add    $0x10,%esp
  101d76:	83 ec 04             	sub    $0x4,%esp
  101d79:	68 80 22 14 00       	push   $0x142280
  101d7e:	68 6c 26 14 00       	push   $0x14266c
  101d83:	68 5b a2 10 00       	push   $0x10a25b
  101d88:	e8 c8 76 00 00       	call   109455 <printf>
  101d8d:	83 c4 10             	add    $0x10,%esp
  101d90:	83 ec 0c             	sub    $0xc,%esp
  101d93:	6a 00                	push   $0x0
  101d95:	e8 ce 6d 00 00       	call   108b68 <__redirect_printf__>
  101d9a:	83 c4 10             	add    $0x10,%esp
  101d9d:	83 ec 08             	sub    $0x8,%esp
  101da0:	68 80 1e 14 00       	push   $0x141e80
  101da5:	68 f8 03 00 00       	push   $0x3f8
  101daa:	e8 0a 08 00 00       	call   1025b9 <com_write>
  101daf:	83 c4 10             	add    $0x10,%esp
  101db2:	83 ec 04             	sub    $0x4,%esp
  101db5:	68 00 04 00 00       	push   $0x400
  101dba:	6a 00                	push   $0x0
  101dbc:	68 80 1e 14 00       	push   $0x141e80
  101dc1:	e8 80 7a 00 00       	call   109846 <memset>
  101dc6:	83 c4 10             	add    $0x10,%esp
  101dc9:	83 ec 04             	sub    $0x4,%esp
  101dcc:	68 ec 03 00 00       	push   $0x3ec
  101dd1:	6a 00                	push   $0x0
  101dd3:	68 80 22 14 00       	push   $0x142280
  101dd8:	e8 69 7a 00 00       	call   109846 <memset>
  101ddd:	83 c4 10             	add    $0x10,%esp
  101de0:	83 ec 04             	sub    $0x4,%esp
  101de3:	6a 14                	push   $0x14
  101de5:	6a 00                	push   $0x0
  101de7:	68 6c 26 14 00       	push   $0x14266c
  101dec:	e8 55 7a 00 00       	call   109846 <memset>
  101df1:	83 c4 10             	add    $0x10,%esp
  101df4:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  101df8:	66 d1 e8             	shr    %ax
  101dfb:	0f b7 c0             	movzwl %ax,%eax
  101dfe:	83 e0 01             	and    $0x1,%eax
  101e01:	85 c0                	test   %eax,%eax
  101e03:	0f 84 d2 04 00 00    	je     1022db <ps2_controller_init+0x5f5>
  101e09:	83 ec 08             	sub    $0x8,%esp
  101e0c:	68 ad 00 00 00       	push   $0xad
  101e11:	6a 64                	push   $0x64
  101e13:	e8 a8 e8 ff ff       	call   1006c0 <outb>
  101e18:	83 c4 10             	add    $0x10,%esp
  101e1b:	83 ec 08             	sub    $0x8,%esp
  101e1e:	68 a7 00 00 00       	push   $0xa7
  101e23:	6a 64                	push   $0x64
  101e25:	e8 96 e8 ff ff       	call   1006c0 <outb>
  101e2a:	83 c4 10             	add    $0x10,%esp
  101e2d:	83 ec 0c             	sub    $0xc,%esp
  101e30:	6a 60                	push   $0x60
  101e32:	e8 70 e8 ff ff       	call   1006a7 <inb>
  101e37:	83 c4 10             	add    $0x10,%esp
  101e3a:	83 ec 08             	sub    $0x8,%esp
  101e3d:	6a 20                	push   $0x20
  101e3f:	6a 64                	push   $0x64
  101e41:	e8 7a e8 ff ff       	call   1006c0 <outb>
  101e46:	83 c4 10             	add    $0x10,%esp
  101e49:	83 ec 08             	sub    $0x8,%esp
  101e4c:	6a 60                	push   $0x60
  101e4e:	6a 64                	push   $0x64
  101e50:	e8 6b e8 ff ff       	call   1006c0 <outb>
  101e55:	83 c4 10             	add    $0x10,%esp
  101e58:	83 ec 0c             	sub    $0xc,%esp
  101e5b:	6a 60                	push   $0x60
  101e5d:	e8 45 e8 ff ff       	call   1006a7 <inb>
  101e62:	83 c4 10             	add    $0x10,%esp
  101e65:	88 45 f5             	mov    %al,-0xb(%ebp)
  101e68:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
  101e6c:	c0 e8 02             	shr    $0x2,%al
  101e6f:	83 e0 01             	and    $0x1,%eax
  101e72:	a2 f6 18 11 00       	mov    %al,0x1118f6
  101e77:	83 ec 0c             	sub    $0xc,%esp
  101e7a:	68 80 22 14 00       	push   $0x142280
  101e7f:	e8 e4 6c 00 00       	call   108b68 <__redirect_printf__>
  101e84:	83 c4 10             	add    $0x10,%esp
  101e87:	0f b6 05 f6 18 11 00 	movzbl 0x1118f6,%eax
  101e8e:	0f b6 c0             	movzbl %al,%eax
  101e91:	83 ec 08             	sub    $0x8,%esp
  101e94:	50                   	push   %eax
  101e95:	68 64 a2 10 00       	push   $0x10a264
  101e9a:	e8 b6 75 00 00       	call   109455 <printf>
  101e9f:	83 c4 10             	add    $0x10,%esp
  101ea2:	83 ec 0c             	sub    $0xc,%esp
  101ea5:	6a 00                	push   $0x0
  101ea7:	e8 bc 6c 00 00       	call   108b68 <__redirect_printf__>
  101eac:	83 c4 10             	add    $0x10,%esp
  101eaf:	83 ec 0c             	sub    $0xc,%esp
  101eb2:	8d 45 e5             	lea    -0x1b(%ebp),%eax
  101eb5:	50                   	push   %eax
  101eb6:	e8 e4 0b 00 00       	call   102a9f <cmos_read_rtc>
  101ebb:	83 c4 10             	add    $0x10,%esp
  101ebe:	83 ec 04             	sub    $0x4,%esp
  101ec1:	68 6c 26 14 00       	push   $0x14266c
  101ec6:	83 ec 08             	sub    $0x8,%esp
  101ec9:	89 e0                	mov    %esp,%eax
  101ecb:	8b 55 e5             	mov    -0x1b(%ebp),%edx
  101ece:	89 10                	mov    %edx,(%eax)
  101ed0:	0f b7 55 e9          	movzwl -0x17(%ebp),%edx
  101ed4:	66 89 50 04          	mov    %dx,0x4(%eax)
  101ed8:	e8 e7 30 00 00       	call   104fc4 <cmos_datetime_to_str>
  101edd:	83 c4 10             	add    $0x10,%esp
  101ee0:	83 ec 0c             	sub    $0xc,%esp
  101ee3:	68 80 1e 14 00       	push   $0x141e80
  101ee8:	e8 7b 6c 00 00       	call   108b68 <__redirect_printf__>
  101eed:	83 c4 10             	add    $0x10,%esp
  101ef0:	83 ec 04             	sub    $0x4,%esp
  101ef3:	68 80 22 14 00       	push   $0x142280
  101ef8:	68 6c 26 14 00       	push   $0x14266c
  101efd:	68 5b a2 10 00       	push   $0x10a25b
  101f02:	e8 4e 75 00 00       	call   109455 <printf>
  101f07:	83 c4 10             	add    $0x10,%esp
  101f0a:	83 ec 0c             	sub    $0xc,%esp
  101f0d:	6a 00                	push   $0x0
  101f0f:	e8 54 6c 00 00       	call   108b68 <__redirect_printf__>
  101f14:	83 c4 10             	add    $0x10,%esp
  101f17:	83 ec 08             	sub    $0x8,%esp
  101f1a:	68 80 1e 14 00       	push   $0x141e80
  101f1f:	68 f8 03 00 00       	push   $0x3f8
  101f24:	e8 90 06 00 00       	call   1025b9 <com_write>
  101f29:	83 c4 10             	add    $0x10,%esp
  101f2c:	83 ec 04             	sub    $0x4,%esp
  101f2f:	68 00 04 00 00       	push   $0x400
  101f34:	6a 00                	push   $0x0
  101f36:	68 80 1e 14 00       	push   $0x141e80
  101f3b:	e8 06 79 00 00       	call   109846 <memset>
  101f40:	83 c4 10             	add    $0x10,%esp
  101f43:	83 ec 04             	sub    $0x4,%esp
  101f46:	68 ec 03 00 00       	push   $0x3ec
  101f4b:	6a 00                	push   $0x0
  101f4d:	68 80 22 14 00       	push   $0x142280
  101f52:	e8 ef 78 00 00       	call   109846 <memset>
  101f57:	83 c4 10             	add    $0x10,%esp
  101f5a:	83 ec 04             	sub    $0x4,%esp
  101f5d:	6a 14                	push   $0x14
  101f5f:	6a 00                	push   $0x0
  101f61:	68 6c 26 14 00       	push   $0x14266c
  101f66:	e8 db 78 00 00       	call   109846 <memset>
  101f6b:	83 c4 10             	add    $0x10,%esp
  101f6e:	83 ec 08             	sub    $0x8,%esp
  101f71:	68 aa 00 00 00       	push   $0xaa
  101f76:	6a 64                	push   $0x64
  101f78:	e8 43 e7 ff ff       	call   1006c0 <outb>
  101f7d:	83 c4 10             	add    $0x10,%esp
  101f80:	83 ec 0c             	sub    $0xc,%esp
  101f83:	6a 60                	push   $0x60
  101f85:	e8 1d e7 ff ff       	call   1006a7 <inb>
  101f8a:	83 c4 10             	add    $0x10,%esp
  101f8d:	88 45 f4             	mov    %al,-0xc(%ebp)
  101f90:	80 7d f4 55          	cmpb   $0x55,-0xc(%ebp)
  101f94:	0f 85 45 02 00 00    	jne    1021df <ps2_controller_init+0x4f9>
  101f9a:	83 ec 0c             	sub    $0xc,%esp
  101f9d:	68 80 22 14 00       	push   $0x142280
  101fa2:	e8 c1 6b 00 00       	call   108b68 <__redirect_printf__>
  101fa7:	83 c4 10             	add    $0x10,%esp
  101faa:	83 ec 0c             	sub    $0xc,%esp
  101fad:	68 90 a2 10 00       	push   $0x10a290
  101fb2:	e8 9e 74 00 00       	call   109455 <printf>
  101fb7:	83 c4 10             	add    $0x10,%esp
  101fba:	83 ec 0c             	sub    $0xc,%esp
  101fbd:	6a 00                	push   $0x0
  101fbf:	e8 a4 6b 00 00       	call   108b68 <__redirect_printf__>
  101fc4:	83 c4 10             	add    $0x10,%esp
  101fc7:	83 ec 0c             	sub    $0xc,%esp
  101fca:	8d 45 df             	lea    -0x21(%ebp),%eax
  101fcd:	50                   	push   %eax
  101fce:	e8 cc 0a 00 00       	call   102a9f <cmos_read_rtc>
  101fd3:	83 c4 10             	add    $0x10,%esp
  101fd6:	83 ec 04             	sub    $0x4,%esp
  101fd9:	68 6c 26 14 00       	push   $0x14266c
  101fde:	83 ec 08             	sub    $0x8,%esp
  101fe1:	89 e0                	mov    %esp,%eax
  101fe3:	8b 55 df             	mov    -0x21(%ebp),%edx
  101fe6:	89 10                	mov    %edx,(%eax)
  101fe8:	0f b7 55 e3          	movzwl -0x1d(%ebp),%edx
  101fec:	66 89 50 04          	mov    %dx,0x4(%eax)
  101ff0:	e8 cf 2f 00 00       	call   104fc4 <cmos_datetime_to_str>
  101ff5:	83 c4 10             	add    $0x10,%esp
  101ff8:	83 ec 0c             	sub    $0xc,%esp
  101ffb:	68 80 1e 14 00       	push   $0x141e80
  102000:	e8 63 6b 00 00       	call   108b68 <__redirect_printf__>
  102005:	83 c4 10             	add    $0x10,%esp
  102008:	83 ec 04             	sub    $0x4,%esp
  10200b:	68 80 22 14 00       	push   $0x142280
  102010:	68 6c 26 14 00       	push   $0x14266c
  102015:	68 5b a2 10 00       	push   $0x10a25b
  10201a:	e8 36 74 00 00       	call   109455 <printf>
  10201f:	83 c4 10             	add    $0x10,%esp
  102022:	83 ec 0c             	sub    $0xc,%esp
  102025:	6a 00                	push   $0x0
  102027:	e8 3c 6b 00 00       	call   108b68 <__redirect_printf__>
  10202c:	83 c4 10             	add    $0x10,%esp
  10202f:	83 ec 08             	sub    $0x8,%esp
  102032:	68 80 1e 14 00       	push   $0x141e80
  102037:	68 f8 03 00 00       	push   $0x3f8
  10203c:	e8 78 05 00 00       	call   1025b9 <com_write>
  102041:	83 c4 10             	add    $0x10,%esp
  102044:	83 ec 04             	sub    $0x4,%esp
  102047:	68 00 04 00 00       	push   $0x400
  10204c:	6a 00                	push   $0x0
  10204e:	68 80 1e 14 00       	push   $0x141e80
  102053:	e8 ee 77 00 00       	call   109846 <memset>
  102058:	83 c4 10             	add    $0x10,%esp
  10205b:	83 ec 04             	sub    $0x4,%esp
  10205e:	68 ec 03 00 00       	push   $0x3ec
  102063:	6a 00                	push   $0x0
  102065:	68 80 22 14 00       	push   $0x142280
  10206a:	e8 d7 77 00 00       	call   109846 <memset>
  10206f:	83 c4 10             	add    $0x10,%esp
  102072:	83 ec 04             	sub    $0x4,%esp
  102075:	6a 14                	push   $0x14
  102077:	6a 00                	push   $0x0
  102079:	68 6c 26 14 00       	push   $0x14266c
  10207e:	e8 c3 77 00 00       	call   109846 <memset>
  102083:	83 c4 10             	add    $0x10,%esp
  102086:	0f b6 05 f6 18 11 00 	movzbl 0x1118f6,%eax
  10208d:	84 c0                	test   %al,%al
  10208f:	0f 84 ea 00 00 00    	je     10217f <ps2_controller_init+0x499>
  102095:	83 ec 08             	sub    $0x8,%esp
  102098:	68 ab 00 00 00       	push   $0xab
  10209d:	6a 64                	push   $0x64
  10209f:	e8 1c e6 ff ff       	call   1006c0 <outb>
  1020a4:	83 c4 10             	add    $0x10,%esp
  1020a7:	83 ec 0c             	sub    $0xc,%esp
  1020aa:	6a 60                	push   $0x60
  1020ac:	e8 f6 e5 ff ff       	call   1006a7 <inb>
  1020b1:	83 c4 10             	add    $0x10,%esp
  1020b4:	88 45 f2             	mov    %al,-0xe(%ebp)
  1020b7:	83 ec 08             	sub    $0x8,%esp
  1020ba:	68 a9 00 00 00       	push   $0xa9
  1020bf:	6a 64                	push   $0x64
  1020c1:	e8 fa e5 ff ff       	call   1006c0 <outb>
  1020c6:	83 c4 10             	add    $0x10,%esp
  1020c9:	83 ec 0c             	sub    $0xc,%esp
  1020cc:	6a 60                	push   $0x60
  1020ce:	e8 d4 e5 ff ff       	call   1006a7 <inb>
  1020d3:	83 c4 10             	add    $0x10,%esp
  1020d6:	88 45 f1             	mov    %al,-0xf(%ebp)
  1020d9:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  1020dd:	75 3d                	jne    10211c <ps2_controller_init+0x436>
  1020df:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  1020e3:	75 37                	jne    10211c <ps2_controller_init+0x436>
  1020e5:	83 ec 08             	sub    $0x8,%esp
  1020e8:	68 ae 00 00 00       	push   $0xae
  1020ed:	6a 64                	push   $0x64
  1020ef:	e8 cc e5 ff ff       	call   1006c0 <outb>
  1020f4:	83 c4 10             	add    $0x10,%esp
  1020f7:	83 ec 08             	sub    $0x8,%esp
  1020fa:	68 a8 00 00 00       	push   $0xa8
  1020ff:	6a 64                	push   $0x64
  102101:	e8 ba e5 ff ff       	call   1006c0 <outb>
  102106:	83 c4 10             	add    $0x10,%esp
  102109:	c6 05 f6 18 11 00 01 	movb   $0x1,0x1118f6
  102110:	c6 05 f7 18 11 00 01 	movb   $0x1,0x1118f7
  102117:	e9 bf 01 00 00       	jmp    1022db <ps2_controller_init+0x5f5>
  10211c:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  102120:	75 2b                	jne    10214d <ps2_controller_init+0x467>
  102122:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  102126:	74 25                	je     10214d <ps2_controller_init+0x467>
  102128:	83 ec 08             	sub    $0x8,%esp
  10212b:	68 ae 00 00 00       	push   $0xae
  102130:	6a 64                	push   $0x64
  102132:	e8 89 e5 ff ff       	call   1006c0 <outb>
  102137:	83 c4 10             	add    $0x10,%esp
  10213a:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  102141:	c6 05 f7 18 11 00 01 	movb   $0x1,0x1118f7
  102148:	e9 8e 01 00 00       	jmp    1022db <ps2_controller_init+0x5f5>
  10214d:	80 7d f2 00          	cmpb   $0x0,-0xe(%ebp)
  102151:	74 19                	je     10216c <ps2_controller_init+0x486>
  102153:	80 7d f1 00          	cmpb   $0x0,-0xf(%ebp)
  102157:	75 13                	jne    10216c <ps2_controller_init+0x486>
  102159:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  102160:	c6 05 f7 18 11 00 00 	movb   $0x0,0x1118f7
  102167:	e9 6f 01 00 00       	jmp    1022db <ps2_controller_init+0x5f5>
  10216c:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  102173:	c6 05 f7 18 11 00 00 	movb   $0x0,0x1118f7
  10217a:	e9 5c 01 00 00       	jmp    1022db <ps2_controller_init+0x5f5>
  10217f:	83 ec 08             	sub    $0x8,%esp
  102182:	68 ab 00 00 00       	push   $0xab
  102187:	6a 64                	push   $0x64
  102189:	e8 32 e5 ff ff       	call   1006c0 <outb>
  10218e:	83 c4 10             	add    $0x10,%esp
  102191:	83 ec 0c             	sub    $0xc,%esp
  102194:	6a 60                	push   $0x60
  102196:	e8 0c e5 ff ff       	call   1006a7 <inb>
  10219b:	83 c4 10             	add    $0x10,%esp
  10219e:	88 45 f3             	mov    %al,-0xd(%ebp)
  1021a1:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  1021a5:	74 13                	je     1021ba <ps2_controller_init+0x4d4>
  1021a7:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  1021ae:	c6 05 f7 18 11 00 00 	movb   $0x0,0x1118f7
  1021b5:	e9 21 01 00 00       	jmp    1022db <ps2_controller_init+0x5f5>
  1021ba:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  1021c1:	c6 05 f7 18 11 00 01 	movb   $0x1,0x1118f7
  1021c8:	83 ec 08             	sub    $0x8,%esp
  1021cb:	68 ae 00 00 00       	push   $0xae
  1021d0:	6a 64                	push   $0x64
  1021d2:	e8 e9 e4 ff ff       	call   1006c0 <outb>
  1021d7:	83 c4 10             	add    $0x10,%esp
  1021da:	e9 fc 00 00 00       	jmp    1022db <ps2_controller_init+0x5f5>
  1021df:	c6 05 f6 18 11 00 00 	movb   $0x0,0x1118f6
  1021e6:	c6 05 f7 18 11 00 00 	movb   $0x0,0x1118f7
  1021ed:	83 ec 0c             	sub    $0xc,%esp
  1021f0:	68 80 22 14 00       	push   $0x142280
  1021f5:	e8 6e 69 00 00       	call   108b68 <__redirect_printf__>
  1021fa:	83 c4 10             	add    $0x10,%esp
  1021fd:	83 ec 0c             	sub    $0xc,%esp
  102200:	68 b4 a2 10 00       	push   $0x10a2b4
  102205:	e8 4b 72 00 00       	call   109455 <printf>
  10220a:	83 c4 10             	add    $0x10,%esp
  10220d:	83 ec 0c             	sub    $0xc,%esp
  102210:	6a 00                	push   $0x0
  102212:	e8 51 69 00 00       	call   108b68 <__redirect_printf__>
  102217:	83 c4 10             	add    $0x10,%esp
  10221a:	83 ec 0c             	sub    $0xc,%esp
  10221d:	8d 45 d9             	lea    -0x27(%ebp),%eax
  102220:	50                   	push   %eax
  102221:	e8 79 08 00 00       	call   102a9f <cmos_read_rtc>
  102226:	83 c4 10             	add    $0x10,%esp
  102229:	83 ec 04             	sub    $0x4,%esp
  10222c:	68 6c 26 14 00       	push   $0x14266c
  102231:	83 ec 08             	sub    $0x8,%esp
  102234:	89 e0                	mov    %esp,%eax
  102236:	8b 55 d9             	mov    -0x27(%ebp),%edx
  102239:	89 10                	mov    %edx,(%eax)
  10223b:	0f b7 55 dd          	movzwl -0x23(%ebp),%edx
  10223f:	66 89 50 04          	mov    %dx,0x4(%eax)
  102243:	e8 7c 2d 00 00       	call   104fc4 <cmos_datetime_to_str>
  102248:	83 c4 10             	add    $0x10,%esp
  10224b:	83 ec 0c             	sub    $0xc,%esp
  10224e:	68 80 1e 14 00       	push   $0x141e80
  102253:	e8 10 69 00 00       	call   108b68 <__redirect_printf__>
  102258:	83 c4 10             	add    $0x10,%esp
  10225b:	83 ec 04             	sub    $0x4,%esp
  10225e:	68 80 22 14 00       	push   $0x142280
  102263:	68 6c 26 14 00       	push   $0x14266c
  102268:	68 5b a2 10 00       	push   $0x10a25b
  10226d:	e8 e3 71 00 00       	call   109455 <printf>
  102272:	83 c4 10             	add    $0x10,%esp
  102275:	83 ec 0c             	sub    $0xc,%esp
  102278:	6a 00                	push   $0x0
  10227a:	e8 e9 68 00 00       	call   108b68 <__redirect_printf__>
  10227f:	83 c4 10             	add    $0x10,%esp
  102282:	83 ec 08             	sub    $0x8,%esp
  102285:	68 80 1e 14 00       	push   $0x141e80
  10228a:	68 f8 03 00 00       	push   $0x3f8
  10228f:	e8 25 03 00 00       	call   1025b9 <com_write>
  102294:	83 c4 10             	add    $0x10,%esp
  102297:	83 ec 04             	sub    $0x4,%esp
  10229a:	68 00 04 00 00       	push   $0x400
  10229f:	6a 00                	push   $0x0
  1022a1:	68 80 1e 14 00       	push   $0x141e80
  1022a6:	e8 9b 75 00 00       	call   109846 <memset>
  1022ab:	83 c4 10             	add    $0x10,%esp
  1022ae:	83 ec 04             	sub    $0x4,%esp
  1022b1:	68 ec 03 00 00       	push   $0x3ec
  1022b6:	6a 00                	push   $0x0
  1022b8:	68 80 22 14 00       	push   $0x142280
  1022bd:	e8 84 75 00 00       	call   109846 <memset>
  1022c2:	83 c4 10             	add    $0x10,%esp
  1022c5:	83 ec 04             	sub    $0x4,%esp
  1022c8:	6a 14                	push   $0x14
  1022ca:	6a 00                	push   $0x0
  1022cc:	68 6c 26 14 00       	push   $0x14266c
  1022d1:	e8 70 75 00 00       	call   109846 <memset>
  1022d6:	83 c4 10             	add    $0x10,%esp
  1022d9:	eb 00                	jmp    1022db <ps2_controller_init+0x5f5>
  1022db:	90                   	nop
  1022dc:	c9                   	leave  
  1022dd:	c3                   	ret    

001022de <ps2_is_dual_channel>:
  1022de:	55                   	push   %ebp
  1022df:	89 e5                	mov    %esp,%ebp
  1022e1:	0f b6 05 f6 18 11 00 	movzbl 0x1118f6,%eax
  1022e8:	5d                   	pop    %ebp
  1022e9:	c3                   	ret    

001022ea <ps2_is_present>:
  1022ea:	55                   	push   %ebp
  1022eb:	89 e5                	mov    %esp,%ebp
  1022ed:	0f b6 05 f7 18 11 00 	movzbl 0x1118f7,%eax
  1022f4:	5d                   	pop    %ebp
  1022f5:	c3                   	ret    

001022f6 <COM_SET_BAUD>:
  1022f6:	55                   	push   %ebp
  1022f7:	89 e5                	mov    %esp,%ebp
  1022f9:	83 ec 10             	sub    $0x10,%esp
  1022fc:	b8 00 c2 01 00       	mov    $0x1c200,%eax
  102301:	99                   	cltd   
  102302:	f7 7d 08             	idivl  0x8(%ebp)
  102305:	88 45 ff             	mov    %al,-0x1(%ebp)
  102308:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  10230c:	c9                   	leave  
  10230d:	c3                   	ret    

0010230e <COM_SET_BPS>:
  10230e:	55                   	push   %ebp
  10230f:	89 e5                	mov    %esp,%ebp
  102311:	83 ec 1c             	sub    $0x1c,%esp
  102314:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102317:	8b 55 0c             	mov    0xc(%ebp),%edx
  10231a:	8b 45 10             	mov    0x10(%ebp),%eax
  10231d:	88 4d ec             	mov    %cl,-0x14(%ebp)
  102320:	88 55 e8             	mov    %dl,-0x18(%ebp)
  102323:	88 45 e4             	mov    %al,-0x1c(%ebp)
  102326:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
  10232a:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  10232e:	83 e0 03             	and    $0x3,%eax
  102331:	89 c2                	mov    %eax,%edx
  102333:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  102337:	09 d0                	or     %edx,%eax
  102339:	88 45 ff             	mov    %al,-0x1(%ebp)
  10233c:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  102340:	c1 e0 02             	shl    $0x2,%eax
  102343:	83 e0 04             	and    $0x4,%eax
  102346:	89 c2                	mov    %eax,%edx
  102348:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  10234c:	09 d0                	or     %edx,%eax
  10234e:	88 45 ff             	mov    %al,-0x1(%ebp)
  102351:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  102355:	c1 e0 03             	shl    $0x3,%eax
  102358:	83 e0 38             	and    $0x38,%eax
  10235b:	89 c2                	mov    %eax,%edx
  10235d:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  102361:	09 d0                	or     %edx,%eax
  102363:	88 45 ff             	mov    %al,-0x1(%ebp)
  102366:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  10236a:	c9                   	leave  
  10236b:	c3                   	ret    

0010236c <com_init>:
  10236c:	55                   	push   %ebp
  10236d:	89 e5                	mov    %esp,%ebp
  10236f:	83 ec 28             	sub    $0x28,%esp
  102372:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102375:	8b 55 14             	mov    0x14(%ebp),%edx
  102378:	8b 45 18             	mov    0x18(%ebp),%eax
  10237b:	88 4d e4             	mov    %cl,-0x1c(%ebp)
  10237e:	88 55 e0             	mov    %dl,-0x20(%ebp)
  102381:	88 45 dc             	mov    %al,-0x24(%ebp)
  102384:	c6 05 38 19 14 00 00 	movb   $0x0,0x141938
  10238b:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102392:	75 09                	jne    10239d <com_init+0x31>
  102394:	c6 05 00 19 11 00 00 	movb   $0x0,0x111900
  10239b:	eb 26                	jmp    1023c3 <com_init+0x57>
  10239d:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1023a4:	75 09                	jne    1023af <com_init+0x43>
  1023a6:	c6 05 01 19 11 00 00 	movb   $0x0,0x111901
  1023ad:	eb 14                	jmp    1023c3 <com_init+0x57>
  1023af:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  1023b6:	0f 85 97 01 00 00    	jne    102553 <com_init+0x1e7>
  1023bc:	c6 05 02 19 11 00 00 	movb   $0x0,0x111902
  1023c3:	8b 45 08             	mov    0x8(%ebp),%eax
  1023c6:	83 c0 01             	add    $0x1,%eax
  1023c9:	83 ec 08             	sub    $0x8,%esp
  1023cc:	6a 00                	push   $0x0
  1023ce:	50                   	push   %eax
  1023cf:	e8 ec e2 ff ff       	call   1006c0 <outb>
  1023d4:	83 c4 10             	add    $0x10,%esp
  1023d7:	8b 45 08             	mov    0x8(%ebp),%eax
  1023da:	83 c0 03             	add    $0x3,%eax
  1023dd:	83 ec 08             	sub    $0x8,%esp
  1023e0:	68 80 00 00 00       	push   $0x80
  1023e5:	50                   	push   %eax
  1023e6:	e8 d5 e2 ff ff       	call   1006c0 <outb>
  1023eb:	83 c4 10             	add    $0x10,%esp
  1023ee:	83 ec 0c             	sub    $0xc,%esp
  1023f1:	ff 75 0c             	push   0xc(%ebp)
  1023f4:	e8 fd fe ff ff       	call   1022f6 <COM_SET_BAUD>
  1023f9:	83 c4 10             	add    $0x10,%esp
  1023fc:	0f b6 c0             	movzbl %al,%eax
  1023ff:	83 ec 08             	sub    $0x8,%esp
  102402:	50                   	push   %eax
  102403:	ff 75 08             	push   0x8(%ebp)
  102406:	e8 b5 e2 ff ff       	call   1006c0 <outb>
  10240b:	83 c4 10             	add    $0x10,%esp
  10240e:	8b 45 08             	mov    0x8(%ebp),%eax
  102411:	83 c0 01             	add    $0x1,%eax
  102414:	83 ec 08             	sub    $0x8,%esp
  102417:	6a 00                	push   $0x0
  102419:	50                   	push   %eax
  10241a:	e8 a1 e2 ff ff       	call   1006c0 <outb>
  10241f:	83 c4 10             	add    $0x10,%esp
  102422:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
  102426:	0f b6 55 e0          	movzbl -0x20(%ebp),%edx
  10242a:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  10242e:	83 ec 04             	sub    $0x4,%esp
  102431:	51                   	push   %ecx
  102432:	52                   	push   %edx
  102433:	50                   	push   %eax
  102434:	e8 d5 fe ff ff       	call   10230e <COM_SET_BPS>
  102439:	83 c4 10             	add    $0x10,%esp
  10243c:	0f b6 c0             	movzbl %al,%eax
  10243f:	8b 55 08             	mov    0x8(%ebp),%edx
  102442:	83 c2 03             	add    $0x3,%edx
  102445:	83 ec 08             	sub    $0x8,%esp
  102448:	50                   	push   %eax
  102449:	52                   	push   %edx
  10244a:	e8 71 e2 ff ff       	call   1006c0 <outb>
  10244f:	83 c4 10             	add    $0x10,%esp
  102452:	8b 45 08             	mov    0x8(%ebp),%eax
  102455:	83 c0 02             	add    $0x2,%eax
  102458:	83 ec 08             	sub    $0x8,%esp
  10245b:	68 c7 00 00 00       	push   $0xc7
  102460:	50                   	push   %eax
  102461:	e8 5a e2 ff ff       	call   1006c0 <outb>
  102466:	83 c4 10             	add    $0x10,%esp
  102469:	8b 45 08             	mov    0x8(%ebp),%eax
  10246c:	83 c0 04             	add    $0x4,%eax
  10246f:	83 ec 08             	sub    $0x8,%esp
  102472:	6a 0b                	push   $0xb
  102474:	50                   	push   %eax
  102475:	e8 46 e2 ff ff       	call   1006c0 <outb>
  10247a:	83 c4 10             	add    $0x10,%esp
  10247d:	8b 45 08             	mov    0x8(%ebp),%eax
  102480:	83 c0 01             	add    $0x1,%eax
  102483:	83 ec 08             	sub    $0x8,%esp
  102486:	6a 01                	push   $0x1
  102488:	50                   	push   %eax
  102489:	e8 32 e2 ff ff       	call   1006c0 <outb>
  10248e:	83 c4 10             	add    $0x10,%esp
  102491:	8b 45 08             	mov    0x8(%ebp),%eax
  102494:	83 c0 04             	add    $0x4,%eax
  102497:	83 ec 08             	sub    $0x8,%esp
  10249a:	6a 1e                	push   $0x1e
  10249c:	50                   	push   %eax
  10249d:	e8 1e e2 ff ff       	call   1006c0 <outb>
  1024a2:	83 c4 10             	add    $0x10,%esp
  1024a5:	83 ec 08             	sub    $0x8,%esp
  1024a8:	68 ae 00 00 00       	push   $0xae
  1024ad:	ff 75 08             	push   0x8(%ebp)
  1024b0:	e8 0b e2 ff ff       	call   1006c0 <outb>
  1024b5:	83 c4 10             	add    $0x10,%esp
  1024b8:	83 ec 0c             	sub    $0xc,%esp
  1024bb:	ff 75 08             	push   0x8(%ebp)
  1024be:	e8 e4 e1 ff ff       	call   1006a7 <inb>
  1024c3:	83 c4 10             	add    $0x10,%esp
  1024c6:	88 45 f7             	mov    %al,-0x9(%ebp)
  1024c9:	80 7d f7 ae          	cmpb   $0xae,-0x9(%ebp)
  1024cd:	0f 85 81 00 00 00    	jne    102554 <com_init+0x1e8>
  1024d3:	8b 45 08             	mov    0x8(%ebp),%eax
  1024d6:	83 c0 04             	add    $0x4,%eax
  1024d9:	83 ec 08             	sub    $0x8,%esp
  1024dc:	6a 0f                	push   $0xf
  1024de:	50                   	push   %eax
  1024df:	e8 dc e1 ff ff       	call   1006c0 <outb>
  1024e4:	83 c4 10             	add    $0x10,%esp
  1024e7:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1024ee:	75 1b                	jne    10250b <com_init+0x19f>
  1024f0:	c6 05 00 19 11 00 01 	movb   $0x1,0x111900
  1024f7:	83 ec 08             	sub    $0x8,%esp
  1024fa:	68 b8 28 10 00       	push   $0x1028b8
  1024ff:	6a 24                	push   $0x24
  102501:	e8 1b ed ff ff       	call   101221 <isr_register>
  102506:	83 c4 10             	add    $0x10,%esp
  102509:	eb 49                	jmp    102554 <com_init+0x1e8>
  10250b:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102512:	75 1b                	jne    10252f <com_init+0x1c3>
  102514:	c6 05 01 19 11 00 01 	movb   $0x1,0x111901
  10251b:	83 ec 08             	sub    $0x8,%esp
  10251e:	68 da 28 10 00       	push   $0x1028da
  102523:	6a 23                	push   $0x23
  102525:	e8 f7 ec ff ff       	call   101221 <isr_register>
  10252a:	83 c4 10             	add    $0x10,%esp
  10252d:	eb 25                	jmp    102554 <com_init+0x1e8>
  10252f:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102536:	75 1c                	jne    102554 <com_init+0x1e8>
  102538:	c6 05 02 19 11 00 01 	movb   $0x1,0x111902
  10253f:	83 ec 08             	sub    $0x8,%esp
  102542:	68 fc 28 10 00       	push   $0x1028fc
  102547:	6a 24                	push   $0x24
  102549:	e8 d3 ec ff ff       	call   101221 <isr_register>
  10254e:	83 c4 10             	add    $0x10,%esp
  102551:	eb 01                	jmp    102554 <com_init+0x1e8>
  102553:	90                   	nop
  102554:	c9                   	leave  
  102555:	c3                   	ret    

00102556 <com_set_int_byte>:
  102556:	55                   	push   %ebp
  102557:	89 e5                	mov    %esp,%ebp
  102559:	83 ec 04             	sub    $0x4,%esp
  10255c:	8b 45 08             	mov    0x8(%ebp),%eax
  10255f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102562:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  102566:	a2 38 19 14 00       	mov    %al,0x141938
  10256b:	90                   	nop
  10256c:	c9                   	leave  
  10256d:	c3                   	ret    

0010256e <com_is_initialized>:
  10256e:	55                   	push   %ebp
  10256f:	89 e5                	mov    %esp,%ebp
  102571:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102578:	74 1d                	je     102597 <com_is_initialized+0x29>
  10257a:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102581:	7f 2f                	jg     1025b2 <com_is_initialized+0x44>
  102583:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  10258a:	74 14                	je     1025a0 <com_is_initialized+0x32>
  10258c:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102593:	74 14                	je     1025a9 <com_is_initialized+0x3b>
  102595:	eb 1b                	jmp    1025b2 <com_is_initialized+0x44>
  102597:	0f b6 05 00 19 11 00 	movzbl 0x111900,%eax
  10259e:	eb 17                	jmp    1025b7 <com_is_initialized+0x49>
  1025a0:	0f b6 05 01 19 11 00 	movzbl 0x111901,%eax
  1025a7:	eb 0e                	jmp    1025b7 <com_is_initialized+0x49>
  1025a9:	0f b6 05 02 19 11 00 	movzbl 0x111902,%eax
  1025b0:	eb 05                	jmp    1025b7 <com_is_initialized+0x49>
  1025b2:	b8 00 00 00 00       	mov    $0x0,%eax
  1025b7:	5d                   	pop    %ebp
  1025b8:	c3                   	ret    

001025b9 <com_write>:
  1025b9:	55                   	push   %ebp
  1025ba:	89 e5                	mov    %esp,%ebp
  1025bc:	83 ec 28             	sub    $0x28,%esp
  1025bf:	83 ec 0c             	sub    $0xc,%esp
  1025c2:	ff 75 0c             	push   0xc(%ebp)
  1025c5:	e8 af 72 00 00       	call   109879 <strlen>
  1025ca:	83 c4 10             	add    $0x10,%esp
  1025cd:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1025d0:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1025d7:	74 27                	je     102600 <com_write+0x47>
  1025d9:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1025e0:	74 17                	je     1025f9 <com_write+0x40>
  1025e2:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  1025e9:	75 07                	jne    1025f2 <com_write+0x39>
  1025eb:	b8 20 19 12 00       	mov    $0x121920,%eax
  1025f0:	eb 13                	jmp    102605 <com_write+0x4c>
  1025f2:	b8 00 00 00 00       	mov    $0x0,%eax
  1025f7:	eb 0c                	jmp    102605 <com_write+0x4c>
  1025f9:	b8 20 99 11 00       	mov    $0x119920,%eax
  1025fe:	eb 05                	jmp    102605 <com_write+0x4c>
  102600:	b8 20 19 11 00       	mov    $0x111920,%eax
  102605:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102608:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  10260f:	74 27                	je     102638 <com_write+0x7f>
  102611:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102618:	74 17                	je     102631 <com_write+0x78>
  10261a:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102621:	75 07                	jne    10262a <com_write+0x71>
  102623:	b8 28 19 14 00       	mov    $0x141928,%eax
  102628:	eb 13                	jmp    10263d <com_write+0x84>
  10262a:	b8 00 00 00 00       	mov    $0x0,%eax
  10262f:	eb 0c                	jmp    10263d <com_write+0x84>
  102631:	b8 24 19 14 00       	mov    $0x141924,%eax
  102636:	eb 05                	jmp    10263d <com_write+0x84>
  102638:	b8 20 19 14 00       	mov    $0x141920,%eax
  10263d:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102640:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  102644:	74 06                	je     10264c <com_write+0x93>
  102646:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  10264a:	75 07                	jne    102653 <com_write+0x9a>
  10264c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102651:	eb 5c                	jmp    1026af <com_write+0xf6>
  102653:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10265a:	eb 48                	jmp    1026a4 <com_write+0xeb>
  10265c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10265f:	8b 00                	mov    (%eax),%eax
  102661:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102664:	81 7d e4 00 80 00 00 	cmpl   $0x8000,-0x1c(%ebp)
  10266b:	75 0e                	jne    10267b <com_write+0xc2>
  10266d:	c6 05 c4 26 14 00 4b 	movb   $0x4b,0x1426c4
  102674:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102679:	eb 34                	jmp    1026af <com_write+0xf6>
  10267b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10267e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102681:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  102684:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102687:	8b 10                	mov    (%eax),%edx
  102689:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10268c:	01 c2                	add    %eax,%edx
  10268e:	0f b6 01             	movzbl (%ecx),%eax
  102691:	88 02                	mov    %al,(%edx)
  102693:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102696:	83 c0 01             	add    $0x1,%eax
  102699:	89 c2                	mov    %eax,%edx
  10269b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10269e:	89 10                	mov    %edx,(%eax)
  1026a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1026a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1026a7:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1026aa:	7c b0                	jl     10265c <com_write+0xa3>
  1026ac:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1026af:	c9                   	leave  
  1026b0:	c3                   	ret    

001026b1 <com_read>:
  1026b1:	55                   	push   %ebp
  1026b2:	89 e5                	mov    %esp,%ebp
  1026b4:	53                   	push   %ebx
  1026b5:	83 ec 14             	sub    $0x14,%esp
  1026b8:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1026bf:	74 27                	je     1026e8 <com_read+0x37>
  1026c1:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  1026c8:	74 17                	je     1026e1 <com_read+0x30>
  1026ca:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  1026d1:	75 07                	jne    1026da <com_read+0x29>
  1026d3:	b8 20 99 13 00       	mov    $0x139920,%eax
  1026d8:	eb 13                	jmp    1026ed <com_read+0x3c>
  1026da:	b8 00 00 00 00       	mov    $0x0,%eax
  1026df:	eb 0c                	jmp    1026ed <com_read+0x3c>
  1026e1:	b8 20 19 13 00       	mov    $0x131920,%eax
  1026e6:	eb 05                	jmp    1026ed <com_read+0x3c>
  1026e8:	b8 20 99 12 00       	mov    $0x129920,%eax
  1026ed:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1026f0:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  1026f7:	74 27                	je     102720 <com_read+0x6f>
  1026f9:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102700:	74 17                	je     102719 <com_read+0x68>
  102702:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102709:	75 07                	jne    102712 <com_read+0x61>
  10270b:	b8 34 19 14 00       	mov    $0x141934,%eax
  102710:	eb 13                	jmp    102725 <com_read+0x74>
  102712:	b8 00 00 00 00       	mov    $0x0,%eax
  102717:	eb 0c                	jmp    102725 <com_read+0x74>
  102719:	b8 30 19 14 00       	mov    $0x141930,%eax
  10271e:	eb 05                	jmp    102725 <com_read+0x74>
  102720:	b8 2c 19 14 00       	mov    $0x14192c,%eax
  102725:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102728:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  10272c:	74 06                	je     102734 <com_read+0x83>
  10272e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  102732:	75 0a                	jne    10273e <com_read+0x8d>
  102734:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102739:	e9 89 00 00 00       	jmp    1027c7 <com_read+0x116>
  10273e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102741:	8b 10                	mov    (%eax),%edx
  102743:	8b 45 10             	mov    0x10(%ebp),%eax
  102746:	39 c2                	cmp    %eax,%edx
  102748:	0f 46 c2             	cmovbe %edx,%eax
  10274b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10274e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102751:	83 ec 04             	sub    $0x4,%esp
  102754:	50                   	push   %eax
  102755:	ff 75 f0             	push   -0x10(%ebp)
  102758:	ff 75 0c             	push   0xc(%ebp)
  10275b:	e8 2d 70 00 00       	call   10978d <memcpy>
  102760:	83 c4 10             	add    $0x10,%esp
  102763:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102766:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102769:	eb 20                	jmp    10278b <com_read+0xda>
  10276b:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10276e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102771:	01 d0                	add    %edx,%eax
  102773:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102776:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102779:	89 d3                	mov    %edx,%ebx
  10277b:	29 cb                	sub    %ecx,%ebx
  10277d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  102780:	01 da                	add    %ebx,%edx
  102782:	0f b6 00             	movzbl (%eax),%eax
  102785:	88 02                	mov    %al,(%edx)
  102787:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10278b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10278e:	8b 00                	mov    (%eax),%eax
  102790:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  102793:	72 d6                	jb     10276b <com_read+0xba>
  102795:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102798:	8b 00                	mov    (%eax),%eax
  10279a:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10279d:	29 c8                	sub    %ecx,%eax
  10279f:	89 c2                	mov    %eax,%edx
  1027a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027a4:	89 10                	mov    %edx,(%eax)
  1027a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027a9:	8b 00                	mov    (%eax),%eax
  1027ab:	85 c0                	test   %eax,%eax
  1027ad:	75 15                	jne    1027c4 <com_read+0x113>
  1027af:	83 ec 04             	sub    $0x4,%esp
  1027b2:	68 00 80 00 00       	push   $0x8000
  1027b7:	6a 00                	push   $0x0
  1027b9:	ff 75 f0             	push   -0x10(%ebp)
  1027bc:	e8 85 70 00 00       	call   109846 <memset>
  1027c1:	83 c4 10             	add    $0x10,%esp
  1027c4:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1027c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1027ca:	c9                   	leave  
  1027cb:	c3                   	ret    

001027cc <com_irq_handler>:
  1027cc:	55                   	push   %ebp
  1027cd:	89 e5                	mov    %esp,%ebp
  1027cf:	83 ec 18             	sub    $0x18,%esp
  1027d2:	8b 45 10             	mov    0x10(%ebp),%eax
  1027d5:	8b 00                	mov    (%eax),%eax
  1027d7:	3d 00 80 00 00       	cmp    $0x8000,%eax
  1027dc:	75 0c                	jne    1027ea <com_irq_handler+0x1e>
  1027de:	c6 05 c4 26 14 00 4b 	movb   $0x4b,0x1426c4
  1027e5:	e9 bc 00 00 00       	jmp    1028a6 <com_irq_handler+0xda>
  1027ea:	83 ec 0c             	sub    $0xc,%esp
  1027ed:	ff 75 08             	push   0x8(%ebp)
  1027f0:	e8 b2 de ff ff       	call   1006a7 <inb>
  1027f5:	83 c4 10             	add    $0x10,%esp
  1027f8:	88 45 f7             	mov    %al,-0x9(%ebp)
  1027fb:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  1027ff:	0f 84 a1 00 00 00    	je     1028a6 <com_irq_handler+0xda>
  102805:	0f b6 05 38 19 14 00 	movzbl 0x141938,%eax
  10280c:	84 c0                	test   %al,%al
  10280e:	74 6d                	je     10287d <com_irq_handler+0xb1>
  102810:	0f b6 05 38 19 14 00 	movzbl 0x141938,%eax
  102817:	38 45 f7             	cmp    %al,-0x9(%ebp)
  10281a:	75 61                	jne    10287d <com_irq_handler+0xb1>
  10281c:	8b 45 10             	mov    0x10(%ebp),%eax
  10281f:	8b 00                	mov    (%eax),%eax
  102821:	85 c0                	test   %eax,%eax
  102823:	74 58                	je     10287d <com_irq_handler+0xb1>
  102825:	8b 45 10             	mov    0x10(%ebp),%eax
  102828:	8b 00                	mov    (%eax),%eax
  10282a:	c1 e0 02             	shl    $0x2,%eax
  10282d:	83 ec 0c             	sub    $0xc,%esp
  102830:	50                   	push   %eax
  102831:	e8 84 37 00 00       	call   105fba <kmalloc>
  102836:	83 c4 10             	add    $0x10,%esp
  102839:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10283c:	8b 45 10             	mov    0x10(%ebp),%eax
  10283f:	8b 00                	mov    (%eax),%eax
  102841:	c1 e0 02             	shl    $0x2,%eax
  102844:	83 ec 04             	sub    $0x4,%esp
  102847:	50                   	push   %eax
  102848:	6a 00                	push   $0x0
  10284a:	ff 75 f0             	push   -0x10(%ebp)
  10284d:	e8 f4 6f 00 00       	call   109846 <memset>
  102852:	83 c4 10             	add    $0x10,%esp
  102855:	8b 45 10             	mov    0x10(%ebp),%eax
  102858:	8b 10                	mov    (%eax),%edx
  10285a:	8b 45 14             	mov    0x14(%ebp),%eax
  10285d:	83 ec 04             	sub    $0x4,%esp
  102860:	52                   	push   %edx
  102861:	ff 75 f0             	push   -0x10(%ebp)
  102864:	50                   	push   %eax
  102865:	e8 da 62 00 00       	call   108b44 <read>
  10286a:	83 c4 10             	add    $0x10,%esp
  10286d:	83 ec 0c             	sub    $0xc,%esp
  102870:	ff 75 f0             	push   -0x10(%ebp)
  102873:	e8 e2 37 00 00       	call   10605a <kfree>
  102878:	83 c4 10             	add    $0x10,%esp
  10287b:	eb 29                	jmp    1028a6 <com_irq_handler+0xda>
  10287d:	0f b6 05 38 19 14 00 	movzbl 0x141938,%eax
  102884:	38 45 f7             	cmp    %al,-0x9(%ebp)
  102887:	74 1d                	je     1028a6 <com_irq_handler+0xda>
  102889:	8b 45 10             	mov    0x10(%ebp),%eax
  10288c:	8b 10                	mov    (%eax),%edx
  10288e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102891:	01 c2                	add    %eax,%edx
  102893:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  102897:	88 02                	mov    %al,(%edx)
  102899:	8b 45 10             	mov    0x10(%ebp),%eax
  10289c:	8b 00                	mov    (%eax),%eax
  10289e:	8d 50 01             	lea    0x1(%eax),%edx
  1028a1:	8b 45 10             	mov    0x10(%ebp),%eax
  1028a4:	89 10                	mov    %edx,(%eax)
  1028a6:	83 ec 08             	sub    $0x8,%esp
  1028a9:	6a 20                	push   $0x20
  1028ab:	6a 20                	push   $0x20
  1028ad:	e8 0e de ff ff       	call   1006c0 <outb>
  1028b2:	83 c4 10             	add    $0x10,%esp
  1028b5:	90                   	nop
  1028b6:	c9                   	leave  
  1028b7:	c3                   	ret    

001028b8 <com_1_irq_handler>:
  1028b8:	55                   	push   %ebp
  1028b9:	89 e5                	mov    %esp,%ebp
  1028bb:	83 ec 08             	sub    $0x8,%esp
  1028be:	6a 04                	push   $0x4
  1028c0:	68 2c 19 14 00       	push   $0x14192c
  1028c5:	68 20 99 12 00       	push   $0x129920
  1028ca:	68 f8 03 00 00       	push   $0x3f8
  1028cf:	e8 f8 fe ff ff       	call   1027cc <com_irq_handler>
  1028d4:	83 c4 10             	add    $0x10,%esp
  1028d7:	90                   	nop
  1028d8:	c9                   	leave  
  1028d9:	c3                   	ret    

001028da <com_2_irq_handler>:
  1028da:	55                   	push   %ebp
  1028db:	89 e5                	mov    %esp,%ebp
  1028dd:	83 ec 08             	sub    $0x8,%esp
  1028e0:	6a 05                	push   $0x5
  1028e2:	68 30 19 14 00       	push   $0x141930
  1028e7:	68 20 19 13 00       	push   $0x131920
  1028ec:	68 f8 02 00 00       	push   $0x2f8
  1028f1:	e8 d6 fe ff ff       	call   1027cc <com_irq_handler>
  1028f6:	83 c4 10             	add    $0x10,%esp
  1028f9:	90                   	nop
  1028fa:	c9                   	leave  
  1028fb:	c3                   	ret    

001028fc <com_3_irq_handler>:
  1028fc:	55                   	push   %ebp
  1028fd:	89 e5                	mov    %esp,%ebp
  1028ff:	83 ec 08             	sub    $0x8,%esp
  102902:	6a 06                	push   $0x6
  102904:	68 34 19 14 00       	push   $0x141934
  102909:	68 20 99 13 00       	push   $0x139920
  10290e:	68 e8 03 00 00       	push   $0x3e8
  102913:	e8 b4 fe ff ff       	call   1027cc <com_irq_handler>
  102918:	83 c4 10             	add    $0x10,%esp
  10291b:	90                   	nop
  10291c:	c9                   	leave  
  10291d:	c3                   	ret    

0010291e <com_flush>:
  10291e:	55                   	push   %ebp
  10291f:	89 e5                	mov    %esp,%ebp
  102921:	83 ec 28             	sub    $0x28,%esp
  102924:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  10292b:	74 27                	je     102954 <com_flush+0x36>
  10292d:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  102934:	74 17                	je     10294d <com_flush+0x2f>
  102936:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  10293d:	75 07                	jne    102946 <com_flush+0x28>
  10293f:	b8 20 19 12 00       	mov    $0x121920,%eax
  102944:	eb 13                	jmp    102959 <com_flush+0x3b>
  102946:	b8 00 00 00 00       	mov    $0x0,%eax
  10294b:	eb 0c                	jmp    102959 <com_flush+0x3b>
  10294d:	b8 20 99 11 00       	mov    $0x119920,%eax
  102952:	eb 05                	jmp    102959 <com_flush+0x3b>
  102954:	b8 20 19 11 00       	mov    $0x111920,%eax
  102959:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10295c:	81 7d 08 f8 03 00 00 	cmpl   $0x3f8,0x8(%ebp)
  102963:	74 27                	je     10298c <com_flush+0x6e>
  102965:	81 7d 08 f8 02 00 00 	cmpl   $0x2f8,0x8(%ebp)
  10296c:	74 17                	je     102985 <com_flush+0x67>
  10296e:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  102975:	75 07                	jne    10297e <com_flush+0x60>
  102977:	b8 28 19 14 00       	mov    $0x141928,%eax
  10297c:	eb 13                	jmp    102991 <com_flush+0x73>
  10297e:	b8 00 00 00 00       	mov    $0x0,%eax
  102983:	eb 0c                	jmp    102991 <com_flush+0x73>
  102985:	b8 24 19 14 00       	mov    $0x141924,%eax
  10298a:	eb 05                	jmp    102991 <com_flush+0x73>
  10298c:	b8 20 19 14 00       	mov    $0x141920,%eax
  102991:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102994:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  102998:	74 06                	je     1029a0 <com_flush+0x82>
  10299a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  10299e:	75 0a                	jne    1029aa <com_flush+0x8c>
  1029a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1029a5:	e9 ce 00 00 00       	jmp    102a78 <com_flush+0x15a>
  1029aa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1029ad:	8b 00                	mov    (%eax),%eax
  1029af:	ba 10 00 00 00       	mov    $0x10,%edx
  1029b4:	39 d0                	cmp    %edx,%eax
  1029b6:	0f 47 c2             	cmova  %edx,%eax
  1029b9:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1029bc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1029c3:	eb 21                	jmp    1029e6 <com_flush+0xc8>
  1029c5:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1029c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1029cb:	01 d0                	add    %edx,%eax
  1029cd:	0f b6 00             	movzbl (%eax),%eax
  1029d0:	0f b6 c0             	movzbl %al,%eax
  1029d3:	83 ec 08             	sub    $0x8,%esp
  1029d6:	50                   	push   %eax
  1029d7:	ff 75 08             	push   0x8(%ebp)
  1029da:	e8 e1 dc ff ff       	call   1006c0 <outb>
  1029df:	83 c4 10             	add    $0x10,%esp
  1029e2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1029e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1029e9:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  1029ec:	72 d7                	jb     1029c5 <com_flush+0xa7>
  1029ee:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1029f1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1029f4:	eb 1f                	jmp    102a15 <com_flush+0xf7>
  1029f6:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1029f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1029fc:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  1029ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102a02:	2b 45 e0             	sub    -0x20(%ebp),%eax
  102a05:	89 c2                	mov    %eax,%edx
  102a07:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102a0a:	01 c2                	add    %eax,%edx
  102a0c:	0f b6 01             	movzbl (%ecx),%eax
  102a0f:	88 02                	mov    %al,(%edx)
  102a11:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  102a15:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a18:	8b 00                	mov    (%eax),%eax
  102a1a:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  102a1d:	72 d7                	jb     1029f6 <com_flush+0xd8>
  102a1f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  102a26:	eb 16                	jmp    102a3e <com_flush+0x120>
  102a28:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a2b:	8b 10                	mov    (%eax),%edx
  102a2d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102a30:	01 c2                	add    %eax,%edx
  102a32:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102a35:	01 d0                	add    %edx,%eax
  102a37:	c6 00 00             	movb   $0x0,(%eax)
  102a3a:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102a3e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102a41:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  102a44:	72 e2                	jb     102a28 <com_flush+0x10a>
  102a46:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a49:	8b 00                	mov    (%eax),%eax
  102a4b:	2b 45 e0             	sub    -0x20(%ebp),%eax
  102a4e:	89 c2                	mov    %eax,%edx
  102a50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a53:	89 10                	mov    %edx,(%eax)
  102a55:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a58:	8b 00                	mov    (%eax),%eax
  102a5a:	85 c0                	test   %eax,%eax
  102a5c:	75 15                	jne    102a73 <com_flush+0x155>
  102a5e:	83 ec 04             	sub    $0x4,%esp
  102a61:	68 00 80 00 00       	push   $0x8000
  102a66:	6a 00                	push   $0x0
  102a68:	ff 75 e8             	push   -0x18(%ebp)
  102a6b:	e8 d6 6d 00 00       	call   109846 <memset>
  102a70:	83 c4 10             	add    $0x10,%esp
  102a73:	b8 10 00 00 00       	mov    $0x10,%eax
  102a78:	c9                   	leave  
  102a79:	c3                   	ret    

00102a7a <cmos_read_rtc_reg>:
  102a7a:	55                   	push   %ebp
  102a7b:	89 e5                	mov    %esp,%ebp
  102a7d:	83 ec 08             	sub    $0x8,%esp
  102a80:	83 ec 08             	sub    $0x8,%esp
  102a83:	ff 75 08             	push   0x8(%ebp)
  102a86:	6a 70                	push   $0x70
  102a88:	e8 33 dc ff ff       	call   1006c0 <outb>
  102a8d:	83 c4 10             	add    $0x10,%esp
  102a90:	83 ec 0c             	sub    $0xc,%esp
  102a93:	6a 71                	push   $0x71
  102a95:	e8 0d dc ff ff       	call   1006a7 <inb>
  102a9a:	83 c4 10             	add    $0x10,%esp
  102a9d:	c9                   	leave  
  102a9e:	c3                   	ret    

00102a9f <cmos_read_rtc>:
  102a9f:	55                   	push   %ebp
  102aa0:	89 e5                	mov    %esp,%ebp
  102aa2:	83 ec 18             	sub    $0x18,%esp
  102aa5:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
  102aa9:	eb 22                	jmp    102acd <cmos_read_rtc+0x2e>
  102aab:	83 ec 08             	sub    $0x8,%esp
  102aae:	6a 0a                	push   $0xa
  102ab0:	6a 70                	push   $0x70
  102ab2:	e8 09 dc ff ff       	call   1006c0 <outb>
  102ab7:	83 c4 10             	add    $0x10,%esp
  102aba:	83 ec 0c             	sub    $0xc,%esp
  102abd:	6a 71                	push   $0x71
  102abf:	e8 e3 db ff ff       	call   1006a7 <inb>
  102ac4:	83 c4 10             	add    $0x10,%esp
  102ac7:	83 e0 80             	and    $0xffffff80,%eax
  102aca:	88 45 f7             	mov    %al,-0x9(%ebp)
  102acd:	80 7d f7 01          	cmpb   $0x1,-0x9(%ebp)
  102ad1:	74 d8                	je     102aab <cmos_read_rtc+0xc>
  102ad3:	83 ec 0c             	sub    $0xc,%esp
  102ad6:	6a 00                	push   $0x0
  102ad8:	e8 9d ff ff ff       	call   102a7a <cmos_read_rtc_reg>
  102add:	83 c4 10             	add    $0x10,%esp
  102ae0:	a2 3c 19 14 00       	mov    %al,0x14193c
  102ae5:	83 ec 0c             	sub    $0xc,%esp
  102ae8:	6a 02                	push   $0x2
  102aea:	e8 8b ff ff ff       	call   102a7a <cmos_read_rtc_reg>
  102aef:	83 c4 10             	add    $0x10,%esp
  102af2:	a2 3d 19 14 00       	mov    %al,0x14193d
  102af7:	83 ec 0c             	sub    $0xc,%esp
  102afa:	6a 04                	push   $0x4
  102afc:	e8 79 ff ff ff       	call   102a7a <cmos_read_rtc_reg>
  102b01:	83 c4 10             	add    $0x10,%esp
  102b04:	a2 3e 19 14 00       	mov    %al,0x14193e
  102b09:	83 ec 0c             	sub    $0xc,%esp
  102b0c:	6a 07                	push   $0x7
  102b0e:	e8 67 ff ff ff       	call   102a7a <cmos_read_rtc_reg>
  102b13:	83 c4 10             	add    $0x10,%esp
  102b16:	a2 3f 19 14 00       	mov    %al,0x14193f
  102b1b:	83 ec 0c             	sub    $0xc,%esp
  102b1e:	6a 08                	push   $0x8
  102b20:	e8 55 ff ff ff       	call   102a7a <cmos_read_rtc_reg>
  102b25:	83 c4 10             	add    $0x10,%esp
  102b28:	a2 40 19 14 00       	mov    %al,0x141940
  102b2d:	83 ec 0c             	sub    $0xc,%esp
  102b30:	6a 09                	push   $0x9
  102b32:	e8 43 ff ff ff       	call   102a7a <cmos_read_rtc_reg>
  102b37:	83 c4 10             	add    $0x10,%esp
  102b3a:	0f b6 c0             	movzbl %al,%eax
  102b3d:	a3 44 19 14 00       	mov    %eax,0x141944
  102b42:	0f b6 05 3c 19 14 00 	movzbl 0x14193c,%eax
  102b49:	88 45 f6             	mov    %al,-0xa(%ebp)
  102b4c:	0f b6 05 3d 19 14 00 	movzbl 0x14193d,%eax
  102b53:	88 45 f5             	mov    %al,-0xb(%ebp)
  102b56:	0f b6 05 3e 19 14 00 	movzbl 0x14193e,%eax
  102b5d:	88 45 f4             	mov    %al,-0xc(%ebp)
  102b60:	0f b6 05 3f 19 14 00 	movzbl 0x14193f,%eax
  102b67:	88 45 f3             	mov    %al,-0xd(%ebp)
  102b6a:	0f b6 05 40 19 14 00 	movzbl 0x141940,%eax
  102b71:	88 45 f2             	mov    %al,-0xe(%ebp)
  102b74:	a1 44 19 14 00       	mov    0x141944,%eax
  102b79:	88 45 f1             	mov    %al,-0xf(%ebp)
  102b7c:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
  102b80:	eb 22                	jmp    102ba4 <cmos_read_rtc+0x105>
  102b82:	83 ec 08             	sub    $0x8,%esp
  102b85:	6a 0a                	push   $0xa
  102b87:	6a 70                	push   $0x70
  102b89:	e8 32 db ff ff       	call   1006c0 <outb>
  102b8e:	83 c4 10             	add    $0x10,%esp
  102b91:	83 ec 0c             	sub    $0xc,%esp
  102b94:	6a 71                	push   $0x71
  102b96:	e8 0c db ff ff       	call   1006a7 <inb>
  102b9b:	83 c4 10             	add    $0x10,%esp
  102b9e:	83 e0 80             	and    $0xffffff80,%eax
  102ba1:	88 45 f7             	mov    %al,-0x9(%ebp)
  102ba4:	80 7d f7 01          	cmpb   $0x1,-0x9(%ebp)
  102ba8:	74 d8                	je     102b82 <cmos_read_rtc+0xe3>
  102baa:	83 ec 0c             	sub    $0xc,%esp
  102bad:	6a 00                	push   $0x0
  102baf:	e8 c6 fe ff ff       	call   102a7a <cmos_read_rtc_reg>
  102bb4:	83 c4 10             	add    $0x10,%esp
  102bb7:	a2 3c 19 14 00       	mov    %al,0x14193c
  102bbc:	83 ec 0c             	sub    $0xc,%esp
  102bbf:	6a 02                	push   $0x2
  102bc1:	e8 b4 fe ff ff       	call   102a7a <cmos_read_rtc_reg>
  102bc6:	83 c4 10             	add    $0x10,%esp
  102bc9:	a2 3d 19 14 00       	mov    %al,0x14193d
  102bce:	83 ec 0c             	sub    $0xc,%esp
  102bd1:	6a 04                	push   $0x4
  102bd3:	e8 a2 fe ff ff       	call   102a7a <cmos_read_rtc_reg>
  102bd8:	83 c4 10             	add    $0x10,%esp
  102bdb:	a2 3e 19 14 00       	mov    %al,0x14193e
  102be0:	83 ec 0c             	sub    $0xc,%esp
  102be3:	6a 07                	push   $0x7
  102be5:	e8 90 fe ff ff       	call   102a7a <cmos_read_rtc_reg>
  102bea:	83 c4 10             	add    $0x10,%esp
  102bed:	a2 3f 19 14 00       	mov    %al,0x14193f
  102bf2:	83 ec 0c             	sub    $0xc,%esp
  102bf5:	6a 08                	push   $0x8
  102bf7:	e8 7e fe ff ff       	call   102a7a <cmos_read_rtc_reg>
  102bfc:	83 c4 10             	add    $0x10,%esp
  102bff:	a2 40 19 14 00       	mov    %al,0x141940
  102c04:	83 ec 0c             	sub    $0xc,%esp
  102c07:	6a 09                	push   $0x9
  102c09:	e8 6c fe ff ff       	call   102a7a <cmos_read_rtc_reg>
  102c0e:	83 c4 10             	add    $0x10,%esp
  102c11:	0f b6 c0             	movzbl %al,%eax
  102c14:	a3 44 19 14 00       	mov    %eax,0x141944
  102c19:	0f b6 05 3c 19 14 00 	movzbl 0x14193c,%eax
  102c20:	38 45 f6             	cmp    %al,-0xa(%ebp)
  102c23:	0f 85 19 ff ff ff    	jne    102b42 <cmos_read_rtc+0xa3>
  102c29:	0f b6 05 3d 19 14 00 	movzbl 0x14193d,%eax
  102c30:	38 45 f5             	cmp    %al,-0xb(%ebp)
  102c33:	0f 85 09 ff ff ff    	jne    102b42 <cmos_read_rtc+0xa3>
  102c39:	0f b6 05 3e 19 14 00 	movzbl 0x14193e,%eax
  102c40:	38 45 f4             	cmp    %al,-0xc(%ebp)
  102c43:	0f 85 f9 fe ff ff    	jne    102b42 <cmos_read_rtc+0xa3>
  102c49:	0f b6 05 3f 19 14 00 	movzbl 0x14193f,%eax
  102c50:	38 45 f3             	cmp    %al,-0xd(%ebp)
  102c53:	0f 85 e9 fe ff ff    	jne    102b42 <cmos_read_rtc+0xa3>
  102c59:	0f b6 05 40 19 14 00 	movzbl 0x141940,%eax
  102c60:	38 45 f2             	cmp    %al,-0xe(%ebp)
  102c63:	0f 85 d9 fe ff ff    	jne    102b42 <cmos_read_rtc+0xa3>
  102c69:	0f b6 55 f1          	movzbl -0xf(%ebp),%edx
  102c6d:	a1 44 19 14 00       	mov    0x141944,%eax
  102c72:	39 c2                	cmp    %eax,%edx
  102c74:	0f 85 c8 fe ff ff    	jne    102b42 <cmos_read_rtc+0xa3>
  102c7a:	83 ec 0c             	sub    $0xc,%esp
  102c7d:	6a 0b                	push   $0xb
  102c7f:	e8 f6 fd ff ff       	call   102a7a <cmos_read_rtc_reg>
  102c84:	83 c4 10             	add    $0x10,%esp
  102c87:	88 45 f0             	mov    %al,-0x10(%ebp)
  102c8a:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
  102c8e:	83 e0 04             	and    $0x4,%eax
  102c91:	85 c0                	test   %eax,%eax
  102c93:	0f 85 08 01 00 00    	jne    102da1 <cmos_read_rtc+0x302>
  102c99:	0f b6 05 3c 19 14 00 	movzbl 0x14193c,%eax
  102ca0:	83 e0 0f             	and    $0xf,%eax
  102ca3:	89 c1                	mov    %eax,%ecx
  102ca5:	0f b6 05 3c 19 14 00 	movzbl 0x14193c,%eax
  102cac:	c0 e8 04             	shr    $0x4,%al
  102caf:	89 c2                	mov    %eax,%edx
  102cb1:	89 d0                	mov    %edx,%eax
  102cb3:	c1 e0 02             	shl    $0x2,%eax
  102cb6:	01 d0                	add    %edx,%eax
  102cb8:	01 c0                	add    %eax,%eax
  102cba:	01 c8                	add    %ecx,%eax
  102cbc:	a2 3c 19 14 00       	mov    %al,0x14193c
  102cc1:	0f b6 05 3d 19 14 00 	movzbl 0x14193d,%eax
  102cc8:	83 e0 0f             	and    $0xf,%eax
  102ccb:	89 c1                	mov    %eax,%ecx
  102ccd:	0f b6 05 3d 19 14 00 	movzbl 0x14193d,%eax
  102cd4:	c0 e8 04             	shr    $0x4,%al
  102cd7:	89 c2                	mov    %eax,%edx
  102cd9:	89 d0                	mov    %edx,%eax
  102cdb:	c1 e0 02             	shl    $0x2,%eax
  102cde:	01 d0                	add    %edx,%eax
  102ce0:	01 c0                	add    %eax,%eax
  102ce2:	01 c8                	add    %ecx,%eax
  102ce4:	a2 3d 19 14 00       	mov    %al,0x14193d
  102ce9:	0f b6 05 3e 19 14 00 	movzbl 0x14193e,%eax
  102cf0:	83 e0 0f             	and    $0xf,%eax
  102cf3:	89 c1                	mov    %eax,%ecx
  102cf5:	0f b6 05 3e 19 14 00 	movzbl 0x14193e,%eax
  102cfc:	0f b6 c0             	movzbl %al,%eax
  102cff:	83 e0 70             	and    $0x70,%eax
  102d02:	8d 50 0f             	lea    0xf(%eax),%edx
  102d05:	85 c0                	test   %eax,%eax
  102d07:	0f 48 c2             	cmovs  %edx,%eax
  102d0a:	c1 f8 04             	sar    $0x4,%eax
  102d0d:	89 c2                	mov    %eax,%edx
  102d0f:	89 d0                	mov    %edx,%eax
  102d11:	c1 e0 02             	shl    $0x2,%eax
  102d14:	01 d0                	add    %edx,%eax
  102d16:	01 c0                	add    %eax,%eax
  102d18:	01 c8                	add    %ecx,%eax
  102d1a:	89 c2                	mov    %eax,%edx
  102d1c:	0f b6 05 3e 19 14 00 	movzbl 0x14193e,%eax
  102d23:	83 e0 80             	and    $0xffffff80,%eax
  102d26:	09 d0                	or     %edx,%eax
  102d28:	a2 3e 19 14 00       	mov    %al,0x14193e
  102d2d:	0f b6 05 3f 19 14 00 	movzbl 0x14193f,%eax
  102d34:	83 e0 0f             	and    $0xf,%eax
  102d37:	89 c1                	mov    %eax,%ecx
  102d39:	0f b6 05 3f 19 14 00 	movzbl 0x14193f,%eax
  102d40:	c0 e8 04             	shr    $0x4,%al
  102d43:	89 c2                	mov    %eax,%edx
  102d45:	89 d0                	mov    %edx,%eax
  102d47:	c1 e0 02             	shl    $0x2,%eax
  102d4a:	01 d0                	add    %edx,%eax
  102d4c:	01 c0                	add    %eax,%eax
  102d4e:	01 c8                	add    %ecx,%eax
  102d50:	a2 3f 19 14 00       	mov    %al,0x14193f
  102d55:	0f b6 05 40 19 14 00 	movzbl 0x141940,%eax
  102d5c:	83 e0 0f             	and    $0xf,%eax
  102d5f:	89 c1                	mov    %eax,%ecx
  102d61:	0f b6 05 40 19 14 00 	movzbl 0x141940,%eax
  102d68:	c0 e8 04             	shr    $0x4,%al
  102d6b:	89 c2                	mov    %eax,%edx
  102d6d:	89 d0                	mov    %edx,%eax
  102d6f:	c1 e0 02             	shl    $0x2,%eax
  102d72:	01 d0                	add    %edx,%eax
  102d74:	01 c0                	add    %eax,%eax
  102d76:	01 c8                	add    %ecx,%eax
  102d78:	a2 40 19 14 00       	mov    %al,0x141940
  102d7d:	a1 44 19 14 00       	mov    0x141944,%eax
  102d82:	83 e0 0f             	and    $0xf,%eax
  102d85:	89 c1                	mov    %eax,%ecx
  102d87:	a1 44 19 14 00       	mov    0x141944,%eax
  102d8c:	c1 e8 04             	shr    $0x4,%eax
  102d8f:	89 c2                	mov    %eax,%edx
  102d91:	89 d0                	mov    %edx,%eax
  102d93:	c1 e0 02             	shl    $0x2,%eax
  102d96:	01 d0                	add    %edx,%eax
  102d98:	01 c0                	add    %eax,%eax
  102d9a:	01 c8                	add    %ecx,%eax
  102d9c:	a3 44 19 14 00       	mov    %eax,0x141944
  102da1:	0f b6 15 3c 19 14 00 	movzbl 0x14193c,%edx
  102da8:	8b 45 08             	mov    0x8(%ebp),%eax
  102dab:	88 10                	mov    %dl,(%eax)
  102dad:	0f b6 15 3d 19 14 00 	movzbl 0x14193d,%edx
  102db4:	8b 45 08             	mov    0x8(%ebp),%eax
  102db7:	88 50 01             	mov    %dl,0x1(%eax)
  102dba:	0f b6 15 3e 19 14 00 	movzbl 0x14193e,%edx
  102dc1:	8b 45 08             	mov    0x8(%ebp),%eax
  102dc4:	88 50 02             	mov    %dl,0x2(%eax)
  102dc7:	0f b6 15 3f 19 14 00 	movzbl 0x14193f,%edx
  102dce:	8b 45 08             	mov    0x8(%ebp),%eax
  102dd1:	88 50 03             	mov    %dl,0x3(%eax)
  102dd4:	0f b6 15 40 19 14 00 	movzbl 0x141940,%edx
  102ddb:	8b 45 08             	mov    0x8(%ebp),%eax
  102dde:	88 50 04             	mov    %dl,0x4(%eax)
  102de1:	a1 44 19 14 00       	mov    0x141944,%eax
  102de6:	89 c2                	mov    %eax,%edx
  102de8:	8b 45 08             	mov    0x8(%ebp),%eax
  102deb:	88 50 05             	mov    %dl,0x5(%eax)
  102dee:	90                   	nop
  102def:	c9                   	leave  
  102df0:	c3                   	ret    

00102df1 <acpi_check_rsd_ptr>:
  102df1:	55                   	push   %ebp
  102df2:	89 e5                	mov    %esp,%ebp
  102df4:	83 ec 28             	sub    $0x28,%esp
  102df7:	c7 45 e8 d8 a2 10 00 	movl   $0x10a2d8,-0x18(%ebp)
  102dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  102e01:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102e04:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  102e08:	83 ec 04             	sub    $0x4,%esp
  102e0b:	6a 08                	push   $0x8
  102e0d:	ff 75 e4             	push   -0x1c(%ebp)
  102e10:	ff 75 e8             	push   -0x18(%ebp)
  102e13:	e8 05 69 00 00       	call   10971d <memcmp>
  102e18:	83 c4 10             	add    $0x10,%esp
  102e1b:	85 c0                	test   %eax,%eax
  102e1d:	75 34                	jne    102e53 <acpi_check_rsd_ptr+0x62>
  102e1f:	8b 45 08             	mov    0x8(%ebp),%eax
  102e22:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102e25:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  102e2c:	eb 11                	jmp    102e3f <acpi_check_rsd_ptr+0x4e>
  102e2e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102e31:	0f b6 00             	movzbl (%eax),%eax
  102e34:	00 45 f3             	add    %al,-0xd(%ebp)
  102e37:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102e3b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  102e3f:	83 7d ec 13          	cmpl   $0x13,-0x14(%ebp)
  102e43:	76 e9                	jbe    102e2e <acpi_check_rsd_ptr+0x3d>
  102e45:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  102e49:	75 08                	jne    102e53 <acpi_check_rsd_ptr+0x62>
  102e4b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102e4e:	8b 40 10             	mov    0x10(%eax),%eax
  102e51:	eb 05                	jmp    102e58 <acpi_check_rsd_ptr+0x67>
  102e53:	b8 00 00 00 00       	mov    $0x0,%eax
  102e58:	c9                   	leave  
  102e59:	c3                   	ret    

00102e5a <acpi_get_rsd_ptr>:
  102e5a:	55                   	push   %ebp
  102e5b:	89 e5                	mov    %esp,%ebp
  102e5d:	83 ec 18             	sub    $0x18,%esp
  102e60:	c7 45 f4 00 00 0e 00 	movl   $0xe0000,-0xc(%ebp)
  102e67:	eb 20                	jmp    102e89 <acpi_get_rsd_ptr+0x2f>
  102e69:	83 ec 0c             	sub    $0xc,%esp
  102e6c:	ff 75 f4             	push   -0xc(%ebp)
  102e6f:	e8 7d ff ff ff       	call   102df1 <acpi_check_rsd_ptr>
  102e74:	83 c4 10             	add    $0x10,%esp
  102e77:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102e7a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102e7e:	74 05                	je     102e85 <acpi_get_rsd_ptr+0x2b>
  102e80:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102e83:	eb 13                	jmp    102e98 <acpi_get_rsd_ptr+0x3e>
  102e85:	83 45 f4 10          	addl   $0x10,-0xc(%ebp)
  102e89:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102e8c:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
  102e91:	7e d6                	jle    102e69 <acpi_get_rsd_ptr+0xf>
  102e93:	b8 00 00 00 00       	mov    $0x0,%eax
  102e98:	c9                   	leave  
  102e99:	c3                   	ret    

00102e9a <acpi_check_header>:
  102e9a:	55                   	push   %ebp
  102e9b:	89 e5                	mov    %esp,%ebp
  102e9d:	83 ec 18             	sub    $0x18,%esp
  102ea0:	83 ec 04             	sub    $0x4,%esp
  102ea3:	6a 04                	push   $0x4
  102ea5:	ff 75 0c             	push   0xc(%ebp)
  102ea8:	ff 75 08             	push   0x8(%ebp)
  102eab:	e8 6d 68 00 00       	call   10971d <memcmp>
  102eb0:	83 c4 10             	add    $0x10,%esp
  102eb3:	85 c0                	test   %eax,%eax
  102eb5:	75 43                	jne    102efa <acpi_check_header+0x60>
  102eb7:	8b 45 08             	mov    0x8(%ebp),%eax
  102eba:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102ebd:	8b 45 08             	mov    0x8(%ebp),%eax
  102ec0:	83 c0 04             	add    $0x4,%eax
  102ec3:	8b 00                	mov    (%eax),%eax
  102ec5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102ec8:	c6 45 ef 00          	movb   $0x0,-0x11(%ebp)
  102ecc:	eb 19                	jmp    102ee7 <acpi_check_header+0x4d>
  102ece:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102ed1:	0f b6 00             	movzbl (%eax),%eax
  102ed4:	89 c2                	mov    %eax,%edx
  102ed6:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  102eda:	01 d0                	add    %edx,%eax
  102edc:	88 45 ef             	mov    %al,-0x11(%ebp)
  102edf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102ee3:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  102ee7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  102eeb:	75 e1                	jne    102ece <acpi_check_header+0x34>
  102eed:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
  102ef1:	75 07                	jne    102efa <acpi_check_header+0x60>
  102ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  102ef8:	eb 05                	jmp    102eff <acpi_check_header+0x65>
  102efa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102eff:	c9                   	leave  
  102f00:	c3                   	ret    

00102f01 <acpi_enable>:
  102f01:	55                   	push   %ebp
  102f02:	89 e5                	mov    %esp,%ebp
  102f04:	83 ec 18             	sub    $0x18,%esp
  102f07:	c6 05 63 19 14 00 00 	movb   $0x0,0x141963
  102f0e:	a1 50 19 14 00       	mov    0x141950,%eax
  102f13:	83 ec 0c             	sub    $0xc,%esp
  102f16:	50                   	push   %eax
  102f17:	e8 b1 d7 ff ff       	call   1006cd <inw>
  102f1c:	83 c4 10             	add    $0x10,%esp
  102f1f:	0f b7 15 5e 19 14 00 	movzwl 0x14195e,%edx
  102f26:	21 d0                	and    %edx,%eax
  102f28:	66 85 c0             	test   %ax,%ax
  102f2b:	0f 85 cc 01 00 00    	jne    1030fd <acpi_enable+0x1fc>
  102f31:	a1 48 19 14 00       	mov    0x141948,%eax
  102f36:	85 c0                	test   %eax,%eax
  102f38:	0f 84 b2 02 00 00    	je     1031f0 <acpi_enable+0x2ef>
  102f3e:	0f b6 05 4c 19 14 00 	movzbl 0x14194c,%eax
  102f45:	84 c0                	test   %al,%al
  102f47:	0f 84 a3 02 00 00    	je     1031f0 <acpi_enable+0x2ef>
  102f4d:	0f b6 05 4c 19 14 00 	movzbl 0x14194c,%eax
  102f54:	0f b6 c0             	movzbl %al,%eax
  102f57:	8b 15 48 19 14 00    	mov    0x141948,%edx
  102f5d:	83 ec 08             	sub    $0x8,%esp
  102f60:	50                   	push   %eax
  102f61:	52                   	push   %edx
  102f62:	e8 59 d7 ff ff       	call   1006c0 <outb>
  102f67:	83 c4 10             	add    $0x10,%esp
  102f6a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102f71:	eb 31                	jmp    102fa4 <acpi_enable+0xa3>
  102f73:	a1 50 19 14 00       	mov    0x141950,%eax
  102f78:	83 ec 0c             	sub    $0xc,%esp
  102f7b:	50                   	push   %eax
  102f7c:	e8 4c d7 ff ff       	call   1006cd <inw>
  102f81:	83 c4 10             	add    $0x10,%esp
  102f84:	0f b7 15 5e 19 14 00 	movzwl 0x14195e,%edx
  102f8b:	21 d0                	and    %edx,%eax
  102f8d:	66 83 f8 01          	cmp    $0x1,%ax
  102f91:	74 1c                	je     102faf <acpi_enable+0xae>
  102f93:	83 ec 0c             	sub    $0xc,%esp
  102f96:	6a 0a                	push   $0xa
  102f98:	e8 56 22 00 00       	call   1051f3 <sleep>
  102f9d:	83 c4 10             	add    $0x10,%esp
  102fa0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102fa4:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102fab:	7e c6                	jle    102f73 <acpi_enable+0x72>
  102fad:	eb 01                	jmp    102fb0 <acpi_enable+0xaf>
  102faf:	90                   	nop
  102fb0:	a1 54 19 14 00       	mov    0x141954,%eax
  102fb5:	85 c0                	test   %eax,%eax
  102fb7:	74 3f                	je     102ff8 <acpi_enable+0xf7>
  102fb9:	eb 31                	jmp    102fec <acpi_enable+0xeb>
  102fbb:	a1 54 19 14 00       	mov    0x141954,%eax
  102fc0:	83 ec 0c             	sub    $0xc,%esp
  102fc3:	50                   	push   %eax
  102fc4:	e8 04 d7 ff ff       	call   1006cd <inw>
  102fc9:	83 c4 10             	add    $0x10,%esp
  102fcc:	0f b7 15 5e 19 14 00 	movzwl 0x14195e,%edx
  102fd3:	21 d0                	and    %edx,%eax
  102fd5:	66 83 f8 01          	cmp    $0x1,%ax
  102fd9:	74 1c                	je     102ff7 <acpi_enable+0xf6>
  102fdb:	83 ec 0c             	sub    $0xc,%esp
  102fde:	6a 0a                	push   $0xa
  102fe0:	e8 0e 22 00 00       	call   1051f3 <sleep>
  102fe5:	83 c4 10             	add    $0x10,%esp
  102fe8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102fec:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102ff3:	7e c6                	jle    102fbb <acpi_enable+0xba>
  102ff5:	eb 01                	jmp    102ff8 <acpi_enable+0xf7>
  102ff7:	90                   	nop
  102ff8:	81 7d f4 2b 01 00 00 	cmpl   $0x12b,-0xc(%ebp)
  102fff:	0f 8f eb 01 00 00    	jg     1031f0 <acpi_enable+0x2ef>
  103005:	83 ec 0c             	sub    $0xc,%esp
  103008:	68 80 22 14 00       	push   $0x142280
  10300d:	e8 56 5b 00 00       	call   108b68 <__redirect_printf__>
  103012:	83 c4 10             	add    $0x10,%esp
  103015:	83 ec 0c             	sub    $0xc,%esp
  103018:	68 e1 a2 10 00       	push   $0x10a2e1
  10301d:	e8 33 64 00 00       	call   109455 <printf>
  103022:	83 c4 10             	add    $0x10,%esp
  103025:	83 ec 0c             	sub    $0xc,%esp
  103028:	6a 00                	push   $0x0
  10302a:	e8 39 5b 00 00       	call   108b68 <__redirect_printf__>
  10302f:	83 c4 10             	add    $0x10,%esp
  103032:	83 ec 0c             	sub    $0xc,%esp
  103035:	8d 45 ee             	lea    -0x12(%ebp),%eax
  103038:	50                   	push   %eax
  103039:	e8 61 fa ff ff       	call   102a9f <cmos_read_rtc>
  10303e:	83 c4 10             	add    $0x10,%esp
  103041:	83 ec 04             	sub    $0x4,%esp
  103044:	68 6c 26 14 00       	push   $0x14266c
  103049:	83 ec 08             	sub    $0x8,%esp
  10304c:	89 e0                	mov    %esp,%eax
  10304e:	8b 55 ee             	mov    -0x12(%ebp),%edx
  103051:	89 10                	mov    %edx,(%eax)
  103053:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  103057:	66 89 50 04          	mov    %dx,0x4(%eax)
  10305b:	e8 64 1f 00 00       	call   104fc4 <cmos_datetime_to_str>
  103060:	83 c4 10             	add    $0x10,%esp
  103063:	83 ec 0c             	sub    $0xc,%esp
  103066:	68 80 1e 14 00       	push   $0x141e80
  10306b:	e8 f8 5a 00 00       	call   108b68 <__redirect_printf__>
  103070:	83 c4 10             	add    $0x10,%esp
  103073:	83 ec 04             	sub    $0x4,%esp
  103076:	68 80 22 14 00       	push   $0x142280
  10307b:	68 6c 26 14 00       	push   $0x14266c
  103080:	68 f2 a2 10 00       	push   $0x10a2f2
  103085:	e8 cb 63 00 00       	call   109455 <printf>
  10308a:	83 c4 10             	add    $0x10,%esp
  10308d:	83 ec 0c             	sub    $0xc,%esp
  103090:	6a 00                	push   $0x0
  103092:	e8 d1 5a 00 00       	call   108b68 <__redirect_printf__>
  103097:	83 c4 10             	add    $0x10,%esp
  10309a:	83 ec 08             	sub    $0x8,%esp
  10309d:	68 80 1e 14 00       	push   $0x141e80
  1030a2:	68 f8 03 00 00       	push   $0x3f8
  1030a7:	e8 0d f5 ff ff       	call   1025b9 <com_write>
  1030ac:	83 c4 10             	add    $0x10,%esp
  1030af:	83 ec 04             	sub    $0x4,%esp
  1030b2:	68 00 04 00 00       	push   $0x400
  1030b7:	6a 00                	push   $0x0
  1030b9:	68 80 1e 14 00       	push   $0x141e80
  1030be:	e8 83 67 00 00       	call   109846 <memset>
  1030c3:	83 c4 10             	add    $0x10,%esp
  1030c6:	83 ec 04             	sub    $0x4,%esp
  1030c9:	68 ec 03 00 00       	push   $0x3ec
  1030ce:	6a 00                	push   $0x0
  1030d0:	68 80 22 14 00       	push   $0x142280
  1030d5:	e8 6c 67 00 00       	call   109846 <memset>
  1030da:	83 c4 10             	add    $0x10,%esp
  1030dd:	83 ec 04             	sub    $0x4,%esp
  1030e0:	6a 14                	push   $0x14
  1030e2:	6a 00                	push   $0x0
  1030e4:	68 6c 26 14 00       	push   $0x14266c
  1030e9:	e8 58 67 00 00       	call   109846 <memset>
  1030ee:	83 c4 10             	add    $0x10,%esp
  1030f1:	c6 05 63 19 14 00 01 	movb   $0x1,0x141963
  1030f8:	e9 f3 00 00 00       	jmp    1031f0 <acpi_enable+0x2ef>
  1030fd:	83 ec 0c             	sub    $0xc,%esp
  103100:	68 80 22 14 00       	push   $0x142280
  103105:	e8 5e 5a 00 00       	call   108b68 <__redirect_printf__>
  10310a:	83 c4 10             	add    $0x10,%esp
  10310d:	83 ec 0c             	sub    $0xc,%esp
  103110:	68 f8 a2 10 00       	push   $0x10a2f8
  103115:	e8 3b 63 00 00       	call   109455 <printf>
  10311a:	83 c4 10             	add    $0x10,%esp
  10311d:	83 ec 0c             	sub    $0xc,%esp
  103120:	6a 00                	push   $0x0
  103122:	e8 41 5a 00 00       	call   108b68 <__redirect_printf__>
  103127:	83 c4 10             	add    $0x10,%esp
  10312a:	83 ec 0c             	sub    $0xc,%esp
  10312d:	8d 45 e8             	lea    -0x18(%ebp),%eax
  103130:	50                   	push   %eax
  103131:	e8 69 f9 ff ff       	call   102a9f <cmos_read_rtc>
  103136:	83 c4 10             	add    $0x10,%esp
  103139:	83 ec 04             	sub    $0x4,%esp
  10313c:	68 6c 26 14 00       	push   $0x14266c
  103141:	83 ec 08             	sub    $0x8,%esp
  103144:	89 e0                	mov    %esp,%eax
  103146:	8b 55 e8             	mov    -0x18(%ebp),%edx
  103149:	89 10                	mov    %edx,(%eax)
  10314b:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
  10314f:	66 89 50 04          	mov    %dx,0x4(%eax)
  103153:	e8 6c 1e 00 00       	call   104fc4 <cmos_datetime_to_str>
  103158:	83 c4 10             	add    $0x10,%esp
  10315b:	83 ec 0c             	sub    $0xc,%esp
  10315e:	68 80 1e 14 00       	push   $0x141e80
  103163:	e8 00 5a 00 00       	call   108b68 <__redirect_printf__>
  103168:	83 c4 10             	add    $0x10,%esp
  10316b:	83 ec 04             	sub    $0x4,%esp
  10316e:	68 80 22 14 00       	push   $0x142280
  103173:	68 6c 26 14 00       	push   $0x14266c
  103178:	68 f2 a2 10 00       	push   $0x10a2f2
  10317d:	e8 d3 62 00 00       	call   109455 <printf>
  103182:	83 c4 10             	add    $0x10,%esp
  103185:	83 ec 0c             	sub    $0xc,%esp
  103188:	6a 00                	push   $0x0
  10318a:	e8 d9 59 00 00       	call   108b68 <__redirect_printf__>
  10318f:	83 c4 10             	add    $0x10,%esp
  103192:	83 ec 08             	sub    $0x8,%esp
  103195:	68 80 1e 14 00       	push   $0x141e80
  10319a:	68 f8 03 00 00       	push   $0x3f8
  10319f:	e8 15 f4 ff ff       	call   1025b9 <com_write>
  1031a4:	83 c4 10             	add    $0x10,%esp
  1031a7:	83 ec 04             	sub    $0x4,%esp
  1031aa:	68 00 04 00 00       	push   $0x400
  1031af:	6a 00                	push   $0x0
  1031b1:	68 80 1e 14 00       	push   $0x141e80
  1031b6:	e8 8b 66 00 00       	call   109846 <memset>
  1031bb:	83 c4 10             	add    $0x10,%esp
  1031be:	83 ec 04             	sub    $0x4,%esp
  1031c1:	68 ec 03 00 00       	push   $0x3ec
  1031c6:	6a 00                	push   $0x0
  1031c8:	68 80 22 14 00       	push   $0x142280
  1031cd:	e8 74 66 00 00       	call   109846 <memset>
  1031d2:	83 c4 10             	add    $0x10,%esp
  1031d5:	83 ec 04             	sub    $0x4,%esp
  1031d8:	6a 14                	push   $0x14
  1031da:	6a 00                	push   $0x0
  1031dc:	68 6c 26 14 00       	push   $0x14266c
  1031e1:	e8 60 66 00 00       	call   109846 <memset>
  1031e6:	83 c4 10             	add    $0x10,%esp
  1031e9:	c6 05 63 19 14 00 01 	movb   $0x1,0x141963
  1031f0:	90                   	nop
  1031f1:	c9                   	leave  
  1031f2:	c3                   	ret    

001031f3 <acpi_init>:
  1031f3:	55                   	push   %ebp
  1031f4:	89 e5                	mov    %esp,%ebp
  1031f6:	83 ec 48             	sub    $0x48,%esp
  1031f9:	c6 05 63 19 14 00 00 	movb   $0x0,0x141963
  103200:	c7 05 48 19 14 00 00 	movl   $0x0,0x141948
  103207:	00 00 00 
  10320a:	c6 05 4c 19 14 00 00 	movb   $0x0,0x14194c
  103211:	c6 05 4d 19 14 00 00 	movb   $0x0,0x14194d
  103218:	c7 05 50 19 14 00 00 	movl   $0x0,0x141950
  10321f:	00 00 00 
  103222:	c7 05 54 19 14 00 00 	movl   $0x0,0x141954
  103229:	00 00 00 
  10322c:	66 c7 05 58 19 14 00 	movw   $0x0,0x141958
  103233:	00 00 
  103235:	66 c7 05 5a 19 14 00 	movw   $0x0,0x14195a
  10323c:	00 00 
  10323e:	66 c7 05 5c 19 14 00 	movw   $0x0,0x14195c
  103245:	00 00 
  103247:	66 c7 05 5e 19 14 00 	movw   $0x0,0x14195e
  10324e:	00 00 
  103250:	c6 05 62 19 14 00 00 	movb   $0x0,0x141962
  103257:	e8 fe fb ff ff       	call   102e5a <acpi_get_rsd_ptr>
  10325c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10325f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103263:	0f 84 cb 05 00 00    	je     103834 <acpi_init+0x641>
  103269:	83 ec 08             	sub    $0x8,%esp
  10326c:	68 0f a3 10 00       	push   $0x10a30f
  103271:	ff 75 f4             	push   -0xc(%ebp)
  103274:	e8 21 fc ff ff       	call   102e9a <acpi_check_header>
  103279:	83 c4 10             	add    $0x10,%esp
  10327c:	85 c0                	test   %eax,%eax
  10327e:	0f 85 b0 05 00 00    	jne    103834 <acpi_init+0x641>
  103284:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103287:	83 c0 04             	add    $0x4,%eax
  10328a:	8b 00                	mov    (%eax),%eax
  10328c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10328f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103292:	83 e8 24             	sub    $0x24,%eax
  103295:	8d 50 03             	lea    0x3(%eax),%edx
  103298:	85 c0                	test   %eax,%eax
  10329a:	0f 48 c2             	cmovs  %edx,%eax
  10329d:	c1 f8 02             	sar    $0x2,%eax
  1032a0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1032a3:	83 45 f4 24          	addl   $0x24,-0xc(%ebp)
  1032a7:	e9 79 05 00 00       	jmp    103825 <acpi_init+0x632>
  1032ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1032af:	8b 00                	mov    (%eax),%eax
  1032b1:	83 ec 08             	sub    $0x8,%esp
  1032b4:	68 14 a3 10 00       	push   $0x10a314
  1032b9:	50                   	push   %eax
  1032ba:	e8 db fb ff ff       	call   102e9a <acpi_check_header>
  1032bf:	83 c4 10             	add    $0x10,%esp
  1032c2:	85 c0                	test   %eax,%eax
  1032c4:	0f 85 67 04 00 00    	jne    103731 <acpi_init+0x53e>
  1032ca:	c7 45 f0 fe ff ff ff 	movl   $0xfffffffe,-0x10(%ebp)
  1032d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1032d4:	8b 00                	mov    (%eax),%eax
  1032d6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1032d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1032dc:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1032df:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1032e2:	83 c0 6d             	add    $0x6d,%eax
  1032e5:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1032e8:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1032eb:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1032ee:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1032f1:	0f b7 00             	movzwl (%eax),%eax
  1032f4:	66 a3 60 19 14 00    	mov    %ax,0x141960
  1032fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1032fd:	8b 40 28             	mov    0x28(%eax),%eax
  103300:	83 ec 08             	sub    $0x8,%esp
  103303:	68 19 a3 10 00       	push   $0x10a319
  103308:	50                   	push   %eax
  103309:	e8 8c fb ff ff       	call   102e9a <acpi_check_header>
  10330e:	83 c4 10             	add    $0x10,%esp
  103311:	85 c0                	test   %eax,%eax
  103313:	0f 85 27 03 00 00    	jne    103640 <acpi_init+0x44d>
  103319:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10331c:	8b 40 28             	mov    0x28(%eax),%eax
  10331f:	83 c0 24             	add    $0x24,%eax
  103322:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103325:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103328:	8b 40 28             	mov    0x28(%eax),%eax
  10332b:	83 c0 04             	add    $0x4,%eax
  10332e:	8b 00                	mov    (%eax),%eax
  103330:	83 e8 24             	sub    $0x24,%eax
  103333:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103336:	eb 21                	jmp    103359 <acpi_init+0x166>
  103338:	83 ec 04             	sub    $0x4,%esp
  10333b:	6a 04                	push   $0x4
  10333d:	68 1e a3 10 00       	push   $0x10a31e
  103342:	ff 75 ec             	push   -0x14(%ebp)
  103345:	e8 d3 63 00 00       	call   10971d <memcmp>
  10334a:	83 c4 10             	add    $0x10,%esp
  10334d:	85 c0                	test   %eax,%eax
  10334f:	74 10                	je     103361 <acpi_init+0x16e>
  103351:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  103355:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
  103359:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  10335d:	75 d9                	jne    103338 <acpi_init+0x145>
  10335f:	eb 01                	jmp    103362 <acpi_init+0x16f>
  103361:	90                   	nop
  103362:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103366:	0f 8e e3 01 00 00    	jle    10354f <acpi_init+0x35c>
  10336c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10336f:	83 e8 01             	sub    $0x1,%eax
  103372:	0f b6 00             	movzbl (%eax),%eax
  103375:	3c 08                	cmp    $0x8,%al
  103377:	74 22                	je     10339b <acpi_init+0x1a8>
  103379:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10337c:	83 e8 02             	sub    $0x2,%eax
  10337f:	0f b6 00             	movzbl (%eax),%eax
  103382:	3c 08                	cmp    $0x8,%al
  103384:	0f 85 93 04 00 00    	jne    10381d <acpi_init+0x62a>
  10338a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10338d:	83 e8 01             	sub    $0x1,%eax
  103390:	0f b6 00             	movzbl (%eax),%eax
  103393:	3c 5c                	cmp    $0x5c,%al
  103395:	0f 85 82 04 00 00    	jne    10381d <acpi_init+0x62a>
  10339b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10339e:	83 c0 04             	add    $0x4,%eax
  1033a1:	0f b6 00             	movzbl (%eax),%eax
  1033a4:	3c 12                	cmp    $0x12,%al
  1033a6:	0f 85 71 04 00 00    	jne    10381d <acpi_init+0x62a>
  1033ac:	83 45 ec 05          	addl   $0x5,-0x14(%ebp)
  1033b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1033b3:	0f b6 00             	movzbl (%eax),%eax
  1033b6:	0f be c0             	movsbl %al,%eax
  1033b9:	c1 f8 06             	sar    $0x6,%eax
  1033bc:	83 e0 03             	and    $0x3,%eax
  1033bf:	83 c0 02             	add    $0x2,%eax
  1033c2:	01 45 ec             	add    %eax,-0x14(%ebp)
  1033c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1033c8:	0f b6 00             	movzbl (%eax),%eax
  1033cb:	3c 0a                	cmp    $0xa,%al
  1033cd:	75 04                	jne    1033d3 <acpi_init+0x1e0>
  1033cf:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1033d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1033d6:	0f b6 00             	movzbl (%eax),%eax
  1033d9:	66 98                	cbtw   
  1033db:	c1 e0 0a             	shl    $0xa,%eax
  1033de:	66 a3 58 19 14 00    	mov    %ax,0x141958
  1033e4:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1033e8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1033eb:	0f b6 00             	movzbl (%eax),%eax
  1033ee:	3c 0a                	cmp    $0xa,%al
  1033f0:	75 04                	jne    1033f6 <acpi_init+0x203>
  1033f2:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1033f6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1033f9:	0f b6 00             	movzbl (%eax),%eax
  1033fc:	66 98                	cbtw   
  1033fe:	c1 e0 0a             	shl    $0xa,%eax
  103401:	66 a3 5a 19 14 00    	mov    %ax,0x14195a
  103407:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10340a:	8b 40 30             	mov    0x30(%eax),%eax
  10340d:	a3 48 19 14 00       	mov    %eax,0x141948
  103412:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103415:	0f b6 40 34          	movzbl 0x34(%eax),%eax
  103419:	a2 4c 19 14 00       	mov    %al,0x14194c
  10341e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103421:	0f b6 40 35          	movzbl 0x35(%eax),%eax
  103425:	a2 4d 19 14 00       	mov    %al,0x14194d
  10342a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10342d:	8b 40 40             	mov    0x40(%eax),%eax
  103430:	a3 50 19 14 00       	mov    %eax,0x141950
  103435:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103438:	8b 40 44             	mov    0x44(%eax),%eax
  10343b:	a3 54 19 14 00       	mov    %eax,0x141954
  103440:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103443:	0f b6 40 59          	movzbl 0x59(%eax),%eax
  103447:	a2 62 19 14 00       	mov    %al,0x141962
  10344c:	66 c7 05 5c 19 14 00 	movw   $0x2000,0x14195c
  103453:	00 20 
  103455:	66 c7 05 5e 19 14 00 	movw   $0x1,0x14195e
  10345c:	01 00 
  10345e:	83 ec 0c             	sub    $0xc,%esp
  103461:	68 80 22 14 00       	push   $0x142280
  103466:	e8 fd 56 00 00       	call   108b68 <__redirect_printf__>
  10346b:	83 c4 10             	add    $0x10,%esp
  10346e:	83 ec 0c             	sub    $0xc,%esp
  103471:	68 23 a3 10 00       	push   $0x10a323
  103476:	e8 da 5f 00 00       	call   109455 <printf>
  10347b:	83 c4 10             	add    $0x10,%esp
  10347e:	83 ec 0c             	sub    $0xc,%esp
  103481:	6a 00                	push   $0x0
  103483:	e8 e0 56 00 00       	call   108b68 <__redirect_printf__>
  103488:	83 c4 10             	add    $0x10,%esp
  10348b:	83 ec 0c             	sub    $0xc,%esp
  10348e:	8d 45 d2             	lea    -0x2e(%ebp),%eax
  103491:	50                   	push   %eax
  103492:	e8 08 f6 ff ff       	call   102a9f <cmos_read_rtc>
  103497:	83 c4 10             	add    $0x10,%esp
  10349a:	83 ec 04             	sub    $0x4,%esp
  10349d:	68 6c 26 14 00       	push   $0x14266c
  1034a2:	83 ec 08             	sub    $0x8,%esp
  1034a5:	89 e0                	mov    %esp,%eax
  1034a7:	8b 55 d2             	mov    -0x2e(%ebp),%edx
  1034aa:	89 10                	mov    %edx,(%eax)
  1034ac:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
  1034b0:	66 89 50 04          	mov    %dx,0x4(%eax)
  1034b4:	e8 0b 1b 00 00       	call   104fc4 <cmos_datetime_to_str>
  1034b9:	83 c4 10             	add    $0x10,%esp
  1034bc:	83 ec 0c             	sub    $0xc,%esp
  1034bf:	68 80 1e 14 00       	push   $0x141e80
  1034c4:	e8 9f 56 00 00       	call   108b68 <__redirect_printf__>
  1034c9:	83 c4 10             	add    $0x10,%esp
  1034cc:	83 ec 04             	sub    $0x4,%esp
  1034cf:	68 80 22 14 00       	push   $0x142280
  1034d4:	68 6c 26 14 00       	push   $0x14266c
  1034d9:	68 f2 a2 10 00       	push   $0x10a2f2
  1034de:	e8 72 5f 00 00       	call   109455 <printf>
  1034e3:	83 c4 10             	add    $0x10,%esp
  1034e6:	83 ec 0c             	sub    $0xc,%esp
  1034e9:	6a 00                	push   $0x0
  1034eb:	e8 78 56 00 00       	call   108b68 <__redirect_printf__>
  1034f0:	83 c4 10             	add    $0x10,%esp
  1034f3:	83 ec 08             	sub    $0x8,%esp
  1034f6:	68 80 1e 14 00       	push   $0x141e80
  1034fb:	68 f8 03 00 00       	push   $0x3f8
  103500:	e8 b4 f0 ff ff       	call   1025b9 <com_write>
  103505:	83 c4 10             	add    $0x10,%esp
  103508:	83 ec 04             	sub    $0x4,%esp
  10350b:	68 00 04 00 00       	push   $0x400
  103510:	6a 00                	push   $0x0
  103512:	68 80 1e 14 00       	push   $0x141e80
  103517:	e8 2a 63 00 00       	call   109846 <memset>
  10351c:	83 c4 10             	add    $0x10,%esp
  10351f:	83 ec 04             	sub    $0x4,%esp
  103522:	68 ec 03 00 00       	push   $0x3ec
  103527:	6a 00                	push   $0x0
  103529:	68 80 22 14 00       	push   $0x142280
  10352e:	e8 13 63 00 00       	call   109846 <memset>
  103533:	83 c4 10             	add    $0x10,%esp
  103536:	83 ec 04             	sub    $0x4,%esp
  103539:	6a 14                	push   $0x14
  10353b:	6a 00                	push   $0x0
  10353d:	68 6c 26 14 00       	push   $0x14266c
  103542:	e8 ff 62 00 00       	call   109846 <memset>
  103547:	83 c4 10             	add    $0x10,%esp
  10354a:	e9 da 03 00 00       	jmp    103929 <acpi_init+0x736>
  10354f:	83 ec 0c             	sub    $0xc,%esp
  103552:	68 80 22 14 00       	push   $0x142280
  103557:	e8 0c 56 00 00       	call   108b68 <__redirect_printf__>
  10355c:	83 c4 10             	add    $0x10,%esp
  10355f:	83 ec 0c             	sub    $0xc,%esp
  103562:	68 38 a3 10 00       	push   $0x10a338
  103567:	e8 e9 5e 00 00       	call   109455 <printf>
  10356c:	83 c4 10             	add    $0x10,%esp
  10356f:	83 ec 0c             	sub    $0xc,%esp
  103572:	6a 00                	push   $0x0
  103574:	e8 ef 55 00 00       	call   108b68 <__redirect_printf__>
  103579:	83 c4 10             	add    $0x10,%esp
  10357c:	83 ec 0c             	sub    $0xc,%esp
  10357f:	8d 45 cc             	lea    -0x34(%ebp),%eax
  103582:	50                   	push   %eax
  103583:	e8 17 f5 ff ff       	call   102a9f <cmos_read_rtc>
  103588:	83 c4 10             	add    $0x10,%esp
  10358b:	83 ec 04             	sub    $0x4,%esp
  10358e:	68 6c 26 14 00       	push   $0x14266c
  103593:	83 ec 08             	sub    $0x8,%esp
  103596:	89 e0                	mov    %esp,%eax
  103598:	8b 55 cc             	mov    -0x34(%ebp),%edx
  10359b:	89 10                	mov    %edx,(%eax)
  10359d:	0f b7 55 d0          	movzwl -0x30(%ebp),%edx
  1035a1:	66 89 50 04          	mov    %dx,0x4(%eax)
  1035a5:	e8 1a 1a 00 00       	call   104fc4 <cmos_datetime_to_str>
  1035aa:	83 c4 10             	add    $0x10,%esp
  1035ad:	83 ec 0c             	sub    $0xc,%esp
  1035b0:	68 80 1e 14 00       	push   $0x141e80
  1035b5:	e8 ae 55 00 00       	call   108b68 <__redirect_printf__>
  1035ba:	83 c4 10             	add    $0x10,%esp
  1035bd:	83 ec 04             	sub    $0x4,%esp
  1035c0:	68 80 22 14 00       	push   $0x142280
  1035c5:	68 6c 26 14 00       	push   $0x14266c
  1035ca:	68 f2 a2 10 00       	push   $0x10a2f2
  1035cf:	e8 81 5e 00 00       	call   109455 <printf>
  1035d4:	83 c4 10             	add    $0x10,%esp
  1035d7:	83 ec 0c             	sub    $0xc,%esp
  1035da:	6a 00                	push   $0x0
  1035dc:	e8 87 55 00 00       	call   108b68 <__redirect_printf__>
  1035e1:	83 c4 10             	add    $0x10,%esp
  1035e4:	83 ec 08             	sub    $0x8,%esp
  1035e7:	68 80 1e 14 00       	push   $0x141e80
  1035ec:	68 f8 03 00 00       	push   $0x3f8
  1035f1:	e8 c3 ef ff ff       	call   1025b9 <com_write>
  1035f6:	83 c4 10             	add    $0x10,%esp
  1035f9:	83 ec 04             	sub    $0x4,%esp
  1035fc:	68 00 04 00 00       	push   $0x400
  103601:	6a 00                	push   $0x0
  103603:	68 80 1e 14 00       	push   $0x141e80
  103608:	e8 39 62 00 00       	call   109846 <memset>
  10360d:	83 c4 10             	add    $0x10,%esp
  103610:	83 ec 04             	sub    $0x4,%esp
  103613:	68 ec 03 00 00       	push   $0x3ec
  103618:	6a 00                	push   $0x0
  10361a:	68 80 22 14 00       	push   $0x142280
  10361f:	e8 22 62 00 00       	call   109846 <memset>
  103624:	83 c4 10             	add    $0x10,%esp
  103627:	83 ec 04             	sub    $0x4,%esp
  10362a:	6a 14                	push   $0x14
  10362c:	6a 00                	push   $0x0
  10362e:	68 6c 26 14 00       	push   $0x14266c
  103633:	e8 0e 62 00 00       	call   109846 <memset>
  103638:	83 c4 10             	add    $0x10,%esp
  10363b:	e9 dd 01 00 00       	jmp    10381d <acpi_init+0x62a>
  103640:	83 ec 0c             	sub    $0xc,%esp
  103643:	68 80 22 14 00       	push   $0x142280
  103648:	e8 1b 55 00 00       	call   108b68 <__redirect_printf__>
  10364d:	83 c4 10             	add    $0x10,%esp
  103650:	83 ec 0c             	sub    $0xc,%esp
  103653:	68 60 a3 10 00       	push   $0x10a360
  103658:	e8 f8 5d 00 00       	call   109455 <printf>
  10365d:	83 c4 10             	add    $0x10,%esp
  103660:	83 ec 0c             	sub    $0xc,%esp
  103663:	6a 00                	push   $0x0
  103665:	e8 fe 54 00 00       	call   108b68 <__redirect_printf__>
  10366a:	83 c4 10             	add    $0x10,%esp
  10366d:	83 ec 0c             	sub    $0xc,%esp
  103670:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  103673:	50                   	push   %eax
  103674:	e8 26 f4 ff ff       	call   102a9f <cmos_read_rtc>
  103679:	83 c4 10             	add    $0x10,%esp
  10367c:	83 ec 04             	sub    $0x4,%esp
  10367f:	68 6c 26 14 00       	push   $0x14266c
  103684:	83 ec 08             	sub    $0x8,%esp
  103687:	89 e0                	mov    %esp,%eax
  103689:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  10368c:	89 10                	mov    %edx,(%eax)
  10368e:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  103692:	66 89 50 04          	mov    %dx,0x4(%eax)
  103696:	e8 29 19 00 00       	call   104fc4 <cmos_datetime_to_str>
  10369b:	83 c4 10             	add    $0x10,%esp
  10369e:	83 ec 0c             	sub    $0xc,%esp
  1036a1:	68 80 1e 14 00       	push   $0x141e80
  1036a6:	e8 bd 54 00 00       	call   108b68 <__redirect_printf__>
  1036ab:	83 c4 10             	add    $0x10,%esp
  1036ae:	83 ec 04             	sub    $0x4,%esp
  1036b1:	68 80 22 14 00       	push   $0x142280
  1036b6:	68 6c 26 14 00       	push   $0x14266c
  1036bb:	68 f2 a2 10 00       	push   $0x10a2f2
  1036c0:	e8 90 5d 00 00       	call   109455 <printf>
  1036c5:	83 c4 10             	add    $0x10,%esp
  1036c8:	83 ec 0c             	sub    $0xc,%esp
  1036cb:	6a 00                	push   $0x0
  1036cd:	e8 96 54 00 00       	call   108b68 <__redirect_printf__>
  1036d2:	83 c4 10             	add    $0x10,%esp
  1036d5:	83 ec 08             	sub    $0x8,%esp
  1036d8:	68 80 1e 14 00       	push   $0x141e80
  1036dd:	68 f8 03 00 00       	push   $0x3f8
  1036e2:	e8 d2 ee ff ff       	call   1025b9 <com_write>
  1036e7:	83 c4 10             	add    $0x10,%esp
  1036ea:	83 ec 04             	sub    $0x4,%esp
  1036ed:	68 00 04 00 00       	push   $0x400
  1036f2:	6a 00                	push   $0x0
  1036f4:	68 80 1e 14 00       	push   $0x141e80
  1036f9:	e8 48 61 00 00       	call   109846 <memset>
  1036fe:	83 c4 10             	add    $0x10,%esp
  103701:	83 ec 04             	sub    $0x4,%esp
  103704:	68 ec 03 00 00       	push   $0x3ec
  103709:	6a 00                	push   $0x0
  10370b:	68 80 22 14 00       	push   $0x142280
  103710:	e8 31 61 00 00       	call   109846 <memset>
  103715:	83 c4 10             	add    $0x10,%esp
  103718:	83 ec 04             	sub    $0x4,%esp
  10371b:	6a 14                	push   $0x14
  10371d:	6a 00                	push   $0x0
  10371f:	68 6c 26 14 00       	push   $0x14266c
  103724:	e8 1d 61 00 00       	call   109846 <memset>
  103729:	83 c4 10             	add    $0x10,%esp
  10372c:	e9 ec 00 00 00       	jmp    10381d <acpi_init+0x62a>
  103731:	83 ec 0c             	sub    $0xc,%esp
  103734:	68 80 22 14 00       	push   $0x142280
  103739:	e8 2a 54 00 00       	call   108b68 <__redirect_printf__>
  10373e:	83 c4 10             	add    $0x10,%esp
  103741:	83 ec 0c             	sub    $0xc,%esp
  103744:	68 88 a3 10 00       	push   $0x10a388
  103749:	e8 07 5d 00 00       	call   109455 <printf>
  10374e:	83 c4 10             	add    $0x10,%esp
  103751:	83 ec 0c             	sub    $0xc,%esp
  103754:	6a 00                	push   $0x0
  103756:	e8 0d 54 00 00       	call   108b68 <__redirect_printf__>
  10375b:	83 c4 10             	add    $0x10,%esp
  10375e:	83 ec 0c             	sub    $0xc,%esp
  103761:	8d 45 c0             	lea    -0x40(%ebp),%eax
  103764:	50                   	push   %eax
  103765:	e8 35 f3 ff ff       	call   102a9f <cmos_read_rtc>
  10376a:	83 c4 10             	add    $0x10,%esp
  10376d:	83 ec 04             	sub    $0x4,%esp
  103770:	68 6c 26 14 00       	push   $0x14266c
  103775:	83 ec 08             	sub    $0x8,%esp
  103778:	89 e0                	mov    %esp,%eax
  10377a:	8b 55 c0             	mov    -0x40(%ebp),%edx
  10377d:	89 10                	mov    %edx,(%eax)
  10377f:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  103783:	66 89 50 04          	mov    %dx,0x4(%eax)
  103787:	e8 38 18 00 00       	call   104fc4 <cmos_datetime_to_str>
  10378c:	83 c4 10             	add    $0x10,%esp
  10378f:	83 ec 0c             	sub    $0xc,%esp
  103792:	68 80 1e 14 00       	push   $0x141e80
  103797:	e8 cc 53 00 00       	call   108b68 <__redirect_printf__>
  10379c:	83 c4 10             	add    $0x10,%esp
  10379f:	83 ec 04             	sub    $0x4,%esp
  1037a2:	68 80 22 14 00       	push   $0x142280
  1037a7:	68 6c 26 14 00       	push   $0x14266c
  1037ac:	68 f2 a2 10 00       	push   $0x10a2f2
  1037b1:	e8 9f 5c 00 00       	call   109455 <printf>
  1037b6:	83 c4 10             	add    $0x10,%esp
  1037b9:	83 ec 0c             	sub    $0xc,%esp
  1037bc:	6a 00                	push   $0x0
  1037be:	e8 a5 53 00 00       	call   108b68 <__redirect_printf__>
  1037c3:	83 c4 10             	add    $0x10,%esp
  1037c6:	83 ec 08             	sub    $0x8,%esp
  1037c9:	68 80 1e 14 00       	push   $0x141e80
  1037ce:	68 f8 03 00 00       	push   $0x3f8
  1037d3:	e8 e1 ed ff ff       	call   1025b9 <com_write>
  1037d8:	83 c4 10             	add    $0x10,%esp
  1037db:	83 ec 04             	sub    $0x4,%esp
  1037de:	68 00 04 00 00       	push   $0x400
  1037e3:	6a 00                	push   $0x0
  1037e5:	68 80 1e 14 00       	push   $0x141e80
  1037ea:	e8 57 60 00 00       	call   109846 <memset>
  1037ef:	83 c4 10             	add    $0x10,%esp
  1037f2:	83 ec 04             	sub    $0x4,%esp
  1037f5:	68 ec 03 00 00       	push   $0x3ec
  1037fa:	6a 00                	push   $0x0
  1037fc:	68 80 22 14 00       	push   $0x142280
  103801:	e8 40 60 00 00       	call   109846 <memset>
  103806:	83 c4 10             	add    $0x10,%esp
  103809:	83 ec 04             	sub    $0x4,%esp
  10380c:	6a 14                	push   $0x14
  10380e:	6a 00                	push   $0x0
  103810:	68 6c 26 14 00       	push   $0x14266c
  103815:	e8 2c 60 00 00       	call   109846 <memset>
  10381a:	83 c4 10             	add    $0x10,%esp
  10381d:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  103821:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  103825:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  103829:	0f 8f 7d fa ff ff    	jg     1032ac <acpi_init+0xb9>
  10382f:	e9 ec 00 00 00       	jmp    103920 <acpi_init+0x72d>
  103834:	83 ec 0c             	sub    $0xc,%esp
  103837:	68 80 22 14 00       	push   $0x142280
  10383c:	e8 27 53 00 00       	call   108b68 <__redirect_printf__>
  103841:	83 c4 10             	add    $0x10,%esp
  103844:	83 ec 0c             	sub    $0xc,%esp
  103847:	68 b0 a3 10 00       	push   $0x10a3b0
  10384c:	e8 04 5c 00 00       	call   109455 <printf>
  103851:	83 c4 10             	add    $0x10,%esp
  103854:	83 ec 0c             	sub    $0xc,%esp
  103857:	6a 00                	push   $0x0
  103859:	e8 0a 53 00 00       	call   108b68 <__redirect_printf__>
  10385e:	83 c4 10             	add    $0x10,%esp
  103861:	83 ec 0c             	sub    $0xc,%esp
  103864:	8d 45 ba             	lea    -0x46(%ebp),%eax
  103867:	50                   	push   %eax
  103868:	e8 32 f2 ff ff       	call   102a9f <cmos_read_rtc>
  10386d:	83 c4 10             	add    $0x10,%esp
  103870:	83 ec 04             	sub    $0x4,%esp
  103873:	68 6c 26 14 00       	push   $0x14266c
  103878:	83 ec 08             	sub    $0x8,%esp
  10387b:	89 e0                	mov    %esp,%eax
  10387d:	8b 55 ba             	mov    -0x46(%ebp),%edx
  103880:	89 10                	mov    %edx,(%eax)
  103882:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  103886:	66 89 50 04          	mov    %dx,0x4(%eax)
  10388a:	e8 35 17 00 00       	call   104fc4 <cmos_datetime_to_str>
  10388f:	83 c4 10             	add    $0x10,%esp
  103892:	83 ec 0c             	sub    $0xc,%esp
  103895:	68 80 1e 14 00       	push   $0x141e80
  10389a:	e8 c9 52 00 00       	call   108b68 <__redirect_printf__>
  10389f:	83 c4 10             	add    $0x10,%esp
  1038a2:	83 ec 04             	sub    $0x4,%esp
  1038a5:	68 80 22 14 00       	push   $0x142280
  1038aa:	68 6c 26 14 00       	push   $0x14266c
  1038af:	68 f2 a2 10 00       	push   $0x10a2f2
  1038b4:	e8 9c 5b 00 00       	call   109455 <printf>
  1038b9:	83 c4 10             	add    $0x10,%esp
  1038bc:	83 ec 0c             	sub    $0xc,%esp
  1038bf:	6a 00                	push   $0x0
  1038c1:	e8 a2 52 00 00       	call   108b68 <__redirect_printf__>
  1038c6:	83 c4 10             	add    $0x10,%esp
  1038c9:	83 ec 08             	sub    $0x8,%esp
  1038cc:	68 80 1e 14 00       	push   $0x141e80
  1038d1:	68 f8 03 00 00       	push   $0x3f8
  1038d6:	e8 de ec ff ff       	call   1025b9 <com_write>
  1038db:	83 c4 10             	add    $0x10,%esp
  1038de:	83 ec 04             	sub    $0x4,%esp
  1038e1:	68 00 04 00 00       	push   $0x400
  1038e6:	6a 00                	push   $0x0
  1038e8:	68 80 1e 14 00       	push   $0x141e80
  1038ed:	e8 54 5f 00 00       	call   109846 <memset>
  1038f2:	83 c4 10             	add    $0x10,%esp
  1038f5:	83 ec 04             	sub    $0x4,%esp
  1038f8:	68 ec 03 00 00       	push   $0x3ec
  1038fd:	6a 00                	push   $0x0
  1038ff:	68 80 22 14 00       	push   $0x142280
  103904:	e8 3d 5f 00 00       	call   109846 <memset>
  103909:	83 c4 10             	add    $0x10,%esp
  10390c:	83 ec 04             	sub    $0x4,%esp
  10390f:	6a 14                	push   $0x14
  103911:	6a 00                	push   $0x0
  103913:	68 6c 26 14 00       	push   $0x14266c
  103918:	e8 29 5f 00 00       	call   109846 <memset>
  10391d:	83 c4 10             	add    $0x10,%esp
  103920:	66 c7 05 5e 19 14 00 	movw   $0x0,0x14195e
  103927:	00 00 
  103929:	c9                   	leave  
  10392a:	c3                   	ret    

0010392b <acpi_shutdown>:
  10392b:	55                   	push   %ebp
  10392c:	89 e5                	mov    %esp,%ebp
  10392e:	83 ec 28             	sub    $0x28,%esp
  103931:	e8 49 03 00 00       	call   103c7f <acpi_is_initialized>
  103936:	84 c0                	test   %al,%al
  103938:	0f 85 f1 00 00 00    	jne    103a2f <acpi_shutdown+0x104>
  10393e:	83 ec 0c             	sub    $0xc,%esp
  103941:	68 80 22 14 00       	push   $0x142280
  103946:	e8 1d 52 00 00       	call   108b68 <__redirect_printf__>
  10394b:	83 c4 10             	add    $0x10,%esp
  10394e:	83 ec 0c             	sub    $0xc,%esp
  103951:	68 d8 a3 10 00       	push   $0x10a3d8
  103956:	e8 fa 5a 00 00       	call   109455 <printf>
  10395b:	83 c4 10             	add    $0x10,%esp
  10395e:	83 ec 0c             	sub    $0xc,%esp
  103961:	6a 00                	push   $0x0
  103963:	e8 00 52 00 00       	call   108b68 <__redirect_printf__>
  103968:	83 c4 10             	add    $0x10,%esp
  10396b:	83 ec 0c             	sub    $0xc,%esp
  10396e:	8d 45 f2             	lea    -0xe(%ebp),%eax
  103971:	50                   	push   %eax
  103972:	e8 28 f1 ff ff       	call   102a9f <cmos_read_rtc>
  103977:	83 c4 10             	add    $0x10,%esp
  10397a:	83 ec 04             	sub    $0x4,%esp
  10397d:	68 6c 26 14 00       	push   $0x14266c
  103982:	83 ec 08             	sub    $0x8,%esp
  103985:	89 e0                	mov    %esp,%eax
  103987:	8b 55 f2             	mov    -0xe(%ebp),%edx
  10398a:	89 10                	mov    %edx,(%eax)
  10398c:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  103990:	66 89 50 04          	mov    %dx,0x4(%eax)
  103994:	e8 2b 16 00 00       	call   104fc4 <cmos_datetime_to_str>
  103999:	83 c4 10             	add    $0x10,%esp
  10399c:	83 ec 0c             	sub    $0xc,%esp
  10399f:	68 80 1e 14 00       	push   $0x141e80
  1039a4:	e8 bf 51 00 00       	call   108b68 <__redirect_printf__>
  1039a9:	83 c4 10             	add    $0x10,%esp
  1039ac:	83 ec 04             	sub    $0x4,%esp
  1039af:	68 80 22 14 00       	push   $0x142280
  1039b4:	68 6c 26 14 00       	push   $0x14266c
  1039b9:	68 f2 a2 10 00       	push   $0x10a2f2
  1039be:	e8 92 5a 00 00       	call   109455 <printf>
  1039c3:	83 c4 10             	add    $0x10,%esp
  1039c6:	83 ec 0c             	sub    $0xc,%esp
  1039c9:	6a 00                	push   $0x0
  1039cb:	e8 98 51 00 00       	call   108b68 <__redirect_printf__>
  1039d0:	83 c4 10             	add    $0x10,%esp
  1039d3:	83 ec 08             	sub    $0x8,%esp
  1039d6:	68 80 1e 14 00       	push   $0x141e80
  1039db:	68 f8 03 00 00       	push   $0x3f8
  1039e0:	e8 d4 eb ff ff       	call   1025b9 <com_write>
  1039e5:	83 c4 10             	add    $0x10,%esp
  1039e8:	83 ec 04             	sub    $0x4,%esp
  1039eb:	68 00 04 00 00       	push   $0x400
  1039f0:	6a 00                	push   $0x0
  1039f2:	68 80 1e 14 00       	push   $0x141e80
  1039f7:	e8 4a 5e 00 00       	call   109846 <memset>
  1039fc:	83 c4 10             	add    $0x10,%esp
  1039ff:	83 ec 04             	sub    $0x4,%esp
  103a02:	68 ec 03 00 00       	push   $0x3ec
  103a07:	6a 00                	push   $0x0
  103a09:	68 80 22 14 00       	push   $0x142280
  103a0e:	e8 33 5e 00 00       	call   109846 <memset>
  103a13:	83 c4 10             	add    $0x10,%esp
  103a16:	83 ec 04             	sub    $0x4,%esp
  103a19:	6a 14                	push   $0x14
  103a1b:	6a 00                	push   $0x0
  103a1d:	68 6c 26 14 00       	push   $0x14266c
  103a22:	e8 1f 5e 00 00       	call   109846 <memset>
  103a27:	83 c4 10             	add    $0x10,%esp
  103a2a:	e9 41 02 00 00       	jmp    103c70 <acpi_shutdown+0x345>
  103a2f:	0f b6 05 63 19 14 00 	movzbl 0x141963,%eax
  103a36:	84 c0                	test   %al,%al
  103a38:	0f 85 f1 00 00 00    	jne    103b2f <acpi_shutdown+0x204>
  103a3e:	83 ec 0c             	sub    $0xc,%esp
  103a41:	68 80 22 14 00       	push   $0x142280
  103a46:	e8 1d 51 00 00       	call   108b68 <__redirect_printf__>
  103a4b:	83 c4 10             	add    $0x10,%esp
  103a4e:	83 ec 0c             	sub    $0xc,%esp
  103a51:	68 0c a4 10 00       	push   $0x10a40c
  103a56:	e8 fa 59 00 00       	call   109455 <printf>
  103a5b:	83 c4 10             	add    $0x10,%esp
  103a5e:	83 ec 0c             	sub    $0xc,%esp
  103a61:	6a 00                	push   $0x0
  103a63:	e8 00 51 00 00       	call   108b68 <__redirect_printf__>
  103a68:	83 c4 10             	add    $0x10,%esp
  103a6b:	83 ec 0c             	sub    $0xc,%esp
  103a6e:	8d 45 ec             	lea    -0x14(%ebp),%eax
  103a71:	50                   	push   %eax
  103a72:	e8 28 f0 ff ff       	call   102a9f <cmos_read_rtc>
  103a77:	83 c4 10             	add    $0x10,%esp
  103a7a:	83 ec 04             	sub    $0x4,%esp
  103a7d:	68 6c 26 14 00       	push   $0x14266c
  103a82:	83 ec 08             	sub    $0x8,%esp
  103a85:	89 e0                	mov    %esp,%eax
  103a87:	8b 55 ec             	mov    -0x14(%ebp),%edx
  103a8a:	89 10                	mov    %edx,(%eax)
  103a8c:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  103a90:	66 89 50 04          	mov    %dx,0x4(%eax)
  103a94:	e8 2b 15 00 00       	call   104fc4 <cmos_datetime_to_str>
  103a99:	83 c4 10             	add    $0x10,%esp
  103a9c:	83 ec 0c             	sub    $0xc,%esp
  103a9f:	68 80 1e 14 00       	push   $0x141e80
  103aa4:	e8 bf 50 00 00       	call   108b68 <__redirect_printf__>
  103aa9:	83 c4 10             	add    $0x10,%esp
  103aac:	83 ec 04             	sub    $0x4,%esp
  103aaf:	68 80 22 14 00       	push   $0x142280
  103ab4:	68 6c 26 14 00       	push   $0x14266c
  103ab9:	68 f2 a2 10 00       	push   $0x10a2f2
  103abe:	e8 92 59 00 00       	call   109455 <printf>
  103ac3:	83 c4 10             	add    $0x10,%esp
  103ac6:	83 ec 0c             	sub    $0xc,%esp
  103ac9:	6a 00                	push   $0x0
  103acb:	e8 98 50 00 00       	call   108b68 <__redirect_printf__>
  103ad0:	83 c4 10             	add    $0x10,%esp
  103ad3:	83 ec 08             	sub    $0x8,%esp
  103ad6:	68 80 1e 14 00       	push   $0x141e80
  103adb:	68 f8 03 00 00       	push   $0x3f8
  103ae0:	e8 d4 ea ff ff       	call   1025b9 <com_write>
  103ae5:	83 c4 10             	add    $0x10,%esp
  103ae8:	83 ec 04             	sub    $0x4,%esp
  103aeb:	68 00 04 00 00       	push   $0x400
  103af0:	6a 00                	push   $0x0
  103af2:	68 80 1e 14 00       	push   $0x141e80
  103af7:	e8 4a 5d 00 00       	call   109846 <memset>
  103afc:	83 c4 10             	add    $0x10,%esp
  103aff:	83 ec 04             	sub    $0x4,%esp
  103b02:	68 ec 03 00 00       	push   $0x3ec
  103b07:	6a 00                	push   $0x0
  103b09:	68 80 22 14 00       	push   $0x142280
  103b0e:	e8 33 5d 00 00       	call   109846 <memset>
  103b13:	83 c4 10             	add    $0x10,%esp
  103b16:	83 ec 04             	sub    $0x4,%esp
  103b19:	6a 14                	push   $0x14
  103b1b:	6a 00                	push   $0x0
  103b1d:	68 6c 26 14 00       	push   $0x14266c
  103b22:	e8 1f 5d 00 00       	call   109846 <memset>
  103b27:	83 c4 10             	add    $0x10,%esp
  103b2a:	e9 41 01 00 00       	jmp    103c70 <acpi_shutdown+0x345>
  103b2f:	83 ec 0c             	sub    $0xc,%esp
  103b32:	68 80 22 14 00       	push   $0x142280
  103b37:	e8 2c 50 00 00       	call   108b68 <__redirect_printf__>
  103b3c:	83 c4 10             	add    $0x10,%esp
  103b3f:	83 ec 0c             	sub    $0xc,%esp
  103b42:	68 38 a4 10 00       	push   $0x10a438
  103b47:	e8 09 59 00 00       	call   109455 <printf>
  103b4c:	83 c4 10             	add    $0x10,%esp
  103b4f:	83 ec 0c             	sub    $0xc,%esp
  103b52:	6a 00                	push   $0x0
  103b54:	e8 0f 50 00 00       	call   108b68 <__redirect_printf__>
  103b59:	83 c4 10             	add    $0x10,%esp
  103b5c:	83 ec 0c             	sub    $0xc,%esp
  103b5f:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  103b62:	50                   	push   %eax
  103b63:	e8 37 ef ff ff       	call   102a9f <cmos_read_rtc>
  103b68:	83 c4 10             	add    $0x10,%esp
  103b6b:	83 ec 04             	sub    $0x4,%esp
  103b6e:	68 6c 26 14 00       	push   $0x14266c
  103b73:	83 ec 08             	sub    $0x8,%esp
  103b76:	89 e0                	mov    %esp,%eax
  103b78:	8b 55 e6             	mov    -0x1a(%ebp),%edx
  103b7b:	89 10                	mov    %edx,(%eax)
  103b7d:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  103b81:	66 89 50 04          	mov    %dx,0x4(%eax)
  103b85:	e8 3a 14 00 00       	call   104fc4 <cmos_datetime_to_str>
  103b8a:	83 c4 10             	add    $0x10,%esp
  103b8d:	83 ec 0c             	sub    $0xc,%esp
  103b90:	68 80 1e 14 00       	push   $0x141e80
  103b95:	e8 ce 4f 00 00       	call   108b68 <__redirect_printf__>
  103b9a:	83 c4 10             	add    $0x10,%esp
  103b9d:	83 ec 04             	sub    $0x4,%esp
  103ba0:	68 80 22 14 00       	push   $0x142280
  103ba5:	68 6c 26 14 00       	push   $0x14266c
  103baa:	68 f2 a2 10 00       	push   $0x10a2f2
  103baf:	e8 a1 58 00 00       	call   109455 <printf>
  103bb4:	83 c4 10             	add    $0x10,%esp
  103bb7:	83 ec 0c             	sub    $0xc,%esp
  103bba:	6a 00                	push   $0x0
  103bbc:	e8 a7 4f 00 00       	call   108b68 <__redirect_printf__>
  103bc1:	83 c4 10             	add    $0x10,%esp
  103bc4:	83 ec 08             	sub    $0x8,%esp
  103bc7:	68 80 1e 14 00       	push   $0x141e80
  103bcc:	68 f8 03 00 00       	push   $0x3f8
  103bd1:	e8 e3 e9 ff ff       	call   1025b9 <com_write>
  103bd6:	83 c4 10             	add    $0x10,%esp
  103bd9:	83 ec 04             	sub    $0x4,%esp
  103bdc:	68 00 04 00 00       	push   $0x400
  103be1:	6a 00                	push   $0x0
  103be3:	68 80 1e 14 00       	push   $0x141e80
  103be8:	e8 59 5c 00 00       	call   109846 <memset>
  103bed:	83 c4 10             	add    $0x10,%esp
  103bf0:	83 ec 04             	sub    $0x4,%esp
  103bf3:	68 ec 03 00 00       	push   $0x3ec
  103bf8:	6a 00                	push   $0x0
  103bfa:	68 80 22 14 00       	push   $0x142280
  103bff:	e8 42 5c 00 00       	call   109846 <memset>
  103c04:	83 c4 10             	add    $0x10,%esp
  103c07:	83 ec 04             	sub    $0x4,%esp
  103c0a:	6a 14                	push   $0x14
  103c0c:	6a 00                	push   $0x0
  103c0e:	68 6c 26 14 00       	push   $0x14266c
  103c13:	e8 2e 5c 00 00       	call   109846 <memset>
  103c18:	83 c4 10             	add    $0x10,%esp
  103c1b:	0f b7 15 58 19 14 00 	movzwl 0x141958,%edx
  103c22:	0f b7 05 5c 19 14 00 	movzwl 0x14195c,%eax
  103c29:	09 d0                	or     %edx,%eax
  103c2b:	0f b7 c0             	movzwl %ax,%eax
  103c2e:	8b 15 50 19 14 00    	mov    0x141950,%edx
  103c34:	83 ec 08             	sub    $0x8,%esp
  103c37:	50                   	push   %eax
  103c38:	52                   	push   %edx
  103c39:	e8 ac ca ff ff       	call   1006ea <outw>
  103c3e:	83 c4 10             	add    $0x10,%esp
  103c41:	a1 54 19 14 00       	mov    0x141954,%eax
  103c46:	85 c0                	test   %eax,%eax
  103c48:	74 26                	je     103c70 <acpi_shutdown+0x345>
  103c4a:	0f b7 15 5a 19 14 00 	movzwl 0x14195a,%edx
  103c51:	0f b7 05 5c 19 14 00 	movzwl 0x14195c,%eax
  103c58:	09 d0                	or     %edx,%eax
  103c5a:	0f b7 c0             	movzwl %ax,%eax
  103c5d:	8b 15 54 19 14 00    	mov    0x141954,%edx
  103c63:	83 ec 08             	sub    $0x8,%esp
  103c66:	50                   	push   %eax
  103c67:	52                   	push   %edx
  103c68:	e8 7d ca ff ff       	call   1006ea <outw>
  103c6d:	83 c4 10             	add    $0x10,%esp
  103c70:	90                   	nop
  103c71:	c9                   	leave  
  103c72:	c3                   	ret    

00103c73 <acpi_is_enabled>:
  103c73:	55                   	push   %ebp
  103c74:	89 e5                	mov    %esp,%ebp
  103c76:	0f b6 05 63 19 14 00 	movzbl 0x141963,%eax
  103c7d:	5d                   	pop    %ebp
  103c7e:	c3                   	ret    

00103c7f <acpi_is_initialized>:
  103c7f:	55                   	push   %ebp
  103c80:	89 e5                	mov    %esp,%ebp
  103c82:	0f b7 05 5e 19 14 00 	movzwl 0x14195e,%eax
  103c89:	66 85 c0             	test   %ax,%ax
  103c8c:	0f 95 c0             	setne  %al
  103c8f:	5d                   	pop    %ebp
  103c90:	c3                   	ret    

00103c91 <acpi_get_boot_arch_flags>:
  103c91:	55                   	push   %ebp
  103c92:	89 e5                	mov    %esp,%ebp
  103c94:	0f b7 05 60 19 14 00 	movzwl 0x141960,%eax
  103c9b:	5d                   	pop    %ebp
  103c9c:	c3                   	ret    

00103c9d <pit_get_count>:
  103c9d:	55                   	push   %ebp
  103c9e:	89 e5                	mov    %esp,%ebp
  103ca0:	83 ec 18             	sub    $0x18,%esp
  103ca3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103caa:	c7 05 6c 19 14 00 00 	movl   $0x0,0x14196c
  103cb1:	00 00 00 
  103cb4:	83 ec 08             	sub    $0x8,%esp
  103cb7:	6a 00                	push   $0x0
  103cb9:	6a 43                	push   $0x43
  103cbb:	e8 00 ca ff ff       	call   1006c0 <outb>
  103cc0:	83 c4 10             	add    $0x10,%esp
  103cc3:	83 ec 0c             	sub    $0xc,%esp
  103cc6:	6a 40                	push   $0x40
  103cc8:	e8 da c9 ff ff       	call   1006a7 <inb>
  103ccd:	83 c4 10             	add    $0x10,%esp
  103cd0:	88 45 f3             	mov    %al,-0xd(%ebp)
  103cd3:	83 ec 0c             	sub    $0xc,%esp
  103cd6:	6a 40                	push   $0x40
  103cd8:	e8 ca c9 ff ff       	call   1006a7 <inb>
  103cdd:	83 c4 10             	add    $0x10,%esp
  103ce0:	88 45 f2             	mov    %al,-0xe(%ebp)
  103ce3:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  103ce7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103cea:	80 7d f2 07          	cmpb   $0x7,-0xe(%ebp)
  103cee:	0f 96 c0             	setbe  %al
  103cf1:	0f b6 c0             	movzbl %al,%eax
  103cf4:	09 45 f4             	or     %eax,-0xc(%ebp)
  103cf7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103cfa:	c9                   	leave  
  103cfb:	c3                   	ret    

00103cfc <pit_set_count>:
  103cfc:	55                   	push   %ebp
  103cfd:	89 e5                	mov    %esp,%ebp
  103cff:	83 ec 08             	sub    $0x8,%esp
  103d02:	8b 45 08             	mov    0x8(%ebp),%eax
  103d05:	0f b6 c0             	movzbl %al,%eax
  103d08:	83 ec 08             	sub    $0x8,%esp
  103d0b:	50                   	push   %eax
  103d0c:	6a 40                	push   $0x40
  103d0e:	e8 ad c9 ff ff       	call   1006c0 <outb>
  103d13:	83 c4 10             	add    $0x10,%esp
  103d16:	8b 45 08             	mov    0x8(%ebp),%eax
  103d19:	c1 e8 08             	shr    $0x8,%eax
  103d1c:	0f b6 c0             	movzbl %al,%eax
  103d1f:	83 ec 08             	sub    $0x8,%esp
  103d22:	50                   	push   %eax
  103d23:	6a 40                	push   $0x40
  103d25:	e8 96 c9 ff ff       	call   1006c0 <outb>
  103d2a:	83 c4 10             	add    $0x10,%esp
  103d2d:	90                   	nop
  103d2e:	c9                   	leave  
  103d2f:	c3                   	ret    

00103d30 <pit_init>:
  103d30:	55                   	push   %ebp
  103d31:	89 e5                	mov    %esp,%ebp
  103d33:	83 ec 18             	sub    $0x18,%esp
  103d36:	c7 05 64 19 14 00 00 	movl   $0x0,0x141964
  103d3d:	00 00 00 
  103d40:	c7 05 68 19 14 00 00 	movl   $0x0,0x141968
  103d47:	00 00 00 
  103d4a:	66 c7 45 f6 9b 2e    	movw   $0x2e9b,-0xa(%ebp)
  103d50:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  103d54:	88 45 f5             	mov    %al,-0xb(%ebp)
  103d57:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  103d5b:	66 c1 e8 08          	shr    $0x8,%ax
  103d5f:	88 45 f4             	mov    %al,-0xc(%ebp)
  103d62:	83 ec 08             	sub    $0x8,%esp
  103d65:	6a 37                	push   $0x37
  103d67:	6a 43                	push   $0x43
  103d69:	e8 52 c9 ff ff       	call   1006c0 <outb>
  103d6e:	83 c4 10             	add    $0x10,%esp
  103d71:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
  103d75:	83 ec 08             	sub    $0x8,%esp
  103d78:	50                   	push   %eax
  103d79:	6a 40                	push   $0x40
  103d7b:	e8 40 c9 ff ff       	call   1006c0 <outb>
  103d80:	83 c4 10             	add    $0x10,%esp
  103d83:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
  103d87:	83 ec 08             	sub    $0x8,%esp
  103d8a:	50                   	push   %eax
  103d8b:	6a 40                	push   $0x40
  103d8d:	e8 2e c9 ff ff       	call   1006c0 <outb>
  103d92:	83 c4 10             	add    $0x10,%esp
  103d95:	83 ec 08             	sub    $0x8,%esp
  103d98:	68 e2 3d 10 00       	push   $0x103de2
  103d9d:	6a 20                	push   $0x20
  103d9f:	e8 7d d4 ff ff       	call   101221 <isr_register>
  103da4:	83 c4 10             	add    $0x10,%esp
  103da7:	90                   	nop
  103da8:	c9                   	leave  
  103da9:	c3                   	ret    

00103daa <pit_get_millis>:
  103daa:	55                   	push   %ebp
  103dab:	89 e5                	mov    %esp,%ebp
  103dad:	a1 68 19 14 00       	mov    0x141968,%eax
  103db2:	5d                   	pop    %ebp
  103db3:	c3                   	ret    

00103db4 <pit_get_seconds>:
  103db4:	55                   	push   %ebp
  103db5:	89 e5                	mov    %esp,%ebp
  103db7:	a1 68 19 14 00       	mov    0x141968,%eax
  103dbc:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  103dc1:	f7 e2                	mul    %edx
  103dc3:	89 d0                	mov    %edx,%eax
  103dc5:	c1 e8 06             	shr    $0x6,%eax
  103dc8:	5d                   	pop    %ebp
  103dc9:	c3                   	ret    

00103dca <pit_get_ticks>:
  103dca:	55                   	push   %ebp
  103dcb:	89 e5                	mov    %esp,%ebp
  103dcd:	a1 64 19 14 00       	mov    0x141964,%eax
  103dd2:	5d                   	pop    %ebp
  103dd3:	c3                   	ret    

00103dd4 <pit_set_callback>:
  103dd4:	55                   	push   %ebp
  103dd5:	89 e5                	mov    %esp,%ebp
  103dd7:	8b 45 08             	mov    0x8(%ebp),%eax
  103dda:	a3 6c 19 14 00       	mov    %eax,0x14196c
  103ddf:	90                   	nop
  103de0:	5d                   	pop    %ebp
  103de1:	c3                   	ret    

00103de2 <pit_irq0_handler>:
  103de2:	55                   	push   %ebp
  103de3:	89 e5                	mov    %esp,%ebp
  103de5:	83 ec 08             	sub    $0x8,%esp
  103de8:	a1 64 19 14 00       	mov    0x141964,%eax
  103ded:	83 c0 01             	add    $0x1,%eax
  103df0:	a3 64 19 14 00       	mov    %eax,0x141964
  103df5:	8b 15 64 19 14 00    	mov    0x141964,%edx
  103dfb:	89 d0                	mov    %edx,%eax
  103dfd:	01 c0                	add    %eax,%eax
  103dff:	01 d0                	add    %edx,%eax
  103e01:	a3 68 19 14 00       	mov    %eax,0x141968
  103e06:	83 ec 08             	sub    $0x8,%esp
  103e09:	6a 20                	push   $0x20
  103e0b:	6a 20                	push   $0x20
  103e0d:	e8 ae c8 ff ff       	call   1006c0 <outb>
  103e12:	83 c4 10             	add    $0x10,%esp
  103e15:	a1 6c 19 14 00       	mov    0x14196c,%eax
  103e1a:	85 c0                	test   %eax,%eax
  103e1c:	74 1b                	je     103e39 <pit_irq0_handler+0x57>
  103e1e:	a1 6c 19 14 00       	mov    0x14196c,%eax
  103e23:	8b 0d 68 19 14 00    	mov    0x141968,%ecx
  103e29:	8b 15 64 19 14 00    	mov    0x141964,%edx
  103e2f:	83 ec 08             	sub    $0x8,%esp
  103e32:	51                   	push   %ecx
  103e33:	52                   	push   %edx
  103e34:	ff d0                	call   *%eax
  103e36:	83 c4 10             	add    $0x10,%esp
  103e39:	90                   	nop
  103e3a:	c9                   	leave  
  103e3b:	c3                   	ret    

00103e3c <keyboard_init>:
  103e3c:	55                   	push   %ebp
  103e3d:	89 e5                	mov    %esp,%ebp
  103e3f:	83 ec 28             	sub    $0x28,%esp
  103e42:	8b 45 08             	mov    0x8(%ebp),%eax
  103e45:	88 45 e4             	mov    %al,-0x1c(%ebp)
  103e48:	c6 05 80 19 14 00 00 	movb   $0x0,0x141980
  103e4f:	c6 05 81 19 14 00 00 	movb   $0x0,0x141981
  103e56:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  103e5a:	a2 82 19 14 00       	mov    %al,0x141982
  103e5f:	83 ec 04             	sub    $0x4,%esp
  103e62:	68 00 04 00 00       	push   $0x400
  103e67:	6a 00                	push   $0x0
  103e69:	68 a0 19 14 00       	push   $0x1419a0
  103e6e:	e8 d3 59 00 00       	call   109846 <memset>
  103e73:	83 c4 10             	add    $0x10,%esp
  103e76:	c6 05 a0 1d 14 00 00 	movb   $0x0,0x141da0
  103e7d:	83 ec 08             	sub    $0x8,%esp
  103e80:	68 7e 3f 10 00       	push   $0x103f7e
  103e85:	6a 21                	push   $0x21
  103e87:	e8 95 d3 ff ff       	call   101221 <isr_register>
  103e8c:	83 c4 10             	add    $0x10,%esp
  103e8f:	83 ec 0c             	sub    $0xc,%esp
  103e92:	68 80 22 14 00       	push   $0x142280
  103e97:	e8 cc 4c 00 00       	call   108b68 <__redirect_printf__>
  103e9c:	83 c4 10             	add    $0x10,%esp
  103e9f:	83 ec 0c             	sub    $0xc,%esp
  103ea2:	68 48 a4 10 00       	push   $0x10a448
  103ea7:	e8 a9 55 00 00       	call   109455 <printf>
  103eac:	83 c4 10             	add    $0x10,%esp
  103eaf:	83 ec 0c             	sub    $0xc,%esp
  103eb2:	6a 00                	push   $0x0
  103eb4:	e8 af 4c 00 00       	call   108b68 <__redirect_printf__>
  103eb9:	83 c4 10             	add    $0x10,%esp
  103ebc:	83 ec 0c             	sub    $0xc,%esp
  103ebf:	8d 45 f2             	lea    -0xe(%ebp),%eax
  103ec2:	50                   	push   %eax
  103ec3:	e8 d7 eb ff ff       	call   102a9f <cmos_read_rtc>
  103ec8:	83 c4 10             	add    $0x10,%esp
  103ecb:	83 ec 04             	sub    $0x4,%esp
  103ece:	68 6c 26 14 00       	push   $0x14266c
  103ed3:	83 ec 08             	sub    $0x8,%esp
  103ed6:	89 e0                	mov    %esp,%eax
  103ed8:	8b 55 f2             	mov    -0xe(%ebp),%edx
  103edb:	89 10                	mov    %edx,(%eax)
  103edd:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  103ee1:	66 89 50 04          	mov    %dx,0x4(%eax)
  103ee5:	e8 da 10 00 00       	call   104fc4 <cmos_datetime_to_str>
  103eea:	83 c4 10             	add    $0x10,%esp
  103eed:	83 ec 0c             	sub    $0xc,%esp
  103ef0:	68 80 1e 14 00       	push   $0x141e80
  103ef5:	e8 6e 4c 00 00       	call   108b68 <__redirect_printf__>
  103efa:	83 c4 10             	add    $0x10,%esp
  103efd:	83 ec 04             	sub    $0x4,%esp
  103f00:	68 80 22 14 00       	push   $0x142280
  103f05:	68 6c 26 14 00       	push   $0x14266c
  103f0a:	68 5e a4 10 00       	push   $0x10a45e
  103f0f:	e8 41 55 00 00       	call   109455 <printf>
  103f14:	83 c4 10             	add    $0x10,%esp
  103f17:	83 ec 0c             	sub    $0xc,%esp
  103f1a:	6a 00                	push   $0x0
  103f1c:	e8 47 4c 00 00       	call   108b68 <__redirect_printf__>
  103f21:	83 c4 10             	add    $0x10,%esp
  103f24:	83 ec 08             	sub    $0x8,%esp
  103f27:	68 80 1e 14 00       	push   $0x141e80
  103f2c:	68 f8 03 00 00       	push   $0x3f8
  103f31:	e8 83 e6 ff ff       	call   1025b9 <com_write>
  103f36:	83 c4 10             	add    $0x10,%esp
  103f39:	83 ec 04             	sub    $0x4,%esp
  103f3c:	68 00 04 00 00       	push   $0x400
  103f41:	6a 00                	push   $0x0
  103f43:	68 80 1e 14 00       	push   $0x141e80
  103f48:	e8 f9 58 00 00       	call   109846 <memset>
  103f4d:	83 c4 10             	add    $0x10,%esp
  103f50:	83 ec 04             	sub    $0x4,%esp
  103f53:	68 ec 03 00 00       	push   $0x3ec
  103f58:	6a 00                	push   $0x0
  103f5a:	68 80 22 14 00       	push   $0x142280
  103f5f:	e8 e2 58 00 00       	call   109846 <memset>
  103f64:	83 c4 10             	add    $0x10,%esp
  103f67:	83 ec 04             	sub    $0x4,%esp
  103f6a:	6a 14                	push   $0x14
  103f6c:	6a 00                	push   $0x0
  103f6e:	68 6c 26 14 00       	push   $0x14266c
  103f73:	e8 ce 58 00 00       	call   109846 <memset>
  103f78:	83 c4 10             	add    $0x10,%esp
  103f7b:	90                   	nop
  103f7c:	c9                   	leave  
  103f7d:	c3                   	ret    

00103f7e <keyboard_irq_handler>:
  103f7e:	55                   	push   %ebp
  103f7f:	89 e5                	mov    %esp,%ebp
  103f81:	83 ec 18             	sub    $0x18,%esp
  103f84:	0f b6 05 82 19 14 00 	movzbl 0x141982,%eax
  103f8b:	0f b6 c0             	movzbl %al,%eax
  103f8e:	83 ec 0c             	sub    $0xc,%esp
  103f91:	50                   	push   %eax
  103f92:	e8 10 c7 ff ff       	call   1006a7 <inb>
  103f97:	83 c4 10             	add    $0x10,%esp
  103f9a:	88 45 f6             	mov    %al,-0xa(%ebp)
  103f9d:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
  103fa1:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  103fa5:	3d ba 00 00 00       	cmp    $0xba,%eax
  103faa:	0f 87 63 06 00 00    	ja     104613 <keyboard_irq_handler+0x695>
  103fb0:	8b 04 85 94 a4 10 00 	mov    0x10a494(,%eax,4),%eax
  103fb7:	ff e0                	jmp    *%eax
  103fb9:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  103fc0:	3c 01                	cmp    $0x1,%al
  103fc2:	75 07                	jne    103fcb <keyboard_irq_handler+0x4d>
  103fc4:	b8 21 00 00 00       	mov    $0x21,%eax
  103fc9:	eb 05                	jmp    103fd0 <keyboard_irq_handler+0x52>
  103fcb:	b8 31 00 00 00       	mov    $0x31,%eax
  103fd0:	88 45 f7             	mov    %al,-0x9(%ebp)
  103fd3:	e9 2f 07 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  103fd8:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  103fdf:	3c 01                	cmp    $0x1,%al
  103fe1:	75 07                	jne    103fea <keyboard_irq_handler+0x6c>
  103fe3:	b8 22 00 00 00       	mov    $0x22,%eax
  103fe8:	eb 05                	jmp    103fef <keyboard_irq_handler+0x71>
  103fea:	b8 32 00 00 00       	mov    $0x32,%eax
  103fef:	88 45 f7             	mov    %al,-0x9(%ebp)
  103ff2:	e9 10 07 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  103ff7:	c6 45 f7 33          	movb   $0x33,-0x9(%ebp)
  103ffb:	e9 07 07 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104000:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104007:	3c 01                	cmp    $0x1,%al
  104009:	75 07                	jne    104012 <keyboard_irq_handler+0x94>
  10400b:	b8 24 00 00 00       	mov    $0x24,%eax
  104010:	eb 05                	jmp    104017 <keyboard_irq_handler+0x99>
  104012:	b8 34 00 00 00       	mov    $0x34,%eax
  104017:	88 45 f7             	mov    %al,-0x9(%ebp)
  10401a:	e9 e8 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10401f:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104026:	3c 01                	cmp    $0x1,%al
  104028:	75 07                	jne    104031 <keyboard_irq_handler+0xb3>
  10402a:	b8 25 00 00 00       	mov    $0x25,%eax
  10402f:	eb 05                	jmp    104036 <keyboard_irq_handler+0xb8>
  104031:	b8 35 00 00 00       	mov    $0x35,%eax
  104036:	88 45 f7             	mov    %al,-0x9(%ebp)
  104039:	e9 c9 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10403e:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104045:	3c 01                	cmp    $0x1,%al
  104047:	75 07                	jne    104050 <keyboard_irq_handler+0xd2>
  104049:	b8 26 00 00 00       	mov    $0x26,%eax
  10404e:	eb 05                	jmp    104055 <keyboard_irq_handler+0xd7>
  104050:	b8 36 00 00 00       	mov    $0x36,%eax
  104055:	88 45 f7             	mov    %al,-0x9(%ebp)
  104058:	e9 aa 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10405d:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104064:	3c 01                	cmp    $0x1,%al
  104066:	75 07                	jne    10406f <keyboard_irq_handler+0xf1>
  104068:	b8 2f 00 00 00       	mov    $0x2f,%eax
  10406d:	eb 05                	jmp    104074 <keyboard_irq_handler+0xf6>
  10406f:	b8 37 00 00 00       	mov    $0x37,%eax
  104074:	88 45 f7             	mov    %al,-0x9(%ebp)
  104077:	e9 8b 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10407c:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104083:	3c 01                	cmp    $0x1,%al
  104085:	75 07                	jne    10408e <keyboard_irq_handler+0x110>
  104087:	b8 28 00 00 00       	mov    $0x28,%eax
  10408c:	eb 05                	jmp    104093 <keyboard_irq_handler+0x115>
  10408e:	b8 38 00 00 00       	mov    $0x38,%eax
  104093:	88 45 f7             	mov    %al,-0x9(%ebp)
  104096:	e9 6c 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10409b:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  1040a2:	3c 01                	cmp    $0x1,%al
  1040a4:	75 07                	jne    1040ad <keyboard_irq_handler+0x12f>
  1040a6:	b8 29 00 00 00       	mov    $0x29,%eax
  1040ab:	eb 05                	jmp    1040b2 <keyboard_irq_handler+0x134>
  1040ad:	b8 39 00 00 00       	mov    $0x39,%eax
  1040b2:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040b5:	e9 4d 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1040ba:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  1040c1:	3c 01                	cmp    $0x1,%al
  1040c3:	75 07                	jne    1040cc <keyboard_irq_handler+0x14e>
  1040c5:	b8 3d 00 00 00       	mov    $0x3d,%eax
  1040ca:	eb 05                	jmp    1040d1 <keyboard_irq_handler+0x153>
  1040cc:	b8 30 00 00 00       	mov    $0x30,%eax
  1040d1:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040d4:	e9 2e 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1040d9:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1040e0:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1040e7:	38 c2                	cmp    %al,%dl
  1040e9:	75 07                	jne    1040f2 <keyboard_irq_handler+0x174>
  1040eb:	b8 71 00 00 00       	mov    $0x71,%eax
  1040f0:	eb 05                	jmp    1040f7 <keyboard_irq_handler+0x179>
  1040f2:	b8 51 00 00 00       	mov    $0x51,%eax
  1040f7:	88 45 f7             	mov    %al,-0x9(%ebp)
  1040fa:	e9 08 06 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1040ff:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104106:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10410d:	38 c2                	cmp    %al,%dl
  10410f:	75 07                	jne    104118 <keyboard_irq_handler+0x19a>
  104111:	b8 77 00 00 00       	mov    $0x77,%eax
  104116:	eb 05                	jmp    10411d <keyboard_irq_handler+0x19f>
  104118:	b8 57 00 00 00       	mov    $0x57,%eax
  10411d:	88 45 f7             	mov    %al,-0x9(%ebp)
  104120:	e9 e2 05 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104125:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  10412c:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104133:	38 c2                	cmp    %al,%dl
  104135:	75 07                	jne    10413e <keyboard_irq_handler+0x1c0>
  104137:	b8 65 00 00 00       	mov    $0x65,%eax
  10413c:	eb 05                	jmp    104143 <keyboard_irq_handler+0x1c5>
  10413e:	b8 45 00 00 00       	mov    $0x45,%eax
  104143:	88 45 f7             	mov    %al,-0x9(%ebp)
  104146:	e9 bc 05 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10414b:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104152:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104159:	38 c2                	cmp    %al,%dl
  10415b:	75 07                	jne    104164 <keyboard_irq_handler+0x1e6>
  10415d:	b8 72 00 00 00       	mov    $0x72,%eax
  104162:	eb 05                	jmp    104169 <keyboard_irq_handler+0x1eb>
  104164:	b8 52 00 00 00       	mov    $0x52,%eax
  104169:	88 45 f7             	mov    %al,-0x9(%ebp)
  10416c:	e9 96 05 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104171:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104178:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10417f:	38 c2                	cmp    %al,%dl
  104181:	75 07                	jne    10418a <keyboard_irq_handler+0x20c>
  104183:	b8 74 00 00 00       	mov    $0x74,%eax
  104188:	eb 05                	jmp    10418f <keyboard_irq_handler+0x211>
  10418a:	b8 54 00 00 00       	mov    $0x54,%eax
  10418f:	88 45 f7             	mov    %al,-0x9(%ebp)
  104192:	e9 70 05 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104197:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  10419e:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1041a5:	38 c2                	cmp    %al,%dl
  1041a7:	75 07                	jne    1041b0 <keyboard_irq_handler+0x232>
  1041a9:	b8 79 00 00 00       	mov    $0x79,%eax
  1041ae:	eb 05                	jmp    1041b5 <keyboard_irq_handler+0x237>
  1041b0:	b8 59 00 00 00       	mov    $0x59,%eax
  1041b5:	88 45 f7             	mov    %al,-0x9(%ebp)
  1041b8:	e9 4a 05 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1041bd:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1041c4:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1041cb:	38 c2                	cmp    %al,%dl
  1041cd:	75 07                	jne    1041d6 <keyboard_irq_handler+0x258>
  1041cf:	b8 75 00 00 00       	mov    $0x75,%eax
  1041d4:	eb 05                	jmp    1041db <keyboard_irq_handler+0x25d>
  1041d6:	b8 55 00 00 00       	mov    $0x55,%eax
  1041db:	88 45 f7             	mov    %al,-0x9(%ebp)
  1041de:	e9 24 05 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1041e3:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1041ea:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1041f1:	38 c2                	cmp    %al,%dl
  1041f3:	75 07                	jne    1041fc <keyboard_irq_handler+0x27e>
  1041f5:	b8 69 00 00 00       	mov    $0x69,%eax
  1041fa:	eb 05                	jmp    104201 <keyboard_irq_handler+0x283>
  1041fc:	b8 49 00 00 00       	mov    $0x49,%eax
  104201:	88 45 f7             	mov    %al,-0x9(%ebp)
  104204:	e9 fe 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104209:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104210:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104217:	38 c2                	cmp    %al,%dl
  104219:	75 07                	jne    104222 <keyboard_irq_handler+0x2a4>
  10421b:	b8 6f 00 00 00       	mov    $0x6f,%eax
  104220:	eb 05                	jmp    104227 <keyboard_irq_handler+0x2a9>
  104222:	b8 4f 00 00 00       	mov    $0x4f,%eax
  104227:	88 45 f7             	mov    %al,-0x9(%ebp)
  10422a:	e9 d8 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10422f:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104236:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10423d:	38 c2                	cmp    %al,%dl
  10423f:	75 07                	jne    104248 <keyboard_irq_handler+0x2ca>
  104241:	b8 70 00 00 00       	mov    $0x70,%eax
  104246:	eb 05                	jmp    10424d <keyboard_irq_handler+0x2cf>
  104248:	b8 50 00 00 00       	mov    $0x50,%eax
  10424d:	88 45 f7             	mov    %al,-0x9(%ebp)
  104250:	e9 b2 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104255:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  10425c:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104263:	38 c2                	cmp    %al,%dl
  104265:	75 07                	jne    10426e <keyboard_irq_handler+0x2f0>
  104267:	b8 65 00 00 00       	mov    $0x65,%eax
  10426c:	eb 05                	jmp    104273 <keyboard_irq_handler+0x2f5>
  10426e:	b8 45 00 00 00       	mov    $0x45,%eax
  104273:	88 45 f7             	mov    %al,-0x9(%ebp)
  104276:	e9 8c 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10427b:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104282:	84 c0                	test   %al,%al
  104284:	74 07                	je     10428d <keyboard_irq_handler+0x30f>
  104286:	b8 2a 00 00 00       	mov    $0x2a,%eax
  10428b:	eb 05                	jmp    104292 <keyboard_irq_handler+0x314>
  10428d:	b8 2b 00 00 00       	mov    $0x2b,%eax
  104292:	88 45 f7             	mov    %al,-0x9(%ebp)
  104295:	e9 6d 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10429a:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1042a1:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1042a8:	38 c2                	cmp    %al,%dl
  1042aa:	75 07                	jne    1042b3 <keyboard_irq_handler+0x335>
  1042ac:	b8 61 00 00 00       	mov    $0x61,%eax
  1042b1:	eb 05                	jmp    1042b8 <keyboard_irq_handler+0x33a>
  1042b3:	b8 41 00 00 00       	mov    $0x41,%eax
  1042b8:	88 45 f7             	mov    %al,-0x9(%ebp)
  1042bb:	e9 47 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1042c0:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1042c7:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1042ce:	38 c2                	cmp    %al,%dl
  1042d0:	75 07                	jne    1042d9 <keyboard_irq_handler+0x35b>
  1042d2:	b8 73 00 00 00       	mov    $0x73,%eax
  1042d7:	eb 05                	jmp    1042de <keyboard_irq_handler+0x360>
  1042d9:	b8 53 00 00 00       	mov    $0x53,%eax
  1042de:	88 45 f7             	mov    %al,-0x9(%ebp)
  1042e1:	e9 21 04 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1042e6:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1042ed:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1042f4:	38 c2                	cmp    %al,%dl
  1042f6:	75 07                	jne    1042ff <keyboard_irq_handler+0x381>
  1042f8:	b8 64 00 00 00       	mov    $0x64,%eax
  1042fd:	eb 05                	jmp    104304 <keyboard_irq_handler+0x386>
  1042ff:	b8 44 00 00 00       	mov    $0x44,%eax
  104304:	88 45 f7             	mov    %al,-0x9(%ebp)
  104307:	e9 fb 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10430c:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104313:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10431a:	38 c2                	cmp    %al,%dl
  10431c:	75 07                	jne    104325 <keyboard_irq_handler+0x3a7>
  10431e:	b8 66 00 00 00       	mov    $0x66,%eax
  104323:	eb 05                	jmp    10432a <keyboard_irq_handler+0x3ac>
  104325:	b8 46 00 00 00       	mov    $0x46,%eax
  10432a:	88 45 f7             	mov    %al,-0x9(%ebp)
  10432d:	e9 d5 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104332:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104339:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104340:	38 c2                	cmp    %al,%dl
  104342:	75 07                	jne    10434b <keyboard_irq_handler+0x3cd>
  104344:	b8 67 00 00 00       	mov    $0x67,%eax
  104349:	eb 05                	jmp    104350 <keyboard_irq_handler+0x3d2>
  10434b:	b8 47 00 00 00       	mov    $0x47,%eax
  104350:	88 45 f7             	mov    %al,-0x9(%ebp)
  104353:	e9 af 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104358:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  10435f:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104366:	38 c2                	cmp    %al,%dl
  104368:	75 07                	jne    104371 <keyboard_irq_handler+0x3f3>
  10436a:	b8 68 00 00 00       	mov    $0x68,%eax
  10436f:	eb 05                	jmp    104376 <keyboard_irq_handler+0x3f8>
  104371:	b8 48 00 00 00       	mov    $0x48,%eax
  104376:	88 45 f7             	mov    %al,-0x9(%ebp)
  104379:	e9 89 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10437e:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104385:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10438c:	38 c2                	cmp    %al,%dl
  10438e:	75 07                	jne    104397 <keyboard_irq_handler+0x419>
  104390:	b8 6a 00 00 00       	mov    $0x6a,%eax
  104395:	eb 05                	jmp    10439c <keyboard_irq_handler+0x41e>
  104397:	b8 4a 00 00 00       	mov    $0x4a,%eax
  10439c:	88 45 f7             	mov    %al,-0x9(%ebp)
  10439f:	e9 63 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1043a4:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1043ab:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1043b2:	38 c2                	cmp    %al,%dl
  1043b4:	75 07                	jne    1043bd <keyboard_irq_handler+0x43f>
  1043b6:	b8 6b 00 00 00       	mov    $0x6b,%eax
  1043bb:	eb 05                	jmp    1043c2 <keyboard_irq_handler+0x444>
  1043bd:	b8 4b 00 00 00       	mov    $0x4b,%eax
  1043c2:	88 45 f7             	mov    %al,-0x9(%ebp)
  1043c5:	e9 3d 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1043ca:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1043d1:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1043d8:	38 c2                	cmp    %al,%dl
  1043da:	75 07                	jne    1043e3 <keyboard_irq_handler+0x465>
  1043dc:	b8 6c 00 00 00       	mov    $0x6c,%eax
  1043e1:	eb 05                	jmp    1043e8 <keyboard_irq_handler+0x46a>
  1043e3:	b8 4c 00 00 00       	mov    $0x4c,%eax
  1043e8:	88 45 f7             	mov    %al,-0x9(%ebp)
  1043eb:	e9 17 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1043f0:	c6 45 f7 5c          	movb   $0x5c,-0x9(%ebp)
  1043f4:	e9 0e 03 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1043f9:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104400:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104407:	38 c2                	cmp    %al,%dl
  104409:	75 07                	jne    104412 <keyboard_irq_handler+0x494>
  10440b:	b8 7a 00 00 00       	mov    $0x7a,%eax
  104410:	eb 05                	jmp    104417 <keyboard_irq_handler+0x499>
  104412:	b8 5a 00 00 00       	mov    $0x5a,%eax
  104417:	88 45 f7             	mov    %al,-0x9(%ebp)
  10441a:	e9 e8 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10441f:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104426:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10442d:	38 c2                	cmp    %al,%dl
  10442f:	75 07                	jne    104438 <keyboard_irq_handler+0x4ba>
  104431:	b8 78 00 00 00       	mov    $0x78,%eax
  104436:	eb 05                	jmp    10443d <keyboard_irq_handler+0x4bf>
  104438:	b8 58 00 00 00       	mov    $0x58,%eax
  10443d:	88 45 f7             	mov    %al,-0x9(%ebp)
  104440:	e9 c2 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104445:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  10444c:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104453:	38 c2                	cmp    %al,%dl
  104455:	75 07                	jne    10445e <keyboard_irq_handler+0x4e0>
  104457:	b8 63 00 00 00       	mov    $0x63,%eax
  10445c:	eb 05                	jmp    104463 <keyboard_irq_handler+0x4e5>
  10445e:	b8 43 00 00 00       	mov    $0x43,%eax
  104463:	88 45 f7             	mov    %al,-0x9(%ebp)
  104466:	e9 9c 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10446b:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104472:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  104479:	38 c2                	cmp    %al,%dl
  10447b:	75 07                	jne    104484 <keyboard_irq_handler+0x506>
  10447d:	b8 76 00 00 00       	mov    $0x76,%eax
  104482:	eb 05                	jmp    104489 <keyboard_irq_handler+0x50b>
  104484:	b8 56 00 00 00       	mov    $0x56,%eax
  104489:	88 45 f7             	mov    %al,-0x9(%ebp)
  10448c:	e9 76 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104491:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  104498:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  10449f:	38 c2                	cmp    %al,%dl
  1044a1:	75 07                	jne    1044aa <keyboard_irq_handler+0x52c>
  1044a3:	b8 62 00 00 00       	mov    $0x62,%eax
  1044a8:	eb 05                	jmp    1044af <keyboard_irq_handler+0x531>
  1044aa:	b8 42 00 00 00       	mov    $0x42,%eax
  1044af:	88 45 f7             	mov    %al,-0x9(%ebp)
  1044b2:	e9 50 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1044b7:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1044be:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1044c5:	38 c2                	cmp    %al,%dl
  1044c7:	75 07                	jne    1044d0 <keyboard_irq_handler+0x552>
  1044c9:	b8 6e 00 00 00       	mov    $0x6e,%eax
  1044ce:	eb 05                	jmp    1044d5 <keyboard_irq_handler+0x557>
  1044d0:	b8 4e 00 00 00       	mov    $0x4e,%eax
  1044d5:	88 45 f7             	mov    %al,-0x9(%ebp)
  1044d8:	e9 2a 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1044dd:	0f b6 15 81 19 14 00 	movzbl 0x141981,%edx
  1044e4:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1044eb:	38 c2                	cmp    %al,%dl
  1044ed:	75 07                	jne    1044f6 <keyboard_irq_handler+0x578>
  1044ef:	b8 6d 00 00 00       	mov    $0x6d,%eax
  1044f4:	eb 05                	jmp    1044fb <keyboard_irq_handler+0x57d>
  1044f6:	b8 4d 00 00 00       	mov    $0x4d,%eax
  1044fb:	88 45 f7             	mov    %al,-0x9(%ebp)
  1044fe:	e9 04 02 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104503:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  10450a:	84 c0                	test   %al,%al
  10450c:	74 07                	je     104515 <keyboard_irq_handler+0x597>
  10450e:	b8 3b 00 00 00       	mov    $0x3b,%eax
  104513:	eb 05                	jmp    10451a <keyboard_irq_handler+0x59c>
  104515:	b8 2e 00 00 00       	mov    $0x2e,%eax
  10451a:	88 45 f7             	mov    %al,-0x9(%ebp)
  10451d:	e9 e5 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104522:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104529:	84 c0                	test   %al,%al
  10452b:	74 07                	je     104534 <keyboard_irq_handler+0x5b6>
  10452d:	b8 3a 00 00 00       	mov    $0x3a,%eax
  104532:	eb 05                	jmp    104539 <keyboard_irq_handler+0x5bb>
  104534:	b8 2e 00 00 00       	mov    $0x2e,%eax
  104539:	88 45 f7             	mov    %al,-0x9(%ebp)
  10453c:	e9 c6 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104541:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104548:	84 c0                	test   %al,%al
  10454a:	74 07                	je     104553 <keyboard_irq_handler+0x5d5>
  10454c:	b8 5f 00 00 00       	mov    $0x5f,%eax
  104551:	eb 05                	jmp    104558 <keyboard_irq_handler+0x5da>
  104553:	b8 2d 00 00 00       	mov    $0x2d,%eax
  104558:	88 45 f7             	mov    %al,-0x9(%ebp)
  10455b:	e9 a7 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104560:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104567:	84 c0                	test   %al,%al
  104569:	74 07                	je     104572 <keyboard_irq_handler+0x5f4>
  10456b:	b8 2b 00 00 00       	mov    $0x2b,%eax
  104570:	eb 05                	jmp    104577 <keyboard_irq_handler+0x5f9>
  104572:	b8 2a 00 00 00       	mov    $0x2a,%eax
  104577:	88 45 f7             	mov    %al,-0x9(%ebp)
  10457a:	e9 88 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10457f:	c6 45 f7 0a          	movb   $0xa,-0x9(%ebp)
  104583:	e9 7f 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104588:	c6 45 f7 08          	movb   $0x8,-0x9(%ebp)
  10458c:	e9 76 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  104591:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
  104595:	e9 6d 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  10459a:	e8 d3 bf ff ff       	call   100572 <tty_row_up>
  10459f:	e9 63 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045a4:	e8 ed bf ff ff       	call   100596 <tty_row_down>
  1045a9:	e9 59 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045ae:	e8 0c c0 ff ff       	call   1005bf <tty_column_right>
  1045b3:	e9 4f 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045b8:	e8 2b c0 ff ff       	call   1005e8 <tty_column_left>
  1045bd:	e9 45 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045c2:	e8 45 c0 ff ff       	call   10060c <tty_reset_column>
  1045c7:	e9 3b 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045cc:	c6 05 81 19 14 00 01 	movb   $0x1,0x141981
  1045d3:	e9 2f 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045d8:	c6 05 81 19 14 00 00 	movb   $0x0,0x141981
  1045df:	e9 23 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045e4:	0f b6 05 80 19 14 00 	movzbl 0x141980,%eax
  1045eb:	3c 01                	cmp    $0x1,%al
  1045ed:	0f 95 c0             	setne  %al
  1045f0:	a2 80 19 14 00       	mov    %al,0x141980
  1045f5:	e9 0d 01 00 00       	jmp    104707 <keyboard_irq_handler+0x789>
  1045fa:	0f b6 05 81 19 14 00 	movzbl 0x141981,%eax
  104601:	84 c0                	test   %al,%al
  104603:	0f 84 fd 00 00 00    	je     104706 <keyboard_irq_handler+0x788>
  104609:	e8 1d f3 ff ff       	call   10392b <acpi_shutdown>
  10460e:	e9 f3 00 00 00       	jmp    104706 <keyboard_irq_handler+0x788>
  104613:	83 ec 0c             	sub    $0xc,%esp
  104616:	68 80 22 14 00       	push   $0x142280
  10461b:	e8 48 45 00 00       	call   108b68 <__redirect_printf__>
  104620:	83 c4 10             	add    $0x10,%esp
  104623:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  104627:	83 ec 08             	sub    $0x8,%esp
  10462a:	50                   	push   %eax
  10462b:	68 64 a4 10 00       	push   $0x10a464
  104630:	e8 20 4e 00 00       	call   109455 <printf>
  104635:	83 c4 10             	add    $0x10,%esp
  104638:	83 ec 0c             	sub    $0xc,%esp
  10463b:	6a 00                	push   $0x0
  10463d:	e8 26 45 00 00       	call   108b68 <__redirect_printf__>
  104642:	83 c4 10             	add    $0x10,%esp
  104645:	83 ec 0c             	sub    $0xc,%esp
  104648:	8d 45 f0             	lea    -0x10(%ebp),%eax
  10464b:	50                   	push   %eax
  10464c:	e8 4e e4 ff ff       	call   102a9f <cmos_read_rtc>
  104651:	83 c4 10             	add    $0x10,%esp
  104654:	83 ec 04             	sub    $0x4,%esp
  104657:	68 6c 26 14 00       	push   $0x14266c
  10465c:	83 ec 08             	sub    $0x8,%esp
  10465f:	89 e0                	mov    %esp,%eax
  104661:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104664:	89 10                	mov    %edx,(%eax)
  104666:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
  10466a:	66 89 50 04          	mov    %dx,0x4(%eax)
  10466e:	e8 51 09 00 00       	call   104fc4 <cmos_datetime_to_str>
  104673:	83 c4 10             	add    $0x10,%esp
  104676:	83 ec 0c             	sub    $0xc,%esp
  104679:	68 80 1e 14 00       	push   $0x141e80
  10467e:	e8 e5 44 00 00       	call   108b68 <__redirect_printf__>
  104683:	83 c4 10             	add    $0x10,%esp
  104686:	83 ec 04             	sub    $0x4,%esp
  104689:	68 80 22 14 00       	push   $0x142280
  10468e:	68 6c 26 14 00       	push   $0x14266c
  104693:	68 5e a4 10 00       	push   $0x10a45e
  104698:	e8 b8 4d 00 00       	call   109455 <printf>
  10469d:	83 c4 10             	add    $0x10,%esp
  1046a0:	83 ec 0c             	sub    $0xc,%esp
  1046a3:	6a 00                	push   $0x0
  1046a5:	e8 be 44 00 00       	call   108b68 <__redirect_printf__>
  1046aa:	83 c4 10             	add    $0x10,%esp
  1046ad:	83 ec 08             	sub    $0x8,%esp
  1046b0:	68 80 1e 14 00       	push   $0x141e80
  1046b5:	68 f8 03 00 00       	push   $0x3f8
  1046ba:	e8 fa de ff ff       	call   1025b9 <com_write>
  1046bf:	83 c4 10             	add    $0x10,%esp
  1046c2:	83 ec 04             	sub    $0x4,%esp
  1046c5:	68 00 04 00 00       	push   $0x400
  1046ca:	6a 00                	push   $0x0
  1046cc:	68 80 1e 14 00       	push   $0x141e80
  1046d1:	e8 70 51 00 00       	call   109846 <memset>
  1046d6:	83 c4 10             	add    $0x10,%esp
  1046d9:	83 ec 04             	sub    $0x4,%esp
  1046dc:	68 ec 03 00 00       	push   $0x3ec
  1046e1:	6a 00                	push   $0x0
  1046e3:	68 80 22 14 00       	push   $0x142280
  1046e8:	e8 59 51 00 00       	call   109846 <memset>
  1046ed:	83 c4 10             	add    $0x10,%esp
  1046f0:	83 ec 04             	sub    $0x4,%esp
  1046f3:	6a 14                	push   $0x14
  1046f5:	6a 00                	push   $0x0
  1046f7:	68 6c 26 14 00       	push   $0x14266c
  1046fc:	e8 45 51 00 00       	call   109846 <memset>
  104701:	83 c4 10             	add    $0x10,%esp
  104704:	eb 01                	jmp    104707 <keyboard_irq_handler+0x789>
  104706:	90                   	nop
  104707:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10470b:	74 2f                	je     10473c <keyboard_irq_handler+0x7be>
  10470d:	0f b6 05 a0 1d 14 00 	movzbl 0x141da0,%eax
  104714:	0f b6 c0             	movzbl %al,%eax
  104717:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
  10471b:	88 90 a0 19 14 00    	mov    %dl,0x1419a0(%eax)
  104721:	0f b6 05 a0 1d 14 00 	movzbl 0x141da0,%eax
  104728:	83 c0 01             	add    $0x1,%eax
  10472b:	a2 a0 1d 14 00       	mov    %al,0x141da0
  104730:	0f b6 05 a0 1d 14 00 	movzbl 0x141da0,%eax
  104737:	a2 a0 1d 14 00       	mov    %al,0x141da0
  10473c:	83 ec 08             	sub    $0x8,%esp
  10473f:	6a 20                	push   $0x20
  104741:	6a 20                	push   $0x20
  104743:	e8 78 bf ff ff       	call   1006c0 <outb>
  104748:	83 c4 10             	add    $0x10,%esp
  10474b:	90                   	nop
  10474c:	c9                   	leave  
  10474d:	c3                   	ret    

0010474e <keyboard_read>:
  10474e:	55                   	push   %ebp
  10474f:	89 e5                	mov    %esp,%ebp
  104751:	83 ec 18             	sub    $0x18,%esp
  104754:	0f b6 05 a0 1d 14 00 	movzbl 0x141da0,%eax
  10475b:	0f b6 c0             	movzbl %al,%eax
  10475e:	8b 55 0c             	mov    0xc(%ebp),%edx
  104761:	39 c2                	cmp    %eax,%edx
  104763:	0f 46 c2             	cmovbe %edx,%eax
  104766:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104769:	83 ec 04             	sub    $0x4,%esp
  10476c:	ff 75 f4             	push   -0xc(%ebp)
  10476f:	68 a0 19 14 00       	push   $0x1419a0
  104774:	ff 75 08             	push   0x8(%ebp)
  104777:	e8 11 50 00 00       	call   10978d <memcpy>
  10477c:	83 c4 10             	add    $0x10,%esp
  10477f:	b8 00 04 00 00       	mov    $0x400,%eax
  104784:	2b 45 f4             	sub    -0xc(%ebp),%eax
  104787:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10478a:	81 c2 a0 19 14 00    	add    $0x1419a0,%edx
  104790:	83 ec 04             	sub    $0x4,%esp
  104793:	50                   	push   %eax
  104794:	52                   	push   %edx
  104795:	68 a0 19 14 00       	push   $0x1419a0
  10479a:	e8 2f 50 00 00       	call   1097ce <memmove>
  10479f:	83 c4 10             	add    $0x10,%esp
  1047a2:	b8 00 04 00 00       	mov    $0x400,%eax
  1047a7:	2b 45 f4             	sub    -0xc(%ebp),%eax
  1047aa:	05 a0 19 14 00       	add    $0x1419a0,%eax
  1047af:	83 ec 04             	sub    $0x4,%esp
  1047b2:	ff 75 f4             	push   -0xc(%ebp)
  1047b5:	6a 00                	push   $0x0
  1047b7:	50                   	push   %eax
  1047b8:	e8 89 50 00 00       	call   109846 <memset>
  1047bd:	83 c4 10             	add    $0x10,%esp
  1047c0:	0f b6 05 a0 1d 14 00 	movzbl 0x141da0,%eax
  1047c7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1047ca:	29 d0                	sub    %edx,%eax
  1047cc:	a2 a0 1d 14 00       	mov    %al,0x141da0
  1047d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1047d4:	c9                   	leave  
  1047d5:	c3                   	ret    

001047d6 <vfs_read>:
  1047d6:	55                   	push   %ebp
  1047d7:	89 e5                	mov    %esp,%ebp
  1047d9:	83 ec 08             	sub    $0x8,%esp
  1047dc:	8b 45 08             	mov    0x8(%ebp),%eax
  1047df:	8b 80 9c 00 00 00    	mov    0x9c(%eax),%eax
  1047e5:	85 c0                	test   %eax,%eax
  1047e7:	74 1c                	je     104805 <vfs_read+0x2f>
  1047e9:	8b 45 08             	mov    0x8(%ebp),%eax
  1047ec:	8b 80 9c 00 00 00    	mov    0x9c(%eax),%eax
  1047f2:	ff 75 14             	push   0x14(%ebp)
  1047f5:	ff 75 10             	push   0x10(%ebp)
  1047f8:	ff 75 0c             	push   0xc(%ebp)
  1047fb:	ff 75 08             	push   0x8(%ebp)
  1047fe:	ff d0                	call   *%eax
  104800:	83 c4 10             	add    $0x10,%esp
  104803:	eb 05                	jmp    10480a <vfs_read+0x34>
  104805:	b8 00 00 00 00       	mov    $0x0,%eax
  10480a:	c9                   	leave  
  10480b:	c3                   	ret    

0010480c <vfs_write>:
  10480c:	55                   	push   %ebp
  10480d:	89 e5                	mov    %esp,%ebp
  10480f:	83 ec 08             	sub    $0x8,%esp
  104812:	8b 45 08             	mov    0x8(%ebp),%eax
  104815:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
  10481b:	85 c0                	test   %eax,%eax
  10481d:	74 1c                	je     10483b <vfs_write+0x2f>
  10481f:	8b 45 08             	mov    0x8(%ebp),%eax
  104822:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
  104828:	ff 75 14             	push   0x14(%ebp)
  10482b:	ff 75 10             	push   0x10(%ebp)
  10482e:	ff 75 0c             	push   0xc(%ebp)
  104831:	ff 75 08             	push   0x8(%ebp)
  104834:	ff d0                	call   *%eax
  104836:	83 c4 10             	add    $0x10,%esp
  104839:	eb 05                	jmp    104840 <vfs_write+0x34>
  10483b:	b8 00 00 00 00       	mov    $0x0,%eax
  104840:	c9                   	leave  
  104841:	c3                   	ret    

00104842 <vfs_open>:
  104842:	55                   	push   %ebp
  104843:	89 e5                	mov    %esp,%ebp
  104845:	83 ec 18             	sub    $0x18,%esp
  104848:	8b 55 0c             	mov    0xc(%ebp),%edx
  10484b:	8b 45 10             	mov    0x10(%ebp),%eax
  10484e:	88 55 f4             	mov    %dl,-0xc(%ebp)
  104851:	88 45 f0             	mov    %al,-0x10(%ebp)
  104854:	8b 45 08             	mov    0x8(%ebp),%eax
  104857:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
  10485d:	85 c0                	test   %eax,%eax
  10485f:	74 15                	je     104876 <vfs_open+0x34>
  104861:	8b 45 08             	mov    0x8(%ebp),%eax
  104864:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
  10486a:	83 ec 0c             	sub    $0xc,%esp
  10486d:	ff 75 08             	push   0x8(%ebp)
  104870:	ff d0                	call   *%eax
  104872:	83 c4 10             	add    $0x10,%esp
  104875:	90                   	nop
  104876:	c9                   	leave  
  104877:	c3                   	ret    

00104878 <vfs_close>:
  104878:	55                   	push   %ebp
  104879:	89 e5                	mov    %esp,%ebp
  10487b:	83 ec 08             	sub    $0x8,%esp
  10487e:	8b 45 08             	mov    0x8(%ebp),%eax
  104881:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
  104887:	85 c0                	test   %eax,%eax
  104889:	74 15                	je     1048a0 <vfs_close+0x28>
  10488b:	8b 45 08             	mov    0x8(%ebp),%eax
  10488e:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
  104894:	83 ec 0c             	sub    $0xc,%esp
  104897:	ff 75 08             	push   0x8(%ebp)
  10489a:	ff d0                	call   *%eax
  10489c:	83 c4 10             	add    $0x10,%esp
  10489f:	90                   	nop
  1048a0:	c9                   	leave  
  1048a1:	c3                   	ret    

001048a2 <vfs_read_dir>:
  1048a2:	55                   	push   %ebp
  1048a3:	89 e5                	mov    %esp,%ebp
  1048a5:	83 ec 08             	sub    $0x8,%esp
  1048a8:	8b 45 08             	mov    0x8(%ebp),%eax
  1048ab:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  1048b1:	83 e0 07             	and    $0x7,%eax
  1048b4:	83 f8 02             	cmp    $0x2,%eax
  1048b7:	75 26                	jne    1048df <vfs_read_dir+0x3d>
  1048b9:	8b 45 08             	mov    0x8(%ebp),%eax
  1048bc:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
  1048c2:	85 c0                	test   %eax,%eax
  1048c4:	74 19                	je     1048df <vfs_read_dir+0x3d>
  1048c6:	8b 45 08             	mov    0x8(%ebp),%eax
  1048c9:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
  1048cf:	83 ec 08             	sub    $0x8,%esp
  1048d2:	ff 75 0c             	push   0xc(%ebp)
  1048d5:	ff 75 08             	push   0x8(%ebp)
  1048d8:	ff d0                	call   *%eax
  1048da:	83 c4 10             	add    $0x10,%esp
  1048dd:	eb 05                	jmp    1048e4 <vfs_read_dir+0x42>
  1048df:	b8 00 00 00 00       	mov    $0x0,%eax
  1048e4:	c9                   	leave  
  1048e5:	c3                   	ret    

001048e6 <vfs_find_dir>:
  1048e6:	55                   	push   %ebp
  1048e7:	89 e5                	mov    %esp,%ebp
  1048e9:	83 ec 08             	sub    $0x8,%esp
  1048ec:	8b 45 08             	mov    0x8(%ebp),%eax
  1048ef:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  1048f5:	83 e0 07             	and    $0x7,%eax
  1048f8:	83 f8 02             	cmp    $0x2,%eax
  1048fb:	75 26                	jne    104923 <vfs_find_dir+0x3d>
  1048fd:	8b 45 08             	mov    0x8(%ebp),%eax
  104900:	8b 80 b0 00 00 00    	mov    0xb0(%eax),%eax
  104906:	85 c0                	test   %eax,%eax
  104908:	74 19                	je     104923 <vfs_find_dir+0x3d>
  10490a:	8b 45 08             	mov    0x8(%ebp),%eax
  10490d:	8b 80 b0 00 00 00    	mov    0xb0(%eax),%eax
  104913:	83 ec 08             	sub    $0x8,%esp
  104916:	ff 75 0c             	push   0xc(%ebp)
  104919:	ff 75 08             	push   0x8(%ebp)
  10491c:	ff d0                	call   *%eax
  10491e:	83 c4 10             	add    $0x10,%esp
  104921:	eb 05                	jmp    104928 <vfs_find_dir+0x42>
  104923:	b8 00 00 00 00       	mov    $0x0,%eax
  104928:	c9                   	leave  
  104929:	c3                   	ret    

0010492a <initrd_read>:
  10492a:	55                   	push   %ebp
  10492b:	89 e5                	mov    %esp,%ebp
  10492d:	57                   	push   %edi
  10492e:	56                   	push   %esi
  10492f:	53                   	push   %ebx
  104930:	83 ec 5c             	sub    $0x5c,%esp
  104933:	8b 15 c4 1d 14 00    	mov    0x141dc4,%edx
  104939:	8b 45 08             	mov    0x8(%ebp),%eax
  10493c:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
  104942:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104945:	01 c2                	add    %eax,%edx
  104947:	8d 45 9c             	lea    -0x64(%ebp),%eax
  10494a:	89 d3                	mov    %edx,%ebx
  10494c:	ba 13 00 00 00       	mov    $0x13,%edx
  104951:	89 c7                	mov    %eax,%edi
  104953:	89 de                	mov    %ebx,%esi
  104955:	89 d1                	mov    %edx,%ecx
  104957:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  104959:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10495c:	39 45 0c             	cmp    %eax,0xc(%ebp)
  10495f:	76 07                	jbe    104968 <initrd_read+0x3e>
  104961:	b8 00 00 00 00       	mov    $0x0,%eax
  104966:	eb 35                	jmp    10499d <initrd_read+0x73>
  104968:	8b 55 0c             	mov    0xc(%ebp),%edx
  10496b:	8b 45 10             	mov    0x10(%ebp),%eax
  10496e:	01 c2                	add    %eax,%edx
  104970:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  104973:	39 c2                	cmp    %eax,%edx
  104975:	76 09                	jbe    104980 <initrd_read+0x56>
  104977:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10497a:	2b 45 0c             	sub    0xc(%ebp),%eax
  10497d:	89 45 10             	mov    %eax,0x10(%ebp)
  104980:	8b 55 e0             	mov    -0x20(%ebp),%edx
  104983:	8b 45 0c             	mov    0xc(%ebp),%eax
  104986:	01 d0                	add    %edx,%eax
  104988:	83 ec 04             	sub    $0x4,%esp
  10498b:	ff 75 10             	push   0x10(%ebp)
  10498e:	50                   	push   %eax
  10498f:	ff 75 14             	push   0x14(%ebp)
  104992:	e8 f6 4d 00 00       	call   10978d <memcpy>
  104997:	83 c4 10             	add    $0x10,%esp
  10499a:	8b 45 10             	mov    0x10(%ebp),%eax
  10499d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1049a0:	5b                   	pop    %ebx
  1049a1:	5e                   	pop    %esi
  1049a2:	5f                   	pop    %edi
  1049a3:	5d                   	pop    %ebp
  1049a4:	c3                   	ret    

001049a5 <initrd_readdir>:
  1049a5:	55                   	push   %ebp
  1049a6:	89 e5                	mov    %esp,%ebp
  1049a8:	83 ec 08             	sub    $0x8,%esp
  1049ab:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  1049b0:	39 45 08             	cmp    %eax,0x8(%ebp)
  1049b3:	75 38                	jne    1049ed <initrd_readdir+0x48>
  1049b5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1049b9:	75 32                	jne    1049ed <initrd_readdir+0x48>
  1049bb:	83 ec 04             	sub    $0x4,%esp
  1049be:	6a 03                	push   $0x3
  1049c0:	68 80 a7 10 00       	push   $0x10a780
  1049c5:	68 e0 1d 14 00       	push   $0x141de0
  1049ca:	e8 be 4d 00 00       	call   10978d <memcpy>
  1049cf:	83 c4 10             	add    $0x10,%esp
  1049d2:	c6 05 e3 1d 14 00 00 	movb   $0x0,0x141de3
  1049d9:	c7 05 60 1e 14 00 00 	movl   $0x0,0x141e60
  1049e0:	00 00 00 
  1049e3:	b8 e0 1d 14 00       	mov    $0x141de0,%eax
  1049e8:	e9 b3 00 00 00       	jmp    104aa0 <initrd_readdir+0xfb>
  1049ed:	8b 45 0c             	mov    0xc(%ebp),%eax
  1049f0:	8d 50 ff             	lea    -0x1(%eax),%edx
  1049f3:	a1 d4 1d 14 00       	mov    0x141dd4,%eax
  1049f8:	39 c2                	cmp    %eax,%edx
  1049fa:	72 0a                	jb     104a06 <initrd_readdir+0x61>
  1049fc:	b8 00 00 00 00       	mov    $0x0,%eax
  104a01:	e9 9a 00 00 00       	jmp    104aa0 <initrd_readdir+0xfb>
  104a06:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104a0c:	8b 45 0c             	mov    0xc(%ebp),%eax
  104a0f:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a15:	2d b8 00 00 00       	sub    $0xb8,%eax
  104a1a:	01 d0                	add    %edx,%eax
  104a1c:	83 ec 0c             	sub    $0xc,%esp
  104a1f:	50                   	push   %eax
  104a20:	e8 54 4e 00 00       	call   109879 <strlen>
  104a25:	83 c4 10             	add    $0x10,%esp
  104a28:	8b 0d d0 1d 14 00    	mov    0x141dd0,%ecx
  104a2e:	8b 55 0c             	mov    0xc(%ebp),%edx
  104a31:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104a37:	81 ea b8 00 00 00    	sub    $0xb8,%edx
  104a3d:	01 ca                	add    %ecx,%edx
  104a3f:	83 ec 04             	sub    $0x4,%esp
  104a42:	50                   	push   %eax
  104a43:	52                   	push   %edx
  104a44:	68 e0 1d 14 00       	push   $0x141de0
  104a49:	e8 3f 4d 00 00       	call   10978d <memcpy>
  104a4e:	83 c4 10             	add    $0x10,%esp
  104a51:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104a57:	8b 45 0c             	mov    0xc(%ebp),%eax
  104a5a:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a60:	2d b8 00 00 00       	sub    $0xb8,%eax
  104a65:	01 d0                	add    %edx,%eax
  104a67:	83 ec 0c             	sub    $0xc,%esp
  104a6a:	50                   	push   %eax
  104a6b:	e8 09 4e 00 00       	call   109879 <strlen>
  104a70:	83 c4 10             	add    $0x10,%esp
  104a73:	c6 80 e0 1d 14 00 00 	movb   $0x0,0x141de0(%eax)
  104a7a:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104a80:	8b 45 0c             	mov    0xc(%ebp),%eax
  104a83:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104a89:	2d b8 00 00 00       	sub    $0xb8,%eax
  104a8e:	01 d0                	add    %edx,%eax
  104a90:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
  104a96:	a3 60 1e 14 00       	mov    %eax,0x141e60
  104a9b:	b8 e0 1d 14 00       	mov    $0x141de0,%eax
  104aa0:	c9                   	leave  
  104aa1:	c3                   	ret    

00104aa2 <initrd_finddir>:
  104aa2:	55                   	push   %ebp
  104aa3:	89 e5                	mov    %esp,%ebp
  104aa5:	83 ec 18             	sub    $0x18,%esp
  104aa8:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104aad:	39 45 08             	cmp    %eax,0x8(%ebp)
  104ab0:	75 20                	jne    104ad2 <initrd_finddir+0x30>
  104ab2:	83 ec 04             	sub    $0x4,%esp
  104ab5:	6a 03                	push   $0x3
  104ab7:	68 80 a7 10 00       	push   $0x10a780
  104abc:	ff 75 0c             	push   0xc(%ebp)
  104abf:	e8 59 4c 00 00       	call   10971d <memcmp>
  104ac4:	83 c4 10             	add    $0x10,%esp
  104ac7:	85 c0                	test   %eax,%eax
  104ac9:	75 07                	jne    104ad2 <initrd_finddir+0x30>
  104acb:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104ad0:	eb 71                	jmp    104b43 <initrd_finddir+0xa1>
  104ad2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104ad9:	eb 59                	jmp    104b34 <initrd_finddir+0x92>
  104adb:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104ae1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ae4:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104aea:	01 d0                	add    %edx,%eax
  104aec:	83 ec 0c             	sub    $0xc,%esp
  104aef:	50                   	push   %eax
  104af0:	e8 84 4d 00 00       	call   109879 <strlen>
  104af5:	83 c4 10             	add    $0x10,%esp
  104af8:	8b 0d d0 1d 14 00    	mov    0x141dd0,%ecx
  104afe:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104b01:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104b07:	01 ca                	add    %ecx,%edx
  104b09:	83 ec 04             	sub    $0x4,%esp
  104b0c:	50                   	push   %eax
  104b0d:	52                   	push   %edx
  104b0e:	ff 75 0c             	push   0xc(%ebp)
  104b11:	e8 07 4c 00 00       	call   10971d <memcmp>
  104b16:	83 c4 10             	add    $0x10,%esp
  104b19:	85 c0                	test   %eax,%eax
  104b1b:	75 13                	jne    104b30 <initrd_finddir+0x8e>
  104b1d:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104b23:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104b26:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104b2c:	01 d0                	add    %edx,%eax
  104b2e:	eb 13                	jmp    104b43 <initrd_finddir+0xa1>
  104b30:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104b34:	a1 d4 1d 14 00       	mov    0x141dd4,%eax
  104b39:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104b3c:	72 9d                	jb     104adb <initrd_finddir+0x39>
  104b3e:	b8 00 00 00 00       	mov    $0x0,%eax
  104b43:	c9                   	leave  
  104b44:	c3                   	ret    

00104b45 <initrd_init>:
  104b45:	55                   	push   %ebp
  104b46:	89 e5                	mov    %esp,%ebp
  104b48:	53                   	push   %ebx
  104b49:	83 ec 14             	sub    $0x14,%esp
  104b4c:	8b 45 08             	mov    0x8(%ebp),%eax
  104b4f:	a3 c0 1d 14 00       	mov    %eax,0x141dc0
  104b54:	8b 45 08             	mov    0x8(%ebp),%eax
  104b57:	83 c0 04             	add    $0x4,%eax
  104b5a:	a3 c4 1d 14 00       	mov    %eax,0x141dc4
  104b5f:	83 ec 0c             	sub    $0xc,%esp
  104b62:	68 b8 00 00 00       	push   $0xb8
  104b67:	e8 4e 14 00 00       	call   105fba <kmalloc>
  104b6c:	83 c4 10             	add    $0x10,%esp
  104b6f:	a3 c8 1d 14 00       	mov    %eax,0x141dc8
  104b74:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104b79:	83 ec 04             	sub    $0x4,%esp
  104b7c:	68 80 00 00 00       	push   $0x80
  104b81:	6a 00                	push   $0x0
  104b83:	50                   	push   %eax
  104b84:	e8 bd 4c 00 00       	call   109846 <memset>
  104b89:	83 c4 10             	add    $0x10,%esp
  104b8c:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104b91:	83 ec 04             	sub    $0x4,%esp
  104b94:	6a 07                	push   $0x7
  104b96:	68 84 a7 10 00       	push   $0x10a784
  104b9b:	50                   	push   %eax
  104b9c:	e8 ec 4b 00 00       	call   10978d <memcpy>
  104ba1:	83 c4 10             	add    $0x10,%esp
  104ba4:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104ba9:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
  104bb0:	00 00 00 
  104bb3:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104bb8:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104bbf:	00 00 00 
  104bc2:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104bc7:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
  104bce:	00 00 00 
  104bd1:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104bd6:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
  104bdd:	00 00 00 
  104be0:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104be5:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
  104bec:	00 00 00 
  104bef:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104bf4:	c7 80 8c 00 00 00 02 	movl   $0x2,0x8c(%eax)
  104bfb:	00 00 00 
  104bfe:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c03:	c7 80 9c 00 00 00 00 	movl   $0x0,0x9c(%eax)
  104c0a:	00 00 00 
  104c0d:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c12:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104c19:	00 00 00 
  104c1c:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c21:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104c28:	00 00 00 
  104c2b:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c30:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104c37:	00 00 00 
  104c3a:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c3f:	c7 80 ac 00 00 00 a5 	movl   $0x1049a5,0xac(%eax)
  104c46:	49 10 00 
  104c49:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c4e:	c7 80 b0 00 00 00 a2 	movl   $0x104aa2,0xb0(%eax)
  104c55:	4a 10 00 
  104c58:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c5d:	c7 80 b4 00 00 00 00 	movl   $0x0,0xb4(%eax)
  104c64:	00 00 00 
  104c67:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104c6c:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104c73:	00 00 00 
  104c76:	83 ec 0c             	sub    $0xc,%esp
  104c79:	68 b8 00 00 00       	push   $0xb8
  104c7e:	e8 37 13 00 00       	call   105fba <kmalloc>
  104c83:	83 c4 10             	add    $0x10,%esp
  104c86:	a3 cc 1d 14 00       	mov    %eax,0x141dcc
  104c8b:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104c90:	83 ec 04             	sub    $0x4,%esp
  104c93:	68 80 00 00 00       	push   $0x80
  104c98:	6a 00                	push   $0x0
  104c9a:	50                   	push   %eax
  104c9b:	e8 a6 4b 00 00       	call   109846 <memset>
  104ca0:	83 c4 10             	add    $0x10,%esp
  104ca3:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104ca8:	83 ec 04             	sub    $0x4,%esp
  104cab:	6a 03                	push   $0x3
  104cad:	68 80 a7 10 00       	push   $0x10a780
  104cb2:	50                   	push   %eax
  104cb3:	e8 d5 4a 00 00       	call   10978d <memcpy>
  104cb8:	83 c4 10             	add    $0x10,%esp
  104cbb:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104cc0:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
  104cc7:	00 00 00 
  104cca:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104ccf:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104cd6:	00 00 00 
  104cd9:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104cde:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
  104ce5:	00 00 00 
  104ce8:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104ced:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
  104cf4:	00 00 00 
  104cf7:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104cfc:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
  104d03:	00 00 00 
  104d06:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d0b:	c7 80 8c 00 00 00 02 	movl   $0x2,0x8c(%eax)
  104d12:	00 00 00 
  104d15:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d1a:	c7 80 9c 00 00 00 00 	movl   $0x0,0x9c(%eax)
  104d21:	00 00 00 
  104d24:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d29:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104d30:	00 00 00 
  104d33:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d38:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104d3f:	00 00 00 
  104d42:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d47:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104d4e:	00 00 00 
  104d51:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d56:	c7 80 ac 00 00 00 a5 	movl   $0x1049a5,0xac(%eax)
  104d5d:	49 10 00 
  104d60:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d65:	c7 80 b0 00 00 00 a2 	movl   $0x104aa2,0xb0(%eax)
  104d6c:	4a 10 00 
  104d6f:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d74:	c7 80 b4 00 00 00 00 	movl   $0x0,0xb4(%eax)
  104d7b:	00 00 00 
  104d7e:	a1 cc 1d 14 00       	mov    0x141dcc,%eax
  104d83:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104d8a:	00 00 00 
  104d8d:	a1 c0 1d 14 00       	mov    0x141dc0,%eax
  104d92:	8b 00                	mov    (%eax),%eax
  104d94:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104d9a:	83 ec 0c             	sub    $0xc,%esp
  104d9d:	50                   	push   %eax
  104d9e:	e8 17 12 00 00       	call   105fba <kmalloc>
  104da3:	83 c4 10             	add    $0x10,%esp
  104da6:	a3 d0 1d 14 00       	mov    %eax,0x141dd0
  104dab:	a1 c0 1d 14 00       	mov    0x141dc0,%eax
  104db0:	8b 00                	mov    (%eax),%eax
  104db2:	a3 d4 1d 14 00       	mov    %eax,0x141dd4
  104db7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104dbe:	e9 e7 01 00 00       	jmp    104faa <initrd_init+0x465>
  104dc3:	8b 15 c4 1d 14 00    	mov    0x141dc4,%edx
  104dc9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104dcc:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104dcf:	01 d0                	add    %edx,%eax
  104dd1:	8b 48 44             	mov    0x44(%eax),%ecx
  104dd4:	8b 15 c4 1d 14 00    	mov    0x141dc4,%edx
  104dda:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ddd:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104de0:	01 d0                	add    %edx,%eax
  104de2:	8b 55 08             	mov    0x8(%ebp),%edx
  104de5:	01 ca                	add    %ecx,%edx
  104de7:	89 50 44             	mov    %edx,0x44(%eax)
  104dea:	8b 15 c4 1d 14 00    	mov    0x141dc4,%edx
  104df0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104df3:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104df6:	01 d0                	add    %edx,%eax
  104df8:	83 c0 01             	add    $0x1,%eax
  104dfb:	83 ec 0c             	sub    $0xc,%esp
  104dfe:	50                   	push   %eax
  104dff:	e8 75 4a 00 00       	call   109879 <strlen>
  104e04:	83 c4 10             	add    $0x10,%esp
  104e07:	8b 0d c4 1d 14 00    	mov    0x141dc4,%ecx
  104e0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104e10:	6b d2 4c             	imul   $0x4c,%edx,%edx
  104e13:	01 ca                	add    %ecx,%edx
  104e15:	83 c2 01             	add    $0x1,%edx
  104e18:	8b 1d d0 1d 14 00    	mov    0x141dd0,%ebx
  104e1e:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  104e21:	69 c9 b8 00 00 00    	imul   $0xb8,%ecx,%ecx
  104e27:	01 d9                	add    %ebx,%ecx
  104e29:	83 ec 04             	sub    $0x4,%esp
  104e2c:	50                   	push   %eax
  104e2d:	52                   	push   %edx
  104e2e:	51                   	push   %ecx
  104e2f:	e8 59 49 00 00       	call   10978d <memcpy>
  104e34:	83 c4 10             	add    $0x10,%esp
  104e37:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104e3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e40:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e46:	01 c2                	add    %eax,%edx
  104e48:	c7 82 88 00 00 00 00 	movl   $0x0,0x88(%edx)
  104e4f:	00 00 00 
  104e52:	8b 0d d0 1d 14 00    	mov    0x141dd0,%ecx
  104e58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e5b:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104e61:	01 c8                	add    %ecx,%eax
  104e63:	8b 92 88 00 00 00    	mov    0x88(%edx),%edx
  104e69:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
  104e6f:	8b 0d d0 1d 14 00    	mov    0x141dd0,%ecx
  104e75:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104e78:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104e7e:	01 ca                	add    %ecx,%edx
  104e80:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  104e86:	89 82 80 00 00 00    	mov    %eax,0x80(%edx)
  104e8c:	8b 15 c4 1d 14 00    	mov    0x141dc4,%edx
  104e92:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104e95:	6b c0 4c             	imul   $0x4c,%eax,%eax
  104e98:	01 d0                	add    %edx,%eax
  104e9a:	8b 0d d0 1d 14 00    	mov    0x141dd0,%ecx
  104ea0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  104ea3:	69 d2 b8 00 00 00    	imul   $0xb8,%edx,%edx
  104ea9:	01 ca                	add    %ecx,%edx
  104eab:	8b 40 48             	mov    0x48(%eax),%eax
  104eae:	89 82 94 00 00 00    	mov    %eax,0x94(%edx)
  104eb4:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104eba:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ebd:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104ec3:	01 c2                	add    %eax,%edx
  104ec5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ec8:	89 82 90 00 00 00    	mov    %eax,0x90(%edx)
  104ece:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104ed4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ed7:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104edd:	01 d0                	add    %edx,%eax
  104edf:	c7 80 8c 00 00 00 01 	movl   $0x1,0x8c(%eax)
  104ee6:	00 00 00 
  104ee9:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104eef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104ef2:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104ef8:	01 d0                	add    %edx,%eax
  104efa:	c7 80 9c 00 00 00 2a 	movl   $0x10492a,0x9c(%eax)
  104f01:	49 10 00 
  104f04:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104f0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f0d:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104f13:	01 d0                	add    %edx,%eax
  104f15:	c7 80 a0 00 00 00 00 	movl   $0x0,0xa0(%eax)
  104f1c:	00 00 00 
  104f1f:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104f25:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f28:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104f2e:	01 d0                	add    %edx,%eax
  104f30:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
  104f37:	00 00 00 
  104f3a:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104f40:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f43:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104f49:	01 d0                	add    %edx,%eax
  104f4b:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
  104f52:	00 00 00 
  104f55:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104f5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f5e:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104f64:	01 d0                	add    %edx,%eax
  104f66:	c7 80 a4 00 00 00 00 	movl   $0x0,0xa4(%eax)
  104f6d:	00 00 00 
  104f70:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104f76:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f79:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104f7f:	01 d0                	add    %edx,%eax
  104f81:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
  104f88:	00 00 00 
  104f8b:	8b 15 d0 1d 14 00    	mov    0x141dd0,%edx
  104f91:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104f94:	69 c0 b8 00 00 00    	imul   $0xb8,%eax,%eax
  104f9a:	01 d0                	add    %edx,%eax
  104f9c:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
  104fa3:	00 00 00 
  104fa6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  104faa:	a1 c0 1d 14 00       	mov    0x141dc0,%eax
  104faf:	8b 00                	mov    (%eax),%eax
  104fb1:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  104fb4:	0f 82 09 fe ff ff    	jb     104dc3 <initrd_init+0x27e>
  104fba:	a1 c8 1d 14 00       	mov    0x141dc8,%eax
  104fbf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104fc2:	c9                   	leave  
  104fc3:	c3                   	ret    

00104fc4 <cmos_datetime_to_str>:
  104fc4:	55                   	push   %ebp
  104fc5:	89 e5                	mov    %esp,%ebp
  104fc7:	83 ec 28             	sub    $0x28,%esp
  104fca:	c6 45 e8 00          	movb   $0x0,-0x18(%ebp)
  104fce:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  104fd2:	88 45 eb             	mov    %al,-0x15(%ebp)
  104fd5:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  104fd9:	88 45 ee             	mov    %al,-0x12(%ebp)
  104fdc:	0f b6 45 ee          	movzbl -0x12(%ebp),%eax
  104fe0:	88 45 f1             	mov    %al,-0xf(%ebp)
  104fe3:	0f b6 45 f1          	movzbl -0xf(%ebp),%eax
  104fe7:	88 45 f4             	mov    %al,-0xc(%ebp)
  104fea:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
  104fee:	88 45 f7             	mov    %al,-0x9(%ebp)
  104ff1:	83 ec 0c             	sub    $0xc,%esp
  104ff4:	8d 45 f5             	lea    -0xb(%ebp),%eax
  104ff7:	50                   	push   %eax
  104ff8:	e8 6b 3b 00 00       	call   108b68 <__redirect_printf__>
  104ffd:	83 c4 10             	add    $0x10,%esp
  105000:	0f b6 45 0b          	movzbl 0xb(%ebp),%eax
  105004:	0f b6 c0             	movzbl %al,%eax
  105007:	0f b6 55 0b          	movzbl 0xb(%ebp),%edx
  10500b:	80 fa 09             	cmp    $0x9,%dl
  10500e:	77 07                	ja     105017 <cmos_datetime_to_str+0x53>
  105010:	ba 8b a7 10 00       	mov    $0x10a78b,%edx
  105015:	eb 05                	jmp    10501c <cmos_datetime_to_str+0x58>
  105017:	ba 8d a7 10 00       	mov    $0x10a78d,%edx
  10501c:	83 ec 04             	sub    $0x4,%esp
  10501f:	50                   	push   %eax
  105020:	52                   	push   %edx
  105021:	68 8e a7 10 00       	push   $0x10a78e
  105026:	e8 2a 44 00 00       	call   109455 <printf>
  10502b:	83 c4 10             	add    $0x10,%esp
  10502e:	83 ec 0c             	sub    $0xc,%esp
  105031:	6a 00                	push   $0x0
  105033:	e8 30 3b 00 00       	call   108b68 <__redirect_printf__>
  105038:	83 c4 10             	add    $0x10,%esp
  10503b:	83 ec 0c             	sub    $0xc,%esp
  10503e:	8d 45 f2             	lea    -0xe(%ebp),%eax
  105041:	50                   	push   %eax
  105042:	e8 21 3b 00 00       	call   108b68 <__redirect_printf__>
  105047:	83 c4 10             	add    $0x10,%esp
  10504a:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
  10504e:	0f b6 c0             	movzbl %al,%eax
  105051:	0f b6 55 0c          	movzbl 0xc(%ebp),%edx
  105055:	80 fa 09             	cmp    $0x9,%dl
  105058:	77 07                	ja     105061 <cmos_datetime_to_str+0x9d>
  10505a:	ba 8b a7 10 00       	mov    $0x10a78b,%edx
  10505f:	eb 05                	jmp    105066 <cmos_datetime_to_str+0xa2>
  105061:	ba 8d a7 10 00       	mov    $0x10a78d,%edx
  105066:	83 ec 04             	sub    $0x4,%esp
  105069:	50                   	push   %eax
  10506a:	52                   	push   %edx
  10506b:	68 8e a7 10 00       	push   $0x10a78e
  105070:	e8 e0 43 00 00       	call   109455 <printf>
  105075:	83 c4 10             	add    $0x10,%esp
  105078:	83 ec 0c             	sub    $0xc,%esp
  10507b:	6a 00                	push   $0x0
  10507d:	e8 e6 3a 00 00       	call   108b68 <__redirect_printf__>
  105082:	83 c4 10             	add    $0x10,%esp
  105085:	83 ec 0c             	sub    $0xc,%esp
  105088:	8d 45 ef             	lea    -0x11(%ebp),%eax
  10508b:	50                   	push   %eax
  10508c:	e8 d7 3a 00 00       	call   108b68 <__redirect_printf__>
  105091:	83 c4 10             	add    $0x10,%esp
  105094:	0f b6 45 0d          	movzbl 0xd(%ebp),%eax
  105098:	0f b6 c0             	movzbl %al,%eax
  10509b:	0f b6 55 0d          	movzbl 0xd(%ebp),%edx
  10509f:	80 fa 09             	cmp    $0x9,%dl
  1050a2:	77 07                	ja     1050ab <cmos_datetime_to_str+0xe7>
  1050a4:	ba 8b a7 10 00       	mov    $0x10a78b,%edx
  1050a9:	eb 05                	jmp    1050b0 <cmos_datetime_to_str+0xec>
  1050ab:	ba 8d a7 10 00       	mov    $0x10a78d,%edx
  1050b0:	83 ec 04             	sub    $0x4,%esp
  1050b3:	50                   	push   %eax
  1050b4:	52                   	push   %edx
  1050b5:	68 8e a7 10 00       	push   $0x10a78e
  1050ba:	e8 96 43 00 00       	call   109455 <printf>
  1050bf:	83 c4 10             	add    $0x10,%esp
  1050c2:	83 ec 0c             	sub    $0xc,%esp
  1050c5:	6a 00                	push   $0x0
  1050c7:	e8 9c 3a 00 00       	call   108b68 <__redirect_printf__>
  1050cc:	83 c4 10             	add    $0x10,%esp
  1050cf:	83 ec 0c             	sub    $0xc,%esp
  1050d2:	8d 45 ec             	lea    -0x14(%ebp),%eax
  1050d5:	50                   	push   %eax
  1050d6:	e8 8d 3a 00 00       	call   108b68 <__redirect_printf__>
  1050db:	83 c4 10             	add    $0x10,%esp
  1050de:	0f b6 45 0a          	movzbl 0xa(%ebp),%eax
  1050e2:	0f b6 c0             	movzbl %al,%eax
  1050e5:	0f b6 55 0a          	movzbl 0xa(%ebp),%edx
  1050e9:	80 fa 09             	cmp    $0x9,%dl
  1050ec:	77 07                	ja     1050f5 <cmos_datetime_to_str+0x131>
  1050ee:	ba 8b a7 10 00       	mov    $0x10a78b,%edx
  1050f3:	eb 05                	jmp    1050fa <cmos_datetime_to_str+0x136>
  1050f5:	ba 8d a7 10 00       	mov    $0x10a78d,%edx
  1050fa:	83 ec 04             	sub    $0x4,%esp
  1050fd:	50                   	push   %eax
  1050fe:	52                   	push   %edx
  1050ff:	68 8e a7 10 00       	push   $0x10a78e
  105104:	e8 4c 43 00 00       	call   109455 <printf>
  105109:	83 c4 10             	add    $0x10,%esp
  10510c:	83 ec 0c             	sub    $0xc,%esp
  10510f:	6a 00                	push   $0x0
  105111:	e8 52 3a 00 00       	call   108b68 <__redirect_printf__>
  105116:	83 c4 10             	add    $0x10,%esp
  105119:	83 ec 0c             	sub    $0xc,%esp
  10511c:	8d 45 e9             	lea    -0x17(%ebp),%eax
  10511f:	50                   	push   %eax
  105120:	e8 43 3a 00 00       	call   108b68 <__redirect_printf__>
  105125:	83 c4 10             	add    $0x10,%esp
  105128:	0f b6 45 09          	movzbl 0x9(%ebp),%eax
  10512c:	0f b6 c0             	movzbl %al,%eax
  10512f:	0f b6 55 09          	movzbl 0x9(%ebp),%edx
  105133:	80 fa 09             	cmp    $0x9,%dl
  105136:	77 07                	ja     10513f <cmos_datetime_to_str+0x17b>
  105138:	ba 8b a7 10 00       	mov    $0x10a78b,%edx
  10513d:	eb 05                	jmp    105144 <cmos_datetime_to_str+0x180>
  10513f:	ba 8d a7 10 00       	mov    $0x10a78d,%edx
  105144:	83 ec 04             	sub    $0x4,%esp
  105147:	50                   	push   %eax
  105148:	52                   	push   %edx
  105149:	68 8e a7 10 00       	push   $0x10a78e
  10514e:	e8 02 43 00 00       	call   109455 <printf>
  105153:	83 c4 10             	add    $0x10,%esp
  105156:	83 ec 0c             	sub    $0xc,%esp
  105159:	6a 00                	push   $0x0
  10515b:	e8 08 3a 00 00       	call   108b68 <__redirect_printf__>
  105160:	83 c4 10             	add    $0x10,%esp
  105163:	83 ec 0c             	sub    $0xc,%esp
  105166:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  105169:	50                   	push   %eax
  10516a:	e8 f9 39 00 00       	call   108b68 <__redirect_printf__>
  10516f:	83 c4 10             	add    $0x10,%esp
  105172:	0f b6 45 08          	movzbl 0x8(%ebp),%eax
  105176:	0f b6 c0             	movzbl %al,%eax
  105179:	0f b6 55 08          	movzbl 0x8(%ebp),%edx
  10517d:	80 fa 09             	cmp    $0x9,%dl
  105180:	77 07                	ja     105189 <cmos_datetime_to_str+0x1c5>
  105182:	ba 8b a7 10 00       	mov    $0x10a78b,%edx
  105187:	eb 05                	jmp    10518e <cmos_datetime_to_str+0x1ca>
  105189:	ba 8d a7 10 00       	mov    $0x10a78d,%edx
  10518e:	83 ec 04             	sub    $0x4,%esp
  105191:	50                   	push   %eax
  105192:	52                   	push   %edx
  105193:	68 8e a7 10 00       	push   $0x10a78e
  105198:	e8 b8 42 00 00       	call   109455 <printf>
  10519d:	83 c4 10             	add    $0x10,%esp
  1051a0:	83 ec 0c             	sub    $0xc,%esp
  1051a3:	6a 00                	push   $0x0
  1051a5:	e8 be 39 00 00       	call   108b68 <__redirect_printf__>
  1051aa:	83 c4 10             	add    $0x10,%esp
  1051ad:	83 ec 0c             	sub    $0xc,%esp
  1051b0:	ff 75 10             	push   0x10(%ebp)
  1051b3:	e8 b0 39 00 00       	call   108b68 <__redirect_printf__>
  1051b8:	83 c4 10             	add    $0x10,%esp
  1051bb:	83 ec 04             	sub    $0x4,%esp
  1051be:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  1051c1:	50                   	push   %eax
  1051c2:	8d 45 e9             	lea    -0x17(%ebp),%eax
  1051c5:	50                   	push   %eax
  1051c6:	8d 45 ec             	lea    -0x14(%ebp),%eax
  1051c9:	50                   	push   %eax
  1051ca:	8d 45 ef             	lea    -0x11(%ebp),%eax
  1051cd:	50                   	push   %eax
  1051ce:	8d 45 f2             	lea    -0xe(%ebp),%eax
  1051d1:	50                   	push   %eax
  1051d2:	8d 45 f5             	lea    -0xb(%ebp),%eax
  1051d5:	50                   	push   %eax
  1051d6:	68 93 a7 10 00       	push   $0x10a793
  1051db:	e8 75 42 00 00       	call   109455 <printf>
  1051e0:	83 c4 20             	add    $0x20,%esp
  1051e3:	83 ec 0c             	sub    $0xc,%esp
  1051e6:	6a 00                	push   $0x0
  1051e8:	e8 7b 39 00 00       	call   108b68 <__redirect_printf__>
  1051ed:	83 c4 10             	add    $0x10,%esp
  1051f0:	90                   	nop
  1051f1:	c9                   	leave  
  1051f2:	c3                   	ret    

001051f3 <sleep>:
  1051f3:	55                   	push   %ebp
  1051f4:	89 e5                	mov    %esp,%ebp
  1051f6:	83 ec 18             	sub    $0x18,%esp
  1051f9:	e8 ac eb ff ff       	call   103daa <pit_get_millis>
  1051fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105201:	90                   	nop
  105202:	e8 a3 eb ff ff       	call   103daa <pit_get_millis>
  105207:	2b 45 f4             	sub    -0xc(%ebp),%eax
  10520a:	39 45 08             	cmp    %eax,0x8(%ebp)
  10520d:	77 f3                	ja     105202 <sleep+0xf>
  10520f:	90                   	nop
  105210:	90                   	nop
  105211:	c9                   	leave  
  105212:	c3                   	ret    

00105213 <standard_lessthan_predicate>:
  105213:	55                   	push   %ebp
  105214:	89 e5                	mov    %esp,%ebp
  105216:	8b 45 08             	mov    0x8(%ebp),%eax
  105219:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10521c:	0f 92 c0             	setb   %al
  10521f:	5d                   	pop    %ebp
  105220:	c3                   	ret    

00105221 <ordered_array_new>:
  105221:	55                   	push   %ebp
  105222:	89 e5                	mov    %esp,%ebp
  105224:	83 ec 18             	sub    $0x18,%esp
  105227:	8b 45 0c             	mov    0xc(%ebp),%eax
  10522a:	c1 e0 02             	shl    $0x2,%eax
  10522d:	83 ec 0c             	sub    $0xc,%esp
  105230:	50                   	push   %eax
  105231:	e8 84 0d 00 00       	call   105fba <kmalloc>
  105236:	83 c4 10             	add    $0x10,%esp
  105239:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10523c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10523f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  105246:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105249:	83 ec 04             	sub    $0x4,%esp
  10524c:	52                   	push   %edx
  10524d:	6a 00                	push   $0x0
  10524f:	50                   	push   %eax
  105250:	e8 f1 45 00 00       	call   109846 <memset>
  105255:	83 c4 10             	add    $0x10,%esp
  105258:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10525f:	8b 45 0c             	mov    0xc(%ebp),%eax
  105262:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105265:	8b 45 10             	mov    0x10(%ebp),%eax
  105268:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10526b:	8b 45 08             	mov    0x8(%ebp),%eax
  10526e:	8b 55 e8             	mov    -0x18(%ebp),%edx
  105271:	89 10                	mov    %edx,(%eax)
  105273:	8b 55 ec             	mov    -0x14(%ebp),%edx
  105276:	89 50 04             	mov    %edx,0x4(%eax)
  105279:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10527c:	89 50 08             	mov    %edx,0x8(%eax)
  10527f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105282:	89 50 0c             	mov    %edx,0xc(%eax)
  105285:	8b 45 08             	mov    0x8(%ebp),%eax
  105288:	c9                   	leave  
  105289:	c2 04 00             	ret    $0x4

0010528c <ordered_array_new_at>:
  10528c:	55                   	push   %ebp
  10528d:	89 e5                	mov    %esp,%ebp
  10528f:	83 ec 18             	sub    $0x18,%esp
  105292:	8b 45 0c             	mov    0xc(%ebp),%eax
  105295:	89 45 e8             	mov    %eax,-0x18(%ebp)
  105298:	8b 45 10             	mov    0x10(%ebp),%eax
  10529b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1052a2:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1052a5:	83 ec 04             	sub    $0x4,%esp
  1052a8:	52                   	push   %edx
  1052a9:	6a 00                	push   $0x0
  1052ab:	50                   	push   %eax
  1052ac:	e8 95 45 00 00       	call   109846 <memset>
  1052b1:	83 c4 10             	add    $0x10,%esp
  1052b4:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1052bb:	8b 45 10             	mov    0x10(%ebp),%eax
  1052be:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1052c1:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1052c5:	74 05                	je     1052cc <ordered_array_new_at+0x40>
  1052c7:	8b 45 14             	mov    0x14(%ebp),%eax
  1052ca:	eb 05                	jmp    1052d1 <ordered_array_new_at+0x45>
  1052cc:	b8 13 52 10 00       	mov    $0x105213,%eax
  1052d1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1052d4:	8b 45 08             	mov    0x8(%ebp),%eax
  1052d7:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1052da:	89 10                	mov    %edx,(%eax)
  1052dc:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1052df:	89 50 04             	mov    %edx,0x4(%eax)
  1052e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1052e5:	89 50 08             	mov    %edx,0x8(%eax)
  1052e8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1052eb:	89 50 0c             	mov    %edx,0xc(%eax)
  1052ee:	8b 45 08             	mov    0x8(%ebp),%eax
  1052f1:	c9                   	leave  
  1052f2:	c2 04 00             	ret    $0x4

001052f5 <ordered_array_delete>:
  1052f5:	55                   	push   %ebp
  1052f6:	89 e5                	mov    %esp,%ebp
  1052f8:	83 ec 08             	sub    $0x8,%esp
  1052fb:	83 ec 0c             	sub    $0xc,%esp
  1052fe:	ff 75 08             	push   0x8(%ebp)
  105301:	e8 54 0d 00 00       	call   10605a <kfree>
  105306:	83 c4 10             	add    $0x10,%esp
  105309:	90                   	nop
  10530a:	c9                   	leave  
  10530b:	c3                   	ret    

0010530c <ordered_array_insert>:
  10530c:	55                   	push   %ebp
  10530d:	89 e5                	mov    %esp,%ebp
  10530f:	83 ec 18             	sub    $0x18,%esp
  105312:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105319:	eb 2e                	jmp    105349 <ordered_array_insert+0x3d>
  10531b:	8b 45 08             	mov    0x8(%ebp),%eax
  10531e:	8b 10                	mov    (%eax),%edx
  105320:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105323:	c1 e0 02             	shl    $0x2,%eax
  105326:	01 d0                	add    %edx,%eax
  105328:	8b 00                	mov    (%eax),%eax
  10532a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10532d:	8b 45 08             	mov    0x8(%ebp),%eax
  105330:	8b 40 0c             	mov    0xc(%eax),%eax
  105333:	83 ec 08             	sub    $0x8,%esp
  105336:	ff 75 ec             	push   -0x14(%ebp)
  105339:	ff 75 0c             	push   0xc(%ebp)
  10533c:	ff d0                	call   *%eax
  10533e:	83 c4 10             	add    $0x10,%esp
  105341:	84 c0                	test   %al,%al
  105343:	75 11                	jne    105356 <ordered_array_insert+0x4a>
  105345:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105349:	8b 45 08             	mov    0x8(%ebp),%eax
  10534c:	8b 40 04             	mov    0x4(%eax),%eax
  10534f:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105352:	72 c7                	jb     10531b <ordered_array_insert+0xf>
  105354:	eb 01                	jmp    105357 <ordered_array_insert+0x4b>
  105356:	90                   	nop
  105357:	8b 45 08             	mov    0x8(%ebp),%eax
  10535a:	8b 40 04             	mov    0x4(%eax),%eax
  10535d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105360:	75 32                	jne    105394 <ordered_array_insert+0x88>
  105362:	8b 45 08             	mov    0x8(%ebp),%eax
  105365:	8b 40 08             	mov    0x8(%eax),%eax
  105368:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10536b:	0f 83 8f 00 00 00    	jae    105400 <ordered_array_insert+0xf4>
  105371:	8b 45 08             	mov    0x8(%ebp),%eax
  105374:	8b 40 04             	mov    0x4(%eax),%eax
  105377:	8d 50 01             	lea    0x1(%eax),%edx
  10537a:	8b 45 08             	mov    0x8(%ebp),%eax
  10537d:	89 50 04             	mov    %edx,0x4(%eax)
  105380:	8b 45 08             	mov    0x8(%ebp),%eax
  105383:	8b 10                	mov    (%eax),%edx
  105385:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105388:	c1 e0 02             	shl    $0x2,%eax
  10538b:	01 c2                	add    %eax,%edx
  10538d:	8b 45 0c             	mov    0xc(%ebp),%eax
  105390:	89 02                	mov    %eax,(%edx)
  105392:	eb 6c                	jmp    105400 <ordered_array_insert+0xf4>
  105394:	8b 45 08             	mov    0x8(%ebp),%eax
  105397:	8b 50 04             	mov    0x4(%eax),%edx
  10539a:	8b 45 08             	mov    0x8(%ebp),%eax
  10539d:	8b 40 08             	mov    0x8(%eax),%eax
  1053a0:	39 c2                	cmp    %eax,%edx
  1053a2:	73 5c                	jae    105400 <ordered_array_insert+0xf4>
  1053a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1053a7:	8b 40 04             	mov    0x4(%eax),%eax
  1053aa:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1053ad:	eb 28                	jmp    1053d7 <ordered_array_insert+0xcb>
  1053af:	8b 45 08             	mov    0x8(%ebp),%eax
  1053b2:	8b 10                	mov    (%eax),%edx
  1053b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1053b7:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
  1053bc:	c1 e0 02             	shl    $0x2,%eax
  1053bf:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  1053c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1053c5:	8b 10                	mov    (%eax),%edx
  1053c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1053ca:	c1 e0 02             	shl    $0x2,%eax
  1053cd:	01 c2                	add    %eax,%edx
  1053cf:	8b 01                	mov    (%ecx),%eax
  1053d1:	89 02                	mov    %eax,(%edx)
  1053d3:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
  1053d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1053da:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  1053dd:	77 d0                	ja     1053af <ordered_array_insert+0xa3>
  1053df:	8b 45 08             	mov    0x8(%ebp),%eax
  1053e2:	8b 10                	mov    (%eax),%edx
  1053e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1053e7:	c1 e0 02             	shl    $0x2,%eax
  1053ea:	01 c2                	add    %eax,%edx
  1053ec:	8b 45 0c             	mov    0xc(%ebp),%eax
  1053ef:	89 02                	mov    %eax,(%edx)
  1053f1:	8b 45 08             	mov    0x8(%ebp),%eax
  1053f4:	8b 40 04             	mov    0x4(%eax),%eax
  1053f7:	8d 50 01             	lea    0x1(%eax),%edx
  1053fa:	8b 45 08             	mov    0x8(%ebp),%eax
  1053fd:	89 50 04             	mov    %edx,0x4(%eax)
  105400:	90                   	nop
  105401:	c9                   	leave  
  105402:	c3                   	ret    

00105403 <ordered_array_delete_at>:
  105403:	55                   	push   %ebp
  105404:	89 e5                	mov    %esp,%ebp
  105406:	83 ec 18             	sub    $0x18,%esp
  105409:	8b 45 0c             	mov    0xc(%ebp),%eax
  10540c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10540f:	8b 45 10             	mov    0x10(%ebp),%eax
  105412:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105415:	8b 45 08             	mov    0x8(%ebp),%eax
  105418:	8b 40 04             	mov    0x4(%eax),%eax
  10541b:	85 c0                	test   %eax,%eax
  10541d:	74 4e                	je     10546d <ordered_array_delete_at+0x6a>
  10541f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  105423:	78 48                	js     10546d <ordered_array_delete_at+0x6a>
  105425:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105428:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10542b:	eb 26                	jmp    105453 <ordered_array_delete_at+0x50>
  10542d:	8b 45 08             	mov    0x8(%ebp),%eax
  105430:	8b 10                	mov    (%eax),%edx
  105432:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105435:	83 c0 01             	add    $0x1,%eax
  105438:	c1 e0 02             	shl    $0x2,%eax
  10543b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10543e:	8b 45 08             	mov    0x8(%ebp),%eax
  105441:	8b 10                	mov    (%eax),%edx
  105443:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105446:	c1 e0 02             	shl    $0x2,%eax
  105449:	01 c2                	add    %eax,%edx
  10544b:	8b 01                	mov    (%ecx),%eax
  10544d:	89 02                	mov    %eax,(%edx)
  10544f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  105453:	8b 45 08             	mov    0x8(%ebp),%eax
  105456:	8b 40 04             	mov    0x4(%eax),%eax
  105459:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10545c:	72 cf                	jb     10542d <ordered_array_delete_at+0x2a>
  10545e:	8b 45 08             	mov    0x8(%ebp),%eax
  105461:	8b 40 04             	mov    0x4(%eax),%eax
  105464:	8d 50 ff             	lea    -0x1(%eax),%edx
  105467:	8b 45 08             	mov    0x8(%ebp),%eax
  10546a:	89 50 04             	mov    %edx,0x4(%eax)
  10546d:	90                   	nop
  10546e:	c9                   	leave  
  10546f:	c3                   	ret    

00105470 <ordered_array_at>:
  105470:	55                   	push   %ebp
  105471:	89 e5                	mov    %esp,%ebp
  105473:	83 ec 08             	sub    $0x8,%esp
  105476:	8b 45 0c             	mov    0xc(%ebp),%eax
  105479:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10547c:	8b 45 10             	mov    0x10(%ebp),%eax
  10547f:	89 45 fc             	mov    %eax,-0x4(%ebp)
  105482:	8b 55 f8             	mov    -0x8(%ebp),%edx
  105485:	8b 45 08             	mov    0x8(%ebp),%eax
  105488:	8b 40 04             	mov    0x4(%eax),%eax
  10548b:	39 c2                	cmp    %eax,%edx
  10548d:	73 17                	jae    1054a6 <ordered_array_at+0x36>
  10548f:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  105493:	78 11                	js     1054a6 <ordered_array_at+0x36>
  105495:	8b 45 08             	mov    0x8(%ebp),%eax
  105498:	8b 10                	mov    (%eax),%edx
  10549a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10549d:	c1 e0 02             	shl    $0x2,%eax
  1054a0:	01 d0                	add    %edx,%eax
  1054a2:	8b 00                	mov    (%eax),%eax
  1054a4:	eb 05                	jmp    1054ab <ordered_array_at+0x3b>
  1054a6:	b8 00 00 00 00       	mov    $0x0,%eax
  1054ab:	c9                   	leave  
  1054ac:	c3                   	ret    

001054ad <ordered_array_index_of>:
  1054ad:	55                   	push   %ebp
  1054ae:	89 e5                	mov    %esp,%ebp
  1054b0:	83 ec 10             	sub    $0x10,%esp
  1054b3:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
  1054ba:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  1054c1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1054c8:	eb 27                	jmp    1054f1 <ordered_array_index_of+0x44>
  1054ca:	8b 45 08             	mov    0x8(%ebp),%eax
  1054cd:	8b 10                	mov    (%eax),%edx
  1054cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1054d2:	c1 e0 02             	shl    $0x2,%eax
  1054d5:	01 d0                	add    %edx,%eax
  1054d7:	8b 00                	mov    (%eax),%eax
  1054d9:	39 45 0c             	cmp    %eax,0xc(%ebp)
  1054dc:	75 0f                	jne    1054ed <ordered_array_index_of+0x40>
  1054de:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1054e1:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1054e4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1054eb:	eb 0f                	jmp    1054fc <ordered_array_index_of+0x4f>
  1054ed:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1054f1:	8b 45 08             	mov    0x8(%ebp),%eax
  1054f4:	8b 40 04             	mov    0x4(%eax),%eax
  1054f7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1054fa:	72 ce                	jb     1054ca <ordered_array_index_of+0x1d>
  1054fc:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1054ff:	8b 55 fc             	mov    -0x4(%ebp),%edx
  105502:	c9                   	leave  
  105503:	c3                   	ret    

00105504 <merge_available_blocks>:
  105504:	55                   	push   %ebp
  105505:	89 e5                	mov    %esp,%ebp
  105507:	83 ec 38             	sub    $0x38,%esp
  10550a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105511:	e9 84 00 00 00       	jmp    10559a <merge_available_blocks+0x96>
  105516:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105519:	ba 00 00 00 00       	mov    $0x0,%edx
  10551e:	83 ec 04             	sub    $0x4,%esp
  105521:	52                   	push   %edx
  105522:	50                   	push   %eax
  105523:	68 80 26 14 00       	push   $0x142680
  105528:	e8 43 ff ff ff       	call   105470 <ordered_array_at>
  10552d:	83 c4 10             	add    $0x10,%esp
  105530:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105533:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105536:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  10553a:	84 c0                	test   %al,%al
  10553c:	75 58                	jne    105596 <merge_available_blocks+0x92>
  10553e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105541:	83 c0 01             	add    $0x1,%eax
  105544:	89 45 dc             	mov    %eax,-0x24(%ebp)
  105547:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10554a:	ba 00 00 00 00       	mov    $0x0,%edx
  10554f:	83 ec 04             	sub    $0x4,%esp
  105552:	52                   	push   %edx
  105553:	50                   	push   %eax
  105554:	68 80 26 14 00       	push   $0x142680
  105559:	e8 12 ff ff ff       	call   105470 <ordered_array_at>
  10555e:	83 c4 10             	add    $0x10,%esp
  105561:	89 45 d8             	mov    %eax,-0x28(%ebp)
  105564:	eb 1b                	jmp    105581 <merge_available_blocks+0x7d>
  105566:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105569:	8b 50 04             	mov    0x4(%eax),%edx
  10556c:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10556f:	8b 40 04             	mov    0x4(%eax),%eax
  105572:	01 c2                	add    %eax,%edx
  105574:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105577:	89 50 04             	mov    %edx,0x4(%eax)
  10557a:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10557d:	c6 40 08 02          	movb   $0x2,0x8(%eax)
  105581:	a1 84 26 14 00       	mov    0x142684,%eax
  105586:	39 45 dc             	cmp    %eax,-0x24(%ebp)
  105589:	73 0b                	jae    105596 <merge_available_blocks+0x92>
  10558b:	8b 45 d8             	mov    -0x28(%ebp),%eax
  10558e:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105592:	84 c0                	test   %al,%al
  105594:	74 d0                	je     105566 <merge_available_blocks+0x62>
  105596:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10559a:	a1 84 26 14 00       	mov    0x142684,%eax
  10559f:	83 e8 01             	sub    $0x1,%eax
  1055a2:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1055a5:	0f 82 6b ff ff ff    	jb     105516 <merge_available_blocks+0x12>
  1055ab:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1055b2:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1055b9:	83 ec 04             	sub    $0x4,%esp
  1055bc:	ff 75 ec             	push   -0x14(%ebp)
  1055bf:	ff 75 e8             	push   -0x18(%ebp)
  1055c2:	68 80 26 14 00       	push   $0x142680
  1055c7:	e8 a4 fe ff ff       	call   105470 <ordered_array_at>
  1055cc:	83 c4 10             	add    $0x10,%esp
  1055cf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1055d2:	eb 5d                	jmp    105631 <merge_available_blocks+0x12d>
  1055d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1055d7:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  1055db:	3c 02                	cmp    $0x2,%al
  1055dd:	75 31                	jne    105610 <merge_available_blocks+0x10c>
  1055df:	83 ec 04             	sub    $0x4,%esp
  1055e2:	ff 75 ec             	push   -0x14(%ebp)
  1055e5:	ff 75 e8             	push   -0x18(%ebp)
  1055e8:	68 80 26 14 00       	push   $0x142680
  1055ed:	e8 11 fe ff ff       	call   105403 <ordered_array_delete_at>
  1055f2:	83 c4 10             	add    $0x10,%esp
  1055f5:	83 ec 04             	sub    $0x4,%esp
  1055f8:	ff 75 ec             	push   -0x14(%ebp)
  1055fb:	ff 75 e8             	push   -0x18(%ebp)
  1055fe:	68 80 26 14 00       	push   $0x142680
  105603:	e8 68 fe ff ff       	call   105470 <ordered_array_at>
  105608:	83 c4 10             	add    $0x10,%esp
  10560b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10560e:	eb 21                	jmp    105631 <merge_available_blocks+0x12d>
  105610:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  105614:	83 55 ec 00          	adcl   $0x0,-0x14(%ebp)
  105618:	83 ec 04             	sub    $0x4,%esp
  10561b:	ff 75 ec             	push   -0x14(%ebp)
  10561e:	ff 75 e8             	push   -0x18(%ebp)
  105621:	68 80 26 14 00       	push   $0x142680
  105626:	e8 45 fe ff ff       	call   105470 <ordered_array_at>
  10562b:	83 c4 10             	add    $0x10,%esp
  10562e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105631:	a1 84 26 14 00       	mov    0x142684,%eax
  105636:	ba 00 00 00 00       	mov    $0x0,%edx
  10563b:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10563e:	39 45 e8             	cmp    %eax,-0x18(%ebp)
  105641:	19 d1                	sbb    %edx,%ecx
  105643:	7c 8f                	jl     1055d4 <merge_available_blocks+0xd0>
  105645:	a1 84 26 14 00       	mov    0x142684,%eax
  10564a:	83 f8 01             	cmp    $0x1,%eax
  10564d:	0f 85 20 01 00 00    	jne    105773 <merge_available_blocks+0x26f>
  105653:	83 ec 04             	sub    $0x4,%esp
  105656:	6a 00                	push   $0x0
  105658:	6a 00                	push   $0x0
  10565a:	68 80 26 14 00       	push   $0x142680
  10565f:	e8 0c fe ff ff       	call   105470 <ordered_array_at>
  105664:	83 c4 10             	add    $0x10,%esp
  105667:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  10566b:	84 c0                	test   %al,%al
  10566d:	0f 85 00 01 00 00    	jne    105773 <merge_available_blocks+0x26f>
  105673:	83 ec 04             	sub    $0x4,%esp
  105676:	6a 00                	push   $0x0
  105678:	6a 00                	push   $0x0
  10567a:	68 80 26 14 00       	push   $0x142680
  10567f:	e8 7f fd ff ff       	call   105403 <ordered_array_delete_at>
  105684:	83 c4 10             	add    $0x10,%esp
  105687:	83 ec 0c             	sub    $0xc,%esp
  10568a:	68 80 22 14 00       	push   $0x142280
  10568f:	e8 d4 34 00 00       	call   108b68 <__redirect_printf__>
  105694:	83 c4 10             	add    $0x10,%esp
  105697:	83 ec 0c             	sub    $0xc,%esp
  10569a:	68 a8 a7 10 00       	push   $0x10a7a8
  10569f:	e8 b1 3d 00 00       	call   109455 <printf>
  1056a4:	83 c4 10             	add    $0x10,%esp
  1056a7:	83 ec 0c             	sub    $0xc,%esp
  1056aa:	6a 00                	push   $0x0
  1056ac:	e8 b7 34 00 00       	call   108b68 <__redirect_printf__>
  1056b1:	83 c4 10             	add    $0x10,%esp
  1056b4:	83 ec 0c             	sub    $0xc,%esp
  1056b7:	8d 45 d2             	lea    -0x2e(%ebp),%eax
  1056ba:	50                   	push   %eax
  1056bb:	e8 df d3 ff ff       	call   102a9f <cmos_read_rtc>
  1056c0:	83 c4 10             	add    $0x10,%esp
  1056c3:	83 ec 04             	sub    $0x4,%esp
  1056c6:	68 6c 26 14 00       	push   $0x14266c
  1056cb:	83 ec 08             	sub    $0x8,%esp
  1056ce:	89 e0                	mov    %esp,%eax
  1056d0:	8b 55 d2             	mov    -0x2e(%ebp),%edx
  1056d3:	89 10                	mov    %edx,(%eax)
  1056d5:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
  1056d9:	66 89 50 04          	mov    %dx,0x4(%eax)
  1056dd:	e8 e2 f8 ff ff       	call   104fc4 <cmos_datetime_to_str>
  1056e2:	83 c4 10             	add    $0x10,%esp
  1056e5:	83 ec 0c             	sub    $0xc,%esp
  1056e8:	68 80 1e 14 00       	push   $0x141e80
  1056ed:	e8 76 34 00 00       	call   108b68 <__redirect_printf__>
  1056f2:	83 c4 10             	add    $0x10,%esp
  1056f5:	83 ec 04             	sub    $0x4,%esp
  1056f8:	68 80 22 14 00       	push   $0x142280
  1056fd:	68 6c 26 14 00       	push   $0x14266c
  105702:	68 dc a7 10 00       	push   $0x10a7dc
  105707:	e8 49 3d 00 00       	call   109455 <printf>
  10570c:	83 c4 10             	add    $0x10,%esp
  10570f:	83 ec 0c             	sub    $0xc,%esp
  105712:	6a 00                	push   $0x0
  105714:	e8 4f 34 00 00       	call   108b68 <__redirect_printf__>
  105719:	83 c4 10             	add    $0x10,%esp
  10571c:	83 ec 08             	sub    $0x8,%esp
  10571f:	68 80 1e 14 00       	push   $0x141e80
  105724:	68 f8 03 00 00       	push   $0x3f8
  105729:	e8 8b ce ff ff       	call   1025b9 <com_write>
  10572e:	83 c4 10             	add    $0x10,%esp
  105731:	83 ec 04             	sub    $0x4,%esp
  105734:	68 00 04 00 00       	push   $0x400
  105739:	6a 00                	push   $0x0
  10573b:	68 80 1e 14 00       	push   $0x141e80
  105740:	e8 01 41 00 00       	call   109846 <memset>
  105745:	83 c4 10             	add    $0x10,%esp
  105748:	83 ec 04             	sub    $0x4,%esp
  10574b:	68 ec 03 00 00       	push   $0x3ec
  105750:	6a 00                	push   $0x0
  105752:	68 80 22 14 00       	push   $0x142280
  105757:	e8 ea 40 00 00       	call   109846 <memset>
  10575c:	83 c4 10             	add    $0x10,%esp
  10575f:	83 ec 04             	sub    $0x4,%esp
  105762:	6a 14                	push   $0x14
  105764:	6a 00                	push   $0x0
  105766:	68 6c 26 14 00       	push   $0x14266c
  10576b:	e8 d6 40 00 00       	call   109846 <memset>
  105770:	83 c4 10             	add    $0x10,%esp
  105773:	90                   	nop
  105774:	c9                   	leave  
  105775:	c3                   	ret    

00105776 <__kheap_malloc_at__>:
  105776:	55                   	push   %ebp
  105777:	89 e5                	mov    %esp,%ebp
  105779:	83 ec 48             	sub    $0x48,%esp
  10577c:	8b 45 10             	mov    0x10(%ebp),%eax
  10577f:	88 45 c4             	mov    %al,-0x3c(%ebp)
  105782:	8b 45 08             	mov    0x8(%ebp),%eax
  105785:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105788:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10578b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10578e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105791:	83 c0 0c             	add    $0xc,%eax
  105794:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105797:	83 ec 08             	sub    $0x8,%esp
  10579a:	ff 75 ec             	push   -0x14(%ebp)
  10579d:	68 80 26 14 00       	push   $0x142680
  1057a2:	e8 06 fd ff ff       	call   1054ad <ordered_array_index_of>
  1057a7:	83 c4 10             	add    $0x10,%esp
  1057aa:	83 ec 04             	sub    $0x4,%esp
  1057ad:	52                   	push   %edx
  1057ae:	50                   	push   %eax
  1057af:	68 80 26 14 00       	push   $0x142680
  1057b4:	e8 4a fc ff ff       	call   105403 <ordered_array_delete_at>
  1057b9:	83 c4 10             	add    $0x10,%esp
  1057bc:	80 7d c4 01          	cmpb   $0x1,-0x3c(%ebp)
  1057c0:	75 1a                	jne    1057dc <__kheap_malloc_at__+0x66>
  1057c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1057c5:	25 ff 0f 00 00       	and    $0xfff,%eax
  1057ca:	85 c0                	test   %eax,%eax
  1057cc:	74 0e                	je     1057dc <__kheap_malloc_at__+0x66>
  1057ce:	81 65 f4 00 f0 ff ff 	andl   $0xfffff000,-0xc(%ebp)
  1057d5:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  1057dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1057df:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1057e2:	89 10                	mov    %edx,(%eax)
  1057e4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1057e7:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  1057eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1057ee:	2b 45 f0             	sub    -0x10(%ebp),%eax
  1057f1:	89 c2                	mov    %eax,%edx
  1057f3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1057f6:	01 c2                	add    %eax,%edx
  1057f8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1057fb:	89 50 04             	mov    %edx,0x4(%eax)
  1057fe:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  105802:	74 58                	je     10585c <__kheap_malloc_at__+0xe6>
  105804:	e8 41 10 00 00       	call   10684a <paging_kernel_page_directory>
  105809:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10580c:	83 ec 04             	sub    $0x4,%esp
  10580f:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  105812:	50                   	push   %eax
  105813:	8d 45 d8             	lea    -0x28(%ebp),%eax
  105816:	50                   	push   %eax
  105817:	ff 75 f4             	push   -0xc(%ebp)
  10581a:	e8 e2 0e 00 00       	call   106701 <paging_get_page>
  10581f:	83 c4 10             	add    $0x10,%esp
  105822:	8b 55 d8             	mov    -0x28(%ebp),%edx
  105825:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105828:	8b 14 90             	mov    (%eax,%edx,4),%edx
  10582b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  10582e:	c1 e0 02             	shl    $0x2,%eax
  105831:	01 d0                	add    %edx,%eax
  105833:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  105836:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  105839:	8b 00                	mov    (%eax),%eax
  10583b:	c1 e8 0c             	shr    $0xc,%eax
  10583e:	c1 e0 0c             	shl    $0xc,%eax
  105841:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105844:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105847:	25 ff 0f 00 00       	and    $0xfff,%eax
  10584c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10584f:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105852:	0b 45 dc             	or     -0x24(%ebp),%eax
  105855:	89 c2                	mov    %eax,%edx
  105857:	8b 45 14             	mov    0x14(%ebp),%eax
  10585a:	89 10                	mov    %edx,(%eax)
  10585c:	83 ec 08             	sub    $0x8,%esp
  10585f:	ff 75 ec             	push   -0x14(%ebp)
  105862:	68 80 26 14 00       	push   $0x142680
  105867:	e8 a0 fa ff ff       	call   10530c <ordered_array_insert>
  10586c:	83 c4 10             	add    $0x10,%esp
  10586f:	83 ec 0c             	sub    $0xc,%esp
  105872:	68 80 22 14 00       	push   $0x142280
  105877:	e8 ec 32 00 00       	call   108b68 <__redirect_printf__>
  10587c:	83 c4 10             	add    $0x10,%esp
  10587f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105882:	8b 10                	mov    (%eax),%edx
  105884:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105887:	8b 40 04             	mov    0x4(%eax),%eax
  10588a:	83 ec 0c             	sub    $0xc,%esp
  10588d:	52                   	push   %edx
  10588e:	ff 75 08             	push   0x8(%ebp)
  105891:	50                   	push   %eax
  105892:	ff 75 0c             	push   0xc(%ebp)
  105895:	68 e4 a7 10 00       	push   $0x10a7e4
  10589a:	e8 b6 3b 00 00       	call   109455 <printf>
  10589f:	83 c4 20             	add    $0x20,%esp
  1058a2:	83 ec 0c             	sub    $0xc,%esp
  1058a5:	6a 00                	push   $0x0
  1058a7:	e8 bc 32 00 00       	call   108b68 <__redirect_printf__>
  1058ac:	83 c4 10             	add    $0x10,%esp
  1058af:	83 ec 0c             	sub    $0xc,%esp
  1058b2:	8d 45 ce             	lea    -0x32(%ebp),%eax
  1058b5:	50                   	push   %eax
  1058b6:	e8 e4 d1 ff ff       	call   102a9f <cmos_read_rtc>
  1058bb:	83 c4 10             	add    $0x10,%esp
  1058be:	83 ec 04             	sub    $0x4,%esp
  1058c1:	68 6c 26 14 00       	push   $0x14266c
  1058c6:	83 ec 08             	sub    $0x8,%esp
  1058c9:	89 e0                	mov    %esp,%eax
  1058cb:	8b 55 ce             	mov    -0x32(%ebp),%edx
  1058ce:	89 10                	mov    %edx,(%eax)
  1058d0:	0f b7 55 d2          	movzwl -0x2e(%ebp),%edx
  1058d4:	66 89 50 04          	mov    %dx,0x4(%eax)
  1058d8:	e8 e7 f6 ff ff       	call   104fc4 <cmos_datetime_to_str>
  1058dd:	83 c4 10             	add    $0x10,%esp
  1058e0:	83 ec 0c             	sub    $0xc,%esp
  1058e3:	68 80 1e 14 00       	push   $0x141e80
  1058e8:	e8 7b 32 00 00       	call   108b68 <__redirect_printf__>
  1058ed:	83 c4 10             	add    $0x10,%esp
  1058f0:	83 ec 04             	sub    $0x4,%esp
  1058f3:	68 80 22 14 00       	push   $0x142280
  1058f8:	68 6c 26 14 00       	push   $0x14266c
  1058fd:	68 dc a7 10 00       	push   $0x10a7dc
  105902:	e8 4e 3b 00 00       	call   109455 <printf>
  105907:	83 c4 10             	add    $0x10,%esp
  10590a:	83 ec 0c             	sub    $0xc,%esp
  10590d:	6a 00                	push   $0x0
  10590f:	e8 54 32 00 00       	call   108b68 <__redirect_printf__>
  105914:	83 c4 10             	add    $0x10,%esp
  105917:	83 ec 08             	sub    $0x8,%esp
  10591a:	68 80 1e 14 00       	push   $0x141e80
  10591f:	68 f8 03 00 00       	push   $0x3f8
  105924:	e8 90 cc ff ff       	call   1025b9 <com_write>
  105929:	83 c4 10             	add    $0x10,%esp
  10592c:	83 ec 04             	sub    $0x4,%esp
  10592f:	68 00 04 00 00       	push   $0x400
  105934:	6a 00                	push   $0x0
  105936:	68 80 1e 14 00       	push   $0x141e80
  10593b:	e8 06 3f 00 00       	call   109846 <memset>
  105940:	83 c4 10             	add    $0x10,%esp
  105943:	83 ec 04             	sub    $0x4,%esp
  105946:	68 ec 03 00 00       	push   $0x3ec
  10594b:	6a 00                	push   $0x0
  10594d:	68 80 22 14 00       	push   $0x142280
  105952:	e8 ef 3e 00 00       	call   109846 <memset>
  105957:	83 c4 10             	add    $0x10,%esp
  10595a:	83 ec 04             	sub    $0x4,%esp
  10595d:	6a 14                	push   $0x14
  10595f:	6a 00                	push   $0x0
  105961:	68 6c 26 14 00       	push   $0x14266c
  105966:	e8 db 3e 00 00       	call   109846 <memset>
  10596b:	83 c4 10             	add    $0x10,%esp
  10596e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105971:	8b 00                	mov    (%eax),%eax
  105973:	c9                   	leave  
  105974:	c3                   	ret    

00105975 <__kheap_malloc__>:
  105975:	55                   	push   %ebp
  105976:	89 e5                	mov    %esp,%ebp
  105978:	83 ec 38             	sub    $0x38,%esp
  10597b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10597e:	88 45 d4             	mov    %al,-0x2c(%ebp)
  105981:	a1 84 26 14 00       	mov    0x142684,%eax
  105986:	85 c0                	test   %eax,%eax
  105988:	75 1d                	jne    1059a7 <__kheap_malloc__+0x32>
  10598a:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
  10598e:	ff 75 10             	push   0x10(%ebp)
  105991:	50                   	push   %eax
  105992:	ff 75 08             	push   0x8(%ebp)
  105995:	68 00 00 00 c0       	push   $0xc0000000
  10599a:	e8 d7 fd ff ff       	call   105776 <__kheap_malloc_at__>
  10599f:	83 c4 10             	add    $0x10,%esp
  1059a2:	e9 29 01 00 00       	jmp    105ad0 <__kheap_malloc__+0x15b>
  1059a7:	8b 45 08             	mov    0x8(%ebp),%eax
  1059aa:	83 c0 0c             	add    $0xc,%eax
  1059ad:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1059b0:	80 7d d4 01          	cmpb   $0x1,-0x2c(%ebp)
  1059b4:	75 07                	jne    1059bd <__kheap_malloc__+0x48>
  1059b6:	b8 f3 0f 00 00       	mov    $0xff3,%eax
  1059bb:	eb 05                	jmp    1059c2 <__kheap_malloc__+0x4d>
  1059bd:	b8 00 00 00 00       	mov    $0x0,%eax
  1059c2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1059c5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1059cc:	eb 5a                	jmp    105a28 <__kheap_malloc__+0xb3>
  1059ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1059d1:	ba 00 00 00 00       	mov    $0x0,%edx
  1059d6:	83 ec 04             	sub    $0x4,%esp
  1059d9:	52                   	push   %edx
  1059da:	50                   	push   %eax
  1059db:	68 80 26 14 00       	push   $0x142680
  1059e0:	e8 8b fa ff ff       	call   105470 <ordered_array_at>
  1059e5:	83 c4 10             	add    $0x10,%esp
  1059e8:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1059eb:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1059ee:	8b 40 04             	mov    0x4(%eax),%eax
  1059f1:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1059f4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1059f7:	01 ca                	add    %ecx,%edx
  1059f9:	39 d0                	cmp    %edx,%eax
  1059fb:	72 27                	jb     105a24 <__kheap_malloc__+0xaf>
  1059fd:	8b 45 d8             	mov    -0x28(%ebp),%eax
  105a00:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105a04:	84 c0                	test   %al,%al
  105a06:	75 1c                	jne    105a24 <__kheap_malloc__+0xaf>
  105a08:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  105a0c:	8b 45 d8             	mov    -0x28(%ebp),%eax
  105a0f:	ff 75 10             	push   0x10(%ebp)
  105a12:	52                   	push   %edx
  105a13:	ff 75 08             	push   0x8(%ebp)
  105a16:	50                   	push   %eax
  105a17:	e8 5a fd ff ff       	call   105776 <__kheap_malloc_at__>
  105a1c:	83 c4 10             	add    $0x10,%esp
  105a1f:	e9 ac 00 00 00       	jmp    105ad0 <__kheap_malloc__+0x15b>
  105a24:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105a28:	a1 84 26 14 00       	mov    0x142684,%eax
  105a2d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105a30:	72 9c                	jb     1059ce <__kheap_malloc__+0x59>
  105a32:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  105a39:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  105a40:	eb 45                	jmp    105a87 <__kheap_malloc__+0x112>
  105a42:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105a45:	ba 00 00 00 00       	mov    $0x0,%edx
  105a4a:	83 ec 04             	sub    $0x4,%esp
  105a4d:	52                   	push   %edx
  105a4e:	50                   	push   %eax
  105a4f:	68 80 26 14 00       	push   $0x142680
  105a54:	e8 17 fa ff ff       	call   105470 <ordered_array_at>
  105a59:	83 c4 10             	add    $0x10,%esp
  105a5c:	89 45 e0             	mov    %eax,-0x20(%ebp)
  105a5f:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105a62:	89 45 dc             	mov    %eax,-0x24(%ebp)
  105a65:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105a68:	8b 50 04             	mov    0x4(%eax),%edx
  105a6b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  105a6e:	01 d0                	add    %edx,%eax
  105a70:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  105a73:	73 0e                	jae    105a83 <__kheap_malloc__+0x10e>
  105a75:	8b 45 e0             	mov    -0x20(%ebp),%eax
  105a78:	8b 50 04             	mov    0x4(%eax),%edx
  105a7b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  105a7e:	01 d0                	add    %edx,%eax
  105a80:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105a83:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  105a87:	a1 84 26 14 00       	mov    0x142684,%eax
  105a8c:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  105a8f:	72 b1                	jb     105a42 <__kheap_malloc__+0xcd>
  105a91:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105a94:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105a97:	01 c2                	add    %eax,%edx
  105a99:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  105a9c:	01 d0                	add    %edx,%eax
  105a9e:	3d 00 00 00 c1       	cmp    $0xc1000000,%eax
  105aa3:	76 15                	jbe    105aba <__kheap_malloc__+0x145>
  105aa5:	83 ec 0c             	sub    $0xc,%esp
  105aa8:	68 44 a8 10 00       	push   $0x10a844
  105aad:	e8 a3 39 00 00       	call   109455 <printf>
  105ab2:	83 c4 10             	add    $0x10,%esp
  105ab5:	e8 4b 3c 00 00       	call   109705 <abort>
  105aba:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
  105abe:	ff 75 10             	push   0x10(%ebp)
  105ac1:	50                   	push   %eax
  105ac2:	ff 75 08             	push   0x8(%ebp)
  105ac5:	ff 75 f0             	push   -0x10(%ebp)
  105ac8:	e8 a9 fc ff ff       	call   105776 <__kheap_malloc_at__>
  105acd:	83 c4 10             	add    $0x10,%esp
  105ad0:	c9                   	leave  
  105ad1:	c3                   	ret    

00105ad2 <size_based_less_than>:
  105ad2:	55                   	push   %ebp
  105ad3:	89 e5                	mov    %esp,%ebp
  105ad5:	83 ec 10             	sub    $0x10,%esp
  105ad8:	8b 45 08             	mov    0x8(%ebp),%eax
  105adb:	89 45 fc             	mov    %eax,-0x4(%ebp)
  105ade:	8b 45 0c             	mov    0xc(%ebp),%eax
  105ae1:	89 45 f8             	mov    %eax,-0x8(%ebp)
  105ae4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  105ae7:	8b 50 04             	mov    0x4(%eax),%edx
  105aea:	8b 45 f8             	mov    -0x8(%ebp),%eax
  105aed:	8b 40 04             	mov    0x4(%eax),%eax
  105af0:	39 c2                	cmp    %eax,%edx
  105af2:	0f 92 c0             	setb   %al
  105af5:	c9                   	leave  
  105af6:	c3                   	ret    

00105af7 <kheap_init>:
  105af7:	55                   	push   %ebp
  105af8:	89 e5                	mov    %esp,%ebp
  105afa:	83 ec 18             	sub    $0x18,%esp
  105afd:	8d 45 e8             	lea    -0x18(%ebp),%eax
  105b00:	83 ec 04             	sub    $0x4,%esp
  105b03:	68 d2 5a 10 00       	push   $0x105ad2
  105b08:	68 00 00 00 01       	push   $0x1000000
  105b0d:	50                   	push   %eax
  105b0e:	e8 0e f7 ff ff       	call   105221 <ordered_array_new>
  105b13:	83 c4 0c             	add    $0xc,%esp
  105b16:	8b 45 e8             	mov    -0x18(%ebp),%eax
  105b19:	a3 80 26 14 00       	mov    %eax,0x142680
  105b1e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105b21:	a3 84 26 14 00       	mov    %eax,0x142684
  105b26:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105b29:	a3 88 26 14 00       	mov    %eax,0x142688
  105b2e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105b31:	a3 8c 26 14 00       	mov    %eax,0x14268c
  105b36:	90                   	nop
  105b37:	c9                   	leave  
  105b38:	c3                   	ret    

00105b39 <kheap_malloc>:
  105b39:	55                   	push   %ebp
  105b3a:	89 e5                	mov    %esp,%ebp
  105b3c:	83 ec 08             	sub    $0x8,%esp
  105b3f:	83 ec 04             	sub    $0x4,%esp
  105b42:	6a 00                	push   $0x0
  105b44:	6a 00                	push   $0x0
  105b46:	ff 75 08             	push   0x8(%ebp)
  105b49:	e8 27 fe ff ff       	call   105975 <__kheap_malloc__>
  105b4e:	83 c4 10             	add    $0x10,%esp
  105b51:	c9                   	leave  
  105b52:	c3                   	ret    

00105b53 <kheap_malloc_a>:
  105b53:	55                   	push   %ebp
  105b54:	89 e5                	mov    %esp,%ebp
  105b56:	83 ec 08             	sub    $0x8,%esp
  105b59:	83 ec 04             	sub    $0x4,%esp
  105b5c:	6a 00                	push   $0x0
  105b5e:	6a 01                	push   $0x1
  105b60:	ff 75 08             	push   0x8(%ebp)
  105b63:	e8 0d fe ff ff       	call   105975 <__kheap_malloc__>
  105b68:	83 c4 10             	add    $0x10,%esp
  105b6b:	c9                   	leave  
  105b6c:	c3                   	ret    

00105b6d <kheap_malloc_ap>:
  105b6d:	55                   	push   %ebp
  105b6e:	89 e5                	mov    %esp,%ebp
  105b70:	83 ec 08             	sub    $0x8,%esp
  105b73:	83 ec 04             	sub    $0x4,%esp
  105b76:	ff 75 0c             	push   0xc(%ebp)
  105b79:	6a 01                	push   $0x1
  105b7b:	ff 75 08             	push   0x8(%ebp)
  105b7e:	e8 f2 fd ff ff       	call   105975 <__kheap_malloc__>
  105b83:	83 c4 10             	add    $0x10,%esp
  105b86:	c9                   	leave  
  105b87:	c3                   	ret    

00105b88 <kheap_free>:
  105b88:	55                   	push   %ebp
  105b89:	89 e5                	mov    %esp,%ebp
  105b8b:	83 ec 28             	sub    $0x28,%esp
  105b8e:	8b 45 08             	mov    0x8(%ebp),%eax
  105b91:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105b94:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105b9b:	e9 4f 01 00 00       	jmp    105cef <kheap_free+0x167>
  105ba0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105ba3:	ba 00 00 00 00       	mov    $0x0,%edx
  105ba8:	83 ec 04             	sub    $0x4,%esp
  105bab:	52                   	push   %edx
  105bac:	50                   	push   %eax
  105bad:	68 80 26 14 00       	push   $0x142680
  105bb2:	e8 b9 f8 ff ff       	call   105470 <ordered_array_at>
  105bb7:	83 c4 10             	add    $0x10,%esp
  105bba:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105bbd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105bc0:	8b 00                	mov    (%eax),%eax
  105bc2:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  105bc5:	0f 85 20 01 00 00    	jne    105ceb <kheap_free+0x163>
  105bcb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105bce:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  105bd2:	3c 01                	cmp    $0x1,%al
  105bd4:	74 18                	je     105bee <kheap_free+0x66>
  105bd6:	83 ec 08             	sub    $0x8,%esp
  105bd9:	ff 75 08             	push   0x8(%ebp)
  105bdc:	68 68 a8 10 00       	push   $0x10a868
  105be1:	e8 6f 38 00 00       	call   109455 <printf>
  105be6:	83 c4 10             	add    $0x10,%esp
  105be9:	e8 17 3b 00 00       	call   109705 <abort>
  105bee:	83 ec 0c             	sub    $0xc,%esp
  105bf1:	68 80 22 14 00       	push   $0x142280
  105bf6:	e8 6d 2f 00 00       	call   108b68 <__redirect_printf__>
  105bfb:	83 c4 10             	add    $0x10,%esp
  105bfe:	83 ec 08             	sub    $0x8,%esp
  105c01:	ff 75 f0             	push   -0x10(%ebp)
  105c04:	68 89 a8 10 00       	push   $0x10a889
  105c09:	e8 47 38 00 00       	call   109455 <printf>
  105c0e:	83 c4 10             	add    $0x10,%esp
  105c11:	83 ec 0c             	sub    $0xc,%esp
  105c14:	6a 00                	push   $0x0
  105c16:	e8 4d 2f 00 00       	call   108b68 <__redirect_printf__>
  105c1b:	83 c4 10             	add    $0x10,%esp
  105c1e:	83 ec 0c             	sub    $0xc,%esp
  105c21:	8d 45 e6             	lea    -0x1a(%ebp),%eax
  105c24:	50                   	push   %eax
  105c25:	e8 75 ce ff ff       	call   102a9f <cmos_read_rtc>
  105c2a:	83 c4 10             	add    $0x10,%esp
  105c2d:	83 ec 04             	sub    $0x4,%esp
  105c30:	68 6c 26 14 00       	push   $0x14266c
  105c35:	83 ec 08             	sub    $0x8,%esp
  105c38:	89 e0                	mov    %esp,%eax
  105c3a:	8b 55 e6             	mov    -0x1a(%ebp),%edx
  105c3d:	89 10                	mov    %edx,(%eax)
  105c3f:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  105c43:	66 89 50 04          	mov    %dx,0x4(%eax)
  105c47:	e8 78 f3 ff ff       	call   104fc4 <cmos_datetime_to_str>
  105c4c:	83 c4 10             	add    $0x10,%esp
  105c4f:	83 ec 0c             	sub    $0xc,%esp
  105c52:	68 80 1e 14 00       	push   $0x141e80
  105c57:	e8 0c 2f 00 00       	call   108b68 <__redirect_printf__>
  105c5c:	83 c4 10             	add    $0x10,%esp
  105c5f:	83 ec 04             	sub    $0x4,%esp
  105c62:	68 80 22 14 00       	push   $0x142280
  105c67:	68 6c 26 14 00       	push   $0x14266c
  105c6c:	68 dc a7 10 00       	push   $0x10a7dc
  105c71:	e8 df 37 00 00       	call   109455 <printf>
  105c76:	83 c4 10             	add    $0x10,%esp
  105c79:	83 ec 0c             	sub    $0xc,%esp
  105c7c:	6a 00                	push   $0x0
  105c7e:	e8 e5 2e 00 00       	call   108b68 <__redirect_printf__>
  105c83:	83 c4 10             	add    $0x10,%esp
  105c86:	83 ec 08             	sub    $0x8,%esp
  105c89:	68 80 1e 14 00       	push   $0x141e80
  105c8e:	68 f8 03 00 00       	push   $0x3f8
  105c93:	e8 21 c9 ff ff       	call   1025b9 <com_write>
  105c98:	83 c4 10             	add    $0x10,%esp
  105c9b:	83 ec 04             	sub    $0x4,%esp
  105c9e:	68 00 04 00 00       	push   $0x400
  105ca3:	6a 00                	push   $0x0
  105ca5:	68 80 1e 14 00       	push   $0x141e80
  105caa:	e8 97 3b 00 00       	call   109846 <memset>
  105caf:	83 c4 10             	add    $0x10,%esp
  105cb2:	83 ec 04             	sub    $0x4,%esp
  105cb5:	68 ec 03 00 00       	push   $0x3ec
  105cba:	6a 00                	push   $0x0
  105cbc:	68 80 22 14 00       	push   $0x142280
  105cc1:	e8 80 3b 00 00       	call   109846 <memset>
  105cc6:	83 c4 10             	add    $0x10,%esp
  105cc9:	83 ec 04             	sub    $0x4,%esp
  105ccc:	6a 14                	push   $0x14
  105cce:	6a 00                	push   $0x0
  105cd0:	68 6c 26 14 00       	push   $0x14266c
  105cd5:	e8 6c 3b 00 00       	call   109846 <memset>
  105cda:	83 c4 10             	add    $0x10,%esp
  105cdd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105ce0:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  105ce4:	e8 1b f8 ff ff       	call   105504 <merge_available_blocks>
  105ce9:	eb 2a                	jmp    105d15 <kheap_free+0x18d>
  105ceb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105cef:	a1 84 26 14 00       	mov    0x142684,%eax
  105cf4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105cf7:	0f 82 a3 fe ff ff    	jb     105ba0 <kheap_free+0x18>
  105cfd:	83 ec 08             	sub    $0x8,%esp
  105d00:	ff 75 08             	push   0x8(%ebp)
  105d03:	68 a4 a8 10 00       	push   $0x10a8a4
  105d08:	e8 48 37 00 00       	call   109455 <printf>
  105d0d:	83 c4 10             	add    $0x10,%esp
  105d10:	e8 f0 39 00 00       	call   109705 <abort>
  105d15:	c9                   	leave  
  105d16:	c3                   	ret    

00105d17 <__kmalloc__>:
  105d17:	55                   	push   %ebp
  105d18:	89 e5                	mov    %esp,%ebp
  105d1a:	83 ec 28             	sub    $0x28,%esp
  105d1d:	8b 45 0c             	mov    0xc(%ebp),%eax
  105d20:	88 45 e4             	mov    %al,-0x1c(%ebp)
  105d23:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
  105d27:	75 2c                	jne    105d55 <__kmalloc__+0x3e>
  105d29:	a1 98 26 14 00       	mov    0x142698,%eax
  105d2e:	25 ff 0f 00 00       	and    $0xfff,%eax
  105d33:	85 c0                	test   %eax,%eax
  105d35:	74 1e                	je     105d55 <__kmalloc__+0x3e>
  105d37:	a1 98 26 14 00       	mov    0x142698,%eax
  105d3c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  105d41:	a3 98 26 14 00       	mov    %eax,0x142698
  105d46:	a1 98 26 14 00       	mov    0x142698,%eax
  105d4b:	05 00 10 00 00       	add    $0x1000,%eax
  105d50:	a3 98 26 14 00       	mov    %eax,0x142698
  105d55:	a1 98 26 14 00       	mov    0x142698,%eax
  105d5a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105d5d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  105d60:	8b 45 08             	mov    0x8(%ebp),%eax
  105d63:	01 c2                	add    %eax,%edx
  105d65:	a1 90 26 14 00       	mov    0x142690,%eax
  105d6a:	39 c2                	cmp    %eax,%edx
  105d6c:	73 2c                	jae    105d9a <__kmalloc__+0x83>
  105d6e:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  105d72:	74 07                	je     105d7b <__kmalloc__+0x64>
  105d74:	a1 98 26 14 00       	mov    0x142698,%eax
  105d79:	eb 05                	jmp    105d80 <__kmalloc__+0x69>
  105d7b:	b8 00 00 00 00       	mov    $0x0,%eax
  105d80:	8b 55 10             	mov    0x10(%ebp),%edx
  105d83:	89 02                	mov    %eax,(%edx)
  105d85:	8b 15 98 26 14 00    	mov    0x142698,%edx
  105d8b:	8b 45 08             	mov    0x8(%ebp),%eax
  105d8e:	01 d0                	add    %edx,%eax
  105d90:	a3 98 26 14 00       	mov    %eax,0x142698
  105d95:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105d98:	eb 15                	jmp    105daf <__kmalloc__+0x98>
  105d9a:	83 ec 0c             	sub    $0xc,%esp
  105d9d:	68 dc a8 10 00       	push   $0x10a8dc
  105da2:	e8 ae 36 00 00       	call   109455 <printf>
  105da7:	83 c4 10             	add    $0x10,%esp
  105daa:	e8 56 39 00 00       	call   109705 <abort>
  105daf:	c9                   	leave  
  105db0:	c3                   	ret    

00105db1 <memory_init>:
  105db1:	55                   	push   %ebp
  105db2:	89 e5                	mov    %esp,%ebp
  105db4:	83 ec 18             	sub    $0x18,%esp
  105db7:	c7 05 90 26 14 00 00 	movl   $0x0,0x142690
  105dbe:	00 00 00 
  105dc1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105dc8:	eb 34                	jmp    105dfe <memory_init+0x4d>
  105dca:	8b 45 08             	mov    0x8(%ebp),%eax
  105dcd:	8b 50 30             	mov    0x30(%eax),%edx
  105dd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105dd3:	01 d0                	add    %edx,%eax
  105dd5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105dd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105ddb:	8b 40 14             	mov    0x14(%eax),%eax
  105dde:	83 f8 01             	cmp    $0x1,%eax
  105de1:	75 17                	jne    105dfa <memory_init+0x49>
  105de3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105de6:	8b 50 10             	mov    0x10(%eax),%edx
  105de9:	8b 40 0c             	mov    0xc(%eax),%eax
  105dec:	89 c2                	mov    %eax,%edx
  105dee:	a1 90 26 14 00       	mov    0x142690,%eax
  105df3:	01 d0                	add    %edx,%eax
  105df5:	a3 90 26 14 00       	mov    %eax,0x142690
  105dfa:	83 45 f4 18          	addl   $0x18,-0xc(%ebp)
  105dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  105e01:	8b 40 2c             	mov    0x2c(%eax),%eax
  105e04:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105e07:	72 c1                	jb     105dca <memory_init+0x19>
  105e09:	a1 90 26 14 00       	mov    0x142690,%eax
  105e0e:	c1 e8 0c             	shr    $0xc,%eax
  105e11:	a3 94 26 14 00       	mov    %eax,0x142694
  105e16:	a1 94 26 14 00       	mov    0x142694,%eax
  105e1b:	c1 e8 05             	shr    $0x5,%eax
  105e1e:	a3 a0 26 14 00       	mov    %eax,0x1426a0
  105e23:	8b 45 08             	mov    0x8(%ebp),%eax
  105e26:	8b 40 18             	mov    0x18(%eax),%eax
  105e29:	83 c0 04             	add    $0x4,%eax
  105e2c:	8b 00                	mov    (%eax),%eax
  105e2e:	a3 98 26 14 00       	mov    %eax,0x142698
  105e33:	a1 a0 26 14 00       	mov    0x1426a0,%eax
  105e38:	83 ec 0c             	sub    $0xc,%esp
  105e3b:	50                   	push   %eax
  105e3c:	e8 79 01 00 00       	call   105fba <kmalloc>
  105e41:	83 c4 10             	add    $0x10,%esp
  105e44:	a3 9c 26 14 00       	mov    %eax,0x14269c
  105e49:	a1 a0 26 14 00       	mov    0x1426a0,%eax
  105e4e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  105e55:	a1 9c 26 14 00       	mov    0x14269c,%eax
  105e5a:	83 ec 04             	sub    $0x4,%esp
  105e5d:	52                   	push   %edx
  105e5e:	6a 00                	push   $0x0
  105e60:	50                   	push   %eax
  105e61:	e8 e0 39 00 00       	call   109846 <memset>
  105e66:	83 c4 10             	add    $0x10,%esp
  105e69:	90                   	nop
  105e6a:	c9                   	leave  
  105e6b:	c3                   	ret    

00105e6c <memory_get_size>:
  105e6c:	55                   	push   %ebp
  105e6d:	89 e5                	mov    %esp,%ebp
  105e6f:	a1 90 26 14 00       	mov    0x142690,%eax
  105e74:	5d                   	pop    %ebp
  105e75:	c3                   	ret    

00105e76 <memory_get_alloc_addr>:
  105e76:	55                   	push   %ebp
  105e77:	89 e5                	mov    %esp,%ebp
  105e79:	a1 98 26 14 00       	mov    0x142698,%eax
  105e7e:	5d                   	pop    %ebp
  105e7f:	c3                   	ret    

00105e80 <memory_next_available_frame>:
  105e80:	55                   	push   %ebp
  105e81:	89 e5                	mov    %esp,%ebp
  105e83:	83 ec 18             	sub    $0x18,%esp
  105e86:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  105e8d:	eb 19                	jmp    105ea8 <memory_next_available_frame+0x28>
  105e8f:	8b 15 9c 26 14 00    	mov    0x14269c,%edx
  105e95:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105e98:	c1 e0 02             	shl    $0x2,%eax
  105e9b:	01 d0                	add    %edx,%eax
  105e9d:	8b 00                	mov    (%eax),%eax
  105e9f:	83 f8 ff             	cmp    $0xffffffff,%eax
  105ea2:	75 10                	jne    105eb4 <memory_next_available_frame+0x34>
  105ea4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  105ea8:	a1 a0 26 14 00       	mov    0x1426a0,%eax
  105ead:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105eb0:	72 dd                	jb     105e8f <memory_next_available_frame+0xf>
  105eb2:	eb 01                	jmp    105eb5 <memory_next_available_frame+0x35>
  105eb4:	90                   	nop
  105eb5:	a1 a0 26 14 00       	mov    0x1426a0,%eax
  105eba:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  105ebd:	75 15                	jne    105ed4 <memory_next_available_frame+0x54>
  105ebf:	83 ec 0c             	sub    $0xc,%esp
  105ec2:	68 fc a8 10 00       	push   $0x10a8fc
  105ec7:	e8 89 35 00 00       	call   109455 <printf>
  105ecc:	83 c4 10             	add    $0x10,%esp
  105ecf:	e8 31 38 00 00       	call   109705 <abort>
  105ed4:	8b 15 9c 26 14 00    	mov    0x14269c,%edx
  105eda:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105edd:	c1 e0 02             	shl    $0x2,%eax
  105ee0:	01 d0                	add    %edx,%eax
  105ee2:	8b 00                	mov    (%eax),%eax
  105ee4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105ee7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  105eee:	eb 07                	jmp    105ef7 <memory_next_available_frame+0x77>
  105ef0:	d1 7d f0             	sarl   -0x10(%ebp)
  105ef3:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  105ef7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  105efb:	75 f3                	jne    105ef0 <memory_next_available_frame+0x70>
  105efd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105f00:	c1 e0 05             	shl    $0x5,%eax
  105f03:	89 c2                	mov    %eax,%edx
  105f05:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105f08:	01 d0                	add    %edx,%eax
  105f0a:	c1 e0 0c             	shl    $0xc,%eax
  105f0d:	c9                   	leave  
  105f0e:	c3                   	ret    

00105f0f <memory_acquire_frame>:
  105f0f:	55                   	push   %ebp
  105f10:	89 e5                	mov    %esp,%ebp
  105f12:	83 ec 18             	sub    $0x18,%esp
  105f15:	8b 45 08             	mov    0x8(%ebp),%eax
  105f18:	25 ff 0f 00 00       	and    $0xfff,%eax
  105f1d:	85 c0                	test   %eax,%eax
  105f1f:	74 18                	je     105f39 <memory_acquire_frame+0x2a>
  105f21:	83 ec 08             	sub    $0x8,%esp
  105f24:	ff 75 08             	push   0x8(%ebp)
  105f27:	68 2c a9 10 00       	push   $0x10a92c
  105f2c:	e8 24 35 00 00       	call   109455 <printf>
  105f31:	83 c4 10             	add    $0x10,%esp
  105f34:	e8 cc 37 00 00       	call   109705 <abort>
  105f39:	a1 9c 26 14 00       	mov    0x14269c,%eax
  105f3e:	85 c0                	test   %eax,%eax
  105f40:	75 18                	jne    105f5a <memory_acquire_frame+0x4b>
  105f42:	83 ec 08             	sub    $0x8,%esp
  105f45:	ff 75 08             	push   0x8(%ebp)
  105f48:	68 64 a9 10 00       	push   $0x10a964
  105f4d:	e8 03 35 00 00       	call   109455 <printf>
  105f52:	83 c4 10             	add    $0x10,%esp
  105f55:	e8 ab 37 00 00       	call   109705 <abort>
  105f5a:	8b 45 08             	mov    0x8(%ebp),%eax
  105f5d:	c1 e8 0c             	shr    $0xc,%eax
  105f60:	89 45 f4             	mov    %eax,-0xc(%ebp)
  105f63:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105f66:	c1 e8 05             	shr    $0x5,%eax
  105f69:	89 45 f0             	mov    %eax,-0x10(%ebp)
  105f6c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  105f6f:	83 e0 1f             	and    $0x1f,%eax
  105f72:	89 45 ec             	mov    %eax,-0x14(%ebp)
  105f75:	8b 45 ec             	mov    -0x14(%ebp),%eax
  105f78:	ba 01 00 00 00       	mov    $0x1,%edx
  105f7d:	89 c1                	mov    %eax,%ecx
  105f7f:	d3 e2                	shl    %cl,%edx
  105f81:	89 d0                	mov    %edx,%eax
  105f83:	89 45 e8             	mov    %eax,-0x18(%ebp)
  105f86:	8b 15 9c 26 14 00    	mov    0x14269c,%edx
  105f8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  105f8f:	c1 e0 02             	shl    $0x2,%eax
  105f92:	01 d0                	add    %edx,%eax
  105f94:	8b 00                	mov    (%eax),%eax
  105f96:	8b 0d 9c 26 14 00    	mov    0x14269c,%ecx
  105f9c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  105f9f:	c1 e2 02             	shl    $0x2,%edx
  105fa2:	01 ca                	add    %ecx,%edx
  105fa4:	0b 45 e8             	or     -0x18(%ebp),%eax
  105fa7:	89 02                	mov    %eax,(%edx)
  105fa9:	90                   	nop
  105faa:	c9                   	leave  
  105fab:	c3                   	ret    

00105fac <memory_create_heap>:
  105fac:	55                   	push   %ebp
  105fad:	89 e5                	mov    %esp,%ebp
  105faf:	83 ec 08             	sub    $0x8,%esp
  105fb2:	e8 40 fb ff ff       	call   105af7 <kheap_init>
  105fb7:	90                   	nop
  105fb8:	c9                   	leave  
  105fb9:	c3                   	ret    

00105fba <kmalloc>:
  105fba:	55                   	push   %ebp
  105fbb:	89 e5                	mov    %esp,%ebp
  105fbd:	83 ec 08             	sub    $0x8,%esp
  105fc0:	a1 a4 26 14 00       	mov    0x1426a4,%eax
  105fc5:	83 f8 01             	cmp    $0x1,%eax
  105fc8:	75 10                	jne    105fda <kmalloc+0x20>
  105fca:	83 ec 0c             	sub    $0xc,%esp
  105fcd:	ff 75 08             	push   0x8(%ebp)
  105fd0:	e8 64 fb ff ff       	call   105b39 <kheap_malloc>
  105fd5:	83 c4 10             	add    $0x10,%esp
  105fd8:	eb 12                	jmp    105fec <kmalloc+0x32>
  105fda:	83 ec 04             	sub    $0x4,%esp
  105fdd:	6a 00                	push   $0x0
  105fdf:	6a 00                	push   $0x0
  105fe1:	ff 75 08             	push   0x8(%ebp)
  105fe4:	e8 2e fd ff ff       	call   105d17 <__kmalloc__>
  105fe9:	83 c4 10             	add    $0x10,%esp
  105fec:	c9                   	leave  
  105fed:	c3                   	ret    

00105fee <kmalloc_a>:
  105fee:	55                   	push   %ebp
  105fef:	89 e5                	mov    %esp,%ebp
  105ff1:	83 ec 08             	sub    $0x8,%esp
  105ff4:	a1 a4 26 14 00       	mov    0x1426a4,%eax
  105ff9:	83 f8 01             	cmp    $0x1,%eax
  105ffc:	75 10                	jne    10600e <kmalloc_a+0x20>
  105ffe:	83 ec 0c             	sub    $0xc,%esp
  106001:	ff 75 08             	push   0x8(%ebp)
  106004:	e8 4a fb ff ff       	call   105b53 <kheap_malloc_a>
  106009:	83 c4 10             	add    $0x10,%esp
  10600c:	eb 12                	jmp    106020 <kmalloc_a+0x32>
  10600e:	83 ec 04             	sub    $0x4,%esp
  106011:	6a 00                	push   $0x0
  106013:	6a 01                	push   $0x1
  106015:	ff 75 08             	push   0x8(%ebp)
  106018:	e8 fa fc ff ff       	call   105d17 <__kmalloc__>
  10601d:	83 c4 10             	add    $0x10,%esp
  106020:	c9                   	leave  
  106021:	c3                   	ret    

00106022 <kmalloc_ap>:
  106022:	55                   	push   %ebp
  106023:	89 e5                	mov    %esp,%ebp
  106025:	83 ec 08             	sub    $0x8,%esp
  106028:	a1 a4 26 14 00       	mov    0x1426a4,%eax
  10602d:	83 f8 01             	cmp    $0x1,%eax
  106030:	75 13                	jne    106045 <kmalloc_ap+0x23>
  106032:	83 ec 08             	sub    $0x8,%esp
  106035:	ff 75 0c             	push   0xc(%ebp)
  106038:	ff 75 08             	push   0x8(%ebp)
  10603b:	e8 2d fb ff ff       	call   105b6d <kheap_malloc_ap>
  106040:	83 c4 10             	add    $0x10,%esp
  106043:	eb 13                	jmp    106058 <kmalloc_ap+0x36>
  106045:	83 ec 04             	sub    $0x4,%esp
  106048:	ff 75 0c             	push   0xc(%ebp)
  10604b:	6a 01                	push   $0x1
  10604d:	ff 75 08             	push   0x8(%ebp)
  106050:	e8 c2 fc ff ff       	call   105d17 <__kmalloc__>
  106055:	83 c4 10             	add    $0x10,%esp
  106058:	c9                   	leave  
  106059:	c3                   	ret    

0010605a <kfree>:
  10605a:	55                   	push   %ebp
  10605b:	89 e5                	mov    %esp,%ebp
  10605d:	83 ec 08             	sub    $0x8,%esp
  106060:	a1 a4 26 14 00       	mov    0x1426a4,%eax
  106065:	83 f8 01             	cmp    $0x1,%eax
  106068:	75 0e                	jne    106078 <kfree+0x1e>
  10606a:	83 ec 0c             	sub    $0xc,%esp
  10606d:	ff 75 08             	push   0x8(%ebp)
  106070:	e8 13 fb ff ff       	call   105b88 <kheap_free>
  106075:	83 c4 10             	add    $0x10,%esp
  106078:	c9                   	leave  
  106079:	c3                   	ret    

0010607a <memory_enable_heap_malloc>:
  10607a:	55                   	push   %ebp
  10607b:	89 e5                	mov    %esp,%ebp
  10607d:	c7 05 a4 26 14 00 01 	movl   $0x1,0x1426a4
  106084:	00 00 00 
  106087:	90                   	nop
  106088:	5d                   	pop    %ebp
  106089:	c3                   	ret    

0010608a <new_page_table>:
  10608a:	55                   	push   %ebp
  10608b:	89 e5                	mov    %esp,%ebp
  10608d:	83 ec 18             	sub    $0x18,%esp
  106090:	83 ec 08             	sub    $0x8,%esp
  106093:	ff 75 08             	push   0x8(%ebp)
  106096:	68 00 10 00 00       	push   $0x1000
  10609b:	e8 82 ff ff ff       	call   106022 <kmalloc_ap>
  1060a0:	83 c4 10             	add    $0x10,%esp
  1060a3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1060a6:	83 ec 04             	sub    $0x4,%esp
  1060a9:	68 00 10 00 00       	push   $0x1000
  1060ae:	6a 00                	push   $0x0
  1060b0:	ff 75 f4             	push   -0xc(%ebp)
  1060b3:	e8 8e 37 00 00       	call   109846 <memset>
  1060b8:	83 c4 10             	add    $0x10,%esp
  1060bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1060be:	c9                   	leave  
  1060bf:	c3                   	ret    

001060c0 <clone_table>:
  1060c0:	55                   	push   %ebp
  1060c1:	89 e5                	mov    %esp,%ebp
  1060c3:	53                   	push   %ebx
  1060c4:	83 ec 14             	sub    $0x14,%esp
  1060c7:	83 ec 0c             	sub    $0xc,%esp
  1060ca:	ff 75 0c             	push   0xc(%ebp)
  1060cd:	e8 b8 ff ff ff       	call   10608a <new_page_table>
  1060d2:	83 c4 10             	add    $0x10,%esp
  1060d5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1060d8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1060df:	e9 50 01 00 00       	jmp    106234 <clone_table+0x174>
  1060e4:	8b 45 08             	mov    0x8(%ebp),%eax
  1060e7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1060ea:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1060ed:	c1 e8 0c             	shr    $0xc,%eax
  1060f0:	85 c0                	test   %eax,%eax
  1060f2:	0f 84 38 01 00 00    	je     106230 <clone_table+0x170>
  1060f8:	e8 83 fd ff ff       	call   105e80 <memory_next_available_frame>
  1060fd:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106100:	83 ec 0c             	sub    $0xc,%esp
  106103:	ff 75 ec             	push   -0x14(%ebp)
  106106:	e8 04 fe ff ff       	call   105f0f <memory_acquire_frame>
  10610b:	83 c4 10             	add    $0x10,%esp
  10610e:	8b 45 08             	mov    0x8(%ebp),%eax
  106111:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106114:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  106118:	83 e0 01             	and    $0x1,%eax
  10611b:	89 c1                	mov    %eax,%ecx
  10611d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106120:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106123:	89 cb                	mov    %ecx,%ebx
  106125:	83 e3 01             	and    $0x1,%ebx
  106128:	0f b6 0c 90          	movzbl (%eax,%edx,4),%ecx
  10612c:	83 e1 fe             	and    $0xfffffffe,%ecx
  10612f:	09 d9                	or     %ebx,%ecx
  106131:	88 0c 90             	mov    %cl,(%eax,%edx,4)
  106134:	8b 45 08             	mov    0x8(%ebp),%eax
  106137:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10613a:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  10613e:	d0 e8                	shr    %al
  106140:	83 e0 01             	and    $0x1,%eax
  106143:	8b 55 f0             	mov    -0x10(%ebp),%edx
  106146:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  106149:	83 e0 01             	and    $0x1,%eax
  10614c:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
  10614f:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  106153:	83 e0 fd             	and    $0xfffffffd,%eax
  106156:	09 d8                	or     %ebx,%eax
  106158:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  10615b:	8b 45 08             	mov    0x8(%ebp),%eax
  10615e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106161:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  106165:	c0 e8 02             	shr    $0x2,%al
  106168:	83 e0 01             	and    $0x1,%eax
  10616b:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10616e:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  106171:	83 e0 01             	and    $0x1,%eax
  106174:	8d 1c 85 00 00 00 00 	lea    0x0(,%eax,4),%ebx
  10617b:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  10617f:	83 e0 fb             	and    $0xfffffffb,%eax
  106182:	09 d8                	or     %ebx,%eax
  106184:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  106187:	8b 45 08             	mov    0x8(%ebp),%eax
  10618a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10618d:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  106191:	c0 e8 03             	shr    $0x3,%al
  106194:	83 e0 01             	and    $0x1,%eax
  106197:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10619a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10619d:	83 e0 01             	and    $0x1,%eax
  1061a0:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  1061a7:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  1061ab:	83 e0 f7             	and    $0xfffffff7,%eax
  1061ae:	09 d8                	or     %ebx,%eax
  1061b0:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  1061b3:	8b 45 08             	mov    0x8(%ebp),%eax
  1061b6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1061b9:	0f b6 04 90          	movzbl (%eax,%edx,4),%eax
  1061bd:	c0 e8 04             	shr    $0x4,%al
  1061c0:	83 e0 01             	and    $0x1,%eax
  1061c3:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1061c6:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1061c9:	83 e0 01             	and    $0x1,%eax
  1061cc:	c1 e0 04             	shl    $0x4,%eax
  1061cf:	89 c3                	mov    %eax,%ebx
  1061d1:	0f b6 04 8a          	movzbl (%edx,%ecx,4),%eax
  1061d5:	83 e0 ef             	and    $0xffffffef,%eax
  1061d8:	09 d8                	or     %ebx,%eax
  1061da:	88 04 8a             	mov    %al,(%edx,%ecx,4)
  1061dd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1061e0:	c1 e8 0c             	shr    $0xc,%eax
  1061e3:	25 ff ff 0f 00       	and    $0xfffff,%eax
  1061e8:	89 c1                	mov    %eax,%ecx
  1061ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1061ed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1061f0:	89 cb                	mov    %ecx,%ebx
  1061f2:	c1 e3 0c             	shl    $0xc,%ebx
  1061f5:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  1061f8:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
  1061fe:	09 d9                	or     %ebx,%ecx
  106200:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  106203:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106206:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106209:	8b 04 90             	mov    (%eax,%edx,4),%eax
  10620c:	c1 e8 0c             	shr    $0xc,%eax
  10620f:	c1 e0 0c             	shl    $0xc,%eax
  106212:	89 c1                	mov    %eax,%ecx
  106214:	8b 45 08             	mov    0x8(%ebp),%eax
  106217:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10621a:	8b 04 90             	mov    (%eax,%edx,4),%eax
  10621d:	c1 e8 0c             	shr    $0xc,%eax
  106220:	c1 e0 0c             	shl    $0xc,%eax
  106223:	83 ec 08             	sub    $0x8,%esp
  106226:	51                   	push   %ecx
  106227:	50                   	push   %eax
  106228:	e8 2b af ff ff       	call   101158 <copy_page_physical>
  10622d:	83 c4 10             	add    $0x10,%esp
  106230:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  106234:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  10623b:	0f 86 a3 fe ff ff    	jbe    1060e4 <clone_table+0x24>
  106241:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106244:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106247:	c9                   	leave  
  106248:	c3                   	ret    

00106249 <paging_init>:
  106249:	55                   	push   %ebp
  10624a:	89 e5                	mov    %esp,%ebp
  10624c:	56                   	push   %esi
  10624d:	53                   	push   %ebx
  10624e:	83 ec 20             	sub    $0x20,%esp
  106251:	83 ec 0c             	sub    $0xc,%esp
  106254:	68 04 20 00 00       	push   $0x2004
  106259:	e8 90 fd ff ff       	call   105fee <kmalloc_a>
  10625e:	83 c4 10             	add    $0x10,%esp
  106261:	a3 a8 26 14 00       	mov    %eax,0x1426a8
  106266:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  10626b:	83 ec 04             	sub    $0x4,%esp
  10626e:	68 04 20 00 00       	push   $0x2004
  106273:	6a 00                	push   $0x0
  106275:	50                   	push   %eax
  106276:	e8 cb 35 00 00       	call   109846 <memset>
  10627b:	83 c4 10             	add    $0x10,%esp
  10627e:	e8 29 fd ff ff       	call   105fac <memory_create_heap>
  106283:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10628a:	e9 d9 00 00 00       	jmp    106368 <paging_init+0x11f>
  10628f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  106296:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  10629d:	83 ec 04             	sub    $0x4,%esp
  1062a0:	8d 45 e8             	lea    -0x18(%ebp),%eax
  1062a3:	50                   	push   %eax
  1062a4:	8d 45 ec             	lea    -0x14(%ebp),%eax
  1062a7:	50                   	push   %eax
  1062a8:	ff 75 f4             	push   -0xc(%ebp)
  1062ab:	e8 51 04 00 00       	call   106701 <paging_get_page>
  1062b0:	83 c4 10             	add    $0x10,%esp
  1062b3:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  1062b8:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1062bb:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1062be:	85 c0                	test   %eax,%eax
  1062c0:	75 39                	jne    1062fb <paging_init+0xb2>
  1062c2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1062c9:	8b 1d a8 26 14 00    	mov    0x1426a8,%ebx
  1062cf:	8b 75 ec             	mov    -0x14(%ebp),%esi
  1062d2:	83 ec 0c             	sub    $0xc,%esp
  1062d5:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  1062d8:	50                   	push   %eax
  1062d9:	e8 ac fd ff ff       	call   10608a <new_page_table>
  1062de:	83 c4 10             	add    $0x10,%esp
  1062e1:	89 04 b3             	mov    %eax,(%ebx,%esi,4)
  1062e4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1062e7:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  1062ec:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1062ef:	83 c9 07             	or     $0x7,%ecx
  1062f2:	81 c2 00 04 00 00    	add    $0x400,%edx
  1062f8:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  1062fb:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  106300:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106303:	8b 14 90             	mov    (%eax,%edx,4),%edx
  106306:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106309:	c1 e0 02             	shl    $0x2,%eax
  10630c:	01 d0                	add    %edx,%eax
  10630e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106311:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106314:	0f b6 10             	movzbl (%eax),%edx
  106317:	83 ca 01             	or     $0x1,%edx
  10631a:	88 10                	mov    %dl,(%eax)
  10631c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10631f:	0f b6 10             	movzbl (%eax),%edx
  106322:	83 e2 fd             	and    $0xfffffffd,%edx
  106325:	88 10                	mov    %dl,(%eax)
  106327:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10632a:	0f b6 10             	movzbl (%eax),%edx
  10632d:	83 e2 fb             	and    $0xfffffffb,%edx
  106330:	88 10                	mov    %dl,(%eax)
  106332:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106335:	c1 e8 0c             	shr    $0xc,%eax
  106338:	25 ff ff 0f 00       	and    $0xfffff,%eax
  10633d:	89 c2                	mov    %eax,%edx
  10633f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106342:	89 d1                	mov    %edx,%ecx
  106344:	c1 e1 0c             	shl    $0xc,%ecx
  106347:	8b 10                	mov    (%eax),%edx
  106349:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  10634f:	09 ca                	or     %ecx,%edx
  106351:	89 10                	mov    %edx,(%eax)
  106353:	83 ec 0c             	sub    $0xc,%esp
  106356:	ff 75 f4             	push   -0xc(%ebp)
  106359:	e8 b1 fb ff ff       	call   105f0f <memory_acquire_frame>
  10635e:	83 c4 10             	add    $0x10,%esp
  106361:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  106368:	e8 09 fb ff ff       	call   105e76 <memory_get_alloc_addr>
  10636d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  106370:	0f 86 19 ff ff ff    	jbe    10628f <paging_init+0x46>
  106376:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  10637b:	83 ec 04             	sub    $0x4,%esp
  10637e:	50                   	push   %eax
  10637f:	68 00 00 00 c1       	push   $0xc1000000
  106384:	68 00 00 00 c0       	push   $0xc0000000
  106389:	e8 47 02 00 00       	call   1065d5 <paging_map>
  10638e:	83 c4 10             	add    $0x10,%esp
  106391:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  106396:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  10639c:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  1063a1:	89 90 00 20 00 00    	mov    %edx,0x2000(%eax)
  1063a7:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  1063ac:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  1063b2:	83 ec 0c             	sub    $0xc,%esp
  1063b5:	50                   	push   %eax
  1063b6:	e8 8f ad ff ff       	call   10114a <load_page_directory>
  1063bb:	83 c4 10             	add    $0x10,%esp
  1063be:	e8 75 ad ff ff       	call   101138 <enable_paging>
  1063c3:	e8 b2 fc ff ff       	call   10607a <memory_enable_heap_malloc>
  1063c8:	83 ec 0c             	sub    $0xc,%esp
  1063cb:	68 80 22 14 00       	push   $0x142280
  1063d0:	e8 93 27 00 00       	call   108b68 <__redirect_printf__>
  1063d5:	83 c4 10             	add    $0x10,%esp
  1063d8:	83 ec 0c             	sub    $0xc,%esp
  1063db:	68 a6 a9 10 00       	push   $0x10a9a6
  1063e0:	e8 70 30 00 00       	call   109455 <printf>
  1063e5:	83 c4 10             	add    $0x10,%esp
  1063e8:	83 ec 0c             	sub    $0xc,%esp
  1063eb:	6a 00                	push   $0x0
  1063ed:	e8 76 27 00 00       	call   108b68 <__redirect_printf__>
  1063f2:	83 c4 10             	add    $0x10,%esp
  1063f5:	83 ec 0c             	sub    $0xc,%esp
  1063f8:	8d 45 de             	lea    -0x22(%ebp),%eax
  1063fb:	50                   	push   %eax
  1063fc:	e8 9e c6 ff ff       	call   102a9f <cmos_read_rtc>
  106401:	83 c4 10             	add    $0x10,%esp
  106404:	83 ec 04             	sub    $0x4,%esp
  106407:	68 6c 26 14 00       	push   $0x14266c
  10640c:	83 ec 08             	sub    $0x8,%esp
  10640f:	89 e0                	mov    %esp,%eax
  106411:	8b 55 de             	mov    -0x22(%ebp),%edx
  106414:	89 10                	mov    %edx,(%eax)
  106416:	0f b7 55 e2          	movzwl -0x1e(%ebp),%edx
  10641a:	66 89 50 04          	mov    %dx,0x4(%eax)
  10641e:	e8 a1 eb ff ff       	call   104fc4 <cmos_datetime_to_str>
  106423:	83 c4 10             	add    $0x10,%esp
  106426:	83 ec 0c             	sub    $0xc,%esp
  106429:	68 80 1e 14 00       	push   $0x141e80
  10642e:	e8 35 27 00 00       	call   108b68 <__redirect_printf__>
  106433:	83 c4 10             	add    $0x10,%esp
  106436:	83 ec 04             	sub    $0x4,%esp
  106439:	68 80 22 14 00       	push   $0x142280
  10643e:	68 6c 26 14 00       	push   $0x14266c
  106443:	68 b8 a9 10 00       	push   $0x10a9b8
  106448:	e8 08 30 00 00       	call   109455 <printf>
  10644d:	83 c4 10             	add    $0x10,%esp
  106450:	83 ec 0c             	sub    $0xc,%esp
  106453:	6a 00                	push   $0x0
  106455:	e8 0e 27 00 00       	call   108b68 <__redirect_printf__>
  10645a:	83 c4 10             	add    $0x10,%esp
  10645d:	83 ec 08             	sub    $0x8,%esp
  106460:	68 80 1e 14 00       	push   $0x141e80
  106465:	68 f8 03 00 00       	push   $0x3f8
  10646a:	e8 4a c1 ff ff       	call   1025b9 <com_write>
  10646f:	83 c4 10             	add    $0x10,%esp
  106472:	83 ec 04             	sub    $0x4,%esp
  106475:	68 00 04 00 00       	push   $0x400
  10647a:	6a 00                	push   $0x0
  10647c:	68 80 1e 14 00       	push   $0x141e80
  106481:	e8 c0 33 00 00       	call   109846 <memset>
  106486:	83 c4 10             	add    $0x10,%esp
  106489:	83 ec 04             	sub    $0x4,%esp
  10648c:	68 ec 03 00 00       	push   $0x3ec
  106491:	6a 00                	push   $0x0
  106493:	68 80 22 14 00       	push   $0x142280
  106498:	e8 a9 33 00 00       	call   109846 <memset>
  10649d:	83 c4 10             	add    $0x10,%esp
  1064a0:	83 ec 04             	sub    $0x4,%esp
  1064a3:	6a 14                	push   $0x14
  1064a5:	6a 00                	push   $0x0
  1064a7:	68 6c 26 14 00       	push   $0x14266c
  1064ac:	e8 95 33 00 00       	call   109846 <memset>
  1064b1:	83 c4 10             	add    $0x10,%esp
  1064b4:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  1064b9:	83 ec 0c             	sub    $0xc,%esp
  1064bc:	50                   	push   %eax
  1064bd:	e8 7e 02 00 00       	call   106740 <paging_clone_directory>
  1064c2:	83 c4 10             	add    $0x10,%esp
  1064c5:	a3 ac 26 14 00       	mov    %eax,0x1426ac
  1064ca:	a1 ac 26 14 00       	mov    0x1426ac,%eax
  1064cf:	8b 80 00 20 00 00    	mov    0x2000(%eax),%eax
  1064d5:	83 ec 0c             	sub    $0xc,%esp
  1064d8:	50                   	push   %eax
  1064d9:	e8 6c ac ff ff       	call   10114a <load_page_directory>
  1064de:	83 c4 10             	add    $0x10,%esp
  1064e1:	83 ec 0c             	sub    $0xc,%esp
  1064e4:	68 80 22 14 00       	push   $0x142280
  1064e9:	e8 7a 26 00 00       	call   108b68 <__redirect_printf__>
  1064ee:	83 c4 10             	add    $0x10,%esp
  1064f1:	83 ec 0c             	sub    $0xc,%esp
  1064f4:	68 be a9 10 00       	push   $0x10a9be
  1064f9:	e8 57 2f 00 00       	call   109455 <printf>
  1064fe:	83 c4 10             	add    $0x10,%esp
  106501:	83 ec 0c             	sub    $0xc,%esp
  106504:	6a 00                	push   $0x0
  106506:	e8 5d 26 00 00       	call   108b68 <__redirect_printf__>
  10650b:	83 c4 10             	add    $0x10,%esp
  10650e:	83 ec 0c             	sub    $0xc,%esp
  106511:	8d 45 d8             	lea    -0x28(%ebp),%eax
  106514:	50                   	push   %eax
  106515:	e8 85 c5 ff ff       	call   102a9f <cmos_read_rtc>
  10651a:	83 c4 10             	add    $0x10,%esp
  10651d:	83 ec 04             	sub    $0x4,%esp
  106520:	68 6c 26 14 00       	push   $0x14266c
  106525:	83 ec 08             	sub    $0x8,%esp
  106528:	89 e0                	mov    %esp,%eax
  10652a:	8b 55 d8             	mov    -0x28(%ebp),%edx
  10652d:	89 10                	mov    %edx,(%eax)
  10652f:	0f b7 55 dc          	movzwl -0x24(%ebp),%edx
  106533:	66 89 50 04          	mov    %dx,0x4(%eax)
  106537:	e8 88 ea ff ff       	call   104fc4 <cmos_datetime_to_str>
  10653c:	83 c4 10             	add    $0x10,%esp
  10653f:	83 ec 0c             	sub    $0xc,%esp
  106542:	68 80 1e 14 00       	push   $0x141e80
  106547:	e8 1c 26 00 00       	call   108b68 <__redirect_printf__>
  10654c:	83 c4 10             	add    $0x10,%esp
  10654f:	83 ec 04             	sub    $0x4,%esp
  106552:	68 80 22 14 00       	push   $0x142280
  106557:	68 6c 26 14 00       	push   $0x14266c
  10655c:	68 b8 a9 10 00       	push   $0x10a9b8
  106561:	e8 ef 2e 00 00       	call   109455 <printf>
  106566:	83 c4 10             	add    $0x10,%esp
  106569:	83 ec 0c             	sub    $0xc,%esp
  10656c:	6a 00                	push   $0x0
  10656e:	e8 f5 25 00 00       	call   108b68 <__redirect_printf__>
  106573:	83 c4 10             	add    $0x10,%esp
  106576:	83 ec 08             	sub    $0x8,%esp
  106579:	68 80 1e 14 00       	push   $0x141e80
  10657e:	68 f8 03 00 00       	push   $0x3f8
  106583:	e8 31 c0 ff ff       	call   1025b9 <com_write>
  106588:	83 c4 10             	add    $0x10,%esp
  10658b:	83 ec 04             	sub    $0x4,%esp
  10658e:	68 00 04 00 00       	push   $0x400
  106593:	6a 00                	push   $0x0
  106595:	68 80 1e 14 00       	push   $0x141e80
  10659a:	e8 a7 32 00 00       	call   109846 <memset>
  10659f:	83 c4 10             	add    $0x10,%esp
  1065a2:	83 ec 04             	sub    $0x4,%esp
  1065a5:	68 ec 03 00 00       	push   $0x3ec
  1065aa:	6a 00                	push   $0x0
  1065ac:	68 80 22 14 00       	push   $0x142280
  1065b1:	e8 90 32 00 00       	call   109846 <memset>
  1065b6:	83 c4 10             	add    $0x10,%esp
  1065b9:	83 ec 04             	sub    $0x4,%esp
  1065bc:	6a 14                	push   $0x14
  1065be:	6a 00                	push   $0x0
  1065c0:	68 6c 26 14 00       	push   $0x14266c
  1065c5:	e8 7c 32 00 00       	call   109846 <memset>
  1065ca:	83 c4 10             	add    $0x10,%esp
  1065cd:	90                   	nop
  1065ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1065d1:	5b                   	pop    %ebx
  1065d2:	5e                   	pop    %esi
  1065d3:	5d                   	pop    %ebp
  1065d4:	c3                   	ret    

001065d5 <paging_map>:
  1065d5:	55                   	push   %ebp
  1065d6:	89 e5                	mov    %esp,%ebp
  1065d8:	53                   	push   %ebx
  1065d9:	83 ec 24             	sub    $0x24,%esp
  1065dc:	8b 45 08             	mov    0x8(%ebp),%eax
  1065df:	25 ff 0f 00 00       	and    $0xfff,%eax
  1065e4:	85 c0                	test   %eax,%eax
  1065e6:	74 07                	je     1065ef <paging_map+0x1a>
  1065e8:	81 65 08 00 f0 ff ff 	andl   $0xfffff000,0x8(%ebp)
  1065ef:	8b 45 0c             	mov    0xc(%ebp),%eax
  1065f2:	25 ff 0f 00 00       	and    $0xfff,%eax
  1065f7:	85 c0                	test   %eax,%eax
  1065f9:	74 0e                	je     106609 <paging_map+0x34>
  1065fb:	81 65 0c 00 f0 ff ff 	andl   $0xfffff000,0xc(%ebp)
  106602:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
  106609:	8b 45 08             	mov    0x8(%ebp),%eax
  10660c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10660f:	e9 da 00 00 00       	jmp    1066ee <paging_map+0x119>
  106614:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  10661b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  106622:	83 ec 04             	sub    $0x4,%esp
  106625:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  106628:	50                   	push   %eax
  106629:	8d 45 e8             	lea    -0x18(%ebp),%eax
  10662c:	50                   	push   %eax
  10662d:	ff 75 f4             	push   -0xc(%ebp)
  106630:	e8 cc 00 00 00       	call   106701 <paging_get_page>
  106635:	83 c4 10             	add    $0x10,%esp
  106638:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10663b:	8b 45 10             	mov    0x10(%ebp),%eax
  10663e:	8b 04 90             	mov    (%eax,%edx,4),%eax
  106641:	85 c0                	test   %eax,%eax
  106643:	75 36                	jne    10667b <paging_map+0xa6>
  106645:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  10664c:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  10664f:	83 ec 0c             	sub    $0xc,%esp
  106652:	8d 45 e0             	lea    -0x20(%ebp),%eax
  106655:	50                   	push   %eax
  106656:	e8 2f fa ff ff       	call   10608a <new_page_table>
  10665b:	83 c4 10             	add    $0x10,%esp
  10665e:	8b 55 10             	mov    0x10(%ebp),%edx
  106661:	89 04 9a             	mov    %eax,(%edx,%ebx,4)
  106664:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106667:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10666a:	83 c8 07             	or     $0x7,%eax
  10666d:	89 c1                	mov    %eax,%ecx
  10666f:	8b 45 10             	mov    0x10(%ebp),%eax
  106672:	81 c2 00 04 00 00    	add    $0x400,%edx
  106678:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10667b:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10667e:	8b 45 10             	mov    0x10(%ebp),%eax
  106681:	8b 14 90             	mov    (%eax,%edx,4),%edx
  106684:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106687:	c1 e0 02             	shl    $0x2,%eax
  10668a:	01 d0                	add    %edx,%eax
  10668c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10668f:	e8 ec f7 ff ff       	call   105e80 <memory_next_available_frame>
  106694:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106697:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10669a:	0f b6 10             	movzbl (%eax),%edx
  10669d:	83 ca 01             	or     $0x1,%edx
  1066a0:	88 10                	mov    %dl,(%eax)
  1066a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066a5:	0f b6 10             	movzbl (%eax),%edx
  1066a8:	83 ca 02             	or     $0x2,%edx
  1066ab:	88 10                	mov    %dl,(%eax)
  1066ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066b0:	0f b6 10             	movzbl (%eax),%edx
  1066b3:	83 e2 fb             	and    $0xfffffffb,%edx
  1066b6:	88 10                	mov    %dl,(%eax)
  1066b8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1066bb:	c1 e8 0c             	shr    $0xc,%eax
  1066be:	25 ff ff 0f 00       	and    $0xfffff,%eax
  1066c3:	89 c2                	mov    %eax,%edx
  1066c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1066c8:	89 d1                	mov    %edx,%ecx
  1066ca:	c1 e1 0c             	shl    $0xc,%ecx
  1066cd:	8b 10                	mov    (%eax),%edx
  1066cf:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  1066d5:	09 ca                	or     %ecx,%edx
  1066d7:	89 10                	mov    %edx,(%eax)
  1066d9:	83 ec 0c             	sub    $0xc,%esp
  1066dc:	ff 75 ec             	push   -0x14(%ebp)
  1066df:	e8 2b f8 ff ff       	call   105f0f <memory_acquire_frame>
  1066e4:	83 c4 10             	add    $0x10,%esp
  1066e7:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  1066ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1066f1:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1066f4:	0f 86 1a ff ff ff    	jbe    106614 <paging_map+0x3f>
  1066fa:	90                   	nop
  1066fb:	90                   	nop
  1066fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1066ff:	c9                   	leave  
  106700:	c3                   	ret    

00106701 <paging_get_page>:
  106701:	55                   	push   %ebp
  106702:	89 e5                	mov    %esp,%ebp
  106704:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  106708:	74 0d                	je     106717 <paging_get_page+0x16>
  10670a:	8b 45 08             	mov    0x8(%ebp),%eax
  10670d:	c1 e8 16             	shr    $0x16,%eax
  106710:	89 c2                	mov    %eax,%edx
  106712:	8b 45 0c             	mov    0xc(%ebp),%eax
  106715:	89 10                	mov    %edx,(%eax)
  106717:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10671b:	74 12                	je     10672f <paging_get_page+0x2e>
  10671d:	8b 45 08             	mov    0x8(%ebp),%eax
  106720:	c1 e8 0c             	shr    $0xc,%eax
  106723:	25 ff 03 00 00       	and    $0x3ff,%eax
  106728:	89 c2                	mov    %eax,%edx
  10672a:	8b 45 10             	mov    0x10(%ebp),%eax
  10672d:	89 10                	mov    %edx,(%eax)
  10672f:	90                   	nop
  106730:	5d                   	pop    %ebp
  106731:	c3                   	ret    

00106732 <paging_flush_tlb>:
  106732:	55                   	push   %ebp
  106733:	89 e5                	mov    %esp,%ebp
  106735:	83 ec 08             	sub    $0x8,%esp
  106738:	e8 53 aa ff ff       	call   101190 <flush_tlb>
  10673d:	90                   	nop
  10673e:	c9                   	leave  
  10673f:	c3                   	ret    

00106740 <paging_clone_directory>:
  106740:	55                   	push   %ebp
  106741:	89 e5                	mov    %esp,%ebp
  106743:	83 ec 28             	sub    $0x28,%esp
  106746:	83 ec 08             	sub    $0x8,%esp
  106749:	8d 45 e8             	lea    -0x18(%ebp),%eax
  10674c:	50                   	push   %eax
  10674d:	68 04 20 00 00       	push   $0x2004
  106752:	e8 cb f8 ff ff       	call   106022 <kmalloc_ap>
  106757:	83 c4 10             	add    $0x10,%esp
  10675a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10675d:	83 ec 04             	sub    $0x4,%esp
  106760:	68 04 20 00 00       	push   $0x2004
  106765:	6a 00                	push   $0x0
  106767:	ff 75 f0             	push   -0x10(%ebp)
  10676a:	e8 d7 30 00 00       	call   109846 <memset>
  10676f:	83 c4 10             	add    $0x10,%esp
  106772:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  106779:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10677c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10677f:	01 c2                	add    %eax,%edx
  106781:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106784:	89 90 00 20 00 00    	mov    %edx,0x2000(%eax)
  10678a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  106791:	e9 98 00 00 00       	jmp    10682e <paging_clone_directory+0xee>
  106796:	8b 45 08             	mov    0x8(%ebp),%eax
  106799:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10679c:	8b 04 90             	mov    (%eax,%edx,4),%eax
  10679f:	85 c0                	test   %eax,%eax
  1067a1:	0f 84 83 00 00 00    	je     10682a <paging_clone_directory+0xea>
  1067a7:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  1067ac:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067af:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  1067b2:	8b 45 08             	mov    0x8(%ebp),%eax
  1067b5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067b8:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1067bb:	39 c1                	cmp    %eax,%ecx
  1067bd:	75 32                	jne    1067f1 <paging_clone_directory+0xb1>
  1067bf:	8b 45 08             	mov    0x8(%ebp),%eax
  1067c2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067c5:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
  1067c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1067cb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067ce:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  1067d1:	8b 45 08             	mov    0x8(%ebp),%eax
  1067d4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067d7:	81 c2 00 04 00 00    	add    $0x400,%edx
  1067dd:	8b 14 90             	mov    (%eax,%edx,4),%edx
  1067e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1067e3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1067e6:	81 c1 00 04 00 00    	add    $0x400,%ecx
  1067ec:	89 14 88             	mov    %edx,(%eax,%ecx,4)
  1067ef:	eb 39                	jmp    10682a <paging_clone_directory+0xea>
  1067f1:	8b 45 08             	mov    0x8(%ebp),%eax
  1067f4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1067f7:	8b 04 90             	mov    (%eax,%edx,4),%eax
  1067fa:	83 ec 08             	sub    $0x8,%esp
  1067fd:	8d 55 e4             	lea    -0x1c(%ebp),%edx
  106800:	52                   	push   %edx
  106801:	50                   	push   %eax
  106802:	e8 b9 f8 ff ff       	call   1060c0 <clone_table>
  106807:	83 c4 10             	add    $0x10,%esp
  10680a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10680d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  106810:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
  106813:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106816:	83 c8 07             	or     $0x7,%eax
  106819:	89 c1                	mov    %eax,%ecx
  10681b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10681e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106821:	81 c2 00 04 00 00    	add    $0x400,%edx
  106827:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10682a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10682e:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  106835:	0f 86 5b ff ff ff    	jbe    106796 <paging_clone_directory+0x56>
  10683b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10683e:	c9                   	leave  
  10683f:	c3                   	ret    

00106840 <paging_current_page_directory>:
  106840:	55                   	push   %ebp
  106841:	89 e5                	mov    %esp,%ebp
  106843:	a1 ac 26 14 00       	mov    0x1426ac,%eax
  106848:	5d                   	pop    %ebp
  106849:	c3                   	ret    

0010684a <paging_kernel_page_directory>:
  10684a:	55                   	push   %ebp
  10684b:	89 e5                	mov    %esp,%ebp
  10684d:	a1 a8 26 14 00       	mov    0x1426a8,%eax
  106852:	5d                   	pop    %ebp
  106853:	c3                   	ret    

00106854 <paging_set_current_page_directory>:
  106854:	55                   	push   %ebp
  106855:	89 e5                	mov    %esp,%ebp
  106857:	8b 45 08             	mov    0x8(%ebp),%eax
  10685a:	a3 ac 26 14 00       	mov    %eax,0x1426ac
  10685f:	90                   	nop
  106860:	5d                   	pop    %ebp
  106861:	c3                   	ret    

00106862 <tasking_init>:
  106862:	55                   	push   %ebp
  106863:	89 e5                	mov    %esp,%ebp
  106865:	53                   	push   %ebx
  106866:	83 ec 14             	sub    $0x14,%esp
  106869:	e8 2b 9e ff ff       	call   100699 <cli>
  10686e:	c7 05 b4 26 14 00 01 	movl   $0x1,0x1426b4
  106875:	00 00 00 
  106878:	8b 45 08             	mov    0x8(%ebp),%eax
  10687b:	a3 b0 26 14 00       	mov    %eax,0x1426b0
  106880:	83 ec 0c             	sub    $0xc,%esp
  106883:	68 80 22 14 00       	push   $0x142280
  106888:	e8 db 22 00 00       	call   108b68 <__redirect_printf__>
  10688d:	83 c4 10             	add    $0x10,%esp
  106890:	a1 b0 26 14 00       	mov    0x1426b0,%eax
  106895:	83 ec 08             	sub    $0x8,%esp
  106898:	50                   	push   %eax
  106899:	68 d8 a9 10 00       	push   $0x10a9d8
  10689e:	e8 b2 2b 00 00       	call   109455 <printf>
  1068a3:	83 c4 10             	add    $0x10,%esp
  1068a6:	83 ec 0c             	sub    $0xc,%esp
  1068a9:	6a 00                	push   $0x0
  1068ab:	e8 b8 22 00 00       	call   108b68 <__redirect_printf__>
  1068b0:	83 c4 10             	add    $0x10,%esp
  1068b3:	83 ec 0c             	sub    $0xc,%esp
  1068b6:	8d 45 f2             	lea    -0xe(%ebp),%eax
  1068b9:	50                   	push   %eax
  1068ba:	e8 e0 c1 ff ff       	call   102a9f <cmos_read_rtc>
  1068bf:	83 c4 10             	add    $0x10,%esp
  1068c2:	83 ec 04             	sub    $0x4,%esp
  1068c5:	68 6c 26 14 00       	push   $0x14266c
  1068ca:	83 ec 08             	sub    $0x8,%esp
  1068cd:	89 e0                	mov    %esp,%eax
  1068cf:	8b 55 f2             	mov    -0xe(%ebp),%edx
  1068d2:	89 10                	mov    %edx,(%eax)
  1068d4:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  1068d8:	66 89 50 04          	mov    %dx,0x4(%eax)
  1068dc:	e8 e3 e6 ff ff       	call   104fc4 <cmos_datetime_to_str>
  1068e1:	83 c4 10             	add    $0x10,%esp
  1068e4:	83 ec 0c             	sub    $0xc,%esp
  1068e7:	68 80 1e 14 00       	push   $0x141e80
  1068ec:	e8 77 22 00 00       	call   108b68 <__redirect_printf__>
  1068f1:	83 c4 10             	add    $0x10,%esp
  1068f4:	83 ec 04             	sub    $0x4,%esp
  1068f7:	68 80 22 14 00       	push   $0x142280
  1068fc:	68 6c 26 14 00       	push   $0x14266c
  106901:	68 03 aa 10 00       	push   $0x10aa03
  106906:	e8 4a 2b 00 00       	call   109455 <printf>
  10690b:	83 c4 10             	add    $0x10,%esp
  10690e:	83 ec 0c             	sub    $0xc,%esp
  106911:	6a 00                	push   $0x0
  106913:	e8 50 22 00 00       	call   108b68 <__redirect_printf__>
  106918:	83 c4 10             	add    $0x10,%esp
  10691b:	83 ec 08             	sub    $0x8,%esp
  10691e:	68 80 1e 14 00       	push   $0x141e80
  106923:	68 f8 03 00 00       	push   $0x3f8
  106928:	e8 8c bc ff ff       	call   1025b9 <com_write>
  10692d:	83 c4 10             	add    $0x10,%esp
  106930:	83 ec 04             	sub    $0x4,%esp
  106933:	68 00 04 00 00       	push   $0x400
  106938:	6a 00                	push   $0x0
  10693a:	68 80 1e 14 00       	push   $0x141e80
  10693f:	e8 02 2f 00 00       	call   109846 <memset>
  106944:	83 c4 10             	add    $0x10,%esp
  106947:	83 ec 04             	sub    $0x4,%esp
  10694a:	68 ec 03 00 00       	push   $0x3ec
  10694f:	6a 00                	push   $0x0
  106951:	68 80 22 14 00       	push   $0x142280
  106956:	e8 eb 2e 00 00       	call   109846 <memset>
  10695b:	83 c4 10             	add    $0x10,%esp
  10695e:	83 ec 04             	sub    $0x4,%esp
  106961:	6a 14                	push   $0x14
  106963:	6a 00                	push   $0x0
  106965:	68 6c 26 14 00       	push   $0x14266c
  10696a:	e8 d7 2e 00 00       	call   109846 <memset>
  10696f:	83 c4 10             	add    $0x10,%esp
  106972:	83 ec 08             	sub    $0x8,%esp
  106975:	68 00 00 02 00       	push   $0x20000
  10697a:	68 00 00 00 e0       	push   $0xe0000000
  10697f:	e8 41 04 00 00       	call   106dc5 <tasking_move_stack>
  106984:	83 c4 10             	add    $0x10,%esp
  106987:	83 ec 0c             	sub    $0xc,%esp
  10698a:	6a 18                	push   $0x18
  10698c:	e8 29 f6 ff ff       	call   105fba <kmalloc>
  106991:	83 c4 10             	add    $0x10,%esp
  106994:	a3 b8 26 14 00       	mov    %eax,0x1426b8
  106999:	8b 15 b4 26 14 00    	mov    0x1426b4,%edx
  10699f:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  1069a4:	89 10                	mov    %edx,(%eax)
  1069a6:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  1069ab:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  1069b2:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  1069b7:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  1069be:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  1069c3:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  1069ca:	8b 1d b8 26 14 00    	mov    0x1426b8,%ebx
  1069d0:	e8 6b fe ff ff       	call   106840 <paging_current_page_directory>
  1069d5:	89 43 10             	mov    %eax,0x10(%ebx)
  1069d8:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  1069dd:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  1069e4:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  1069e9:	a3 bc 26 14 00       	mov    %eax,0x1426bc
  1069ee:	a1 b4 26 14 00       	mov    0x1426b4,%eax
  1069f3:	83 c0 01             	add    $0x1,%eax
  1069f6:	a3 b4 26 14 00       	mov    %eax,0x1426b4
  1069fb:	83 ec 0c             	sub    $0xc,%esp
  1069fe:	68 80 22 14 00       	push   $0x142280
  106a03:	e8 60 21 00 00       	call   108b68 <__redirect_printf__>
  106a08:	83 c4 10             	add    $0x10,%esp
  106a0b:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106a10:	8b 00                	mov    (%eax),%eax
  106a12:	83 ec 08             	sub    $0x8,%esp
  106a15:	50                   	push   %eax
  106a16:	68 0c aa 10 00       	push   $0x10aa0c
  106a1b:	e8 35 2a 00 00       	call   109455 <printf>
  106a20:	83 c4 10             	add    $0x10,%esp
  106a23:	83 ec 0c             	sub    $0xc,%esp
  106a26:	6a 00                	push   $0x0
  106a28:	e8 3b 21 00 00       	call   108b68 <__redirect_printf__>
  106a2d:	83 c4 10             	add    $0x10,%esp
  106a30:	83 ec 0c             	sub    $0xc,%esp
  106a33:	8d 45 ec             	lea    -0x14(%ebp),%eax
  106a36:	50                   	push   %eax
  106a37:	e8 63 c0 ff ff       	call   102a9f <cmos_read_rtc>
  106a3c:	83 c4 10             	add    $0x10,%esp
  106a3f:	83 ec 04             	sub    $0x4,%esp
  106a42:	68 6c 26 14 00       	push   $0x14266c
  106a47:	83 ec 08             	sub    $0x8,%esp
  106a4a:	89 e0                	mov    %esp,%eax
  106a4c:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106a4f:	89 10                	mov    %edx,(%eax)
  106a51:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  106a55:	66 89 50 04          	mov    %dx,0x4(%eax)
  106a59:	e8 66 e5 ff ff       	call   104fc4 <cmos_datetime_to_str>
  106a5e:	83 c4 10             	add    $0x10,%esp
  106a61:	83 ec 0c             	sub    $0xc,%esp
  106a64:	68 80 1e 14 00       	push   $0x141e80
  106a69:	e8 fa 20 00 00       	call   108b68 <__redirect_printf__>
  106a6e:	83 c4 10             	add    $0x10,%esp
  106a71:	83 ec 04             	sub    $0x4,%esp
  106a74:	68 80 22 14 00       	push   $0x142280
  106a79:	68 6c 26 14 00       	push   $0x14266c
  106a7e:	68 03 aa 10 00       	push   $0x10aa03
  106a83:	e8 cd 29 00 00       	call   109455 <printf>
  106a88:	83 c4 10             	add    $0x10,%esp
  106a8b:	83 ec 0c             	sub    $0xc,%esp
  106a8e:	6a 00                	push   $0x0
  106a90:	e8 d3 20 00 00       	call   108b68 <__redirect_printf__>
  106a95:	83 c4 10             	add    $0x10,%esp
  106a98:	83 ec 08             	sub    $0x8,%esp
  106a9b:	68 80 1e 14 00       	push   $0x141e80
  106aa0:	68 f8 03 00 00       	push   $0x3f8
  106aa5:	e8 0f bb ff ff       	call   1025b9 <com_write>
  106aaa:	83 c4 10             	add    $0x10,%esp
  106aad:	83 ec 04             	sub    $0x4,%esp
  106ab0:	68 00 04 00 00       	push   $0x400
  106ab5:	6a 00                	push   $0x0
  106ab7:	68 80 1e 14 00       	push   $0x141e80
  106abc:	e8 85 2d 00 00       	call   109846 <memset>
  106ac1:	83 c4 10             	add    $0x10,%esp
  106ac4:	83 ec 04             	sub    $0x4,%esp
  106ac7:	68 ec 03 00 00       	push   $0x3ec
  106acc:	6a 00                	push   $0x0
  106ace:	68 80 22 14 00       	push   $0x142280
  106ad3:	e8 6e 2d 00 00       	call   109846 <memset>
  106ad8:	83 c4 10             	add    $0x10,%esp
  106adb:	83 ec 04             	sub    $0x4,%esp
  106ade:	6a 14                	push   $0x14
  106ae0:	6a 00                	push   $0x0
  106ae2:	68 6c 26 14 00       	push   $0x14266c
  106ae7:	e8 5a 2d 00 00       	call   109846 <memset>
  106aec:	83 c4 10             	add    $0x10,%esp
  106aef:	e8 ac 9b ff ff       	call   1006a0 <sti>
  106af4:	90                   	nop
  106af5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106af8:	c9                   	leave  
  106af9:	c3                   	ret    

00106afa <tasking_fork>:
  106afa:	55                   	push   %ebp
  106afb:	89 e5                	mov    %esp,%ebp
  106afd:	83 ec 38             	sub    $0x38,%esp
  106b00:	e8 94 9b ff ff       	call   100699 <cli>
  106b05:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106b0a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106b0d:	e8 2e fd ff ff       	call   106840 <paging_current_page_directory>
  106b12:	83 ec 0c             	sub    $0xc,%esp
  106b15:	50                   	push   %eax
  106b16:	e8 25 fc ff ff       	call   106740 <paging_clone_directory>
  106b1b:	83 c4 10             	add    $0x10,%esp
  106b1e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106b21:	83 ec 0c             	sub    $0xc,%esp
  106b24:	6a 18                	push   $0x18
  106b26:	e8 8f f4 ff ff       	call   105fba <kmalloc>
  106b2b:	83 c4 10             	add    $0x10,%esp
  106b2e:	89 45 e8             	mov    %eax,-0x18(%ebp)
  106b31:	a1 b4 26 14 00       	mov    0x1426b4,%eax
  106b36:	89 c2                	mov    %eax,%edx
  106b38:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b3b:	89 10                	mov    %edx,(%eax)
  106b3d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b40:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  106b47:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b4a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  106b51:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b54:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  106b5b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b5e:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106b61:	89 50 10             	mov    %edx,0x10(%eax)
  106b64:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106b67:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  106b6e:	a1 b4 26 14 00       	mov    0x1426b4,%eax
  106b73:	83 c0 01             	add    $0x1,%eax
  106b76:	a3 b4 26 14 00       	mov    %eax,0x1426b4
  106b7b:	a1 bc 26 14 00       	mov    0x1426bc,%eax
  106b80:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106b83:	eb 09                	jmp    106b8e <tasking_fork+0x94>
  106b85:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106b88:	8b 40 14             	mov    0x14(%eax),%eax
  106b8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106b8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106b91:	8b 40 14             	mov    0x14(%eax),%eax
  106b94:	85 c0                	test   %eax,%eax
  106b96:	75 ed                	jne    106b85 <tasking_fork+0x8b>
  106b98:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106b9b:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106b9e:	89 50 14             	mov    %edx,0x14(%eax)
  106ba1:	83 ec 0c             	sub    $0xc,%esp
  106ba4:	68 80 22 14 00       	push   $0x142280
  106ba9:	e8 ba 1f 00 00       	call   108b68 <__redirect_printf__>
  106bae:	83 c4 10             	add    $0x10,%esp
  106bb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  106bb4:	8b 40 14             	mov    0x14(%eax),%eax
  106bb7:	8b 10                	mov    (%eax),%edx
  106bb9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  106bbc:	8b 00                	mov    (%eax),%eax
  106bbe:	83 ec 04             	sub    $0x4,%esp
  106bc1:	52                   	push   %edx
  106bc2:	50                   	push   %eax
  106bc3:	68 44 aa 10 00       	push   $0x10aa44
  106bc8:	e8 88 28 00 00       	call   109455 <printf>
  106bcd:	83 c4 10             	add    $0x10,%esp
  106bd0:	83 ec 0c             	sub    $0xc,%esp
  106bd3:	6a 00                	push   $0x0
  106bd5:	e8 8e 1f 00 00       	call   108b68 <__redirect_printf__>
  106bda:	83 c4 10             	add    $0x10,%esp
  106bdd:	83 ec 0c             	sub    $0xc,%esp
  106be0:	8d 45 d6             	lea    -0x2a(%ebp),%eax
  106be3:	50                   	push   %eax
  106be4:	e8 b6 be ff ff       	call   102a9f <cmos_read_rtc>
  106be9:	83 c4 10             	add    $0x10,%esp
  106bec:	83 ec 04             	sub    $0x4,%esp
  106bef:	68 6c 26 14 00       	push   $0x14266c
  106bf4:	83 ec 08             	sub    $0x8,%esp
  106bf7:	89 e0                	mov    %esp,%eax
  106bf9:	8b 55 d6             	mov    -0x2a(%ebp),%edx
  106bfc:	89 10                	mov    %edx,(%eax)
  106bfe:	0f b7 55 da          	movzwl -0x26(%ebp),%edx
  106c02:	66 89 50 04          	mov    %dx,0x4(%eax)
  106c06:	e8 b9 e3 ff ff       	call   104fc4 <cmos_datetime_to_str>
  106c0b:	83 c4 10             	add    $0x10,%esp
  106c0e:	83 ec 0c             	sub    $0xc,%esp
  106c11:	68 80 1e 14 00       	push   $0x141e80
  106c16:	e8 4d 1f 00 00       	call   108b68 <__redirect_printf__>
  106c1b:	83 c4 10             	add    $0x10,%esp
  106c1e:	83 ec 04             	sub    $0x4,%esp
  106c21:	68 80 22 14 00       	push   $0x142280
  106c26:	68 6c 26 14 00       	push   $0x14266c
  106c2b:	68 03 aa 10 00       	push   $0x10aa03
  106c30:	e8 20 28 00 00       	call   109455 <printf>
  106c35:	83 c4 10             	add    $0x10,%esp
  106c38:	83 ec 0c             	sub    $0xc,%esp
  106c3b:	6a 00                	push   $0x0
  106c3d:	e8 26 1f 00 00       	call   108b68 <__redirect_printf__>
  106c42:	83 c4 10             	add    $0x10,%esp
  106c45:	83 ec 08             	sub    $0x8,%esp
  106c48:	68 80 1e 14 00       	push   $0x141e80
  106c4d:	68 f8 03 00 00       	push   $0x3f8
  106c52:	e8 62 b9 ff ff       	call   1025b9 <com_write>
  106c57:	83 c4 10             	add    $0x10,%esp
  106c5a:	83 ec 04             	sub    $0x4,%esp
  106c5d:	68 00 04 00 00       	push   $0x400
  106c62:	6a 00                	push   $0x0
  106c64:	68 80 1e 14 00       	push   $0x141e80
  106c69:	e8 d8 2b 00 00       	call   109846 <memset>
  106c6e:	83 c4 10             	add    $0x10,%esp
  106c71:	83 ec 04             	sub    $0x4,%esp
  106c74:	68 ec 03 00 00       	push   $0x3ec
  106c79:	6a 00                	push   $0x0
  106c7b:	68 80 22 14 00       	push   $0x142280
  106c80:	e8 c1 2b 00 00       	call   109846 <memset>
  106c85:	83 c4 10             	add    $0x10,%esp
  106c88:	83 ec 04             	sub    $0x4,%esp
  106c8b:	6a 14                	push   $0x14
  106c8d:	6a 00                	push   $0x0
  106c8f:	68 6c 26 14 00       	push   $0x14266c
  106c94:	e8 ad 2b 00 00       	call   109846 <memset>
  106c99:	83 c4 10             	add    $0x10,%esp
  106c9c:	e8 f5 a4 ff ff       	call   101196 <read_eip>
  106ca1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  106ca4:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106ca9:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  106cac:	75 31                	jne    106cdf <tasking_fork+0x1e5>
  106cae:	89 e0                	mov    %esp,%eax
  106cb0:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106cb3:	89 e8                	mov    %ebp,%eax
  106cb5:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106cb8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106cbb:	8b 55 e0             	mov    -0x20(%ebp),%edx
  106cbe:	89 50 04             	mov    %edx,0x4(%eax)
  106cc1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106cc4:	8b 55 dc             	mov    -0x24(%ebp),%edx
  106cc7:	89 50 08             	mov    %edx,0x8(%eax)
  106cca:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106ccd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  106cd0:	89 50 0c             	mov    %edx,0xc(%eax)
  106cd3:	e8 c8 99 ff ff       	call   1006a0 <sti>
  106cd8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  106cdb:	8b 00                	mov    (%eax),%eax
  106cdd:	eb 05                	jmp    106ce4 <tasking_fork+0x1ea>
  106cdf:	b8 00 00 00 00       	mov    $0x0,%eax
  106ce4:	c9                   	leave  
  106ce5:	c3                   	ret    

00106ce6 <tasking_scheduler>:
  106ce6:	55                   	push   %ebp
  106ce7:	89 e5                	mov    %esp,%ebp
  106ce9:	53                   	push   %ebx
  106cea:	83 ec 14             	sub    $0x14,%esp
  106ced:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106cf2:	85 c0                	test   %eax,%eax
  106cf4:	0f 84 b6 00 00 00    	je     106db0 <tasking_scheduler+0xca>
  106cfa:	89 e0                	mov    %esp,%eax
  106cfc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  106cff:	89 e8                	mov    %ebp,%eax
  106d01:	89 45 f0             	mov    %eax,-0x10(%ebp)
  106d04:	e8 8d a4 ff ff       	call   101196 <read_eip>
  106d09:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106d0c:	81 7d ec ed ad 10 7a 	cmpl   $0x7a10aded,-0x14(%ebp)
  106d13:	0f 84 9a 00 00 00    	je     106db3 <tasking_scheduler+0xcd>
  106d19:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d1e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  106d21:	89 50 04             	mov    %edx,0x4(%eax)
  106d24:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d29:	8b 55 f0             	mov    -0x10(%ebp),%edx
  106d2c:	89 50 08             	mov    %edx,0x8(%eax)
  106d2f:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d34:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106d37:	89 50 0c             	mov    %edx,0xc(%eax)
  106d3a:	8b 1d b8 26 14 00    	mov    0x1426b8,%ebx
  106d40:	e8 fb fa ff ff       	call   106840 <paging_current_page_directory>
  106d45:	89 43 10             	mov    %eax,0x10(%ebx)
  106d48:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d4d:	8b 40 14             	mov    0x14(%eax),%eax
  106d50:	a3 b8 26 14 00       	mov    %eax,0x1426b8
  106d55:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d5a:	85 c0                	test   %eax,%eax
  106d5c:	75 0a                	jne    106d68 <tasking_scheduler+0x82>
  106d5e:	a1 bc 26 14 00       	mov    0x1426bc,%eax
  106d63:	a3 b8 26 14 00       	mov    %eax,0x1426b8
  106d68:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d6d:	8b 40 10             	mov    0x10(%eax),%eax
  106d70:	83 ec 0c             	sub    $0xc,%esp
  106d73:	50                   	push   %eax
  106d74:	e8 db fa ff ff       	call   106854 <paging_set_current_page_directory>
  106d79:	83 c4 10             	add    $0x10,%esp
  106d7c:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d81:	8b 40 10             	mov    0x10(%eax),%eax
  106d84:	8b 98 00 20 00 00    	mov    0x2000(%eax),%ebx
  106d8a:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d8f:	8b 48 08             	mov    0x8(%eax),%ecx
  106d92:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d97:	8b 50 04             	mov    0x4(%eax),%edx
  106d9a:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106d9f:	8b 40 0c             	mov    0xc(%eax),%eax
  106da2:	53                   	push   %ebx
  106da3:	51                   	push   %ecx
  106da4:	52                   	push   %edx
  106da5:	50                   	push   %eax
  106da6:	e8 ee a3 ff ff       	call   101199 <context_switch>
  106dab:	83 c4 10             	add    $0x10,%esp
  106dae:	eb 04                	jmp    106db4 <tasking_scheduler+0xce>
  106db0:	90                   	nop
  106db1:	eb 01                	jmp    106db4 <tasking_scheduler+0xce>
  106db3:	90                   	nop
  106db4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  106db7:	c9                   	leave  
  106db8:	c3                   	ret    

00106db9 <tasking_gettid>:
  106db9:	55                   	push   %ebp
  106dba:	89 e5                	mov    %esp,%ebp
  106dbc:	a1 b8 26 14 00       	mov    0x1426b8,%eax
  106dc1:	8b 00                	mov    (%eax),%eax
  106dc3:	5d                   	pop    %ebp
  106dc4:	c3                   	ret    

00106dc5 <tasking_move_stack>:
  106dc5:	55                   	push   %ebp
  106dc6:	89 e5                	mov    %esp,%ebp
  106dc8:	83 ec 48             	sub    $0x48,%esp
  106dcb:	e8 70 fa ff ff       	call   106840 <paging_current_page_directory>
  106dd0:	8b 55 08             	mov    0x8(%ebp),%edx
  106dd3:	2b 55 0c             	sub    0xc(%ebp),%edx
  106dd6:	83 ec 04             	sub    $0x4,%esp
  106dd9:	50                   	push   %eax
  106dda:	ff 75 08             	push   0x8(%ebp)
  106ddd:	52                   	push   %edx
  106dde:	e8 f2 f7 ff ff       	call   1065d5 <paging_map>
  106de3:	83 c4 10             	add    $0x10,%esp
  106de6:	c7 45 f0 04 fe ff df 	movl   $0xdffffe04,-0x10(%ebp)
  106ded:	83 ec 04             	sub    $0x4,%esp
  106df0:	8d 45 cc             	lea    -0x34(%ebp),%eax
  106df3:	50                   	push   %eax
  106df4:	8d 45 d0             	lea    -0x30(%ebp),%eax
  106df7:	50                   	push   %eax
  106df8:	ff 75 f0             	push   -0x10(%ebp)
  106dfb:	e8 01 f9 ff ff       	call   106701 <paging_get_page>
  106e00:	83 c4 10             	add    $0x10,%esp
  106e03:	e8 2a f9 ff ff       	call   106732 <paging_flush_tlb>
  106e08:	83 ec 0c             	sub    $0xc,%esp
  106e0b:	68 80 22 14 00       	push   $0x142280
  106e10:	e8 53 1d 00 00       	call   108b68 <__redirect_printf__>
  106e15:	83 c4 10             	add    $0x10,%esp
  106e18:	83 ec 04             	sub    $0x4,%esp
  106e1b:	ff 75 0c             	push   0xc(%ebp)
  106e1e:	ff 75 08             	push   0x8(%ebp)
  106e21:	68 70 aa 10 00       	push   $0x10aa70
  106e26:	e8 2a 26 00 00       	call   109455 <printf>
  106e2b:	83 c4 10             	add    $0x10,%esp
  106e2e:	83 ec 0c             	sub    $0xc,%esp
  106e31:	6a 00                	push   $0x0
  106e33:	e8 30 1d 00 00       	call   108b68 <__redirect_printf__>
  106e38:	83 c4 10             	add    $0x10,%esp
  106e3b:	83 ec 0c             	sub    $0xc,%esp
  106e3e:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  106e41:	50                   	push   %eax
  106e42:	e8 58 bc ff ff       	call   102a9f <cmos_read_rtc>
  106e47:	83 c4 10             	add    $0x10,%esp
  106e4a:	83 ec 04             	sub    $0x4,%esp
  106e4d:	68 6c 26 14 00       	push   $0x14266c
  106e52:	83 ec 08             	sub    $0x8,%esp
  106e55:	89 e0                	mov    %esp,%eax
  106e57:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  106e5a:	89 10                	mov    %edx,(%eax)
  106e5c:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  106e60:	66 89 50 04          	mov    %dx,0x4(%eax)
  106e64:	e8 5b e1 ff ff       	call   104fc4 <cmos_datetime_to_str>
  106e69:	83 c4 10             	add    $0x10,%esp
  106e6c:	83 ec 0c             	sub    $0xc,%esp
  106e6f:	68 80 1e 14 00       	push   $0x141e80
  106e74:	e8 ef 1c 00 00       	call   108b68 <__redirect_printf__>
  106e79:	83 c4 10             	add    $0x10,%esp
  106e7c:	83 ec 04             	sub    $0x4,%esp
  106e7f:	68 80 22 14 00       	push   $0x142280
  106e84:	68 6c 26 14 00       	push   $0x14266c
  106e89:	68 03 aa 10 00       	push   $0x10aa03
  106e8e:	e8 c2 25 00 00       	call   109455 <printf>
  106e93:	83 c4 10             	add    $0x10,%esp
  106e96:	83 ec 0c             	sub    $0xc,%esp
  106e99:	6a 00                	push   $0x0
  106e9b:	e8 c8 1c 00 00       	call   108b68 <__redirect_printf__>
  106ea0:	83 c4 10             	add    $0x10,%esp
  106ea3:	83 ec 08             	sub    $0x8,%esp
  106ea6:	68 80 1e 14 00       	push   $0x141e80
  106eab:	68 f8 03 00 00       	push   $0x3f8
  106eb0:	e8 04 b7 ff ff       	call   1025b9 <com_write>
  106eb5:	83 c4 10             	add    $0x10,%esp
  106eb8:	83 ec 04             	sub    $0x4,%esp
  106ebb:	68 00 04 00 00       	push   $0x400
  106ec0:	6a 00                	push   $0x0
  106ec2:	68 80 1e 14 00       	push   $0x141e80
  106ec7:	e8 7a 29 00 00       	call   109846 <memset>
  106ecc:	83 c4 10             	add    $0x10,%esp
  106ecf:	83 ec 04             	sub    $0x4,%esp
  106ed2:	68 ec 03 00 00       	push   $0x3ec
  106ed7:	6a 00                	push   $0x0
  106ed9:	68 80 22 14 00       	push   $0x142280
  106ede:	e8 63 29 00 00       	call   109846 <memset>
  106ee3:	83 c4 10             	add    $0x10,%esp
  106ee6:	83 ec 04             	sub    $0x4,%esp
  106ee9:	6a 14                	push   $0x14
  106eeb:	6a 00                	push   $0x0
  106eed:	68 6c 26 14 00       	push   $0x14266c
  106ef2:	e8 4f 29 00 00       	call   109846 <memset>
  106ef7:	83 c4 10             	add    $0x10,%esp
  106efa:	89 e0                	mov    %esp,%eax
  106efc:	89 45 ec             	mov    %eax,-0x14(%ebp)
  106eff:	89 e8                	mov    %ebp,%eax
  106f01:	89 45 e8             	mov    %eax,-0x18(%ebp)
  106f04:	8b 15 b0 26 14 00    	mov    0x1426b0,%edx
  106f0a:	8b 45 08             	mov    0x8(%ebp),%eax
  106f0d:	29 d0                	sub    %edx,%eax
  106f0f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  106f12:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106f15:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106f18:	01 d0                	add    %edx,%eax
  106f1a:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106f1d:	8b 55 e8             	mov    -0x18(%ebp),%edx
  106f20:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106f23:	01 d0                	add    %edx,%eax
  106f25:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106f28:	a1 b0 26 14 00       	mov    0x1426b0,%eax
  106f2d:	2b 45 ec             	sub    -0x14(%ebp),%eax
  106f30:	89 c1                	mov    %eax,%ecx
  106f32:	8b 55 ec             	mov    -0x14(%ebp),%edx
  106f35:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106f38:	83 ec 04             	sub    $0x4,%esp
  106f3b:	51                   	push   %ecx
  106f3c:	52                   	push   %edx
  106f3d:	50                   	push   %eax
  106f3e:	e8 4a 28 00 00       	call   10978d <memcpy>
  106f43:	83 c4 10             	add    $0x10,%esp
  106f46:	83 ec 0c             	sub    $0xc,%esp
  106f49:	68 80 22 14 00       	push   $0x142280
  106f4e:	e8 15 1c 00 00       	call   108b68 <__redirect_printf__>
  106f53:	83 c4 10             	add    $0x10,%esp
  106f56:	83 ec 0c             	sub    $0xc,%esp
  106f59:	68 9c aa 10 00       	push   $0x10aa9c
  106f5e:	e8 f2 24 00 00       	call   109455 <printf>
  106f63:	83 c4 10             	add    $0x10,%esp
  106f66:	83 ec 0c             	sub    $0xc,%esp
  106f69:	6a 00                	push   $0x0
  106f6b:	e8 f8 1b 00 00       	call   108b68 <__redirect_printf__>
  106f70:	83 c4 10             	add    $0x10,%esp
  106f73:	83 ec 0c             	sub    $0xc,%esp
  106f76:	8d 45 c0             	lea    -0x40(%ebp),%eax
  106f79:	50                   	push   %eax
  106f7a:	e8 20 bb ff ff       	call   102a9f <cmos_read_rtc>
  106f7f:	83 c4 10             	add    $0x10,%esp
  106f82:	83 ec 04             	sub    $0x4,%esp
  106f85:	68 6c 26 14 00       	push   $0x14266c
  106f8a:	83 ec 08             	sub    $0x8,%esp
  106f8d:	89 e0                	mov    %esp,%eax
  106f8f:	8b 55 c0             	mov    -0x40(%ebp),%edx
  106f92:	89 10                	mov    %edx,(%eax)
  106f94:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  106f98:	66 89 50 04          	mov    %dx,0x4(%eax)
  106f9c:	e8 23 e0 ff ff       	call   104fc4 <cmos_datetime_to_str>
  106fa1:	83 c4 10             	add    $0x10,%esp
  106fa4:	83 ec 0c             	sub    $0xc,%esp
  106fa7:	68 80 1e 14 00       	push   $0x141e80
  106fac:	e8 b7 1b 00 00       	call   108b68 <__redirect_printf__>
  106fb1:	83 c4 10             	add    $0x10,%esp
  106fb4:	83 ec 04             	sub    $0x4,%esp
  106fb7:	68 80 22 14 00       	push   $0x142280
  106fbc:	68 6c 26 14 00       	push   $0x14266c
  106fc1:	68 03 aa 10 00       	push   $0x10aa03
  106fc6:	e8 8a 24 00 00       	call   109455 <printf>
  106fcb:	83 c4 10             	add    $0x10,%esp
  106fce:	83 ec 0c             	sub    $0xc,%esp
  106fd1:	6a 00                	push   $0x0
  106fd3:	e8 90 1b 00 00       	call   108b68 <__redirect_printf__>
  106fd8:	83 c4 10             	add    $0x10,%esp
  106fdb:	83 ec 08             	sub    $0x8,%esp
  106fde:	68 80 1e 14 00       	push   $0x141e80
  106fe3:	68 f8 03 00 00       	push   $0x3f8
  106fe8:	e8 cc b5 ff ff       	call   1025b9 <com_write>
  106fed:	83 c4 10             	add    $0x10,%esp
  106ff0:	83 ec 04             	sub    $0x4,%esp
  106ff3:	68 00 04 00 00       	push   $0x400
  106ff8:	6a 00                	push   $0x0
  106ffa:	68 80 1e 14 00       	push   $0x141e80
  106fff:	e8 42 28 00 00       	call   109846 <memset>
  107004:	83 c4 10             	add    $0x10,%esp
  107007:	83 ec 04             	sub    $0x4,%esp
  10700a:	68 ec 03 00 00       	push   $0x3ec
  10700f:	6a 00                	push   $0x0
  107011:	68 80 22 14 00       	push   $0x142280
  107016:	e8 2b 28 00 00       	call   109846 <memset>
  10701b:	83 c4 10             	add    $0x10,%esp
  10701e:	83 ec 04             	sub    $0x4,%esp
  107021:	6a 14                	push   $0x14
  107023:	6a 00                	push   $0x0
  107025:	68 6c 26 14 00       	push   $0x14266c
  10702a:	e8 17 28 00 00       	call   109846 <memset>
  10702f:	83 c4 10             	add    $0x10,%esp
  107032:	8b 45 08             	mov    0x8(%ebp),%eax
  107035:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107038:	eb 32                	jmp    10706c <tasking_move_stack+0x2a7>
  10703a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10703d:	8b 00                	mov    (%eax),%eax
  10703f:	89 45 d8             	mov    %eax,-0x28(%ebp)
  107042:	8b 45 ec             	mov    -0x14(%ebp),%eax
  107045:	3b 45 d8             	cmp    -0x28(%ebp),%eax
  107048:	73 1e                	jae    107068 <tasking_move_stack+0x2a3>
  10704a:	a1 b0 26 14 00       	mov    0x1426b0,%eax
  10704f:	39 45 d8             	cmp    %eax,-0x28(%ebp)
  107052:	73 14                	jae    107068 <tasking_move_stack+0x2a3>
  107054:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107057:	01 45 d8             	add    %eax,-0x28(%ebp)
  10705a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10705d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  107060:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  107063:	8b 55 d8             	mov    -0x28(%ebp),%edx
  107066:	89 10                	mov    %edx,(%eax)
  107068:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
  10706c:	8b 45 08             	mov    0x8(%ebp),%eax
  10706f:	2b 45 0c             	sub    0xc(%ebp),%eax
  107072:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  107075:	77 c3                	ja     10703a <tasking_move_stack+0x275>
  107077:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10707a:	89 c4                	mov    %eax,%esp
  10707c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10707f:	89 c5                	mov    %eax,%ebp
  107081:	83 ec 0c             	sub    $0xc,%esp
  107084:	68 80 22 14 00       	push   $0x142280
  107089:	e8 da 1a 00 00       	call   108b68 <__redirect_printf__>
  10708e:	83 c4 10             	add    $0x10,%esp
  107091:	83 ec 04             	sub    $0x4,%esp
  107094:	ff 75 e0             	push   -0x20(%ebp)
  107097:	ff 75 ec             	push   -0x14(%ebp)
  10709a:	68 c6 aa 10 00       	push   $0x10aac6
  10709f:	e8 b1 23 00 00       	call   109455 <printf>
  1070a4:	83 c4 10             	add    $0x10,%esp
  1070a7:	83 ec 0c             	sub    $0xc,%esp
  1070aa:	6a 00                	push   $0x0
  1070ac:	e8 b7 1a 00 00       	call   108b68 <__redirect_printf__>
  1070b1:	83 c4 10             	add    $0x10,%esp
  1070b4:	83 ec 0c             	sub    $0xc,%esp
  1070b7:	8d 45 ba             	lea    -0x46(%ebp),%eax
  1070ba:	50                   	push   %eax
  1070bb:	e8 df b9 ff ff       	call   102a9f <cmos_read_rtc>
  1070c0:	83 c4 10             	add    $0x10,%esp
  1070c3:	83 ec 04             	sub    $0x4,%esp
  1070c6:	68 6c 26 14 00       	push   $0x14266c
  1070cb:	83 ec 08             	sub    $0x8,%esp
  1070ce:	89 e0                	mov    %esp,%eax
  1070d0:	8b 55 ba             	mov    -0x46(%ebp),%edx
  1070d3:	89 10                	mov    %edx,(%eax)
  1070d5:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  1070d9:	66 89 50 04          	mov    %dx,0x4(%eax)
  1070dd:	e8 e2 de ff ff       	call   104fc4 <cmos_datetime_to_str>
  1070e2:	83 c4 10             	add    $0x10,%esp
  1070e5:	83 ec 0c             	sub    $0xc,%esp
  1070e8:	68 80 1e 14 00       	push   $0x141e80
  1070ed:	e8 76 1a 00 00       	call   108b68 <__redirect_printf__>
  1070f2:	83 c4 10             	add    $0x10,%esp
  1070f5:	83 ec 04             	sub    $0x4,%esp
  1070f8:	68 80 22 14 00       	push   $0x142280
  1070fd:	68 6c 26 14 00       	push   $0x14266c
  107102:	68 03 aa 10 00       	push   $0x10aa03
  107107:	e8 49 23 00 00       	call   109455 <printf>
  10710c:	83 c4 10             	add    $0x10,%esp
  10710f:	83 ec 0c             	sub    $0xc,%esp
  107112:	6a 00                	push   $0x0
  107114:	e8 4f 1a 00 00       	call   108b68 <__redirect_printf__>
  107119:	83 c4 10             	add    $0x10,%esp
  10711c:	83 ec 08             	sub    $0x8,%esp
  10711f:	68 80 1e 14 00       	push   $0x141e80
  107124:	68 f8 03 00 00       	push   $0x3f8
  107129:	e8 8b b4 ff ff       	call   1025b9 <com_write>
  10712e:	83 c4 10             	add    $0x10,%esp
  107131:	83 ec 04             	sub    $0x4,%esp
  107134:	68 00 04 00 00       	push   $0x400
  107139:	6a 00                	push   $0x0
  10713b:	68 80 1e 14 00       	push   $0x141e80
  107140:	e8 01 27 00 00       	call   109846 <memset>
  107145:	83 c4 10             	add    $0x10,%esp
  107148:	83 ec 04             	sub    $0x4,%esp
  10714b:	68 ec 03 00 00       	push   $0x3ec
  107150:	6a 00                	push   $0x0
  107152:	68 80 22 14 00       	push   $0x142280
  107157:	e8 ea 26 00 00       	call   109846 <memset>
  10715c:	83 c4 10             	add    $0x10,%esp
  10715f:	83 ec 04             	sub    $0x4,%esp
  107162:	6a 14                	push   $0x14
  107164:	6a 00                	push   $0x0
  107166:	68 6c 26 14 00       	push   $0x14266c
  10716b:	e8 d6 26 00 00       	call   109846 <memset>
  107170:	83 c4 10             	add    $0x10,%esp
  107173:	90                   	nop
  107174:	c9                   	leave  
  107175:	c3                   	ret    

00107176 <com_scheduler>:
  107176:	55                   	push   %ebp
  107177:	89 e5                	mov    %esp,%ebp
  107179:	83 ec 08             	sub    $0x8,%esp
  10717c:	83 ec 0c             	sub    $0xc,%esp
  10717f:	68 f8 03 00 00       	push   $0x3f8
  107184:	e8 e5 b3 ff ff       	call   10256e <com_is_initialized>
  107189:	83 c4 10             	add    $0x10,%esp
  10718c:	3c 01                	cmp    $0x1,%al
  10718e:	75 10                	jne    1071a0 <com_scheduler+0x2a>
  107190:	83 ec 0c             	sub    $0xc,%esp
  107193:	68 f8 03 00 00       	push   $0x3f8
  107198:	e8 81 b7 ff ff       	call   10291e <com_flush>
  10719d:	83 c4 10             	add    $0x10,%esp
  1071a0:	83 ec 0c             	sub    $0xc,%esp
  1071a3:	68 f8 02 00 00       	push   $0x2f8
  1071a8:	e8 c1 b3 ff ff       	call   10256e <com_is_initialized>
  1071ad:	83 c4 10             	add    $0x10,%esp
  1071b0:	3c 01                	cmp    $0x1,%al
  1071b2:	75 10                	jne    1071c4 <com_scheduler+0x4e>
  1071b4:	83 ec 0c             	sub    $0xc,%esp
  1071b7:	68 f8 02 00 00       	push   $0x2f8
  1071bc:	e8 5d b7 ff ff       	call   10291e <com_flush>
  1071c1:	83 c4 10             	add    $0x10,%esp
  1071c4:	83 ec 0c             	sub    $0xc,%esp
  1071c7:	68 e8 03 00 00       	push   $0x3e8
  1071cc:	e8 9d b3 ff ff       	call   10256e <com_is_initialized>
  1071d1:	83 c4 10             	add    $0x10,%esp
  1071d4:	3c 01                	cmp    $0x1,%al
  1071d6:	75 10                	jne    1071e8 <com_scheduler+0x72>
  1071d8:	83 ec 0c             	sub    $0xc,%esp
  1071db:	68 e8 03 00 00       	push   $0x3e8
  1071e0:	e8 39 b7 ff ff       	call   10291e <com_flush>
  1071e5:	83 c4 10             	add    $0x10,%esp
  1071e8:	90                   	nop
  1071e9:	c9                   	leave  
  1071ea:	c3                   	ret    

001071eb <scheduler_init>:
  1071eb:	55                   	push   %ebp
  1071ec:	89 e5                	mov    %esp,%ebp
  1071ee:	83 ec 18             	sub    $0x18,%esp
  1071f1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1071f5:	75 0c                	jne    107203 <scheduler_init+0x18>
  1071f7:	c7 05 c0 26 14 00 01 	movl   $0x1,0x1426c0
  1071fe:	00 00 00 
  107201:	eb 1d                	jmp    107220 <scheduler_init+0x35>
  107203:	81 7d 08 e8 03 00 00 	cmpl   $0x3e8,0x8(%ebp)
  10720a:	76 0c                	jbe    107218 <scheduler_init+0x2d>
  10720c:	c7 05 c0 26 14 00 e8 	movl   $0x3e8,0x1426c0
  107213:	03 00 00 
  107216:	eb 08                	jmp    107220 <scheduler_init+0x35>
  107218:	8b 45 08             	mov    0x8(%ebp),%eax
  10721b:	a3 c0 26 14 00       	mov    %eax,0x1426c0
  107220:	83 ec 0c             	sub    $0xc,%esp
  107223:	68 80 22 14 00       	push   $0x142280
  107228:	e8 3b 19 00 00       	call   108b68 <__redirect_printf__>
  10722d:	83 c4 10             	add    $0x10,%esp
  107230:	a1 c0 26 14 00       	mov    0x1426c0,%eax
  107235:	83 ec 04             	sub    $0x4,%esp
  107238:	50                   	push   %eax
  107239:	ff 75 08             	push   0x8(%ebp)
  10723c:	68 e4 aa 10 00       	push   $0x10aae4
  107241:	e8 0f 22 00 00       	call   109455 <printf>
  107246:	83 c4 10             	add    $0x10,%esp
  107249:	83 ec 0c             	sub    $0xc,%esp
  10724c:	6a 00                	push   $0x0
  10724e:	e8 15 19 00 00       	call   108b68 <__redirect_printf__>
  107253:	83 c4 10             	add    $0x10,%esp
  107256:	83 ec 0c             	sub    $0xc,%esp
  107259:	8d 45 f2             	lea    -0xe(%ebp),%eax
  10725c:	50                   	push   %eax
  10725d:	e8 3d b8 ff ff       	call   102a9f <cmos_read_rtc>
  107262:	83 c4 10             	add    $0x10,%esp
  107265:	83 ec 04             	sub    $0x4,%esp
  107268:	68 6c 26 14 00       	push   $0x14266c
  10726d:	83 ec 08             	sub    $0x8,%esp
  107270:	89 e0                	mov    %esp,%eax
  107272:	8b 55 f2             	mov    -0xe(%ebp),%edx
  107275:	89 10                	mov    %edx,(%eax)
  107277:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  10727b:	66 89 50 04          	mov    %dx,0x4(%eax)
  10727f:	e8 40 dd ff ff       	call   104fc4 <cmos_datetime_to_str>
  107284:	83 c4 10             	add    $0x10,%esp
  107287:	83 ec 0c             	sub    $0xc,%esp
  10728a:	68 80 1e 14 00       	push   $0x141e80
  10728f:	e8 d4 18 00 00       	call   108b68 <__redirect_printf__>
  107294:	83 c4 10             	add    $0x10,%esp
  107297:	83 ec 04             	sub    $0x4,%esp
  10729a:	68 80 22 14 00       	push   $0x142280
  10729f:	68 6c 26 14 00       	push   $0x14266c
  1072a4:	68 2a ab 10 00       	push   $0x10ab2a
  1072a9:	e8 a7 21 00 00       	call   109455 <printf>
  1072ae:	83 c4 10             	add    $0x10,%esp
  1072b1:	83 ec 0c             	sub    $0xc,%esp
  1072b4:	6a 00                	push   $0x0
  1072b6:	e8 ad 18 00 00       	call   108b68 <__redirect_printf__>
  1072bb:	83 c4 10             	add    $0x10,%esp
  1072be:	83 ec 08             	sub    $0x8,%esp
  1072c1:	68 80 1e 14 00       	push   $0x141e80
  1072c6:	68 f8 03 00 00       	push   $0x3f8
  1072cb:	e8 e9 b2 ff ff       	call   1025b9 <com_write>
  1072d0:	83 c4 10             	add    $0x10,%esp
  1072d3:	83 ec 04             	sub    $0x4,%esp
  1072d6:	68 00 04 00 00       	push   $0x400
  1072db:	6a 00                	push   $0x0
  1072dd:	68 80 1e 14 00       	push   $0x141e80
  1072e2:	e8 5f 25 00 00       	call   109846 <memset>
  1072e7:	83 c4 10             	add    $0x10,%esp
  1072ea:	83 ec 04             	sub    $0x4,%esp
  1072ed:	68 ec 03 00 00       	push   $0x3ec
  1072f2:	6a 00                	push   $0x0
  1072f4:	68 80 22 14 00       	push   $0x142280
  1072f9:	e8 48 25 00 00       	call   109846 <memset>
  1072fe:	83 c4 10             	add    $0x10,%esp
  107301:	83 ec 04             	sub    $0x4,%esp
  107304:	6a 14                	push   $0x14
  107306:	6a 00                	push   $0x0
  107308:	68 6c 26 14 00       	push   $0x14266c
  10730d:	e8 34 25 00 00       	call   109846 <memset>
  107312:	83 c4 10             	add    $0x10,%esp
  107315:	90                   	nop
  107316:	c9                   	leave  
  107317:	c3                   	ret    

00107318 <scheduler>:
  107318:	55                   	push   %ebp
  107319:	89 e5                	mov    %esp,%ebp
  10731b:	83 ec 18             	sub    $0x18,%esp
  10731e:	8b 0d c0 26 14 00    	mov    0x1426c0,%ecx
  107324:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  107329:	ba 00 00 00 00       	mov    $0x0,%edx
  10732e:	f7 f1                	div    %ecx
  107330:	89 45 f4             	mov    %eax,-0xc(%ebp)
  107333:	8b 45 0c             	mov    0xc(%ebp),%eax
  107336:	ba 00 00 00 00       	mov    $0x0,%edx
  10733b:	f7 75 f4             	divl   -0xc(%ebp)
  10733e:	89 d0                	mov    %edx,%eax
  107340:	85 c0                	test   %eax,%eax
  107342:	75 05                	jne    107349 <scheduler+0x31>
  107344:	e8 2d fe ff ff       	call   107176 <com_scheduler>
  107349:	83 ec 08             	sub    $0x8,%esp
  10734c:	ff 75 0c             	push   0xc(%ebp)
  10734f:	ff 75 08             	push   0x8(%ebp)
  107352:	e8 8f f9 ff ff       	call   106ce6 <tasking_scheduler>
  107357:	83 c4 10             	add    $0x10,%esp
  10735a:	90                   	nop
  10735b:	c9                   	leave  
  10735c:	c3                   	ret    

0010735d <kernel_main>:
  10735d:	55                   	push   %ebp
  10735e:	89 e5                	mov    %esp,%ebp
  107360:	53                   	push   %ebx
  107361:	81 ec a4 01 00 00    	sub    $0x1a4,%esp
  107367:	e8 2d 93 ff ff       	call   100699 <cli>
  10736c:	c6 05 c4 26 14 00 00 	movb   $0x0,0x1426c4
  107373:	83 ec 0c             	sub    $0xc,%esp
  107376:	68 80 22 14 00       	push   $0x142280
  10737b:	e8 e8 17 00 00       	call   108b68 <__redirect_printf__>
  107380:	83 c4 10             	add    $0x10,%esp
  107383:	83 ec 0c             	sub    $0xc,%esp
  107386:	68 30 ab 10 00       	push   $0x10ab30
  10738b:	e8 c5 20 00 00       	call   109455 <printf>
  107390:	83 c4 10             	add    $0x10,%esp
  107393:	83 ec 0c             	sub    $0xc,%esp
  107396:	6a 00                	push   $0x0
  107398:	e8 cb 17 00 00       	call   108b68 <__redirect_printf__>
  10739d:	83 c4 10             	add    $0x10,%esp
  1073a0:	83 ec 0c             	sub    $0xc,%esp
  1073a3:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  1073a6:	50                   	push   %eax
  1073a7:	e8 f3 b6 ff ff       	call   102a9f <cmos_read_rtc>
  1073ac:	83 c4 10             	add    $0x10,%esp
  1073af:	83 ec 04             	sub    $0x4,%esp
  1073b2:	68 6c 26 14 00       	push   $0x14266c
  1073b7:	83 ec 08             	sub    $0x8,%esp
  1073ba:	89 e0                	mov    %esp,%eax
  1073bc:	8b 55 c6             	mov    -0x3a(%ebp),%edx
  1073bf:	89 10                	mov    %edx,(%eax)
  1073c1:	0f b7 55 ca          	movzwl -0x36(%ebp),%edx
  1073c5:	66 89 50 04          	mov    %dx,0x4(%eax)
  1073c9:	e8 f6 db ff ff       	call   104fc4 <cmos_datetime_to_str>
  1073ce:	83 c4 10             	add    $0x10,%esp
  1073d1:	83 ec 0c             	sub    $0xc,%esp
  1073d4:	68 80 1e 14 00       	push   $0x141e80
  1073d9:	e8 8a 17 00 00       	call   108b68 <__redirect_printf__>
  1073de:	83 c4 10             	add    $0x10,%esp
  1073e1:	83 ec 04             	sub    $0x4,%esp
  1073e4:	68 80 22 14 00       	push   $0x142280
  1073e9:	68 6c 26 14 00       	push   $0x14266c
  1073ee:	68 3d ab 10 00       	push   $0x10ab3d
  1073f3:	e8 5d 20 00 00       	call   109455 <printf>
  1073f8:	83 c4 10             	add    $0x10,%esp
  1073fb:	83 ec 0c             	sub    $0xc,%esp
  1073fe:	6a 00                	push   $0x0
  107400:	e8 63 17 00 00       	call   108b68 <__redirect_printf__>
  107405:	83 c4 10             	add    $0x10,%esp
  107408:	83 ec 08             	sub    $0x8,%esp
  10740b:	68 80 1e 14 00       	push   $0x141e80
  107410:	68 f8 03 00 00       	push   $0x3f8
  107415:	e8 9f b1 ff ff       	call   1025b9 <com_write>
  10741a:	83 c4 10             	add    $0x10,%esp
  10741d:	83 ec 04             	sub    $0x4,%esp
  107420:	68 00 04 00 00       	push   $0x400
  107425:	6a 00                	push   $0x0
  107427:	68 80 1e 14 00       	push   $0x141e80
  10742c:	e8 15 24 00 00       	call   109846 <memset>
  107431:	83 c4 10             	add    $0x10,%esp
  107434:	83 ec 04             	sub    $0x4,%esp
  107437:	68 ec 03 00 00       	push   $0x3ec
  10743c:	6a 00                	push   $0x0
  10743e:	68 80 22 14 00       	push   $0x142280
  107443:	e8 fe 23 00 00       	call   109846 <memset>
  107448:	83 c4 10             	add    $0x10,%esp
  10744b:	83 ec 04             	sub    $0x4,%esp
  10744e:	6a 14                	push   $0x14
  107450:	6a 00                	push   $0x0
  107452:	68 6c 26 14 00       	push   $0x14266c
  107457:	e8 ea 23 00 00       	call   109846 <memset>
  10745c:	83 c4 10             	add    $0x10,%esp
  10745f:	8c c8                	mov    %cs,%eax
  107461:	89 45 ec             	mov    %eax,-0x14(%ebp)
  107464:	8c d0                	mov    %ss,%eax
  107466:	89 45 e8             	mov    %eax,-0x18(%ebp)
  107469:	83 ec 0c             	sub    $0xc,%esp
  10746c:	68 80 22 14 00       	push   $0x142280
  107471:	e8 f2 16 00 00       	call   108b68 <__redirect_printf__>
  107476:	83 c4 10             	add    $0x10,%esp
  107479:	83 ec 04             	sub    $0x4,%esp
  10747c:	ff 75 ec             	push   -0x14(%ebp)
  10747f:	ff 75 e8             	push   -0x18(%ebp)
  107482:	68 44 ab 10 00       	push   $0x10ab44
  107487:	e8 c9 1f 00 00       	call   109455 <printf>
  10748c:	83 c4 10             	add    $0x10,%esp
  10748f:	83 ec 0c             	sub    $0xc,%esp
  107492:	6a 00                	push   $0x0
  107494:	e8 cf 16 00 00       	call   108b68 <__redirect_printf__>
  107499:	83 c4 10             	add    $0x10,%esp
  10749c:	83 ec 0c             	sub    $0xc,%esp
  10749f:	8d 45 c0             	lea    -0x40(%ebp),%eax
  1074a2:	50                   	push   %eax
  1074a3:	e8 f7 b5 ff ff       	call   102a9f <cmos_read_rtc>
  1074a8:	83 c4 10             	add    $0x10,%esp
  1074ab:	83 ec 04             	sub    $0x4,%esp
  1074ae:	68 6c 26 14 00       	push   $0x14266c
  1074b3:	83 ec 08             	sub    $0x8,%esp
  1074b6:	89 e0                	mov    %esp,%eax
  1074b8:	8b 55 c0             	mov    -0x40(%ebp),%edx
  1074bb:	89 10                	mov    %edx,(%eax)
  1074bd:	0f b7 55 c4          	movzwl -0x3c(%ebp),%edx
  1074c1:	66 89 50 04          	mov    %dx,0x4(%eax)
  1074c5:	e8 fa da ff ff       	call   104fc4 <cmos_datetime_to_str>
  1074ca:	83 c4 10             	add    $0x10,%esp
  1074cd:	83 ec 0c             	sub    $0xc,%esp
  1074d0:	68 80 1e 14 00       	push   $0x141e80
  1074d5:	e8 8e 16 00 00       	call   108b68 <__redirect_printf__>
  1074da:	83 c4 10             	add    $0x10,%esp
  1074dd:	83 ec 04             	sub    $0x4,%esp
  1074e0:	68 80 22 14 00       	push   $0x142280
  1074e5:	68 6c 26 14 00       	push   $0x14266c
  1074ea:	68 3d ab 10 00       	push   $0x10ab3d
  1074ef:	e8 61 1f 00 00       	call   109455 <printf>
  1074f4:	83 c4 10             	add    $0x10,%esp
  1074f7:	83 ec 0c             	sub    $0xc,%esp
  1074fa:	6a 00                	push   $0x0
  1074fc:	e8 67 16 00 00       	call   108b68 <__redirect_printf__>
  107501:	83 c4 10             	add    $0x10,%esp
  107504:	83 ec 08             	sub    $0x8,%esp
  107507:	68 80 1e 14 00       	push   $0x141e80
  10750c:	68 f8 03 00 00       	push   $0x3f8
  107511:	e8 a3 b0 ff ff       	call   1025b9 <com_write>
  107516:	83 c4 10             	add    $0x10,%esp
  107519:	83 ec 04             	sub    $0x4,%esp
  10751c:	68 00 04 00 00       	push   $0x400
  107521:	6a 00                	push   $0x0
  107523:	68 80 1e 14 00       	push   $0x141e80
  107528:	e8 19 23 00 00       	call   109846 <memset>
  10752d:	83 c4 10             	add    $0x10,%esp
  107530:	83 ec 04             	sub    $0x4,%esp
  107533:	68 ec 03 00 00       	push   $0x3ec
  107538:	6a 00                	push   $0x0
  10753a:	68 80 22 14 00       	push   $0x142280
  10753f:	e8 02 23 00 00       	call   109846 <memset>
  107544:	83 c4 10             	add    $0x10,%esp
  107547:	83 ec 04             	sub    $0x4,%esp
  10754a:	6a 14                	push   $0x14
  10754c:	6a 00                	push   $0x0
  10754e:	68 6c 26 14 00       	push   $0x14266c
  107553:	e8 ee 22 00 00       	call   109846 <memset>
  107558:	83 c4 10             	add    $0x10,%esp
  10755b:	e8 39 8c ff ff       	call   100199 <tty_init>
  107560:	e8 57 92 ff ff       	call   1007bc <gdt_init>
  107565:	e8 7a a6 ff ff       	call   101be4 <pic_remap>
  10756a:	e8 a4 93 ff ff       	call   100913 <idt_init>
  10756f:	83 ec 0c             	sub    $0xc,%esp
  107572:	68 80 22 14 00       	push   $0x142280
  107577:	e8 ec 15 00 00       	call   108b68 <__redirect_printf__>
  10757c:	83 c4 10             	add    $0x10,%esp
  10757f:	83 ec 0c             	sub    $0xc,%esp
  107582:	68 73 ab 10 00       	push   $0x10ab73
  107587:	e8 c9 1e 00 00       	call   109455 <printf>
  10758c:	83 c4 10             	add    $0x10,%esp
  10758f:	83 ec 0c             	sub    $0xc,%esp
  107592:	6a 00                	push   $0x0
  107594:	e8 cf 15 00 00       	call   108b68 <__redirect_printf__>
  107599:	83 c4 10             	add    $0x10,%esp
  10759c:	83 ec 0c             	sub    $0xc,%esp
  10759f:	8d 45 ba             	lea    -0x46(%ebp),%eax
  1075a2:	50                   	push   %eax
  1075a3:	e8 f7 b4 ff ff       	call   102a9f <cmos_read_rtc>
  1075a8:	83 c4 10             	add    $0x10,%esp
  1075ab:	83 ec 04             	sub    $0x4,%esp
  1075ae:	68 6c 26 14 00       	push   $0x14266c
  1075b3:	83 ec 08             	sub    $0x8,%esp
  1075b6:	89 e0                	mov    %esp,%eax
  1075b8:	8b 55 ba             	mov    -0x46(%ebp),%edx
  1075bb:	89 10                	mov    %edx,(%eax)
  1075bd:	0f b7 55 be          	movzwl -0x42(%ebp),%edx
  1075c1:	66 89 50 04          	mov    %dx,0x4(%eax)
  1075c5:	e8 fa d9 ff ff       	call   104fc4 <cmos_datetime_to_str>
  1075ca:	83 c4 10             	add    $0x10,%esp
  1075cd:	83 ec 0c             	sub    $0xc,%esp
  1075d0:	68 80 1e 14 00       	push   $0x141e80
  1075d5:	e8 8e 15 00 00       	call   108b68 <__redirect_printf__>
  1075da:	83 c4 10             	add    $0x10,%esp
  1075dd:	83 ec 04             	sub    $0x4,%esp
  1075e0:	68 80 22 14 00       	push   $0x142280
  1075e5:	68 6c 26 14 00       	push   $0x14266c
  1075ea:	68 3d ab 10 00       	push   $0x10ab3d
  1075ef:	e8 61 1e 00 00       	call   109455 <printf>
  1075f4:	83 c4 10             	add    $0x10,%esp
  1075f7:	83 ec 0c             	sub    $0xc,%esp
  1075fa:	6a 00                	push   $0x0
  1075fc:	e8 67 15 00 00       	call   108b68 <__redirect_printf__>
  107601:	83 c4 10             	add    $0x10,%esp
  107604:	83 ec 08             	sub    $0x8,%esp
  107607:	68 80 1e 14 00       	push   $0x141e80
  10760c:	68 f8 03 00 00       	push   $0x3f8
  107611:	e8 a3 af ff ff       	call   1025b9 <com_write>
  107616:	83 c4 10             	add    $0x10,%esp
  107619:	83 ec 04             	sub    $0x4,%esp
  10761c:	68 00 04 00 00       	push   $0x400
  107621:	6a 00                	push   $0x0
  107623:	68 80 1e 14 00       	push   $0x141e80
  107628:	e8 19 22 00 00       	call   109846 <memset>
  10762d:	83 c4 10             	add    $0x10,%esp
  107630:	83 ec 04             	sub    $0x4,%esp
  107633:	68 ec 03 00 00       	push   $0x3ec
  107638:	6a 00                	push   $0x0
  10763a:	68 80 22 14 00       	push   $0x142280
  10763f:	e8 02 22 00 00       	call   109846 <memset>
  107644:	83 c4 10             	add    $0x10,%esp
  107647:	83 ec 04             	sub    $0x4,%esp
  10764a:	6a 14                	push   $0x14
  10764c:	6a 00                	push   $0x0
  10764e:	68 6c 26 14 00       	push   $0x14266c
  107653:	e8 ee 21 00 00       	call   109846 <memset>
  107658:	83 c4 10             	add    $0x10,%esp
  10765b:	8c c8                	mov    %cs,%eax
  10765d:	89 45 ec             	mov    %eax,-0x14(%ebp)
  107660:	8c d0                	mov    %ss,%eax
  107662:	89 45 e8             	mov    %eax,-0x18(%ebp)
  107665:	83 ec 0c             	sub    $0xc,%esp
  107668:	68 80 22 14 00       	push   $0x142280
  10766d:	e8 f6 14 00 00       	call   108b68 <__redirect_printf__>
  107672:	83 c4 10             	add    $0x10,%esp
  107675:	83 ec 04             	sub    $0x4,%esp
  107678:	ff 75 ec             	push   -0x14(%ebp)
  10767b:	ff 75 e8             	push   -0x18(%ebp)
  10767e:	68 8c ab 10 00       	push   $0x10ab8c
  107683:	e8 cd 1d 00 00       	call   109455 <printf>
  107688:	83 c4 10             	add    $0x10,%esp
  10768b:	83 ec 0c             	sub    $0xc,%esp
  10768e:	6a 00                	push   $0x0
  107690:	e8 d3 14 00 00       	call   108b68 <__redirect_printf__>
  107695:	83 c4 10             	add    $0x10,%esp
  107698:	83 ec 0c             	sub    $0xc,%esp
  10769b:	8d 45 b4             	lea    -0x4c(%ebp),%eax
  10769e:	50                   	push   %eax
  10769f:	e8 fb b3 ff ff       	call   102a9f <cmos_read_rtc>
  1076a4:	83 c4 10             	add    $0x10,%esp
  1076a7:	83 ec 04             	sub    $0x4,%esp
  1076aa:	68 6c 26 14 00       	push   $0x14266c
  1076af:	83 ec 08             	sub    $0x8,%esp
  1076b2:	89 e0                	mov    %esp,%eax
  1076b4:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  1076b7:	89 10                	mov    %edx,(%eax)
  1076b9:	0f b7 55 b8          	movzwl -0x48(%ebp),%edx
  1076bd:	66 89 50 04          	mov    %dx,0x4(%eax)
  1076c1:	e8 fe d8 ff ff       	call   104fc4 <cmos_datetime_to_str>
  1076c6:	83 c4 10             	add    $0x10,%esp
  1076c9:	83 ec 0c             	sub    $0xc,%esp
  1076cc:	68 80 1e 14 00       	push   $0x141e80
  1076d1:	e8 92 14 00 00       	call   108b68 <__redirect_printf__>
  1076d6:	83 c4 10             	add    $0x10,%esp
  1076d9:	83 ec 04             	sub    $0x4,%esp
  1076dc:	68 80 22 14 00       	push   $0x142280
  1076e1:	68 6c 26 14 00       	push   $0x14266c
  1076e6:	68 3d ab 10 00       	push   $0x10ab3d
  1076eb:	e8 65 1d 00 00       	call   109455 <printf>
  1076f0:	83 c4 10             	add    $0x10,%esp
  1076f3:	83 ec 0c             	sub    $0xc,%esp
  1076f6:	6a 00                	push   $0x0
  1076f8:	e8 6b 14 00 00       	call   108b68 <__redirect_printf__>
  1076fd:	83 c4 10             	add    $0x10,%esp
  107700:	83 ec 08             	sub    $0x8,%esp
  107703:	68 80 1e 14 00       	push   $0x141e80
  107708:	68 f8 03 00 00       	push   $0x3f8
  10770d:	e8 a7 ae ff ff       	call   1025b9 <com_write>
  107712:	83 c4 10             	add    $0x10,%esp
  107715:	83 ec 04             	sub    $0x4,%esp
  107718:	68 00 04 00 00       	push   $0x400
  10771d:	6a 00                	push   $0x0
  10771f:	68 80 1e 14 00       	push   $0x141e80
  107724:	e8 1d 21 00 00       	call   109846 <memset>
  107729:	83 c4 10             	add    $0x10,%esp
  10772c:	83 ec 04             	sub    $0x4,%esp
  10772f:	68 ec 03 00 00       	push   $0x3ec
  107734:	6a 00                	push   $0x0
  107736:	68 80 22 14 00       	push   $0x142280
  10773b:	e8 06 21 00 00       	call   109846 <memset>
  107740:	83 c4 10             	add    $0x10,%esp
  107743:	83 ec 04             	sub    $0x4,%esp
  107746:	6a 14                	push   $0x14
  107748:	6a 00                	push   $0x0
  10774a:	68 6c 26 14 00       	push   $0x14266c
  10774f:	e8 f2 20 00 00       	call   109846 <memset>
  107754:	83 c4 10             	add    $0x10,%esp
  107757:	83 ec 08             	sub    $0x8,%esp
  10775a:	6a 00                	push   $0x0
  10775c:	6a 07                	push   $0x7
  10775e:	e8 01 8b ff ff       	call   100264 <tty_set_color>
  107763:	83 c4 10             	add    $0x10,%esp
  107766:	6a 42                	push   $0x42
  107768:	6a 01                	push   $0x1
  10776a:	6a 00                	push   $0x0
  10776c:	68 ba ab 10 00       	push   $0x10abba
  107771:	e8 df 1c 00 00       	call   109455 <printf>
  107776:	83 c4 10             	add    $0x10,%esp
  107779:	81 7d 0c 02 b0 ad 2b 	cmpl   $0x2badb002,0xc(%ebp)
  107780:	74 24                	je     1077a6 <kernel_main+0x449>
  107782:	83 ec 08             	sub    $0x8,%esp
  107785:	6a 00                	push   $0x0
  107787:	6a 04                	push   $0x4
  107789:	e8 d6 8a ff ff       	call   100264 <tty_set_color>
  10778e:	83 c4 10             	add    $0x10,%esp
  107791:	83 ec 0c             	sub    $0xc,%esp
  107794:	68 d4 ab 10 00       	push   $0x10abd4
  107799:	e8 b7 1c 00 00       	call   109455 <printf>
  10779e:	83 c4 10             	add    $0x10,%esp
  1077a1:	e8 5f 1f 00 00       	call   109705 <abort>
  1077a6:	83 ec 0c             	sub    $0xc,%esp
  1077a9:	ff 75 08             	push   0x8(%ebp)
  1077ac:	e8 00 e6 ff ff       	call   105db1 <memory_init>
  1077b1:	83 c4 10             	add    $0x10,%esp
  1077b4:	e8 b3 e6 ff ff       	call   105e6c <memory_get_size>
  1077b9:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1077bc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1077c3:	83 ec 0c             	sub    $0xc,%esp
  1077c6:	68 f7 ab 10 00       	push   $0x10abf7
  1077cb:	e8 85 1c 00 00       	call   109455 <printf>
  1077d0:	83 c4 10             	add    $0x10,%esp
  1077d3:	83 ec 08             	sub    $0x8,%esp
  1077d6:	6a 00                	push   $0x0
  1077d8:	6a 02                	push   $0x2
  1077da:	e8 85 8a ff ff       	call   100264 <tty_set_color>
  1077df:	83 c4 10             	add    $0x10,%esp
  1077e2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1077e5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1077e8:	0f ac d0 0a          	shrd   $0xa,%edx,%eax
  1077ec:	c1 ea 0a             	shr    $0xa,%edx
  1077ef:	83 ec 04             	sub    $0x4,%esp
  1077f2:	52                   	push   %edx
  1077f3:	50                   	push   %eax
  1077f4:	68 0b ac 10 00       	push   $0x10ac0b
  1077f9:	e8 57 1c 00 00       	call   109455 <printf>
  1077fe:	83 c4 10             	add    $0x10,%esp
  107801:	83 ec 08             	sub    $0x8,%esp
  107804:	6a 00                	push   $0x0
  107806:	6a 07                	push   $0x7
  107808:	e8 57 8a ff ff       	call   100264 <tty_set_color>
  10780d:	83 c4 10             	add    $0x10,%esp
  107810:	83 ec 0c             	sub    $0xc,%esp
  107813:	68 15 ac 10 00       	push   $0x10ac15
  107818:	e8 38 1c 00 00       	call   109455 <printf>
  10781d:	83 c4 10             	add    $0x10,%esp
  107820:	e8 fd 98 ff ff       	call   101122 <cpuid_supported>
  107825:	88 45 df             	mov    %al,-0x21(%ebp)
  107828:	80 7d df 00          	cmpb   $0x0,-0x21(%ebp)
  10782c:	75 24                	jne    107852 <kernel_main+0x4f5>
  10782e:	83 ec 08             	sub    $0x8,%esp
  107831:	6a 00                	push   $0x0
  107833:	6a 04                	push   $0x4
  107835:	e8 2a 8a ff ff       	call   100264 <tty_set_color>
  10783a:	83 c4 10             	add    $0x10,%esp
  10783d:	83 ec 0c             	sub    $0xc,%esp
  107840:	68 2b ac 10 00       	push   $0x10ac2b
  107845:	e8 0b 1c 00 00       	call   109455 <printf>
  10784a:	83 c4 10             	add    $0x10,%esp
  10784d:	e9 b0 00 00 00       	jmp    107902 <kernel_main+0x5a5>
  107852:	83 ec 08             	sub    $0x8,%esp
  107855:	6a 00                	push   $0x0
  107857:	6a 02                	push   $0x2
  107859:	e8 06 8a ff ff       	call   100264 <tty_set_color>
  10785e:	83 c4 10             	add    $0x10,%esp
  107861:	83 ec 04             	sub    $0x4,%esp
  107864:	8d 45 a8             	lea    -0x58(%ebp),%eax
  107867:	83 c0 08             	add    $0x8,%eax
  10786a:	50                   	push   %eax
  10786b:	8d 45 a8             	lea    -0x58(%ebp),%eax
  10786e:	83 c0 04             	add    $0x4,%eax
  107871:	50                   	push   %eax
  107872:	8d 45 a8             	lea    -0x58(%ebp),%eax
  107875:	50                   	push   %eax
  107876:	e8 6f 98 ff ff       	call   1010ea <cpuid_get_model>
  10787b:	83 c4 10             	add    $0x10,%esp
  10787e:	83 ec 0c             	sub    $0xc,%esp
  107881:	68 31 ac 10 00       	push   $0x10ac31
  107886:	e8 ca 1b 00 00       	call   109455 <printf>
  10788b:	83 c4 10             	add    $0x10,%esp
  10788e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  107895:	eb 55                	jmp    1078ec <kernel_main+0x58f>
  107897:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10789a:	8b 44 85 a8          	mov    -0x58(%ebp,%eax,4),%eax
  10789e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  1078a1:	8d 45 a4             	lea    -0x5c(%ebp),%eax
  1078a4:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1078a7:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1078aa:	83 c0 03             	add    $0x3,%eax
  1078ad:	0f b6 00             	movzbl (%eax),%eax
  1078b0:	0f be d8             	movsbl %al,%ebx
  1078b3:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1078b6:	83 c0 02             	add    $0x2,%eax
  1078b9:	0f b6 00             	movzbl (%eax),%eax
  1078bc:	0f be c8             	movsbl %al,%ecx
  1078bf:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1078c2:	83 c0 01             	add    $0x1,%eax
  1078c5:	0f b6 00             	movzbl (%eax),%eax
  1078c8:	0f be d0             	movsbl %al,%edx
  1078cb:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1078ce:	0f b6 00             	movzbl (%eax),%eax
  1078d1:	0f be c0             	movsbl %al,%eax
  1078d4:	83 ec 0c             	sub    $0xc,%esp
  1078d7:	53                   	push   %ebx
  1078d8:	51                   	push   %ecx
  1078d9:	52                   	push   %edx
  1078da:	50                   	push   %eax
  1078db:	68 33 ac 10 00       	push   $0x10ac33
  1078e0:	e8 70 1b 00 00       	call   109455 <printf>
  1078e5:	83 c4 20             	add    $0x20,%esp
  1078e8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1078ec:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
  1078f0:	7e a5                	jle    107897 <kernel_main+0x53a>
  1078f2:	83 ec 0c             	sub    $0xc,%esp
  1078f5:	68 3c ac 10 00       	push   $0x10ac3c
  1078fa:	e8 56 1b 00 00       	call   109455 <printf>
  1078ff:	83 c4 10             	add    $0x10,%esp
  107902:	83 ec 08             	sub    $0x8,%esp
  107905:	6a 00                	push   $0x0
  107907:	6a 07                	push   $0x7
  107909:	e8 56 89 ff ff       	call   100264 <tty_set_color>
  10790e:	83 c4 10             	add    $0x10,%esp
  107911:	83 ec 0c             	sub    $0xc,%esp
  107914:	68 3f ac 10 00       	push   $0x10ac3f
  107919:	e8 37 1b 00 00       	call   109455 <printf>
  10791e:	83 c4 10             	add    $0x10,%esp
  107921:	e8 cd b8 ff ff       	call   1031f3 <acpi_init>
  107926:	e8 54 c3 ff ff       	call   103c7f <acpi_is_initialized>
  10792b:	3c 01                	cmp    $0x1,%al
  10792d:	0f 85 8e 00 00 00    	jne    1079c1 <kernel_main+0x664>
  107933:	83 ec 08             	sub    $0x8,%esp
  107936:	6a 00                	push   $0x0
  107938:	6a 02                	push   $0x2
  10793a:	e8 25 89 ff ff       	call   100264 <tty_set_color>
  10793f:	83 c4 10             	add    $0x10,%esp
  107942:	83 ec 0c             	sub    $0xc,%esp
  107945:	68 54 ac 10 00       	push   $0x10ac54
  10794a:	e8 06 1b 00 00       	call   109455 <printf>
  10794f:	83 c4 10             	add    $0x10,%esp
  107952:	83 ec 08             	sub    $0x8,%esp
  107955:	6a 00                	push   $0x0
  107957:	6a 07                	push   $0x7
  107959:	e8 06 89 ff ff       	call   100264 <tty_set_color>
  10795e:	83 c4 10             	add    $0x10,%esp
  107961:	83 ec 0c             	sub    $0xc,%esp
  107964:	68 5a ac 10 00       	push   $0x10ac5a
  107969:	e8 e7 1a 00 00       	call   109455 <printf>
  10796e:	83 c4 10             	add    $0x10,%esp
  107971:	e8 8b b5 ff ff       	call   102f01 <acpi_enable>
  107976:	e8 f8 c2 ff ff       	call   103c73 <acpi_is_enabled>
  10797b:	3c 01                	cmp    $0x1,%al
  10797d:	75 21                	jne    1079a0 <kernel_main+0x643>
  10797f:	83 ec 08             	sub    $0x8,%esp
  107982:	6a 00                	push   $0x0
  107984:	6a 02                	push   $0x2
  107986:	e8 d9 88 ff ff       	call   100264 <tty_set_color>
  10798b:	83 c4 10             	add    $0x10,%esp
  10798e:	83 ec 0c             	sub    $0xc,%esp
  107991:	68 54 ac 10 00       	push   $0x10ac54
  107996:	e8 ba 1a 00 00       	call   109455 <printf>
  10799b:	83 c4 10             	add    $0x10,%esp
  10799e:	eb 40                	jmp    1079e0 <kernel_main+0x683>
  1079a0:	83 ec 08             	sub    $0x8,%esp
  1079a3:	6a 00                	push   $0x0
  1079a5:	6a 04                	push   $0x4
  1079a7:	e8 b8 88 ff ff       	call   100264 <tty_set_color>
  1079ac:	83 c4 10             	add    $0x10,%esp
  1079af:	83 ec 0c             	sub    $0xc,%esp
  1079b2:	68 2b ac 10 00       	push   $0x10ac2b
  1079b7:	e8 99 1a 00 00       	call   109455 <printf>
  1079bc:	83 c4 10             	add    $0x10,%esp
  1079bf:	eb 1f                	jmp    1079e0 <kernel_main+0x683>
  1079c1:	83 ec 08             	sub    $0x8,%esp
  1079c4:	6a 00                	push   $0x0
  1079c6:	6a 04                	push   $0x4
  1079c8:	e8 97 88 ff ff       	call   100264 <tty_set_color>
  1079cd:	83 c4 10             	add    $0x10,%esp
  1079d0:	83 ec 0c             	sub    $0xc,%esp
  1079d3:	68 2b ac 10 00       	push   $0x10ac2b
  1079d8:	e8 78 1a 00 00       	call   109455 <printf>
  1079dd:	83 c4 10             	add    $0x10,%esp
  1079e0:	83 ec 08             	sub    $0x8,%esp
  1079e3:	6a 00                	push   $0x0
  1079e5:	6a 07                	push   $0x7
  1079e7:	e8 78 88 ff ff       	call   100264 <tty_set_color>
  1079ec:	83 c4 10             	add    $0x10,%esp
  1079ef:	83 ec 0c             	sub    $0xc,%esp
  1079f2:	68 6b ac 10 00       	push   $0x10ac6b
  1079f7:	e8 59 1a 00 00       	call   109455 <printf>
  1079fc:	83 c4 10             	add    $0x10,%esp
  1079ff:	e8 45 e8 ff ff       	call   106249 <paging_init>
  107a04:	83 ec 08             	sub    $0x8,%esp
  107a07:	6a 00                	push   $0x0
  107a09:	6a 02                	push   $0x2
  107a0b:	e8 54 88 ff ff       	call   100264 <tty_set_color>
  107a10:	83 c4 10             	add    $0x10,%esp
  107a13:	83 ec 0c             	sub    $0xc,%esp
  107a16:	68 54 ac 10 00       	push   $0x10ac54
  107a1b:	e8 35 1a 00 00       	call   109455 <printf>
  107a20:	83 c4 10             	add    $0x10,%esp
  107a23:	83 ec 08             	sub    $0x8,%esp
  107a26:	6a 00                	push   $0x0
  107a28:	6a 07                	push   $0x7
  107a2a:	e8 35 88 ff ff       	call   100264 <tty_set_color>
  107a2f:	83 c4 10             	add    $0x10,%esp
  107a32:	83 ec 0c             	sub    $0xc,%esp
  107a35:	6a 00                	push   $0x0
  107a37:	6a 00                	push   $0x0
  107a39:	6a 03                	push   $0x3
  107a3b:	68 80 25 00 00       	push   $0x2580
  107a40:	68 f8 03 00 00       	push   $0x3f8
  107a45:	e8 22 a9 ff ff       	call   10236c <com_init>
  107a4a:	83 c4 20             	add    $0x20,%esp
  107a4d:	83 ec 0c             	sub    $0xc,%esp
  107a50:	6a 00                	push   $0x0
  107a52:	6a 00                	push   $0x0
  107a54:	6a 03                	push   $0x3
  107a56:	68 80 25 00 00       	push   $0x2580
  107a5b:	68 f8 02 00 00       	push   $0x2f8
  107a60:	e8 07 a9 ff ff       	call   10236c <com_init>
  107a65:	83 c4 20             	add    $0x20,%esp
  107a68:	83 ec 0c             	sub    $0xc,%esp
  107a6b:	6a 00                	push   $0x0
  107a6d:	6a 00                	push   $0x0
  107a6f:	6a 03                	push   $0x3
  107a71:	68 80 25 00 00       	push   $0x2580
  107a76:	68 e8 03 00 00       	push   $0x3e8
  107a7b:	e8 ec a8 ff ff       	call   10236c <com_init>
  107a80:	83 c4 20             	add    $0x20,%esp
  107a83:	83 ec 0c             	sub    $0xc,%esp
  107a86:	6a 0d                	push   $0xd
  107a88:	e8 c9 aa ff ff       	call   102556 <com_set_int_byte>
  107a8d:	83 c4 10             	add    $0x10,%esp
  107a90:	83 ec 0c             	sub    $0xc,%esp
  107a93:	68 80 22 14 00       	push   $0x142280
  107a98:	e8 cb 10 00 00       	call   108b68 <__redirect_printf__>
  107a9d:	83 c4 10             	add    $0x10,%esp
  107aa0:	83 ec 0c             	sub    $0xc,%esp
  107aa3:	68 81 ac 10 00       	push   $0x10ac81
  107aa8:	e8 a8 19 00 00       	call   109455 <printf>
  107aad:	83 c4 10             	add    $0x10,%esp
  107ab0:	83 ec 0c             	sub    $0xc,%esp
  107ab3:	6a 00                	push   $0x0
  107ab5:	e8 ae 10 00 00       	call   108b68 <__redirect_printf__>
  107aba:	83 c4 10             	add    $0x10,%esp
  107abd:	83 ec 0c             	sub    $0xc,%esp
  107ac0:	8d 45 9e             	lea    -0x62(%ebp),%eax
  107ac3:	50                   	push   %eax
  107ac4:	e8 d6 af ff ff       	call   102a9f <cmos_read_rtc>
  107ac9:	83 c4 10             	add    $0x10,%esp
  107acc:	83 ec 04             	sub    $0x4,%esp
  107acf:	68 6c 26 14 00       	push   $0x14266c
  107ad4:	83 ec 08             	sub    $0x8,%esp
  107ad7:	89 e0                	mov    %esp,%eax
  107ad9:	8b 55 9e             	mov    -0x62(%ebp),%edx
  107adc:	89 10                	mov    %edx,(%eax)
  107ade:	0f b7 55 a2          	movzwl -0x5e(%ebp),%edx
  107ae2:	66 89 50 04          	mov    %dx,0x4(%eax)
  107ae6:	e8 d9 d4 ff ff       	call   104fc4 <cmos_datetime_to_str>
  107aeb:	83 c4 10             	add    $0x10,%esp
  107aee:	83 ec 0c             	sub    $0xc,%esp
  107af1:	68 80 1e 14 00       	push   $0x141e80
  107af6:	e8 6d 10 00 00       	call   108b68 <__redirect_printf__>
  107afb:	83 c4 10             	add    $0x10,%esp
  107afe:	83 ec 04             	sub    $0x4,%esp
  107b01:	68 80 22 14 00       	push   $0x142280
  107b06:	68 6c 26 14 00       	push   $0x14266c
  107b0b:	68 3d ab 10 00       	push   $0x10ab3d
  107b10:	e8 40 19 00 00       	call   109455 <printf>
  107b15:	83 c4 10             	add    $0x10,%esp
  107b18:	83 ec 0c             	sub    $0xc,%esp
  107b1b:	6a 00                	push   $0x0
  107b1d:	e8 46 10 00 00       	call   108b68 <__redirect_printf__>
  107b22:	83 c4 10             	add    $0x10,%esp
  107b25:	83 ec 08             	sub    $0x8,%esp
  107b28:	68 80 1e 14 00       	push   $0x141e80
  107b2d:	68 f8 03 00 00       	push   $0x3f8
  107b32:	e8 82 aa ff ff       	call   1025b9 <com_write>
  107b37:	83 c4 10             	add    $0x10,%esp
  107b3a:	83 ec 04             	sub    $0x4,%esp
  107b3d:	68 00 04 00 00       	push   $0x400
  107b42:	6a 00                	push   $0x0
  107b44:	68 80 1e 14 00       	push   $0x141e80
  107b49:	e8 f8 1c 00 00       	call   109846 <memset>
  107b4e:	83 c4 10             	add    $0x10,%esp
  107b51:	83 ec 04             	sub    $0x4,%esp
  107b54:	68 ec 03 00 00       	push   $0x3ec
  107b59:	6a 00                	push   $0x0
  107b5b:	68 80 22 14 00       	push   $0x142280
  107b60:	e8 e1 1c 00 00       	call   109846 <memset>
  107b65:	83 c4 10             	add    $0x10,%esp
  107b68:	83 ec 04             	sub    $0x4,%esp
  107b6b:	6a 14                	push   $0x14
  107b6d:	6a 00                	push   $0x0
  107b6f:	68 6c 26 14 00       	push   $0x14266c
  107b74:	e8 cd 1c 00 00       	call   109846 <memset>
  107b79:	83 c4 10             	add    $0x10,%esp
  107b7c:	83 ec 0c             	sub    $0xc,%esp
  107b7f:	68 98 ac 10 00       	push   $0x10ac98
  107b84:	e8 cc 18 00 00       	call   109455 <printf>
  107b89:	83 c4 10             	add    $0x10,%esp
  107b8c:	83 ec 0c             	sub    $0xc,%esp
  107b8f:	68 f8 03 00 00       	push   $0x3f8
  107b94:	e8 d5 a9 ff ff       	call   10256e <com_is_initialized>
  107b99:	83 c4 10             	add    $0x10,%esp
  107b9c:	3c 01                	cmp    $0x1,%al
  107b9e:	0f 85 0d 01 00 00    	jne    107cb1 <kernel_main+0x954>
  107ba4:	83 ec 08             	sub    $0x8,%esp
  107ba7:	6a 00                	push   $0x0
  107ba9:	6a 02                	push   $0x2
  107bab:	e8 b4 86 ff ff       	call   100264 <tty_set_color>
  107bb0:	83 c4 10             	add    $0x10,%esp
  107bb3:	83 ec 0c             	sub    $0xc,%esp
  107bb6:	68 54 ac 10 00       	push   $0x10ac54
  107bbb:	e8 95 18 00 00       	call   109455 <printf>
  107bc0:	83 c4 10             	add    $0x10,%esp
  107bc3:	83 ec 0c             	sub    $0xc,%esp
  107bc6:	68 80 22 14 00       	push   $0x142280
  107bcb:	e8 98 0f 00 00       	call   108b68 <__redirect_printf__>
  107bd0:	83 c4 10             	add    $0x10,%esp
  107bd3:	83 ec 0c             	sub    $0xc,%esp
  107bd6:	68 aa ac 10 00       	push   $0x10acaa
  107bdb:	e8 75 18 00 00       	call   109455 <printf>
  107be0:	83 c4 10             	add    $0x10,%esp
  107be3:	83 ec 0c             	sub    $0xc,%esp
  107be6:	6a 00                	push   $0x0
  107be8:	e8 7b 0f 00 00       	call   108b68 <__redirect_printf__>
  107bed:	83 c4 10             	add    $0x10,%esp
  107bf0:	83 ec 0c             	sub    $0xc,%esp
  107bf3:	8d 45 98             	lea    -0x68(%ebp),%eax
  107bf6:	50                   	push   %eax
  107bf7:	e8 a3 ae ff ff       	call   102a9f <cmos_read_rtc>
  107bfc:	83 c4 10             	add    $0x10,%esp
  107bff:	83 ec 04             	sub    $0x4,%esp
  107c02:	68 6c 26 14 00       	push   $0x14266c
  107c07:	83 ec 08             	sub    $0x8,%esp
  107c0a:	89 e0                	mov    %esp,%eax
  107c0c:	8b 55 98             	mov    -0x68(%ebp),%edx
  107c0f:	89 10                	mov    %edx,(%eax)
  107c11:	0f b7 55 9c          	movzwl -0x64(%ebp),%edx
  107c15:	66 89 50 04          	mov    %dx,0x4(%eax)
  107c19:	e8 a6 d3 ff ff       	call   104fc4 <cmos_datetime_to_str>
  107c1e:	83 c4 10             	add    $0x10,%esp
  107c21:	83 ec 0c             	sub    $0xc,%esp
  107c24:	68 80 1e 14 00       	push   $0x141e80
  107c29:	e8 3a 0f 00 00       	call   108b68 <__redirect_printf__>
  107c2e:	83 c4 10             	add    $0x10,%esp
  107c31:	83 ec 04             	sub    $0x4,%esp
  107c34:	68 80 22 14 00       	push   $0x142280
  107c39:	68 6c 26 14 00       	push   $0x14266c
  107c3e:	68 3d ab 10 00       	push   $0x10ab3d
  107c43:	e8 0d 18 00 00       	call   109455 <printf>
  107c48:	83 c4 10             	add    $0x10,%esp
  107c4b:	83 ec 0c             	sub    $0xc,%esp
  107c4e:	6a 00                	push   $0x0
  107c50:	e8 13 0f 00 00       	call   108b68 <__redirect_printf__>
  107c55:	83 c4 10             	add    $0x10,%esp
  107c58:	83 ec 08             	sub    $0x8,%esp
  107c5b:	68 80 1e 14 00       	push   $0x141e80
  107c60:	68 f8 03 00 00       	push   $0x3f8
  107c65:	e8 4f a9 ff ff       	call   1025b9 <com_write>
  107c6a:	83 c4 10             	add    $0x10,%esp
  107c6d:	83 ec 04             	sub    $0x4,%esp
  107c70:	68 00 04 00 00       	push   $0x400
  107c75:	6a 00                	push   $0x0
  107c77:	68 80 1e 14 00       	push   $0x141e80
  107c7c:	e8 c5 1b 00 00       	call   109846 <memset>
  107c81:	83 c4 10             	add    $0x10,%esp
  107c84:	83 ec 04             	sub    $0x4,%esp
  107c87:	68 ec 03 00 00       	push   $0x3ec
  107c8c:	6a 00                	push   $0x0
  107c8e:	68 80 22 14 00       	push   $0x142280
  107c93:	e8 ae 1b 00 00       	call   109846 <memset>
  107c98:	83 c4 10             	add    $0x10,%esp
  107c9b:	83 ec 04             	sub    $0x4,%esp
  107c9e:	6a 14                	push   $0x14
  107ca0:	6a 00                	push   $0x0
  107ca2:	68 6c 26 14 00       	push   $0x14266c
  107ca7:	e8 9a 1b 00 00       	call   109846 <memset>
  107cac:	83 c4 10             	add    $0x10,%esp
  107caf:	eb 1f                	jmp    107cd0 <kernel_main+0x973>
  107cb1:	83 ec 08             	sub    $0x8,%esp
  107cb4:	6a 00                	push   $0x0
  107cb6:	6a 04                	push   $0x4
  107cb8:	e8 a7 85 ff ff       	call   100264 <tty_set_color>
  107cbd:	83 c4 10             	add    $0x10,%esp
  107cc0:	83 ec 0c             	sub    $0xc,%esp
  107cc3:	68 2b ac 10 00       	push   $0x10ac2b
  107cc8:	e8 88 17 00 00       	call   109455 <printf>
  107ccd:	83 c4 10             	add    $0x10,%esp
  107cd0:	83 ec 08             	sub    $0x8,%esp
  107cd3:	6a 00                	push   $0x0
  107cd5:	6a 07                	push   $0x7
  107cd7:	e8 88 85 ff ff       	call   100264 <tty_set_color>
  107cdc:	83 c4 10             	add    $0x10,%esp
  107cdf:	83 ec 0c             	sub    $0xc,%esp
  107ce2:	68 ba ac 10 00       	push   $0x10acba
  107ce7:	e8 69 17 00 00       	call   109455 <printf>
  107cec:	83 c4 10             	add    $0x10,%esp
  107cef:	83 ec 0c             	sub    $0xc,%esp
  107cf2:	68 f8 02 00 00       	push   $0x2f8
  107cf7:	e8 72 a8 ff ff       	call   10256e <com_is_initialized>
  107cfc:	83 c4 10             	add    $0x10,%esp
  107cff:	3c 01                	cmp    $0x1,%al
  107d01:	0f 85 10 01 00 00    	jne    107e17 <kernel_main+0xaba>
  107d07:	83 ec 08             	sub    $0x8,%esp
  107d0a:	6a 00                	push   $0x0
  107d0c:	6a 02                	push   $0x2
  107d0e:	e8 51 85 ff ff       	call   100264 <tty_set_color>
  107d13:	83 c4 10             	add    $0x10,%esp
  107d16:	83 ec 0c             	sub    $0xc,%esp
  107d19:	68 54 ac 10 00       	push   $0x10ac54
  107d1e:	e8 32 17 00 00       	call   109455 <printf>
  107d23:	83 c4 10             	add    $0x10,%esp
  107d26:	83 ec 0c             	sub    $0xc,%esp
  107d29:	68 80 22 14 00       	push   $0x142280
  107d2e:	e8 35 0e 00 00       	call   108b68 <__redirect_printf__>
  107d33:	83 c4 10             	add    $0x10,%esp
  107d36:	83 ec 0c             	sub    $0xc,%esp
  107d39:	68 cc ac 10 00       	push   $0x10accc
  107d3e:	e8 12 17 00 00       	call   109455 <printf>
  107d43:	83 c4 10             	add    $0x10,%esp
  107d46:	83 ec 0c             	sub    $0xc,%esp
  107d49:	6a 00                	push   $0x0
  107d4b:	e8 18 0e 00 00       	call   108b68 <__redirect_printf__>
  107d50:	83 c4 10             	add    $0x10,%esp
  107d53:	83 ec 0c             	sub    $0xc,%esp
  107d56:	8d 45 92             	lea    -0x6e(%ebp),%eax
  107d59:	50                   	push   %eax
  107d5a:	e8 40 ad ff ff       	call   102a9f <cmos_read_rtc>
  107d5f:	83 c4 10             	add    $0x10,%esp
  107d62:	83 ec 04             	sub    $0x4,%esp
  107d65:	68 6c 26 14 00       	push   $0x14266c
  107d6a:	83 ec 08             	sub    $0x8,%esp
  107d6d:	89 e0                	mov    %esp,%eax
  107d6f:	8b 55 92             	mov    -0x6e(%ebp),%edx
  107d72:	89 10                	mov    %edx,(%eax)
  107d74:	0f b7 55 96          	movzwl -0x6a(%ebp),%edx
  107d78:	66 89 50 04          	mov    %dx,0x4(%eax)
  107d7c:	e8 43 d2 ff ff       	call   104fc4 <cmos_datetime_to_str>
  107d81:	83 c4 10             	add    $0x10,%esp
  107d84:	83 ec 0c             	sub    $0xc,%esp
  107d87:	68 80 1e 14 00       	push   $0x141e80
  107d8c:	e8 d7 0d 00 00       	call   108b68 <__redirect_printf__>
  107d91:	83 c4 10             	add    $0x10,%esp
  107d94:	83 ec 04             	sub    $0x4,%esp
  107d97:	68 80 22 14 00       	push   $0x142280
  107d9c:	68 6c 26 14 00       	push   $0x14266c
  107da1:	68 3d ab 10 00       	push   $0x10ab3d
  107da6:	e8 aa 16 00 00       	call   109455 <printf>
  107dab:	83 c4 10             	add    $0x10,%esp
  107dae:	83 ec 0c             	sub    $0xc,%esp
  107db1:	6a 00                	push   $0x0
  107db3:	e8 b0 0d 00 00       	call   108b68 <__redirect_printf__>
  107db8:	83 c4 10             	add    $0x10,%esp
  107dbb:	83 ec 08             	sub    $0x8,%esp
  107dbe:	68 80 1e 14 00       	push   $0x141e80
  107dc3:	68 f8 03 00 00       	push   $0x3f8
  107dc8:	e8 ec a7 ff ff       	call   1025b9 <com_write>
  107dcd:	83 c4 10             	add    $0x10,%esp
  107dd0:	83 ec 04             	sub    $0x4,%esp
  107dd3:	68 00 04 00 00       	push   $0x400
  107dd8:	6a 00                	push   $0x0
  107dda:	68 80 1e 14 00       	push   $0x141e80
  107ddf:	e8 62 1a 00 00       	call   109846 <memset>
  107de4:	83 c4 10             	add    $0x10,%esp
  107de7:	83 ec 04             	sub    $0x4,%esp
  107dea:	68 ec 03 00 00       	push   $0x3ec
  107def:	6a 00                	push   $0x0
  107df1:	68 80 22 14 00       	push   $0x142280
  107df6:	e8 4b 1a 00 00       	call   109846 <memset>
  107dfb:	83 c4 10             	add    $0x10,%esp
  107dfe:	83 ec 04             	sub    $0x4,%esp
  107e01:	6a 14                	push   $0x14
  107e03:	6a 00                	push   $0x0
  107e05:	68 6c 26 14 00       	push   $0x14266c
  107e0a:	e8 37 1a 00 00       	call   109846 <memset>
  107e0f:	83 c4 10             	add    $0x10,%esp
  107e12:	e9 0b 01 00 00       	jmp    107f22 <kernel_main+0xbc5>
  107e17:	83 ec 08             	sub    $0x8,%esp
  107e1a:	6a 00                	push   $0x0
  107e1c:	6a 04                	push   $0x4
  107e1e:	e8 41 84 ff ff       	call   100264 <tty_set_color>
  107e23:	83 c4 10             	add    $0x10,%esp
  107e26:	83 ec 0c             	sub    $0xc,%esp
  107e29:	68 2b ac 10 00       	push   $0x10ac2b
  107e2e:	e8 22 16 00 00       	call   109455 <printf>
  107e33:	83 c4 10             	add    $0x10,%esp
  107e36:	83 ec 0c             	sub    $0xc,%esp
  107e39:	68 80 22 14 00       	push   $0x142280
  107e3e:	e8 25 0d 00 00       	call   108b68 <__redirect_printf__>
  107e43:	83 c4 10             	add    $0x10,%esp
  107e46:	83 ec 0c             	sub    $0xc,%esp
  107e49:	68 dc ac 10 00       	push   $0x10acdc
  107e4e:	e8 02 16 00 00       	call   109455 <printf>
  107e53:	83 c4 10             	add    $0x10,%esp
  107e56:	83 ec 0c             	sub    $0xc,%esp
  107e59:	6a 00                	push   $0x0
  107e5b:	e8 08 0d 00 00       	call   108b68 <__redirect_printf__>
  107e60:	83 c4 10             	add    $0x10,%esp
  107e63:	83 ec 0c             	sub    $0xc,%esp
  107e66:	8d 45 8c             	lea    -0x74(%ebp),%eax
  107e69:	50                   	push   %eax
  107e6a:	e8 30 ac ff ff       	call   102a9f <cmos_read_rtc>
  107e6f:	83 c4 10             	add    $0x10,%esp
  107e72:	83 ec 04             	sub    $0x4,%esp
  107e75:	68 6c 26 14 00       	push   $0x14266c
  107e7a:	83 ec 08             	sub    $0x8,%esp
  107e7d:	89 e0                	mov    %esp,%eax
  107e7f:	8b 55 8c             	mov    -0x74(%ebp),%edx
  107e82:	89 10                	mov    %edx,(%eax)
  107e84:	0f b7 55 90          	movzwl -0x70(%ebp),%edx
  107e88:	66 89 50 04          	mov    %dx,0x4(%eax)
  107e8c:	e8 33 d1 ff ff       	call   104fc4 <cmos_datetime_to_str>
  107e91:	83 c4 10             	add    $0x10,%esp
  107e94:	83 ec 0c             	sub    $0xc,%esp
  107e97:	68 80 1e 14 00       	push   $0x141e80
  107e9c:	e8 c7 0c 00 00       	call   108b68 <__redirect_printf__>
  107ea1:	83 c4 10             	add    $0x10,%esp
  107ea4:	83 ec 04             	sub    $0x4,%esp
  107ea7:	68 80 22 14 00       	push   $0x142280
  107eac:	68 6c 26 14 00       	push   $0x14266c
  107eb1:	68 3d ab 10 00       	push   $0x10ab3d
  107eb6:	e8 9a 15 00 00       	call   109455 <printf>
  107ebb:	83 c4 10             	add    $0x10,%esp
  107ebe:	83 ec 0c             	sub    $0xc,%esp
  107ec1:	6a 00                	push   $0x0
  107ec3:	e8 a0 0c 00 00       	call   108b68 <__redirect_printf__>
  107ec8:	83 c4 10             	add    $0x10,%esp
  107ecb:	83 ec 08             	sub    $0x8,%esp
  107ece:	68 80 1e 14 00       	push   $0x141e80
  107ed3:	68 f8 03 00 00       	push   $0x3f8
  107ed8:	e8 dc a6 ff ff       	call   1025b9 <com_write>
  107edd:	83 c4 10             	add    $0x10,%esp
  107ee0:	83 ec 04             	sub    $0x4,%esp
  107ee3:	68 00 04 00 00       	push   $0x400
  107ee8:	6a 00                	push   $0x0
  107eea:	68 80 1e 14 00       	push   $0x141e80
  107eef:	e8 52 19 00 00       	call   109846 <memset>
  107ef4:	83 c4 10             	add    $0x10,%esp
  107ef7:	83 ec 04             	sub    $0x4,%esp
  107efa:	68 ec 03 00 00       	push   $0x3ec
  107eff:	6a 00                	push   $0x0
  107f01:	68 80 22 14 00       	push   $0x142280
  107f06:	e8 3b 19 00 00       	call   109846 <memset>
  107f0b:	83 c4 10             	add    $0x10,%esp
  107f0e:	83 ec 04             	sub    $0x4,%esp
  107f11:	6a 14                	push   $0x14
  107f13:	6a 00                	push   $0x0
  107f15:	68 6c 26 14 00       	push   $0x14266c
  107f1a:	e8 27 19 00 00       	call   109846 <memset>
  107f1f:	83 c4 10             	add    $0x10,%esp
  107f22:	83 ec 08             	sub    $0x8,%esp
  107f25:	6a 00                	push   $0x0
  107f27:	6a 07                	push   $0x7
  107f29:	e8 36 83 ff ff       	call   100264 <tty_set_color>
  107f2e:	83 c4 10             	add    $0x10,%esp
  107f31:	83 ec 0c             	sub    $0xc,%esp
  107f34:	68 f0 ac 10 00       	push   $0x10acf0
  107f39:	e8 17 15 00 00       	call   109455 <printf>
  107f3e:	83 c4 10             	add    $0x10,%esp
  107f41:	83 ec 0c             	sub    $0xc,%esp
  107f44:	68 e8 03 00 00       	push   $0x3e8
  107f49:	e8 20 a6 ff ff       	call   10256e <com_is_initialized>
  107f4e:	83 c4 10             	add    $0x10,%esp
  107f51:	3c 01                	cmp    $0x1,%al
  107f53:	0f 85 10 01 00 00    	jne    108069 <kernel_main+0xd0c>
  107f59:	83 ec 08             	sub    $0x8,%esp
  107f5c:	6a 00                	push   $0x0
  107f5e:	6a 02                	push   $0x2
  107f60:	e8 ff 82 ff ff       	call   100264 <tty_set_color>
  107f65:	83 c4 10             	add    $0x10,%esp
  107f68:	83 ec 0c             	sub    $0xc,%esp
  107f6b:	68 54 ac 10 00       	push   $0x10ac54
  107f70:	e8 e0 14 00 00       	call   109455 <printf>
  107f75:	83 c4 10             	add    $0x10,%esp
  107f78:	83 ec 0c             	sub    $0xc,%esp
  107f7b:	68 80 22 14 00       	push   $0x142280
  107f80:	e8 e3 0b 00 00       	call   108b68 <__redirect_printf__>
  107f85:	83 c4 10             	add    $0x10,%esp
  107f88:	83 ec 0c             	sub    $0xc,%esp
  107f8b:	68 02 ad 10 00       	push   $0x10ad02
  107f90:	e8 c0 14 00 00       	call   109455 <printf>
  107f95:	83 c4 10             	add    $0x10,%esp
  107f98:	83 ec 0c             	sub    $0xc,%esp
  107f9b:	6a 00                	push   $0x0
  107f9d:	e8 c6 0b 00 00       	call   108b68 <__redirect_printf__>
  107fa2:	83 c4 10             	add    $0x10,%esp
  107fa5:	83 ec 0c             	sub    $0xc,%esp
  107fa8:	8d 45 86             	lea    -0x7a(%ebp),%eax
  107fab:	50                   	push   %eax
  107fac:	e8 ee aa ff ff       	call   102a9f <cmos_read_rtc>
  107fb1:	83 c4 10             	add    $0x10,%esp
  107fb4:	83 ec 04             	sub    $0x4,%esp
  107fb7:	68 6c 26 14 00       	push   $0x14266c
  107fbc:	83 ec 08             	sub    $0x8,%esp
  107fbf:	89 e0                	mov    %esp,%eax
  107fc1:	8b 55 86             	mov    -0x7a(%ebp),%edx
  107fc4:	89 10                	mov    %edx,(%eax)
  107fc6:	0f b7 55 8a          	movzwl -0x76(%ebp),%edx
  107fca:	66 89 50 04          	mov    %dx,0x4(%eax)
  107fce:	e8 f1 cf ff ff       	call   104fc4 <cmos_datetime_to_str>
  107fd3:	83 c4 10             	add    $0x10,%esp
  107fd6:	83 ec 0c             	sub    $0xc,%esp
  107fd9:	68 80 1e 14 00       	push   $0x141e80
  107fde:	e8 85 0b 00 00       	call   108b68 <__redirect_printf__>
  107fe3:	83 c4 10             	add    $0x10,%esp
  107fe6:	83 ec 04             	sub    $0x4,%esp
  107fe9:	68 80 22 14 00       	push   $0x142280
  107fee:	68 6c 26 14 00       	push   $0x14266c
  107ff3:	68 3d ab 10 00       	push   $0x10ab3d
  107ff8:	e8 58 14 00 00       	call   109455 <printf>
  107ffd:	83 c4 10             	add    $0x10,%esp
  108000:	83 ec 0c             	sub    $0xc,%esp
  108003:	6a 00                	push   $0x0
  108005:	e8 5e 0b 00 00       	call   108b68 <__redirect_printf__>
  10800a:	83 c4 10             	add    $0x10,%esp
  10800d:	83 ec 08             	sub    $0x8,%esp
  108010:	68 80 1e 14 00       	push   $0x141e80
  108015:	68 f8 03 00 00       	push   $0x3f8
  10801a:	e8 9a a5 ff ff       	call   1025b9 <com_write>
  10801f:	83 c4 10             	add    $0x10,%esp
  108022:	83 ec 04             	sub    $0x4,%esp
  108025:	68 00 04 00 00       	push   $0x400
  10802a:	6a 00                	push   $0x0
  10802c:	68 80 1e 14 00       	push   $0x141e80
  108031:	e8 10 18 00 00       	call   109846 <memset>
  108036:	83 c4 10             	add    $0x10,%esp
  108039:	83 ec 04             	sub    $0x4,%esp
  10803c:	68 ec 03 00 00       	push   $0x3ec
  108041:	6a 00                	push   $0x0
  108043:	68 80 22 14 00       	push   $0x142280
  108048:	e8 f9 17 00 00       	call   109846 <memset>
  10804d:	83 c4 10             	add    $0x10,%esp
  108050:	83 ec 04             	sub    $0x4,%esp
  108053:	6a 14                	push   $0x14
  108055:	6a 00                	push   $0x0
  108057:	68 6c 26 14 00       	push   $0x14266c
  10805c:	e8 e5 17 00 00       	call   109846 <memset>
  108061:	83 c4 10             	add    $0x10,%esp
  108064:	e9 0b 01 00 00       	jmp    108174 <kernel_main+0xe17>
  108069:	83 ec 08             	sub    $0x8,%esp
  10806c:	6a 00                	push   $0x0
  10806e:	6a 04                	push   $0x4
  108070:	e8 ef 81 ff ff       	call   100264 <tty_set_color>
  108075:	83 c4 10             	add    $0x10,%esp
  108078:	83 ec 0c             	sub    $0xc,%esp
  10807b:	68 2b ac 10 00       	push   $0x10ac2b
  108080:	e8 d0 13 00 00       	call   109455 <printf>
  108085:	83 c4 10             	add    $0x10,%esp
  108088:	83 ec 0c             	sub    $0xc,%esp
  10808b:	68 80 22 14 00       	push   $0x142280
  108090:	e8 d3 0a 00 00       	call   108b68 <__redirect_printf__>
  108095:	83 c4 10             	add    $0x10,%esp
  108098:	83 ec 0c             	sub    $0xc,%esp
  10809b:	68 12 ad 10 00       	push   $0x10ad12
  1080a0:	e8 b0 13 00 00       	call   109455 <printf>
  1080a5:	83 c4 10             	add    $0x10,%esp
  1080a8:	83 ec 0c             	sub    $0xc,%esp
  1080ab:	6a 00                	push   $0x0
  1080ad:	e8 b6 0a 00 00       	call   108b68 <__redirect_printf__>
  1080b2:	83 c4 10             	add    $0x10,%esp
  1080b5:	83 ec 0c             	sub    $0xc,%esp
  1080b8:	8d 45 80             	lea    -0x80(%ebp),%eax
  1080bb:	50                   	push   %eax
  1080bc:	e8 de a9 ff ff       	call   102a9f <cmos_read_rtc>
  1080c1:	83 c4 10             	add    $0x10,%esp
  1080c4:	83 ec 04             	sub    $0x4,%esp
  1080c7:	68 6c 26 14 00       	push   $0x14266c
  1080cc:	83 ec 08             	sub    $0x8,%esp
  1080cf:	89 e0                	mov    %esp,%eax
  1080d1:	8b 55 80             	mov    -0x80(%ebp),%edx
  1080d4:	89 10                	mov    %edx,(%eax)
  1080d6:	0f b7 55 84          	movzwl -0x7c(%ebp),%edx
  1080da:	66 89 50 04          	mov    %dx,0x4(%eax)
  1080de:	e8 e1 ce ff ff       	call   104fc4 <cmos_datetime_to_str>
  1080e3:	83 c4 10             	add    $0x10,%esp
  1080e6:	83 ec 0c             	sub    $0xc,%esp
  1080e9:	68 80 1e 14 00       	push   $0x141e80
  1080ee:	e8 75 0a 00 00       	call   108b68 <__redirect_printf__>
  1080f3:	83 c4 10             	add    $0x10,%esp
  1080f6:	83 ec 04             	sub    $0x4,%esp
  1080f9:	68 80 22 14 00       	push   $0x142280
  1080fe:	68 6c 26 14 00       	push   $0x14266c
  108103:	68 3d ab 10 00       	push   $0x10ab3d
  108108:	e8 48 13 00 00       	call   109455 <printf>
  10810d:	83 c4 10             	add    $0x10,%esp
  108110:	83 ec 0c             	sub    $0xc,%esp
  108113:	6a 00                	push   $0x0
  108115:	e8 4e 0a 00 00       	call   108b68 <__redirect_printf__>
  10811a:	83 c4 10             	add    $0x10,%esp
  10811d:	83 ec 08             	sub    $0x8,%esp
  108120:	68 80 1e 14 00       	push   $0x141e80
  108125:	68 f8 03 00 00       	push   $0x3f8
  10812a:	e8 8a a4 ff ff       	call   1025b9 <com_write>
  10812f:	83 c4 10             	add    $0x10,%esp
  108132:	83 ec 04             	sub    $0x4,%esp
  108135:	68 00 04 00 00       	push   $0x400
  10813a:	6a 00                	push   $0x0
  10813c:	68 80 1e 14 00       	push   $0x141e80
  108141:	e8 00 17 00 00       	call   109846 <memset>
  108146:	83 c4 10             	add    $0x10,%esp
  108149:	83 ec 04             	sub    $0x4,%esp
  10814c:	68 ec 03 00 00       	push   $0x3ec
  108151:	6a 00                	push   $0x0
  108153:	68 80 22 14 00       	push   $0x142280
  108158:	e8 e9 16 00 00       	call   109846 <memset>
  10815d:	83 c4 10             	add    $0x10,%esp
  108160:	83 ec 04             	sub    $0x4,%esp
  108163:	6a 14                	push   $0x14
  108165:	6a 00                	push   $0x0
  108167:	68 6c 26 14 00       	push   $0x14266c
  10816c:	e8 d5 16 00 00       	call   109846 <memset>
  108171:	83 c4 10             	add    $0x10,%esp
  108174:	83 ec 08             	sub    $0x8,%esp
  108177:	6a 00                	push   $0x0
  108179:	6a 07                	push   $0x7
  10817b:	e8 e4 80 ff ff       	call   100264 <tty_set_color>
  108180:	83 c4 10             	add    $0x10,%esp
  108183:	83 ec 0c             	sub    $0xc,%esp
  108186:	68 26 ad 10 00       	push   $0x10ad26
  10818b:	e8 c5 12 00 00       	call   109455 <printf>
  108190:	83 c4 10             	add    $0x10,%esp
  108193:	e8 4e 9b ff ff       	call   101ce6 <ps2_controller_init>
  108198:	e8 4d a1 ff ff       	call   1022ea <ps2_is_present>
  10819d:	84 c0                	test   %al,%al
  10819f:	74 46                	je     1081e7 <kernel_main+0xe8a>
  1081a1:	83 ec 08             	sub    $0x8,%esp
  1081a4:	6a 00                	push   $0x0
  1081a6:	6a 02                	push   $0x2
  1081a8:	e8 b7 80 ff ff       	call   100264 <tty_set_color>
  1081ad:	83 c4 10             	add    $0x10,%esp
  1081b0:	e8 29 a1 ff ff       	call   1022de <ps2_is_dual_channel>
  1081b5:	3c 01                	cmp    $0x1,%al
  1081b7:	75 07                	jne    1081c0 <kernel_main+0xe63>
  1081b9:	b8 40 ad 10 00       	mov    $0x10ad40,%eax
  1081be:	eb 05                	jmp    1081c5 <kernel_main+0xe68>
  1081c0:	b8 42 ad 10 00       	mov    $0x10ad42,%eax
  1081c5:	83 ec 08             	sub    $0x8,%esp
  1081c8:	50                   	push   %eax
  1081c9:	68 44 ad 10 00       	push   $0x10ad44
  1081ce:	e8 82 12 00 00       	call   109455 <printf>
  1081d3:	83 c4 10             	add    $0x10,%esp
  1081d6:	83 ec 08             	sub    $0x8,%esp
  1081d9:	6a 00                	push   $0x0
  1081db:	6a 07                	push   $0x7
  1081dd:	e8 82 80 ff ff       	call   100264 <tty_set_color>
  1081e2:	83 c4 10             	add    $0x10,%esp
  1081e5:	eb 2e                	jmp    108215 <kernel_main+0xeb8>
  1081e7:	83 ec 08             	sub    $0x8,%esp
  1081ea:	6a 00                	push   $0x0
  1081ec:	6a 04                	push   $0x4
  1081ee:	e8 71 80 ff ff       	call   100264 <tty_set_color>
  1081f3:	83 c4 10             	add    $0x10,%esp
  1081f6:	83 ec 0c             	sub    $0xc,%esp
  1081f9:	68 4a ad 10 00       	push   $0x10ad4a
  1081fe:	e8 52 12 00 00       	call   109455 <printf>
  108203:	83 c4 10             	add    $0x10,%esp
  108206:	83 ec 08             	sub    $0x8,%esp
  108209:	6a 00                	push   $0x0
  10820b:	6a 07                	push   $0x7
  10820d:	e8 52 80 ff ff       	call   100264 <tty_set_color>
  108212:	83 c4 10             	add    $0x10,%esp
  108215:	83 ec 08             	sub    $0x8,%esp
  108218:	6a 00                	push   $0x0
  10821a:	6a 07                	push   $0x7
  10821c:	e8 43 80 ff ff       	call   100264 <tty_set_color>
  108221:	83 c4 10             	add    $0x10,%esp
  108224:	83 ec 0c             	sub    $0xc,%esp
  108227:	68 4f ad 10 00       	push   $0x10ad4f
  10822c:	e8 24 12 00 00       	call   109455 <printf>
  108231:	83 c4 10             	add    $0x10,%esp
  108234:	e8 f7 ba ff ff       	call   103d30 <pit_init>
  108239:	83 ec 0c             	sub    $0xc,%esp
  10823c:	6a 60                	push   $0x60
  10823e:	e8 f9 bb ff ff       	call   103e3c <keyboard_init>
  108243:	83 c4 10             	add    $0x10,%esp
  108246:	83 ec 08             	sub    $0x8,%esp
  108249:	6a 00                	push   $0x0
  10824b:	6a 02                	push   $0x2
  10824d:	e8 12 80 ff ff       	call   100264 <tty_set_color>
  108252:	83 c4 10             	add    $0x10,%esp
  108255:	83 ec 0c             	sub    $0xc,%esp
  108258:	68 54 ac 10 00       	push   $0x10ac54
  10825d:	e8 f3 11 00 00       	call   109455 <printf>
  108262:	83 c4 10             	add    $0x10,%esp
  108265:	83 ec 08             	sub    $0x8,%esp
  108268:	6a 00                	push   $0x0
  10826a:	6a 07                	push   $0x7
  10826c:	e8 f3 7f ff ff       	call   100264 <tty_set_color>
  108271:	83 c4 10             	add    $0x10,%esp
  108274:	83 ec 0c             	sub    $0xc,%esp
  108277:	68 68 ad 10 00       	push   $0x10ad68
  10827c:	e8 d4 11 00 00       	call   109455 <printf>
  108281:	83 c4 10             	add    $0x10,%esp
  108284:	e8 42 98 ff ff       	call   101acb <syscall_init>
  108289:	83 ec 08             	sub    $0x8,%esp
  10828c:	6a 00                	push   $0x0
  10828e:	6a 02                	push   $0x2
  108290:	e8 cf 7f ff ff       	call   100264 <tty_set_color>
  108295:	83 c4 10             	add    $0x10,%esp
  108298:	83 ec 0c             	sub    $0xc,%esp
  10829b:	68 54 ac 10 00       	push   $0x10ac54
  1082a0:	e8 b0 11 00 00       	call   109455 <printf>
  1082a5:	83 c4 10             	add    $0x10,%esp
  1082a8:	83 ec 08             	sub    $0x8,%esp
  1082ab:	6a 00                	push   $0x0
  1082ad:	6a 07                	push   $0x7
  1082af:	e8 b0 7f ff ff       	call   100264 <tty_set_color>
  1082b4:	83 c4 10             	add    $0x10,%esp
  1082b7:	83 ec 0c             	sub    $0xc,%esp
  1082ba:	68 80 ad 10 00       	push   $0x10ad80
  1082bf:	e8 91 11 00 00       	call   109455 <printf>
  1082c4:	83 c4 10             	add    $0x10,%esp
  1082c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1082ca:	8b 40 18             	mov    0x18(%eax),%eax
  1082cd:	8b 00                	mov    (%eax),%eax
  1082cf:	83 ec 0c             	sub    $0xc,%esp
  1082d2:	50                   	push   %eax
  1082d3:	e8 6d c8 ff ff       	call   104b45 <initrd_init>
  1082d8:	83 c4 10             	add    $0x10,%esp
  1082db:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1082de:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1082e5:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  1082ec:	e9 38 04 00 00       	jmp    108729 <kernel_main+0x13cc>
  1082f1:	83 ec 0c             	sub    $0xc,%esp
  1082f4:	68 80 22 14 00       	push   $0x142280
  1082f9:	e8 6a 08 00 00       	call   108b68 <__redirect_printf__>
  1082fe:	83 c4 10             	add    $0x10,%esp
  108301:	8b 45 d0             	mov    -0x30(%ebp),%eax
  108304:	83 ec 08             	sub    $0x8,%esp
  108307:	50                   	push   %eax
  108308:	68 93 ad 10 00       	push   $0x10ad93
  10830d:	e8 43 11 00 00       	call   109455 <printf>
  108312:	83 c4 10             	add    $0x10,%esp
  108315:	83 ec 0c             	sub    $0xc,%esp
  108318:	6a 00                	push   $0x0
  10831a:	e8 49 08 00 00       	call   108b68 <__redirect_printf__>
  10831f:	83 c4 10             	add    $0x10,%esp
  108322:	83 ec 0c             	sub    $0xc,%esp
  108325:	8d 85 7a ff ff ff    	lea    -0x86(%ebp),%eax
  10832b:	50                   	push   %eax
  10832c:	e8 6e a7 ff ff       	call   102a9f <cmos_read_rtc>
  108331:	83 c4 10             	add    $0x10,%esp
  108334:	83 ec 04             	sub    $0x4,%esp
  108337:	68 6c 26 14 00       	push   $0x14266c
  10833c:	83 ec 08             	sub    $0x8,%esp
  10833f:	89 e0                	mov    %esp,%eax
  108341:	8b 95 7a ff ff ff    	mov    -0x86(%ebp),%edx
  108347:	89 10                	mov    %edx,(%eax)
  108349:	0f b7 95 7e ff ff ff 	movzwl -0x82(%ebp),%edx
  108350:	66 89 50 04          	mov    %dx,0x4(%eax)
  108354:	e8 6b cc ff ff       	call   104fc4 <cmos_datetime_to_str>
  108359:	83 c4 10             	add    $0x10,%esp
  10835c:	83 ec 0c             	sub    $0xc,%esp
  10835f:	68 80 1e 14 00       	push   $0x141e80
  108364:	e8 ff 07 00 00       	call   108b68 <__redirect_printf__>
  108369:	83 c4 10             	add    $0x10,%esp
  10836c:	83 ec 04             	sub    $0x4,%esp
  10836f:	68 80 22 14 00       	push   $0x142280
  108374:	68 6c 26 14 00       	push   $0x14266c
  108379:	68 3d ab 10 00       	push   $0x10ab3d
  10837e:	e8 d2 10 00 00       	call   109455 <printf>
  108383:	83 c4 10             	add    $0x10,%esp
  108386:	83 ec 0c             	sub    $0xc,%esp
  108389:	6a 00                	push   $0x0
  10838b:	e8 d8 07 00 00       	call   108b68 <__redirect_printf__>
  108390:	83 c4 10             	add    $0x10,%esp
  108393:	83 ec 08             	sub    $0x8,%esp
  108396:	68 80 1e 14 00       	push   $0x141e80
  10839b:	68 f8 03 00 00       	push   $0x3f8
  1083a0:	e8 14 a2 ff ff       	call   1025b9 <com_write>
  1083a5:	83 c4 10             	add    $0x10,%esp
  1083a8:	83 ec 04             	sub    $0x4,%esp
  1083ab:	68 00 04 00 00       	push   $0x400
  1083b0:	6a 00                	push   $0x0
  1083b2:	68 80 1e 14 00       	push   $0x141e80
  1083b7:	e8 8a 14 00 00       	call   109846 <memset>
  1083bc:	83 c4 10             	add    $0x10,%esp
  1083bf:	83 ec 04             	sub    $0x4,%esp
  1083c2:	68 ec 03 00 00       	push   $0x3ec
  1083c7:	6a 00                	push   $0x0
  1083c9:	68 80 22 14 00       	push   $0x142280
  1083ce:	e8 73 14 00 00       	call   109846 <memset>
  1083d3:	83 c4 10             	add    $0x10,%esp
  1083d6:	83 ec 04             	sub    $0x4,%esp
  1083d9:	6a 14                	push   $0x14
  1083db:	6a 00                	push   $0x0
  1083dd:	68 6c 26 14 00       	push   $0x14266c
  1083e2:	e8 5f 14 00 00       	call   109846 <memset>
  1083e7:	83 c4 10             	add    $0x10,%esp
  1083ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
  1083ed:	83 ec 08             	sub    $0x8,%esp
  1083f0:	50                   	push   %eax
  1083f1:	ff 75 d4             	push   -0x2c(%ebp)
  1083f4:	e8 ed c4 ff ff       	call   1048e6 <vfs_find_dir>
  1083f9:	83 c4 10             	add    $0x10,%esp
  1083fc:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1083ff:	8b 45 cc             	mov    -0x34(%ebp),%eax
  108402:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  108408:	83 f8 02             	cmp    $0x2,%eax
  10840b:	0f 85 02 01 00 00    	jne    108513 <kernel_main+0x11b6>
  108411:	83 ec 0c             	sub    $0xc,%esp
  108414:	68 80 22 14 00       	push   $0x142280
  108419:	e8 4a 07 00 00       	call   108b68 <__redirect_printf__>
  10841e:	83 c4 10             	add    $0x10,%esp
  108421:	8b 55 cc             	mov    -0x34(%ebp),%edx
  108424:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  108427:	83 ec 04             	sub    $0x4,%esp
  10842a:	52                   	push   %edx
  10842b:	50                   	push   %eax
  10842c:	68 a2 ad 10 00       	push   $0x10ada2
  108431:	e8 1f 10 00 00       	call   109455 <printf>
  108436:	83 c4 10             	add    $0x10,%esp
  108439:	83 ec 0c             	sub    $0xc,%esp
  10843c:	6a 00                	push   $0x0
  10843e:	e8 25 07 00 00       	call   108b68 <__redirect_printf__>
  108443:	83 c4 10             	add    $0x10,%esp
  108446:	83 ec 0c             	sub    $0xc,%esp
  108449:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
  10844f:	50                   	push   %eax
  108450:	e8 4a a6 ff ff       	call   102a9f <cmos_read_rtc>
  108455:	83 c4 10             	add    $0x10,%esp
  108458:	83 ec 04             	sub    $0x4,%esp
  10845b:	68 6c 26 14 00       	push   $0x14266c
  108460:	83 ec 08             	sub    $0x8,%esp
  108463:	89 e0                	mov    %esp,%eax
  108465:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
  10846b:	89 10                	mov    %edx,(%eax)
  10846d:	0f b7 95 78 ff ff ff 	movzwl -0x88(%ebp),%edx
  108474:	66 89 50 04          	mov    %dx,0x4(%eax)
  108478:	e8 47 cb ff ff       	call   104fc4 <cmos_datetime_to_str>
  10847d:	83 c4 10             	add    $0x10,%esp
  108480:	83 ec 0c             	sub    $0xc,%esp
  108483:	68 80 1e 14 00       	push   $0x141e80
  108488:	e8 db 06 00 00       	call   108b68 <__redirect_printf__>
  10848d:	83 c4 10             	add    $0x10,%esp
  108490:	83 ec 04             	sub    $0x4,%esp
  108493:	68 80 22 14 00       	push   $0x142280
  108498:	68 6c 26 14 00       	push   $0x14266c
  10849d:	68 3d ab 10 00       	push   $0x10ab3d
  1084a2:	e8 ae 0f 00 00       	call   109455 <printf>
  1084a7:	83 c4 10             	add    $0x10,%esp
  1084aa:	83 ec 0c             	sub    $0xc,%esp
  1084ad:	6a 00                	push   $0x0
  1084af:	e8 b4 06 00 00       	call   108b68 <__redirect_printf__>
  1084b4:	83 c4 10             	add    $0x10,%esp
  1084b7:	83 ec 08             	sub    $0x8,%esp
  1084ba:	68 80 1e 14 00       	push   $0x141e80
  1084bf:	68 f8 03 00 00       	push   $0x3f8
  1084c4:	e8 f0 a0 ff ff       	call   1025b9 <com_write>
  1084c9:	83 c4 10             	add    $0x10,%esp
  1084cc:	83 ec 04             	sub    $0x4,%esp
  1084cf:	68 00 04 00 00       	push   $0x400
  1084d4:	6a 00                	push   $0x0
  1084d6:	68 80 1e 14 00       	push   $0x141e80
  1084db:	e8 66 13 00 00       	call   109846 <memset>
  1084e0:	83 c4 10             	add    $0x10,%esp
  1084e3:	83 ec 04             	sub    $0x4,%esp
  1084e6:	68 ec 03 00 00       	push   $0x3ec
  1084eb:	6a 00                	push   $0x0
  1084ed:	68 80 22 14 00       	push   $0x142280
  1084f2:	e8 4f 13 00 00       	call   109846 <memset>
  1084f7:	83 c4 10             	add    $0x10,%esp
  1084fa:	83 ec 04             	sub    $0x4,%esp
  1084fd:	6a 14                	push   $0x14
  1084ff:	6a 00                	push   $0x0
  108501:	68 6c 26 14 00       	push   $0x14266c
  108506:	e8 3b 13 00 00       	call   109846 <memset>
  10850b:	83 c4 10             	add    $0x10,%esp
  10850e:	e9 12 02 00 00       	jmp    108725 <kernel_main+0x13c8>
  108513:	83 ec 0c             	sub    $0xc,%esp
  108516:	68 80 22 14 00       	push   $0x142280
  10851b:	e8 48 06 00 00       	call   108b68 <__redirect_printf__>
  108520:	83 c4 10             	add    $0x10,%esp
  108523:	8b 55 cc             	mov    -0x34(%ebp),%edx
  108526:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  108529:	83 ec 04             	sub    $0x4,%esp
  10852c:	52                   	push   %edx
  10852d:	50                   	push   %eax
  10852e:	68 b8 ad 10 00       	push   $0x10adb8
  108533:	e8 1d 0f 00 00       	call   109455 <printf>
  108538:	83 c4 10             	add    $0x10,%esp
  10853b:	83 ec 0c             	sub    $0xc,%esp
  10853e:	6a 00                	push   $0x0
  108540:	e8 23 06 00 00       	call   108b68 <__redirect_printf__>
  108545:	83 c4 10             	add    $0x10,%esp
  108548:	83 ec 0c             	sub    $0xc,%esp
  10854b:	8d 85 6e ff ff ff    	lea    -0x92(%ebp),%eax
  108551:	50                   	push   %eax
  108552:	e8 48 a5 ff ff       	call   102a9f <cmos_read_rtc>
  108557:	83 c4 10             	add    $0x10,%esp
  10855a:	83 ec 04             	sub    $0x4,%esp
  10855d:	68 6c 26 14 00       	push   $0x14266c
  108562:	83 ec 08             	sub    $0x8,%esp
  108565:	89 e0                	mov    %esp,%eax
  108567:	8b 95 6e ff ff ff    	mov    -0x92(%ebp),%edx
  10856d:	89 10                	mov    %edx,(%eax)
  10856f:	0f b7 95 72 ff ff ff 	movzwl -0x8e(%ebp),%edx
  108576:	66 89 50 04          	mov    %dx,0x4(%eax)
  10857a:	e8 45 ca ff ff       	call   104fc4 <cmos_datetime_to_str>
  10857f:	83 c4 10             	add    $0x10,%esp
  108582:	83 ec 0c             	sub    $0xc,%esp
  108585:	68 80 1e 14 00       	push   $0x141e80
  10858a:	e8 d9 05 00 00       	call   108b68 <__redirect_printf__>
  10858f:	83 c4 10             	add    $0x10,%esp
  108592:	83 ec 04             	sub    $0x4,%esp
  108595:	68 80 22 14 00       	push   $0x142280
  10859a:	68 6c 26 14 00       	push   $0x14266c
  10859f:	68 3d ab 10 00       	push   $0x10ab3d
  1085a4:	e8 ac 0e 00 00       	call   109455 <printf>
  1085a9:	83 c4 10             	add    $0x10,%esp
  1085ac:	83 ec 0c             	sub    $0xc,%esp
  1085af:	6a 00                	push   $0x0
  1085b1:	e8 b2 05 00 00       	call   108b68 <__redirect_printf__>
  1085b6:	83 c4 10             	add    $0x10,%esp
  1085b9:	83 ec 08             	sub    $0x8,%esp
  1085bc:	68 80 1e 14 00       	push   $0x141e80
  1085c1:	68 f8 03 00 00       	push   $0x3f8
  1085c6:	e8 ee 9f ff ff       	call   1025b9 <com_write>
  1085cb:	83 c4 10             	add    $0x10,%esp
  1085ce:	83 ec 04             	sub    $0x4,%esp
  1085d1:	68 00 04 00 00       	push   $0x400
  1085d6:	6a 00                	push   $0x0
  1085d8:	68 80 1e 14 00       	push   $0x141e80
  1085dd:	e8 64 12 00 00       	call   109846 <memset>
  1085e2:	83 c4 10             	add    $0x10,%esp
  1085e5:	83 ec 04             	sub    $0x4,%esp
  1085e8:	68 ec 03 00 00       	push   $0x3ec
  1085ed:	6a 00                	push   $0x0
  1085ef:	68 80 22 14 00       	push   $0x142280
  1085f4:	e8 4d 12 00 00       	call   109846 <memset>
  1085f9:	83 c4 10             	add    $0x10,%esp
  1085fc:	83 ec 04             	sub    $0x4,%esp
  1085ff:	6a 14                	push   $0x14
  108601:	6a 00                	push   $0x0
  108603:	68 6c 26 14 00       	push   $0x14266c
  108608:	e8 39 12 00 00       	call   109846 <memset>
  10860d:	83 c4 10             	add    $0x10,%esp
  108610:	8d 85 62 fe ff ff    	lea    -0x19e(%ebp),%eax
  108616:	50                   	push   %eax
  108617:	68 00 01 00 00       	push   $0x100
  10861c:	6a 00                	push   $0x0
  10861e:	ff 75 cc             	push   -0x34(%ebp)
  108621:	e8 b0 c1 ff ff       	call   1047d6 <vfs_read>
  108626:	83 c4 10             	add    $0x10,%esp
  108629:	83 ec 0c             	sub    $0xc,%esp
  10862c:	68 80 22 14 00       	push   $0x142280
  108631:	e8 32 05 00 00       	call   108b68 <__redirect_printf__>
  108636:	83 c4 10             	add    $0x10,%esp
  108639:	83 ec 08             	sub    $0x8,%esp
  10863c:	8d 85 62 fe ff ff    	lea    -0x19e(%ebp),%eax
  108642:	50                   	push   %eax
  108643:	68 c9 ad 10 00       	push   $0x10adc9
  108648:	e8 08 0e 00 00       	call   109455 <printf>
  10864d:	83 c4 10             	add    $0x10,%esp
  108650:	83 ec 0c             	sub    $0xc,%esp
  108653:	6a 00                	push   $0x0
  108655:	e8 0e 05 00 00       	call   108b68 <__redirect_printf__>
  10865a:	83 c4 10             	add    $0x10,%esp
  10865d:	83 ec 0c             	sub    $0xc,%esp
  108660:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
  108666:	50                   	push   %eax
  108667:	e8 33 a4 ff ff       	call   102a9f <cmos_read_rtc>
  10866c:	83 c4 10             	add    $0x10,%esp
  10866f:	83 ec 04             	sub    $0x4,%esp
  108672:	68 6c 26 14 00       	push   $0x14266c
  108677:	83 ec 08             	sub    $0x8,%esp
  10867a:	89 e0                	mov    %esp,%eax
  10867c:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
  108682:	89 10                	mov    %edx,(%eax)
  108684:	0f b7 95 6c ff ff ff 	movzwl -0x94(%ebp),%edx
  10868b:	66 89 50 04          	mov    %dx,0x4(%eax)
  10868f:	e8 30 c9 ff ff       	call   104fc4 <cmos_datetime_to_str>
  108694:	83 c4 10             	add    $0x10,%esp
  108697:	83 ec 0c             	sub    $0xc,%esp
  10869a:	68 80 1e 14 00       	push   $0x141e80
  10869f:	e8 c4 04 00 00       	call   108b68 <__redirect_printf__>
  1086a4:	83 c4 10             	add    $0x10,%esp
  1086a7:	83 ec 04             	sub    $0x4,%esp
  1086aa:	68 80 22 14 00       	push   $0x142280
  1086af:	68 6c 26 14 00       	push   $0x14266c
  1086b4:	68 3d ab 10 00       	push   $0x10ab3d
  1086b9:	e8 97 0d 00 00       	call   109455 <printf>
  1086be:	83 c4 10             	add    $0x10,%esp
  1086c1:	83 ec 0c             	sub    $0xc,%esp
  1086c4:	6a 00                	push   $0x0
  1086c6:	e8 9d 04 00 00       	call   108b68 <__redirect_printf__>
  1086cb:	83 c4 10             	add    $0x10,%esp
  1086ce:	83 ec 08             	sub    $0x8,%esp
  1086d1:	68 80 1e 14 00       	push   $0x141e80
  1086d6:	68 f8 03 00 00       	push   $0x3f8
  1086db:	e8 d9 9e ff ff       	call   1025b9 <com_write>
  1086e0:	83 c4 10             	add    $0x10,%esp
  1086e3:	83 ec 04             	sub    $0x4,%esp
  1086e6:	68 00 04 00 00       	push   $0x400
  1086eb:	6a 00                	push   $0x0
  1086ed:	68 80 1e 14 00       	push   $0x141e80
  1086f2:	e8 4f 11 00 00       	call   109846 <memset>
  1086f7:	83 c4 10             	add    $0x10,%esp
  1086fa:	83 ec 04             	sub    $0x4,%esp
  1086fd:	68 ec 03 00 00       	push   $0x3ec
  108702:	6a 00                	push   $0x0
  108704:	68 80 22 14 00       	push   $0x142280
  108709:	e8 38 11 00 00       	call   109846 <memset>
  10870e:	83 c4 10             	add    $0x10,%esp
  108711:	83 ec 04             	sub    $0x4,%esp
  108714:	6a 14                	push   $0x14
  108716:	6a 00                	push   $0x0
  108718:	68 6c 26 14 00       	push   $0x14266c
  10871d:	e8 24 11 00 00       	call   109846 <memset>
  108722:	83 c4 10             	add    $0x10,%esp
  108725:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108729:	83 ec 08             	sub    $0x8,%esp
  10872c:	ff 75 f0             	push   -0x10(%ebp)
  10872f:	ff 75 d4             	push   -0x2c(%ebp)
  108732:	e8 6b c1 ff ff       	call   1048a2 <vfs_read_dir>
  108737:	83 c4 10             	add    $0x10,%esp
  10873a:	89 45 d0             	mov    %eax,-0x30(%ebp)
  10873d:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  108741:	0f 85 aa fb ff ff    	jne    1082f1 <kernel_main+0xf94>
  108747:	83 ec 08             	sub    $0x8,%esp
  10874a:	6a 00                	push   $0x0
  10874c:	6a 02                	push   $0x2
  10874e:	e8 11 7b ff ff       	call   100264 <tty_set_color>
  108753:	83 c4 10             	add    $0x10,%esp
  108756:	83 ec 0c             	sub    $0xc,%esp
  108759:	68 54 ac 10 00       	push   $0x10ac54
  10875e:	e8 f2 0c 00 00       	call   109455 <printf>
  108763:	83 c4 10             	add    $0x10,%esp
  108766:	83 ec 08             	sub    $0x8,%esp
  108769:	6a 00                	push   $0x0
  10876b:	6a 07                	push   $0x7
  10876d:	e8 f2 7a ff ff       	call   100264 <tty_set_color>
  108772:	83 c4 10             	add    $0x10,%esp
  108775:	83 ec 0c             	sub    $0xc,%esp
  108778:	68 db ad 10 00       	push   $0x10addb
  10877d:	e8 d3 0c 00 00       	call   109455 <printf>
  108782:	83 c4 10             	add    $0x10,%esp
  108785:	83 ec 0c             	sub    $0xc,%esp
  108788:	ff 75 10             	push   0x10(%ebp)
  10878b:	e8 d2 e0 ff ff       	call   106862 <tasking_init>
  108790:	83 c4 10             	add    $0x10,%esp
  108793:	83 ec 0c             	sub    $0xc,%esp
  108796:	6a 64                	push   $0x64
  108798:	e8 4e ea ff ff       	call   1071eb <scheduler_init>
  10879d:	83 c4 10             	add    $0x10,%esp
  1087a0:	83 ec 0c             	sub    $0xc,%esp
  1087a3:	68 18 73 10 00       	push   $0x107318
  1087a8:	e8 27 b6 ff ff       	call   103dd4 <pit_set_callback>
  1087ad:	83 c4 10             	add    $0x10,%esp
  1087b0:	83 ec 08             	sub    $0x8,%esp
  1087b3:	6a 00                	push   $0x0
  1087b5:	6a 02                	push   $0x2
  1087b7:	e8 a8 7a ff ff       	call   100264 <tty_set_color>
  1087bc:	83 c4 10             	add    $0x10,%esp
  1087bf:	83 ec 0c             	sub    $0xc,%esp
  1087c2:	68 54 ac 10 00       	push   $0x10ac54
  1087c7:	e8 89 0c 00 00       	call   109455 <printf>
  1087cc:	83 c4 10             	add    $0x10,%esp
  1087cf:	83 ec 08             	sub    $0x8,%esp
  1087d2:	6a 00                	push   $0x0
  1087d4:	6a 07                	push   $0x7
  1087d6:	e8 89 7a ff ff       	call   100264 <tty_set_color>
  1087db:	83 c4 10             	add    $0x10,%esp
  1087de:	8c c8                	mov    %cs,%eax
  1087e0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1087e3:	8c d0                	mov    %ss,%eax
  1087e5:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1087e8:	83 ec 0c             	sub    $0xc,%esp
  1087eb:	68 80 22 14 00       	push   $0x142280
  1087f0:	e8 73 03 00 00       	call   108b68 <__redirect_printf__>
  1087f5:	83 c4 10             	add    $0x10,%esp
  1087f8:	83 ec 04             	sub    $0x4,%esp
  1087fb:	ff 75 ec             	push   -0x14(%ebp)
  1087fe:	ff 75 e8             	push   -0x18(%ebp)
  108801:	68 f4 ad 10 00       	push   $0x10adf4
  108806:	e8 4a 0c 00 00       	call   109455 <printf>
  10880b:	83 c4 10             	add    $0x10,%esp
  10880e:	83 ec 0c             	sub    $0xc,%esp
  108811:	6a 00                	push   $0x0
  108813:	e8 50 03 00 00       	call   108b68 <__redirect_printf__>
  108818:	83 c4 10             	add    $0x10,%esp
  10881b:	83 ec 0c             	sub    $0xc,%esp
  10881e:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
  108824:	50                   	push   %eax
  108825:	e8 75 a2 ff ff       	call   102a9f <cmos_read_rtc>
  10882a:	83 c4 10             	add    $0x10,%esp
  10882d:	83 ec 04             	sub    $0x4,%esp
  108830:	68 6c 26 14 00       	push   $0x14266c
  108835:	83 ec 08             	sub    $0x8,%esp
  108838:	89 e0                	mov    %esp,%eax
  10883a:	8b 95 62 ff ff ff    	mov    -0x9e(%ebp),%edx
  108840:	89 10                	mov    %edx,(%eax)
  108842:	0f b7 95 66 ff ff ff 	movzwl -0x9a(%ebp),%edx
  108849:	66 89 50 04          	mov    %dx,0x4(%eax)
  10884d:	e8 72 c7 ff ff       	call   104fc4 <cmos_datetime_to_str>
  108852:	83 c4 10             	add    $0x10,%esp
  108855:	83 ec 0c             	sub    $0xc,%esp
  108858:	68 80 1e 14 00       	push   $0x141e80
  10885d:	e8 06 03 00 00       	call   108b68 <__redirect_printf__>
  108862:	83 c4 10             	add    $0x10,%esp
  108865:	83 ec 04             	sub    $0x4,%esp
  108868:	68 80 22 14 00       	push   $0x142280
  10886d:	68 6c 26 14 00       	push   $0x14266c
  108872:	68 3d ab 10 00       	push   $0x10ab3d
  108877:	e8 d9 0b 00 00       	call   109455 <printf>
  10887c:	83 c4 10             	add    $0x10,%esp
  10887f:	83 ec 0c             	sub    $0xc,%esp
  108882:	6a 00                	push   $0x0
  108884:	e8 df 02 00 00       	call   108b68 <__redirect_printf__>
  108889:	83 c4 10             	add    $0x10,%esp
  10888c:	83 ec 08             	sub    $0x8,%esp
  10888f:	68 80 1e 14 00       	push   $0x141e80
  108894:	68 f8 03 00 00       	push   $0x3f8
  108899:	e8 1b 9d ff ff       	call   1025b9 <com_write>
  10889e:	83 c4 10             	add    $0x10,%esp
  1088a1:	83 ec 04             	sub    $0x4,%esp
  1088a4:	68 00 04 00 00       	push   $0x400
  1088a9:	6a 00                	push   $0x0
  1088ab:	68 80 1e 14 00       	push   $0x141e80
  1088b0:	e8 91 0f 00 00       	call   109846 <memset>
  1088b5:	83 c4 10             	add    $0x10,%esp
  1088b8:	83 ec 04             	sub    $0x4,%esp
  1088bb:	68 ec 03 00 00       	push   $0x3ec
  1088c0:	6a 00                	push   $0x0
  1088c2:	68 80 22 14 00       	push   $0x142280
  1088c7:	e8 7a 0f 00 00       	call   109846 <memset>
  1088cc:	83 c4 10             	add    $0x10,%esp
  1088cf:	83 ec 04             	sub    $0x4,%esp
  1088d2:	6a 14                	push   $0x14
  1088d4:	6a 00                	push   $0x0
  1088d6:	68 6c 26 14 00       	push   $0x14266c
  1088db:	e8 66 0f 00 00       	call   109846 <memset>
  1088e0:	83 c4 10             	add    $0x10,%esp
  1088e3:	83 ec 0c             	sub    $0xc,%esp
  1088e6:	68 24 ae 10 00       	push   $0x10ae24
  1088eb:	e8 65 0b 00 00       	call   109455 <printf>
  1088f0:	83 c4 10             	add    $0x10,%esp
  1088f3:	e8 c6 88 ff ff       	call   1011be <enter_user_mode>
  1088f8:	90                   	nop
  1088f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1088fc:	c9                   	leave  
  1088fd:	c3                   	ret    

001088fe <user_mode_entry_point>:
  1088fe:	55                   	push   %ebp
  1088ff:	89 e5                	mov    %esp,%ebp
  108901:	83 ec 28             	sub    $0x28,%esp
  108904:	83 ec 08             	sub    $0x8,%esp
  108907:	6a 00                	push   $0x0
  108909:	6a 02                	push   $0x2
  10890b:	e8 54 79 ff ff       	call   100264 <tty_set_color>
  108910:	83 c4 10             	add    $0x10,%esp
  108913:	83 ec 0c             	sub    $0xc,%esp
  108916:	68 54 ac 10 00       	push   $0x10ac54
  10891b:	e8 35 0b 00 00       	call   109455 <printf>
  108920:	83 c4 10             	add    $0x10,%esp
  108923:	83 ec 08             	sub    $0x8,%esp
  108926:	6a 00                	push   $0x0
  108928:	6a 07                	push   $0x7
  10892a:	e8 35 79 ff ff       	call   100264 <tty_set_color>
  10892f:	83 c4 10             	add    $0x10,%esp
  108932:	8c c8                	mov    %cs,%eax
  108934:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108937:	8c d0                	mov    %ss,%eax
  108939:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10893c:	83 ec 0c             	sub    $0xc,%esp
  10893f:	68 80 22 14 00       	push   $0x142280
  108944:	e8 1f 02 00 00       	call   108b68 <__redirect_printf__>
  108949:	83 c4 10             	add    $0x10,%esp
  10894c:	83 ec 04             	sub    $0x4,%esp
  10894f:	ff 75 f4             	push   -0xc(%ebp)
  108952:	ff 75 f0             	push   -0x10(%ebp)
  108955:	68 3c ae 10 00       	push   $0x10ae3c
  10895a:	e8 f6 0a 00 00       	call   109455 <printf>
  10895f:	83 c4 10             	add    $0x10,%esp
  108962:	83 ec 0c             	sub    $0xc,%esp
  108965:	6a 00                	push   $0x0
  108967:	e8 fc 01 00 00       	call   108b68 <__redirect_printf__>
  10896c:	83 c4 10             	add    $0x10,%esp
  10896f:	83 ec 0c             	sub    $0xc,%esp
  108972:	8d 45 ea             	lea    -0x16(%ebp),%eax
  108975:	50                   	push   %eax
  108976:	e8 24 a1 ff ff       	call   102a9f <cmos_read_rtc>
  10897b:	83 c4 10             	add    $0x10,%esp
  10897e:	83 ec 04             	sub    $0x4,%esp
  108981:	68 6c 26 14 00       	push   $0x14266c
  108986:	83 ec 08             	sub    $0x8,%esp
  108989:	89 e0                	mov    %esp,%eax
  10898b:	8b 55 ea             	mov    -0x16(%ebp),%edx
  10898e:	89 10                	mov    %edx,(%eax)
  108990:	0f b7 55 ee          	movzwl -0x12(%ebp),%edx
  108994:	66 89 50 04          	mov    %dx,0x4(%eax)
  108998:	e8 27 c6 ff ff       	call   104fc4 <cmos_datetime_to_str>
  10899d:	83 c4 10             	add    $0x10,%esp
  1089a0:	83 ec 0c             	sub    $0xc,%esp
  1089a3:	68 80 1e 14 00       	push   $0x141e80
  1089a8:	e8 bb 01 00 00       	call   108b68 <__redirect_printf__>
  1089ad:	83 c4 10             	add    $0x10,%esp
  1089b0:	83 ec 04             	sub    $0x4,%esp
  1089b3:	68 80 22 14 00       	push   $0x142280
  1089b8:	68 6c 26 14 00       	push   $0x14266c
  1089bd:	68 3d ab 10 00       	push   $0x10ab3d
  1089c2:	e8 8e 0a 00 00       	call   109455 <printf>
  1089c7:	83 c4 10             	add    $0x10,%esp
  1089ca:	83 ec 0c             	sub    $0xc,%esp
  1089cd:	6a 00                	push   $0x0
  1089cf:	e8 94 01 00 00       	call   108b68 <__redirect_printf__>
  1089d4:	83 c4 10             	add    $0x10,%esp
  1089d7:	83 ec 08             	sub    $0x8,%esp
  1089da:	68 80 1e 14 00       	push   $0x141e80
  1089df:	68 f8 03 00 00       	push   $0x3f8
  1089e4:	e8 d0 9b ff ff       	call   1025b9 <com_write>
  1089e9:	83 c4 10             	add    $0x10,%esp
  1089ec:	83 ec 04             	sub    $0x4,%esp
  1089ef:	68 00 04 00 00       	push   $0x400
  1089f4:	6a 00                	push   $0x0
  1089f6:	68 80 1e 14 00       	push   $0x141e80
  1089fb:	e8 46 0e 00 00       	call   109846 <memset>
  108a00:	83 c4 10             	add    $0x10,%esp
  108a03:	83 ec 04             	sub    $0x4,%esp
  108a06:	68 ec 03 00 00       	push   $0x3ec
  108a0b:	6a 00                	push   $0x0
  108a0d:	68 80 22 14 00       	push   $0x142280
  108a12:	e8 2f 0e 00 00       	call   109846 <memset>
  108a17:	83 c4 10             	add    $0x10,%esp
  108a1a:	83 ec 04             	sub    $0x4,%esp
  108a1d:	6a 14                	push   $0x14
  108a1f:	6a 00                	push   $0x0
  108a21:	68 6c 26 14 00       	push   $0x14266c
  108a26:	e8 1b 0e 00 00       	call   109846 <memset>
  108a2b:	83 c4 10             	add    $0x10,%esp
  108a2e:	e8 6d 7c ff ff       	call   1006a0 <sti>
  108a33:	83 ec 0c             	sub    $0xc,%esp
  108a36:	68 e8 03 00 00       	push   $0x3e8
  108a3b:	e8 b3 c7 ff ff       	call   1051f3 <sleep>
  108a40:	83 c4 10             	add    $0x10,%esp
  108a43:	83 ec 0c             	sub    $0xc,%esp
  108a46:	68 6b ae 10 00       	push   $0x10ae6b
  108a4b:	e8 05 0a 00 00       	call   109455 <printf>
  108a50:	83 c4 10             	add    $0x10,%esp
  108a53:	83 ec 0c             	sub    $0xc,%esp
  108a56:	68 80 22 14 00       	push   $0x142280
  108a5b:	e8 08 01 00 00       	call   108b68 <__redirect_printf__>
  108a60:	83 c4 10             	add    $0x10,%esp
  108a63:	83 ec 0c             	sub    $0xc,%esp
  108a66:	68 86 ae 10 00       	push   $0x10ae86
  108a6b:	e8 e5 09 00 00       	call   109455 <printf>
  108a70:	83 c4 10             	add    $0x10,%esp
  108a73:	83 ec 0c             	sub    $0xc,%esp
  108a76:	6a 00                	push   $0x0
  108a78:	e8 eb 00 00 00       	call   108b68 <__redirect_printf__>
  108a7d:	83 c4 10             	add    $0x10,%esp
  108a80:	83 ec 0c             	sub    $0xc,%esp
  108a83:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  108a86:	50                   	push   %eax
  108a87:	e8 13 a0 ff ff       	call   102a9f <cmos_read_rtc>
  108a8c:	83 c4 10             	add    $0x10,%esp
  108a8f:	83 ec 04             	sub    $0x4,%esp
  108a92:	68 6c 26 14 00       	push   $0x14266c
  108a97:	83 ec 08             	sub    $0x8,%esp
  108a9a:	89 e0                	mov    %esp,%eax
  108a9c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  108a9f:	89 10                	mov    %edx,(%eax)
  108aa1:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  108aa5:	66 89 50 04          	mov    %dx,0x4(%eax)
  108aa9:	e8 16 c5 ff ff       	call   104fc4 <cmos_datetime_to_str>
  108aae:	83 c4 10             	add    $0x10,%esp
  108ab1:	83 ec 0c             	sub    $0xc,%esp
  108ab4:	68 80 1e 14 00       	push   $0x141e80
  108ab9:	e8 aa 00 00 00       	call   108b68 <__redirect_printf__>
  108abe:	83 c4 10             	add    $0x10,%esp
  108ac1:	83 ec 04             	sub    $0x4,%esp
  108ac4:	68 80 22 14 00       	push   $0x142280
  108ac9:	68 6c 26 14 00       	push   $0x14266c
  108ace:	68 3d ab 10 00       	push   $0x10ab3d
  108ad3:	e8 7d 09 00 00       	call   109455 <printf>
  108ad8:	83 c4 10             	add    $0x10,%esp
  108adb:	83 ec 0c             	sub    $0xc,%esp
  108ade:	6a 00                	push   $0x0
  108ae0:	e8 83 00 00 00       	call   108b68 <__redirect_printf__>
  108ae5:	83 c4 10             	add    $0x10,%esp
  108ae8:	83 ec 08             	sub    $0x8,%esp
  108aeb:	68 80 1e 14 00       	push   $0x141e80
  108af0:	68 f8 03 00 00       	push   $0x3f8
  108af5:	e8 bf 9a ff ff       	call   1025b9 <com_write>
  108afa:	83 c4 10             	add    $0x10,%esp
  108afd:	83 ec 04             	sub    $0x4,%esp
  108b00:	68 00 04 00 00       	push   $0x400
  108b05:	6a 00                	push   $0x0
  108b07:	68 80 1e 14 00       	push   $0x141e80
  108b0c:	e8 35 0d 00 00       	call   109846 <memset>
  108b11:	83 c4 10             	add    $0x10,%esp
  108b14:	83 ec 04             	sub    $0x4,%esp
  108b17:	68 ec 03 00 00       	push   $0x3ec
  108b1c:	6a 00                	push   $0x0
  108b1e:	68 80 22 14 00       	push   $0x142280
  108b23:	e8 1e 0d 00 00       	call   109846 <memset>
  108b28:	83 c4 10             	add    $0x10,%esp
  108b2b:	83 ec 04             	sub    $0x4,%esp
  108b2e:	6a 14                	push   $0x14
  108b30:	6a 00                	push   $0x0
  108b32:	68 6c 26 14 00       	push   $0x14266c
  108b37:	e8 0a 0d 00 00       	call   109846 <memset>
  108b3c:	83 c4 10             	add    $0x10,%esp
  108b3f:	e9 ef fe ff ff       	jmp    108a33 <user_mode_entry_point+0x135>

00108b44 <read>:
  108b44:	55                   	push   %ebp
  108b45:	89 e5                	mov    %esp,%ebp
  108b47:	83 ec 08             	sub    $0x8,%esp
  108b4a:	8b 45 0c             	mov    0xc(%ebp),%eax
  108b4d:	83 ec 0c             	sub    $0xc,%esp
  108b50:	6a 00                	push   $0x0
  108b52:	ff 75 10             	push   0x10(%ebp)
  108b55:	50                   	push   %eax
  108b56:	ff 75 08             	push   0x8(%ebp)
  108b59:	6a 50                	push   $0x50
  108b5b:	e8 80 86 ff ff       	call   1011e0 <syscall_interface>
  108b60:	83 c4 20             	add    $0x20,%esp
  108b63:	8b 45 10             	mov    0x10(%ebp),%eax
  108b66:	c9                   	leave  
  108b67:	c3                   	ret    

00108b68 <__redirect_printf__>:
  108b68:	55                   	push   %ebp
  108b69:	89 e5                	mov    %esp,%ebp
  108b6b:	8b 45 08             	mov    0x8(%ebp),%eax
  108b6e:	a3 c8 26 14 00       	mov    %eax,0x1426c8
  108b73:	c7 05 cc 26 14 00 00 	movl   $0x0,0x1426cc
  108b7a:	00 00 00 
  108b7d:	90                   	nop
  108b7e:	5d                   	pop    %ebp
  108b7f:	c3                   	ret    

00108b80 <print>:
  108b80:	55                   	push   %ebp
  108b81:	89 e5                	mov    %esp,%ebp
  108b83:	83 ec 18             	sub    $0x18,%esp
  108b86:	8b 45 08             	mov    0x8(%ebp),%eax
  108b89:	89 45 f0             	mov    %eax,-0x10(%ebp)
  108b8c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  108b93:	eb 5d                	jmp    108bf2 <print+0x72>
  108b95:	8b 55 f0             	mov    -0x10(%ebp),%edx
  108b98:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108b9b:	01 d0                	add    %edx,%eax
  108b9d:	0f b6 00             	movzbl (%eax),%eax
  108ba0:	88 45 ef             	mov    %al,-0x11(%ebp)
  108ba3:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
  108ba7:	74 53                	je     108bfc <print+0x7c>
  108ba9:	a1 c8 26 14 00       	mov    0x1426c8,%eax
  108bae:	85 c0                	test   %eax,%eax
  108bb0:	75 1c                	jne    108bce <print+0x4e>
  108bb2:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  108bb6:	83 ec 0c             	sub    $0xc,%esp
  108bb9:	50                   	push   %eax
  108bba:	e8 27 0b 00 00       	call   1096e6 <putchar>
  108bbf:	83 c4 10             	add    $0x10,%esp
  108bc2:	83 f8 ff             	cmp    $0xffffffff,%eax
  108bc5:	75 27                	jne    108bee <print+0x6e>
  108bc7:	b8 00 00 00 00       	mov    $0x0,%eax
  108bcc:	eb 34                	jmp    108c02 <print+0x82>
  108bce:	8b 15 c8 26 14 00    	mov    0x1426c8,%edx
  108bd4:	a1 cc 26 14 00       	mov    0x1426cc,%eax
  108bd9:	01 c2                	add    %eax,%edx
  108bdb:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  108bdf:	88 02                	mov    %al,(%edx)
  108be1:	a1 cc 26 14 00       	mov    0x1426cc,%eax
  108be6:	83 c0 01             	add    $0x1,%eax
  108be9:	a3 cc 26 14 00       	mov    %eax,0x1426cc
  108bee:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  108bf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108bf5:	3b 45 0c             	cmp    0xc(%ebp),%eax
  108bf8:	72 9b                	jb     108b95 <print+0x15>
  108bfa:	eb 01                	jmp    108bfd <print+0x7d>
  108bfc:	90                   	nop
  108bfd:	b8 01 00 00 00       	mov    $0x1,%eax
  108c02:	c9                   	leave  
  108c03:	c3                   	ret    

00108c04 <print_char>:
  108c04:	55                   	push   %ebp
  108c05:	89 e5                	mov    %esp,%ebp
  108c07:	83 ec 08             	sub    $0x8,%esp
  108c0a:	83 ec 08             	sub    $0x8,%esp
  108c0d:	6a 01                	push   $0x1
  108c0f:	ff 75 08             	push   0x8(%ebp)
  108c12:	e8 69 ff ff ff       	call   108b80 <print>
  108c17:	83 c4 10             	add    $0x10,%esp
  108c1a:	b8 01 00 00 00       	mov    $0x1,%eax
  108c1f:	c9                   	leave  
  108c20:	c3                   	ret    

00108c21 <print_signed_integer>:
  108c21:	55                   	push   %ebp
  108c22:	89 e5                	mov    %esp,%ebp
  108c24:	53                   	push   %ebx
  108c25:	81 ec 24 02 00 00    	sub    $0x224,%esp
  108c2b:	8b 45 08             	mov    0x8(%ebp),%eax
  108c2e:	8b 00                	mov    (%eax),%eax
  108c30:	85 c0                	test   %eax,%eax
  108c32:	75 1c                	jne    108c50 <print_signed_integer+0x2f>
  108c34:	83 ec 08             	sub    $0x8,%esp
  108c37:	6a 01                	push   $0x1
  108c39:	68 98 ae 10 00       	push   $0x10ae98
  108c3e:	e8 3d ff ff ff       	call   108b80 <print>
  108c43:	83 c4 10             	add    $0x10,%esp
  108c46:	b8 01 00 00 00       	mov    $0x1,%eax
  108c4b:	e9 4d 01 00 00       	jmp    108d9d <print_signed_integer+0x17c>
  108c50:	8b 45 08             	mov    0x8(%ebp),%eax
  108c53:	8b 00                	mov    (%eax),%eax
  108c55:	f7 d0                	not    %eax
  108c57:	c1 e8 1f             	shr    $0x1f,%eax
  108c5a:	88 45 eb             	mov    %al,-0x15(%ebp)
  108c5d:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
  108c61:	74 07                	je     108c6a <print_signed_integer+0x49>
  108c63:	8b 45 08             	mov    0x8(%ebp),%eax
  108c66:	8b 00                	mov    (%eax),%eax
  108c68:	eb 07                	jmp    108c71 <print_signed_integer+0x50>
  108c6a:	8b 45 08             	mov    0x8(%ebp),%eax
  108c6d:	8b 00                	mov    (%eax),%eax
  108c6f:	f7 d8                	neg    %eax
  108c71:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108c74:	83 ec 04             	sub    $0x4,%esp
  108c77:	68 00 01 00 00       	push   $0x100
  108c7c:	6a 00                	push   $0x0
  108c7e:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
  108c84:	50                   	push   %eax
  108c85:	e8 bc 0b 00 00       	call   109846 <memset>
  108c8a:	83 c4 10             	add    $0x10,%esp
  108c8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  108c94:	eb 5f                	jmp    108cf5 <print_signed_integer+0xd4>
  108c96:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  108c99:	ba 67 66 66 66       	mov    $0x66666667,%edx
  108c9e:	89 c8                	mov    %ecx,%eax
  108ca0:	f7 ea                	imul   %edx
  108ca2:	89 d0                	mov    %edx,%eax
  108ca4:	c1 f8 02             	sar    $0x2,%eax
  108ca7:	89 cb                	mov    %ecx,%ebx
  108ca9:	c1 fb 1f             	sar    $0x1f,%ebx
  108cac:	29 d8                	sub    %ebx,%eax
  108cae:	89 c2                	mov    %eax,%edx
  108cb0:	89 d0                	mov    %edx,%eax
  108cb2:	c1 e0 02             	shl    $0x2,%eax
  108cb5:	01 d0                	add    %edx,%eax
  108cb7:	01 c0                	add    %eax,%eax
  108cb9:	29 c1                	sub    %eax,%ecx
  108cbb:	89 ca                	mov    %ecx,%edx
  108cbd:	89 d0                	mov    %edx,%eax
  108cbf:	83 c0 30             	add    $0x30,%eax
  108cc2:	88 45 ea             	mov    %al,-0x16(%ebp)
  108cc5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  108cc8:	ba 67 66 66 66       	mov    $0x66666667,%edx
  108ccd:	89 c8                	mov    %ecx,%eax
  108ccf:	f7 ea                	imul   %edx
  108cd1:	89 d0                	mov    %edx,%eax
  108cd3:	c1 f8 02             	sar    $0x2,%eax
  108cd6:	c1 f9 1f             	sar    $0x1f,%ecx
  108cd9:	89 ca                	mov    %ecx,%edx
  108cdb:	29 d0                	sub    %edx,%eax
  108cdd:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108ce0:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
  108ce6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108ce9:	01 c2                	add    %eax,%edx
  108ceb:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
  108cef:	88 02                	mov    %al,(%edx)
  108cf1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108cf5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  108cf9:	74 09                	je     108d04 <print_signed_integer+0xe3>
  108cfb:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  108d02:	76 92                	jbe    108c96 <print_signed_integer+0x75>
  108d04:	83 ec 04             	sub    $0x4,%esp
  108d07:	68 00 01 00 00       	push   $0x100
  108d0c:	6a 00                	push   $0x0
  108d0e:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  108d14:	50                   	push   %eax
  108d15:	e8 2c 0b 00 00       	call   109846 <memset>
  108d1a:	83 c4 10             	add    $0x10,%esp
  108d1d:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  108d21:	83 f0 01             	xor    $0x1,%eax
  108d24:	0f b6 c0             	movzbl %al,%eax
  108d27:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  108d2a:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  108d2e:	83 f0 01             	xor    $0x1,%eax
  108d31:	84 c0                	test   %al,%al
  108d33:	74 07                	je     108d3c <print_signed_integer+0x11b>
  108d35:	c6 85 e4 fd ff ff 2d 	movb   $0x2d,-0x21c(%ebp)
  108d3c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108d3f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  108d42:	eb 29                	jmp    108d6d <print_signed_integer+0x14c>
  108d44:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108d47:	2b 45 ec             	sub    -0x14(%ebp),%eax
  108d4a:	89 c2                	mov    %eax,%edx
  108d4c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108d4f:	01 d0                	add    %edx,%eax
  108d51:	83 e8 01             	sub    $0x1,%eax
  108d54:	0f b6 84 05 e4 fe ff 	movzbl -0x11c(%ebp,%eax,1),%eax
  108d5b:	ff 
  108d5c:	8d 8d e4 fd ff ff    	lea    -0x21c(%ebp),%ecx
  108d62:	8b 55 ec             	mov    -0x14(%ebp),%edx
  108d65:	01 ca                	add    %ecx,%edx
  108d67:	88 02                	mov    %al,(%edx)
  108d69:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  108d6d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  108d70:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108d73:	01 d0                	add    %edx,%eax
  108d75:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  108d78:	72 ca                	jb     108d44 <print_signed_integer+0x123>
  108d7a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  108d7d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108d80:	01 d0                	add    %edx,%eax
  108d82:	83 ec 08             	sub    $0x8,%esp
  108d85:	50                   	push   %eax
  108d86:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  108d8c:	50                   	push   %eax
  108d8d:	e8 ee fd ff ff       	call   108b80 <print>
  108d92:	83 c4 10             	add    $0x10,%esp
  108d95:	8b 55 f0             	mov    -0x10(%ebp),%edx
  108d98:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108d9b:	01 d0                	add    %edx,%eax
  108d9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  108da0:	c9                   	leave  
  108da1:	c3                   	ret    

00108da2 <print_unsigned_integer>:
  108da2:	55                   	push   %ebp
  108da3:	89 e5                	mov    %esp,%ebp
  108da5:	81 ec 18 02 00 00    	sub    $0x218,%esp
  108dab:	8b 45 08             	mov    0x8(%ebp),%eax
  108dae:	8b 00                	mov    (%eax),%eax
  108db0:	85 c0                	test   %eax,%eax
  108db2:	75 1c                	jne    108dd0 <print_unsigned_integer+0x2e>
  108db4:	83 ec 08             	sub    $0x8,%esp
  108db7:	6a 01                	push   $0x1
  108db9:	68 98 ae 10 00       	push   $0x10ae98
  108dbe:	e8 bd fd ff ff       	call   108b80 <print>
  108dc3:	83 c4 10             	add    $0x10,%esp
  108dc6:	b8 01 00 00 00       	mov    $0x1,%eax
  108dcb:	e9 e8 00 00 00       	jmp    108eb8 <print_unsigned_integer+0x116>
  108dd0:	8b 45 08             	mov    0x8(%ebp),%eax
  108dd3:	8b 00                	mov    (%eax),%eax
  108dd5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108dd8:	83 ec 04             	sub    $0x4,%esp
  108ddb:	68 00 01 00 00       	push   $0x100
  108de0:	6a 00                	push   $0x0
  108de2:	8d 85 eb fe ff ff    	lea    -0x115(%ebp),%eax
  108de8:	50                   	push   %eax
  108de9:	e8 58 0a 00 00       	call   109846 <memset>
  108dee:	83 c4 10             	add    $0x10,%esp
  108df1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  108df8:	eb 4b                	jmp    108e45 <print_unsigned_integer+0xa3>
  108dfa:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  108dfd:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  108e02:	89 c8                	mov    %ecx,%eax
  108e04:	f7 e2                	mul    %edx
  108e06:	c1 ea 03             	shr    $0x3,%edx
  108e09:	89 d0                	mov    %edx,%eax
  108e0b:	c1 e0 02             	shl    $0x2,%eax
  108e0e:	01 d0                	add    %edx,%eax
  108e10:	01 c0                	add    %eax,%eax
  108e12:	29 c1                	sub    %eax,%ecx
  108e14:	89 ca                	mov    %ecx,%edx
  108e16:	89 d0                	mov    %edx,%eax
  108e18:	83 c0 30             	add    $0x30,%eax
  108e1b:	88 45 eb             	mov    %al,-0x15(%ebp)
  108e1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  108e21:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  108e26:	f7 e2                	mul    %edx
  108e28:	89 d0                	mov    %edx,%eax
  108e2a:	c1 e8 03             	shr    $0x3,%eax
  108e2d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  108e30:	8d 95 eb fe ff ff    	lea    -0x115(%ebp),%edx
  108e36:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108e39:	01 c2                	add    %eax,%edx
  108e3b:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  108e3f:	88 02                	mov    %al,(%edx)
  108e41:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  108e45:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  108e49:	74 09                	je     108e54 <print_unsigned_integer+0xb2>
  108e4b:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  108e52:	76 a6                	jbe    108dfa <print_unsigned_integer+0x58>
  108e54:	83 ec 04             	sub    $0x4,%esp
  108e57:	68 00 01 00 00       	push   $0x100
  108e5c:	6a 00                	push   $0x0
  108e5e:	8d 85 eb fd ff ff    	lea    -0x215(%ebp),%eax
  108e64:	50                   	push   %eax
  108e65:	e8 dc 09 00 00       	call   109846 <memset>
  108e6a:	83 c4 10             	add    $0x10,%esp
  108e6d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  108e74:	eb 22                	jmp    108e98 <print_unsigned_integer+0xf6>
  108e76:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108e79:	2b 45 ec             	sub    -0x14(%ebp),%eax
  108e7c:	83 e8 01             	sub    $0x1,%eax
  108e7f:	0f b6 84 05 eb fe ff 	movzbl -0x115(%ebp,%eax,1),%eax
  108e86:	ff 
  108e87:	8d 8d eb fd ff ff    	lea    -0x215(%ebp),%ecx
  108e8d:	8b 55 ec             	mov    -0x14(%ebp),%edx
  108e90:	01 ca                	add    %ecx,%edx
  108e92:	88 02                	mov    %al,(%edx)
  108e94:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  108e98:	8b 45 ec             	mov    -0x14(%ebp),%eax
  108e9b:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  108e9e:	72 d6                	jb     108e76 <print_unsigned_integer+0xd4>
  108ea0:	83 ec 08             	sub    $0x8,%esp
  108ea3:	ff 75 f0             	push   -0x10(%ebp)
  108ea6:	8d 85 eb fd ff ff    	lea    -0x215(%ebp),%eax
  108eac:	50                   	push   %eax
  108ead:	e8 ce fc ff ff       	call   108b80 <print>
  108eb2:	83 c4 10             	add    $0x10,%esp
  108eb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  108eb8:	c9                   	leave  
  108eb9:	c3                   	ret    

00108eba <print_unsigned_long>:
  108eba:	55                   	push   %ebp
  108ebb:	89 e5                	mov    %esp,%ebp
  108ebd:	57                   	push   %edi
  108ebe:	56                   	push   %esi
  108ebf:	53                   	push   %ebx
  108ec0:	81 ec 3c 02 00 00    	sub    $0x23c,%esp
  108ec6:	8b 45 08             	mov    0x8(%ebp),%eax
  108ec9:	8b 50 04             	mov    0x4(%eax),%edx
  108ecc:	8b 00                	mov    (%eax),%eax
  108ece:	89 c7                	mov    %eax,%edi
  108ed0:	83 f7 00             	xor    $0x0,%edi
  108ed3:	89 f9                	mov    %edi,%ecx
  108ed5:	89 d0                	mov    %edx,%eax
  108ed7:	80 f4 00             	xor    $0x0,%ah
  108eda:	89 c3                	mov    %eax,%ebx
  108edc:	89 d8                	mov    %ebx,%eax
  108ede:	09 c8                	or     %ecx,%eax
  108ee0:	85 c0                	test   %eax,%eax
  108ee2:	75 1c                	jne    108f00 <print_unsigned_long+0x46>
  108ee4:	83 ec 08             	sub    $0x8,%esp
  108ee7:	6a 01                	push   $0x1
  108ee9:	68 98 ae 10 00       	push   $0x10ae98
  108eee:	e8 8d fc ff ff       	call   108b80 <print>
  108ef3:	83 c4 10             	add    $0x10,%esp
  108ef6:	b8 01 00 00 00       	mov    $0x1,%eax
  108efb:	e9 0e 01 00 00       	jmp    10900e <print_unsigned_long+0x154>
  108f00:	8b 45 08             	mov    0x8(%ebp),%eax
  108f03:	8b 50 04             	mov    0x4(%eax),%edx
  108f06:	8b 00                	mov    (%eax),%eax
  108f08:	89 45 e0             	mov    %eax,-0x20(%ebp)
  108f0b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  108f0e:	83 ec 04             	sub    $0x4,%esp
  108f11:	68 00 01 00 00       	push   $0x100
  108f16:	6a 00                	push   $0x0
  108f18:	8d 85 d7 fe ff ff    	lea    -0x129(%ebp),%eax
  108f1e:	50                   	push   %eax
  108f1f:	e8 22 09 00 00       	call   109846 <memset>
  108f24:	83 c4 10             	add    $0x10,%esp
  108f27:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  108f2e:	eb 49                	jmp    108f79 <print_unsigned_long+0xbf>
  108f30:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108f33:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  108f36:	6a 00                	push   $0x0
  108f38:	6a 0a                	push   $0xa
  108f3a:	52                   	push   %edx
  108f3b:	50                   	push   %eax
  108f3c:	e8 8f 0a 00 00       	call   1099d0 <__umoddi3>
  108f41:	83 c4 10             	add    $0x10,%esp
  108f44:	83 c0 30             	add    $0x30,%eax
  108f47:	88 45 d7             	mov    %al,-0x29(%ebp)
  108f4a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108f4d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  108f50:	6a 00                	push   $0x0
  108f52:	6a 0a                	push   $0xa
  108f54:	52                   	push   %edx
  108f55:	50                   	push   %eax
  108f56:	e8 45 09 00 00       	call   1098a0 <__udivdi3>
  108f5b:	83 c4 10             	add    $0x10,%esp
  108f5e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  108f61:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  108f64:	8d 95 d7 fe ff ff    	lea    -0x129(%ebp),%edx
  108f6a:	8b 45 dc             	mov    -0x24(%ebp),%eax
  108f6d:	01 c2                	add    %eax,%edx
  108f6f:	0f b6 45 d7          	movzbl -0x29(%ebp),%eax
  108f73:	88 02                	mov    %al,(%edx)
  108f75:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
  108f79:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108f7c:	80 f4 00             	xor    $0x0,%ah
  108f7f:	89 85 c0 fd ff ff    	mov    %eax,-0x240(%ebp)
  108f85:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108f88:	80 f4 00             	xor    $0x0,%ah
  108f8b:	89 85 c4 fd ff ff    	mov    %eax,-0x23c(%ebp)
  108f91:	8b 85 c4 fd ff ff    	mov    -0x23c(%ebp),%eax
  108f97:	0b 85 c0 fd ff ff    	or     -0x240(%ebp),%eax
  108f9d:	85 c0                	test   %eax,%eax
  108f9f:	74 09                	je     108faa <print_unsigned_long+0xf0>
  108fa1:	81 7d dc ff 00 00 00 	cmpl   $0xff,-0x24(%ebp)
  108fa8:	76 86                	jbe    108f30 <print_unsigned_long+0x76>
  108faa:	83 ec 04             	sub    $0x4,%esp
  108fad:	68 00 01 00 00       	push   $0x100
  108fb2:	6a 00                	push   $0x0
  108fb4:	8d 85 d7 fd ff ff    	lea    -0x229(%ebp),%eax
  108fba:	50                   	push   %eax
  108fbb:	e8 86 08 00 00       	call   109846 <memset>
  108fc0:	83 c4 10             	add    $0x10,%esp
  108fc3:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  108fca:	eb 22                	jmp    108fee <print_unsigned_long+0x134>
  108fcc:	8b 45 dc             	mov    -0x24(%ebp),%eax
  108fcf:	2b 45 d8             	sub    -0x28(%ebp),%eax
  108fd2:	83 e8 01             	sub    $0x1,%eax
  108fd5:	0f b6 84 05 d7 fe ff 	movzbl -0x129(%ebp,%eax,1),%eax
  108fdc:	ff 
  108fdd:	8d 8d d7 fd ff ff    	lea    -0x229(%ebp),%ecx
  108fe3:	8b 55 d8             	mov    -0x28(%ebp),%edx
  108fe6:	01 ca                	add    %ecx,%edx
  108fe8:	88 02                	mov    %al,(%edx)
  108fea:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  108fee:	8b 45 d8             	mov    -0x28(%ebp),%eax
  108ff1:	3b 45 dc             	cmp    -0x24(%ebp),%eax
  108ff4:	72 d6                	jb     108fcc <print_unsigned_long+0x112>
  108ff6:	83 ec 08             	sub    $0x8,%esp
  108ff9:	ff 75 dc             	push   -0x24(%ebp)
  108ffc:	8d 85 d7 fd ff ff    	lea    -0x229(%ebp),%eax
  109002:	50                   	push   %eax
  109003:	e8 78 fb ff ff       	call   108b80 <print>
  109008:	83 c4 10             	add    $0x10,%esp
  10900b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10900e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  109011:	5b                   	pop    %ebx
  109012:	5e                   	pop    %esi
  109013:	5f                   	pop    %edi
  109014:	5d                   	pop    %ebp
  109015:	c3                   	ret    

00109016 <print_hex>:
  109016:	55                   	push   %ebp
  109017:	89 e5                	mov    %esp,%ebp
  109019:	81 ec 38 02 00 00    	sub    $0x238,%esp
  10901f:	8b 45 0c             	mov    0xc(%ebp),%eax
  109022:	88 85 d4 fd ff ff    	mov    %al,-0x22c(%ebp)
  109028:	8b 45 08             	mov    0x8(%ebp),%eax
  10902b:	8b 00                	mov    (%eax),%eax
  10902d:	85 c0                	test   %eax,%eax
  10902f:	75 1c                	jne    10904d <print_hex+0x37>
  109031:	83 ec 08             	sub    $0x8,%esp
  109034:	6a 01                	push   $0x1
  109036:	68 98 ae 10 00       	push   $0x10ae98
  10903b:	e8 40 fb ff ff       	call   108b80 <print>
  109040:	83 c4 10             	add    $0x10,%esp
  109043:	b8 01 00 00 00       	mov    $0x1,%eax
  109048:	e9 9b 01 00 00       	jmp    1091e8 <print_hex+0x1d2>
  10904d:	8b 45 08             	mov    0x8(%ebp),%eax
  109050:	8b 00                	mov    (%eax),%eax
  109052:	89 45 f4             	mov    %eax,-0xc(%ebp)
  109055:	83 ec 04             	sub    $0x4,%esp
  109058:	68 00 01 00 00       	push   $0x100
  10905d:	6a 00                	push   $0x0
  10905f:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
  109065:	50                   	push   %eax
  109066:	e8 db 07 00 00       	call   109846 <memset>
  10906b:	83 c4 10             	add    $0x10,%esp
  10906e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  109075:	e9 f7 00 00 00       	jmp    109171 <print_hex+0x15b>
  10907a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10907d:	83 e0 0f             	and    $0xf,%eax
  109080:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  109083:	83 7d e4 0f          	cmpl   $0xf,-0x1c(%ebp)
  109087:	0f 87 bc 00 00 00    	ja     109149 <print_hex+0x133>
  10908d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  109090:	c1 e0 02             	shl    $0x2,%eax
  109093:	05 9c ae 10 00       	add    $0x10ae9c,%eax
  109098:	8b 00                	mov    (%eax),%eax
  10909a:	ff e0                	jmp    *%eax
  10909c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10909f:	83 c0 30             	add    $0x30,%eax
  1090a2:	88 45 ef             	mov    %al,-0x11(%ebp)
  1090a5:	e9 a9 00 00 00       	jmp    109153 <print_hex+0x13d>
  1090aa:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  1090b1:	74 07                	je     1090ba <print_hex+0xa4>
  1090b3:	b8 61 00 00 00       	mov    $0x61,%eax
  1090b8:	eb 05                	jmp    1090bf <print_hex+0xa9>
  1090ba:	b8 41 00 00 00       	mov    $0x41,%eax
  1090bf:	88 45 ef             	mov    %al,-0x11(%ebp)
  1090c2:	e9 8c 00 00 00       	jmp    109153 <print_hex+0x13d>
  1090c7:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  1090ce:	74 07                	je     1090d7 <print_hex+0xc1>
  1090d0:	b8 62 00 00 00       	mov    $0x62,%eax
  1090d5:	eb 05                	jmp    1090dc <print_hex+0xc6>
  1090d7:	b8 42 00 00 00       	mov    $0x42,%eax
  1090dc:	88 45 ef             	mov    %al,-0x11(%ebp)
  1090df:	eb 72                	jmp    109153 <print_hex+0x13d>
  1090e1:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  1090e8:	74 07                	je     1090f1 <print_hex+0xdb>
  1090ea:	b8 63 00 00 00       	mov    $0x63,%eax
  1090ef:	eb 05                	jmp    1090f6 <print_hex+0xe0>
  1090f1:	b8 43 00 00 00       	mov    $0x43,%eax
  1090f6:	88 45 ef             	mov    %al,-0x11(%ebp)
  1090f9:	eb 58                	jmp    109153 <print_hex+0x13d>
  1090fb:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  109102:	74 07                	je     10910b <print_hex+0xf5>
  109104:	b8 64 00 00 00       	mov    $0x64,%eax
  109109:	eb 05                	jmp    109110 <print_hex+0xfa>
  10910b:	b8 44 00 00 00       	mov    $0x44,%eax
  109110:	88 45 ef             	mov    %al,-0x11(%ebp)
  109113:	eb 3e                	jmp    109153 <print_hex+0x13d>
  109115:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  10911c:	74 07                	je     109125 <print_hex+0x10f>
  10911e:	b8 65 00 00 00       	mov    $0x65,%eax
  109123:	eb 05                	jmp    10912a <print_hex+0x114>
  109125:	b8 45 00 00 00       	mov    $0x45,%eax
  10912a:	88 45 ef             	mov    %al,-0x11(%ebp)
  10912d:	eb 24                	jmp    109153 <print_hex+0x13d>
  10912f:	80 bd d4 fd ff ff 00 	cmpb   $0x0,-0x22c(%ebp)
  109136:	74 07                	je     10913f <print_hex+0x129>
  109138:	b8 66 00 00 00       	mov    $0x66,%eax
  10913d:	eb 05                	jmp    109144 <print_hex+0x12e>
  10913f:	b8 46 00 00 00       	mov    $0x46,%eax
  109144:	88 45 ef             	mov    %al,-0x11(%ebp)
  109147:	eb 0a                	jmp    109153 <print_hex+0x13d>
  109149:	b8 00 00 00 00       	mov    $0x0,%eax
  10914e:	e9 95 00 00 00       	jmp    1091e8 <print_hex+0x1d2>
  109153:	8b 45 f4             	mov    -0xc(%ebp),%eax
  109156:	c1 e8 04             	shr    $0x4,%eax
  109159:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10915c:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
  109162:	8b 45 f0             	mov    -0x10(%ebp),%eax
  109165:	01 c2                	add    %eax,%edx
  109167:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  10916b:	88 02                	mov    %al,(%edx)
  10916d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  109171:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  109175:	74 0d                	je     109184 <print_hex+0x16e>
  109177:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
  10917e:	0f 86 f6 fe ff ff    	jbe    10907a <print_hex+0x64>
  109184:	83 ec 04             	sub    $0x4,%esp
  109187:	68 00 01 00 00       	push   $0x100
  10918c:	6a 00                	push   $0x0
  10918e:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  109194:	50                   	push   %eax
  109195:	e8 ac 06 00 00       	call   109846 <memset>
  10919a:	83 c4 10             	add    $0x10,%esp
  10919d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1091a4:	eb 22                	jmp    1091c8 <print_hex+0x1b2>
  1091a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1091a9:	2b 45 e8             	sub    -0x18(%ebp),%eax
  1091ac:	83 e8 01             	sub    $0x1,%eax
  1091af:	0f b6 84 05 e4 fe ff 	movzbl -0x11c(%ebp,%eax,1),%eax
  1091b6:	ff 
  1091b7:	8d 8d e4 fd ff ff    	lea    -0x21c(%ebp),%ecx
  1091bd:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1091c0:	01 ca                	add    %ecx,%edx
  1091c2:	88 02                	mov    %al,(%edx)
  1091c4:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  1091c8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1091cb:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1091ce:	72 d6                	jb     1091a6 <print_hex+0x190>
  1091d0:	83 ec 08             	sub    $0x8,%esp
  1091d3:	ff 75 f0             	push   -0x10(%ebp)
  1091d6:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
  1091dc:	50                   	push   %eax
  1091dd:	e8 9e f9 ff ff       	call   108b80 <print>
  1091e2:	83 c4 10             	add    $0x10,%esp
  1091e5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1091e8:	c9                   	leave  
  1091e9:	c3                   	ret    

001091ea <print_float>:
  1091ea:	55                   	push   %ebp
  1091eb:	89 e5                	mov    %esp,%ebp
  1091ed:	57                   	push   %edi
  1091ee:	56                   	push   %esi
  1091ef:	83 ec 60             	sub    $0x60,%esp
  1091f2:	8b 45 08             	mov    0x8(%ebp),%eax
  1091f5:	dd 00                	fldl   (%eax)
  1091f7:	dd 5d e8             	fstpl  -0x18(%ebp)
  1091fa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  109201:	dd 45 e8             	fldl   -0x18(%ebp)
  109204:	d9 7d b6             	fnstcw -0x4a(%ebp)
  109207:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  10920b:	80 cc 0c             	or     $0xc,%ah
  10920e:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  109212:	d9 6d b4             	fldcw  -0x4c(%ebp)
  109215:	db 5d b0             	fistpl -0x50(%ebp)
  109218:	d9 6d b6             	fldcw  -0x4a(%ebp)
  10921b:	8b 45 b0             	mov    -0x50(%ebp),%eax
  10921e:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  109221:	83 ec 0c             	sub    $0xc,%esp
  109224:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  109227:	50                   	push   %eax
  109228:	e8 f4 f9 ff ff       	call   108c21 <print_signed_integer>
  10922d:	83 c4 10             	add    $0x10,%esp
  109230:	01 45 e4             	add    %eax,-0x1c(%ebp)
  109233:	83 ec 0c             	sub    $0xc,%esp
  109236:	68 dc ae 10 00       	push   $0x10aedc
  10923b:	e8 c4 f9 ff ff       	call   108c04 <print_char>
  109240:	83 c4 10             	add    $0x10,%esp
  109243:	01 45 e4             	add    %eax,-0x1c(%ebp)
  109246:	8b 45 08             	mov    0x8(%ebp),%eax
  109249:	dd 00                	fldl   (%eax)
  10924b:	d9 ee                	fldz   
  10924d:	df f1                	fcomip %st(1),%st
  10924f:	dd d8                	fstp   %st(0)
  109251:	76 09                	jbe    10925c <print_float+0x72>
  109253:	8b 45 08             	mov    0x8(%ebp),%eax
  109256:	dd 00                	fldl   (%eax)
  109258:	d9 e0                	fchs   
  10925a:	eb 05                	jmp    109261 <print_float+0x77>
  10925c:	8b 45 08             	mov    0x8(%ebp),%eax
  10925f:	dd 00                	fldl   (%eax)
  109261:	dd 5d d8             	fstpl  -0x28(%ebp)
  109264:	dd 45 d8             	fldl   -0x28(%ebp)
  109267:	d9 7d b6             	fnstcw -0x4a(%ebp)
  10926a:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  10926e:	80 cc 0c             	or     $0xc,%ah
  109271:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  109275:	d9 6d b4             	fldcw  -0x4c(%ebp)
  109278:	db 5d d4             	fistpl -0x2c(%ebp)
  10927b:	d9 6d b6             	fldcw  -0x4a(%ebp)
  10927e:	db 45 d4             	fildl  -0x2c(%ebp)
  109281:	dd 45 d8             	fldl   -0x28(%ebp)
  109284:	de e1                	fsubp  %st,%st(1)
  109286:	dd 5d f0             	fstpl  -0x10(%ebp)
  109289:	dd 45 f0             	fldl   -0x10(%ebp)
  10928c:	dd 05 70 af 10 00    	fldl   0x10af70
  109292:	de c9                	fmulp  %st,%st(1)
  109294:	dd 5d f0             	fstpl  -0x10(%ebp)
  109297:	dd 45 f0             	fldl   -0x10(%ebp)
  10929a:	dd 05 70 af 10 00    	fldl   0x10af70
  1092a0:	de c9                	fmulp  %st,%st(1)
  1092a2:	dd 05 78 af 10 00    	fldl   0x10af78
  1092a8:	d9 c9                	fxch   %st(1)
  1092aa:	db f1                	fcomi  %st(1),%st
  1092ac:	dd d9                	fstp   %st(1)
  1092ae:	73 0b                	jae    1092bb <print_float+0xd1>
  1092b0:	d9 6d b4             	fldcw  -0x4c(%ebp)
  1092b3:	df 7d c8             	fistpll -0x38(%ebp)
  1092b6:	d9 6d b6             	fldcw  -0x4a(%ebp)
  1092b9:	eb 29                	jmp    1092e4 <print_float+0xfa>
  1092bb:	dd 05 78 af 10 00    	fldl   0x10af78
  1092c1:	de e9                	fsubrp %st,%st(1)
  1092c3:	d9 6d b4             	fldcw  -0x4c(%ebp)
  1092c6:	df 7d c8             	fistpll -0x38(%ebp)
  1092c9:	d9 6d b6             	fldcw  -0x4a(%ebp)
  1092cc:	8b 45 c8             	mov    -0x38(%ebp),%eax
  1092cf:	80 f4 00             	xor    $0x0,%ah
  1092d2:	89 c6                	mov    %eax,%esi
  1092d4:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1092d7:	35 00 00 00 80       	xor    $0x80000000,%eax
  1092dc:	89 c7                	mov    %eax,%edi
  1092de:	89 75 c8             	mov    %esi,-0x38(%ebp)
  1092e1:	89 7d cc             	mov    %edi,-0x34(%ebp)
  1092e4:	8b 45 c8             	mov    -0x38(%ebp),%eax
  1092e7:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1092ea:	89 45 c8             	mov    %eax,-0x38(%ebp)
  1092ed:	89 55 cc             	mov    %edx,-0x34(%ebp)
  1092f0:	8b 45 c8             	mov    -0x38(%ebp),%eax
  1092f3:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1092f6:	6a 00                	push   $0x0
  1092f8:	6a 0a                	push   $0xa
  1092fa:	52                   	push   %edx
  1092fb:	50                   	push   %eax
  1092fc:	e8 cf 06 00 00       	call   1099d0 <__umoddi3>
  109301:	83 c4 10             	add    $0x10,%esp
  109304:	89 c1                	mov    %eax,%ecx
  109306:	80 f5 00             	xor    $0x0,%ch
  109309:	89 4d a8             	mov    %ecx,-0x58(%ebp)
  10930c:	89 d0                	mov    %edx,%eax
  10930e:	80 f4 00             	xor    $0x0,%ah
  109311:	89 45 ac             	mov    %eax,-0x54(%ebp)
  109314:	8b 55 a8             	mov    -0x58(%ebp),%edx
  109317:	8b 4d ac             	mov    -0x54(%ebp),%ecx
  10931a:	89 c8                	mov    %ecx,%eax
  10931c:	09 d0                	or     %edx,%eax
  10931e:	85 c0                	test   %eax,%eax
  109320:	74 13                	je     109335 <print_float+0x14b>
  109322:	d9 7d b6             	fnstcw -0x4a(%ebp)
  109325:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  109329:	80 cc 0c             	or     $0xc,%ah
  10932c:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  109330:	e9 54 ff ff ff       	jmp    109289 <print_float+0x9f>
  109335:	90                   	nop
  109336:	dd 05 78 af 10 00    	fldl   0x10af78
  10933c:	dd 45 f0             	fldl   -0x10(%ebp)
  10933f:	df f1                	fcomip %st(1),%st
  109341:	dd d8                	fstp   %st(0)
  109343:	73 1c                	jae    109361 <print_float+0x177>
  109345:	dd 45 f0             	fldl   -0x10(%ebp)
  109348:	d9 7d b6             	fnstcw -0x4a(%ebp)
  10934b:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  10934f:	80 cc 0c             	or     $0xc,%ah
  109352:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  109356:	d9 6d b4             	fldcw  -0x4c(%ebp)
  109359:	df 7d a8             	fistpll -0x58(%ebp)
  10935c:	d9 6d b6             	fldcw  -0x4a(%ebp)
  10935f:	eb 42                	jmp    1093a3 <print_float+0x1b9>
  109361:	dd 45 f0             	fldl   -0x10(%ebp)
  109364:	dd 05 78 af 10 00    	fldl   0x10af78
  10936a:	de e9                	fsubrp %st,%st(1)
  10936c:	d9 7d b6             	fnstcw -0x4a(%ebp)
  10936f:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
  109373:	80 cc 0c             	or     $0xc,%ah
  109376:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
  10937a:	d9 6d b4             	fldcw  -0x4c(%ebp)
  10937d:	df 7d a8             	fistpll -0x58(%ebp)
  109380:	d9 6d b6             	fldcw  -0x4a(%ebp)
  109383:	8b 45 a8             	mov    -0x58(%ebp),%eax
  109386:	80 f4 00             	xor    $0x0,%ah
  109389:	89 45 a0             	mov    %eax,-0x60(%ebp)
  10938c:	8b 45 ac             	mov    -0x54(%ebp),%eax
  10938f:	35 00 00 00 80       	xor    $0x80000000,%eax
  109394:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  109397:	8b 45 a0             	mov    -0x60(%ebp),%eax
  10939a:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  10939d:	89 45 a8             	mov    %eax,-0x58(%ebp)
  1093a0:	89 55 ac             	mov    %edx,-0x54(%ebp)
  1093a3:	8b 45 a8             	mov    -0x58(%ebp),%eax
  1093a6:	8b 55 ac             	mov    -0x54(%ebp),%edx
  1093a9:	89 45 b8             	mov    %eax,-0x48(%ebp)
  1093ac:	89 55 bc             	mov    %edx,-0x44(%ebp)
  1093af:	83 ec 0c             	sub    $0xc,%esp
  1093b2:	8d 45 b8             	lea    -0x48(%ebp),%eax
  1093b5:	50                   	push   %eax
  1093b6:	e8 ff fa ff ff       	call   108eba <print_unsigned_long>
  1093bb:	83 c4 10             	add    $0x10,%esp
  1093be:	01 45 e4             	add    %eax,-0x1c(%ebp)
  1093c1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1093c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1093c7:	5e                   	pop    %esi
  1093c8:	5f                   	pop    %edi
  1093c9:	5d                   	pop    %ebp
  1093ca:	c3                   	ret    

001093cb <print_unsigned_int8>:
  1093cb:	55                   	push   %ebp
  1093cc:	89 e5                	mov    %esp,%ebp
  1093ce:	83 ec 18             	sub    $0x18,%esp
  1093d1:	8b 45 08             	mov    0x8(%ebp),%eax
  1093d4:	0f b6 00             	movzbl (%eax),%eax
  1093d7:	0f b6 c0             	movzbl %al,%eax
  1093da:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1093dd:	83 ec 0c             	sub    $0xc,%esp
  1093e0:	8d 45 f4             	lea    -0xc(%ebp),%eax
  1093e3:	50                   	push   %eax
  1093e4:	e8 b9 f9 ff ff       	call   108da2 <print_unsigned_integer>
  1093e9:	83 c4 10             	add    $0x10,%esp
  1093ec:	c9                   	leave  
  1093ed:	c3                   	ret    

001093ee <print_signed_int8>:
  1093ee:	55                   	push   %ebp
  1093ef:	89 e5                	mov    %esp,%ebp
  1093f1:	83 ec 18             	sub    $0x18,%esp
  1093f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1093f7:	0f b6 00             	movzbl (%eax),%eax
  1093fa:	0f be c0             	movsbl %al,%eax
  1093fd:	89 45 f4             	mov    %eax,-0xc(%ebp)
  109400:	83 ec 0c             	sub    $0xc,%esp
  109403:	8d 45 f4             	lea    -0xc(%ebp),%eax
  109406:	50                   	push   %eax
  109407:	e8 15 f8 ff ff       	call   108c21 <print_signed_integer>
  10940c:	83 c4 10             	add    $0x10,%esp
  10940f:	c9                   	leave  
  109410:	c3                   	ret    

00109411 <print_unsigned_int16>:
  109411:	55                   	push   %ebp
  109412:	89 e5                	mov    %esp,%ebp
  109414:	83 ec 18             	sub    $0x18,%esp
  109417:	8b 45 08             	mov    0x8(%ebp),%eax
  10941a:	0f b7 00             	movzwl (%eax),%eax
  10941d:	0f b7 c0             	movzwl %ax,%eax
  109420:	89 45 f4             	mov    %eax,-0xc(%ebp)
  109423:	83 ec 0c             	sub    $0xc,%esp
  109426:	8d 45 f4             	lea    -0xc(%ebp),%eax
  109429:	50                   	push   %eax
  10942a:	e8 73 f9 ff ff       	call   108da2 <print_unsigned_integer>
  10942f:	83 c4 10             	add    $0x10,%esp
  109432:	c9                   	leave  
  109433:	c3                   	ret    

00109434 <print_signed_int16>:
  109434:	55                   	push   %ebp
  109435:	89 e5                	mov    %esp,%ebp
  109437:	83 ec 18             	sub    $0x18,%esp
  10943a:	8b 45 08             	mov    0x8(%ebp),%eax
  10943d:	0f b7 00             	movzwl (%eax),%eax
  109440:	98                   	cwtl   
  109441:	89 45 f4             	mov    %eax,-0xc(%ebp)
  109444:	83 ec 0c             	sub    $0xc,%esp
  109447:	8d 45 f4             	lea    -0xc(%ebp),%eax
  10944a:	50                   	push   %eax
  10944b:	e8 d1 f7 ff ff       	call   108c21 <print_signed_integer>
  109450:	83 c4 10             	add    $0x10,%esp
  109453:	c9                   	leave  
  109454:	c3                   	ret    

00109455 <printf>:
  109455:	55                   	push   %ebp
  109456:	89 e5                	mov    %esp,%ebp
  109458:	83 ec 58             	sub    $0x58,%esp
  10945b:	8d 45 0c             	lea    0xc(%ebp),%eax
  10945e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  109461:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  109468:	8b 45 08             	mov    0x8(%ebp),%eax
  10946b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10946e:	e9 60 02 00 00       	jmp    1096d3 <printf+0x27e>
  109473:	8b 45 f0             	mov    -0x10(%ebp),%eax
  109476:	0f b6 00             	movzbl (%eax),%eax
  109479:	88 45 df             	mov    %al,-0x21(%ebp)
  10947c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10947f:	83 c0 01             	add    $0x1,%eax
  109482:	0f b6 00             	movzbl (%eax),%eax
  109485:	88 45 ef             	mov    %al,-0x11(%ebp)
  109488:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
  10948c:	3c 25                	cmp    $0x25,%al
  10948e:	0f 85 23 02 00 00    	jne    1096b7 <printf+0x262>
  109494:	0f be 45 ef          	movsbl -0x11(%ebp),%eax
  109498:	83 e8 55             	sub    $0x55,%eax
  10949b:	83 f8 23             	cmp    $0x23,%eax
  10949e:	0f 87 2a 02 00 00    	ja     1096ce <printf+0x279>
  1094a4:	8b 04 85 e0 ae 10 00 	mov    0x10aee0(,%eax,4),%eax
  1094ab:	ff e0                	jmp    *%eax
  1094ad:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1094b1:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1094b4:	8d 50 04             	lea    0x4(%eax),%edx
  1094b7:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1094ba:	8b 00                	mov    (%eax),%eax
  1094bc:	88 45 de             	mov    %al,-0x22(%ebp)
  1094bf:	83 ec 0c             	sub    $0xc,%esp
  1094c2:	8d 45 de             	lea    -0x22(%ebp),%eax
  1094c5:	50                   	push   %eax
  1094c6:	e8 39 f7 ff ff       	call   108c04 <print_char>
  1094cb:	83 c4 10             	add    $0x10,%esp
  1094ce:	01 45 f4             	add    %eax,-0xc(%ebp)
  1094d1:	e9 f9 01 00 00       	jmp    1096cf <printf+0x27a>
  1094d6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1094da:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1094dd:	8d 50 04             	lea    0x4(%eax),%edx
  1094e0:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1094e3:	8b 00                	mov    (%eax),%eax
  1094e5:	89 45 d8             	mov    %eax,-0x28(%ebp)
  1094e8:	83 ec 0c             	sub    $0xc,%esp
  1094eb:	8d 45 d8             	lea    -0x28(%ebp),%eax
  1094ee:	50                   	push   %eax
  1094ef:	e8 2d f7 ff ff       	call   108c21 <print_signed_integer>
  1094f4:	83 c4 10             	add    $0x10,%esp
  1094f7:	01 45 f4             	add    %eax,-0xc(%ebp)
  1094fa:	e9 d0 01 00 00       	jmp    1096cf <printf+0x27a>
  1094ff:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  109503:	8b 45 e0             	mov    -0x20(%ebp),%eax
  109506:	8d 50 04             	lea    0x4(%eax),%edx
  109509:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10950c:	8b 00                	mov    (%eax),%eax
  10950e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  109511:	83 ec 0c             	sub    $0xc,%esp
  109514:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  109517:	50                   	push   %eax
  109518:	e8 85 f8 ff ff       	call   108da2 <print_unsigned_integer>
  10951d:	83 c4 10             	add    $0x10,%esp
  109520:	01 45 f4             	add    %eax,-0xc(%ebp)
  109523:	e9 a7 01 00 00       	jmp    1096cf <printf+0x27a>
  109528:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10952c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10952f:	8d 50 08             	lea    0x8(%eax),%edx
  109532:	89 55 e0             	mov    %edx,-0x20(%ebp)
  109535:	8b 50 04             	mov    0x4(%eax),%edx
  109538:	8b 00                	mov    (%eax),%eax
  10953a:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10953d:	89 55 cc             	mov    %edx,-0x34(%ebp)
  109540:	83 ec 0c             	sub    $0xc,%esp
  109543:	8d 45 c8             	lea    -0x38(%ebp),%eax
  109546:	50                   	push   %eax
  109547:	e8 6e f9 ff ff       	call   108eba <print_unsigned_long>
  10954c:	83 c4 10             	add    $0x10,%esp
  10954f:	01 45 f4             	add    %eax,-0xc(%ebp)
  109552:	e9 78 01 00 00       	jmp    1096cf <printf+0x27a>
  109557:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10955b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10955e:	8d 50 04             	lea    0x4(%eax),%edx
  109561:	89 55 e0             	mov    %edx,-0x20(%ebp)
  109564:	8b 00                	mov    (%eax),%eax
  109566:	88 45 c7             	mov    %al,-0x39(%ebp)
  109569:	83 ec 0c             	sub    $0xc,%esp
  10956c:	8d 45 c7             	lea    -0x39(%ebp),%eax
  10956f:	50                   	push   %eax
  109570:	e8 56 fe ff ff       	call   1093cb <print_unsigned_int8>
  109575:	83 c4 10             	add    $0x10,%esp
  109578:	01 45 f4             	add    %eax,-0xc(%ebp)
  10957b:	e9 4f 01 00 00       	jmp    1096cf <printf+0x27a>
  109580:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  109584:	8b 45 e0             	mov    -0x20(%ebp),%eax
  109587:	8d 50 04             	lea    0x4(%eax),%edx
  10958a:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10958d:	8b 00                	mov    (%eax),%eax
  10958f:	88 45 c6             	mov    %al,-0x3a(%ebp)
  109592:	83 ec 0c             	sub    $0xc,%esp
  109595:	8d 45 c6             	lea    -0x3a(%ebp),%eax
  109598:	50                   	push   %eax
  109599:	e8 50 fe ff ff       	call   1093ee <print_signed_int8>
  10959e:	83 c4 10             	add    $0x10,%esp
  1095a1:	01 45 f4             	add    %eax,-0xc(%ebp)
  1095a4:	e9 26 01 00 00       	jmp    1096cf <printf+0x27a>
  1095a9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1095ad:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1095b0:	8d 50 04             	lea    0x4(%eax),%edx
  1095b3:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1095b6:	8b 00                	mov    (%eax),%eax
  1095b8:	66 89 45 c4          	mov    %ax,-0x3c(%ebp)
  1095bc:	83 ec 0c             	sub    $0xc,%esp
  1095bf:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  1095c2:	50                   	push   %eax
  1095c3:	e8 49 fe ff ff       	call   109411 <print_unsigned_int16>
  1095c8:	83 c4 10             	add    $0x10,%esp
  1095cb:	01 45 f4             	add    %eax,-0xc(%ebp)
  1095ce:	e9 fc 00 00 00       	jmp    1096cf <printf+0x27a>
  1095d3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1095d7:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1095da:	8d 50 04             	lea    0x4(%eax),%edx
  1095dd:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1095e0:	8b 00                	mov    (%eax),%eax
  1095e2:	66 89 45 c2          	mov    %ax,-0x3e(%ebp)
  1095e6:	83 ec 0c             	sub    $0xc,%esp
  1095e9:	8d 45 c2             	lea    -0x3e(%ebp),%eax
  1095ec:	50                   	push   %eax
  1095ed:	e8 42 fe ff ff       	call   109434 <print_signed_int16>
  1095f2:	83 c4 10             	add    $0x10,%esp
  1095f5:	01 45 f4             	add    %eax,-0xc(%ebp)
  1095f8:	e9 d2 00 00 00       	jmp    1096cf <printf+0x27a>
  1095fd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  109601:	8b 45 e0             	mov    -0x20(%ebp),%eax
  109604:	8d 50 04             	lea    0x4(%eax),%edx
  109607:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10960a:	8b 00                	mov    (%eax),%eax
  10960c:	89 45 bc             	mov    %eax,-0x44(%ebp)
  10960f:	83 ec 08             	sub    $0x8,%esp
  109612:	6a 01                	push   $0x1
  109614:	8d 45 bc             	lea    -0x44(%ebp),%eax
  109617:	50                   	push   %eax
  109618:	e8 f9 f9 ff ff       	call   109016 <print_hex>
  10961d:	83 c4 10             	add    $0x10,%esp
  109620:	01 45 f4             	add    %eax,-0xc(%ebp)
  109623:	e9 a7 00 00 00       	jmp    1096cf <printf+0x27a>
  109628:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  10962c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10962f:	8d 50 04             	lea    0x4(%eax),%edx
  109632:	89 55 e0             	mov    %edx,-0x20(%ebp)
  109635:	8b 00                	mov    (%eax),%eax
  109637:	89 45 b8             	mov    %eax,-0x48(%ebp)
  10963a:	83 ec 08             	sub    $0x8,%esp
  10963d:	6a 00                	push   $0x0
  10963f:	8d 45 b8             	lea    -0x48(%ebp),%eax
  109642:	50                   	push   %eax
  109643:	e8 ce f9 ff ff       	call   109016 <print_hex>
  109648:	83 c4 10             	add    $0x10,%esp
  10964b:	01 45 f4             	add    %eax,-0xc(%ebp)
  10964e:	eb 7f                	jmp    1096cf <printf+0x27a>
  109650:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  109654:	8b 45 e0             	mov    -0x20(%ebp),%eax
  109657:	8d 50 04             	lea    0x4(%eax),%edx
  10965a:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10965d:	8b 00                	mov    (%eax),%eax
  10965f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  109662:	83 ec 0c             	sub    $0xc,%esp
  109665:	ff 75 e8             	push   -0x18(%ebp)
  109668:	e8 0c 02 00 00       	call   109879 <strlen>
  10966d:	83 c4 10             	add    $0x10,%esp
  109670:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  109673:	83 ec 08             	sub    $0x8,%esp
  109676:	ff 75 e4             	push   -0x1c(%ebp)
  109679:	ff 75 e8             	push   -0x18(%ebp)
  10967c:	e8 ff f4 ff ff       	call   108b80 <print>
  109681:	83 c4 10             	add    $0x10,%esp
  109684:	8b 55 f4             	mov    -0xc(%ebp),%edx
  109687:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10968a:	01 d0                	add    %edx,%eax
  10968c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10968f:	eb 3e                	jmp    1096cf <printf+0x27a>
  109691:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  109695:	8b 45 e0             	mov    -0x20(%ebp),%eax
  109698:	8d 50 08             	lea    0x8(%eax),%edx
  10969b:	89 55 e0             	mov    %edx,-0x20(%ebp)
  10969e:	dd 00                	fldl   (%eax)
  1096a0:	dd 5d b0             	fstpl  -0x50(%ebp)
  1096a3:	83 ec 0c             	sub    $0xc,%esp
  1096a6:	8d 45 b0             	lea    -0x50(%ebp),%eax
  1096a9:	50                   	push   %eax
  1096aa:	e8 3b fb ff ff       	call   1091ea <print_float>
  1096af:	83 c4 10             	add    $0x10,%esp
  1096b2:	01 45 f4             	add    %eax,-0xc(%ebp)
  1096b5:	eb 18                	jmp    1096cf <printf+0x27a>
  1096b7:	83 ec 08             	sub    $0x8,%esp
  1096ba:	6a 01                	push   $0x1
  1096bc:	8d 45 df             	lea    -0x21(%ebp),%eax
  1096bf:	50                   	push   %eax
  1096c0:	e8 bb f4 ff ff       	call   108b80 <print>
  1096c5:	83 c4 10             	add    $0x10,%esp
  1096c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1096cc:	eb 01                	jmp    1096cf <printf+0x27a>
  1096ce:	90                   	nop
  1096cf:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1096d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1096d6:	0f b6 00             	movzbl (%eax),%eax
  1096d9:	84 c0                	test   %al,%al
  1096db:	0f 85 92 fd ff ff    	jne    109473 <printf+0x1e>
  1096e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1096e4:	c9                   	leave  
  1096e5:	c3                   	ret    

001096e6 <putchar>:
  1096e6:	55                   	push   %ebp
  1096e7:	89 e5                	mov    %esp,%ebp
  1096e9:	83 ec 08             	sub    $0x8,%esp
  1096ec:	8b 45 08             	mov    0x8(%ebp),%eax
  1096ef:	0f be c0             	movsbl %al,%eax
  1096f2:	83 ec 0c             	sub    $0xc,%esp
  1096f5:	50                   	push   %eax
  1096f6:	e8 60 6c ff ff       	call   10035b <tty_putchar>
  1096fb:	83 c4 10             	add    $0x10,%esp
  1096fe:	b8 00 00 00 00       	mov    $0x0,%eax
  109703:	c9                   	leave  
  109704:	c3                   	ret    

00109705 <abort>:
  109705:	55                   	push   %ebp
  109706:	89 e5                	mov    %esp,%ebp
  109708:	83 ec 08             	sub    $0x8,%esp
  10970b:	83 ec 0c             	sub    $0xc,%esp
  10970e:	68 80 af 10 00       	push   $0x10af80
  109713:	e8 3d fd ff ff       	call   109455 <printf>
  109718:	83 c4 10             	add    $0x10,%esp
  10971b:	eb fe                	jmp    10971b <abort+0x16>

0010971d <memcmp>:
  10971d:	55                   	push   %ebp
  10971e:	89 e5                	mov    %esp,%ebp
  109720:	83 ec 10             	sub    $0x10,%esp
  109723:	8b 45 08             	mov    0x8(%ebp),%eax
  109726:	89 45 f8             	mov    %eax,-0x8(%ebp)
  109729:	8b 45 0c             	mov    0xc(%ebp),%eax
  10972c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10972f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  109736:	eb 46                	jmp    10977e <memcmp+0x61>
  109738:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10973b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10973e:	01 d0                	add    %edx,%eax
  109740:	0f b6 10             	movzbl (%eax),%edx
  109743:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  109746:	8b 45 fc             	mov    -0x4(%ebp),%eax
  109749:	01 c8                	add    %ecx,%eax
  10974b:	0f b6 00             	movzbl (%eax),%eax
  10974e:	38 c2                	cmp    %al,%dl
  109750:	73 07                	jae    109759 <memcmp+0x3c>
  109752:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  109757:	eb 32                	jmp    10978b <memcmp+0x6e>
  109759:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10975c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10975f:	01 d0                	add    %edx,%eax
  109761:	0f b6 10             	movzbl (%eax),%edx
  109764:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  109767:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10976a:	01 c8                	add    %ecx,%eax
  10976c:	0f b6 00             	movzbl (%eax),%eax
  10976f:	38 c2                	cmp    %al,%dl
  109771:	73 07                	jae    10977a <memcmp+0x5d>
  109773:	b8 01 00 00 00       	mov    $0x1,%eax
  109778:	eb 11                	jmp    10978b <memcmp+0x6e>
  10977a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10977e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  109781:	3b 45 10             	cmp    0x10(%ebp),%eax
  109784:	72 b2                	jb     109738 <memcmp+0x1b>
  109786:	b8 00 00 00 00       	mov    $0x0,%eax
  10978b:	c9                   	leave  
  10978c:	c3                   	ret    

0010978d <memcpy>:
  10978d:	55                   	push   %ebp
  10978e:	89 e5                	mov    %esp,%ebp
  109790:	83 ec 10             	sub    $0x10,%esp
  109793:	8b 45 08             	mov    0x8(%ebp),%eax
  109796:	89 45 f8             	mov    %eax,-0x8(%ebp)
  109799:	8b 45 0c             	mov    0xc(%ebp),%eax
  10979c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10979f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1097a6:	eb 19                	jmp    1097c1 <memcpy+0x34>
  1097a8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1097ab:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1097ae:	01 d0                	add    %edx,%eax
  1097b0:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1097b3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1097b6:	01 ca                	add    %ecx,%edx
  1097b8:	0f b6 00             	movzbl (%eax),%eax
  1097bb:	88 02                	mov    %al,(%edx)
  1097bd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1097c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1097c4:	3b 45 10             	cmp    0x10(%ebp),%eax
  1097c7:	72 df                	jb     1097a8 <memcpy+0x1b>
  1097c9:	8b 45 08             	mov    0x8(%ebp),%eax
  1097cc:	c9                   	leave  
  1097cd:	c3                   	ret    

001097ce <memmove>:
  1097ce:	55                   	push   %ebp
  1097cf:	89 e5                	mov    %esp,%ebp
  1097d1:	83 ec 10             	sub    $0x10,%esp
  1097d4:	8b 45 08             	mov    0x8(%ebp),%eax
  1097d7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1097da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1097dd:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1097e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1097e3:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1097e6:	73 2c                	jae    109814 <memmove+0x46>
  1097e8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1097ef:	eb 19                	jmp    10980a <memmove+0x3c>
  1097f1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1097f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1097f7:	01 d0                	add    %edx,%eax
  1097f9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1097fc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1097ff:	01 ca                	add    %ecx,%edx
  109801:	0f b6 00             	movzbl (%eax),%eax
  109804:	88 02                	mov    %al,(%edx)
  109806:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10980a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10980d:	3b 45 10             	cmp    0x10(%ebp),%eax
  109810:	72 df                	jb     1097f1 <memmove+0x23>
  109812:	eb 2d                	jmp    109841 <memmove+0x73>
  109814:	8b 45 10             	mov    0x10(%ebp),%eax
  109817:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10981a:	eb 1f                	jmp    10983b <memmove+0x6d>
  10981c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10981f:	8d 50 ff             	lea    -0x1(%eax),%edx
  109822:	8b 45 f0             	mov    -0x10(%ebp),%eax
  109825:	01 d0                	add    %edx,%eax
  109827:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10982a:	8d 4a ff             	lea    -0x1(%edx),%ecx
  10982d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  109830:	01 ca                	add    %ecx,%edx
  109832:	0f b6 00             	movzbl (%eax),%eax
  109835:	88 02                	mov    %al,(%edx)
  109837:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  10983b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10983f:	75 db                	jne    10981c <memmove+0x4e>
  109841:	8b 45 08             	mov    0x8(%ebp),%eax
  109844:	c9                   	leave  
  109845:	c3                   	ret    

00109846 <memset>:
  109846:	55                   	push   %ebp
  109847:	89 e5                	mov    %esp,%ebp
  109849:	83 ec 10             	sub    $0x10,%esp
  10984c:	8b 45 08             	mov    0x8(%ebp),%eax
  10984f:	89 45 f8             	mov    %eax,-0x8(%ebp)
  109852:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  109859:	eb 11                	jmp    10986c <memset+0x26>
  10985b:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10985e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  109861:	01 d0                	add    %edx,%eax
  109863:	8b 55 0c             	mov    0xc(%ebp),%edx
  109866:	88 10                	mov    %dl,(%eax)
  109868:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10986c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10986f:	3b 45 10             	cmp    0x10(%ebp),%eax
  109872:	72 e7                	jb     10985b <memset+0x15>
  109874:	8b 45 08             	mov    0x8(%ebp),%eax
  109877:	c9                   	leave  
  109878:	c3                   	ret    

00109879 <strlen>:
  109879:	55                   	push   %ebp
  10987a:	89 e5                	mov    %esp,%ebp
  10987c:	83 ec 10             	sub    $0x10,%esp
  10987f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  109886:	eb 04                	jmp    10988c <strlen+0x13>
  109888:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10988c:	8b 55 08             	mov    0x8(%ebp),%edx
  10988f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  109892:	01 d0                	add    %edx,%eax
  109894:	0f b6 00             	movzbl (%eax),%eax
  109897:	84 c0                	test   %al,%al
  109899:	75 ed                	jne    109888 <strlen+0xf>
  10989b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10989e:	c9                   	leave  
  10989f:	c3                   	ret    

001098a0 <__udivdi3>:
  1098a0:	55                   	push   %ebp
  1098a1:	89 e5                	mov    %esp,%ebp
  1098a3:	57                   	push   %edi
  1098a4:	56                   	push   %esi
  1098a5:	53                   	push   %ebx
  1098a6:	83 ec 1c             	sub    $0x1c,%esp
  1098a9:	8b 7d 08             	mov    0x8(%ebp),%edi
  1098ac:	8b 45 14             	mov    0x14(%ebp),%eax
  1098af:	8b 75 0c             	mov    0xc(%ebp),%esi
  1098b2:	8b 5d 10             	mov    0x10(%ebp),%ebx
  1098b5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  1098b8:	85 c0                	test   %eax,%eax
  1098ba:	75 24                	jne    1098e0 <__udivdi3+0x40>
  1098bc:	39 f3                	cmp    %esi,%ebx
  1098be:	76 60                	jbe    109920 <__udivdi3+0x80>
  1098c0:	89 f8                	mov    %edi,%eax
  1098c2:	31 ff                	xor    %edi,%edi
  1098c4:	89 f2                	mov    %esi,%edx
  1098c6:	f7 f3                	div    %ebx
  1098c8:	89 fa                	mov    %edi,%edx
  1098ca:	83 c4 1c             	add    $0x1c,%esp
  1098cd:	5b                   	pop    %ebx
  1098ce:	5e                   	pop    %esi
  1098cf:	5f                   	pop    %edi
  1098d0:	5d                   	pop    %ebp
  1098d1:	c3                   	ret    
  1098d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1098d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1098e0:	39 f0                	cmp    %esi,%eax
  1098e2:	76 1c                	jbe    109900 <__udivdi3+0x60>
  1098e4:	31 ff                	xor    %edi,%edi
  1098e6:	31 c0                	xor    %eax,%eax
  1098e8:	89 fa                	mov    %edi,%edx
  1098ea:	83 c4 1c             	add    $0x1c,%esp
  1098ed:	5b                   	pop    %ebx
  1098ee:	5e                   	pop    %esi
  1098ef:	5f                   	pop    %edi
  1098f0:	5d                   	pop    %ebp
  1098f1:	c3                   	ret    
  1098f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1098f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109900:	0f bd f8             	bsr    %eax,%edi
  109903:	83 f7 1f             	xor    $0x1f,%edi
  109906:	75 48                	jne    109950 <__udivdi3+0xb0>
  109908:	39 f0                	cmp    %esi,%eax
  10990a:	72 07                	jb     109913 <__udivdi3+0x73>
  10990c:	31 c0                	xor    %eax,%eax
  10990e:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  109911:	77 d5                	ja     1098e8 <__udivdi3+0x48>
  109913:	b8 01 00 00 00       	mov    $0x1,%eax
  109918:	eb ce                	jmp    1098e8 <__udivdi3+0x48>
  10991a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  109920:	89 d9                	mov    %ebx,%ecx
  109922:	85 db                	test   %ebx,%ebx
  109924:	75 0b                	jne    109931 <__udivdi3+0x91>
  109926:	b8 01 00 00 00       	mov    $0x1,%eax
  10992b:	31 d2                	xor    %edx,%edx
  10992d:	f7 f3                	div    %ebx
  10992f:	89 c1                	mov    %eax,%ecx
  109931:	31 d2                	xor    %edx,%edx
  109933:	89 f0                	mov    %esi,%eax
  109935:	f7 f1                	div    %ecx
  109937:	89 c6                	mov    %eax,%esi
  109939:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10993c:	89 f7                	mov    %esi,%edi
  10993e:	f7 f1                	div    %ecx
  109940:	89 fa                	mov    %edi,%edx
  109942:	83 c4 1c             	add    $0x1c,%esp
  109945:	5b                   	pop    %ebx
  109946:	5e                   	pop    %esi
  109947:	5f                   	pop    %edi
  109948:	5d                   	pop    %ebp
  109949:	c3                   	ret    
  10994a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  109950:	89 f9                	mov    %edi,%ecx
  109952:	ba 20 00 00 00       	mov    $0x20,%edx
  109957:	29 fa                	sub    %edi,%edx
  109959:	d3 e0                	shl    %cl,%eax
  10995b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10995e:	89 d1                	mov    %edx,%ecx
  109960:	89 d8                	mov    %ebx,%eax
  109962:	d3 e8                	shr    %cl,%eax
  109964:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  109967:	09 c1                	or     %eax,%ecx
  109969:	89 f0                	mov    %esi,%eax
  10996b:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  10996e:	89 f9                	mov    %edi,%ecx
  109970:	d3 e3                	shl    %cl,%ebx
  109972:	89 d1                	mov    %edx,%ecx
  109974:	d3 e8                	shr    %cl,%eax
  109976:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  109979:	89 f9                	mov    %edi,%ecx
  10997b:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  10997e:	d3 e6                	shl    %cl,%esi
  109980:	89 d1                	mov    %edx,%ecx
  109982:	d3 eb                	shr    %cl,%ebx
  109984:	09 f3                	or     %esi,%ebx
  109986:	89 c6                	mov    %eax,%esi
  109988:	89 f2                	mov    %esi,%edx
  10998a:	89 d8                	mov    %ebx,%eax
  10998c:	f7 75 e0             	divl   -0x20(%ebp)
  10998f:	89 d6                	mov    %edx,%esi
  109991:	89 c3                	mov    %eax,%ebx
  109993:	f7 65 dc             	mull   -0x24(%ebp)
  109996:	89 55 e0             	mov    %edx,-0x20(%ebp)
  109999:	39 d6                	cmp    %edx,%esi
  10999b:	72 23                	jb     1099c0 <__udivdi3+0x120>
  10999d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1099a0:	89 f9                	mov    %edi,%ecx
  1099a2:	d3 e2                	shl    %cl,%edx
  1099a4:	39 c2                	cmp    %eax,%edx
  1099a6:	73 05                	jae    1099ad <__udivdi3+0x10d>
  1099a8:	3b 75 e0             	cmp    -0x20(%ebp),%esi
  1099ab:	74 13                	je     1099c0 <__udivdi3+0x120>
  1099ad:	89 d8                	mov    %ebx,%eax
  1099af:	31 ff                	xor    %edi,%edi
  1099b1:	e9 32 ff ff ff       	jmp    1098e8 <__udivdi3+0x48>
  1099b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1099bd:	8d 76 00             	lea    0x0(%esi),%esi
  1099c0:	8d 43 ff             	lea    -0x1(%ebx),%eax
  1099c3:	31 ff                	xor    %edi,%edi
  1099c5:	e9 1e ff ff ff       	jmp    1098e8 <__udivdi3+0x48>
  1099ca:	66 90                	xchg   %ax,%ax
  1099cc:	66 90                	xchg   %ax,%ax
  1099ce:	66 90                	xchg   %ax,%ax

001099d0 <__umoddi3>:
  1099d0:	55                   	push   %ebp
  1099d1:	89 e5                	mov    %esp,%ebp
  1099d3:	57                   	push   %edi
  1099d4:	56                   	push   %esi
  1099d5:	53                   	push   %ebx
  1099d6:	83 ec 2c             	sub    $0x2c,%esp
  1099d9:	8b 75 08             	mov    0x8(%ebp),%esi
  1099dc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1099df:	8b 45 14             	mov    0x14(%ebp),%eax
  1099e2:	8b 7d 10             	mov    0x10(%ebp),%edi
  1099e5:	89 75 e4             	mov    %esi,-0x1c(%ebp)
  1099e8:	89 da                	mov    %ebx,%edx
  1099ea:	85 c0                	test   %eax,%eax
  1099ec:	75 22                	jne    109a10 <__umoddi3+0x40>
  1099ee:	39 df                	cmp    %ebx,%edi
  1099f0:	76 5e                	jbe    109a50 <__umoddi3+0x80>
  1099f2:	89 f0                	mov    %esi,%eax
  1099f4:	f7 f7                	div    %edi
  1099f6:	89 d0                	mov    %edx,%eax
  1099f8:	31 d2                	xor    %edx,%edx
  1099fa:	83 c4 2c             	add    $0x2c,%esp
  1099fd:	5b                   	pop    %ebx
  1099fe:	5e                   	pop    %esi
  1099ff:	5f                   	pop    %edi
  109a00:	5d                   	pop    %ebp
  109a01:	c3                   	ret    
  109a02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109a10:	39 d8                	cmp    %ebx,%eax
  109a12:	76 0c                	jbe    109a20 <__umoddi3+0x50>
  109a14:	89 f0                	mov    %esi,%eax
  109a16:	83 c4 2c             	add    $0x2c,%esp
  109a19:	5b                   	pop    %ebx
  109a1a:	5e                   	pop    %esi
  109a1b:	5f                   	pop    %edi
  109a1c:	5d                   	pop    %ebp
  109a1d:	c3                   	ret    
  109a1e:	66 90                	xchg   %ax,%ax
  109a20:	0f bd c8             	bsr    %eax,%ecx
  109a23:	83 f1 1f             	xor    $0x1f,%ecx
  109a26:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  109a29:	75 45                	jne    109a70 <__umoddi3+0xa0>
  109a2b:	39 d8                	cmp    %ebx,%eax
  109a2d:	0f 82 dd 00 00 00    	jb     109b10 <__umoddi3+0x140>
  109a33:	39 f7                	cmp    %esi,%edi
  109a35:	0f 86 d5 00 00 00    	jbe    109b10 <__umoddi3+0x140>
  109a3b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  109a3e:	83 c4 2c             	add    $0x2c,%esp
  109a41:	5b                   	pop    %ebx
  109a42:	5e                   	pop    %esi
  109a43:	5f                   	pop    %edi
  109a44:	5d                   	pop    %ebp
  109a45:	c3                   	ret    
  109a46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109a4d:	8d 76 00             	lea    0x0(%esi),%esi
  109a50:	89 f9                	mov    %edi,%ecx
  109a52:	85 ff                	test   %edi,%edi
  109a54:	75 0b                	jne    109a61 <__umoddi3+0x91>
  109a56:	b8 01 00 00 00       	mov    $0x1,%eax
  109a5b:	31 d2                	xor    %edx,%edx
  109a5d:	f7 f7                	div    %edi
  109a5f:	89 c1                	mov    %eax,%ecx
  109a61:	89 d8                	mov    %ebx,%eax
  109a63:	31 d2                	xor    %edx,%edx
  109a65:	f7 f1                	div    %ecx
  109a67:	89 f0                	mov    %esi,%eax
  109a69:	f7 f1                	div    %ecx
  109a6b:	eb 89                	jmp    1099f6 <__umoddi3+0x26>
  109a6d:	8d 76 00             	lea    0x0(%esi),%esi
  109a70:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  109a73:	ba 20 00 00 00       	mov    $0x20,%edx
  109a78:	29 ca                	sub    %ecx,%edx
  109a7a:	d3 e0                	shl    %cl,%eax
  109a7c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  109a7f:	89 d1                	mov    %edx,%ecx
  109a81:	89 f8                	mov    %edi,%eax
  109a83:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  109a86:	8b 55 dc             	mov    -0x24(%ebp),%edx
  109a89:	d3 e8                	shr    %cl,%eax
  109a8b:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  109a8f:	09 c2                	or     %eax,%edx
  109a91:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  109a94:	d3 e7                	shl    %cl,%edi
  109a96:	89 55 dc             	mov    %edx,-0x24(%ebp)
  109a99:	89 da                	mov    %ebx,%edx
  109a9b:	89 c1                	mov    %eax,%ecx
  109a9d:	89 7d d8             	mov    %edi,-0x28(%ebp)
  109aa0:	89 f7                	mov    %esi,%edi
  109aa2:	d3 ea                	shr    %cl,%edx
  109aa4:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  109aa8:	d3 e3                	shl    %cl,%ebx
  109aaa:	89 c1                	mov    %eax,%ecx
  109aac:	d3 ef                	shr    %cl,%edi
  109aae:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  109ab2:	89 f8                	mov    %edi,%eax
  109ab4:	d3 e6                	shl    %cl,%esi
  109ab6:	09 d8                	or     %ebx,%eax
  109ab8:	f7 75 dc             	divl   -0x24(%ebp)
  109abb:	89 d3                	mov    %edx,%ebx
  109abd:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  109ac0:	89 f7                	mov    %esi,%edi
  109ac2:	f7 65 d8             	mull   -0x28(%ebp)
  109ac5:	89 c6                	mov    %eax,%esi
  109ac7:	89 d1                	mov    %edx,%ecx
  109ac9:	39 d3                	cmp    %edx,%ebx
  109acb:	72 06                	jb     109ad3 <__umoddi3+0x103>
  109acd:	75 0e                	jne    109add <__umoddi3+0x10d>
  109acf:	39 c7                	cmp    %eax,%edi
  109ad1:	73 0a                	jae    109add <__umoddi3+0x10d>
  109ad3:	2b 45 d8             	sub    -0x28(%ebp),%eax
  109ad6:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  109ad9:	89 d1                	mov    %edx,%ecx
  109adb:	89 c6                	mov    %eax,%esi
  109add:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  109ae0:	8b 7d e0             	mov    -0x20(%ebp),%edi
  109ae3:	29 f0                	sub    %esi,%eax
  109ae5:	19 cb                	sbb    %ecx,%ebx
  109ae7:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  109aeb:	89 da                	mov    %ebx,%edx
  109aed:	d3 e2                	shl    %cl,%edx
  109aef:	89 f9                	mov    %edi,%ecx
  109af1:	d3 e8                	shr    %cl,%eax
  109af3:	d3 eb                	shr    %cl,%ebx
  109af5:	09 d0                	or     %edx,%eax
  109af7:	89 da                	mov    %ebx,%edx
  109af9:	83 c4 2c             	add    $0x2c,%esp
  109afc:	5b                   	pop    %ebx
  109afd:	5e                   	pop    %esi
  109afe:	5f                   	pop    %edi
  109aff:	5d                   	pop    %ebp
  109b00:	c3                   	ret    
  109b01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109b08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109b0f:	90                   	nop
  109b10:	89 f2                	mov    %esi,%edx
  109b12:	29 fa                	sub    %edi,%edx
  109b14:	19 c3                	sbb    %eax,%ebx
  109b16:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  109b19:	89 da                	mov    %ebx,%edx
  109b1b:	e9 1b ff ff ff       	jmp    109a3b <__umoddi3+0x6b>

00109b20 <__do_global_ctors_aux>:
  109b20:	a1 20 c4 10 00       	mov    0x10c420,%eax
  109b25:	83 f8 ff             	cmp    $0xffffffff,%eax
  109b28:	74 36                	je     109b60 <__do_global_ctors_aux+0x40>
  109b2a:	55                   	push   %ebp
  109b2b:	89 e5                	mov    %esp,%ebp
  109b2d:	53                   	push   %ebx
  109b2e:	bb 20 c4 10 00       	mov    $0x10c420,%ebx
  109b33:	83 ec 04             	sub    $0x4,%esp
  109b36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109b3d:	8d 76 00             	lea    0x0(%esi),%esi
  109b40:	ff d0                	call   *%eax
  109b42:	8b 43 fc             	mov    -0x4(%ebx),%eax
  109b45:	83 eb 04             	sub    $0x4,%ebx
  109b48:	83 f8 ff             	cmp    $0xffffffff,%eax
  109b4b:	75 f3                	jne    109b40 <__do_global_ctors_aux+0x20>
  109b4d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  109b50:	c9                   	leave  
  109b51:	c3                   	ret    
  109b52:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  109b60:	c3                   	ret    

Disassembly of section .init:

00109b61 <_init>:
  109b61:	55                   	push   %ebp
  109b62:	89 e5                	mov    %esp,%ebp
  109b64:	e8 b7 65 ff ff       	call   100120 <frame_dummy>
  109b69:	e8 b2 ff ff ff       	call   109b20 <__do_global_ctors_aux>
  109b6e:	5d                   	pop    %ebp
  109b6f:	c3                   	ret    

Disassembly of section .fini:

00109b70 <_fini>:
  109b70:	55                   	push   %ebp
  109b71:	89 e5                	mov    %esp,%ebp
  109b73:	e8 28 65 ff ff       	call   1000a0 <__do_global_dtors_aux>
  109b78:	5d                   	pop    %ebp
  109b79:	c3                   	ret    
