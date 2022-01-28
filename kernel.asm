
./build/kernel.bin:     file format elf32-i386

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00001730  c0001500  c0001500  00000500  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .rodata       00000718  c0002c30  c0002c30  00001c30  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .eh_frame     00000580  c0003348  c0003348  00002348  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .data         000001c4  c0005000  c0005000  00003000  2**5
                  CONTENTS, ALLOC, LOAD, DATA
  4 .bss          00000108  c00051e0  c00051e0  000031c4  2**5
                  ALLOC
  5 .comment      0000002c  00000000  00000000  000031c4  2**0
                  CONTENTS, READONLY

Disassembly of section .text:

c0001500 <main>:
c0001500:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c0001504:	83 e4 f0             	and    $0xfffffff0,%esp
c0001507:	ff 71 fc             	pushl  -0x4(%ecx)
c000150a:	55                   	push   %ebp
c000150b:	89 e5                	mov    %esp,%ebp
c000150d:	51                   	push   %ecx
c000150e:	83 ec 14             	sub    $0x14,%esp
c0001511:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001518:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c000151c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000151f:	0f b6 c0             	movzbl %al,%eax
c0001522:	83 ec 04             	sub    $0x4,%esp
c0001525:	68 30 2c 00 c0       	push   $0xc0002c30
c000152a:	68 36 2c 00 c0       	push   $0xc0002c36
c000152f:	50                   	push   %eax
c0001530:	e8 76 00 00 00       	call   c00015ab <printk>
c0001535:	83 c4 10             	add    $0x10,%esp
c0001538:	e8 c9 0c 00 00       	call   c0002206 <syswelcome>
c000153d:	e8 be 16 00 00       	call   c0002c00 <init_all>
c0001542:	fb                   	sti    
c0001543:	eb fe                	jmp    c0001543 <main+0x43>

c0001545 <putch>:
c0001545:	55                   	push   %ebp
c0001546:	89 e5                	mov    %esp,%ebp
c0001548:	83 ec 18             	sub    $0x18,%esp
c000154b:	8b 45 10             	mov    0x10(%ebp),%eax
c000154e:	88 45 f4             	mov    %al,-0xc(%ebp)
c0001551:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
c0001555:	8b 45 08             	mov    0x8(%ebp),%eax
c0001558:	0f b6 c0             	movzbl %al,%eax
c000155b:	83 ec 08             	sub    $0x8,%esp
c000155e:	52                   	push   %edx
c000155f:	50                   	push   %eax
c0001560:	e8 8b 0b 00 00       	call   c00020f0 <put_char>
c0001565:	83 c4 10             	add    $0x10,%esp
c0001568:	8b 45 0c             	mov    0xc(%ebp),%eax
c000156b:	83 c0 04             	add    $0x4,%eax
c000156e:	89 45 0c             	mov    %eax,0xc(%ebp)
c0001571:	90                   	nop
c0001572:	c9                   	leave  
c0001573:	c3                   	ret    

c0001574 <vcprintf>:
c0001574:	55                   	push   %ebp
c0001575:	89 e5                	mov    %esp,%ebp
c0001577:	83 ec 28             	sub    $0x28,%esp
c000157a:	8b 45 08             	mov    0x8(%ebp),%eax
c000157d:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0001580:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001587:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c000158b:	83 ec 0c             	sub    $0xc,%esp
c000158e:	ff 75 10             	pushl  0x10(%ebp)
c0001591:	ff 75 0c             	pushl  0xc(%ebp)
c0001594:	8d 55 f4             	lea    -0xc(%ebp),%edx
c0001597:	52                   	push   %edx
c0001598:	68 45 15 00 c0       	push   $0xc0001545
c000159d:	50                   	push   %eax
c000159e:	e8 b9 01 00 00       	call   c000175c <vprintfmt>
c00015a3:	83 c4 20             	add    $0x20,%esp
c00015a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015a9:	c9                   	leave  
c00015aa:	c3                   	ret    

c00015ab <printk>:
c00015ab:	55                   	push   %ebp
c00015ac:	89 e5                	mov    %esp,%ebp
c00015ae:	83 ec 28             	sub    $0x28,%esp
c00015b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00015b4:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00015b7:	8d 45 10             	lea    0x10(%ebp),%eax
c00015ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00015bd:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00015c0:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c00015c4:	83 ec 04             	sub    $0x4,%esp
c00015c7:	52                   	push   %edx
c00015c8:	ff 75 0c             	pushl  0xc(%ebp)
c00015cb:	50                   	push   %eax
c00015cc:	e8 a3 ff ff ff       	call   c0001574 <vcprintf>
c00015d1:	83 c4 10             	add    $0x10,%esp
c00015d4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00015d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015da:	c9                   	leave  
c00015db:	c3                   	ret    

c00015dc <printf>:
c00015dc:	55                   	push   %ebp
c00015dd:	89 e5                	mov    %esp,%ebp
c00015df:	83 ec 18             	sub    $0x18,%esp
c00015e2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00015e9:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c00015ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015f0:	88 45 f3             	mov    %al,-0xd(%ebp)
c00015f3:	8d 45 0c             	lea    0xc(%ebp),%eax
c00015f6:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00015f9:	8b 55 e8             	mov    -0x18(%ebp),%edx
c00015fc:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0001600:	83 ec 04             	sub    $0x4,%esp
c0001603:	52                   	push   %edx
c0001604:	ff 75 08             	pushl  0x8(%ebp)
c0001607:	50                   	push   %eax
c0001608:	e8 67 ff ff ff       	call   c0001574 <vcprintf>
c000160d:	83 c4 10             	add    $0x10,%esp
c0001610:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0001613:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001616:	c9                   	leave  
c0001617:	c3                   	ret    

c0001618 <test_printk>:
c0001618:	55                   	push   %ebp
c0001619:	89 e5                	mov    %esp,%ebp
c000161b:	83 ec 18             	sub    $0x18,%esp
c000161e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001625:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c0001629:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000162c:	0f b6 c0             	movzbl %al,%eax
c000162f:	83 ec 08             	sub    $0x8,%esp
c0001632:	68 51 2c 00 c0       	push   $0xc0002c51
c0001637:	50                   	push   %eax
c0001638:	e8 6e ff ff ff       	call   c00015ab <printk>
c000163d:	83 c4 10             	add    $0x10,%esp
c0001640:	90                   	nop
c0001641:	c9                   	leave  
c0001642:	c3                   	ret    

c0001643 <printnum>:
c0001643:	55                   	push   %ebp
c0001644:	89 e5                	mov    %esp,%ebp
c0001646:	83 ec 18             	sub    $0x18,%esp
c0001649:	8b 45 08             	mov    0x8(%ebp),%eax
c000164c:	88 45 f4             	mov    %al,-0xc(%ebp)
c000164f:	8b 45 14             	mov    0x14(%ebp),%eax
c0001652:	3b 45 18             	cmp    0x18(%ebp),%eax
c0001655:	72 49                	jb     c00016a0 <printnum+0x5d>
c0001657:	8b 45 1c             	mov    0x1c(%ebp),%eax
c000165a:	8d 48 ff             	lea    -0x1(%eax),%ecx
c000165d:	8b 45 14             	mov    0x14(%ebp),%eax
c0001660:	ba 00 00 00 00       	mov    $0x0,%edx
c0001665:	f7 75 18             	divl   0x18(%ebp)
c0001668:	89 c2                	mov    %eax,%edx
c000166a:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
c000166e:	83 ec 04             	sub    $0x4,%esp
c0001671:	ff 75 20             	pushl  0x20(%ebp)
c0001674:	51                   	push   %ecx
c0001675:	ff 75 18             	pushl  0x18(%ebp)
c0001678:	52                   	push   %edx
c0001679:	ff 75 10             	pushl  0x10(%ebp)
c000167c:	ff 75 0c             	pushl  0xc(%ebp)
c000167f:	50                   	push   %eax
c0001680:	e8 be ff ff ff       	call   c0001643 <printnum>
c0001685:	83 c4 20             	add    $0x20,%esp
c0001688:	eb 20                	jmp    c00016aa <printnum+0x67>
c000168a:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
c000168e:	83 ec 04             	sub    $0x4,%esp
c0001691:	50                   	push   %eax
c0001692:	ff 75 10             	pushl  0x10(%ebp)
c0001695:	ff 75 20             	pushl  0x20(%ebp)
c0001698:	8b 45 0c             	mov    0xc(%ebp),%eax
c000169b:	ff d0                	call   *%eax
c000169d:	83 c4 10             	add    $0x10,%esp
c00016a0:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
c00016a4:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
c00016a8:	7f e0                	jg     c000168a <printnum+0x47>
c00016aa:	0f b6 4d f4          	movzbl -0xc(%ebp),%ecx
c00016ae:	8b 45 14             	mov    0x14(%ebp),%eax
c00016b1:	ba 00 00 00 00       	mov    $0x0,%edx
c00016b6:	f7 75 18             	divl   0x18(%ebp)
c00016b9:	89 d0                	mov    %edx,%eax
c00016bb:	0f b6 80 e8 2c 00 c0 	movzbl -0x3fffd318(%eax),%eax
c00016c2:	0f be c0             	movsbl %al,%eax
c00016c5:	83 ec 04             	sub    $0x4,%esp
c00016c8:	51                   	push   %ecx
c00016c9:	ff 75 10             	pushl  0x10(%ebp)
c00016cc:	50                   	push   %eax
c00016cd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00016d0:	ff d0                	call   *%eax
c00016d2:	83 c4 10             	add    $0x10,%esp
c00016d5:	90                   	nop
c00016d6:	c9                   	leave  
c00016d7:	c3                   	ret    

c00016d8 <getuint>:
c00016d8:	55                   	push   %ebp
c00016d9:	89 e5                	mov    %esp,%ebp
c00016db:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c00016df:	7e 11                	jle    c00016f2 <getuint+0x1a>
c00016e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00016e4:	8b 00                	mov    (%eax),%eax
c00016e6:	8d 48 04             	lea    0x4(%eax),%ecx
c00016e9:	8b 55 08             	mov    0x8(%ebp),%edx
c00016ec:	89 0a                	mov    %ecx,(%edx)
c00016ee:	8b 00                	mov    (%eax),%eax
c00016f0:	eb 26                	jmp    c0001718 <getuint+0x40>
c00016f2:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00016f6:	74 11                	je     c0001709 <getuint+0x31>
c00016f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00016fb:	8b 00                	mov    (%eax),%eax
c00016fd:	8d 48 04             	lea    0x4(%eax),%ecx
c0001700:	8b 55 08             	mov    0x8(%ebp),%edx
c0001703:	89 0a                	mov    %ecx,(%edx)
c0001705:	8b 00                	mov    (%eax),%eax
c0001707:	eb 0f                	jmp    c0001718 <getuint+0x40>
c0001709:	8b 45 08             	mov    0x8(%ebp),%eax
c000170c:	8b 00                	mov    (%eax),%eax
c000170e:	8d 48 04             	lea    0x4(%eax),%ecx
c0001711:	8b 55 08             	mov    0x8(%ebp),%edx
c0001714:	89 0a                	mov    %ecx,(%edx)
c0001716:	8b 00                	mov    (%eax),%eax
c0001718:	5d                   	pop    %ebp
c0001719:	c3                   	ret    

c000171a <getint>:
c000171a:	55                   	push   %ebp
c000171b:	89 e5                	mov    %esp,%ebp
c000171d:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c0001721:	7e 11                	jle    c0001734 <getint+0x1a>
c0001723:	8b 45 08             	mov    0x8(%ebp),%eax
c0001726:	8b 00                	mov    (%eax),%eax
c0001728:	8d 48 04             	lea    0x4(%eax),%ecx
c000172b:	8b 55 08             	mov    0x8(%ebp),%edx
c000172e:	89 0a                	mov    %ecx,(%edx)
c0001730:	8b 00                	mov    (%eax),%eax
c0001732:	eb 26                	jmp    c000175a <getint+0x40>
c0001734:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0001738:	74 11                	je     c000174b <getint+0x31>
c000173a:	8b 45 08             	mov    0x8(%ebp),%eax
c000173d:	8b 00                	mov    (%eax),%eax
c000173f:	8d 48 04             	lea    0x4(%eax),%ecx
c0001742:	8b 55 08             	mov    0x8(%ebp),%edx
c0001745:	89 0a                	mov    %ecx,(%edx)
c0001747:	8b 00                	mov    (%eax),%eax
c0001749:	eb 0f                	jmp    c000175a <getint+0x40>
c000174b:	8b 45 08             	mov    0x8(%ebp),%eax
c000174e:	8b 00                	mov    (%eax),%eax
c0001750:	8d 48 04             	lea    0x4(%eax),%ecx
c0001753:	8b 55 08             	mov    0x8(%ebp),%edx
c0001756:	89 0a                	mov    %ecx,(%edx)
c0001758:	8b 00                	mov    (%eax),%eax
c000175a:	5d                   	pop    %ebp
c000175b:	c3                   	ret    

c000175c <vprintfmt>:
c000175c:	55                   	push   %ebp
c000175d:	89 e5                	mov    %esp,%ebp
c000175f:	56                   	push   %esi
c0001760:	53                   	push   %ebx
c0001761:	83 ec 30             	sub    $0x30,%esp
c0001764:	8b 45 08             	mov    0x8(%ebp),%eax
c0001767:	88 45 d4             	mov    %al,-0x2c(%ebp)
c000176a:	eb 1c                	jmp    c0001788 <vprintfmt+0x2c>
c000176c:	85 db                	test   %ebx,%ebx
c000176e:	0f 84 b1 03 00 00    	je     c0001b25 <vprintfmt+0x3c9>
c0001774:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001778:	83 ec 04             	sub    $0x4,%esp
c000177b:	50                   	push   %eax
c000177c:	ff 75 10             	pushl  0x10(%ebp)
c000177f:	53                   	push   %ebx
c0001780:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001783:	ff d0                	call   *%eax
c0001785:	83 c4 10             	add    $0x10,%esp
c0001788:	8b 45 14             	mov    0x14(%ebp),%eax
c000178b:	8d 50 01             	lea    0x1(%eax),%edx
c000178e:	89 55 14             	mov    %edx,0x14(%ebp)
c0001791:	0f b6 00             	movzbl (%eax),%eax
c0001794:	0f b6 d8             	movzbl %al,%ebx
c0001797:	83 fb 25             	cmp    $0x25,%ebx
c000179a:	75 d0                	jne    c000176c <vprintfmt+0x10>
c000179c:	c6 45 df 20          	movb   $0x20,-0x21(%ebp)
c00017a0:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
c00017a7:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
c00017ae:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00017b5:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c00017bc:	8b 45 14             	mov    0x14(%ebp),%eax
c00017bf:	8d 50 01             	lea    0x1(%eax),%edx
c00017c2:	89 55 14             	mov    %edx,0x14(%ebp)
c00017c5:	0f b6 00             	movzbl (%eax),%eax
c00017c8:	0f b6 d8             	movzbl %al,%ebx
c00017cb:	8d 43 dd             	lea    -0x23(%ebx),%eax
c00017ce:	83 f8 55             	cmp    $0x55,%eax
c00017d1:	0f 87 1c 03 00 00    	ja     c0001af3 <vprintfmt+0x397>
c00017d7:	8b 04 85 0c 2d 00 c0 	mov    -0x3fffd2f4(,%eax,4),%eax
c00017de:	ff e0                	jmp    *%eax
c00017e0:	c6 45 df 2d          	movb   $0x2d,-0x21(%ebp)
c00017e4:	eb d6                	jmp    c00017bc <vprintfmt+0x60>
c00017e6:	c6 45 df 30          	movb   $0x30,-0x21(%ebp)
c00017ea:	eb d0                	jmp    c00017bc <vprintfmt+0x60>
c00017ec:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
c00017f3:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00017f6:	89 d0                	mov    %edx,%eax
c00017f8:	c1 e0 02             	shl    $0x2,%eax
c00017fb:	01 d0                	add    %edx,%eax
c00017fd:	01 c0                	add    %eax,%eax
c00017ff:	01 d8                	add    %ebx,%eax
c0001801:	83 e8 30             	sub    $0x30,%eax
c0001804:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001807:	8b 45 14             	mov    0x14(%ebp),%eax
c000180a:	0f b6 00             	movzbl (%eax),%eax
c000180d:	0f be d8             	movsbl %al,%ebx
c0001810:	83 fb 2f             	cmp    $0x2f,%ebx
c0001813:	7e 39                	jle    c000184e <vprintfmt+0xf2>
c0001815:	83 fb 39             	cmp    $0x39,%ebx
c0001818:	7f 34                	jg     c000184e <vprintfmt+0xf2>
c000181a:	83 45 14 01          	addl   $0x1,0x14(%ebp)
c000181e:	eb d3                	jmp    c00017f3 <vprintfmt+0x97>
c0001820:	8b 45 18             	mov    0x18(%ebp),%eax
c0001823:	8d 50 04             	lea    0x4(%eax),%edx
c0001826:	89 55 18             	mov    %edx,0x18(%ebp)
c0001829:	8b 00                	mov    (%eax),%eax
c000182b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c000182e:	eb 1f                	jmp    c000184f <vprintfmt+0xf3>
c0001830:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0001834:	79 86                	jns    c00017bc <vprintfmt+0x60>
c0001836:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c000183d:	e9 7a ff ff ff       	jmp    c00017bc <vprintfmt+0x60>
c0001842:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0001849:	e9 6e ff ff ff       	jmp    c00017bc <vprintfmt+0x60>
c000184e:	90                   	nop
c000184f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0001853:	0f 89 63 ff ff ff    	jns    c00017bc <vprintfmt+0x60>
c0001859:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c000185c:	89 45 e8             	mov    %eax,-0x18(%ebp)
c000185f:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
c0001866:	e9 51 ff ff ff       	jmp    c00017bc <vprintfmt+0x60>
c000186b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c000186f:	e9 48 ff ff ff       	jmp    c00017bc <vprintfmt+0x60>
c0001874:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
c0001878:	8b 45 18             	mov    0x18(%ebp),%eax
c000187b:	8d 48 04             	lea    0x4(%eax),%ecx
c000187e:	89 4d 18             	mov    %ecx,0x18(%ebp)
c0001881:	8b 00                	mov    (%eax),%eax
c0001883:	83 ec 04             	sub    $0x4,%esp
c0001886:	52                   	push   %edx
c0001887:	ff 75 10             	pushl  0x10(%ebp)
c000188a:	50                   	push   %eax
c000188b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000188e:	ff d0                	call   *%eax
c0001890:	83 c4 10             	add    $0x10,%esp
c0001893:	e9 88 02 00 00       	jmp    c0001b20 <vprintfmt+0x3c4>
c0001898:	8b 45 18             	mov    0x18(%ebp),%eax
c000189b:	8d 50 04             	lea    0x4(%eax),%edx
c000189e:	89 55 18             	mov    %edx,0x18(%ebp)
c00018a1:	8b 18                	mov    (%eax),%ebx
c00018a3:	85 db                	test   %ebx,%ebx
c00018a5:	79 02                	jns    c00018a9 <vprintfmt+0x14d>
c00018a7:	f7 db                	neg    %ebx
c00018a9:	83 fb 06             	cmp    $0x6,%ebx
c00018ac:	7f 0b                	jg     c00018b9 <vprintfmt+0x15d>
c00018ae:	8b 34 9d cc 2c 00 c0 	mov    -0x3fffd334(,%ebx,4),%esi
c00018b5:	85 f6                	test   %esi,%esi
c00018b7:	75 21                	jne    c00018da <vprintfmt+0x17e>
c00018b9:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c00018bd:	83 ec 0c             	sub    $0xc,%esp
c00018c0:	53                   	push   %ebx
c00018c1:	68 f9 2c 00 c0       	push   $0xc0002cf9
c00018c6:	ff 75 10             	pushl  0x10(%ebp)
c00018c9:	ff 75 0c             	pushl  0xc(%ebp)
c00018cc:	50                   	push   %eax
c00018cd:	e8 5b 02 00 00       	call   c0001b2d <printfmt>
c00018d2:	83 c4 20             	add    $0x20,%esp
c00018d5:	e9 46 02 00 00       	jmp    c0001b20 <vprintfmt+0x3c4>
c00018da:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c00018de:	83 ec 0c             	sub    $0xc,%esp
c00018e1:	56                   	push   %esi
c00018e2:	68 02 2d 00 c0       	push   $0xc0002d02
c00018e7:	ff 75 10             	pushl  0x10(%ebp)
c00018ea:	ff 75 0c             	pushl  0xc(%ebp)
c00018ed:	50                   	push   %eax
c00018ee:	e8 3a 02 00 00       	call   c0001b2d <printfmt>
c00018f3:	83 c4 20             	add    $0x20,%esp
c00018f6:	e9 25 02 00 00       	jmp    c0001b20 <vprintfmt+0x3c4>
c00018fb:	8b 45 18             	mov    0x18(%ebp),%eax
c00018fe:	8d 50 04             	lea    0x4(%eax),%edx
c0001901:	89 55 18             	mov    %edx,0x18(%ebp)
c0001904:	8b 30                	mov    (%eax),%esi
c0001906:	85 f6                	test   %esi,%esi
c0001908:	75 05                	jne    c000190f <vprintfmt+0x1b3>
c000190a:	be 05 2d 00 c0       	mov    $0xc0002d05,%esi
c000190f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0001913:	7e 7e                	jle    c0001993 <vprintfmt+0x237>
c0001915:	80 7d df 2d          	cmpb   $0x2d,-0x21(%ebp)
c0001919:	74 78                	je     c0001993 <vprintfmt+0x237>
c000191b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c000191e:	83 ec 08             	sub    $0x8,%esp
c0001921:	50                   	push   %eax
c0001922:	56                   	push   %esi
c0001923:	e8 5d 02 00 00       	call   c0001b85 <strnlen>
c0001928:	83 c4 10             	add    $0x10,%esp
c000192b:	29 45 e8             	sub    %eax,-0x18(%ebp)
c000192e:	eb 1c                	jmp    c000194c <vprintfmt+0x1f0>
c0001930:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
c0001934:	0f be 45 df          	movsbl -0x21(%ebp),%eax
c0001938:	83 ec 04             	sub    $0x4,%esp
c000193b:	52                   	push   %edx
c000193c:	ff 75 10             	pushl  0x10(%ebp)
c000193f:	50                   	push   %eax
c0001940:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001943:	ff d0                	call   *%eax
c0001945:	83 c4 10             	add    $0x10,%esp
c0001948:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
c000194c:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0001950:	7f de                	jg     c0001930 <vprintfmt+0x1d4>
c0001952:	eb 3f                	jmp    c0001993 <vprintfmt+0x237>
c0001954:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
c0001958:	74 21                	je     c000197b <vprintfmt+0x21f>
c000195a:	83 fb 1f             	cmp    $0x1f,%ebx
c000195d:	7e 05                	jle    c0001964 <vprintfmt+0x208>
c000195f:	83 fb 7e             	cmp    $0x7e,%ebx
c0001962:	7e 17                	jle    c000197b <vprintfmt+0x21f>
c0001964:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001968:	83 ec 04             	sub    $0x4,%esp
c000196b:	50                   	push   %eax
c000196c:	ff 75 10             	pushl  0x10(%ebp)
c000196f:	6a 3f                	push   $0x3f
c0001971:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001974:	ff d0                	call   *%eax
c0001976:	83 c4 10             	add    $0x10,%esp
c0001979:	eb 14                	jmp    c000198f <vprintfmt+0x233>
c000197b:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c000197f:	83 ec 04             	sub    $0x4,%esp
c0001982:	50                   	push   %eax
c0001983:	ff 75 10             	pushl  0x10(%ebp)
c0001986:	53                   	push   %ebx
c0001987:	8b 45 0c             	mov    0xc(%ebp),%eax
c000198a:	ff d0                	call   *%eax
c000198c:	83 c4 10             	add    $0x10,%esp
c000198f:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
c0001993:	89 f0                	mov    %esi,%eax
c0001995:	8d 70 01             	lea    0x1(%eax),%esi
c0001998:	0f b6 00             	movzbl (%eax),%eax
c000199b:	0f be d8             	movsbl %al,%ebx
c000199e:	85 db                	test   %ebx,%ebx
c00019a0:	74 2b                	je     c00019cd <vprintfmt+0x271>
c00019a2:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
c00019a6:	78 ac                	js     c0001954 <vprintfmt+0x1f8>
c00019a8:	83 6d e4 01          	subl   $0x1,-0x1c(%ebp)
c00019ac:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
c00019b0:	79 a2                	jns    c0001954 <vprintfmt+0x1f8>
c00019b2:	eb 19                	jmp    c00019cd <vprintfmt+0x271>
c00019b4:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c00019b8:	83 ec 04             	sub    $0x4,%esp
c00019bb:	50                   	push   %eax
c00019bc:	ff 75 10             	pushl  0x10(%ebp)
c00019bf:	6a 20                	push   $0x20
c00019c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00019c4:	ff d0                	call   *%eax
c00019c6:	83 c4 10             	add    $0x10,%esp
c00019c9:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
c00019cd:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c00019d1:	7f e1                	jg     c00019b4 <vprintfmt+0x258>
c00019d3:	e9 48 01 00 00       	jmp    c0001b20 <vprintfmt+0x3c4>
c00019d8:	83 ec 08             	sub    $0x8,%esp
c00019db:	ff 75 ec             	pushl  -0x14(%ebp)
c00019de:	8d 45 18             	lea    0x18(%ebp),%eax
c00019e1:	50                   	push   %eax
c00019e2:	e8 33 fd ff ff       	call   c000171a <getint>
c00019e7:	83 c4 10             	add    $0x10,%esp
c00019ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00019ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00019f0:	85 c0                	test   %eax,%eax
c00019f2:	79 1d                	jns    c0001a11 <vprintfmt+0x2b5>
c00019f4:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c00019f8:	83 ec 04             	sub    $0x4,%esp
c00019fb:	50                   	push   %eax
c00019fc:	ff 75 10             	pushl  0x10(%ebp)
c00019ff:	6a 2d                	push   $0x2d
c0001a01:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001a04:	ff d0                	call   *%eax
c0001a06:	83 c4 10             	add    $0x10,%esp
c0001a09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001a0c:	f7 d8                	neg    %eax
c0001a0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001a11:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
c0001a18:	e9 99 00 00 00       	jmp    c0001ab6 <vprintfmt+0x35a>
c0001a1d:	83 ec 08             	sub    $0x8,%esp
c0001a20:	ff 75 ec             	pushl  -0x14(%ebp)
c0001a23:	8d 45 18             	lea    0x18(%ebp),%eax
c0001a26:	50                   	push   %eax
c0001a27:	e8 ac fc ff ff       	call   c00016d8 <getuint>
c0001a2c:	83 c4 10             	add    $0x10,%esp
c0001a2f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001a32:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
c0001a39:	eb 7b                	jmp    c0001ab6 <vprintfmt+0x35a>
c0001a3b:	83 ec 08             	sub    $0x8,%esp
c0001a3e:	ff 75 ec             	pushl  -0x14(%ebp)
c0001a41:	8d 45 18             	lea    0x18(%ebp),%eax
c0001a44:	50                   	push   %eax
c0001a45:	e8 8e fc ff ff       	call   c00016d8 <getuint>
c0001a4a:	83 c4 10             	add    $0x10,%esp
c0001a4d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001a50:	c7 45 f0 08 00 00 00 	movl   $0x8,-0x10(%ebp)
c0001a57:	eb 5d                	jmp    c0001ab6 <vprintfmt+0x35a>
c0001a59:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001a5d:	83 ec 04             	sub    $0x4,%esp
c0001a60:	50                   	push   %eax
c0001a61:	ff 75 10             	pushl  0x10(%ebp)
c0001a64:	6a 30                	push   $0x30
c0001a66:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001a69:	ff d0                	call   *%eax
c0001a6b:	83 c4 10             	add    $0x10,%esp
c0001a6e:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001a72:	83 ec 04             	sub    $0x4,%esp
c0001a75:	50                   	push   %eax
c0001a76:	ff 75 10             	pushl  0x10(%ebp)
c0001a79:	6a 78                	push   $0x78
c0001a7b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001a7e:	ff d0                	call   *%eax
c0001a80:	83 c4 10             	add    $0x10,%esp
c0001a83:	8b 45 18             	mov    0x18(%ebp),%eax
c0001a86:	8d 50 04             	lea    0x4(%eax),%edx
c0001a89:	89 55 18             	mov    %edx,0x18(%ebp)
c0001a8c:	8b 00                	mov    (%eax),%eax
c0001a8e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001a91:	c7 45 f0 10 00 00 00 	movl   $0x10,-0x10(%ebp)
c0001a98:	eb 1c                	jmp    c0001ab6 <vprintfmt+0x35a>
c0001a9a:	83 ec 08             	sub    $0x8,%esp
c0001a9d:	ff 75 ec             	pushl  -0x14(%ebp)
c0001aa0:	8d 45 18             	lea    0x18(%ebp),%eax
c0001aa3:	50                   	push   %eax
c0001aa4:	e8 2f fc ff ff       	call   c00016d8 <getuint>
c0001aa9:	83 c4 10             	add    $0x10,%esp
c0001aac:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001aaf:	c7 45 f0 10 00 00 00 	movl   $0x10,-0x10(%ebp)
c0001ab6:	0f be 4d df          	movsbl -0x21(%ebp),%ecx
c0001aba:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001abd:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001ac1:	83 ec 04             	sub    $0x4,%esp
c0001ac4:	51                   	push   %ecx
c0001ac5:	ff 75 e8             	pushl  -0x18(%ebp)
c0001ac8:	52                   	push   %edx
c0001ac9:	ff 75 f4             	pushl  -0xc(%ebp)
c0001acc:	ff 75 10             	pushl  0x10(%ebp)
c0001acf:	ff 75 0c             	pushl  0xc(%ebp)
c0001ad2:	50                   	push   %eax
c0001ad3:	e8 6b fb ff ff       	call   c0001643 <printnum>
c0001ad8:	83 c4 20             	add    $0x20,%esp
c0001adb:	eb 43                	jmp    c0001b20 <vprintfmt+0x3c4>
c0001add:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001ae1:	83 ec 04             	sub    $0x4,%esp
c0001ae4:	50                   	push   %eax
c0001ae5:	ff 75 10             	pushl  0x10(%ebp)
c0001ae8:	53                   	push   %ebx
c0001ae9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001aec:	ff d0                	call   *%eax
c0001aee:	83 c4 10             	add    $0x10,%esp
c0001af1:	eb 2d                	jmp    c0001b20 <vprintfmt+0x3c4>
c0001af3:	0f b6 45 d4          	movzbl -0x2c(%ebp),%eax
c0001af7:	83 ec 04             	sub    $0x4,%esp
c0001afa:	50                   	push   %eax
c0001afb:	ff 75 10             	pushl  0x10(%ebp)
c0001afe:	6a 25                	push   $0x25
c0001b00:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001b03:	ff d0                	call   *%eax
c0001b05:	83 c4 10             	add    $0x10,%esp
c0001b08:	83 6d 14 01          	subl   $0x1,0x14(%ebp)
c0001b0c:	eb 04                	jmp    c0001b12 <vprintfmt+0x3b6>
c0001b0e:	83 6d 14 01          	subl   $0x1,0x14(%ebp)
c0001b12:	8b 45 14             	mov    0x14(%ebp),%eax
c0001b15:	83 e8 01             	sub    $0x1,%eax
c0001b18:	0f b6 00             	movzbl (%eax),%eax
c0001b1b:	3c 25                	cmp    $0x25,%al
c0001b1d:	75 ef                	jne    c0001b0e <vprintfmt+0x3b2>
c0001b1f:	90                   	nop
c0001b20:	e9 63 fc ff ff       	jmp    c0001788 <vprintfmt+0x2c>
c0001b25:	90                   	nop
c0001b26:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0001b29:	5b                   	pop    %ebx
c0001b2a:	5e                   	pop    %esi
c0001b2b:	5d                   	pop    %ebp
c0001b2c:	c3                   	ret    

c0001b2d <printfmt>:
c0001b2d:	55                   	push   %ebp
c0001b2e:	89 e5                	mov    %esp,%ebp
c0001b30:	83 ec 28             	sub    $0x28,%esp
c0001b33:	8b 45 08             	mov    0x8(%ebp),%eax
c0001b36:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0001b39:	8d 45 18             	lea    0x18(%ebp),%eax
c0001b3c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001b3f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0001b42:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0001b46:	83 ec 0c             	sub    $0xc,%esp
c0001b49:	52                   	push   %edx
c0001b4a:	ff 75 14             	pushl  0x14(%ebp)
c0001b4d:	ff 75 10             	pushl  0x10(%ebp)
c0001b50:	ff 75 0c             	pushl  0xc(%ebp)
c0001b53:	50                   	push   %eax
c0001b54:	e8 03 fc ff ff       	call   c000175c <vprintfmt>
c0001b59:	83 c4 20             	add    $0x20,%esp
c0001b5c:	90                   	nop
c0001b5d:	c9                   	leave  
c0001b5e:	c3                   	ret    

c0001b5f <strlen>:
c0001b5f:	55                   	push   %ebp
c0001b60:	89 e5                	mov    %esp,%ebp
c0001b62:	83 ec 10             	sub    $0x10,%esp
c0001b65:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001b6c:	eb 08                	jmp    c0001b76 <strlen+0x17>
c0001b6e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001b72:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001b76:	8b 45 08             	mov    0x8(%ebp),%eax
c0001b79:	0f b6 00             	movzbl (%eax),%eax
c0001b7c:	84 c0                	test   %al,%al
c0001b7e:	75 ee                	jne    c0001b6e <strlen+0xf>
c0001b80:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001b83:	c9                   	leave  
c0001b84:	c3                   	ret    

c0001b85 <strnlen>:
c0001b85:	55                   	push   %ebp
c0001b86:	89 e5                	mov    %esp,%ebp
c0001b88:	83 ec 10             	sub    $0x10,%esp
c0001b8b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001b92:	eb 0c                	jmp    c0001ba0 <strnlen+0x1b>
c0001b94:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001b98:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001b9c:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
c0001ba0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0001ba4:	74 0a                	je     c0001bb0 <strnlen+0x2b>
c0001ba6:	8b 45 08             	mov    0x8(%ebp),%eax
c0001ba9:	0f b6 00             	movzbl (%eax),%eax
c0001bac:	84 c0                	test   %al,%al
c0001bae:	75 e4                	jne    c0001b94 <strnlen+0xf>
c0001bb0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001bb3:	c9                   	leave  
c0001bb4:	c3                   	ret    

c0001bb5 <strcpy>:
c0001bb5:	55                   	push   %ebp
c0001bb6:	89 e5                	mov    %esp,%ebp
c0001bb8:	83 ec 10             	sub    $0x10,%esp
c0001bbb:	8b 45 08             	mov    0x8(%ebp),%eax
c0001bbe:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001bc1:	90                   	nop
c0001bc2:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001bc5:	8d 42 01             	lea    0x1(%edx),%eax
c0001bc8:	89 45 0c             	mov    %eax,0xc(%ebp)
c0001bcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0001bce:	8d 48 01             	lea    0x1(%eax),%ecx
c0001bd1:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0001bd4:	0f b6 12             	movzbl (%edx),%edx
c0001bd7:	88 10                	mov    %dl,(%eax)
c0001bd9:	0f b6 00             	movzbl (%eax),%eax
c0001bdc:	84 c0                	test   %al,%al
c0001bde:	75 e2                	jne    c0001bc2 <strcpy+0xd>
c0001be0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001be3:	c9                   	leave  
c0001be4:	c3                   	ret    

c0001be5 <strcat>:
c0001be5:	55                   	push   %ebp
c0001be6:	89 e5                	mov    %esp,%ebp
c0001be8:	83 ec 10             	sub    $0x10,%esp
c0001beb:	ff 75 08             	pushl  0x8(%ebp)
c0001bee:	e8 6c ff ff ff       	call   c0001b5f <strlen>
c0001bf3:	83 c4 04             	add    $0x4,%esp
c0001bf6:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001bf9:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0001bfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0001bff:	01 d0                	add    %edx,%eax
c0001c01:	ff 75 0c             	pushl  0xc(%ebp)
c0001c04:	50                   	push   %eax
c0001c05:	e8 ab ff ff ff       	call   c0001bb5 <strcpy>
c0001c0a:	83 c4 08             	add    $0x8,%esp
c0001c0d:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c10:	c9                   	leave  
c0001c11:	c3                   	ret    

c0001c12 <strncpy>:
c0001c12:	55                   	push   %ebp
c0001c13:	89 e5                	mov    %esp,%ebp
c0001c15:	83 ec 10             	sub    $0x10,%esp
c0001c18:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c1b:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0001c1e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001c25:	eb 23                	jmp    c0001c4a <strncpy+0x38>
c0001c27:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c2a:	8d 50 01             	lea    0x1(%eax),%edx
c0001c2d:	89 55 08             	mov    %edx,0x8(%ebp)
c0001c30:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001c33:	0f b6 12             	movzbl (%edx),%edx
c0001c36:	88 10                	mov    %dl,(%eax)
c0001c38:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001c3b:	0f b6 00             	movzbl (%eax),%eax
c0001c3e:	84 c0                	test   %al,%al
c0001c40:	74 04                	je     c0001c46 <strncpy+0x34>
c0001c42:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0001c46:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001c4a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001c4d:	3b 45 10             	cmp    0x10(%ebp),%eax
c0001c50:	72 d5                	jb     c0001c27 <strncpy+0x15>
c0001c52:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0001c55:	c9                   	leave  
c0001c56:	c3                   	ret    

c0001c57 <strlcpy>:
c0001c57:	55                   	push   %ebp
c0001c58:	89 e5                	mov    %esp,%ebp
c0001c5a:	83 ec 10             	sub    $0x10,%esp
c0001c5d:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c60:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001c63:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001c67:	74 33                	je     c0001c9c <strlcpy+0x45>
c0001c69:	eb 17                	jmp    c0001c82 <strlcpy+0x2b>
c0001c6b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001c6e:	8d 42 01             	lea    0x1(%edx),%eax
c0001c71:	89 45 0c             	mov    %eax,0xc(%ebp)
c0001c74:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c77:	8d 48 01             	lea    0x1(%eax),%ecx
c0001c7a:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0001c7d:	0f b6 12             	movzbl (%edx),%edx
c0001c80:	88 10                	mov    %dl,(%eax)
c0001c82:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
c0001c86:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001c8a:	74 0a                	je     c0001c96 <strlcpy+0x3f>
c0001c8c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001c8f:	0f b6 00             	movzbl (%eax),%eax
c0001c92:	84 c0                	test   %al,%al
c0001c94:	75 d5                	jne    c0001c6b <strlcpy+0x14>
c0001c96:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c99:	c6 00 00             	movb   $0x0,(%eax)
c0001c9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c9f:	2b 45 fc             	sub    -0x4(%ebp),%eax
c0001ca2:	c9                   	leave  
c0001ca3:	c3                   	ret    

c0001ca4 <strcmp>:
c0001ca4:	55                   	push   %ebp
c0001ca5:	89 e5                	mov    %esp,%ebp
c0001ca7:	eb 08                	jmp    c0001cb1 <strcmp+0xd>
c0001ca9:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001cad:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0001cb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0001cb4:	0f b6 00             	movzbl (%eax),%eax
c0001cb7:	84 c0                	test   %al,%al
c0001cb9:	74 10                	je     c0001ccb <strcmp+0x27>
c0001cbb:	8b 45 08             	mov    0x8(%ebp),%eax
c0001cbe:	0f b6 10             	movzbl (%eax),%edx
c0001cc1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001cc4:	0f b6 00             	movzbl (%eax),%eax
c0001cc7:	38 c2                	cmp    %al,%dl
c0001cc9:	74 de                	je     c0001ca9 <strcmp+0x5>
c0001ccb:	8b 45 08             	mov    0x8(%ebp),%eax
c0001cce:	0f b6 00             	movzbl (%eax),%eax
c0001cd1:	0f b6 d0             	movzbl %al,%edx
c0001cd4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001cd7:	0f b6 00             	movzbl (%eax),%eax
c0001cda:	0f b6 c0             	movzbl %al,%eax
c0001cdd:	29 c2                	sub    %eax,%edx
c0001cdf:	89 d0                	mov    %edx,%eax
c0001ce1:	5d                   	pop    %ebp
c0001ce2:	c3                   	ret    

c0001ce3 <strncmp>:
c0001ce3:	55                   	push   %ebp
c0001ce4:	89 e5                	mov    %esp,%ebp
c0001ce6:	eb 0c                	jmp    c0001cf4 <strncmp+0x11>
c0001ce8:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
c0001cec:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001cf0:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0001cf4:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001cf8:	74 1a                	je     c0001d14 <strncmp+0x31>
c0001cfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0001cfd:	0f b6 00             	movzbl (%eax),%eax
c0001d00:	84 c0                	test   %al,%al
c0001d02:	74 10                	je     c0001d14 <strncmp+0x31>
c0001d04:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d07:	0f b6 10             	movzbl (%eax),%edx
c0001d0a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001d0d:	0f b6 00             	movzbl (%eax),%eax
c0001d10:	38 c2                	cmp    %al,%dl
c0001d12:	74 d4                	je     c0001ce8 <strncmp+0x5>
c0001d14:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001d18:	75 07                	jne    c0001d21 <strncmp+0x3e>
c0001d1a:	b8 00 00 00 00       	mov    $0x0,%eax
c0001d1f:	eb 16                	jmp    c0001d37 <strncmp+0x54>
c0001d21:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d24:	0f b6 00             	movzbl (%eax),%eax
c0001d27:	0f b6 d0             	movzbl %al,%edx
c0001d2a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001d2d:	0f b6 00             	movzbl (%eax),%eax
c0001d30:	0f b6 c0             	movzbl %al,%eax
c0001d33:	29 c2                	sub    %eax,%edx
c0001d35:	89 d0                	mov    %edx,%eax
c0001d37:	5d                   	pop    %ebp
c0001d38:	c3                   	ret    

c0001d39 <strchr>:
c0001d39:	55                   	push   %ebp
c0001d3a:	89 e5                	mov    %esp,%ebp
c0001d3c:	83 ec 04             	sub    $0x4,%esp
c0001d3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001d42:	88 45 fc             	mov    %al,-0x4(%ebp)
c0001d45:	eb 14                	jmp    c0001d5b <strchr+0x22>
c0001d47:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d4a:	0f b6 00             	movzbl (%eax),%eax
c0001d4d:	38 45 fc             	cmp    %al,-0x4(%ebp)
c0001d50:	75 05                	jne    c0001d57 <strchr+0x1e>
c0001d52:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d55:	eb 13                	jmp    c0001d6a <strchr+0x31>
c0001d57:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001d5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d5e:	0f b6 00             	movzbl (%eax),%eax
c0001d61:	84 c0                	test   %al,%al
c0001d63:	75 e2                	jne    c0001d47 <strchr+0xe>
c0001d65:	b8 00 00 00 00       	mov    $0x0,%eax
c0001d6a:	c9                   	leave  
c0001d6b:	c3                   	ret    

c0001d6c <strfind>:
c0001d6c:	55                   	push   %ebp
c0001d6d:	89 e5                	mov    %esp,%ebp
c0001d6f:	83 ec 04             	sub    $0x4,%esp
c0001d72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001d75:	88 45 fc             	mov    %al,-0x4(%ebp)
c0001d78:	eb 0f                	jmp    c0001d89 <strfind+0x1d>
c0001d7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d7d:	0f b6 00             	movzbl (%eax),%eax
c0001d80:	38 45 fc             	cmp    %al,-0x4(%ebp)
c0001d83:	74 10                	je     c0001d95 <strfind+0x29>
c0001d85:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001d89:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d8c:	0f b6 00             	movzbl (%eax),%eax
c0001d8f:	84 c0                	test   %al,%al
c0001d91:	75 e7                	jne    c0001d7a <strfind+0xe>
c0001d93:	eb 01                	jmp    c0001d96 <strfind+0x2a>
c0001d95:	90                   	nop
c0001d96:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d99:	c9                   	leave  
c0001d9a:	c3                   	ret    

c0001d9b <memset>:
c0001d9b:	55                   	push   %ebp
c0001d9c:	89 e5                	mov    %esp,%ebp
c0001d9e:	57                   	push   %edi
c0001d9f:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001da3:	75 05                	jne    c0001daa <memset+0xf>
c0001da5:	8b 45 08             	mov    0x8(%ebp),%eax
c0001da8:	eb 5c                	jmp    c0001e06 <memset+0x6b>
c0001daa:	8b 45 08             	mov    0x8(%ebp),%eax
c0001dad:	83 e0 03             	and    $0x3,%eax
c0001db0:	85 c0                	test   %eax,%eax
c0001db2:	75 41                	jne    c0001df5 <memset+0x5a>
c0001db4:	8b 45 10             	mov    0x10(%ebp),%eax
c0001db7:	83 e0 03             	and    $0x3,%eax
c0001dba:	85 c0                	test   %eax,%eax
c0001dbc:	75 37                	jne    c0001df5 <memset+0x5a>
c0001dbe:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
c0001dc5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001dc8:	c1 e0 18             	shl    $0x18,%eax
c0001dcb:	89 c2                	mov    %eax,%edx
c0001dcd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001dd0:	c1 e0 10             	shl    $0x10,%eax
c0001dd3:	09 c2                	or     %eax,%edx
c0001dd5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001dd8:	c1 e0 08             	shl    $0x8,%eax
c0001ddb:	09 d0                	or     %edx,%eax
c0001ddd:	09 45 0c             	or     %eax,0xc(%ebp)
c0001de0:	8b 45 10             	mov    0x10(%ebp),%eax
c0001de3:	c1 e8 02             	shr    $0x2,%eax
c0001de6:	89 c1                	mov    %eax,%ecx
c0001de8:	8b 55 08             	mov    0x8(%ebp),%edx
c0001deb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001dee:	89 d7                	mov    %edx,%edi
c0001df0:	fc                   	cld    
c0001df1:	f3 ab                	rep stos %eax,%es:(%edi)
c0001df3:	eb 0e                	jmp    c0001e03 <memset+0x68>
c0001df5:	8b 55 08             	mov    0x8(%ebp),%edx
c0001df8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001dfb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0001dfe:	89 d7                	mov    %edx,%edi
c0001e00:	fc                   	cld    
c0001e01:	f3 aa                	rep stos %al,%es:(%edi)
c0001e03:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e06:	5f                   	pop    %edi
c0001e07:	5d                   	pop    %ebp
c0001e08:	c3                   	ret    

c0001e09 <memmove>:
c0001e09:	55                   	push   %ebp
c0001e0a:	89 e5                	mov    %esp,%ebp
c0001e0c:	57                   	push   %edi
c0001e0d:	56                   	push   %esi
c0001e0e:	53                   	push   %ebx
c0001e0f:	83 ec 10             	sub    $0x10,%esp
c0001e12:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001e15:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0001e18:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e1b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0001e1e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001e21:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0001e24:	73 6d                	jae    c0001e93 <memmove+0x8a>
c0001e26:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001e29:	8b 45 10             	mov    0x10(%ebp),%eax
c0001e2c:	01 d0                	add    %edx,%eax
c0001e2e:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c0001e31:	73 60                	jae    c0001e93 <memmove+0x8a>
c0001e33:	8b 45 10             	mov    0x10(%ebp),%eax
c0001e36:	01 45 f0             	add    %eax,-0x10(%ebp)
c0001e39:	8b 45 10             	mov    0x10(%ebp),%eax
c0001e3c:	01 45 ec             	add    %eax,-0x14(%ebp)
c0001e3f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001e42:	83 e0 03             	and    $0x3,%eax
c0001e45:	85 c0                	test   %eax,%eax
c0001e47:	75 2f                	jne    c0001e78 <memmove+0x6f>
c0001e49:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001e4c:	83 e0 03             	and    $0x3,%eax
c0001e4f:	85 c0                	test   %eax,%eax
c0001e51:	75 25                	jne    c0001e78 <memmove+0x6f>
c0001e53:	8b 45 10             	mov    0x10(%ebp),%eax
c0001e56:	83 e0 03             	and    $0x3,%eax
c0001e59:	85 c0                	test   %eax,%eax
c0001e5b:	75 1b                	jne    c0001e78 <memmove+0x6f>
c0001e5d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001e60:	83 e8 04             	sub    $0x4,%eax
c0001e63:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001e66:	83 ea 04             	sub    $0x4,%edx
c0001e69:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0001e6c:	c1 e9 02             	shr    $0x2,%ecx
c0001e6f:	89 c7                	mov    %eax,%edi
c0001e71:	89 d6                	mov    %edx,%esi
c0001e73:	fd                   	std    
c0001e74:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0001e76:	eb 18                	jmp    c0001e90 <memmove+0x87>
c0001e78:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001e7b:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001e7e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001e81:	8d 58 ff             	lea    -0x1(%eax),%ebx
c0001e84:	8b 45 10             	mov    0x10(%ebp),%eax
c0001e87:	89 d7                	mov    %edx,%edi
c0001e89:	89 de                	mov    %ebx,%esi
c0001e8b:	89 c1                	mov    %eax,%ecx
c0001e8d:	fd                   	std    
c0001e8e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0001e90:	fc                   	cld    
c0001e91:	eb 45                	jmp    c0001ed8 <memmove+0xcf>
c0001e93:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001e96:	83 e0 03             	and    $0x3,%eax
c0001e99:	85 c0                	test   %eax,%eax
c0001e9b:	75 2b                	jne    c0001ec8 <memmove+0xbf>
c0001e9d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001ea0:	83 e0 03             	and    $0x3,%eax
c0001ea3:	85 c0                	test   %eax,%eax
c0001ea5:	75 21                	jne    c0001ec8 <memmove+0xbf>
c0001ea7:	8b 45 10             	mov    0x10(%ebp),%eax
c0001eaa:	83 e0 03             	and    $0x3,%eax
c0001ead:	85 c0                	test   %eax,%eax
c0001eaf:	75 17                	jne    c0001ec8 <memmove+0xbf>
c0001eb1:	8b 45 10             	mov    0x10(%ebp),%eax
c0001eb4:	c1 e8 02             	shr    $0x2,%eax
c0001eb7:	89 c1                	mov    %eax,%ecx
c0001eb9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001ebc:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001ebf:	89 c7                	mov    %eax,%edi
c0001ec1:	89 d6                	mov    %edx,%esi
c0001ec3:	fc                   	cld    
c0001ec4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0001ec6:	eb 10                	jmp    c0001ed8 <memmove+0xcf>
c0001ec8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001ecb:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001ece:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0001ed1:	89 c7                	mov    %eax,%edi
c0001ed3:	89 d6                	mov    %edx,%esi
c0001ed5:	fc                   	cld    
c0001ed6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0001ed8:	8b 45 08             	mov    0x8(%ebp),%eax
c0001edb:	83 c4 10             	add    $0x10,%esp
c0001ede:	5b                   	pop    %ebx
c0001edf:	5e                   	pop    %esi
c0001ee0:	5f                   	pop    %edi
c0001ee1:	5d                   	pop    %ebp
c0001ee2:	c3                   	ret    

c0001ee3 <memcpy>:
c0001ee3:	55                   	push   %ebp
c0001ee4:	89 e5                	mov    %esp,%ebp
c0001ee6:	ff 75 10             	pushl  0x10(%ebp)
c0001ee9:	ff 75 0c             	pushl  0xc(%ebp)
c0001eec:	ff 75 08             	pushl  0x8(%ebp)
c0001eef:	e8 15 ff ff ff       	call   c0001e09 <memmove>
c0001ef4:	83 c4 0c             	add    $0xc,%esp
c0001ef7:	c9                   	leave  
c0001ef8:	c3                   	ret    

c0001ef9 <memcmp>:
c0001ef9:	55                   	push   %ebp
c0001efa:	89 e5                	mov    %esp,%ebp
c0001efc:	83 ec 10             	sub    $0x10,%esp
c0001eff:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f02:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001f05:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001f08:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0001f0b:	eb 30                	jmp    c0001f3d <memcmp+0x44>
c0001f0d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001f10:	0f b6 10             	movzbl (%eax),%edx
c0001f13:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0001f16:	0f b6 00             	movzbl (%eax),%eax
c0001f19:	38 c2                	cmp    %al,%dl
c0001f1b:	74 18                	je     c0001f35 <memcmp+0x3c>
c0001f1d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001f20:	0f b6 00             	movzbl (%eax),%eax
c0001f23:	0f b6 d0             	movzbl %al,%edx
c0001f26:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0001f29:	0f b6 00             	movzbl (%eax),%eax
c0001f2c:	0f b6 c0             	movzbl %al,%eax
c0001f2f:	29 c2                	sub    %eax,%edx
c0001f31:	89 d0                	mov    %edx,%eax
c0001f33:	eb 1a                	jmp    c0001f4f <memcmp+0x56>
c0001f35:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001f39:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0001f3d:	8b 45 10             	mov    0x10(%ebp),%eax
c0001f40:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001f43:	89 55 10             	mov    %edx,0x10(%ebp)
c0001f46:	85 c0                	test   %eax,%eax
c0001f48:	75 c3                	jne    c0001f0d <memcmp+0x14>
c0001f4a:	b8 00 00 00 00       	mov    $0x0,%eax
c0001f4f:	c9                   	leave  
c0001f50:	c3                   	ret    

c0001f51 <memfind>:
c0001f51:	55                   	push   %ebp
c0001f52:	89 e5                	mov    %esp,%ebp
c0001f54:	83 ec 10             	sub    $0x10,%esp
c0001f57:	8b 55 08             	mov    0x8(%ebp),%edx
c0001f5a:	8b 45 10             	mov    0x10(%ebp),%eax
c0001f5d:	01 d0                	add    %edx,%eax
c0001f5f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001f62:	eb 11                	jmp    c0001f75 <memfind+0x24>
c0001f64:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f67:	0f b6 00             	movzbl (%eax),%eax
c0001f6a:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001f6d:	38 d0                	cmp    %dl,%al
c0001f6f:	74 0e                	je     c0001f7f <memfind+0x2e>
c0001f71:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001f75:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f78:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c0001f7b:	72 e7                	jb     c0001f64 <memfind+0x13>
c0001f7d:	eb 01                	jmp    c0001f80 <memfind+0x2f>
c0001f7f:	90                   	nop
c0001f80:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f83:	c9                   	leave  
c0001f84:	c3                   	ret    

c0001f85 <strtol>:
c0001f85:	55                   	push   %ebp
c0001f86:	89 e5                	mov    %esp,%ebp
c0001f88:	83 ec 10             	sub    $0x10,%esp
c0001f8b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001f92:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0001f99:	eb 04                	jmp    c0001f9f <strtol+0x1a>
c0001f9b:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001f9f:	8b 45 08             	mov    0x8(%ebp),%eax
c0001fa2:	0f b6 00             	movzbl (%eax),%eax
c0001fa5:	3c 20                	cmp    $0x20,%al
c0001fa7:	74 f2                	je     c0001f9b <strtol+0x16>
c0001fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0001fac:	0f b6 00             	movzbl (%eax),%eax
c0001faf:	3c 09                	cmp    $0x9,%al
c0001fb1:	74 e8                	je     c0001f9b <strtol+0x16>
c0001fb3:	8b 45 08             	mov    0x8(%ebp),%eax
c0001fb6:	0f b6 00             	movzbl (%eax),%eax
c0001fb9:	3c 2b                	cmp    $0x2b,%al
c0001fbb:	75 06                	jne    c0001fc3 <strtol+0x3e>
c0001fbd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001fc1:	eb 15                	jmp    c0001fd8 <strtol+0x53>
c0001fc3:	8b 45 08             	mov    0x8(%ebp),%eax
c0001fc6:	0f b6 00             	movzbl (%eax),%eax
c0001fc9:	3c 2d                	cmp    $0x2d,%al
c0001fcb:	75 0b                	jne    c0001fd8 <strtol+0x53>
c0001fcd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001fd1:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c0001fd8:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001fdc:	74 06                	je     c0001fe4 <strtol+0x5f>
c0001fde:	83 7d 10 10          	cmpl   $0x10,0x10(%ebp)
c0001fe2:	75 24                	jne    c0002008 <strtol+0x83>
c0001fe4:	8b 45 08             	mov    0x8(%ebp),%eax
c0001fe7:	0f b6 00             	movzbl (%eax),%eax
c0001fea:	3c 30                	cmp    $0x30,%al
c0001fec:	75 1a                	jne    c0002008 <strtol+0x83>
c0001fee:	8b 45 08             	mov    0x8(%ebp),%eax
c0001ff1:	83 c0 01             	add    $0x1,%eax
c0001ff4:	0f b6 00             	movzbl (%eax),%eax
c0001ff7:	3c 78                	cmp    $0x78,%al
c0001ff9:	75 0d                	jne    c0002008 <strtol+0x83>
c0001ffb:	83 45 08 02          	addl   $0x2,0x8(%ebp)
c0001fff:	c7 45 10 10 00 00 00 	movl   $0x10,0x10(%ebp)
c0002006:	eb 2a                	jmp    c0002032 <strtol+0xad>
c0002008:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c000200c:	75 17                	jne    c0002025 <strtol+0xa0>
c000200e:	8b 45 08             	mov    0x8(%ebp),%eax
c0002011:	0f b6 00             	movzbl (%eax),%eax
c0002014:	3c 30                	cmp    $0x30,%al
c0002016:	75 0d                	jne    c0002025 <strtol+0xa0>
c0002018:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c000201c:	c7 45 10 08 00 00 00 	movl   $0x8,0x10(%ebp)
c0002023:	eb 0d                	jmp    c0002032 <strtol+0xad>
c0002025:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0002029:	75 07                	jne    c0002032 <strtol+0xad>
c000202b:	c7 45 10 0a 00 00 00 	movl   $0xa,0x10(%ebp)
c0002032:	8b 45 08             	mov    0x8(%ebp),%eax
c0002035:	0f b6 00             	movzbl (%eax),%eax
c0002038:	3c 2f                	cmp    $0x2f,%al
c000203a:	7e 1b                	jle    c0002057 <strtol+0xd2>
c000203c:	8b 45 08             	mov    0x8(%ebp),%eax
c000203f:	0f b6 00             	movzbl (%eax),%eax
c0002042:	3c 39                	cmp    $0x39,%al
c0002044:	7f 11                	jg     c0002057 <strtol+0xd2>
c0002046:	8b 45 08             	mov    0x8(%ebp),%eax
c0002049:	0f b6 00             	movzbl (%eax),%eax
c000204c:	0f be c0             	movsbl %al,%eax
c000204f:	83 e8 30             	sub    $0x30,%eax
c0002052:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002055:	eb 48                	jmp    c000209f <strtol+0x11a>
c0002057:	8b 45 08             	mov    0x8(%ebp),%eax
c000205a:	0f b6 00             	movzbl (%eax),%eax
c000205d:	3c 60                	cmp    $0x60,%al
c000205f:	7e 1b                	jle    c000207c <strtol+0xf7>
c0002061:	8b 45 08             	mov    0x8(%ebp),%eax
c0002064:	0f b6 00             	movzbl (%eax),%eax
c0002067:	3c 7a                	cmp    $0x7a,%al
c0002069:	7f 11                	jg     c000207c <strtol+0xf7>
c000206b:	8b 45 08             	mov    0x8(%ebp),%eax
c000206e:	0f b6 00             	movzbl (%eax),%eax
c0002071:	0f be c0             	movsbl %al,%eax
c0002074:	83 e8 57             	sub    $0x57,%eax
c0002077:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000207a:	eb 23                	jmp    c000209f <strtol+0x11a>
c000207c:	8b 45 08             	mov    0x8(%ebp),%eax
c000207f:	0f b6 00             	movzbl (%eax),%eax
c0002082:	3c 40                	cmp    $0x40,%al
c0002084:	7e 3c                	jle    c00020c2 <strtol+0x13d>
c0002086:	8b 45 08             	mov    0x8(%ebp),%eax
c0002089:	0f b6 00             	movzbl (%eax),%eax
c000208c:	3c 5a                	cmp    $0x5a,%al
c000208e:	7f 32                	jg     c00020c2 <strtol+0x13d>
c0002090:	8b 45 08             	mov    0x8(%ebp),%eax
c0002093:	0f b6 00             	movzbl (%eax),%eax
c0002096:	0f be c0             	movsbl %al,%eax
c0002099:	83 e8 37             	sub    $0x37,%eax
c000209c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000209f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00020a2:	3b 45 10             	cmp    0x10(%ebp),%eax
c00020a5:	7d 1a                	jge    c00020c1 <strtol+0x13c>
c00020a7:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c00020ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00020ae:	0f af 45 10          	imul   0x10(%ebp),%eax
c00020b2:	89 c2                	mov    %eax,%edx
c00020b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00020b7:	01 d0                	add    %edx,%eax
c00020b9:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00020bc:	e9 71 ff ff ff       	jmp    c0002032 <strtol+0xad>
c00020c1:	90                   	nop
c00020c2:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00020c6:	74 08                	je     c00020d0 <strtol+0x14b>
c00020c8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00020cb:	8b 55 08             	mov    0x8(%ebp),%edx
c00020ce:	89 10                	mov    %edx,(%eax)
c00020d0:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c00020d4:	74 07                	je     c00020dd <strtol+0x158>
c00020d6:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00020d9:	f7 d8                	neg    %eax
c00020db:	eb 03                	jmp    c00020e0 <strtol+0x15b>
c00020dd:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00020e0:	c9                   	leave  
c00020e1:	c3                   	ret    
c00020e2:	66 90                	xchg   %ax,%ax
c00020e4:	66 90                	xchg   %ax,%ax
c00020e6:	66 90                	xchg   %ax,%ax
c00020e8:	66 90                	xchg   %ax,%ax
c00020ea:	66 90                	xchg   %ax,%ax
c00020ec:	66 90                	xchg   %ax,%ax
c00020ee:	66 90                	xchg   %ax,%ax

c00020f0 <put_char>:
c00020f0:	60                   	pusha  
c00020f1:	66 b8 18 00          	mov    $0x18,%ax
c00020f5:	8e e8                	mov    %eax,%gs
c00020f7:	66 ba d4 03          	mov    $0x3d4,%dx
c00020fb:	b0 0e                	mov    $0xe,%al
c00020fd:	ee                   	out    %al,(%dx)
c00020fe:	66 ba d5 03          	mov    $0x3d5,%dx
c0002102:	ec                   	in     (%dx),%al
c0002103:	88 c4                	mov    %al,%ah
c0002105:	66 ba d4 03          	mov    $0x3d4,%dx
c0002109:	b0 0f                	mov    $0xf,%al
c000210b:	ee                   	out    %al,(%dx)
c000210c:	66 ba d5 03          	mov    $0x3d5,%dx
c0002110:	ec                   	in     (%dx),%al
c0002111:	66 89 c3             	mov    %ax,%bx
c0002114:	8b 4c 24 24          	mov    0x24(%esp),%ecx
c0002118:	8b 54 24 28          	mov    0x28(%esp),%edx
c000211c:	89 15 00 50 00 c0    	mov    %edx,0xc0005000
c0002122:	80 f9 0d             	cmp    $0xd,%cl
c0002125:	74 41                	je     c0002168 <put_char.is_carriage_return>
c0002127:	80 f9 0a             	cmp    $0xa,%cl
c000212a:	74 3c                	je     c0002168 <put_char.is_carriage_return>
c000212c:	80 f9 08             	cmp    $0x8,%cl
c000212f:	74 02                	je     c0002133 <put_char.is_backspace>
c0002131:	eb 16                	jmp    c0002149 <put_char.put_other>

c0002133 <put_char.is_backspace>:
c0002133:	66 4b                	dec    %bx
c0002135:	66 d1 e3             	shl    %bx
c0002138:	65 67 c6 07 20       	movb   $0x20,%gs:(%bx)
c000213d:	66 43                	inc    %bx
c000213f:	65 67 c6 07 07       	movb   $0x7,%gs:(%bx)
c0002144:	66 d1 eb             	shr    %bx
c0002147:	eb 65                	jmp    c00021ae <put_char.set_cursor>

c0002149 <put_char.put_other>:
c0002149:	66 d1 e3             	shl    %bx
c000214c:	65 67 88 0f          	mov    %cl,%gs:(%bx)
c0002150:	66 43                	inc    %bx
c0002152:	8b 15 00 50 00 c0    	mov    0xc0005000,%edx
c0002158:	65 67 88 17          	mov    %dl,%gs:(%bx)
c000215c:	66 d1 eb             	shr    %bx
c000215f:	66 43                	inc    %bx
c0002161:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c0002166:	7c 46                	jl     c00021ae <put_char.set_cursor>

c0002168 <put_char.is_carriage_return>:
c0002168:	66 31 d2             	xor    %dx,%dx
c000216b:	66 89 d8             	mov    %bx,%ax
c000216e:	66 be 50 00          	mov    $0x50,%si
c0002172:	66 f7 f6             	div    %si
c0002175:	66 29 d3             	sub    %dx,%bx

c0002178 <put_char.is_carriage_return_end>:
c0002178:	66 83 c3 50          	add    $0x50,%bx
c000217c:	66 81 fb d0 07       	cmp    $0x7d0,%bx

c0002181 <put_char.is_line_feed_end>:
c0002181:	7c 2b                	jl     c00021ae <put_char.set_cursor>

c0002183 <put_char.roll_screen>:
c0002183:	fc                   	cld    
c0002184:	b9 c0 03 00 00       	mov    $0x3c0,%ecx
c0002189:	be a0 80 0b 00       	mov    $0xb80a0,%esi
c000218e:	bf 00 80 0b 00       	mov    $0xb8000,%edi
c0002193:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0002195:	bb 00 0f 00 00       	mov    $0xf00,%ebx
c000219a:	b9 50 00 00 00       	mov    $0x50,%ecx

c000219f <put_char.cls>:
c000219f:	65 66 c7 03 20 07    	movw   $0x720,%gs:(%ebx)
c00021a5:	83 c3 02             	add    $0x2,%ebx
c00021a8:	e2 f5                	loop   c000219f <put_char.cls>
c00021aa:	66 bb 80 07          	mov    $0x780,%bx

c00021ae <put_char.set_cursor>:
c00021ae:	66 ba d4 03          	mov    $0x3d4,%dx
c00021b2:	b0 0e                	mov    $0xe,%al
c00021b4:	ee                   	out    %al,(%dx)
c00021b5:	66 ba d5 03          	mov    $0x3d5,%dx
c00021b9:	88 f8                	mov    %bh,%al
c00021bb:	ee                   	out    %al,(%dx)
c00021bc:	66 ba d4 03          	mov    $0x3d4,%dx
c00021c0:	b0 0f                	mov    $0xf,%al
c00021c2:	ee                   	out    %al,(%dx)
c00021c3:	66 ba d5 03          	mov    $0x3d5,%dx
c00021c7:	88 d8                	mov    %bl,%al
c00021c9:	ee                   	out    %al,(%dx)

c00021ca <put_char.put_char_done>:
c00021ca:	61                   	popa   
c00021cb:	c7 05 00 50 00 c0 00 	movl   $0x0,0xc0005000
c00021d2:	00 00 00 
c00021d5:	c3                   	ret    

c00021d6 <read_eflags>:
c00021d6:	55                   	push   %ebp
c00021d7:	89 e5                	mov    %esp,%ebp
c00021d9:	83 ec 10             	sub    $0x10,%esp
c00021dc:	9c                   	pushf  
c00021dd:	58                   	pop    %eax
c00021de:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00021e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00021e4:	c9                   	leave  
c00021e5:	c3                   	ret    

c00021e6 <read_ebp>:
c00021e6:	55                   	push   %ebp
c00021e7:	89 e5                	mov    %esp,%ebp
c00021e9:	83 ec 10             	sub    $0x10,%esp
c00021ec:	89 e8                	mov    %ebp,%eax
c00021ee:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00021f1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00021f4:	c9                   	leave  
c00021f5:	c3                   	ret    

c00021f6 <read_esp>:
c00021f6:	55                   	push   %ebp
c00021f7:	89 e5                	mov    %esp,%ebp
c00021f9:	83 ec 10             	sub    $0x10,%esp
c00021fc:	89 e0                	mov    %esp,%eax
c00021fe:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0002201:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0002204:	c9                   	leave  
c0002205:	c3                   	ret    

c0002206 <syswelcome>:
c0002206:	55                   	push   %ebp
c0002207:	89 e5                	mov    %esp,%ebp
c0002209:	83 ec 18             	sub    $0x18,%esp
c000220c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002213:	83 4d f4 70          	orl    $0x70,-0xc(%ebp)
c0002217:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000221a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000221d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0002224:	83 4d ec 07          	orl    $0x7,-0x14(%ebp)
c0002228:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000222b:	0f b6 c0             	movzbl %al,%eax
c000222e:	83 ec 08             	sub    $0x8,%esp
c0002231:	68 64 2e 00 c0       	push   $0xc0002e64
c0002236:	50                   	push   %eax
c0002237:	e8 6f f3 ff ff       	call   c00015ab <printk>
c000223c:	83 c4 10             	add    $0x10,%esp
c000223f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002242:	0f b6 c0             	movzbl %al,%eax
c0002245:	83 ec 08             	sub    $0x8,%esp
c0002248:	68 98 2e 00 c0       	push   $0xc0002e98
c000224d:	50                   	push   %eax
c000224e:	e8 58 f3 ff ff       	call   c00015ab <printk>
c0002253:	83 c4 10             	add    $0x10,%esp
c0002256:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002259:	0f b6 c0             	movzbl %al,%eax
c000225c:	83 ec 08             	sub    $0x8,%esp
c000225f:	68 d0 2e 00 c0       	push   $0xc0002ed0
c0002264:	50                   	push   %eax
c0002265:	e8 41 f3 ff ff       	call   c00015ab <printk>
c000226a:	83 c4 10             	add    $0x10,%esp
c000226d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002270:	0f b6 c0             	movzbl %al,%eax
c0002273:	83 ec 08             	sub    $0x8,%esp
c0002276:	68 08 2f 00 c0       	push   $0xc0002f08
c000227b:	50                   	push   %eax
c000227c:	e8 2a f3 ff ff       	call   c00015ab <printk>
c0002281:	83 c4 10             	add    $0x10,%esp
c0002284:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002287:	0f b6 c0             	movzbl %al,%eax
c000228a:	83 ec 08             	sub    $0x8,%esp
c000228d:	68 40 2f 00 c0       	push   $0xc0002f40
c0002292:	50                   	push   %eax
c0002293:	e8 13 f3 ff ff       	call   c00015ab <printk>
c0002298:	83 c4 10             	add    $0x10,%esp
c000229b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000229e:	0f b6 c0             	movzbl %al,%eax
c00022a1:	83 ec 08             	sub    $0x8,%esp
c00022a4:	68 78 2f 00 c0       	push   $0xc0002f78
c00022a9:	50                   	push   %eax
c00022aa:	e8 fc f2 ff ff       	call   c00015ab <printk>
c00022af:	83 c4 10             	add    $0x10,%esp
c00022b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00022b5:	0f b6 c0             	movzbl %al,%eax
c00022b8:	83 ec 08             	sub    $0x8,%esp
c00022bb:	68 b0 2f 00 c0       	push   $0xc0002fb0
c00022c0:	50                   	push   %eax
c00022c1:	e8 e5 f2 ff ff       	call   c00015ab <printk>
c00022c6:	83 c4 10             	add    $0x10,%esp
c00022c9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00022cc:	0f b6 c0             	movzbl %al,%eax
c00022cf:	83 ec 08             	sub    $0x8,%esp
c00022d2:	68 e8 2f 00 c0       	push   $0xc0002fe8
c00022d7:	50                   	push   %eax
c00022d8:	e8 ce f2 ff ff       	call   c00015ab <printk>
c00022dd:	83 c4 10             	add    $0x10,%esp
c00022e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00022e3:	0f b6 c0             	movzbl %al,%eax
c00022e6:	83 ec 08             	sub    $0x8,%esp
c00022e9:	68 20 30 00 c0       	push   $0xc0003020
c00022ee:	50                   	push   %eax
c00022ef:	e8 b7 f2 ff ff       	call   c00015ab <printk>
c00022f4:	83 c4 10             	add    $0x10,%esp
c00022f7:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00022fe:	83 4d e8 07          	orl    $0x7,-0x18(%ebp)
c0002302:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002305:	0f b6 c0             	movzbl %al,%eax
c0002308:	83 ec 08             	sub    $0x8,%esp
c000230b:	68 58 30 00 c0       	push   $0xc0003058
c0002310:	50                   	push   %eax
c0002311:	e8 95 f2 ff ff       	call   c00015ab <printk>
c0002316:	83 c4 10             	add    $0x10,%esp
c0002319:	90                   	nop
c000231a:	c9                   	leave  
c000231b:	c3                   	ret    

c000231c <cpuid>:
c000231c:	55                   	push   %ebp
c000231d:	89 e5                	mov    %esp,%ebp
c000231f:	53                   	push   %ebx
c0002320:	83 ec 10             	sub    $0x10,%esp
c0002323:	8b 45 08             	mov    0x8(%ebp),%eax
c0002326:	0f a2                	cpuid  
c0002328:	89 45 f8             	mov    %eax,-0x8(%ebp)
c000232b:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c000232e:	89 4d f0             	mov    %ecx,-0x10(%ebp)
c0002331:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0002334:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002338:	74 08                	je     c0002342 <cpuid+0x26>
c000233a:	8b 45 0c             	mov    0xc(%ebp),%eax
c000233d:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0002340:	89 10                	mov    %edx,(%eax)
c0002342:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0002346:	74 08                	je     c0002350 <cpuid+0x34>
c0002348:	8b 45 10             	mov    0x10(%ebp),%eax
c000234b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c000234e:	89 10                	mov    %edx,(%eax)
c0002350:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
c0002354:	74 08                	je     c000235e <cpuid+0x42>
c0002356:	8b 45 14             	mov    0x14(%ebp),%eax
c0002359:	8b 55 f0             	mov    -0x10(%ebp),%edx
c000235c:	89 10                	mov    %edx,(%eax)
c000235e:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
c0002362:	74 08                	je     c000236c <cpuid+0x50>
c0002364:	8b 45 18             	mov    0x18(%ebp),%eax
c0002367:	8b 55 ec             	mov    -0x14(%ebp),%edx
c000236a:	89 10                	mov    %edx,(%eax)
c000236c:	90                   	nop
c000236d:	83 c4 10             	add    $0x10,%esp
c0002370:	5b                   	pop    %ebx
c0002371:	5d                   	pop    %ebp
c0002372:	c3                   	ret    

c0002373 <cpuinfo>:
c0002373:	55                   	push   %ebp
c0002374:	89 e5                	mov    %esp,%ebp
c0002376:	83 ec 38             	sub    $0x38,%esp
c0002379:	83 ec 04             	sub    $0x4,%esp
c000237c:	6a 14                	push   $0x14
c000237e:	6a 00                	push   $0x0
c0002380:	8d 45 d0             	lea    -0x30(%ebp),%eax
c0002383:	50                   	push   %eax
c0002384:	e8 12 fa ff ff       	call   c0001d9b <memset>
c0002389:	83 c4 10             	add    $0x10,%esp
c000238c:	83 ec 0c             	sub    $0xc,%esp
c000238f:	8d 45 d0             	lea    -0x30(%ebp),%eax
c0002392:	83 c0 0c             	add    $0xc,%eax
c0002395:	50                   	push   %eax
c0002396:	8d 45 d0             	lea    -0x30(%ebp),%eax
c0002399:	83 c0 08             	add    $0x8,%eax
c000239c:	50                   	push   %eax
c000239d:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00023a0:	83 c0 04             	add    $0x4,%eax
c00023a3:	50                   	push   %eax
c00023a4:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00023a7:	50                   	push   %eax
c00023a8:	6a 00                	push   $0x0
c00023aa:	e8 6d ff ff ff       	call   c000231c <cpuid>
c00023af:	83 c4 20             	add    $0x20,%esp
c00023b2:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00023b5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00023b8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00023bf:	eb 39                	jmp    c00023fa <cpuinfo+0x87>
c00023c1:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00023c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00023c7:	01 d0                	add    %edx,%eax
c00023c9:	0f b6 00             	movzbl (%eax),%eax
c00023cc:	88 45 ef             	mov    %al,-0x11(%ebp)
c00023cf:	0f be 55 ef          	movsbl -0x11(%ebp),%edx
c00023d3:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00023da:	83 4d e8 07          	orl    $0x7,-0x18(%ebp)
c00023de:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00023e1:	0f b6 c0             	movzbl %al,%eax
c00023e4:	83 ec 04             	sub    $0x4,%esp
c00023e7:	52                   	push   %edx
c00023e8:	68 8c 30 00 c0       	push   $0xc000308c
c00023ed:	50                   	push   %eax
c00023ee:	e8 b8 f1 ff ff       	call   c00015ab <printk>
c00023f3:	83 c4 10             	add    $0x10,%esp
c00023f6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00023fa:	83 7d f4 0b          	cmpl   $0xb,-0xc(%ebp)
c00023fe:	7e c1                	jle    c00023c1 <cpuinfo+0x4e>
c0002400:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
c0002407:	83 4d e4 07          	orl    $0x7,-0x1c(%ebp)
c000240b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c000240e:	0f b6 c0             	movzbl %al,%eax
c0002411:	83 ec 08             	sub    $0x8,%esp
c0002414:	68 8f 30 00 c0       	push   $0xc000308f
c0002419:	50                   	push   %eax
c000241a:	e8 8c f1 ff ff       	call   c00015ab <printk>
c000241f:	83 c4 10             	add    $0x10,%esp
c0002422:	90                   	nop
c0002423:	c9                   	leave  
c0002424:	c3                   	ret    

c0002425 <reginfo>:
c0002425:	55                   	push   %ebp
c0002426:	89 e5                	mov    %esp,%ebp
c0002428:	83 ec 18             	sub    $0x18,%esp
c000242b:	e8 a6 fd ff ff       	call   c00021d6 <read_eflags>
c0002430:	89 c2                	mov    %eax,%edx
c0002432:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002439:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c000243d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002440:	0f b6 c0             	movzbl %al,%eax
c0002443:	83 ec 04             	sub    $0x4,%esp
c0002446:	52                   	push   %edx
c0002447:	68 91 30 00 c0       	push   $0xc0003091
c000244c:	50                   	push   %eax
c000244d:	e8 59 f1 ff ff       	call   c00015ab <printk>
c0002452:	83 c4 10             	add    $0x10,%esp
c0002455:	e8 8c fd ff ff       	call   c00021e6 <read_ebp>
c000245a:	89 c2                	mov    %eax,%edx
c000245c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002463:	83 4d f0 07          	orl    $0x7,-0x10(%ebp)
c0002467:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000246a:	0f b6 c0             	movzbl %al,%eax
c000246d:	83 ec 04             	sub    $0x4,%esp
c0002470:	52                   	push   %edx
c0002471:	68 a0 30 00 c0       	push   $0xc00030a0
c0002476:	50                   	push   %eax
c0002477:	e8 2f f1 ff ff       	call   c00015ab <printk>
c000247c:	83 c4 10             	add    $0x10,%esp
c000247f:	e8 72 fd ff ff       	call   c00021f6 <read_esp>
c0002484:	89 c2                	mov    %eax,%edx
c0002486:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c000248d:	83 4d ec 07          	orl    $0x7,-0x14(%ebp)
c0002491:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002494:	0f b6 c0             	movzbl %al,%eax
c0002497:	83 ec 04             	sub    $0x4,%esp
c000249a:	52                   	push   %edx
c000249b:	68 ac 30 00 c0       	push   $0xc00030ac
c00024a0:	50                   	push   %eax
c00024a1:	e8 05 f1 ff ff       	call   c00015ab <printk>
c00024a6:	83 c4 10             	add    $0x10,%esp
c00024a9:	90                   	nop
c00024aa:	c9                   	leave  
c00024ab:	c3                   	ret    
c00024ac:	66 90                	xchg   %ax,%ax
c00024ae:	66 90                	xchg   %ax,%ax

c00024b0 <interrupt_entry_table>:
c00024b0:	6a 00                	push   $0x0
c00024b2:	1e                   	push   %ds
c00024b3:	06                   	push   %es
c00024b4:	0f a0                	push   %fs
c00024b6:	0f a8                	push   %gs
c00024b8:	60                   	pusha  
c00024b9:	b0 20                	mov    $0x20,%al
c00024bb:	e6 a0                	out    %al,$0xa0
c00024bd:	e6 20                	out    %al,$0x20
c00024bf:	6a 00                	push   $0x0
c00024c1:	ff 15 a0 50 00 c0    	call   *0xc00050a0
c00024c7:	83 c4 04             	add    $0x4,%esp
c00024ca:	61                   	popa   
c00024cb:	0f a9                	pop    %gs
c00024cd:	0f a1                	pop    %fs
c00024cf:	07                   	pop    %es
c00024d0:	1f                   	pop    %ds
c00024d1:	83 c4 04             	add    $0x4,%esp
c00024d4:	cf                   	iret   

c00024d5 <interrupt0x01entry>:
c00024d5:	6a 00                	push   $0x0
c00024d7:	1e                   	push   %ds
c00024d8:	06                   	push   %es
c00024d9:	0f a0                	push   %fs
c00024db:	0f a8                	push   %gs
c00024dd:	60                   	pusha  
c00024de:	b0 20                	mov    $0x20,%al
c00024e0:	e6 a0                	out    %al,$0xa0
c00024e2:	e6 20                	out    %al,$0x20
c00024e4:	6a 01                	push   $0x1
c00024e6:	ff 15 a4 50 00 c0    	call   *0xc00050a4
c00024ec:	83 c4 04             	add    $0x4,%esp
c00024ef:	61                   	popa   
c00024f0:	0f a9                	pop    %gs
c00024f2:	0f a1                	pop    %fs
c00024f4:	07                   	pop    %es
c00024f5:	1f                   	pop    %ds
c00024f6:	83 c4 04             	add    $0x4,%esp
c00024f9:	cf                   	iret   

c00024fa <interrupt0x02entry>:
c00024fa:	6a 00                	push   $0x0
c00024fc:	1e                   	push   %ds
c00024fd:	06                   	push   %es
c00024fe:	0f a0                	push   %fs
c0002500:	0f a8                	push   %gs
c0002502:	60                   	pusha  
c0002503:	b0 20                	mov    $0x20,%al
c0002505:	e6 a0                	out    %al,$0xa0
c0002507:	e6 20                	out    %al,$0x20
c0002509:	6a 02                	push   $0x2
c000250b:	ff 15 a8 50 00 c0    	call   *0xc00050a8
c0002511:	83 c4 04             	add    $0x4,%esp
c0002514:	61                   	popa   
c0002515:	0f a9                	pop    %gs
c0002517:	0f a1                	pop    %fs
c0002519:	07                   	pop    %es
c000251a:	1f                   	pop    %ds
c000251b:	83 c4 04             	add    $0x4,%esp
c000251e:	cf                   	iret   

c000251f <interrupt0x03entry>:
c000251f:	6a 00                	push   $0x0
c0002521:	1e                   	push   %ds
c0002522:	06                   	push   %es
c0002523:	0f a0                	push   %fs
c0002525:	0f a8                	push   %gs
c0002527:	60                   	pusha  
c0002528:	b0 20                	mov    $0x20,%al
c000252a:	e6 a0                	out    %al,$0xa0
c000252c:	e6 20                	out    %al,$0x20
c000252e:	6a 03                	push   $0x3
c0002530:	ff 15 ac 50 00 c0    	call   *0xc00050ac
c0002536:	83 c4 04             	add    $0x4,%esp
c0002539:	61                   	popa   
c000253a:	0f a9                	pop    %gs
c000253c:	0f a1                	pop    %fs
c000253e:	07                   	pop    %es
c000253f:	1f                   	pop    %ds
c0002540:	83 c4 04             	add    $0x4,%esp
c0002543:	cf                   	iret   

c0002544 <interrupt0x04entry>:
c0002544:	6a 00                	push   $0x0
c0002546:	1e                   	push   %ds
c0002547:	06                   	push   %es
c0002548:	0f a0                	push   %fs
c000254a:	0f a8                	push   %gs
c000254c:	60                   	pusha  
c000254d:	b0 20                	mov    $0x20,%al
c000254f:	e6 a0                	out    %al,$0xa0
c0002551:	e6 20                	out    %al,$0x20
c0002553:	6a 04                	push   $0x4
c0002555:	ff 15 b0 50 00 c0    	call   *0xc00050b0
c000255b:	83 c4 04             	add    $0x4,%esp
c000255e:	61                   	popa   
c000255f:	0f a9                	pop    %gs
c0002561:	0f a1                	pop    %fs
c0002563:	07                   	pop    %es
c0002564:	1f                   	pop    %ds
c0002565:	83 c4 04             	add    $0x4,%esp
c0002568:	cf                   	iret   

c0002569 <interrupt0x05entry>:
c0002569:	6a 00                	push   $0x0
c000256b:	1e                   	push   %ds
c000256c:	06                   	push   %es
c000256d:	0f a0                	push   %fs
c000256f:	0f a8                	push   %gs
c0002571:	60                   	pusha  
c0002572:	b0 20                	mov    $0x20,%al
c0002574:	e6 a0                	out    %al,$0xa0
c0002576:	e6 20                	out    %al,$0x20
c0002578:	6a 05                	push   $0x5
c000257a:	ff 15 b4 50 00 c0    	call   *0xc00050b4
c0002580:	83 c4 04             	add    $0x4,%esp
c0002583:	61                   	popa   
c0002584:	0f a9                	pop    %gs
c0002586:	0f a1                	pop    %fs
c0002588:	07                   	pop    %es
c0002589:	1f                   	pop    %ds
c000258a:	83 c4 04             	add    $0x4,%esp
c000258d:	cf                   	iret   

c000258e <interrupt0x06entry>:
c000258e:	6a 00                	push   $0x0
c0002590:	1e                   	push   %ds
c0002591:	06                   	push   %es
c0002592:	0f a0                	push   %fs
c0002594:	0f a8                	push   %gs
c0002596:	60                   	pusha  
c0002597:	b0 20                	mov    $0x20,%al
c0002599:	e6 a0                	out    %al,$0xa0
c000259b:	e6 20                	out    %al,$0x20
c000259d:	6a 06                	push   $0x6
c000259f:	ff 15 b8 50 00 c0    	call   *0xc00050b8
c00025a5:	83 c4 04             	add    $0x4,%esp
c00025a8:	61                   	popa   
c00025a9:	0f a9                	pop    %gs
c00025ab:	0f a1                	pop    %fs
c00025ad:	07                   	pop    %es
c00025ae:	1f                   	pop    %ds
c00025af:	83 c4 04             	add    $0x4,%esp
c00025b2:	cf                   	iret   

c00025b3 <interrupt0x07entry>:
c00025b3:	6a 00                	push   $0x0
c00025b5:	1e                   	push   %ds
c00025b6:	06                   	push   %es
c00025b7:	0f a0                	push   %fs
c00025b9:	0f a8                	push   %gs
c00025bb:	60                   	pusha  
c00025bc:	b0 20                	mov    $0x20,%al
c00025be:	e6 a0                	out    %al,$0xa0
c00025c0:	e6 20                	out    %al,$0x20
c00025c2:	6a 07                	push   $0x7
c00025c4:	ff 15 bc 50 00 c0    	call   *0xc00050bc
c00025ca:	83 c4 04             	add    $0x4,%esp
c00025cd:	61                   	popa   
c00025ce:	0f a9                	pop    %gs
c00025d0:	0f a1                	pop    %fs
c00025d2:	07                   	pop    %es
c00025d3:	1f                   	pop    %ds
c00025d4:	83 c4 04             	add    $0x4,%esp
c00025d7:	cf                   	iret   

c00025d8 <interrupt0x08entry>:
c00025d8:	90                   	nop
c00025d9:	1e                   	push   %ds
c00025da:	06                   	push   %es
c00025db:	0f a0                	push   %fs
c00025dd:	0f a8                	push   %gs
c00025df:	60                   	pusha  
c00025e0:	b0 20                	mov    $0x20,%al
c00025e2:	e6 a0                	out    %al,$0xa0
c00025e4:	e6 20                	out    %al,$0x20
c00025e6:	6a 08                	push   $0x8
c00025e8:	ff 15 c0 50 00 c0    	call   *0xc00050c0
c00025ee:	83 c4 04             	add    $0x4,%esp
c00025f1:	61                   	popa   
c00025f2:	0f a9                	pop    %gs
c00025f4:	0f a1                	pop    %fs
c00025f6:	07                   	pop    %es
c00025f7:	1f                   	pop    %ds
c00025f8:	83 c4 04             	add    $0x4,%esp
c00025fb:	cf                   	iret   

c00025fc <interrupt0x09entry>:
c00025fc:	6a 00                	push   $0x0
c00025fe:	1e                   	push   %ds
c00025ff:	06                   	push   %es
c0002600:	0f a0                	push   %fs
c0002602:	0f a8                	push   %gs
c0002604:	60                   	pusha  
c0002605:	b0 20                	mov    $0x20,%al
c0002607:	e6 a0                	out    %al,$0xa0
c0002609:	e6 20                	out    %al,$0x20
c000260b:	6a 09                	push   $0x9
c000260d:	ff 15 c4 50 00 c0    	call   *0xc00050c4
c0002613:	83 c4 04             	add    $0x4,%esp
c0002616:	61                   	popa   
c0002617:	0f a9                	pop    %gs
c0002619:	0f a1                	pop    %fs
c000261b:	07                   	pop    %es
c000261c:	1f                   	pop    %ds
c000261d:	83 c4 04             	add    $0x4,%esp
c0002620:	cf                   	iret   

c0002621 <interrupt0x0aentry>:
c0002621:	90                   	nop
c0002622:	1e                   	push   %ds
c0002623:	06                   	push   %es
c0002624:	0f a0                	push   %fs
c0002626:	0f a8                	push   %gs
c0002628:	60                   	pusha  
c0002629:	b0 20                	mov    $0x20,%al
c000262b:	e6 a0                	out    %al,$0xa0
c000262d:	e6 20                	out    %al,$0x20
c000262f:	6a 0a                	push   $0xa
c0002631:	ff 15 c8 50 00 c0    	call   *0xc00050c8
c0002637:	83 c4 04             	add    $0x4,%esp
c000263a:	61                   	popa   
c000263b:	0f a9                	pop    %gs
c000263d:	0f a1                	pop    %fs
c000263f:	07                   	pop    %es
c0002640:	1f                   	pop    %ds
c0002641:	83 c4 04             	add    $0x4,%esp
c0002644:	cf                   	iret   

c0002645 <interrupt0x0bentry>:
c0002645:	90                   	nop
c0002646:	1e                   	push   %ds
c0002647:	06                   	push   %es
c0002648:	0f a0                	push   %fs
c000264a:	0f a8                	push   %gs
c000264c:	60                   	pusha  
c000264d:	b0 20                	mov    $0x20,%al
c000264f:	e6 a0                	out    %al,$0xa0
c0002651:	e6 20                	out    %al,$0x20
c0002653:	6a 0b                	push   $0xb
c0002655:	ff 15 cc 50 00 c0    	call   *0xc00050cc
c000265b:	83 c4 04             	add    $0x4,%esp
c000265e:	61                   	popa   
c000265f:	0f a9                	pop    %gs
c0002661:	0f a1                	pop    %fs
c0002663:	07                   	pop    %es
c0002664:	1f                   	pop    %ds
c0002665:	83 c4 04             	add    $0x4,%esp
c0002668:	cf                   	iret   

c0002669 <interrupt0x0centry>:
c0002669:	6a 00                	push   $0x0
c000266b:	1e                   	push   %ds
c000266c:	06                   	push   %es
c000266d:	0f a0                	push   %fs
c000266f:	0f a8                	push   %gs
c0002671:	60                   	pusha  
c0002672:	b0 20                	mov    $0x20,%al
c0002674:	e6 a0                	out    %al,$0xa0
c0002676:	e6 20                	out    %al,$0x20
c0002678:	6a 0c                	push   $0xc
c000267a:	ff 15 d0 50 00 c0    	call   *0xc00050d0
c0002680:	83 c4 04             	add    $0x4,%esp
c0002683:	61                   	popa   
c0002684:	0f a9                	pop    %gs
c0002686:	0f a1                	pop    %fs
c0002688:	07                   	pop    %es
c0002689:	1f                   	pop    %ds
c000268a:	83 c4 04             	add    $0x4,%esp
c000268d:	cf                   	iret   

c000268e <interrupt0x0dentry>:
c000268e:	90                   	nop
c000268f:	1e                   	push   %ds
c0002690:	06                   	push   %es
c0002691:	0f a0                	push   %fs
c0002693:	0f a8                	push   %gs
c0002695:	60                   	pusha  
c0002696:	b0 20                	mov    $0x20,%al
c0002698:	e6 a0                	out    %al,$0xa0
c000269a:	e6 20                	out    %al,$0x20
c000269c:	6a 0d                	push   $0xd
c000269e:	ff 15 d4 50 00 c0    	call   *0xc00050d4
c00026a4:	83 c4 04             	add    $0x4,%esp
c00026a7:	61                   	popa   
c00026a8:	0f a9                	pop    %gs
c00026aa:	0f a1                	pop    %fs
c00026ac:	07                   	pop    %es
c00026ad:	1f                   	pop    %ds
c00026ae:	83 c4 04             	add    $0x4,%esp
c00026b1:	cf                   	iret   

c00026b2 <interrupt0x0eentry>:
c00026b2:	90                   	nop
c00026b3:	1e                   	push   %ds
c00026b4:	06                   	push   %es
c00026b5:	0f a0                	push   %fs
c00026b7:	0f a8                	push   %gs
c00026b9:	60                   	pusha  
c00026ba:	b0 20                	mov    $0x20,%al
c00026bc:	e6 a0                	out    %al,$0xa0
c00026be:	e6 20                	out    %al,$0x20
c00026c0:	6a 0e                	push   $0xe
c00026c2:	ff 15 d8 50 00 c0    	call   *0xc00050d8
c00026c8:	83 c4 04             	add    $0x4,%esp
c00026cb:	61                   	popa   
c00026cc:	0f a9                	pop    %gs
c00026ce:	0f a1                	pop    %fs
c00026d0:	07                   	pop    %es
c00026d1:	1f                   	pop    %ds
c00026d2:	83 c4 04             	add    $0x4,%esp
c00026d5:	cf                   	iret   

c00026d6 <interrupt0x0fentry>:
c00026d6:	6a 00                	push   $0x0
c00026d8:	1e                   	push   %ds
c00026d9:	06                   	push   %es
c00026da:	0f a0                	push   %fs
c00026dc:	0f a8                	push   %gs
c00026de:	60                   	pusha  
c00026df:	b0 20                	mov    $0x20,%al
c00026e1:	e6 a0                	out    %al,$0xa0
c00026e3:	e6 20                	out    %al,$0x20
c00026e5:	6a 0f                	push   $0xf
c00026e7:	ff 15 dc 50 00 c0    	call   *0xc00050dc
c00026ed:	83 c4 04             	add    $0x4,%esp
c00026f0:	61                   	popa   
c00026f1:	0f a9                	pop    %gs
c00026f3:	0f a1                	pop    %fs
c00026f5:	07                   	pop    %es
c00026f6:	1f                   	pop    %ds
c00026f7:	83 c4 04             	add    $0x4,%esp
c00026fa:	cf                   	iret   

c00026fb <interrupt0x10entry>:
c00026fb:	6a 00                	push   $0x0
c00026fd:	1e                   	push   %ds
c00026fe:	06                   	push   %es
c00026ff:	0f a0                	push   %fs
c0002701:	0f a8                	push   %gs
c0002703:	60                   	pusha  
c0002704:	b0 20                	mov    $0x20,%al
c0002706:	e6 a0                	out    %al,$0xa0
c0002708:	e6 20                	out    %al,$0x20
c000270a:	6a 10                	push   $0x10
c000270c:	ff 15 e0 50 00 c0    	call   *0xc00050e0
c0002712:	83 c4 04             	add    $0x4,%esp
c0002715:	61                   	popa   
c0002716:	0f a9                	pop    %gs
c0002718:	0f a1                	pop    %fs
c000271a:	07                   	pop    %es
c000271b:	1f                   	pop    %ds
c000271c:	83 c4 04             	add    $0x4,%esp
c000271f:	cf                   	iret   

c0002720 <interrupt0x11entry>:
c0002720:	90                   	nop
c0002721:	1e                   	push   %ds
c0002722:	06                   	push   %es
c0002723:	0f a0                	push   %fs
c0002725:	0f a8                	push   %gs
c0002727:	60                   	pusha  
c0002728:	b0 20                	mov    $0x20,%al
c000272a:	e6 a0                	out    %al,$0xa0
c000272c:	e6 20                	out    %al,$0x20
c000272e:	6a 11                	push   $0x11
c0002730:	ff 15 e4 50 00 c0    	call   *0xc00050e4
c0002736:	83 c4 04             	add    $0x4,%esp
c0002739:	61                   	popa   
c000273a:	0f a9                	pop    %gs
c000273c:	0f a1                	pop    %fs
c000273e:	07                   	pop    %es
c000273f:	1f                   	pop    %ds
c0002740:	83 c4 04             	add    $0x4,%esp
c0002743:	cf                   	iret   

c0002744 <interrupt0x12entry>:
c0002744:	6a 00                	push   $0x0
c0002746:	1e                   	push   %ds
c0002747:	06                   	push   %es
c0002748:	0f a0                	push   %fs
c000274a:	0f a8                	push   %gs
c000274c:	60                   	pusha  
c000274d:	b0 20                	mov    $0x20,%al
c000274f:	e6 a0                	out    %al,$0xa0
c0002751:	e6 20                	out    %al,$0x20
c0002753:	6a 12                	push   $0x12
c0002755:	ff 15 e8 50 00 c0    	call   *0xc00050e8
c000275b:	83 c4 04             	add    $0x4,%esp
c000275e:	61                   	popa   
c000275f:	0f a9                	pop    %gs
c0002761:	0f a1                	pop    %fs
c0002763:	07                   	pop    %es
c0002764:	1f                   	pop    %ds
c0002765:	83 c4 04             	add    $0x4,%esp
c0002768:	cf                   	iret   

c0002769 <interrupt0x13entry>:
c0002769:	6a 00                	push   $0x0
c000276b:	1e                   	push   %ds
c000276c:	06                   	push   %es
c000276d:	0f a0                	push   %fs
c000276f:	0f a8                	push   %gs
c0002771:	60                   	pusha  
c0002772:	b0 20                	mov    $0x20,%al
c0002774:	e6 a0                	out    %al,$0xa0
c0002776:	e6 20                	out    %al,$0x20
c0002778:	6a 13                	push   $0x13
c000277a:	ff 15 ec 50 00 c0    	call   *0xc00050ec
c0002780:	83 c4 04             	add    $0x4,%esp
c0002783:	61                   	popa   
c0002784:	0f a9                	pop    %gs
c0002786:	0f a1                	pop    %fs
c0002788:	07                   	pop    %es
c0002789:	1f                   	pop    %ds
c000278a:	83 c4 04             	add    $0x4,%esp
c000278d:	cf                   	iret   

c000278e <interrupt0x14entry>:
c000278e:	6a 00                	push   $0x0
c0002790:	1e                   	push   %ds
c0002791:	06                   	push   %es
c0002792:	0f a0                	push   %fs
c0002794:	0f a8                	push   %gs
c0002796:	60                   	pusha  
c0002797:	b0 20                	mov    $0x20,%al
c0002799:	e6 a0                	out    %al,$0xa0
c000279b:	e6 20                	out    %al,$0x20
c000279d:	6a 14                	push   $0x14
c000279f:	ff 15 f0 50 00 c0    	call   *0xc00050f0
c00027a5:	83 c4 04             	add    $0x4,%esp
c00027a8:	61                   	popa   
c00027a9:	0f a9                	pop    %gs
c00027ab:	0f a1                	pop    %fs
c00027ad:	07                   	pop    %es
c00027ae:	1f                   	pop    %ds
c00027af:	83 c4 04             	add    $0x4,%esp
c00027b2:	cf                   	iret   

c00027b3 <interrupt0x15entry>:
c00027b3:	6a 00                	push   $0x0
c00027b5:	1e                   	push   %ds
c00027b6:	06                   	push   %es
c00027b7:	0f a0                	push   %fs
c00027b9:	0f a8                	push   %gs
c00027bb:	60                   	pusha  
c00027bc:	b0 20                	mov    $0x20,%al
c00027be:	e6 a0                	out    %al,$0xa0
c00027c0:	e6 20                	out    %al,$0x20
c00027c2:	6a 15                	push   $0x15
c00027c4:	ff 15 f4 50 00 c0    	call   *0xc00050f4
c00027ca:	83 c4 04             	add    $0x4,%esp
c00027cd:	61                   	popa   
c00027ce:	0f a9                	pop    %gs
c00027d0:	0f a1                	pop    %fs
c00027d2:	07                   	pop    %es
c00027d3:	1f                   	pop    %ds
c00027d4:	83 c4 04             	add    $0x4,%esp
c00027d7:	cf                   	iret   

c00027d8 <interrupt0x16entry>:
c00027d8:	6a 00                	push   $0x0
c00027da:	1e                   	push   %ds
c00027db:	06                   	push   %es
c00027dc:	0f a0                	push   %fs
c00027de:	0f a8                	push   %gs
c00027e0:	60                   	pusha  
c00027e1:	b0 20                	mov    $0x20,%al
c00027e3:	e6 a0                	out    %al,$0xa0
c00027e5:	e6 20                	out    %al,$0x20
c00027e7:	6a 16                	push   $0x16
c00027e9:	ff 15 f8 50 00 c0    	call   *0xc00050f8
c00027ef:	83 c4 04             	add    $0x4,%esp
c00027f2:	61                   	popa   
c00027f3:	0f a9                	pop    %gs
c00027f5:	0f a1                	pop    %fs
c00027f7:	07                   	pop    %es
c00027f8:	1f                   	pop    %ds
c00027f9:	83 c4 04             	add    $0x4,%esp
c00027fc:	cf                   	iret   

c00027fd <interrupt0x17entry>:
c00027fd:	6a 00                	push   $0x0
c00027ff:	1e                   	push   %ds
c0002800:	06                   	push   %es
c0002801:	0f a0                	push   %fs
c0002803:	0f a8                	push   %gs
c0002805:	60                   	pusha  
c0002806:	b0 20                	mov    $0x20,%al
c0002808:	e6 a0                	out    %al,$0xa0
c000280a:	e6 20                	out    %al,$0x20
c000280c:	6a 17                	push   $0x17
c000280e:	ff 15 fc 50 00 c0    	call   *0xc00050fc
c0002814:	83 c4 04             	add    $0x4,%esp
c0002817:	61                   	popa   
c0002818:	0f a9                	pop    %gs
c000281a:	0f a1                	pop    %fs
c000281c:	07                   	pop    %es
c000281d:	1f                   	pop    %ds
c000281e:	83 c4 04             	add    $0x4,%esp
c0002821:	cf                   	iret   

c0002822 <interrupt0x18entry>:
c0002822:	90                   	nop
c0002823:	1e                   	push   %ds
c0002824:	06                   	push   %es
c0002825:	0f a0                	push   %fs
c0002827:	0f a8                	push   %gs
c0002829:	60                   	pusha  
c000282a:	b0 20                	mov    $0x20,%al
c000282c:	e6 a0                	out    %al,$0xa0
c000282e:	e6 20                	out    %al,$0x20
c0002830:	6a 18                	push   $0x18
c0002832:	ff 15 00 51 00 c0    	call   *0xc0005100
c0002838:	83 c4 04             	add    $0x4,%esp
c000283b:	61                   	popa   
c000283c:	0f a9                	pop    %gs
c000283e:	0f a1                	pop    %fs
c0002840:	07                   	pop    %es
c0002841:	1f                   	pop    %ds
c0002842:	83 c4 04             	add    $0x4,%esp
c0002845:	cf                   	iret   

c0002846 <interrupt0x19entry>:
c0002846:	6a 00                	push   $0x0
c0002848:	1e                   	push   %ds
c0002849:	06                   	push   %es
c000284a:	0f a0                	push   %fs
c000284c:	0f a8                	push   %gs
c000284e:	60                   	pusha  
c000284f:	b0 20                	mov    $0x20,%al
c0002851:	e6 a0                	out    %al,$0xa0
c0002853:	e6 20                	out    %al,$0x20
c0002855:	6a 19                	push   $0x19
c0002857:	ff 15 04 51 00 c0    	call   *0xc0005104
c000285d:	83 c4 04             	add    $0x4,%esp
c0002860:	61                   	popa   
c0002861:	0f a9                	pop    %gs
c0002863:	0f a1                	pop    %fs
c0002865:	07                   	pop    %es
c0002866:	1f                   	pop    %ds
c0002867:	83 c4 04             	add    $0x4,%esp
c000286a:	cf                   	iret   

c000286b <interrupt0x1aentry>:
c000286b:	90                   	nop
c000286c:	1e                   	push   %ds
c000286d:	06                   	push   %es
c000286e:	0f a0                	push   %fs
c0002870:	0f a8                	push   %gs
c0002872:	60                   	pusha  
c0002873:	b0 20                	mov    $0x20,%al
c0002875:	e6 a0                	out    %al,$0xa0
c0002877:	e6 20                	out    %al,$0x20
c0002879:	6a 1a                	push   $0x1a
c000287b:	ff 15 08 51 00 c0    	call   *0xc0005108
c0002881:	83 c4 04             	add    $0x4,%esp
c0002884:	61                   	popa   
c0002885:	0f a9                	pop    %gs
c0002887:	0f a1                	pop    %fs
c0002889:	07                   	pop    %es
c000288a:	1f                   	pop    %ds
c000288b:	83 c4 04             	add    $0x4,%esp
c000288e:	cf                   	iret   

c000288f <interrupt0x1bentry>:
c000288f:	90                   	nop
c0002890:	1e                   	push   %ds
c0002891:	06                   	push   %es
c0002892:	0f a0                	push   %fs
c0002894:	0f a8                	push   %gs
c0002896:	60                   	pusha  
c0002897:	b0 20                	mov    $0x20,%al
c0002899:	e6 a0                	out    %al,$0xa0
c000289b:	e6 20                	out    %al,$0x20
c000289d:	6a 1b                	push   $0x1b
c000289f:	ff 15 0c 51 00 c0    	call   *0xc000510c
c00028a5:	83 c4 04             	add    $0x4,%esp
c00028a8:	61                   	popa   
c00028a9:	0f a9                	pop    %gs
c00028ab:	0f a1                	pop    %fs
c00028ad:	07                   	pop    %es
c00028ae:	1f                   	pop    %ds
c00028af:	83 c4 04             	add    $0x4,%esp
c00028b2:	cf                   	iret   

c00028b3 <interrupt0x1centry>:
c00028b3:	6a 00                	push   $0x0
c00028b5:	1e                   	push   %ds
c00028b6:	06                   	push   %es
c00028b7:	0f a0                	push   %fs
c00028b9:	0f a8                	push   %gs
c00028bb:	60                   	pusha  
c00028bc:	b0 20                	mov    $0x20,%al
c00028be:	e6 a0                	out    %al,$0xa0
c00028c0:	e6 20                	out    %al,$0x20
c00028c2:	6a 1c                	push   $0x1c
c00028c4:	ff 15 10 51 00 c0    	call   *0xc0005110
c00028ca:	83 c4 04             	add    $0x4,%esp
c00028cd:	61                   	popa   
c00028ce:	0f a9                	pop    %gs
c00028d0:	0f a1                	pop    %fs
c00028d2:	07                   	pop    %es
c00028d3:	1f                   	pop    %ds
c00028d4:	83 c4 04             	add    $0x4,%esp
c00028d7:	cf                   	iret   

c00028d8 <interrupt0x1dentry>:
c00028d8:	90                   	nop
c00028d9:	1e                   	push   %ds
c00028da:	06                   	push   %es
c00028db:	0f a0                	push   %fs
c00028dd:	0f a8                	push   %gs
c00028df:	60                   	pusha  
c00028e0:	b0 20                	mov    $0x20,%al
c00028e2:	e6 a0                	out    %al,$0xa0
c00028e4:	e6 20                	out    %al,$0x20
c00028e6:	6a 1d                	push   $0x1d
c00028e8:	ff 15 14 51 00 c0    	call   *0xc0005114
c00028ee:	83 c4 04             	add    $0x4,%esp
c00028f1:	61                   	popa   
c00028f2:	0f a9                	pop    %gs
c00028f4:	0f a1                	pop    %fs
c00028f6:	07                   	pop    %es
c00028f7:	1f                   	pop    %ds
c00028f8:	83 c4 04             	add    $0x4,%esp
c00028fb:	cf                   	iret   

c00028fc <interrupt0x1eentry>:
c00028fc:	90                   	nop
c00028fd:	1e                   	push   %ds
c00028fe:	06                   	push   %es
c00028ff:	0f a0                	push   %fs
c0002901:	0f a8                	push   %gs
c0002903:	60                   	pusha  
c0002904:	b0 20                	mov    $0x20,%al
c0002906:	e6 a0                	out    %al,$0xa0
c0002908:	e6 20                	out    %al,$0x20
c000290a:	6a 1e                	push   $0x1e
c000290c:	ff 15 18 51 00 c0    	call   *0xc0005118
c0002912:	83 c4 04             	add    $0x4,%esp
c0002915:	61                   	popa   
c0002916:	0f a9                	pop    %gs
c0002918:	0f a1                	pop    %fs
c000291a:	07                   	pop    %es
c000291b:	1f                   	pop    %ds
c000291c:	83 c4 04             	add    $0x4,%esp
c000291f:	cf                   	iret   

c0002920 <interrupt0x1fentry>:
c0002920:	6a 00                	push   $0x0
c0002922:	1e                   	push   %ds
c0002923:	06                   	push   %es
c0002924:	0f a0                	push   %fs
c0002926:	0f a8                	push   %gs
c0002928:	60                   	pusha  
c0002929:	b0 20                	mov    $0x20,%al
c000292b:	e6 a0                	out    %al,$0xa0
c000292d:	e6 20                	out    %al,$0x20
c000292f:	6a 1f                	push   $0x1f
c0002931:	ff 15 1c 51 00 c0    	call   *0xc000511c
c0002937:	83 c4 04             	add    $0x4,%esp
c000293a:	61                   	popa   
c000293b:	0f a9                	pop    %gs
c000293d:	0f a1                	pop    %fs
c000293f:	07                   	pop    %es
c0002940:	1f                   	pop    %ds
c0002941:	83 c4 04             	add    $0x4,%esp
c0002944:	cf                   	iret   

c0002945 <interrupt0x20entry>:
c0002945:	6a 00                	push   $0x0
c0002947:	1e                   	push   %ds
c0002948:	06                   	push   %es
c0002949:	0f a0                	push   %fs
c000294b:	0f a8                	push   %gs
c000294d:	60                   	pusha  
c000294e:	b0 20                	mov    $0x20,%al
c0002950:	e6 a0                	out    %al,$0xa0
c0002952:	e6 20                	out    %al,$0x20
c0002954:	6a 20                	push   $0x20
c0002956:	ff 15 20 51 00 c0    	call   *0xc0005120
c000295c:	83 c4 04             	add    $0x4,%esp
c000295f:	61                   	popa   
c0002960:	0f a9                	pop    %gs
c0002962:	0f a1                	pop    %fs
c0002964:	07                   	pop    %es
c0002965:	1f                   	pop    %ds
c0002966:	83 c4 04             	add    $0x4,%esp
c0002969:	cf                   	iret   

c000296a <outb>:
c000296a:	55                   	push   %ebp
c000296b:	89 e5                	mov    %esp,%ebp
c000296d:	83 ec 08             	sub    $0x8,%esp
c0002970:	8b 45 08             	mov    0x8(%ebp),%eax
c0002973:	8b 55 0c             	mov    0xc(%ebp),%edx
c0002976:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c000297a:	89 d0                	mov    %edx,%eax
c000297c:	88 45 f8             	mov    %al,-0x8(%ebp)
c000297f:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c0002983:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c0002987:	ee                   	out    %al,(%dx)
c0002988:	90                   	nop
c0002989:	c9                   	leave  
c000298a:	c3                   	ret    

c000298b <pic_init>:
c000298b:	55                   	push   %ebp
c000298c:	89 e5                	mov    %esp,%ebp
c000298e:	83 ec 18             	sub    $0x18,%esp
c0002991:	6a 11                	push   $0x11
c0002993:	6a 20                	push   $0x20
c0002995:	e8 d0 ff ff ff       	call   c000296a <outb>
c000299a:	83 c4 08             	add    $0x8,%esp
c000299d:	6a 20                	push   $0x20
c000299f:	6a 21                	push   $0x21
c00029a1:	e8 c4 ff ff ff       	call   c000296a <outb>
c00029a6:	83 c4 08             	add    $0x8,%esp
c00029a9:	6a 04                	push   $0x4
c00029ab:	6a 21                	push   $0x21
c00029ad:	e8 b8 ff ff ff       	call   c000296a <outb>
c00029b2:	83 c4 08             	add    $0x8,%esp
c00029b5:	6a 01                	push   $0x1
c00029b7:	6a 21                	push   $0x21
c00029b9:	e8 ac ff ff ff       	call   c000296a <outb>
c00029be:	83 c4 08             	add    $0x8,%esp
c00029c1:	6a 11                	push   $0x11
c00029c3:	68 a0 00 00 00       	push   $0xa0
c00029c8:	e8 9d ff ff ff       	call   c000296a <outb>
c00029cd:	83 c4 08             	add    $0x8,%esp
c00029d0:	6a 28                	push   $0x28
c00029d2:	68 a1 00 00 00       	push   $0xa1
c00029d7:	e8 8e ff ff ff       	call   c000296a <outb>
c00029dc:	83 c4 08             	add    $0x8,%esp
c00029df:	6a 02                	push   $0x2
c00029e1:	68 a1 00 00 00       	push   $0xa1
c00029e6:	e8 7f ff ff ff       	call   c000296a <outb>
c00029eb:	83 c4 08             	add    $0x8,%esp
c00029ee:	6a 01                	push   $0x1
c00029f0:	68 a1 00 00 00       	push   $0xa1
c00029f5:	e8 70 ff ff ff       	call   c000296a <outb>
c00029fa:	83 c4 08             	add    $0x8,%esp
c00029fd:	68 fe 00 00 00       	push   $0xfe
c0002a02:	6a 21                	push   $0x21
c0002a04:	e8 61 ff ff ff       	call   c000296a <outb>
c0002a09:	83 c4 08             	add    $0x8,%esp
c0002a0c:	68 ff 00 00 00       	push   $0xff
c0002a11:	68 a1 00 00 00       	push   $0xa1
c0002a16:	e8 4f ff ff ff       	call   c000296a <outb>
c0002a1b:	83 c4 08             	add    $0x8,%esp
c0002a1e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002a25:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c0002a29:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002a2c:	0f b6 c0             	movzbl %al,%eax
c0002a2f:	83 ec 08             	sub    $0x8,%esp
c0002a32:	68 d1 32 00 c0       	push   $0xc00032d1
c0002a37:	50                   	push   %eax
c0002a38:	e8 6e eb ff ff       	call   c00015ab <printk>
c0002a3d:	83 c4 10             	add    $0x10,%esp
c0002a40:	90                   	nop
c0002a41:	c9                   	leave  
c0002a42:	c3                   	ret    

c0002a43 <make_idt_desc>:
c0002a43:	55                   	push   %ebp
c0002a44:	89 e5                	mov    %esp,%ebp
c0002a46:	83 ec 04             	sub    $0x4,%esp
c0002a49:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002a4c:	88 45 fc             	mov    %al,-0x4(%ebp)
c0002a4f:	8b 45 10             	mov    0x10(%ebp),%eax
c0002a52:	89 c2                	mov    %eax,%edx
c0002a54:	8b 45 08             	mov    0x8(%ebp),%eax
c0002a57:	66 89 10             	mov    %dx,(%eax)
c0002a5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0002a5d:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c0002a63:	8b 45 08             	mov    0x8(%ebp),%eax
c0002a66:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0002a6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0002a6d:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c0002a71:	88 50 05             	mov    %dl,0x5(%eax)
c0002a74:	8b 45 08             	mov    0x8(%ebp),%eax
c0002a77:	66 c7 40 06 00 00    	movw   $0x0,0x6(%eax)
c0002a7d:	90                   	nop
c0002a7e:	c9                   	leave  
c0002a7f:	c3                   	ret    

c0002a80 <idt_desc_init>:
c0002a80:	55                   	push   %ebp
c0002a81:	89 e5                	mov    %esp,%ebp
c0002a83:	83 ec 18             	sub    $0x18,%esp
c0002a86:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002a8d:	eb 29                	jmp    c0002ab8 <idt_desc_init+0x38>
c0002a8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002a92:	8b 04 85 b0 24 00 c0 	mov    -0x3fffdb50(,%eax,4),%eax
c0002a99:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0002a9c:	c1 e2 03             	shl    $0x3,%edx
c0002a9f:	81 c2 e0 51 00 c0    	add    $0xc00051e0,%edx
c0002aa5:	50                   	push   %eax
c0002aa6:	68 8e 00 00 00       	push   $0x8e
c0002aab:	52                   	push   %edx
c0002aac:	e8 92 ff ff ff       	call   c0002a43 <make_idt_desc>
c0002ab1:	83 c4 0c             	add    $0xc,%esp
c0002ab4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0002ab8:	83 7d f4 20          	cmpl   $0x20,-0xc(%ebp)
c0002abc:	7e d1                	jle    c0002a8f <idt_desc_init+0xf>
c0002abe:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002ac5:	83 4d f0 07          	orl    $0x7,-0x10(%ebp)
c0002ac9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002acc:	0f b6 c0             	movzbl %al,%eax
c0002acf:	83 ec 08             	sub    $0x8,%esp
c0002ad2:	68 e4 32 00 c0       	push   $0xc00032e4
c0002ad7:	50                   	push   %eax
c0002ad8:	e8 ce ea ff ff       	call   c00015ab <printk>
c0002add:	83 c4 10             	add    $0x10,%esp
c0002ae0:	90                   	nop
c0002ae1:	c9                   	leave  
c0002ae2:	c3                   	ret    

c0002ae3 <general_interrupt_handler>:
c0002ae3:	55                   	push   %ebp
c0002ae4:	89 e5                	mov    %esp,%ebp
c0002ae6:	83 ec 28             	sub    $0x28,%esp
c0002ae9:	8b 45 08             	mov    0x8(%ebp),%eax
c0002aec:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0002aef:	80 7d e4 27          	cmpb   $0x27,-0x1c(%ebp)
c0002af3:	74 5d                	je     c0002b52 <general_interrupt_handler+0x6f>
c0002af5:	80 7d e4 2f          	cmpb   $0x2f,-0x1c(%ebp)
c0002af9:	74 57                	je     c0002b52 <general_interrupt_handler+0x6f>
c0002afb:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c0002aff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002b06:	83 4d f4 04          	orl    $0x4,-0xc(%ebp)
c0002b0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b0d:	0f b6 c0             	movzbl %al,%eax
c0002b10:	83 ec 04             	sub    $0x4,%esp
c0002b13:	52                   	push   %edx
c0002b14:	68 fc 32 00 c0       	push   $0xc00032fc
c0002b19:	50                   	push   %eax
c0002b1a:	e8 8c ea ff ff       	call   c00015ab <printk>
c0002b1f:	83 c4 10             	add    $0x10,%esp
c0002b22:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0002b26:	8b 14 85 40 51 00 c0 	mov    -0x3fffaec0(,%eax,4),%edx
c0002b2d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002b34:	83 4d f0 04          	orl    $0x4,-0x10(%ebp)
c0002b38:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002b3b:	0f b6 c0             	movzbl %al,%eax
c0002b3e:	83 ec 04             	sub    $0x4,%esp
c0002b41:	52                   	push   %edx
c0002b42:	68 15 33 00 c0       	push   $0xc0003315
c0002b47:	50                   	push   %eax
c0002b48:	e8 5e ea ff ff       	call   c00015ab <printk>
c0002b4d:	83 c4 10             	add    $0x10,%esp
c0002b50:	eb 01                	jmp    c0002b53 <general_interrupt_handler+0x70>
c0002b52:	90                   	nop
c0002b53:	c9                   	leave  
c0002b54:	c3                   	ret    

c0002b55 <exception_interrupt_init>:
c0002b55:	55                   	push   %ebp
c0002b56:	89 e5                	mov    %esp,%ebp
c0002b58:	83 ec 10             	sub    $0x10,%esp
c0002b5b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0002b62:	eb 12                	jmp    c0002b76 <exception_interrupt_init+0x21>
c0002b64:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0002b67:	c7 04 85 a0 50 00 c0 	movl   $0xc0002ae3,-0x3fffaf60(,%eax,4)
c0002b6e:	e3 2a 00 c0 
c0002b72:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0002b76:	83 7d fc 20          	cmpl   $0x20,-0x4(%ebp)
c0002b7a:	7e e8                	jle    c0002b64 <exception_interrupt_init+0xf>
c0002b7c:	90                   	nop
c0002b7d:	c9                   	leave  
c0002b7e:	c3                   	ret    

c0002b7f <idt_init>:
c0002b7f:	55                   	push   %ebp
c0002b80:	89 e5                	mov    %esp,%ebp
c0002b82:	53                   	push   %ebx
c0002b83:	83 ec 14             	sub    $0x14,%esp
c0002b86:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002b8d:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c0002b91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b94:	0f b6 c0             	movzbl %al,%eax
c0002b97:	83 ec 08             	sub    $0x8,%esp
c0002b9a:	68 19 33 00 c0       	push   $0xc0003319
c0002b9f:	50                   	push   %eax
c0002ba0:	e8 06 ea ff ff       	call   c00015ab <printk>
c0002ba5:	83 c4 10             	add    $0x10,%esp
c0002ba8:	e8 d3 fe ff ff       	call   c0002a80 <idt_desc_init>
c0002bad:	e8 d9 fd ff ff       	call   c000298b <pic_init>
c0002bb2:	b8 e0 51 00 c0       	mov    $0xc00051e0,%eax
c0002bb7:	89 c1                	mov    %eax,%ecx
c0002bb9:	bb 00 00 00 00       	mov    $0x0,%ebx
c0002bbe:	89 c8                	mov    %ecx,%eax
c0002bc0:	89 da                	mov    %ebx,%edx
c0002bc2:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c0002bc6:	c1 e0 10             	shl    $0x10,%eax
c0002bc9:	0d 07 01 00 00       	or     $0x107,%eax
c0002bce:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0002bd1:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0002bd4:	0f 01 5d e8          	lidtl  -0x18(%ebp)
c0002bd8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002bdf:	83 4d f0 07          	orl    $0x7,-0x10(%ebp)
c0002be3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002be6:	0f b6 c0             	movzbl %al,%eax
c0002be9:	83 ec 08             	sub    $0x8,%esp
c0002bec:	68 29 33 00 c0       	push   $0xc0003329
c0002bf1:	50                   	push   %eax
c0002bf2:	e8 b4 e9 ff ff       	call   c00015ab <printk>
c0002bf7:	83 c4 10             	add    $0x10,%esp
c0002bfa:	90                   	nop
c0002bfb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002bfe:	c9                   	leave  
c0002bff:	c3                   	ret    

c0002c00 <init_all>:
c0002c00:	55                   	push   %ebp
c0002c01:	89 e5                	mov    %esp,%ebp
c0002c03:	83 ec 18             	sub    $0x18,%esp
c0002c06:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002c0d:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c0002c11:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002c14:	0f b6 c0             	movzbl %al,%eax
c0002c17:	83 ec 08             	sub    $0x8,%esp
c0002c1a:	68 38 33 00 c0       	push   $0xc0003338
c0002c1f:	50                   	push   %eax
c0002c20:	e8 86 e9 ff ff       	call   c00015ab <printk>
c0002c25:	83 c4 10             	add    $0x10,%esp
c0002c28:	e8 52 ff ff ff       	call   c0002b7f <idt_init>
c0002c2d:	90                   	nop
c0002c2e:	c9                   	leave  
c0002c2f:	c3                   	ret    

Disassembly of section .rodata:

c0002c30 <error_string-0x9c>:
c0002c30:	30 2e                	xor    %ch,(%esi)
c0002c32:	31 2e                	xor    %ebp,(%esi)
c0002c34:	30 00                	xor    %al,(%eax)
c0002c36:	54                   	push   %esp
c0002c37:	68 69 73 20 69       	push   $0x69207369
c0002c3c:	73 20                	jae    c0002c5e <init_all+0x5e>
c0002c3e:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0002c42:	65 6c                	gs insb (%dx),%es:(%edi)
c0002c44:	20 76 65             	and    %dh,0x65(%esi)
c0002c47:	72 73                	jb     c0002cbc <init_all+0xbc>
c0002c49:	69 6f 6e 20 25 73 0a 	imul   $0xa732520,0x6e(%edi),%ebp
c0002c50:	00 49 4e             	add    %cl,0x4e(%ecx)
c0002c53:	54                   	push   %esp
c0002c54:	20 4f 43             	and    %cl,0x43(%edi)
c0002c57:	43                   	inc    %ebx
c0002c58:	55                   	push   %ebp
c0002c59:	52                   	push   %edx
c0002c5a:	21 0a                	and    %ecx,(%edx)
c0002c5c:	00 00                	add    %al,(%eax)
c0002c5e:	00 00                	add    %al,(%eax)
c0002c60:	75 6e                	jne    c0002cd0 <error_string+0x4>
c0002c62:	73 70                	jae    c0002cd4 <error_string+0x8>
c0002c64:	65 63 69 66          	arpl   %bp,%gs:0x66(%ecx)
c0002c68:	69 65 64 20 65 72 72 	imul   $0x72726520,0x64(%ebp),%esp
c0002c6f:	6f                   	outsl  %ds:(%esi),(%dx)
c0002c70:	72 00                	jb     c0002c72 <init_all+0x72>
c0002c72:	62 61 64             	bound  %esp,0x64(%ecx)
c0002c75:	20 65 6e             	and    %ah,0x6e(%ebp)
c0002c78:	76 69                	jbe    c0002ce3 <error_string+0x17>
c0002c7a:	72 6f                	jb     c0002ceb <error_string+0x1f>
c0002c7c:	6e                   	outsb  %ds:(%esi),(%dx)
c0002c7d:	6d                   	insl   (%dx),%es:(%edi)
c0002c7e:	65 6e                	outsb  %gs:(%esi),(%dx)
c0002c80:	74 00                	je     c0002c82 <init_all+0x82>
c0002c82:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%esi),%ebp
c0002c89:	20 70 61             	and    %dh,0x61(%eax)
c0002c8c:	72 61                	jb     c0002cef <error_string+0x23>
c0002c8e:	6d                   	insl   (%dx),%es:(%edi)
c0002c8f:	65 74 65             	gs je  c0002cf7 <error_string+0x2b>
c0002c92:	72 00                	jb     c0002c94 <init_all+0x94>
c0002c94:	6f                   	outsl  %ds:(%esi),(%dx)
c0002c95:	75 74                	jne    c0002d0b <error_string+0x3f>
c0002c97:	20 6f 66             	and    %ch,0x66(%edi)
c0002c9a:	20 6d 65             	and    %ch,0x65(%ebp)
c0002c9d:	6d                   	insl   (%dx),%es:(%edi)
c0002c9e:	6f                   	outsl  %ds:(%esi),(%dx)
c0002c9f:	72 79                	jb     c0002d1a <error_string+0x4e>
c0002ca1:	00 6f 75             	add    %ch,0x75(%edi)
c0002ca4:	74 20                	je     c0002cc6 <init_all+0xc6>
c0002ca6:	6f                   	outsl  %ds:(%esi),(%dx)
c0002ca7:	66 20 65 6e          	data16 and %ah,0x6e(%ebp)
c0002cab:	76 69                	jbe    c0002d16 <error_string+0x4a>
c0002cad:	72 6f                	jb     c0002d1e <error_string+0x52>
c0002caf:	6e                   	outsb  %ds:(%esi),(%dx)
c0002cb0:	6d                   	insl   (%dx),%es:(%edi)
c0002cb1:	65 6e                	outsb  %gs:(%esi),(%dx)
c0002cb3:	74 73                	je     c0002d28 <error_string+0x5c>
c0002cb5:	00 73 65             	add    %dh,0x65(%ebx)
c0002cb8:	67 6d                	insl   (%dx),%es:(%di)
c0002cba:	65 6e                	outsb  %gs:(%esi),(%dx)
c0002cbc:	74 61                	je     c0002d1f <error_string+0x53>
c0002cbe:	74 69                	je     c0002d29 <error_string+0x5d>
c0002cc0:	6f                   	outsl  %ds:(%esi),(%dx)
c0002cc1:	6e                   	outsb  %ds:(%esi),(%dx)
c0002cc2:	20 66 61             	and    %ah,0x61(%esi)
c0002cc5:	75 6c                	jne    c0002d33 <error_string+0x67>
c0002cc7:	74 00                	je     c0002cc9 <init_all+0xc9>
c0002cc9:	00 00                	add    %al,(%eax)
c0002ccb:	00                 	add    %al,(%eax)

c0002ccc <error_string>:
c0002ccc:	00 00                	add    %al,(%eax)
c0002cce:	00 00                	add    %al,(%eax)
c0002cd0:	60                   	pusha  
c0002cd1:	2c 00                	sub    $0x0,%al
c0002cd3:	c0 72 2c 00          	shlb   $0x0,0x2c(%edx)
c0002cd7:	c0 82 2c 00 c0 94 2c 	rolb   $0x2c,-0x6b3fffd4(%edx)
c0002cde:	00 c0                	add    %al,%al
c0002ce0:	a2 2c 00 c0 b6       	mov    %al,0xb6c0002c
c0002ce5:	2c 00                	sub    $0x0,%al
c0002ce7:	c0 30 31             	shlb   $0x31,(%eax)
c0002cea:	32 33                	xor    (%ebx),%dh
c0002cec:	34 35                	xor    $0x35,%al
c0002cee:	36 37                	ss aaa 
c0002cf0:	38 39                	cmp    %bh,(%ecx)
c0002cf2:	61                   	popa   
c0002cf3:	62 63 64             	bound  %esp,0x64(%ebx)
c0002cf6:	65 66 00 65 72       	data16 add %ah,%gs:0x72(%ebp)
c0002cfb:	72 6f                	jb     c0002d6c <error_string+0xa0>
c0002cfd:	72 20                	jb     c0002d1f <error_string+0x53>
c0002cff:	25 64 00 25 73       	and    $0x73250064,%eax
c0002d04:	00 28                	add    %ch,(%eax)
c0002d06:	6e                   	outsb  %ds:(%esi),(%dx)
c0002d07:	75 6c                	jne    c0002d75 <error_string+0xa9>
c0002d09:	6c                   	insb   (%dx),%es:(%edi)
c0002d0a:	29 00                	sub    %eax,(%eax)
c0002d0c:	42                   	inc    %edx
c0002d0d:	18 00                	sbb    %al,(%eax)
c0002d0f:	c0 f3 1a             	shl    $0x1a,%bl
c0002d12:	00 c0                	add    %al,%al
c0002d14:	dd 1a                	fstpl  (%edx)
c0002d16:	00 c0                	add    %al,%al
c0002d18:	f3 1a 00             	repz sbb (%eax),%al
c0002d1b:	c0 f3 1a             	shl    $0x1a,%bl
c0002d1e:	00 c0                	add    %al,%al
c0002d20:	f3 1a 00             	repz sbb (%eax),%al
c0002d23:	c0 f3 1a             	shl    $0x1a,%bl
c0002d26:	00 c0                	add    %al,%al
c0002d28:	20 18                	and    %bl,(%eax)
c0002d2a:	00 c0                	add    %al,%al
c0002d2c:	f3 1a 00             	repz sbb (%eax),%al
c0002d2f:	c0 f3 1a             	shl    $0x1a,%bl
c0002d32:	00 c0                	add    %al,%al
c0002d34:	e0 17                	loopne c0002d4d <error_string+0x81>
c0002d36:	00 c0                	add    %al,%al
c0002d38:	30 18                	xor    %bl,(%eax)
c0002d3a:	00 c0                	add    %al,%al
c0002d3c:	f3 1a 00             	repz sbb (%eax),%al
c0002d3f:	c0 e6 17             	shl    $0x17,%dh
c0002d42:	00 c0                	add    %al,%al
c0002d44:	ec                   	in     (%dx),%al
c0002d45:	17                   	pop    %ss
c0002d46:	00 c0                	add    %al,%al
c0002d48:	ec                   	in     (%dx),%al
c0002d49:	17                   	pop    %ss
c0002d4a:	00 c0                	add    %al,%al
c0002d4c:	ec                   	in     (%dx),%al
c0002d4d:	17                   	pop    %ss
c0002d4e:	00 c0                	add    %al,%al
c0002d50:	ec                   	in     (%dx),%al
c0002d51:	17                   	pop    %ss
c0002d52:	00 c0                	add    %al,%al
c0002d54:	ec                   	in     (%dx),%al
c0002d55:	17                   	pop    %ss
c0002d56:	00 c0                	add    %al,%al
c0002d58:	ec                   	in     (%dx),%al
c0002d59:	17                   	pop    %ss
c0002d5a:	00 c0                	add    %al,%al
c0002d5c:	ec                   	in     (%dx),%al
c0002d5d:	17                   	pop    %ss
c0002d5e:	00 c0                	add    %al,%al
c0002d60:	ec                   	in     (%dx),%al
c0002d61:	17                   	pop    %ss
c0002d62:	00 c0                	add    %al,%al
c0002d64:	ec                   	in     (%dx),%al
c0002d65:	17                   	pop    %ss
c0002d66:	00 c0                	add    %al,%al
c0002d68:	f3 1a 00             	repz sbb (%eax),%al
c0002d6b:	c0 f3 1a             	shl    $0x1a,%bl
c0002d6e:	00 c0                	add    %al,%al
c0002d70:	f3 1a 00             	repz sbb (%eax),%al
c0002d73:	c0 f3 1a             	shl    $0x1a,%bl
c0002d76:	00 c0                	add    %al,%al
c0002d78:	f3 1a 00             	repz sbb (%eax),%al
c0002d7b:	c0 f3 1a             	shl    $0x1a,%bl
c0002d7e:	00 c0                	add    %al,%al
c0002d80:	f3 1a 00             	repz sbb (%eax),%al
c0002d83:	c0 f3 1a             	shl    $0x1a,%bl
c0002d86:	00 c0                	add    %al,%al
c0002d88:	f3 1a 00             	repz sbb (%eax),%al
c0002d8b:	c0 f3 1a             	shl    $0x1a,%bl
c0002d8e:	00 c0                	add    %al,%al
c0002d90:	f3 1a 00             	repz sbb (%eax),%al
c0002d93:	c0 f3 1a             	shl    $0x1a,%bl
c0002d96:	00 c0                	add    %al,%al
c0002d98:	f3 1a 00             	repz sbb (%eax),%al
c0002d9b:	c0 f3 1a             	shl    $0x1a,%bl
c0002d9e:	00 c0                	add    %al,%al
c0002da0:	f3 1a 00             	repz sbb (%eax),%al
c0002da3:	c0 f3 1a             	shl    $0x1a,%bl
c0002da6:	00 c0                	add    %al,%al
c0002da8:	f3 1a 00             	repz sbb (%eax),%al
c0002dab:	c0 f3 1a             	shl    $0x1a,%bl
c0002dae:	00 c0                	add    %al,%al
c0002db0:	f3 1a 00             	repz sbb (%eax),%al
c0002db3:	c0 f3 1a             	shl    $0x1a,%bl
c0002db6:	00 c0                	add    %al,%al
c0002db8:	f3 1a 00             	repz sbb (%eax),%al
c0002dbb:	c0 f3 1a             	shl    $0x1a,%bl
c0002dbe:	00 c0                	add    %al,%al
c0002dc0:	f3 1a 00             	repz sbb (%eax),%al
c0002dc3:	c0 f3 1a             	shl    $0x1a,%bl
c0002dc6:	00 c0                	add    %al,%al
c0002dc8:	f3 1a 00             	repz sbb (%eax),%al
c0002dcb:	c0 f3 1a             	shl    $0x1a,%bl
c0002dce:	00 c0                	add    %al,%al
c0002dd0:	f3 1a 00             	repz sbb (%eax),%al
c0002dd3:	c0 f3 1a             	shl    $0x1a,%bl
c0002dd6:	00 c0                	add    %al,%al
c0002dd8:	f3 1a 00             	repz sbb (%eax),%al
c0002ddb:	c0 f3 1a             	shl    $0x1a,%bl
c0002dde:	00 c0                	add    %al,%al
c0002de0:	f3 1a 00             	repz sbb (%eax),%al
c0002de3:	c0 f3 1a             	shl    $0x1a,%bl
c0002de6:	00 c0                	add    %al,%al
c0002de8:	f3 1a 00             	repz sbb (%eax),%al
c0002deb:	c0 f3 1a             	shl    $0x1a,%bl
c0002dee:	00 c0                	add    %al,%al
c0002df0:	f3 1a 00             	repz sbb (%eax),%al
c0002df3:	c0 f3 1a             	shl    $0x1a,%bl
c0002df6:	00 c0                	add    %al,%al
c0002df8:	f3 1a 00             	repz sbb (%eax),%al
c0002dfb:	c0 f3 1a             	shl    $0x1a,%bl
c0002dfe:	00 c0                	add    %al,%al
c0002e00:	f3 1a 00             	repz sbb (%eax),%al
c0002e03:	c0 f3 1a             	shl    $0x1a,%bl
c0002e06:	00 c0                	add    %al,%al
c0002e08:	f3 1a 00             	repz sbb (%eax),%al
c0002e0b:	c0 74 18 00 c0       	shlb   $0xc0,0x0(%eax,%ebx,1)
c0002e10:	d8 19                	fcomps (%ecx)
c0002e12:	00 c0                	add    %al,%al
c0002e14:	98                   	cwtl   
c0002e15:	18 00                	sbb    %al,(%eax)
c0002e17:	c0 f3 1a             	shl    $0x1a,%bl
c0002e1a:	00 c0                	add    %al,%al
c0002e1c:	f3 1a 00             	repz sbb (%eax),%al
c0002e1f:	c0 f3 1a             	shl    $0x1a,%bl
c0002e22:	00 c0                	add    %al,%al
c0002e24:	f3 1a 00             	repz sbb (%eax),%al
c0002e27:	c0 f3 1a             	shl    $0x1a,%bl
c0002e2a:	00 c0                	add    %al,%al
c0002e2c:	f3 1a 00             	repz sbb (%eax),%al
c0002e2f:	c0 6b 18 00          	shrb   $0x0,0x18(%ebx)
c0002e33:	c0 f3 1a             	shl    $0x1a,%bl
c0002e36:	00 c0                	add    %al,%al
c0002e38:	f3 1a 00             	repz sbb (%eax),%al
c0002e3b:	c0 3b 1a             	sarb   $0x1a,(%ebx)
c0002e3e:	00 c0                	add    %al,%al
c0002e40:	59                   	pop    %ecx
c0002e41:	1a 00                	sbb    (%eax),%al
c0002e43:	c0 f3 1a             	shl    $0x1a,%bl
c0002e46:	00 c0                	add    %al,%al
c0002e48:	f3 1a 00             	repz sbb (%eax),%al
c0002e4b:	c0 fb 18             	sar    $0x18,%bl
c0002e4e:	00 c0                	add    %al,%al
c0002e50:	f3 1a 00             	repz sbb (%eax),%al
c0002e53:	c0 1d 1a 00 c0 f3 1a 	rcrb   $0x1a,0xf3c0001a
c0002e5a:	00 c0                	add    %al,%al
c0002e5c:	f3 1a 00             	repz sbb (%eax),%al
c0002e5f:	c0 9a 1a 00 c0 20 20 	rcrb   $0x20,0x20c0001a(%edx)
c0002e66:	20 20                	and    %ah,(%eax)
c0002e68:	20 20                	and    %ah,(%eax)
c0002e6a:	20 20                	and    %ah,(%eax)
c0002e6c:	20 20                	and    %ah,(%eax)
c0002e6e:	20 20                	and    %ah,(%eax)
c0002e70:	20 20                	and    %ah,(%eax)
c0002e72:	20 20                	and    %ah,(%eax)
c0002e74:	20 20                	and    %ah,(%eax)
c0002e76:	20 20                	and    %ah,(%eax)
c0002e78:	20 20                	and    %ah,(%eax)
c0002e7a:	20 20                	and    %ah,(%eax)
c0002e7c:	20 20                	and    %ah,(%eax)
c0002e7e:	20 20                	and    %ah,(%eax)
c0002e80:	20 20                	and    %ah,(%eax)
c0002e82:	20 20                	and    %ah,(%eax)
c0002e84:	20 20                	and    %ah,(%eax)
c0002e86:	20 20                	and    %ah,(%eax)
c0002e88:	20 20                	and    %ah,(%eax)
c0002e8a:	20 20                	and    %ah,(%eax)
c0002e8c:	20 20                	and    %ah,(%eax)
c0002e8e:	20 20                	and    %ah,(%eax)
c0002e90:	20 20                	and    %ah,(%eax)
c0002e92:	20 20                	and    %ah,(%eax)
c0002e94:	20 0a                	and    %cl,(%edx)
c0002e96:	00 00                	add    %al,(%eax)
c0002e98:	20 20                	and    %ah,(%eax)
c0002e9a:	20 20                	and    %ah,(%eax)
c0002e9c:	20 20                	and    %ah,(%eax)
c0002e9e:	20 20                	and    %ah,(%eax)
c0002ea0:	7c 5e                	jl     c0002f00 <error_string+0x234>
c0002ea2:	5e                   	pop    %esi
c0002ea3:	5e                   	pop    %esi
c0002ea4:	5e                   	pop    %esi
c0002ea5:	5e                   	pop    %esi
c0002ea6:	5e                   	pop    %esi
c0002ea7:	7c 20                	jl     c0002ec9 <error_string+0x1fd>
c0002ea9:	20 20                	and    %ah,(%eax)
c0002eab:	20 20                	and    %ah,(%eax)
c0002ead:	20 20                	and    %ah,(%eax)
c0002eaf:	20 20                	and    %ah,(%eax)
c0002eb1:	5f                   	pop    %edi
c0002eb2:	5f                   	pop    %edi
c0002eb3:	5f                   	pop    %edi
c0002eb4:	5f                   	pop    %edi
c0002eb5:	5f                   	pop    %edi
c0002eb6:	5f                   	pop    %edi
c0002eb7:	5f                   	pop    %edi
c0002eb8:	5f                   	pop    %edi
c0002eb9:	5f                   	pop    %edi
c0002eba:	5f                   	pop    %edi
c0002ebb:	5f                   	pop    %edi
c0002ebc:	5f                   	pop    %edi
c0002ebd:	5f                   	pop    %edi
c0002ebe:	5f                   	pop    %edi
c0002ebf:	5f                   	pop    %edi
c0002ec0:	5f                   	pop    %edi
c0002ec1:	5f                   	pop    %edi
c0002ec2:	5f                   	pop    %edi
c0002ec3:	5f                   	pop    %edi
c0002ec4:	5f                   	pop    %edi
c0002ec5:	5f                   	pop    %edi
c0002ec6:	5f                   	pop    %edi
c0002ec7:	5f                   	pop    %edi
c0002ec8:	5f                   	pop    %edi
c0002ec9:	20 20                	and    %ah,(%eax)
c0002ecb:	0a 00                	or     (%eax),%al
c0002ecd:	00 00                	add    %al,(%eax)
c0002ecf:	00 20                	add    %ah,(%eax)
c0002ed1:	20 20                	and    %ah,(%eax)
c0002ed3:	20 20                	and    %ah,(%eax)
c0002ed5:	20 20                	and    %ah,(%eax)
c0002ed7:	20 7c 20 20          	and    %bh,0x20(%eax,%eiz,1)
c0002edb:	20 20                	and    %ah,(%eax)
c0002edd:	20 20                	and    %ah,(%eax)
c0002edf:	7c 20                	jl     c0002f01 <error_string+0x235>
c0002ee1:	20 20                	and    %ah,(%eax)
c0002ee3:	20 20                	and    %ah,(%eax)
c0002ee5:	20 20                	and    %ah,(%eax)
c0002ee7:	20 2f                	and    %ch,(%edi)
c0002ee9:	20 20                	and    %ah,(%eax)
c0002eeb:	20 20                	and    %ah,(%eax)
c0002eed:	20 20                	and    %ah,(%eax)
c0002eef:	20 20                	and    %ah,(%eax)
c0002ef1:	20 20                	and    %ah,(%eax)
c0002ef3:	20 20                	and    %ah,(%eax)
c0002ef5:	20 20                	and    %ah,(%eax)
c0002ef7:	20 20                	and    %ah,(%eax)
c0002ef9:	20 20                	and    %ah,(%eax)
c0002efb:	20 20                	and    %ah,(%eax)
c0002efd:	20 20                	and    %ah,(%eax)
c0002eff:	20 20                	and    %ah,(%eax)
c0002f01:	5c                   	pop    %esp
c0002f02:	20 0a                	and    %cl,(%edx)
c0002f04:	00 00                	add    %al,(%eax)
c0002f06:	00 00                	add    %al,(%eax)
c0002f08:	20 20                	and    %ah,(%eax)
c0002f0a:	20 20                	and    %ah,(%eax)
c0002f0c:	20 20                	and    %ah,(%eax)
c0002f0e:	20 20                	and    %ah,(%eax)
c0002f10:	7c 20                	jl     c0002f32 <error_string+0x266>
c0002f12:	20 20                	and    %ah,(%eax)
c0002f14:	20 20                	and    %ah,(%eax)
c0002f16:	20 7c 20 20          	and    %bh,0x20(%eax,%eiz,1)
c0002f1a:	20 20                	and    %ah,(%eax)
c0002f1c:	20 20                	and    %ah,(%eax)
c0002f1e:	20 7c 20 57          	and    %bh,0x57(%eax,%eiz,1)
c0002f22:	65 6c                	gs insb (%dx),%es:(%edi)
c0002f24:	63 6f 6d             	arpl   %bp,0x6d(%edi)
c0002f27:	65 20 74 6f 20       	and    %dh,%gs:0x20(%edi,%ebp,2)
c0002f2c:	45                   	inc    %ebp
c0002f2d:	4f                   	dec    %edi
c0002f2e:	53                   	push   %ebx
c0002f2f:	2e 20 20             	and    %ah,%cs:(%eax)
c0002f32:	20 20                	and    %ah,(%eax)
c0002f34:	20 20                	and    %ah,(%eax)
c0002f36:	20 20                	and    %ah,(%eax)
c0002f38:	20 7c 20 0a          	and    %bh,0xa(%eax,%eiz,1)
c0002f3c:	00 00                	add    %al,(%eax)
c0002f3e:	00 00                	add    %al,(%eax)
c0002f40:	20 20                	and    %ah,(%eax)
c0002f42:	20 20                	and    %ah,(%eax)
c0002f44:	20 20                	and    %ah,(%eax)
c0002f46:	20 20                	and    %ah,(%eax)
c0002f48:	7c 20                	jl     c0002f6a <error_string+0x29e>
c0002f4a:	28 6f 29             	sub    %ch,0x29(%edi)
c0002f4d:	28 6f 29             	sub    %ch,0x29(%edi)
c0002f50:	20 20                	and    %ah,(%eax)
c0002f52:	20 20                	and    %ah,(%eax)
c0002f54:	20 20                	and    %ah,(%eax)
c0002f56:	20 7c 20 41          	and    %bh,0x41(%eax,%eiz,1)
c0002f5a:	20 75 6e             	and    %dh,0x6e(%ebp)
c0002f5d:	69 78 2d 6c 69 6b 65 	imul   $0x656b696c,0x2d(%eax),%edi
c0002f64:	20 73 79             	and    %dh,0x79(%ebx)
c0002f67:	73 74                	jae    c0002fdd <error_string+0x311>
c0002f69:	65 6d                	gs insl (%dx),%es:(%edi)
c0002f6b:	20 20                	and    %ah,(%eax)
c0002f6d:	20 20                	and    %ah,(%eax)
c0002f6f:	20 20                	and    %ah,(%eax)
c0002f71:	7c 20                	jl     c0002f93 <error_string+0x2c7>
c0002f73:	0a 00                	or     (%eax),%al
c0002f75:	00 00                	add    %al,(%eax)
c0002f77:	00 20                	add    %ah,(%eax)
c0002f79:	20 20                	and    %ah,(%eax)
c0002f7b:	20 20                	and    %ah,(%eax)
c0002f7d:	20 20                	and    %ah,(%eax)
c0002f7f:	40                   	inc    %eax
c0002f80:	20 20                	and    %ah,(%eax)
c0002f82:	20 20                	and    %ah,(%eax)
c0002f84:	20 20                	and    %ah,(%eax)
c0002f86:	5f                   	pop    %edi
c0002f87:	29 20                	sub    %esp,(%eax)
c0002f89:	20 20                	and    %ah,(%eax)
c0002f8b:	20 20                	and    %ah,(%eax)
c0002f8d:	20 20                	and    %ah,(%eax)
c0002f8f:	7c 20                	jl     c0002fb1 <error_string+0x2e5>
c0002f91:	64 65 76 65          	fs gs jbe c0002ffa <error_string+0x32e>
c0002f95:	6c                   	insb   (%dx),%es:(%edi)
c0002f96:	6f                   	outsl  %ds:(%esi),(%dx)
c0002f97:	70 65                	jo     c0002ffe <error_string+0x332>
c0002f99:	64 20 62 79          	and    %ah,%fs:0x79(%edx)
c0002f9d:	20 40 45             	and    %al,0x45(%eax)
c0002fa0:	6c                   	insb   (%dx),%es:(%edi)
c0002fa1:	69 6f 74 59 61 6e 67 	imul   $0x676e6159,0x74(%edi),%ebp
c0002fa8:	20 7c 20 0a          	and    %bh,0xa(%eax,%eiz,1)
c0002fac:	00 00                	add    %al,(%eax)
c0002fae:	00 00                	add    %al,(%eax)
c0002fb0:	20 20                	and    %ah,(%eax)
c0002fb2:	20 20                	and    %ah,(%eax)
c0002fb4:	20 20                	and    %ah,(%eax)
c0002fb6:	20 20                	and    %ah,(%eax)
c0002fb8:	7c 20                	jl     c0002fda <error_string+0x30e>
c0002fba:	2c 5f                	sub    $0x5f,%al
c0002fbc:	5f                   	pop    %edi
c0002fbd:	5f                   	pop    %edi
c0002fbe:	7c 20                	jl     c0002fe0 <error_string+0x314>
c0002fc0:	20 20                	and    %ah,(%eax)
c0002fc2:	20 20                	and    %ah,(%eax)
c0002fc4:	20 2c 2c             	and    %ch,(%esp,%ebp,1)
c0002fc7:	7c 20                	jl     c0002fe9 <error_string+0x31d>
c0002fc9:	20 20                	and    %ah,(%eax)
c0002fcb:	20 20                	and    %ah,(%eax)
c0002fcd:	20 20                	and    %ah,(%eax)
c0002fcf:	20 20                	and    %ah,(%eax)
c0002fd1:	20 20                	and    %ah,(%eax)
c0002fd3:	20 20                	and    %ah,(%eax)
c0002fd5:	20 20                	and    %ah,(%eax)
c0002fd7:	20 20                	and    %ah,(%eax)
c0002fd9:	20 20                	and    %ah,(%eax)
c0002fdb:	20 20                	and    %ah,(%eax)
c0002fdd:	20 20                	and    %ah,(%eax)
c0002fdf:	20 20                	and    %ah,(%eax)
c0002fe1:	7c 20                	jl     c0003003 <error_string+0x337>
c0002fe3:	0a 00                	or     (%eax),%al
c0002fe5:	00 00                	add    %al,(%eax)
c0002fe7:	00 20                	add    %ah,(%eax)
c0002fe9:	20 20                	and    %ah,(%eax)
c0002feb:	20 20                	and    %ah,(%eax)
c0002fed:	20 20                	and    %ah,(%eax)
c0002fef:	20 7c 20 20          	and    %bh,0x20(%eax,%eiz,1)
c0002ff3:	20 2f                	and    %ch,(%edi)
c0002ff5:	20 20                	and    %ah,(%eax)
c0002ff7:	20 20                	and    %ah,(%eax)
c0002ff9:	2e 2e 27             	cs cs daa 
c0002ffc:	27                   	daa    
c0002ffd:	20 20                	and    %ah,(%eax)
c0002fff:	20 5c 5f 5f          	and    %bl,0x5f(%edi,%ebx,2)
c0003003:	5f                   	pop    %edi
c0003004:	5f                   	pop    %edi
c0003005:	5f                   	pop    %edi
c0003006:	5f                   	pop    %edi
c0003007:	5f                   	pop    %edi
c0003008:	5f                   	pop    %edi
c0003009:	5f                   	pop    %edi
c000300a:	5f                   	pop    %edi
c000300b:	5f                   	pop    %edi
c000300c:	5f                   	pop    %edi
c000300d:	5f                   	pop    %edi
c000300e:	5f                   	pop    %edi
c000300f:	5f                   	pop    %edi
c0003010:	5f                   	pop    %edi
c0003011:	5f                   	pop    %edi
c0003012:	5f                   	pop    %edi
c0003013:	5f                   	pop    %edi
c0003014:	5f                   	pop    %edi
c0003015:	5f                   	pop    %edi
c0003016:	5f                   	pop    %edi
c0003017:	5f                   	pop    %edi
c0003018:	2f                   	das    
c0003019:	20 20                	and    %ah,(%eax)
c000301b:	0a 00                	or     (%eax),%al
c000301d:	00 00                	add    %al,(%eax)
c000301f:	00 20                	add    %ah,(%eax)
c0003021:	20 20                	and    %ah,(%eax)
c0003023:	20 20                	and    %ah,(%eax)
c0003025:	20 20                	and    %ah,(%eax)
c0003027:	2f                   	das    
c0003028:	5f                   	pop    %edi
c0003029:	5f                   	pop    %edi
c000302a:	5f                   	pop    %edi
c000302b:	5f                   	pop    %edi
c000302c:	5c                   	pop    %esp
c000302d:	20 20                	and    %ah,(%eax)
c000302f:	20 20                	and    %ah,(%eax)
c0003031:	20 20                	and    %ah,(%eax)
c0003033:	20 20                	and    %ah,(%eax)
c0003035:	20 20                	and    %ah,(%eax)
c0003037:	20 20                	and    %ah,(%eax)
c0003039:	20 20                	and    %ah,(%eax)
c000303b:	20 20                	and    %ah,(%eax)
c000303d:	20 20                	and    %ah,(%eax)
c000303f:	20 20                	and    %ah,(%eax)
c0003041:	20 20                	and    %ah,(%eax)
c0003043:	20 20                	and    %ah,(%eax)
c0003045:	20 20                	and    %ah,(%eax)
c0003047:	20 20                	and    %ah,(%eax)
c0003049:	20 20                	and    %ah,(%eax)
c000304b:	20 20                	and    %ah,(%eax)
c000304d:	20 20                	and    %ah,(%eax)
c000304f:	20 20                	and    %ah,(%eax)
c0003051:	20 20                	and    %ah,(%eax)
c0003053:	0a 00                	or     (%eax),%al
c0003055:	00 00                	add    %al,(%eax)
c0003057:	00 20                	add    %ah,(%eax)
c0003059:	20 20                	and    %ah,(%eax)
c000305b:	20 20                	and    %ah,(%eax)
c000305d:	20 20                	and    %ah,(%eax)
c000305f:	20 20                	and    %ah,(%eax)
c0003061:	20 20                	and    %ah,(%eax)
c0003063:	20 20                	and    %ah,(%eax)
c0003065:	20 20                	and    %ah,(%eax)
c0003067:	20 20                	and    %ah,(%eax)
c0003069:	20 20                	and    %ah,(%eax)
c000306b:	20 20                	and    %ah,(%eax)
c000306d:	20 20                	and    %ah,(%eax)
c000306f:	20 20                	and    %ah,(%eax)
c0003071:	20 20                	and    %ah,(%eax)
c0003073:	20 20                	and    %ah,(%eax)
c0003075:	20 20                	and    %ah,(%eax)
c0003077:	20 20                	and    %ah,(%eax)
c0003079:	20 20                	and    %ah,(%eax)
c000307b:	20 20                	and    %ah,(%eax)
c000307d:	20 20                	and    %ah,(%eax)
c000307f:	20 20                	and    %ah,(%eax)
c0003081:	20 20                	and    %ah,(%eax)
c0003083:	20 20                	and    %ah,(%eax)
c0003085:	20 20                	and    %ah,(%eax)
c0003087:	20 20                	and    %ah,(%eax)
c0003089:	20 0a                	and    %cl,(%edx)
c000308b:	00 25 63 00 0a 00    	add    %ah,0xa0063
c0003091:	65 66 6c             	gs data16 insb (%dx),%es:(%edi)
c0003094:	61                   	popa   
c0003095:	67 73 3a             	addr16 jae c00030d2 <error_string+0x406>
c0003098:	30 78 25             	xor    %bh,0x25(%eax)
c000309b:	30 38                	xor    %bh,(%eax)
c000309d:	78 0a                	js     c00030a9 <error_string+0x3dd>
c000309f:	00 65 62             	add    %ah,0x62(%ebp)
c00030a2:	70 3a                	jo     c00030de <error_string+0x412>
c00030a4:	30 78 25             	xor    %bh,0x25(%eax)
c00030a7:	30 38                	xor    %bh,(%eax)
c00030a9:	78 0a                	js     c00030b5 <error_string+0x3e9>
c00030ab:	00 65 73             	add    %ah,0x73(%ebp)
c00030ae:	70 3a                	jo     c00030ea <error_string+0x41e>
c00030b0:	30 78 25             	xor    %bh,0x25(%eax)
c00030b3:	30 38                	xor    %bh,(%eax)
c00030b5:	78 0a                	js     c00030c1 <error_string+0x3f5>
c00030b7:	00 23                	add    %ah,(%ebx)
c00030b9:	44                   	inc    %esp
c00030ba:	45                   	inc    %ebp
c00030bb:	20 44 69 76          	and    %al,0x76(%ecx,%ebp,2)
c00030bf:	69 64 65 20 45 72 72 	imul   $0x6f727245,0x20(%ebp,%eiz,2),%esp
c00030c6:	6f 
c00030c7:	72 00                	jb     c00030c9 <error_string+0x3fd>
c00030c9:	23 44 42 20          	and    0x20(%edx,%eax,2),%eax
c00030cd:	52                   	push   %edx
c00030ce:	45                   	inc    %ebp
c00030cf:	53                   	push   %ebx
c00030d0:	45                   	inc    %ebp
c00030d1:	52                   	push   %edx
c00030d2:	56                   	push   %esi
c00030d3:	45                   	inc    %ebp
c00030d4:	44                   	inc    %esp
c00030d5:	00 e2                	add    %ah,%dl
c00030d7:	80 94 20 4e 4d 49 20 	adcb   $0x49,0x20494d4e(%eax,%eiz,1)
c00030de:	49 
c00030df:	6e                   	outsb  %ds:(%esi),(%dx)
c00030e0:	74 65                	je     c0003147 <error_string+0x47b>
c00030e2:	72 72                	jb     c0003156 <error_string+0x48a>
c00030e4:	75 70                	jne    c0003156 <error_string+0x48a>
c00030e6:	74 00                	je     c00030e8 <error_string+0x41c>
c00030e8:	23 42 50             	and    0x50(%edx),%eax
c00030eb:	20 42 72             	and    %al,0x72(%edx)
c00030ee:	65 61                	gs popa 
c00030f0:	6b 70 6f 69          	imul   $0x69,0x6f(%eax),%esi
c00030f4:	6e                   	outsb  %ds:(%esi),(%dx)
c00030f5:	74 00                	je     c00030f7 <error_string+0x42b>
c00030f7:	20 23                	and    %ah,(%ebx)
c00030f9:	4f                   	dec    %edi
c00030fa:	46                   	inc    %esi
c00030fb:	20 4f 76             	and    %cl,0x76(%edi)
c00030fe:	65 72 66             	gs jb  c0003167 <error_string+0x49b>
c0003101:	6c                   	insb   (%dx),%es:(%edi)
c0003102:	6f                   	outsl  %ds:(%esi),(%dx)
c0003103:	77 00                	ja     c0003105 <error_string+0x439>
c0003105:	23 42 52             	and    0x52(%edx),%eax
c0003108:	20 42 4f             	and    %al,0x4f(%edx)
c000310b:	55                   	push   %ebp
c000310c:	4e                   	dec    %esi
c000310d:	44                   	inc    %esp
c000310e:	20 52 61             	and    %dl,0x61(%edx)
c0003111:	6e                   	outsb  %ds:(%esi),(%dx)
c0003112:	67 65 20 45 78       	and    %al,%gs:0x78(%di)
c0003117:	63 65 65             	arpl   %sp,0x65(%ebp)
c000311a:	64 65 64 00 00       	fs gs add %al,%fs:(%eax)
c000311f:	00 23                	add    %ah,(%ebx)
c0003121:	55                   	push   %ebp
c0003122:	44                   	inc    %esp
c0003123:	20 49 6e             	and    %cl,0x6e(%ecx)
c0003126:	76 61                	jbe    c0003189 <error_string+0x4bd>
c0003128:	6c                   	insb   (%dx),%es:(%edi)
c0003129:	69 64 20 4f 70 63 6f 	imul   $0x646f6370,0x4f(%eax,%eiz,1),%esp
c0003130:	64 
c0003131:	65 20 28             	and    %ch,%gs:(%eax)
c0003134:	55                   	push   %ebp
c0003135:	6e                   	outsb  %ds:(%esi),(%dx)
c0003136:	64 65 66 69 6e 65 64 	fs imul $0x2064,%gs:0x65(%esi),%bp
c000313d:	20 
c000313e:	4f                   	dec    %edi
c000313f:	70 63                	jo     c00031a4 <error_string+0x4d8>
c0003141:	6f                   	outsl  %ds:(%esi),(%dx)
c0003142:	64 65 29 00          	fs sub %eax,%gs:(%eax)
c0003146:	00 00                	add    %al,(%eax)
c0003148:	20 23                	and    %ah,(%ebx)
c000314a:	4e                   	dec    %esi
c000314b:	4d                   	dec    %ebp
c000314c:	20 44 65 76          	and    %al,0x76(%ebp,%eiz,2)
c0003150:	69 63 65 20 4e 6f 74 	imul   $0x746f4e20,0x65(%ebx),%esp
c0003157:	20 41 76             	and    %al,0x76(%ecx)
c000315a:	61                   	popa   
c000315b:	69 6c 61 62 6c 65 20 	imul   $0x2820656c,0x62(%ecx,%eiz,2),%ebp
c0003162:	28 
c0003163:	4e                   	dec    %esi
c0003164:	6f                   	outsl  %ds:(%esi),(%dx)
c0003165:	20 4d 61             	and    %cl,0x61(%ebp)
c0003168:	74 68                	je     c00031d2 <error_string+0x506>
c000316a:	20 43 6f             	and    %al,0x6f(%ebx)
c000316d:	70 72                	jo     c00031e1 <error_string+0x515>
c000316f:	6f                   	outsl  %ds:(%esi),(%dx)
c0003170:	63 65 73             	arpl   %sp,0x73(%ebp)
c0003173:	73 6f                	jae    c00031e4 <error_string+0x518>
c0003175:	72 29                	jb     c00031a0 <error_string+0x4d4>
c0003177:	00 23                	add    %ah,(%ebx)
c0003179:	44                   	inc    %esp
c000317a:	46                   	inc    %esi
c000317b:	20 44 6f 75          	and    %al,0x75(%edi,%ebp,2)
c000317f:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
c0003183:	46                   	inc    %esi
c0003184:	61                   	popa   
c0003185:	75 6c                	jne    c00031f3 <error_string+0x527>
c0003187:	74 00                	je     c0003189 <error_string+0x4bd>
c0003189:	00 00                	add    %al,(%eax)
c000318b:	00 43 6f             	add    %al,0x6f(%ebx)
c000318e:	70 72                	jo     c0003202 <error_string+0x536>
c0003190:	6f                   	outsl  %ds:(%esi),(%dx)
c0003191:	63 65 73             	arpl   %sp,0x73(%ebp)
c0003194:	73 6f                	jae    c0003205 <error_string+0x539>
c0003196:	72 20                	jb     c00031b8 <error_string+0x4ec>
c0003198:	53                   	push   %ebx
c0003199:	65 67 6d             	gs insl (%dx),%es:(%di)
c000319c:	65 6e                	outsb  %gs:(%esi),(%dx)
c000319e:	74 20                	je     c00031c0 <error_string+0x4f4>
c00031a0:	4f                   	dec    %edi
c00031a1:	76 65                	jbe    c0003208 <error_string+0x53c>
c00031a3:	72 72                	jb     c0003217 <error_string+0x54b>
c00031a5:	75 6e                	jne    c0003215 <error_string+0x549>
c00031a7:	20 28                	and    %ch,(%eax)
c00031a9:	72 65                	jb     c0003210 <error_string+0x544>
c00031ab:	73 65                	jae    c0003212 <error_string+0x546>
c00031ad:	72 76                	jb     c0003225 <error_string+0x559>
c00031af:	65 64 29 00          	gs sub %eax,%fs:(%eax)
c00031b3:	20 23                	and    %ah,(%ebx)
c00031b5:	54                   	push   %esp
c00031b6:	53                   	push   %ebx
c00031b7:	20 49 6e             	and    %cl,0x6e(%ecx)
c00031ba:	76 61                	jbe    c000321d <error_string+0x551>
c00031bc:	6c                   	insb   (%dx),%es:(%edi)
c00031bd:	69 64 20 54 53 53 00 	imul   $0x20005353,0x54(%eax,%eiz,1),%esp
c00031c4:	20 
c00031c5:	23 4e 50             	and    0x50(%esi),%ecx
c00031c8:	20 53 65             	and    %dl,0x65(%ebx)
c00031cb:	67 6d                	insl   (%dx),%es:(%di)
c00031cd:	65 6e                	outsb  %gs:(%esi),(%dx)
c00031cf:	74 20                	je     c00031f1 <error_string+0x525>
c00031d1:	4e                   	dec    %esi
c00031d2:	6f                   	outsl  %ds:(%esi),(%dx)
c00031d3:	74 20                	je     c00031f5 <error_string+0x529>
c00031d5:	50                   	push   %eax
c00031d6:	72 65                	jb     c000323d <error_string+0x571>
c00031d8:	73 65                	jae    c000323f <error_string+0x573>
c00031da:	6e                   	outsb  %ds:(%esi),(%dx)
c00031db:	74 00                	je     c00031dd <error_string+0x511>
c00031dd:	20 23                	and    %ah,(%ebx)
c00031df:	53                   	push   %ebx
c00031e0:	53                   	push   %ebx
c00031e1:	20 53 74             	and    %dl,0x74(%ebx)
c00031e4:	61                   	popa   
c00031e5:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
c00031e8:	53                   	push   %ebx
c00031e9:	65 67 6d             	gs insl (%dx),%es:(%di)
c00031ec:	65 6e                	outsb  %gs:(%esi),(%dx)
c00031ee:	74 20                	je     c0003210 <error_string+0x544>
c00031f0:	46                   	inc    %esi
c00031f1:	61                   	popa   
c00031f2:	75 6c                	jne    c0003260 <error_string+0x594>
c00031f4:	74 00                	je     c00031f6 <error_string+0x52a>
c00031f6:	20 23                	and    %ah,(%ebx)
c00031f8:	47                   	inc    %edi
c00031f9:	50                   	push   %eax
c00031fa:	20 47 65             	and    %al,0x65(%edi)
c00031fd:	6e                   	outsb  %ds:(%esi),(%dx)
c00031fe:	65 72 61             	gs jb  c0003262 <error_string+0x596>
c0003201:	6c                   	insb   (%dx),%es:(%edi)
c0003202:	20 50 72             	and    %dl,0x72(%eax)
c0003205:	6f                   	outsl  %ds:(%esi),(%dx)
c0003206:	74 65                	je     c000326d <error_string+0x5a1>
c0003208:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000320c:	6e                   	outsb  %ds:(%esi),(%dx)
c000320d:	00 20                	add    %ah,(%eax)
c000320f:	23 50 46             	and    0x46(%eax),%edx
c0003212:	20 50 61             	and    %dl,0x61(%eax)
c0003215:	67 65 20 46 61       	and    %al,%gs:0x61(%bp)
c000321a:	75 6c                	jne    c0003288 <error_string+0x5bc>
c000321c:	74 00                	je     c000321e <error_string+0x552>
c000321e:	00 00                	add    %al,(%eax)
c0003220:	e2 80                	loop   c00031a2 <error_string+0x4d6>
c0003222:	94                   	xchg   %eax,%esp
c0003223:	20 28                	and    %ch,(%eax)
c0003225:	49                   	dec    %ecx
c0003226:	6e                   	outsb  %ds:(%esi),(%dx)
c0003227:	74 65                	je     c000328e <error_string+0x5c2>
c0003229:	6c                   	insb   (%dx),%es:(%edi)
c000322a:	20 72 65             	and    %dh,0x65(%edx)
c000322d:	73 65                	jae    c0003294 <error_string+0x5c8>
c000322f:	72 76                	jb     c00032a7 <error_string+0x5db>
c0003231:	65 64 2e 20 44 6f 20 	gs fs and %al,%cs:0x20(%edi,%ebp,2)
c0003238:	6e                   	outsb  %ds:(%esi),(%dx)
c0003239:	6f                   	outsl  %ds:(%esi),(%dx)
c000323a:	74 20                	je     c000325c <error_string+0x590>
c000323c:	75 73                	jne    c00032b1 <error_string+0x5e5>
c000323e:	65 2e 29 00          	gs sub %eax,%cs:(%eax)
c0003242:	00 00                	add    %al,(%eax)
c0003244:	23 4d 46             	and    0x46(%ebp),%ecx
c0003247:	20 78 38             	and    %bh,0x38(%eax)
c000324a:	37                   	aaa    
c000324b:	20 46 50             	and    %al,0x50(%esi)
c000324e:	55                   	push   %ebp
c000324f:	20 46 6c             	and    %al,0x6c(%esi)
c0003252:	6f                   	outsl  %ds:(%esi),(%dx)
c0003253:	61                   	popa   
c0003254:	74 69                	je     c00032bf <error_string+0x5f3>
c0003256:	6e                   	outsb  %ds:(%esi),(%dx)
c0003257:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000325d:	74 20                	je     c000327f <error_string+0x5b3>
c000325f:	45                   	inc    %ebp
c0003260:	72 72                	jb     c00032d4 <error_string+0x608>
c0003262:	6f                   	outsl  %ds:(%esi),(%dx)
c0003263:	72 20                	jb     c0003285 <error_string+0x5b9>
c0003265:	28 4d 61             	sub    %cl,0x61(%ebp)
c0003268:	74 68                	je     c00032d2 <error_string+0x606>
c000326a:	20 46 61             	and    %al,0x61(%esi)
c000326d:	75 6c                	jne    c00032db <error_string+0x60f>
c000326f:	74 29                	je     c000329a <error_string+0x5ce>
c0003271:	00 20                	add    %ah,(%eax)
c0003273:	23 41 43             	and    0x43(%ecx),%eax
c0003276:	20 41 6c             	and    %al,0x6c(%ecx)
c0003279:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%edi),%esp
c0003280:	20 43 68             	and    %al,0x68(%ebx)
c0003283:	65 63 6b 00          	arpl   %bp,%gs:0x0(%ebx)
c0003287:	20 23                	and    %ah,(%ebx)
c0003289:	4d                   	dec    %ebp
c000328a:	43                   	inc    %ebx
c000328b:	20 4d 61             	and    %cl,0x61(%ebp)
c000328e:	63 68 69             	arpl   %bp,0x69(%eax)
c0003291:	6e                   	outsb  %ds:(%esi),(%dx)
c0003292:	65 20 43 68          	and    %al,%gs:0x68(%ebx)
c0003296:	65 63 6b 00          	arpl   %bp,%gs:0x0(%ebx)
c000329a:	00 00                	add    %al,(%eax)
c000329c:	23 58 46             	and    0x46(%eax),%ebx
c000329f:	20 53 49             	and    %dl,0x49(%ebx)
c00032a2:	4d                   	dec    %ebp
c00032a3:	44                   	inc    %esp
c00032a4:	20 46 6c             	and    %al,0x6c(%esi)
c00032a7:	6f                   	outsl  %ds:(%esi),(%dx)
c00032a8:	61                   	popa   
c00032a9:	74 69                	je     c0003314 <error_string+0x648>
c00032ab:	6e                   	outsb  %ds:(%esi),(%dx)
c00032ac:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c00032b2:	74 20                	je     c00032d4 <error_string+0x608>
c00032b4:	45                   	inc    %ebp
c00032b5:	78 63                	js     c000331a <error_string+0x64e>
c00032b7:	65 70 74             	gs jo  c000332e <error_string+0x662>
c00032ba:	69 6f 6e 00 55 6e 6b 	imul   $0x6b6e5500,0x6e(%edi),%ebp
c00032c1:	6e                   	outsb  %ds:(%esi),(%dx)
c00032c2:	6f                   	outsl  %ds:(%esi),(%dx)
c00032c3:	77 6e                	ja     c0003333 <error_string+0x667>
c00032c5:	00 38                	add    %bh,(%eax)
c00032c7:	32 35 39 41 20 49    	xor    0x49204139,%dh
c00032cd:	52                   	push   %edx
c00032ce:	51                   	push   %ecx
c00032cf:	30 00                	xor    %al,(%eax)
c00032d1:	20 20                	and    %ah,(%eax)
c00032d3:	20 20                	and    %ah,(%eax)
c00032d5:	70 69                	jo     c0003340 <error_string+0x674>
c00032d7:	63 5f 69             	arpl   %bx,0x69(%edi)
c00032da:	6e                   	outsb  %ds:(%esi),(%dx)
c00032db:	69 74 20 64 6f 6e 65 	imul   $0xa656e6f,0x64(%eax,%eiz,1),%esi
c00032e2:	0a 
c00032e3:	00 20                	add    %ah,(%eax)
c00032e5:	20 20                	and    %ah,(%eax)
c00032e7:	20 69 64             	and    %ch,0x64(%ecx)
c00032ea:	74 5f                	je     c000334b <error_string+0x67f>
c00032ec:	64 65 73 63          	fs gs jae c0003353 <error_string+0x687>
c00032f0:	5f                   	pop    %edi
c00032f1:	69 6e 69 74 20 64 6f 	imul   $0x6f642074,0x69(%esi),%ebp
c00032f8:	6e                   	outsb  %ds:(%esi),(%dx)
c00032f9:	65 0a 00             	or     %gs:(%eax),%al
c00032fc:	69 6e 74 65 72 72 75 	imul   $0x75727265,0x74(%esi),%ebp
c0003303:	70 74                	jo     c0003379 <error_string+0x6ad>
c0003305:	20 76 65             	and    %dh,0x65(%esi)
c0003308:	63 74 6f 72          	arpl   %si,0x72(%edi,%ebp,2)
c000330c:	20 4e 4f             	and    %cl,0x4f(%esi)
c000330f:	2e 25 64 20 20 00    	cs and $0x202064,%eax
c0003315:	25 73 0a 00 69       	and    $0x69000a73,%eax
c000331a:	64 74 5f             	fs je  c000337c <error_string+0x6b0>
c000331d:	69 6e 69 74 5f 73 74 	imul   $0x74735f74,0x69(%esi),%ebp
c0003324:	61                   	popa   
c0003325:	72 74                	jb     c000339b <error_string+0x6cf>
c0003327:	0a 00                	or     (%eax),%al
c0003329:	69 64 74 5f 69 6e 69 	imul   $0x74696e69,0x5f(%esp,%esi,2),%esp
c0003330:	74 
c0003331:	20 64 6f 6e          	and    %ah,0x6e(%edi,%ebp,2)
c0003335:	65 0a 00             	or     %gs:(%eax),%al
c0003338:	69 6e 69 74 5f 61 6c 	imul   $0x6c615f74,0x69(%esi),%ebp
c000333f:	6c                   	insb   (%dx),%es:(%edi)
c0003340:	20 73 74             	and    %dh,0x74(%ebx)
c0003343:	61                   	popa   
c0003344:	72 74                	jb     c00033ba <error_string+0x6ee>
c0003346:	0a 00                	or     (%eax),%al

Disassembly of section .eh_frame:

c0003348 <.eh_frame>:
c0003348:	14 00                	adc    $0x0,%al
c000334a:	00 00                	add    %al,(%eax)
c000334c:	00 00                	add    %al,(%eax)
c000334e:	00 00                	add    %al,(%eax)
c0003350:	01 7a 52             	add    %edi,0x52(%edx)
c0003353:	00 01                	add    %al,(%ecx)
c0003355:	7c 08                	jl     c000335f <error_string+0x693>
c0003357:	01 1b                	add    %ebx,(%ebx)
c0003359:	0c 04                	or     $0x4,%al
c000335b:	04 88                	add    $0x88,%al
c000335d:	01 00                	add    %eax,(%eax)
c000335f:	00 20                	add    %ah,(%eax)
c0003361:	00 00                	add    %al,(%eax)
c0003363:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003366:	00 00                	add    %al,(%eax)
c0003368:	98                   	cwtl   
c0003369:	e1 ff                	loope  c000336a <error_string+0x69e>
c000336b:	ff 45 00             	incl   0x0(%ebp)
c000336e:	00 00                	add    %al,(%eax)
c0003370:	00 44 0c 01          	add    %al,0x1(%esp,%ecx,1)
c0003374:	00 49 10             	add    %cl,0x10(%ecx)
c0003377:	05 02 75 00 41       	add    $0x41007502,%eax
c000337c:	0f 03 75 7c          	lsl    0x7c(%ebp),%esi
c0003380:	06                   	push   %es
c0003381:	00 00                	add    %al,(%eax)
c0003383:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003386:	00 00                	add    %al,(%eax)
c0003388:	40                   	inc    %eax
c0003389:	00 00                	add    %al,(%eax)
c000338b:	00 b9 e1 ff ff 2f    	add    %bh,0x2fffffe1(%ecx)
c0003391:	00 00                	add    %al,(%eax)
c0003393:	00 00                	add    %al,(%eax)
c0003395:	41                   	inc    %ecx
c0003396:	0e                   	push   %cs
c0003397:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000339d:	6b c5 0c             	imul   $0xc,%ebp,%eax
c00033a0:	04 04                	add    $0x4,%al
c00033a2:	00 00                	add    %al,(%eax)
c00033a4:	1c 00                	sbb    $0x0,%al
c00033a6:	00 00                	add    %al,(%eax)
c00033a8:	60                   	pusha  
c00033a9:	00 00                	add    %al,(%eax)
c00033ab:	00 c8                	add    %cl,%al
c00033ad:	e1 ff                	loope  c00033ae <error_string+0x6e2>
c00033af:	ff 37                	pushl  (%edi)
c00033b1:	00 00                	add    %al,(%eax)
c00033b3:	00 00                	add    %al,(%eax)
c00033b5:	41                   	inc    %ecx
c00033b6:	0e                   	push   %cs
c00033b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00033bd:	73 c5                	jae    c0003384 <error_string+0x6b8>
c00033bf:	0c 04                	or     $0x4,%al
c00033c1:	04 00                	add    $0x0,%al
c00033c3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00033c6:	00 00                	add    %al,(%eax)
c00033c8:	80 00 00             	addb   $0x0,(%eax)
c00033cb:	00 df                	add    %bl,%bh
c00033cd:	e1 ff                	loope  c00033ce <error_string+0x702>
c00033cf:	ff 31                	pushl  (%ecx)
c00033d1:	00 00                	add    %al,(%eax)
c00033d3:	00 00                	add    %al,(%eax)
c00033d5:	41                   	inc    %ecx
c00033d6:	0e                   	push   %cs
c00033d7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00033dd:	6d                   	insl   (%dx),%es:(%edi)
c00033de:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00033e1:	04 00                	add    $0x0,%al
c00033e3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00033e6:	00 00                	add    %al,(%eax)
c00033e8:	a0 00 00 00 f0       	mov    0xf0000000,%al
c00033ed:	e1 ff                	loope  c00033ee <error_string+0x722>
c00033ef:	ff                   	(bad)  
c00033f0:	3c 00                	cmp    $0x0,%al
c00033f2:	00 00                	add    %al,(%eax)
c00033f4:	00 41 0e             	add    %al,0xe(%ecx)
c00033f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00033fd:	78 c5                	js     c00033c4 <error_string+0x6f8>
c00033ff:	0c 04                	or     $0x4,%al
c0003401:	04 00                	add    $0x0,%al
c0003403:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003406:	00 00                	add    %al,(%eax)
c0003408:	c0 00 00             	rolb   $0x0,(%eax)
c000340b:	00 0c e2             	add    %cl,(%edx,%eiz,8)
c000340e:	ff                   	(bad)  
c000340f:	ff 2b                	ljmp   *(%ebx)
c0003411:	00 00                	add    %al,(%eax)
c0003413:	00 00                	add    %al,(%eax)
c0003415:	41                   	inc    %ecx
c0003416:	0e                   	push   %cs
c0003417:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000341d:	67 c5 0c             	lds    (%si),%ecx
c0003420:	04 04                	add    $0x4,%al
c0003422:	00 00                	add    %al,(%eax)
c0003424:	1c 00                	sbb    $0x0,%al
c0003426:	00 00                	add    %al,(%eax)
c0003428:	e0 00                	loopne c000342a <error_string+0x75e>
c000342a:	00 00                	add    %al,(%eax)
c000342c:	17                   	pop    %ss
c000342d:	e2 ff                	loop   c000342e <error_string+0x762>
c000342f:	ff 95 00 00 00 00    	call   *0x0(%ebp)
c0003435:	41                   	inc    %ecx
c0003436:	0e                   	push   %cs
c0003437:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000343d:	02 91 c5 0c 04 04    	add    0x4040cc5(%ecx),%dl
c0003443:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003446:	00 00                	add    %al,(%eax)
c0003448:	00 01                	add    %al,(%ecx)
c000344a:	00 00                	add    %al,(%eax)
c000344c:	8c e2                	mov    %fs,%edx
c000344e:	ff                   	(bad)  
c000344f:	ff 42 00             	incl   0x0(%edx)
c0003452:	00 00                	add    %al,(%eax)
c0003454:	00 41 0e             	add    %al,0xe(%ecx)
c0003457:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000345d:	7e c5                	jle    c0003424 <error_string+0x758>
c000345f:	0c 04                	or     $0x4,%al
c0003461:	04 00                	add    $0x0,%al
c0003463:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003466:	00 00                	add    %al,(%eax)
c0003468:	20 01                	and    %al,(%ecx)
c000346a:	00 00                	add    %al,(%eax)
c000346c:	ae                   	scas   %es:(%edi),%al
c000346d:	e2 ff                	loop   c000346e <error_string+0x7a2>
c000346f:	ff 42 00             	incl   0x0(%edx)
c0003472:	00 00                	add    %al,(%eax)
c0003474:	00 41 0e             	add    %al,0xe(%ecx)
c0003477:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000347d:	7e c5                	jle    c0003444 <error_string+0x778>
c000347f:	0c 04                	or     $0x4,%al
c0003481:	04 00                	add    $0x0,%al
c0003483:	00 28                	add    %ch,(%eax)
c0003485:	00 00                	add    %al,(%eax)
c0003487:	00 40 01             	add    %al,0x1(%eax)
c000348a:	00 00                	add    %al,(%eax)
c000348c:	d0 e2                	shl    %dl
c000348e:	ff                   	(bad)  
c000348f:	ff d1                	call   *%ecx
c0003491:	03 00                	add    (%eax),%eax
c0003493:	00 00                	add    %al,(%eax)
c0003495:	41                   	inc    %ecx
c0003496:	0e                   	push   %cs
c0003497:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000349d:	45                   	inc    %ebp
c000349e:	86 03                	xchg   %al,(%ebx)
c00034a0:	83 04 03 c6          	addl   $0xffffffc6,(%ebx,%eax,1)
c00034a4:	03 c3                	add    %ebx,%eax
c00034a6:	41                   	inc    %ecx
c00034a7:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
c00034ab:	04 04                	add    $0x4,%al
c00034ad:	00 00                	add    %al,(%eax)
c00034af:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00034b2:	00 00                	add    %al,(%eax)
c00034b4:	6c                   	insb   (%dx),%es:(%edi)
c00034b5:	01 00                	add    %eax,(%eax)
c00034b7:	00 75 e6             	add    %dh,-0x1a(%ebp)
c00034ba:	ff                   	(bad)  
c00034bb:	ff 32                	pushl  (%edx)
c00034bd:	00 00                	add    %al,(%eax)
c00034bf:	00 00                	add    %al,(%eax)
c00034c1:	41                   	inc    %ecx
c00034c2:	0e                   	push   %cs
c00034c3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00034c9:	6e                   	outsb  %ds:(%esi),(%dx)
c00034ca:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00034cd:	04 00                	add    $0x0,%al
c00034cf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00034d2:	00 00                	add    %al,(%eax)
c00034d4:	8c 01                	mov    %es,(%ecx)
c00034d6:	00 00                	add    %al,(%eax)
c00034d8:	87 e6                	xchg   %esp,%esi
c00034da:	ff                   	(bad)  
c00034db:	ff 26                	jmp    *(%esi)
c00034dd:	00 00                	add    %al,(%eax)
c00034df:	00 00                	add    %al,(%eax)
c00034e1:	41                   	inc    %ecx
c00034e2:	0e                   	push   %cs
c00034e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00034e9:	62                   	(bad)  
c00034ea:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00034ed:	04 00                	add    $0x0,%al
c00034ef:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00034f2:	00 00                	add    %al,(%eax)
c00034f4:	ac                   	lods   %ds:(%esi),%al
c00034f5:	01 00                	add    %eax,(%eax)
c00034f7:	00 8d e6 ff ff 30    	add    %cl,0x30ffffe6(%ebp)
c00034fd:	00 00                	add    %al,(%eax)
c00034ff:	00 00                	add    %al,(%eax)
c0003501:	41                   	inc    %ecx
c0003502:	0e                   	push   %cs
c0003503:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003509:	6c                   	insb   (%dx),%es:(%edi)
c000350a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000350d:	04 00                	add    $0x0,%al
c000350f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003512:	00 00                	add    %al,(%eax)
c0003514:	cc                   	int3   
c0003515:	01 00                	add    %eax,(%eax)
c0003517:	00 9d e6 ff ff 30    	add    %bl,0x30ffffe6(%ebp)
c000351d:	00 00                	add    %al,(%eax)
c000351f:	00 00                	add    %al,(%eax)
c0003521:	41                   	inc    %ecx
c0003522:	0e                   	push   %cs
c0003523:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003529:	6c                   	insb   (%dx),%es:(%edi)
c000352a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000352d:	04 00                	add    $0x0,%al
c000352f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003532:	00 00                	add    %al,(%eax)
c0003534:	ec                   	in     (%dx),%al
c0003535:	01 00                	add    %eax,(%eax)
c0003537:	00 ad e6 ff ff 2d    	add    %ch,0x2dffffe6(%ebp)
c000353d:	00 00                	add    %al,(%eax)
c000353f:	00 00                	add    %al,(%eax)
c0003541:	41                   	inc    %ecx
c0003542:	0e                   	push   %cs
c0003543:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003549:	69 c5 0c 04 04 00    	imul   $0x4040c,%ebp,%eax
c000354f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003552:	00 00                	add    %al,(%eax)
c0003554:	0c 02                	or     $0x2,%al
c0003556:	00 00                	add    %al,(%eax)
c0003558:	ba e6 ff ff 45       	mov    $0x45ffffe6,%edx
c000355d:	00 00                	add    %al,(%eax)
c000355f:	00 00                	add    %al,(%eax)
c0003561:	41                   	inc    %ecx
c0003562:	0e                   	push   %cs
c0003563:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003569:	02 41 c5             	add    -0x3b(%ecx),%al
c000356c:	0c 04                	or     $0x4,%al
c000356e:	04 00                	add    $0x0,%al
c0003570:	1c 00                	sbb    $0x0,%al
c0003572:	00 00                	add    %al,(%eax)
c0003574:	2c 02                	sub    $0x2,%al
c0003576:	00 00                	add    %al,(%eax)
c0003578:	df e6                	(bad)  
c000357a:	ff                   	(bad)  
c000357b:	ff 4d 00             	decl   0x0(%ebp)
c000357e:	00 00                	add    %al,(%eax)
c0003580:	00 41 0e             	add    %al,0xe(%ecx)
c0003583:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003589:	02 49 c5             	add    -0x3b(%ecx),%cl
c000358c:	0c 04                	or     $0x4,%al
c000358e:	04 00                	add    $0x0,%al
c0003590:	1c 00                	sbb    $0x0,%al
c0003592:	00 00                	add    %al,(%eax)
c0003594:	4c                   	dec    %esp
c0003595:	02 00                	add    (%eax),%al
c0003597:	00 0c e7             	add    %cl,(%edi,%eiz,8)
c000359a:	ff                   	(bad)  
c000359b:	ff                   	(bad)  
c000359c:	3f                   	aas    
c000359d:	00 00                	add    %al,(%eax)
c000359f:	00 00                	add    %al,(%eax)
c00035a1:	41                   	inc    %ecx
c00035a2:	0e                   	push   %cs
c00035a3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00035a9:	7b c5                	jnp    c0003570 <error_string+0x8a4>
c00035ab:	0c 04                	or     $0x4,%al
c00035ad:	04 00                	add    $0x0,%al
c00035af:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00035b2:	00 00                	add    %al,(%eax)
c00035b4:	6c                   	insb   (%dx),%es:(%edi)
c00035b5:	02 00                	add    (%eax),%al
c00035b7:	00 2b                	add    %ch,(%ebx)
c00035b9:	e7 ff                	out    %eax,$0xff
c00035bb:	ff 56 00             	call   *0x0(%esi)
c00035be:	00 00                	add    %al,(%eax)
c00035c0:	00 41 0e             	add    %al,0xe(%ecx)
c00035c3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00035c9:	02 52 c5             	add    -0x3b(%edx),%dl
c00035cc:	0c 04                	or     $0x4,%al
c00035ce:	04 00                	add    $0x0,%al
c00035d0:	1c 00                	sbb    $0x0,%al
c00035d2:	00 00                	add    %al,(%eax)
c00035d4:	8c 02                	mov    %es,(%edx)
c00035d6:	00 00                	add    %al,(%eax)
c00035d8:	61                   	popa   
c00035d9:	e7 ff                	out    %eax,$0xff
c00035db:	ff 33                	pushl  (%ebx)
c00035dd:	00 00                	add    %al,(%eax)
c00035df:	00 00                	add    %al,(%eax)
c00035e1:	41                   	inc    %ecx
c00035e2:	0e                   	push   %cs
c00035e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00035e9:	6f                   	outsl  %ds:(%esi),(%dx)
c00035ea:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00035ed:	04 00                	add    $0x0,%al
c00035ef:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00035f2:	00 00                	add    %al,(%eax)
c00035f4:	ac                   	lods   %ds:(%esi),%al
c00035f5:	02 00                	add    (%eax),%al
c00035f7:	00 74 e7 ff          	add    %dh,-0x1(%edi,%eiz,8)
c00035fb:	ff 2f                	ljmp   *(%edi)
c00035fd:	00 00                	add    %al,(%eax)
c00035ff:	00 00                	add    %al,(%eax)
c0003601:	41                   	inc    %ecx
c0003602:	0e                   	push   %cs
c0003603:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003609:	6b c5 0c             	imul   $0xc,%ebp,%eax
c000360c:	04 04                	add    $0x4,%al
c000360e:	00 00                	add    %al,(%eax)
c0003610:	20 00                	and    %al,(%eax)
c0003612:	00 00                	add    %al,(%eax)
c0003614:	cc                   	int3   
c0003615:	02 00                	add    (%eax),%al
c0003617:	00 83 e7 ff ff 6e    	add    %al,0x6effffe7(%ebx)
c000361d:	00 00                	add    %al,(%eax)
c000361f:	00 00                	add    %al,(%eax)
c0003621:	41                   	inc    %ecx
c0003622:	0e                   	push   %cs
c0003623:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003629:	41                   	inc    %ecx
c000362a:	87 03                	xchg   %eax,(%ebx)
c000362c:	02 68 c7             	add    -0x39(%eax),%ch
c000362f:	41                   	inc    %ecx
c0003630:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003633:	04 28                	add    $0x28,%al
c0003635:	00 00                	add    %al,(%eax)
c0003637:	00 f0                	add    %dh,%al
c0003639:	02 00                	add    (%eax),%al
c000363b:	00 cd                	add    %cl,%ch
c000363d:	e7 ff                	out    %eax,$0xff
c000363f:	ff                   	(bad)  
c0003640:	da 00                	fiaddl (%eax)
c0003642:	00 00                	add    %al,(%eax)
c0003644:	00 41 0e             	add    %al,0xe(%ecx)
c0003647:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000364d:	46                   	inc    %esi
c000364e:	87 03                	xchg   %eax,(%ebx)
c0003650:	86 04 83             	xchg   %al,(%ebx,%eax,4)
c0003653:	05 02 cd c3 41       	add    $0x41c3cd02,%eax
c0003658:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000365c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000365f:	04 1c                	add    $0x1c,%al
c0003661:	00 00                	add    %al,(%eax)
c0003663:	00 1c 03             	add    %bl,(%ebx,%eax,1)
c0003666:	00 00                	add    %al,(%eax)
c0003668:	7b e8                	jnp    c0003652 <error_string+0x986>
c000366a:	ff                   	(bad)  
c000366b:	ff 16                	call   *(%esi)
c000366d:	00 00                	add    %al,(%eax)
c000366f:	00 00                	add    %al,(%eax)
c0003671:	41                   	inc    %ecx
c0003672:	0e                   	push   %cs
c0003673:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003679:	52                   	push   %edx
c000367a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000367d:	04 00                	add    $0x0,%al
c000367f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003682:	00 00                	add    %al,(%eax)
c0003684:	3c 03                	cmp    $0x3,%al
c0003686:	00 00                	add    %al,(%eax)
c0003688:	71 e8                	jno    c0003672 <error_string+0x9a6>
c000368a:	ff                   	(bad)  
c000368b:	ff 58 00             	lcall  *0x0(%eax)
c000368e:	00 00                	add    %al,(%eax)
c0003690:	00 41 0e             	add    %al,0xe(%ecx)
c0003693:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003699:	02 54 c5 0c          	add    0xc(%ebp,%eax,8),%dl
c000369d:	04 04                	add    $0x4,%al
c000369f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00036a2:	00 00                	add    %al,(%eax)
c00036a4:	5c                   	pop    %esp
c00036a5:	03 00                	add    (%eax),%eax
c00036a7:	00 a9 e8 ff ff 34    	add    %ch,0x34ffffe8(%ecx)
c00036ad:	00 00                	add    %al,(%eax)
c00036af:	00 00                	add    %al,(%eax)
c00036b1:	41                   	inc    %ecx
c00036b2:	0e                   	push   %cs
c00036b3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00036b9:	70 c5                	jo     c0003680 <error_string+0x9b4>
c00036bb:	0c 04                	or     $0x4,%al
c00036bd:	04 00                	add    $0x0,%al
c00036bf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00036c2:	00 00                	add    %al,(%eax)
c00036c4:	7c 03                	jl     c00036c9 <error_string+0x9fd>
c00036c6:	00 00                	add    %al,(%eax)
c00036c8:	bd e8 ff ff 5d       	mov    $0x5dffffe8,%ebp
c00036cd:	01 00                	add    %eax,(%eax)
c00036cf:	00 00                	add    %al,(%eax)
c00036d1:	41                   	inc    %ecx
c00036d2:	0e                   	push   %cs
c00036d3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00036d9:	03 59 01             	add    0x1(%ecx),%ebx
c00036dc:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00036df:	04 1c                	add    $0x1c,%al
c00036e1:	00 00                	add    %al,(%eax)
c00036e3:	00 9c 03 00 00 ee ea 	add    %bl,-0x15120000(%ebx,%eax,1)
c00036ea:	ff                   	(bad)  
c00036eb:	ff 10                	call   *(%eax)
c00036ed:	00 00                	add    %al,(%eax)
c00036ef:	00 00                	add    %al,(%eax)
c00036f1:	41                   	inc    %ecx
c00036f2:	0e                   	push   %cs
c00036f3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00036f9:	4c                   	dec    %esp
c00036fa:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00036fd:	04 00                	add    $0x0,%al
c00036ff:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003702:	00 00                	add    %al,(%eax)
c0003704:	bc 03 00 00 de       	mov    $0xde000003,%esp
c0003709:	ea ff ff 10 00 00 00 	ljmp   $0x0,$0x10ffff
c0003710:	00 41 0e             	add    %al,0xe(%ecx)
c0003713:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003719:	4c                   	dec    %esp
c000371a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000371d:	04 00                	add    $0x0,%al
c000371f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003722:	00 00                	add    %al,(%eax)
c0003724:	dc 03                	faddl  (%ebx)
c0003726:	00 00                	add    %al,(%eax)
c0003728:	ce                   	into   
c0003729:	ea ff ff 10 00 00 00 	ljmp   $0x0,$0x10ffff
c0003730:	00 41 0e             	add    %al,0xe(%ecx)
c0003733:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003739:	4c                   	dec    %esp
c000373a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000373d:	04 00                	add    $0x0,%al
c000373f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003742:	00 00                	add    %al,(%eax)
c0003744:	fc                   	cld    
c0003745:	03 00                	add    (%eax),%eax
c0003747:	00 be ea ff ff 16    	add    %bh,0x16ffffea(%esi)
c000374d:	01 00                	add    %eax,(%eax)
c000374f:	00 00                	add    %al,(%eax)
c0003751:	41                   	inc    %ecx
c0003752:	0e                   	push   %cs
c0003753:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003759:	03 12                	add    (%edx),%edx
c000375b:	01 c5                	add    %eax,%ebp
c000375d:	0c 04                	or     $0x4,%al
c000375f:	04 20                	add    $0x20,%al
c0003761:	00 00                	add    %al,(%eax)
c0003763:	00 1c 04             	add    %bl,(%esp,%eax,1)
c0003766:	00 00                	add    %al,(%eax)
c0003768:	b4 eb                	mov    $0xeb,%ah
c000376a:	ff                   	(bad)  
c000376b:	ff 57 00             	call   *0x0(%edi)
c000376e:	00 00                	add    %al,(%eax)
c0003770:	00 41 0e             	add    %al,0xe(%ecx)
c0003773:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003779:	44                   	inc    %esp
c000377a:	83 03 02             	addl   $0x2,(%ebx)
c000377d:	4e                   	dec    %esi
c000377e:	c3                   	ret    
c000377f:	41                   	inc    %ecx
c0003780:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003783:	04 1c                	add    $0x1c,%al
c0003785:	00 00                	add    %al,(%eax)
c0003787:	00 40 04             	add    %al,0x4(%eax)
c000378a:	00 00                	add    %al,(%eax)
c000378c:	e7 eb                	out    %eax,$0xeb
c000378e:	ff                   	(bad)  
c000378f:	ff b2 00 00 00 00    	pushl  0x0(%edx)
c0003795:	41                   	inc    %ecx
c0003796:	0e                   	push   %cs
c0003797:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000379d:	02 ae c5 0c 04 04    	add    0x4040cc5(%esi),%ch
c00037a3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00037a6:	00 00                	add    %al,(%eax)
c00037a8:	60                   	pusha  
c00037a9:	04 00                	add    $0x0,%al
c00037ab:	00 79 ec             	add    %bh,-0x14(%ecx)
c00037ae:	ff                   	(bad)  
c00037af:	ff 87 00 00 00 00    	incl   0x0(%edi)
c00037b5:	41                   	inc    %ecx
c00037b6:	0e                   	push   %cs
c00037b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00037bd:	02 83 c5 0c 04 04    	add    0x4040cc5(%ebx),%al
c00037c3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00037c6:	00 00                	add    %al,(%eax)
c00037c8:	80 04 00 00          	addb   $0x0,(%eax,%eax,1)
c00037cc:	9e                   	sahf   
c00037cd:	f1                   	icebp  
c00037ce:	ff                   	(bad)  
c00037cf:	ff 21                	jmp    *(%ecx)
c00037d1:	00 00                	add    %al,(%eax)
c00037d3:	00 00                	add    %al,(%eax)
c00037d5:	41                   	inc    %ecx
c00037d6:	0e                   	push   %cs
c00037d7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00037dd:	5d                   	pop    %ebp
c00037de:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00037e1:	04 00                	add    $0x0,%al
c00037e3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00037e6:	00 00                	add    %al,(%eax)
c00037e8:	a0 04 00 00 9f       	mov    0x9f000004,%al
c00037ed:	f1                   	icebp  
c00037ee:	ff                   	(bad)  
c00037ef:	ff                   	(bad)  
c00037f0:	b8 00 00 00 00       	mov    $0x0,%eax
c00037f5:	41                   	inc    %ecx
c00037f6:	0e                   	push   %cs
c00037f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00037fd:	02 b4 c5 0c 04 04 00 	add    0x4040c(%ebp,%eax,8),%dh
c0003804:	1c 00                	sbb    $0x0,%al
c0003806:	00 00                	add    %al,(%eax)
c0003808:	c0 04 00 00          	rolb   $0x0,(%eax,%eax,1)
c000380c:	37                   	aaa    
c000380d:	f2 ff                	repnz (bad) 
c000380f:	ff                   	(bad)  
c0003810:	3d 00 00 00 00       	cmp    $0x0,%eax
c0003815:	41                   	inc    %ecx
c0003816:	0e                   	push   %cs
c0003817:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000381d:	79 c5                	jns    c00037e4 <error_string+0xb18>
c000381f:	0c 04                	or     $0x4,%al
c0003821:	04 00                	add    $0x0,%al
c0003823:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003826:	00 00                	add    %al,(%eax)
c0003828:	e0 04                	loopne c000382e <error_string+0xb62>
c000382a:	00 00                	add    %al,(%eax)
c000382c:	54                   	push   %esp
c000382d:	f2 ff                	repnz (bad) 
c000382f:	ff 63 00             	jmp    *0x0(%ebx)
c0003832:	00 00                	add    %al,(%eax)
c0003834:	00 41 0e             	add    %al,0xe(%ecx)
c0003837:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000383d:	02 5f c5             	add    -0x3b(%edi),%bl
c0003840:	0c 04                	or     $0x4,%al
c0003842:	04 00                	add    $0x0,%al
c0003844:	1c 00                	sbb    $0x0,%al
c0003846:	00 00                	add    %al,(%eax)
c0003848:	00 05 00 00 97 f2    	add    %al,0xf2970000
c000384e:	ff                   	(bad)  
c000384f:	ff 72 00             	pushl  0x0(%edx)
c0003852:	00 00                	add    %al,(%eax)
c0003854:	00 41 0e             	add    %al,0xe(%ecx)
c0003857:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000385d:	02 6e c5             	add    -0x3b(%esi),%ch
c0003860:	0c 04                	or     $0x4,%al
c0003862:	04 00                	add    $0x0,%al
c0003864:	1c 00                	sbb    $0x0,%al
c0003866:	00 00                	add    %al,(%eax)
c0003868:	20 05 00 00 e9 f2    	and    %al,0xf2e90000
c000386e:	ff                   	(bad)  
c000386f:	ff 2a                	ljmp   *(%edx)
c0003871:	00 00                	add    %al,(%eax)
c0003873:	00 00                	add    %al,(%eax)
c0003875:	41                   	inc    %ecx
c0003876:	0e                   	push   %cs
c0003877:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000387d:	66 c5 0c 04          	lds    (%esp,%eax,1),%cx
c0003881:	04 00                	add    $0x0,%al
c0003883:	00 20                	add    %ah,(%eax)
c0003885:	00 00                	add    %al,(%eax)
c0003887:	00 40 05             	add    %al,0x5(%eax)
c000388a:	00 00                	add    %al,(%eax)
c000388c:	f3 f2 ff             	repz repnz (bad) 
c000388f:	ff 81 00 00 00 00    	incl   0x0(%ecx)
c0003895:	41                   	inc    %ecx
c0003896:	0e                   	push   %cs
c0003897:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000389d:	44                   	inc    %esp
c000389e:	83 03 02             	addl   $0x2,(%ebx)
c00038a1:	79 c5                	jns    c0003868 <error_string+0xb9c>
c00038a3:	c3                   	ret    
c00038a4:	0c 04                	or     $0x4,%al
c00038a6:	04 00                	add    $0x0,%al
c00038a8:	1c 00                	sbb    $0x0,%al
c00038aa:	00 00                	add    %al,(%eax)
c00038ac:	64 05 00 00 50 f3    	fs add $0xf3500000,%eax
c00038b2:	ff                   	(bad)  
c00038b3:	ff 30                	pushl  (%eax)
c00038b5:	00 00                	add    %al,(%eax)
c00038b7:	00 00                	add    %al,(%eax)
c00038b9:	41                   	inc    %ecx
c00038ba:	0e                   	push   %cs
c00038bb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00038c1:	6c                   	insb   (%dx),%es:(%edi)
c00038c2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00038c5:	04 00                	add    $0x0,%al
c00038c7:	00                   	.byte 0x0

Disassembly of section .data:

c0005000 <_GLOBAL_OFFSET_TABLE_>:
c0005000:	00 00                	add    %al,(%eax)

c0005002 <put_int_buffer>:
c0005002:	00 00                	add    %al,(%eax)
c0005004:	00 00                	add    %al,(%eax)
c0005006:	00 00                	add    %al,(%eax)
c0005008:	00 00                	add    %al,(%eax)
c000500a:	00 00                	add    %al,(%eax)
c000500c:	b0 24                	mov    $0x24,%al
c000500e:	00 c0                	add    %al,%al
c0005010:	d5 24                	aad    $0x24
c0005012:	00 c0                	add    %al,%al
c0005014:	fa                   	cli    
c0005015:	24 00                	and    $0x0,%al
c0005017:	c0 1f 25             	rcrb   $0x25,(%edi)
c000501a:	00 c0                	add    %al,%al
c000501c:	44                   	inc    %esp
c000501d:	25 00 c0 69 25       	and    $0x2569c000,%eax
c0005022:	00 c0                	add    %al,%al
c0005024:	8e 25 00 c0 b3 25    	mov    0x25b3c000,%fs
c000502a:	00 c0                	add    %al,%al
c000502c:	d8 25 00 c0 fc 25    	fsubs  0x25fcc000
c0005032:	00 c0                	add    %al,%al
c0005034:	21 26                	and    %esp,(%esi)
c0005036:	00 c0                	add    %al,%al
c0005038:	45                   	inc    %ebp
c0005039:	26 00 c0             	es add %al,%al
c000503c:	69 26 00 c0 8e 26    	imul   $0x268ec000,(%esi),%esp
c0005042:	00 c0                	add    %al,%al
c0005044:	b2 26                	mov    $0x26,%dl
c0005046:	00 c0                	add    %al,%al
c0005048:	d6                   	(bad)  
c0005049:	26 00 c0             	es add %al,%al
c000504c:	fb                   	sti    
c000504d:	26 00 c0             	es add %al,%al
c0005050:	20 27                	and    %ah,(%edi)
c0005052:	00 c0                	add    %al,%al
c0005054:	44                   	inc    %esp
c0005055:	27                   	daa    
c0005056:	00 c0                	add    %al,%al
c0005058:	69 27 00 c0 8e 27    	imul   $0x278ec000,(%edi),%esp
c000505e:	00 c0                	add    %al,%al
c0005060:	b3 27                	mov    $0x27,%bl
c0005062:	00 c0                	add    %al,%al
c0005064:	d8 27                	fsubs  (%edi)
c0005066:	00 c0                	add    %al,%al
c0005068:	fd                   	std    
c0005069:	27                   	daa    
c000506a:	00 c0                	add    %al,%al
c000506c:	22 28                	and    (%eax),%ch
c000506e:	00 c0                	add    %al,%al
c0005070:	46                   	inc    %esi
c0005071:	28 00                	sub    %al,(%eax)
c0005073:	c0 6b 28 00          	shrb   $0x0,0x28(%ebx)
c0005077:	c0 8f 28 00 c0 b3 28 	rorb   $0x28,-0x4c3fffd8(%edi)
c000507e:	00 c0                	add    %al,%al
c0005080:	d8 28                	fsubrs (%eax)
c0005082:	00 c0                	add    %al,%al
c0005084:	fc                   	cld    
c0005085:	28 00                	sub    %al,(%eax)
c0005087:	c0 20 29             	shlb   $0x29,(%eax)
c000508a:	00 c0                	add    %al,%al
c000508c:	45                   	inc    %ebp
c000508d:	29 00                	sub    %eax,(%eax)
c000508f:	c0 00 00             	rolb   $0x0,(%eax)
c0005092:	00 00                	add    %al,(%eax)
c0005094:	00 00                	add    %al,(%eax)
c0005096:	00 00                	add    %al,(%eax)
c0005098:	00 00                	add    %al,(%eax)
c000509a:	00 00                	add    %al,(%eax)
c000509c:	00 00                	add    %al,(%eax)
c000509e:	00 00                	add    %al,(%eax)

c00050a0 <idt_handler_table>:
c00050a0:	e3 2a                	jecxz  c00050cc <idt_handler_table+0x2c>
c00050a2:	00 c0                	add    %al,%al
c00050a4:	e3 2a                	jecxz  c00050d0 <idt_handler_table+0x30>
c00050a6:	00 c0                	add    %al,%al
c00050a8:	e3 2a                	jecxz  c00050d4 <idt_handler_table+0x34>
c00050aa:	00 c0                	add    %al,%al
c00050ac:	e3 2a                	jecxz  c00050d8 <idt_handler_table+0x38>
c00050ae:	00 c0                	add    %al,%al
c00050b0:	e3 2a                	jecxz  c00050dc <idt_handler_table+0x3c>
c00050b2:	00 c0                	add    %al,%al
c00050b4:	e3 2a                	jecxz  c00050e0 <idt_handler_table+0x40>
c00050b6:	00 c0                	add    %al,%al
c00050b8:	e3 2a                	jecxz  c00050e4 <idt_handler_table+0x44>
c00050ba:	00 c0                	add    %al,%al
c00050bc:	e3 2a                	jecxz  c00050e8 <idt_handler_table+0x48>
c00050be:	00 c0                	add    %al,%al
c00050c0:	e3 2a                	jecxz  c00050ec <idt_handler_table+0x4c>
c00050c2:	00 c0                	add    %al,%al
c00050c4:	e3 2a                	jecxz  c00050f0 <idt_handler_table+0x50>
c00050c6:	00 c0                	add    %al,%al
c00050c8:	e3 2a                	jecxz  c00050f4 <idt_handler_table+0x54>
c00050ca:	00 c0                	add    %al,%al
c00050cc:	e3 2a                	jecxz  c00050f8 <idt_handler_table+0x58>
c00050ce:	00 c0                	add    %al,%al
c00050d0:	e3 2a                	jecxz  c00050fc <idt_handler_table+0x5c>
c00050d2:	00 c0                	add    %al,%al
c00050d4:	e3 2a                	jecxz  c0005100 <idt_handler_table+0x60>
c00050d6:	00 c0                	add    %al,%al
c00050d8:	e3 2a                	jecxz  c0005104 <idt_handler_table+0x64>
c00050da:	00 c0                	add    %al,%al
c00050dc:	e3 2a                	jecxz  c0005108 <idt_handler_table+0x68>
c00050de:	00 c0                	add    %al,%al
c00050e0:	e3 2a                	jecxz  c000510c <idt_handler_table+0x6c>
c00050e2:	00 c0                	add    %al,%al
c00050e4:	e3 2a                	jecxz  c0005110 <idt_handler_table+0x70>
c00050e6:	00 c0                	add    %al,%al
c00050e8:	e3 2a                	jecxz  c0005114 <idt_handler_table+0x74>
c00050ea:	00 c0                	add    %al,%al
c00050ec:	e3 2a                	jecxz  c0005118 <idt_handler_table+0x78>
c00050ee:	00 c0                	add    %al,%al
c00050f0:	e3 2a                	jecxz  c000511c <idt_handler_table+0x7c>
c00050f2:	00 c0                	add    %al,%al
c00050f4:	e3 2a                	jecxz  c0005120 <idt_handler_table+0x80>
c00050f6:	00 c0                	add    %al,%al
c00050f8:	e3 2a                	jecxz  c0005124 <idt_handler_table+0x84>
c00050fa:	00 c0                	add    %al,%al
c00050fc:	e3 2a                	jecxz  c0005128 <idt_handler_table+0x88>
c00050fe:	00 c0                	add    %al,%al
c0005100:	e3 2a                	jecxz  c000512c <idt_handler_table+0x8c>
c0005102:	00 c0                	add    %al,%al
c0005104:	e3 2a                	jecxz  c0005130 <idt_handler_table+0x90>
c0005106:	00 c0                	add    %al,%al
c0005108:	e3 2a                	jecxz  c0005134 <idt_handler_table+0x94>
c000510a:	00 c0                	add    %al,%al
c000510c:	e3 2a                	jecxz  c0005138 <idt_handler_table+0x98>
c000510e:	00 c0                	add    %al,%al
c0005110:	e3 2a                	jecxz  c000513c <idt_handler_table+0x9c>
c0005112:	00 c0                	add    %al,%al
c0005114:	e3 2a                	jecxz  c0005140 <interrupt_name>
c0005116:	00 c0                	add    %al,%al
c0005118:	e3 2a                	jecxz  c0005144 <interrupt_name+0x4>
c000511a:	00 c0                	add    %al,%al
c000511c:	e3 2a                	jecxz  c0005148 <interrupt_name+0x8>
c000511e:	00 c0                	add    %al,%al
c0005120:	e3 2a                	jecxz  c000514c <interrupt_name+0xc>
c0005122:	00 c0                	add    %al,%al
c0005124:	00 00                	add    %al,(%eax)
c0005126:	00 00                	add    %al,(%eax)
c0005128:	00 00                	add    %al,(%eax)
c000512a:	00 00                	add    %al,(%eax)
c000512c:	00 00                	add    %al,(%eax)
c000512e:	00 00                	add    %al,(%eax)
c0005130:	00 00                	add    %al,(%eax)
c0005132:	00 00                	add    %al,(%eax)
c0005134:	00 00                	add    %al,(%eax)
c0005136:	00 00                	add    %al,(%eax)
c0005138:	00 00                	add    %al,(%eax)
c000513a:	00 00                	add    %al,(%eax)
c000513c:	00 00                	add    %al,(%eax)
c000513e:	00 00                	add    %al,(%eax)

c0005140 <interrupt_name>:
c0005140:	b8 30 00 c0 c9       	mov    $0xc9c00030,%eax
c0005145:	30 00                	xor    %al,(%eax)
c0005147:	c0 d6 30             	rcl    $0x30,%dh
c000514a:	00 c0                	add    %al,%al
c000514c:	e8 30 00 c0 f7       	call   b7c05181 <SELECTOR_VIDEO+0xb7c05169>
c0005151:	30 00                	xor    %al,(%eax)
c0005153:	c0 05 31 00 c0 20 31 	rolb   $0x31,0x20c00031
c000515a:	00 c0                	add    %al,%al
c000515c:	48                   	dec    %eax
c000515d:	31 00                	xor    %eax,(%eax)
c000515f:	c0 78 31 00          	sarb   $0x0,0x31(%eax)
c0005163:	c0 8c 31 00 c0 b3 31 	rorb   $0x0,0x31b3c000(%ecx,%esi,1)
c000516a:	00 
c000516b:	c0 c4 31             	rol    $0x31,%ah
c000516e:	00 c0                	add    %al,%al
c0005170:	dd 31                	fnsave (%ecx)
c0005172:	00 c0                	add    %al,%al
c0005174:	f6 31                	divb   (%ecx)
c0005176:	00 c0                	add    %al,%al
c0005178:	0e                   	push   %cs
c0005179:	32 00                	xor    (%eax),%al
c000517b:	c0 20 32             	shlb   $0x32,(%eax)
c000517e:	00 c0                	add    %al,%al
c0005180:	44                   	inc    %esp
c0005181:	32 00                	xor    (%eax),%al
c0005183:	c0 72 32 00          	shlb   $0x0,0x32(%edx)
c0005187:	c0 87 32 00 c0 9c 32 	rolb   $0x32,-0x633fffce(%edi)
c000518e:	00 c0                	add    %al,%al
c0005190:	be 32 00 c0 be       	mov    $0xbec00032,%esi
c0005195:	32 00                	xor    (%eax),%al
c0005197:	c0 be 32 00 c0 be 32 	sarb   $0x32,-0x413fffce(%esi)
c000519e:	00 c0                	add    %al,%al
c00051a0:	be 32 00 c0 be       	mov    $0xbec00032,%esi
c00051a5:	32 00                	xor    (%eax),%al
c00051a7:	c0 be 32 00 c0 be 32 	sarb   $0x32,-0x413fffce(%esi)
c00051ae:	00 c0                	add    %al,%al
c00051b0:	be 32 00 c0 be       	mov    $0xbec00032,%esi
c00051b5:	32 00                	xor    (%eax),%al
c00051b7:	c0 be 32 00 c0 be 32 	sarb   $0x32,-0x413fffce(%esi)
c00051be:	00 c0                	add    %al,%al
c00051c0:	c6                   	(bad)  
c00051c1:	32 00                	xor    (%eax),%al
c00051c3:	c0                   	.byte 0xc0

Disassembly of section .bss:

c00051e0 <idt>:
c00051e0:	00 00                	add    %al,(%eax)
c00051e2:	00 00                	add    %al,(%eax)
c00051e4:	00 00                	add    %al,(%eax)
c00051e6:	00 00                	add    %al,(%eax)
c00051e8:	00 00                	add    %al,(%eax)
c00051ea:	00 00                	add    %al,(%eax)
c00051ec:	00 00                	add    %al,(%eax)
c00051ee:	00 00                	add    %al,(%eax)
c00051f0:	00 00                	add    %al,(%eax)
c00051f2:	00 00                	add    %al,(%eax)
c00051f4:	00 00                	add    %al,(%eax)
c00051f6:	00 00                	add    %al,(%eax)
c00051f8:	00 00                	add    %al,(%eax)
c00051fa:	00 00                	add    %al,(%eax)
c00051fc:	00 00                	add    %al,(%eax)
c00051fe:	00 00                	add    %al,(%eax)
c0005200:	00 00                	add    %al,(%eax)
c0005202:	00 00                	add    %al,(%eax)
c0005204:	00 00                	add    %al,(%eax)
c0005206:	00 00                	add    %al,(%eax)
c0005208:	00 00                	add    %al,(%eax)
c000520a:	00 00                	add    %al,(%eax)
c000520c:	00 00                	add    %al,(%eax)
c000520e:	00 00                	add    %al,(%eax)
c0005210:	00 00                	add    %al,(%eax)
c0005212:	00 00                	add    %al,(%eax)
c0005214:	00 00                	add    %al,(%eax)
c0005216:	00 00                	add    %al,(%eax)
c0005218:	00 00                	add    %al,(%eax)
c000521a:	00 00                	add    %al,(%eax)
c000521c:	00 00                	add    %al,(%eax)
c000521e:	00 00                	add    %al,(%eax)
c0005220:	00 00                	add    %al,(%eax)
c0005222:	00 00                	add    %al,(%eax)
c0005224:	00 00                	add    %al,(%eax)
c0005226:	00 00                	add    %al,(%eax)
c0005228:	00 00                	add    %al,(%eax)
c000522a:	00 00                	add    %al,(%eax)
c000522c:	00 00                	add    %al,(%eax)
c000522e:	00 00                	add    %al,(%eax)
c0005230:	00 00                	add    %al,(%eax)
c0005232:	00 00                	add    %al,(%eax)
c0005234:	00 00                	add    %al,(%eax)
c0005236:	00 00                	add    %al,(%eax)
c0005238:	00 00                	add    %al,(%eax)
c000523a:	00 00                	add    %al,(%eax)
c000523c:	00 00                	add    %al,(%eax)
c000523e:	00 00                	add    %al,(%eax)
c0005240:	00 00                	add    %al,(%eax)
c0005242:	00 00                	add    %al,(%eax)
c0005244:	00 00                	add    %al,(%eax)
c0005246:	00 00                	add    %al,(%eax)
c0005248:	00 00                	add    %al,(%eax)
c000524a:	00 00                	add    %al,(%eax)
c000524c:	00 00                	add    %al,(%eax)
c000524e:	00 00                	add    %al,(%eax)
c0005250:	00 00                	add    %al,(%eax)
c0005252:	00 00                	add    %al,(%eax)
c0005254:	00 00                	add    %al,(%eax)
c0005256:	00 00                	add    %al,(%eax)
c0005258:	00 00                	add    %al,(%eax)
c000525a:	00 00                	add    %al,(%eax)
c000525c:	00 00                	add    %al,(%eax)
c000525e:	00 00                	add    %al,(%eax)
c0005260:	00 00                	add    %al,(%eax)
c0005262:	00 00                	add    %al,(%eax)
c0005264:	00 00                	add    %al,(%eax)
c0005266:	00 00                	add    %al,(%eax)
c0005268:	00 00                	add    %al,(%eax)
c000526a:	00 00                	add    %al,(%eax)
c000526c:	00 00                	add    %al,(%eax)
c000526e:	00 00                	add    %al,(%eax)
c0005270:	00 00                	add    %al,(%eax)
c0005272:	00 00                	add    %al,(%eax)
c0005274:	00 00                	add    %al,(%eax)
c0005276:	00 00                	add    %al,(%eax)
c0005278:	00 00                	add    %al,(%eax)
c000527a:	00 00                	add    %al,(%eax)
c000527c:	00 00                	add    %al,(%eax)
c000527e:	00 00                	add    %al,(%eax)
c0005280:	00 00                	add    %al,(%eax)
c0005282:	00 00                	add    %al,(%eax)
c0005284:	00 00                	add    %al,(%eax)
c0005286:	00 00                	add    %al,(%eax)
c0005288:	00 00                	add    %al,(%eax)
c000528a:	00 00                	add    %al,(%eax)
c000528c:	00 00                	add    %al,(%eax)
c000528e:	00 00                	add    %al,(%eax)
c0005290:	00 00                	add    %al,(%eax)
c0005292:	00 00                	add    %al,(%eax)
c0005294:	00 00                	add    %al,(%eax)
c0005296:	00 00                	add    %al,(%eax)
c0005298:	00 00                	add    %al,(%eax)
c000529a:	00 00                	add    %al,(%eax)
c000529c:	00 00                	add    %al,(%eax)
c000529e:	00 00                	add    %al,(%eax)
c00052a0:	00 00                	add    %al,(%eax)
c00052a2:	00 00                	add    %al,(%eax)
c00052a4:	00 00                	add    %al,(%eax)
c00052a6:	00 00                	add    %al,(%eax)
c00052a8:	00 00                	add    %al,(%eax)
c00052aa:	00 00                	add    %al,(%eax)
c00052ac:	00 00                	add    %al,(%eax)
c00052ae:	00 00                	add    %al,(%eax)
c00052b0:	00 00                	add    %al,(%eax)
c00052b2:	00 00                	add    %al,(%eax)
c00052b4:	00 00                	add    %al,(%eax)
c00052b6:	00 00                	add    %al,(%eax)
c00052b8:	00 00                	add    %al,(%eax)
c00052ba:	00 00                	add    %al,(%eax)
c00052bc:	00 00                	add    %al,(%eax)
c00052be:	00 00                	add    %al,(%eax)
c00052c0:	00 00                	add    %al,(%eax)
c00052c2:	00 00                	add    %al,(%eax)
c00052c4:	00 00                	add    %al,(%eax)
c00052c6:	00 00                	add    %al,(%eax)
c00052c8:	00 00                	add    %al,(%eax)
c00052ca:	00 00                	add    %al,(%eax)
c00052cc:	00 00                	add    %al,(%eax)
c00052ce:	00 00                	add    %al,(%eax)
c00052d0:	00 00                	add    %al,(%eax)
c00052d2:	00 00                	add    %al,(%eax)
c00052d4:	00 00                	add    %al,(%eax)
c00052d6:	00 00                	add    %al,(%eax)
c00052d8:	00 00                	add    %al,(%eax)
c00052da:	00 00                	add    %al,(%eax)
c00052dc:	00 00                	add    %al,(%eax)
c00052de:	00 00                	add    %al,(%eax)
c00052e0:	00 00                	add    %al,(%eax)
c00052e2:	00 00                	add    %al,(%eax)
c00052e4:	00 00                	add    %al,(%eax)
c00052e6:	00 00                	add    %al,(%eax)

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 47 4e             	sub    %al,0x4e(%edi)
   8:	55                   	push   %ebp
   9:	29 20                	sub    %esp,(%eax)
   b:	38 2e                	cmp    %ch,(%esi)
   d:	35 2e 30 20 32       	xor    $0x3220302e,%eax
  12:	30 32                	xor    %dh,(%edx)
  14:	31 30                	xor    %esi,(%eax)
  16:	35 31 34 20 28       	xor    $0x28203431,%eax
  1b:	52                   	push   %edx
  1c:	65 64 20 48 61       	gs and %cl,%fs:0x61(%eax)
  21:	74 20                	je     43 <SELECTOR_VIDEO+0x2b>
  23:	38 2e                	cmp    %ch,(%esi)
  25:	35 2e 30 2d 34       	xor    $0x342d302e,%eax
  2a:	29 00                	sub    %eax,(%eax)
