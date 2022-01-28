
./build/kernel.bin:     file format elf32-i386

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         0000191f  c0001500  c0001500  00000500  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .rodata       00000704  c0003000  c0003000  00002000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .eh_frame     0000062c  c0003704  c0003704  00002704  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .data.rel.ro  0000001c  c0004fe4  c0004fe4  00002fe4  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .got.plt      0000000c  c0005000  c0005000  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000144  c0005020  c0005020  00003020  2**5
                  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          000001a4  c0005180  c0005180  00003164  2**5
                  ALLOC
  7 .comment      0000002a  00000000  00000000  00003164  2**0
                  CONTENTS, READONLY

Disassembly of section .text:

c0001500 <main>:
c0001500:	f3 0f 1e fb          	endbr32 
c0001504:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c0001508:	83 e4 f0             	and    $0xfffffff0,%esp
c000150b:	ff 71 fc             	pushl  -0x4(%ecx)
c000150e:	55                   	push   %ebp
c000150f:	89 e5                	mov    %esp,%ebp
c0001511:	53                   	push   %ebx
c0001512:	51                   	push   %ecx
c0001513:	83 ec 10             	sub    $0x10,%esp
c0001516:	e8 3e 00 00 00       	call   c0001559 <__x86.get_pc_thunk.bx>
c000151b:	81 c3 e5 3a 00 00    	add    $0x3ae5,%ebx
c0001521:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001528:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c000152c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000152f:	0f b6 c0             	movzbl %al,%eax
c0001532:	83 ec 04             	sub    $0x4,%esp
c0001535:	8d 93 00 e0 ff ff    	lea    -0x2000(%ebx),%edx
c000153b:	52                   	push   %edx
c000153c:	8d 93 06 e0 ff ff    	lea    -0x1ffa(%ebx),%edx
c0001542:	52                   	push   %edx
c0001543:	50                   	push   %eax
c0001544:	e8 a4 00 00 00       	call   c00015ed <printk>
c0001549:	83 c4 10             	add    $0x10,%esp
c000154c:	e8 c3 0e 00 00       	call   c0002414 <syswelcome>
c0001551:	e8 84 18 00 00       	call   c0002dda <init_all>
c0001556:	fb                   	sti    
c0001557:	eb fe                	jmp    c0001557 <main+0x57>

c0001559 <__x86.get_pc_thunk.bx>:
c0001559:	8b 1c 24             	mov    (%esp),%ebx
c000155c:	c3                   	ret    

c000155d <putch>:
c000155d:	f3 0f 1e fb          	endbr32 
c0001561:	55                   	push   %ebp
c0001562:	89 e5                	mov    %esp,%ebp
c0001564:	53                   	push   %ebx
c0001565:	83 ec 14             	sub    $0x14,%esp
c0001568:	e8 79 01 00 00       	call   c00016e6 <__x86.get_pc_thunk.ax>
c000156d:	05 93 3a 00 00       	add    $0x3a93,%eax
c0001572:	8b 55 10             	mov    0x10(%ebp),%edx
c0001575:	88 55 f4             	mov    %dl,-0xc(%ebp)
c0001578:	0f b6 4d f4          	movzbl -0xc(%ebp),%ecx
c000157c:	8b 55 08             	mov    0x8(%ebp),%edx
c000157f:	0f b6 d2             	movzbl %dl,%edx
c0001582:	83 ec 08             	sub    $0x8,%esp
c0001585:	51                   	push   %ecx
c0001586:	52                   	push   %edx
c0001587:	89 c3                	mov    %eax,%ebx
c0001589:	e8 52 0d 00 00       	call   c00022e0 <put_char>
c000158e:	83 c4 10             	add    $0x10,%esp
c0001591:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001594:	83 c0 04             	add    $0x4,%eax
c0001597:	89 45 0c             	mov    %eax,0xc(%ebp)
c000159a:	90                   	nop
c000159b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000159e:	c9                   	leave  
c000159f:	c3                   	ret    

c00015a0 <vcprintf>:
c00015a0:	f3 0f 1e fb          	endbr32 
c00015a4:	55                   	push   %ebp
c00015a5:	89 e5                	mov    %esp,%ebp
c00015a7:	53                   	push   %ebx
c00015a8:	83 ec 24             	sub    $0x24,%esp
c00015ab:	e8 36 01 00 00       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00015b0:	05 50 3a 00 00       	add    $0x3a50,%eax
c00015b5:	8b 55 08             	mov    0x8(%ebp),%edx
c00015b8:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c00015bb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00015c2:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c00015c6:	83 ec 0c             	sub    $0xc,%esp
c00015c9:	ff 75 10             	pushl  0x10(%ebp)
c00015cc:	ff 75 0c             	pushl  0xc(%ebp)
c00015cf:	8d 4d f4             	lea    -0xc(%ebp),%ecx
c00015d2:	51                   	push   %ecx
c00015d3:	8d 88 5d c5 ff ff    	lea    -0x3aa3(%eax),%ecx
c00015d9:	51                   	push   %ecx
c00015da:	52                   	push   %edx
c00015db:	89 c3                	mov    %eax,%ebx
c00015dd:	e8 55 02 00 00       	call   c0001837 <vprintfmt>
c00015e2:	83 c4 20             	add    $0x20,%esp
c00015e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00015eb:	c9                   	leave  
c00015ec:	c3                   	ret    

c00015ed <printk>:
c00015ed:	f3 0f 1e fb          	endbr32 
c00015f1:	55                   	push   %ebp
c00015f2:	89 e5                	mov    %esp,%ebp
c00015f4:	83 ec 28             	sub    $0x28,%esp
c00015f7:	e8 ea 00 00 00       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00015fc:	05 04 3a 00 00       	add    $0x3a04,%eax
c0001601:	8b 45 08             	mov    0x8(%ebp),%eax
c0001604:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0001607:	8d 45 10             	lea    0x10(%ebp),%eax
c000160a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000160d:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001610:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0001614:	83 ec 04             	sub    $0x4,%esp
c0001617:	52                   	push   %edx
c0001618:	ff 75 0c             	pushl  0xc(%ebp)
c000161b:	50                   	push   %eax
c000161c:	e8 7f ff ff ff       	call   c00015a0 <vcprintf>
c0001621:	83 c4 10             	add    $0x10,%esp
c0001624:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001627:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000162a:	c9                   	leave  
c000162b:	c3                   	ret    

c000162c <printf>:
c000162c:	f3 0f 1e fb          	endbr32 
c0001630:	55                   	push   %ebp
c0001631:	89 e5                	mov    %esp,%ebp
c0001633:	83 ec 18             	sub    $0x18,%esp
c0001636:	e8 ab 00 00 00       	call   c00016e6 <__x86.get_pc_thunk.ax>
c000163b:	05 c5 39 00 00       	add    $0x39c5,%eax
c0001640:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001647:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c000164b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000164e:	88 45 f3             	mov    %al,-0xd(%ebp)
c0001651:	8d 45 0c             	lea    0xc(%ebp),%eax
c0001654:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0001657:	8b 55 e8             	mov    -0x18(%ebp),%edx
c000165a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c000165e:	83 ec 04             	sub    $0x4,%esp
c0001661:	52                   	push   %edx
c0001662:	ff 75 08             	pushl  0x8(%ebp)
c0001665:	50                   	push   %eax
c0001666:	e8 35 ff ff ff       	call   c00015a0 <vcprintf>
c000166b:	83 c4 10             	add    $0x10,%esp
c000166e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0001671:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0001674:	c9                   	leave  
c0001675:	c3                   	ret    

c0001676 <test_printk>:
c0001676:	f3 0f 1e fb          	endbr32 
c000167a:	55                   	push   %ebp
c000167b:	89 e5                	mov    %esp,%ebp
c000167d:	83 ec 28             	sub    $0x28,%esp
c0001680:	e8 65 00 00 00       	call   c00016ea <__x86.get_pc_thunk.dx>
c0001685:	81 c2 7b 39 00 00    	add    $0x397b,%edx
c000168b:	8b 45 08             	mov    0x8(%ebp),%eax
c000168e:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0001691:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
c0001695:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c000169c:	83 4d f4 04          	orl    $0x4,-0xc(%ebp)
c00016a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00016a3:	0f b6 c0             	movzbl %al,%eax
c00016a6:	83 ec 04             	sub    $0x4,%esp
c00016a9:	51                   	push   %ecx
c00016aa:	8d 92 21 e0 ff ff    	lea    -0x1fdf(%edx),%edx
c00016b0:	52                   	push   %edx
c00016b1:	50                   	push   %eax
c00016b2:	e8 36 ff ff ff       	call   c00015ed <printk>
c00016b7:	83 c4 10             	add    $0x10,%esp
c00016ba:	90                   	nop
c00016bb:	c9                   	leave  
c00016bc:	c3                   	ret    

c00016bd <test_num>:
c00016bd:	f3 0f 1e fb          	endbr32 
c00016c1:	55                   	push   %ebp
c00016c2:	89 e5                	mov    %esp,%ebp
c00016c4:	83 ec 08             	sub    $0x8,%esp
c00016c7:	e8 1a 00 00 00       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00016cc:	05 34 39 00 00       	add    $0x3934,%eax
c00016d1:	83 ec 0c             	sub    $0xc,%esp
c00016d4:	8d 80 39 e0 ff ff    	lea    -0x1fc7(%eax),%eax
c00016da:	50                   	push   %eax
c00016db:	e8 4c ff ff ff       	call   c000162c <printf>
c00016e0:	83 c4 10             	add    $0x10,%esp
c00016e3:	90                   	nop
c00016e4:	c9                   	leave  
c00016e5:	c3                   	ret    

c00016e6 <__x86.get_pc_thunk.ax>:
c00016e6:	8b 04 24             	mov    (%esp),%eax
c00016e9:	c3                   	ret    

c00016ea <__x86.get_pc_thunk.dx>:
c00016ea:	8b 14 24             	mov    (%esp),%edx
c00016ed:	c3                   	ret    

c00016ee <printnum>:
c00016ee:	f3 0f 1e fb          	endbr32 
c00016f2:	55                   	push   %ebp
c00016f3:	89 e5                	mov    %esp,%ebp
c00016f5:	53                   	push   %ebx
c00016f6:	83 ec 14             	sub    $0x14,%esp
c00016f9:	e8 5b fe ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c00016fe:	81 c3 02 39 00 00    	add    $0x3902,%ebx
c0001704:	8b 45 08             	mov    0x8(%ebp),%eax
c0001707:	88 45 f4             	mov    %al,-0xc(%ebp)
c000170a:	8b 45 14             	mov    0x14(%ebp),%eax
c000170d:	3b 45 18             	cmp    0x18(%ebp),%eax
c0001710:	72 49                	jb     c000175b <printnum+0x6d>
c0001712:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0001715:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0001718:	8b 45 14             	mov    0x14(%ebp),%eax
c000171b:	ba 00 00 00 00       	mov    $0x0,%edx
c0001720:	f7 75 18             	divl   0x18(%ebp)
c0001723:	89 c2                	mov    %eax,%edx
c0001725:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
c0001729:	83 ec 04             	sub    $0x4,%esp
c000172c:	ff 75 20             	pushl  0x20(%ebp)
c000172f:	51                   	push   %ecx
c0001730:	ff 75 18             	pushl  0x18(%ebp)
c0001733:	52                   	push   %edx
c0001734:	ff 75 10             	pushl  0x10(%ebp)
c0001737:	ff 75 0c             	pushl  0xc(%ebp)
c000173a:	50                   	push   %eax
c000173b:	e8 ae ff ff ff       	call   c00016ee <printnum>
c0001740:	83 c4 20             	add    $0x20,%esp
c0001743:	eb 20                	jmp    c0001765 <printnum+0x77>
c0001745:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
c0001749:	83 ec 04             	sub    $0x4,%esp
c000174c:	50                   	push   %eax
c000174d:	ff 75 10             	pushl  0x10(%ebp)
c0001750:	ff 75 20             	pushl  0x20(%ebp)
c0001753:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001756:	ff d0                	call   *%eax
c0001758:	83 c4 10             	add    $0x10,%esp
c000175b:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
c000175f:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
c0001763:	7f e0                	jg     c0001745 <printnum+0x57>
c0001765:	0f b6 4d f4          	movzbl -0xc(%ebp),%ecx
c0001769:	8b 45 14             	mov    0x14(%ebp),%eax
c000176c:	ba 00 00 00 00       	mov    $0x0,%edx
c0001771:	f7 75 18             	divl   0x18(%ebp)
c0001774:	89 d0                	mov    %edx,%eax
c0001776:	0f b6 84 03 ad e0 ff 	movzbl -0x1f53(%ebx,%eax,1),%eax
c000177d:	ff 
c000177e:	0f be c0             	movsbl %al,%eax
c0001781:	83 ec 04             	sub    $0x4,%esp
c0001784:	51                   	push   %ecx
c0001785:	ff 75 10             	pushl  0x10(%ebp)
c0001788:	50                   	push   %eax
c0001789:	8b 45 0c             	mov    0xc(%ebp),%eax
c000178c:	ff d0                	call   *%eax
c000178e:	83 c4 10             	add    $0x10,%esp
c0001791:	90                   	nop
c0001792:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001795:	c9                   	leave  
c0001796:	c3                   	ret    

c0001797 <getuint>:
c0001797:	f3 0f 1e fb          	endbr32 
c000179b:	55                   	push   %ebp
c000179c:	89 e5                	mov    %esp,%ebp
c000179e:	e8 43 ff ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00017a3:	05 5d 38 00 00       	add    $0x385d,%eax
c00017a8:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c00017ac:	7e 11                	jle    c00017bf <getuint+0x28>
c00017ae:	8b 45 08             	mov    0x8(%ebp),%eax
c00017b1:	8b 00                	mov    (%eax),%eax
c00017b3:	8d 48 04             	lea    0x4(%eax),%ecx
c00017b6:	8b 55 08             	mov    0x8(%ebp),%edx
c00017b9:	89 0a                	mov    %ecx,(%edx)
c00017bb:	8b 00                	mov    (%eax),%eax
c00017bd:	eb 26                	jmp    c00017e5 <getuint+0x4e>
c00017bf:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00017c3:	74 11                	je     c00017d6 <getuint+0x3f>
c00017c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00017c8:	8b 00                	mov    (%eax),%eax
c00017ca:	8d 48 04             	lea    0x4(%eax),%ecx
c00017cd:	8b 55 08             	mov    0x8(%ebp),%edx
c00017d0:	89 0a                	mov    %ecx,(%edx)
c00017d2:	8b 00                	mov    (%eax),%eax
c00017d4:	eb 0f                	jmp    c00017e5 <getuint+0x4e>
c00017d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00017d9:	8b 00                	mov    (%eax),%eax
c00017db:	8d 48 04             	lea    0x4(%eax),%ecx
c00017de:	8b 55 08             	mov    0x8(%ebp),%edx
c00017e1:	89 0a                	mov    %ecx,(%edx)
c00017e3:	8b 00                	mov    (%eax),%eax
c00017e5:	5d                   	pop    %ebp
c00017e6:	c3                   	ret    

c00017e7 <getint>:
c00017e7:	f3 0f 1e fb          	endbr32 
c00017eb:	55                   	push   %ebp
c00017ec:	89 e5                	mov    %esp,%ebp
c00017ee:	e8 f3 fe ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00017f3:	05 0d 38 00 00       	add    $0x380d,%eax
c00017f8:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c00017fc:	7e 11                	jle    c000180f <getint+0x28>
c00017fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0001801:	8b 00                	mov    (%eax),%eax
c0001803:	8d 48 04             	lea    0x4(%eax),%ecx
c0001806:	8b 55 08             	mov    0x8(%ebp),%edx
c0001809:	89 0a                	mov    %ecx,(%edx)
c000180b:	8b 00                	mov    (%eax),%eax
c000180d:	eb 26                	jmp    c0001835 <getint+0x4e>
c000180f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0001813:	74 11                	je     c0001826 <getint+0x3f>
c0001815:	8b 45 08             	mov    0x8(%ebp),%eax
c0001818:	8b 00                	mov    (%eax),%eax
c000181a:	8d 48 04             	lea    0x4(%eax),%ecx
c000181d:	8b 55 08             	mov    0x8(%ebp),%edx
c0001820:	89 0a                	mov    %ecx,(%edx)
c0001822:	8b 00                	mov    (%eax),%eax
c0001824:	eb 0f                	jmp    c0001835 <getint+0x4e>
c0001826:	8b 45 08             	mov    0x8(%ebp),%eax
c0001829:	8b 00                	mov    (%eax),%eax
c000182b:	8d 48 04             	lea    0x4(%eax),%ecx
c000182e:	8b 55 08             	mov    0x8(%ebp),%edx
c0001831:	89 0a                	mov    %ecx,(%edx)
c0001833:	8b 00                	mov    (%eax),%eax
c0001835:	5d                   	pop    %ebp
c0001836:	c3                   	ret    

c0001837 <vprintfmt>:
c0001837:	f3 0f 1e fb          	endbr32 
c000183b:	55                   	push   %ebp
c000183c:	89 e5                	mov    %esp,%ebp
c000183e:	57                   	push   %edi
c000183f:	56                   	push   %esi
c0001840:	53                   	push   %ebx
c0001841:	83 ec 3c             	sub    $0x3c,%esp
c0001844:	e8 21 04 00 00       	call   c0001c6a <__x86.get_pc_thunk.di>
c0001849:	81 c7 b7 37 00 00    	add    $0x37b7,%edi
c000184f:	8b 45 08             	mov    0x8(%ebp),%eax
c0001852:	88 45 c4             	mov    %al,-0x3c(%ebp)
c0001855:	eb 1c                	jmp    c0001873 <vprintfmt+0x3c>
c0001857:	85 db                	test   %ebx,%ebx
c0001859:	0f 84 c2 03 00 00    	je     c0001c21 <.L20+0x32>
c000185f:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001863:	83 ec 04             	sub    $0x4,%esp
c0001866:	50                   	push   %eax
c0001867:	ff 75 10             	pushl  0x10(%ebp)
c000186a:	53                   	push   %ebx
c000186b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000186e:	ff d0                	call   *%eax
c0001870:	83 c4 10             	add    $0x10,%esp
c0001873:	8b 45 14             	mov    0x14(%ebp),%eax
c0001876:	8d 50 01             	lea    0x1(%eax),%edx
c0001879:	89 55 14             	mov    %edx,0x14(%ebp)
c000187c:	0f b6 00             	movzbl (%eax),%eax
c000187f:	0f b6 d8             	movzbl %al,%ebx
c0001882:	83 fb 25             	cmp    $0x25,%ebx
c0001885:	75 d0                	jne    c0001857 <vprintfmt+0x20>
c0001887:	c6 45 cf 20          	movb   $0x20,-0x31(%ebp)
c000188b:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%ebp)
c0001892:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
c0001899:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00018a0:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00018a7:	8b 45 14             	mov    0x14(%ebp),%eax
c00018aa:	8d 50 01             	lea    0x1(%eax),%edx
c00018ad:	89 55 14             	mov    %edx,0x14(%ebp)
c00018b0:	0f b6 00             	movzbl (%eax),%eax
c00018b3:	0f b6 d8             	movzbl %al,%ebx
c00018b6:	8d 43 dd             	lea    -0x23(%ebx),%eax
c00018b9:	83 f8 55             	cmp    $0x55,%eax
c00018bc:	0f 87 2d 03 00 00    	ja     c0001bef <.L20>
c00018c2:	c1 e0 02             	shl    $0x2,%eax
c00018c5:	8b 84 38 d4 e0 ff ff 	mov    -0x1f2c(%eax,%edi,1),%eax
c00018cc:	01 f8                	add    %edi,%eax
c00018ce:	3e ff e0             	notrack jmp *%eax

c00018d1 <.L34>:
c00018d1:	c6 45 cf 2d          	movb   $0x2d,-0x31(%ebp)
c00018d5:	eb d0                	jmp    c00018a7 <vprintfmt+0x70>

c00018d7 <.L32>:
c00018d7:	c6 45 cf 30          	movb   $0x30,-0x31(%ebp)
c00018db:	eb ca                	jmp    c00018a7 <vprintfmt+0x70>

c00018dd <.L31>:
c00018dd:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
c00018e4:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00018e7:	89 d0                	mov    %edx,%eax
c00018e9:	c1 e0 02             	shl    $0x2,%eax
c00018ec:	01 d0                	add    %edx,%eax
c00018ee:	01 c0                	add    %eax,%eax
c00018f0:	01 d8                	add    %ebx,%eax
c00018f2:	83 e8 30             	sub    $0x30,%eax
c00018f5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00018f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00018fb:	0f b6 00             	movzbl (%eax),%eax
c00018fe:	0f be d8             	movsbl %al,%ebx
c0001901:	83 fb 2f             	cmp    $0x2f,%ebx
c0001904:	7e 39                	jle    c000193f <.L37+0xc>
c0001906:	83 fb 39             	cmp    $0x39,%ebx
c0001909:	7f 34                	jg     c000193f <.L37+0xc>
c000190b:	83 45 14 01          	addl   $0x1,0x14(%ebp)
c000190f:	eb d3                	jmp    c00018e4 <.L31+0x7>

c0001911 <.L35>:
c0001911:	8b 45 18             	mov    0x18(%ebp),%eax
c0001914:	8d 50 04             	lea    0x4(%eax),%edx
c0001917:	89 55 18             	mov    %edx,0x18(%ebp)
c000191a:	8b 00                	mov    (%eax),%eax
c000191c:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c000191f:	eb 1f                	jmp    c0001940 <.L37+0xd>

c0001921 <.L33>:
c0001921:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
c0001925:	79 80                	jns    c00018a7 <vprintfmt+0x70>
c0001927:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
c000192e:	e9 74 ff ff ff       	jmp    c00018a7 <vprintfmt+0x70>

c0001933 <.L37>:
c0001933:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%ebp)
c000193a:	e9 68 ff ff ff       	jmp    c00018a7 <vprintfmt+0x70>
c000193f:	90                   	nop
c0001940:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
c0001944:	0f 89 5d ff ff ff    	jns    c00018a7 <vprintfmt+0x70>
c000194a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c000194d:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0001950:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
c0001957:	e9 4b ff ff ff       	jmp    c00018a7 <vprintfmt+0x70>

c000195c <.L27>:
c000195c:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
c0001960:	e9 42 ff ff ff       	jmp    c00018a7 <vprintfmt+0x70>

c0001965 <.L30>:
c0001965:	0f b6 55 c4          	movzbl -0x3c(%ebp),%edx
c0001969:	8b 45 18             	mov    0x18(%ebp),%eax
c000196c:	8d 48 04             	lea    0x4(%eax),%ecx
c000196f:	89 4d 18             	mov    %ecx,0x18(%ebp)
c0001972:	8b 00                	mov    (%eax),%eax
c0001974:	83 ec 04             	sub    $0x4,%esp
c0001977:	52                   	push   %edx
c0001978:	ff 75 10             	pushl  0x10(%ebp)
c000197b:	50                   	push   %eax
c000197c:	8b 45 0c             	mov    0xc(%ebp),%eax
c000197f:	ff d0                	call   *%eax
c0001981:	83 c4 10             	add    $0x10,%esp
c0001984:	e9 93 02 00 00       	jmp    c0001c1c <.L20+0x2d>

c0001989 <.L28>:
c0001989:	8b 45 18             	mov    0x18(%ebp),%eax
c000198c:	8d 50 04             	lea    0x4(%eax),%edx
c000198f:	89 55 18             	mov    %edx,0x18(%ebp)
c0001992:	8b 18                	mov    (%eax),%ebx
c0001994:	85 db                	test   %ebx,%ebx
c0001996:	79 02                	jns    c000199a <.L28+0x11>
c0001998:	f7 db                	neg    %ebx
c000199a:	83 fb 06             	cmp    $0x6,%ebx
c000199d:	7f 0b                	jg     c00019aa <.L28+0x21>
c000199f:	8b b4 9f e4 ff ff ff 	mov    -0x1c(%edi,%ebx,4),%esi
c00019a6:	85 f6                	test   %esi,%esi
c00019a8:	75 23                	jne    c00019cd <.L28+0x44>
c00019aa:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c00019ae:	83 ec 0c             	sub    $0xc,%esp
c00019b1:	53                   	push   %ebx
c00019b2:	8d 97 be e0 ff ff    	lea    -0x1f42(%edi),%edx
c00019b8:	52                   	push   %edx
c00019b9:	ff 75 10             	pushl  0x10(%ebp)
c00019bc:	ff 75 0c             	pushl  0xc(%ebp)
c00019bf:	50                   	push   %eax
c00019c0:	e8 65 02 00 00       	call   c0001c2a <printfmt>
c00019c5:	83 c4 20             	add    $0x20,%esp
c00019c8:	e9 4f 02 00 00       	jmp    c0001c1c <.L20+0x2d>
c00019cd:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c00019d1:	83 ec 0c             	sub    $0xc,%esp
c00019d4:	56                   	push   %esi
c00019d5:	8d 97 c7 e0 ff ff    	lea    -0x1f39(%edi),%edx
c00019db:	52                   	push   %edx
c00019dc:	ff 75 10             	pushl  0x10(%ebp)
c00019df:	ff 75 0c             	pushl  0xc(%ebp)
c00019e2:	50                   	push   %eax
c00019e3:	e8 42 02 00 00       	call   c0001c2a <printfmt>
c00019e8:	83 c4 20             	add    $0x20,%esp
c00019eb:	e9 2c 02 00 00       	jmp    c0001c1c <.L20+0x2d>

c00019f0 <.L24>:
c00019f0:	8b 45 18             	mov    0x18(%ebp),%eax
c00019f3:	8d 50 04             	lea    0x4(%eax),%edx
c00019f6:	89 55 18             	mov    %edx,0x18(%ebp)
c00019f9:	8b 30                	mov    (%eax),%esi
c00019fb:	85 f6                	test   %esi,%esi
c00019fd:	75 06                	jne    c0001a05 <.L24+0x15>
c00019ff:	8d b7 ca e0 ff ff    	lea    -0x1f36(%edi),%esi
c0001a05:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
c0001a09:	0f 8e 80 00 00 00    	jle    c0001a8f <.L24+0x9f>
c0001a0f:	80 7d cf 2d          	cmpb   $0x2d,-0x31(%ebp)
c0001a13:	74 7a                	je     c0001a8f <.L24+0x9f>
c0001a15:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0001a18:	83 ec 08             	sub    $0x8,%esp
c0001a1b:	50                   	push   %eax
c0001a1c:	56                   	push   %esi
c0001a1d:	89 fb                	mov    %edi,%ebx
c0001a1f:	e8 7e 02 00 00       	call   c0001ca2 <strnlen>
c0001a24:	83 c4 10             	add    $0x10,%esp
c0001a27:	29 45 d8             	sub    %eax,-0x28(%ebp)
c0001a2a:	eb 1c                	jmp    c0001a48 <.L24+0x58>
c0001a2c:	0f b6 55 c4          	movzbl -0x3c(%ebp),%edx
c0001a30:	0f be 45 cf          	movsbl -0x31(%ebp),%eax
c0001a34:	83 ec 04             	sub    $0x4,%esp
c0001a37:	52                   	push   %edx
c0001a38:	ff 75 10             	pushl  0x10(%ebp)
c0001a3b:	50                   	push   %eax
c0001a3c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001a3f:	ff d0                	call   *%eax
c0001a41:	83 c4 10             	add    $0x10,%esp
c0001a44:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
c0001a48:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
c0001a4c:	7f de                	jg     c0001a2c <.L24+0x3c>
c0001a4e:	eb 3f                	jmp    c0001a8f <.L24+0x9f>
c0001a50:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
c0001a54:	74 21                	je     c0001a77 <.L24+0x87>
c0001a56:	83 fb 1f             	cmp    $0x1f,%ebx
c0001a59:	7e 05                	jle    c0001a60 <.L24+0x70>
c0001a5b:	83 fb 7e             	cmp    $0x7e,%ebx
c0001a5e:	7e 17                	jle    c0001a77 <.L24+0x87>
c0001a60:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001a64:	83 ec 04             	sub    $0x4,%esp
c0001a67:	50                   	push   %eax
c0001a68:	ff 75 10             	pushl  0x10(%ebp)
c0001a6b:	6a 3f                	push   $0x3f
c0001a6d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001a70:	ff d0                	call   *%eax
c0001a72:	83 c4 10             	add    $0x10,%esp
c0001a75:	eb 14                	jmp    c0001a8b <.L24+0x9b>
c0001a77:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001a7b:	83 ec 04             	sub    $0x4,%esp
c0001a7e:	50                   	push   %eax
c0001a7f:	ff 75 10             	pushl  0x10(%ebp)
c0001a82:	53                   	push   %ebx
c0001a83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001a86:	ff d0                	call   *%eax
c0001a88:	83 c4 10             	add    $0x10,%esp
c0001a8b:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
c0001a8f:	89 f0                	mov    %esi,%eax
c0001a91:	8d 70 01             	lea    0x1(%eax),%esi
c0001a94:	0f b6 00             	movzbl (%eax),%eax
c0001a97:	0f be d8             	movsbl %al,%ebx
c0001a9a:	85 db                	test   %ebx,%ebx
c0001a9c:	74 2b                	je     c0001ac9 <.L24+0xd9>
c0001a9e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
c0001aa2:	78 ac                	js     c0001a50 <.L24+0x60>
c0001aa4:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
c0001aa8:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
c0001aac:	79 a2                	jns    c0001a50 <.L24+0x60>
c0001aae:	eb 19                	jmp    c0001ac9 <.L24+0xd9>
c0001ab0:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001ab4:	83 ec 04             	sub    $0x4,%esp
c0001ab7:	50                   	push   %eax
c0001ab8:	ff 75 10             	pushl  0x10(%ebp)
c0001abb:	6a 20                	push   $0x20
c0001abd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001ac0:	ff d0                	call   *%eax
c0001ac2:	83 c4 10             	add    $0x10,%esp
c0001ac5:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
c0001ac9:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
c0001acd:	7f e1                	jg     c0001ab0 <.L24+0xc0>
c0001acf:	e9 48 01 00 00       	jmp    c0001c1c <.L20+0x2d>

c0001ad4 <.L29>:
c0001ad4:	83 ec 08             	sub    $0x8,%esp
c0001ad7:	ff 75 dc             	pushl  -0x24(%ebp)
c0001ada:	8d 45 18             	lea    0x18(%ebp),%eax
c0001add:	50                   	push   %eax
c0001ade:	e8 04 fd ff ff       	call   c00017e7 <getint>
c0001ae3:	83 c4 10             	add    $0x10,%esp
c0001ae6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001ae9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0001aec:	85 c0                	test   %eax,%eax
c0001aee:	79 1d                	jns    c0001b0d <.L29+0x39>
c0001af0:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001af4:	83 ec 04             	sub    $0x4,%esp
c0001af7:	50                   	push   %eax
c0001af8:	ff 75 10             	pushl  0x10(%ebp)
c0001afb:	6a 2d                	push   $0x2d
c0001afd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001b00:	ff d0                	call   *%eax
c0001b02:	83 c4 10             	add    $0x10,%esp
c0001b05:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0001b08:	f7 d8                	neg    %eax
c0001b0a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001b0d:	c7 45 e0 0a 00 00 00 	movl   $0xa,-0x20(%ebp)
c0001b14:	e9 99 00 00 00       	jmp    c0001bb2 <.L21+0x1c>

c0001b19 <.L23>:
c0001b19:	83 ec 08             	sub    $0x8,%esp
c0001b1c:	ff 75 dc             	pushl  -0x24(%ebp)
c0001b1f:	8d 45 18             	lea    0x18(%ebp),%eax
c0001b22:	50                   	push   %eax
c0001b23:	e8 6f fc ff ff       	call   c0001797 <getuint>
c0001b28:	83 c4 10             	add    $0x10,%esp
c0001b2b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001b2e:	c7 45 e0 0a 00 00 00 	movl   $0xa,-0x20(%ebp)
c0001b35:	eb 7b                	jmp    c0001bb2 <.L21+0x1c>

c0001b37 <.L26>:
c0001b37:	83 ec 08             	sub    $0x8,%esp
c0001b3a:	ff 75 dc             	pushl  -0x24(%ebp)
c0001b3d:	8d 45 18             	lea    0x18(%ebp),%eax
c0001b40:	50                   	push   %eax
c0001b41:	e8 51 fc ff ff       	call   c0001797 <getuint>
c0001b46:	83 c4 10             	add    $0x10,%esp
c0001b49:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001b4c:	c7 45 e0 08 00 00 00 	movl   $0x8,-0x20(%ebp)
c0001b53:	eb 5d                	jmp    c0001bb2 <.L21+0x1c>

c0001b55 <.L25>:
c0001b55:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001b59:	83 ec 04             	sub    $0x4,%esp
c0001b5c:	50                   	push   %eax
c0001b5d:	ff 75 10             	pushl  0x10(%ebp)
c0001b60:	6a 30                	push   $0x30
c0001b62:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001b65:	ff d0                	call   *%eax
c0001b67:	83 c4 10             	add    $0x10,%esp
c0001b6a:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001b6e:	83 ec 04             	sub    $0x4,%esp
c0001b71:	50                   	push   %eax
c0001b72:	ff 75 10             	pushl  0x10(%ebp)
c0001b75:	6a 78                	push   $0x78
c0001b77:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001b7a:	ff d0                	call   *%eax
c0001b7c:	83 c4 10             	add    $0x10,%esp
c0001b7f:	8b 45 18             	mov    0x18(%ebp),%eax
c0001b82:	8d 50 04             	lea    0x4(%eax),%edx
c0001b85:	89 55 18             	mov    %edx,0x18(%ebp)
c0001b88:	8b 00                	mov    (%eax),%eax
c0001b8a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001b8d:	c7 45 e0 10 00 00 00 	movl   $0x10,-0x20(%ebp)
c0001b94:	eb 1c                	jmp    c0001bb2 <.L21+0x1c>

c0001b96 <.L21>:
c0001b96:	83 ec 08             	sub    $0x8,%esp
c0001b99:	ff 75 dc             	pushl  -0x24(%ebp)
c0001b9c:	8d 45 18             	lea    0x18(%ebp),%eax
c0001b9f:	50                   	push   %eax
c0001ba0:	e8 f2 fb ff ff       	call   c0001797 <getuint>
c0001ba5:	83 c4 10             	add    $0x10,%esp
c0001ba8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0001bab:	c7 45 e0 10 00 00 00 	movl   $0x10,-0x20(%ebp)
c0001bb2:	0f be 4d cf          	movsbl -0x31(%ebp),%ecx
c0001bb6:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0001bb9:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001bbd:	83 ec 04             	sub    $0x4,%esp
c0001bc0:	51                   	push   %ecx
c0001bc1:	ff 75 d8             	pushl  -0x28(%ebp)
c0001bc4:	52                   	push   %edx
c0001bc5:	ff 75 e4             	pushl  -0x1c(%ebp)
c0001bc8:	ff 75 10             	pushl  0x10(%ebp)
c0001bcb:	ff 75 0c             	pushl  0xc(%ebp)
c0001bce:	50                   	push   %eax
c0001bcf:	e8 1a fb ff ff       	call   c00016ee <printnum>
c0001bd4:	83 c4 20             	add    $0x20,%esp
c0001bd7:	eb 43                	jmp    c0001c1c <.L20+0x2d>

c0001bd9 <.L36>:
c0001bd9:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001bdd:	83 ec 04             	sub    $0x4,%esp
c0001be0:	50                   	push   %eax
c0001be1:	ff 75 10             	pushl  0x10(%ebp)
c0001be4:	53                   	push   %ebx
c0001be5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001be8:	ff d0                	call   *%eax
c0001bea:	83 c4 10             	add    $0x10,%esp
c0001bed:	eb 2d                	jmp    c0001c1c <.L20+0x2d>

c0001bef <.L20>:
c0001bef:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
c0001bf3:	83 ec 04             	sub    $0x4,%esp
c0001bf6:	50                   	push   %eax
c0001bf7:	ff 75 10             	pushl  0x10(%ebp)
c0001bfa:	6a 25                	push   $0x25
c0001bfc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001bff:	ff d0                	call   *%eax
c0001c01:	83 c4 10             	add    $0x10,%esp
c0001c04:	83 6d 14 01          	subl   $0x1,0x14(%ebp)
c0001c08:	eb 04                	jmp    c0001c0e <.L20+0x1f>
c0001c0a:	83 6d 14 01          	subl   $0x1,0x14(%ebp)
c0001c0e:	8b 45 14             	mov    0x14(%ebp),%eax
c0001c11:	83 e8 01             	sub    $0x1,%eax
c0001c14:	0f b6 00             	movzbl (%eax),%eax
c0001c17:	3c 25                	cmp    $0x25,%al
c0001c19:	75 ef                	jne    c0001c0a <.L20+0x1b>
c0001c1b:	90                   	nop
c0001c1c:	e9 52 fc ff ff       	jmp    c0001873 <vprintfmt+0x3c>
c0001c21:	90                   	nop
c0001c22:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0001c25:	5b                   	pop    %ebx
c0001c26:	5e                   	pop    %esi
c0001c27:	5f                   	pop    %edi
c0001c28:	5d                   	pop    %ebp
c0001c29:	c3                   	ret    

c0001c2a <printfmt>:
c0001c2a:	f3 0f 1e fb          	endbr32 
c0001c2e:	55                   	push   %ebp
c0001c2f:	89 e5                	mov    %esp,%ebp
c0001c31:	83 ec 28             	sub    $0x28,%esp
c0001c34:	e8 ad fa ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001c39:	05 c7 33 00 00       	add    $0x33c7,%eax
c0001c3e:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c41:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0001c44:	8d 45 18             	lea    0x18(%ebp),%eax
c0001c47:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001c4a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0001c4d:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0001c51:	83 ec 0c             	sub    $0xc,%esp
c0001c54:	52                   	push   %edx
c0001c55:	ff 75 14             	pushl  0x14(%ebp)
c0001c58:	ff 75 10             	pushl  0x10(%ebp)
c0001c5b:	ff 75 0c             	pushl  0xc(%ebp)
c0001c5e:	50                   	push   %eax
c0001c5f:	e8 d3 fb ff ff       	call   c0001837 <vprintfmt>
c0001c64:	83 c4 20             	add    $0x20,%esp
c0001c67:	90                   	nop
c0001c68:	c9                   	leave  
c0001c69:	c3                   	ret    

c0001c6a <__x86.get_pc_thunk.di>:
c0001c6a:	8b 3c 24             	mov    (%esp),%edi
c0001c6d:	c3                   	ret    

c0001c6e <strlen>:
c0001c6e:	f3 0f 1e fb          	endbr32 
c0001c72:	55                   	push   %ebp
c0001c73:	89 e5                	mov    %esp,%ebp
c0001c75:	83 ec 10             	sub    $0x10,%esp
c0001c78:	e8 69 fa ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001c7d:	05 83 33 00 00       	add    $0x3383,%eax
c0001c82:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001c89:	eb 08                	jmp    c0001c93 <strlen+0x25>
c0001c8b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001c8f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001c93:	8b 45 08             	mov    0x8(%ebp),%eax
c0001c96:	0f b6 00             	movzbl (%eax),%eax
c0001c99:	84 c0                	test   %al,%al
c0001c9b:	75 ee                	jne    c0001c8b <strlen+0x1d>
c0001c9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001ca0:	c9                   	leave  
c0001ca1:	c3                   	ret    

c0001ca2 <strnlen>:
c0001ca2:	f3 0f 1e fb          	endbr32 
c0001ca6:	55                   	push   %ebp
c0001ca7:	89 e5                	mov    %esp,%ebp
c0001ca9:	83 ec 10             	sub    $0x10,%esp
c0001cac:	e8 35 fa ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001cb1:	05 4f 33 00 00       	add    $0x334f,%eax
c0001cb6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001cbd:	eb 0c                	jmp    c0001ccb <strnlen+0x29>
c0001cbf:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001cc3:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001cc7:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
c0001ccb:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0001ccf:	74 0a                	je     c0001cdb <strnlen+0x39>
c0001cd1:	8b 45 08             	mov    0x8(%ebp),%eax
c0001cd4:	0f b6 00             	movzbl (%eax),%eax
c0001cd7:	84 c0                	test   %al,%al
c0001cd9:	75 e4                	jne    c0001cbf <strnlen+0x1d>
c0001cdb:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001cde:	c9                   	leave  
c0001cdf:	c3                   	ret    

c0001ce0 <strcpy>:
c0001ce0:	f3 0f 1e fb          	endbr32 
c0001ce4:	55                   	push   %ebp
c0001ce5:	89 e5                	mov    %esp,%ebp
c0001ce7:	83 ec 10             	sub    $0x10,%esp
c0001cea:	e8 f7 f9 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001cef:	05 11 33 00 00       	add    $0x3311,%eax
c0001cf4:	8b 45 08             	mov    0x8(%ebp),%eax
c0001cf7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001cfa:	90                   	nop
c0001cfb:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001cfe:	8d 42 01             	lea    0x1(%edx),%eax
c0001d01:	89 45 0c             	mov    %eax,0xc(%ebp)
c0001d04:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d07:	8d 48 01             	lea    0x1(%eax),%ecx
c0001d0a:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0001d0d:	0f b6 12             	movzbl (%edx),%edx
c0001d10:	88 10                	mov    %dl,(%eax)
c0001d12:	0f b6 00             	movzbl (%eax),%eax
c0001d15:	84 c0                	test   %al,%al
c0001d17:	75 e2                	jne    c0001cfb <strcpy+0x1b>
c0001d19:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001d1c:	c9                   	leave  
c0001d1d:	c3                   	ret    

c0001d1e <strcat>:
c0001d1e:	f3 0f 1e fb          	endbr32 
c0001d22:	55                   	push   %ebp
c0001d23:	89 e5                	mov    %esp,%ebp
c0001d25:	83 ec 10             	sub    $0x10,%esp
c0001d28:	e8 b9 f9 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001d2d:	05 d3 32 00 00       	add    $0x32d3,%eax
c0001d32:	ff 75 08             	pushl  0x8(%ebp)
c0001d35:	e8 34 ff ff ff       	call   c0001c6e <strlen>
c0001d3a:	83 c4 04             	add    $0x4,%esp
c0001d3d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001d40:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0001d43:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d46:	01 d0                	add    %edx,%eax
c0001d48:	ff 75 0c             	pushl  0xc(%ebp)
c0001d4b:	50                   	push   %eax
c0001d4c:	e8 8f ff ff ff       	call   c0001ce0 <strcpy>
c0001d51:	83 c4 08             	add    $0x8,%esp
c0001d54:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d57:	c9                   	leave  
c0001d58:	c3                   	ret    

c0001d59 <strncpy>:
c0001d59:	f3 0f 1e fb          	endbr32 
c0001d5d:	55                   	push   %ebp
c0001d5e:	89 e5                	mov    %esp,%ebp
c0001d60:	83 ec 10             	sub    $0x10,%esp
c0001d63:	e8 7e f9 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001d68:	05 98 32 00 00       	add    $0x3298,%eax
c0001d6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d70:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0001d73:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001d7a:	eb 23                	jmp    c0001d9f <strncpy+0x46>
c0001d7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0001d7f:	8d 50 01             	lea    0x1(%eax),%edx
c0001d82:	89 55 08             	mov    %edx,0x8(%ebp)
c0001d85:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001d88:	0f b6 12             	movzbl (%edx),%edx
c0001d8b:	88 10                	mov    %dl,(%eax)
c0001d8d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001d90:	0f b6 00             	movzbl (%eax),%eax
c0001d93:	84 c0                	test   %al,%al
c0001d95:	74 04                	je     c0001d9b <strncpy+0x42>
c0001d97:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0001d9b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001d9f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001da2:	3b 45 10             	cmp    0x10(%ebp),%eax
c0001da5:	72 d5                	jb     c0001d7c <strncpy+0x23>
c0001da7:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0001daa:	c9                   	leave  
c0001dab:	c3                   	ret    

c0001dac <strlcpy>:
c0001dac:	f3 0f 1e fb          	endbr32 
c0001db0:	55                   	push   %ebp
c0001db1:	89 e5                	mov    %esp,%ebp
c0001db3:	83 ec 10             	sub    $0x10,%esp
c0001db6:	e8 2b f9 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001dbb:	05 45 32 00 00       	add    $0x3245,%eax
c0001dc0:	8b 45 08             	mov    0x8(%ebp),%eax
c0001dc3:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001dc6:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001dca:	74 33                	je     c0001dff <strlcpy+0x53>
c0001dcc:	eb 17                	jmp    c0001de5 <strlcpy+0x39>
c0001dce:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001dd1:	8d 42 01             	lea    0x1(%edx),%eax
c0001dd4:	89 45 0c             	mov    %eax,0xc(%ebp)
c0001dd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0001dda:	8d 48 01             	lea    0x1(%eax),%ecx
c0001ddd:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0001de0:	0f b6 12             	movzbl (%edx),%edx
c0001de3:	88 10                	mov    %dl,(%eax)
c0001de5:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
c0001de9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001ded:	74 0a                	je     c0001df9 <strlcpy+0x4d>
c0001def:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001df2:	0f b6 00             	movzbl (%eax),%eax
c0001df5:	84 c0                	test   %al,%al
c0001df7:	75 d5                	jne    c0001dce <strlcpy+0x22>
c0001df9:	8b 45 08             	mov    0x8(%ebp),%eax
c0001dfc:	c6 00 00             	movb   $0x0,(%eax)
c0001dff:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e02:	2b 45 fc             	sub    -0x4(%ebp),%eax
c0001e05:	c9                   	leave  
c0001e06:	c3                   	ret    

c0001e07 <strcmp>:
c0001e07:	f3 0f 1e fb          	endbr32 
c0001e0b:	55                   	push   %ebp
c0001e0c:	89 e5                	mov    %esp,%ebp
c0001e0e:	e8 d3 f8 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001e13:	05 ed 31 00 00       	add    $0x31ed,%eax
c0001e18:	eb 08                	jmp    c0001e22 <strcmp+0x1b>
c0001e1a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001e1e:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0001e22:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e25:	0f b6 00             	movzbl (%eax),%eax
c0001e28:	84 c0                	test   %al,%al
c0001e2a:	74 10                	je     c0001e3c <strcmp+0x35>
c0001e2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e2f:	0f b6 10             	movzbl (%eax),%edx
c0001e32:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001e35:	0f b6 00             	movzbl (%eax),%eax
c0001e38:	38 c2                	cmp    %al,%dl
c0001e3a:	74 de                	je     c0001e1a <strcmp+0x13>
c0001e3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e3f:	0f b6 00             	movzbl (%eax),%eax
c0001e42:	0f b6 d0             	movzbl %al,%edx
c0001e45:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001e48:	0f b6 00             	movzbl (%eax),%eax
c0001e4b:	0f b6 c0             	movzbl %al,%eax
c0001e4e:	29 c2                	sub    %eax,%edx
c0001e50:	89 d0                	mov    %edx,%eax
c0001e52:	5d                   	pop    %ebp
c0001e53:	c3                   	ret    

c0001e54 <strncmp>:
c0001e54:	f3 0f 1e fb          	endbr32 
c0001e58:	55                   	push   %ebp
c0001e59:	89 e5                	mov    %esp,%ebp
c0001e5b:	e8 86 f8 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001e60:	05 a0 31 00 00       	add    $0x31a0,%eax
c0001e65:	eb 0c                	jmp    c0001e73 <strncmp+0x1f>
c0001e67:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
c0001e6b:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001e6f:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0001e73:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001e77:	74 1a                	je     c0001e93 <strncmp+0x3f>
c0001e79:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e7c:	0f b6 00             	movzbl (%eax),%eax
c0001e7f:	84 c0                	test   %al,%al
c0001e81:	74 10                	je     c0001e93 <strncmp+0x3f>
c0001e83:	8b 45 08             	mov    0x8(%ebp),%eax
c0001e86:	0f b6 10             	movzbl (%eax),%edx
c0001e89:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001e8c:	0f b6 00             	movzbl (%eax),%eax
c0001e8f:	38 c2                	cmp    %al,%dl
c0001e91:	74 d4                	je     c0001e67 <strncmp+0x13>
c0001e93:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001e97:	75 07                	jne    c0001ea0 <strncmp+0x4c>
c0001e99:	b8 00 00 00 00       	mov    $0x0,%eax
c0001e9e:	eb 16                	jmp    c0001eb6 <strncmp+0x62>
c0001ea0:	8b 45 08             	mov    0x8(%ebp),%eax
c0001ea3:	0f b6 00             	movzbl (%eax),%eax
c0001ea6:	0f b6 d0             	movzbl %al,%edx
c0001ea9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001eac:	0f b6 00             	movzbl (%eax),%eax
c0001eaf:	0f b6 c0             	movzbl %al,%eax
c0001eb2:	29 c2                	sub    %eax,%edx
c0001eb4:	89 d0                	mov    %edx,%eax
c0001eb6:	5d                   	pop    %ebp
c0001eb7:	c3                   	ret    

c0001eb8 <strchr>:
c0001eb8:	f3 0f 1e fb          	endbr32 
c0001ebc:	55                   	push   %ebp
c0001ebd:	89 e5                	mov    %esp,%ebp
c0001ebf:	83 ec 04             	sub    $0x4,%esp
c0001ec2:	e8 1f f8 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001ec7:	05 39 31 00 00       	add    $0x3139,%eax
c0001ecc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001ecf:	88 45 fc             	mov    %al,-0x4(%ebp)
c0001ed2:	eb 14                	jmp    c0001ee8 <strchr+0x30>
c0001ed4:	8b 45 08             	mov    0x8(%ebp),%eax
c0001ed7:	0f b6 00             	movzbl (%eax),%eax
c0001eda:	38 45 fc             	cmp    %al,-0x4(%ebp)
c0001edd:	75 05                	jne    c0001ee4 <strchr+0x2c>
c0001edf:	8b 45 08             	mov    0x8(%ebp),%eax
c0001ee2:	eb 13                	jmp    c0001ef7 <strchr+0x3f>
c0001ee4:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001ee8:	8b 45 08             	mov    0x8(%ebp),%eax
c0001eeb:	0f b6 00             	movzbl (%eax),%eax
c0001eee:	84 c0                	test   %al,%al
c0001ef0:	75 e2                	jne    c0001ed4 <strchr+0x1c>
c0001ef2:	b8 00 00 00 00       	mov    $0x0,%eax
c0001ef7:	c9                   	leave  
c0001ef8:	c3                   	ret    

c0001ef9 <strfind>:
c0001ef9:	f3 0f 1e fb          	endbr32 
c0001efd:	55                   	push   %ebp
c0001efe:	89 e5                	mov    %esp,%ebp
c0001f00:	83 ec 04             	sub    $0x4,%esp
c0001f03:	e8 de f7 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001f08:	05 f8 30 00 00       	add    $0x30f8,%eax
c0001f0d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001f10:	88 45 fc             	mov    %al,-0x4(%ebp)
c0001f13:	eb 0f                	jmp    c0001f24 <strfind+0x2b>
c0001f15:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f18:	0f b6 00             	movzbl (%eax),%eax
c0001f1b:	38 45 fc             	cmp    %al,-0x4(%ebp)
c0001f1e:	74 10                	je     c0001f30 <strfind+0x37>
c0001f20:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0001f24:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f27:	0f b6 00             	movzbl (%eax),%eax
c0001f2a:	84 c0                	test   %al,%al
c0001f2c:	75 e7                	jne    c0001f15 <strfind+0x1c>
c0001f2e:	eb 01                	jmp    c0001f31 <strfind+0x38>
c0001f30:	90                   	nop
c0001f31:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f34:	c9                   	leave  
c0001f35:	c3                   	ret    

c0001f36 <memset>:
c0001f36:	f3 0f 1e fb          	endbr32 
c0001f3a:	55                   	push   %ebp
c0001f3b:	89 e5                	mov    %esp,%ebp
c0001f3d:	57                   	push   %edi
c0001f3e:	e8 a3 f7 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001f43:	05 bd 30 00 00       	add    $0x30bd,%eax
c0001f48:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0001f4c:	75 05                	jne    c0001f53 <memset+0x1d>
c0001f4e:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f51:	eb 5c                	jmp    c0001faf <memset+0x79>
c0001f53:	8b 45 08             	mov    0x8(%ebp),%eax
c0001f56:	83 e0 03             	and    $0x3,%eax
c0001f59:	85 c0                	test   %eax,%eax
c0001f5b:	75 41                	jne    c0001f9e <memset+0x68>
c0001f5d:	8b 45 10             	mov    0x10(%ebp),%eax
c0001f60:	83 e0 03             	and    $0x3,%eax
c0001f63:	85 c0                	test   %eax,%eax
c0001f65:	75 37                	jne    c0001f9e <memset+0x68>
c0001f67:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
c0001f6e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001f71:	c1 e0 18             	shl    $0x18,%eax
c0001f74:	89 c2                	mov    %eax,%edx
c0001f76:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001f79:	c1 e0 10             	shl    $0x10,%eax
c0001f7c:	09 c2                	or     %eax,%edx
c0001f7e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001f81:	c1 e0 08             	shl    $0x8,%eax
c0001f84:	09 d0                	or     %edx,%eax
c0001f86:	09 45 0c             	or     %eax,0xc(%ebp)
c0001f89:	8b 45 10             	mov    0x10(%ebp),%eax
c0001f8c:	c1 e8 02             	shr    $0x2,%eax
c0001f8f:	89 c1                	mov    %eax,%ecx
c0001f91:	8b 55 08             	mov    0x8(%ebp),%edx
c0001f94:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001f97:	89 d7                	mov    %edx,%edi
c0001f99:	fc                   	cld    
c0001f9a:	f3 ab                	rep stos %eax,%es:(%edi)
c0001f9c:	eb 0e                	jmp    c0001fac <memset+0x76>
c0001f9e:	8b 55 08             	mov    0x8(%ebp),%edx
c0001fa1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001fa4:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0001fa7:	89 d7                	mov    %edx,%edi
c0001fa9:	fc                   	cld    
c0001faa:	f3 aa                	rep stos %al,%es:(%edi)
c0001fac:	8b 45 08             	mov    0x8(%ebp),%eax
c0001faf:	5f                   	pop    %edi
c0001fb0:	5d                   	pop    %ebp
c0001fb1:	c3                   	ret    

c0001fb2 <memmove>:
c0001fb2:	f3 0f 1e fb          	endbr32 
c0001fb6:	55                   	push   %ebp
c0001fb7:	89 e5                	mov    %esp,%ebp
c0001fb9:	57                   	push   %edi
c0001fba:	56                   	push   %esi
c0001fbb:	53                   	push   %ebx
c0001fbc:	83 ec 10             	sub    $0x10,%esp
c0001fbf:	e8 22 f7 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0001fc4:	05 3c 30 00 00       	add    $0x303c,%eax
c0001fc9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0001fcc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0001fcf:	8b 45 08             	mov    0x8(%ebp),%eax
c0001fd2:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0001fd5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001fd8:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0001fdb:	73 6d                	jae    c000204a <memmove+0x98>
c0001fdd:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0001fe0:	8b 45 10             	mov    0x10(%ebp),%eax
c0001fe3:	01 d0                	add    %edx,%eax
c0001fe5:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c0001fe8:	73 60                	jae    c000204a <memmove+0x98>
c0001fea:	8b 45 10             	mov    0x10(%ebp),%eax
c0001fed:	01 45 f0             	add    %eax,-0x10(%ebp)
c0001ff0:	8b 45 10             	mov    0x10(%ebp),%eax
c0001ff3:	01 45 ec             	add    %eax,-0x14(%ebp)
c0001ff6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001ff9:	83 e0 03             	and    $0x3,%eax
c0001ffc:	85 c0                	test   %eax,%eax
c0001ffe:	75 2f                	jne    c000202f <memmove+0x7d>
c0002000:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002003:	83 e0 03             	and    $0x3,%eax
c0002006:	85 c0                	test   %eax,%eax
c0002008:	75 25                	jne    c000202f <memmove+0x7d>
c000200a:	8b 45 10             	mov    0x10(%ebp),%eax
c000200d:	83 e0 03             	and    $0x3,%eax
c0002010:	85 c0                	test   %eax,%eax
c0002012:	75 1b                	jne    c000202f <memmove+0x7d>
c0002014:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002017:	83 e8 04             	sub    $0x4,%eax
c000201a:	8b 55 f0             	mov    -0x10(%ebp),%edx
c000201d:	83 ea 04             	sub    $0x4,%edx
c0002020:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0002023:	c1 e9 02             	shr    $0x2,%ecx
c0002026:	89 c7                	mov    %eax,%edi
c0002028:	89 d6                	mov    %edx,%esi
c000202a:	fd                   	std    
c000202b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c000202d:	eb 18                	jmp    c0002047 <memmove+0x95>
c000202f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002032:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002035:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002038:	8d 58 ff             	lea    -0x1(%eax),%ebx
c000203b:	8b 45 10             	mov    0x10(%ebp),%eax
c000203e:	89 d7                	mov    %edx,%edi
c0002040:	89 de                	mov    %ebx,%esi
c0002042:	89 c1                	mov    %eax,%ecx
c0002044:	fd                   	std    
c0002045:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0002047:	fc                   	cld    
c0002048:	eb 45                	jmp    c000208f <memmove+0xdd>
c000204a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000204d:	83 e0 03             	and    $0x3,%eax
c0002050:	85 c0                	test   %eax,%eax
c0002052:	75 2b                	jne    c000207f <memmove+0xcd>
c0002054:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002057:	83 e0 03             	and    $0x3,%eax
c000205a:	85 c0                	test   %eax,%eax
c000205c:	75 21                	jne    c000207f <memmove+0xcd>
c000205e:	8b 45 10             	mov    0x10(%ebp),%eax
c0002061:	83 e0 03             	and    $0x3,%eax
c0002064:	85 c0                	test   %eax,%eax
c0002066:	75 17                	jne    c000207f <memmove+0xcd>
c0002068:	8b 45 10             	mov    0x10(%ebp),%eax
c000206b:	c1 e8 02             	shr    $0x2,%eax
c000206e:	89 c1                	mov    %eax,%ecx
c0002070:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002073:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0002076:	89 c7                	mov    %eax,%edi
c0002078:	89 d6                	mov    %edx,%esi
c000207a:	fc                   	cld    
c000207b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c000207d:	eb 10                	jmp    c000208f <memmove+0xdd>
c000207f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002082:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0002085:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0002088:	89 c7                	mov    %eax,%edi
c000208a:	89 d6                	mov    %edx,%esi
c000208c:	fc                   	cld    
c000208d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c000208f:	8b 45 08             	mov    0x8(%ebp),%eax
c0002092:	83 c4 10             	add    $0x10,%esp
c0002095:	5b                   	pop    %ebx
c0002096:	5e                   	pop    %esi
c0002097:	5f                   	pop    %edi
c0002098:	5d                   	pop    %ebp
c0002099:	c3                   	ret    

c000209a <memcpy>:
c000209a:	f3 0f 1e fb          	endbr32 
c000209e:	55                   	push   %ebp
c000209f:	89 e5                	mov    %esp,%ebp
c00020a1:	e8 40 f6 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00020a6:	05 5a 2f 00 00       	add    $0x2f5a,%eax
c00020ab:	ff 75 10             	pushl  0x10(%ebp)
c00020ae:	ff 75 0c             	pushl  0xc(%ebp)
c00020b1:	ff 75 08             	pushl  0x8(%ebp)
c00020b4:	e8 f9 fe ff ff       	call   c0001fb2 <memmove>
c00020b9:	83 c4 0c             	add    $0xc,%esp
c00020bc:	c9                   	leave  
c00020bd:	c3                   	ret    

c00020be <memcmp>:
c00020be:	f3 0f 1e fb          	endbr32 
c00020c2:	55                   	push   %ebp
c00020c3:	89 e5                	mov    %esp,%ebp
c00020c5:	83 ec 10             	sub    $0x10,%esp
c00020c8:	e8 19 f6 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00020cd:	05 33 2f 00 00       	add    $0x2f33,%eax
c00020d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00020d5:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00020d8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00020db:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00020de:	eb 30                	jmp    c0002110 <memcmp+0x52>
c00020e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00020e3:	0f b6 10             	movzbl (%eax),%edx
c00020e6:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00020e9:	0f b6 00             	movzbl (%eax),%eax
c00020ec:	38 c2                	cmp    %al,%dl
c00020ee:	74 18                	je     c0002108 <memcmp+0x4a>
c00020f0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00020f3:	0f b6 00             	movzbl (%eax),%eax
c00020f6:	0f b6 d0             	movzbl %al,%edx
c00020f9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00020fc:	0f b6 00             	movzbl (%eax),%eax
c00020ff:	0f b6 c0             	movzbl %al,%eax
c0002102:	29 c2                	sub    %eax,%edx
c0002104:	89 d0                	mov    %edx,%eax
c0002106:	eb 1a                	jmp    c0002122 <memcmp+0x64>
c0002108:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c000210c:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0002110:	8b 45 10             	mov    0x10(%ebp),%eax
c0002113:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002116:	89 55 10             	mov    %edx,0x10(%ebp)
c0002119:	85 c0                	test   %eax,%eax
c000211b:	75 c3                	jne    c00020e0 <memcmp+0x22>
c000211d:	b8 00 00 00 00       	mov    $0x0,%eax
c0002122:	c9                   	leave  
c0002123:	c3                   	ret    

c0002124 <memfind>:
c0002124:	f3 0f 1e fb          	endbr32 
c0002128:	55                   	push   %ebp
c0002129:	89 e5                	mov    %esp,%ebp
c000212b:	83 ec 10             	sub    $0x10,%esp
c000212e:	e8 b3 f5 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002133:	05 cd 2e 00 00       	add    $0x2ecd,%eax
c0002138:	8b 55 08             	mov    0x8(%ebp),%edx
c000213b:	8b 45 10             	mov    0x10(%ebp),%eax
c000213e:	01 d0                	add    %edx,%eax
c0002140:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0002143:	eb 11                	jmp    c0002156 <memfind+0x32>
c0002145:	8b 45 08             	mov    0x8(%ebp),%eax
c0002148:	0f b6 00             	movzbl (%eax),%eax
c000214b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000214e:	38 d0                	cmp    %dl,%al
c0002150:	74 0e                	je     c0002160 <memfind+0x3c>
c0002152:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0002156:	8b 45 08             	mov    0x8(%ebp),%eax
c0002159:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c000215c:	72 e7                	jb     c0002145 <memfind+0x21>
c000215e:	eb 01                	jmp    c0002161 <memfind+0x3d>
c0002160:	90                   	nop
c0002161:	8b 45 08             	mov    0x8(%ebp),%eax
c0002164:	c9                   	leave  
c0002165:	c3                   	ret    

c0002166 <strtol>:
c0002166:	f3 0f 1e fb          	endbr32 
c000216a:	55                   	push   %ebp
c000216b:	89 e5                	mov    %esp,%ebp
c000216d:	83 ec 10             	sub    $0x10,%esp
c0002170:	e8 71 f5 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002175:	05 8b 2e 00 00       	add    $0x2e8b,%eax
c000217a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0002181:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0002188:	eb 04                	jmp    c000218e <strtol+0x28>
c000218a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c000218e:	8b 45 08             	mov    0x8(%ebp),%eax
c0002191:	0f b6 00             	movzbl (%eax),%eax
c0002194:	3c 20                	cmp    $0x20,%al
c0002196:	74 f2                	je     c000218a <strtol+0x24>
c0002198:	8b 45 08             	mov    0x8(%ebp),%eax
c000219b:	0f b6 00             	movzbl (%eax),%eax
c000219e:	3c 09                	cmp    $0x9,%al
c00021a0:	74 e8                	je     c000218a <strtol+0x24>
c00021a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00021a5:	0f b6 00             	movzbl (%eax),%eax
c00021a8:	3c 2b                	cmp    $0x2b,%al
c00021aa:	75 06                	jne    c00021b2 <strtol+0x4c>
c00021ac:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c00021b0:	eb 15                	jmp    c00021c7 <strtol+0x61>
c00021b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00021b5:	0f b6 00             	movzbl (%eax),%eax
c00021b8:	3c 2d                	cmp    $0x2d,%al
c00021ba:	75 0b                	jne    c00021c7 <strtol+0x61>
c00021bc:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c00021c0:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c00021c7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c00021cb:	74 06                	je     c00021d3 <strtol+0x6d>
c00021cd:	83 7d 10 10          	cmpl   $0x10,0x10(%ebp)
c00021d1:	75 24                	jne    c00021f7 <strtol+0x91>
c00021d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00021d6:	0f b6 00             	movzbl (%eax),%eax
c00021d9:	3c 30                	cmp    $0x30,%al
c00021db:	75 1a                	jne    c00021f7 <strtol+0x91>
c00021dd:	8b 45 08             	mov    0x8(%ebp),%eax
c00021e0:	83 c0 01             	add    $0x1,%eax
c00021e3:	0f b6 00             	movzbl (%eax),%eax
c00021e6:	3c 78                	cmp    $0x78,%al
c00021e8:	75 0d                	jne    c00021f7 <strtol+0x91>
c00021ea:	83 45 08 02          	addl   $0x2,0x8(%ebp)
c00021ee:	c7 45 10 10 00 00 00 	movl   $0x10,0x10(%ebp)
c00021f5:	eb 2a                	jmp    c0002221 <strtol+0xbb>
c00021f7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c00021fb:	75 17                	jne    c0002214 <strtol+0xae>
c00021fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0002200:	0f b6 00             	movzbl (%eax),%eax
c0002203:	3c 30                	cmp    $0x30,%al
c0002205:	75 0d                	jne    c0002214 <strtol+0xae>
c0002207:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c000220b:	c7 45 10 08 00 00 00 	movl   $0x8,0x10(%ebp)
c0002212:	eb 0d                	jmp    c0002221 <strtol+0xbb>
c0002214:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0002218:	75 07                	jne    c0002221 <strtol+0xbb>
c000221a:	c7 45 10 0a 00 00 00 	movl   $0xa,0x10(%ebp)
c0002221:	8b 45 08             	mov    0x8(%ebp),%eax
c0002224:	0f b6 00             	movzbl (%eax),%eax
c0002227:	3c 2f                	cmp    $0x2f,%al
c0002229:	7e 1b                	jle    c0002246 <strtol+0xe0>
c000222b:	8b 45 08             	mov    0x8(%ebp),%eax
c000222e:	0f b6 00             	movzbl (%eax),%eax
c0002231:	3c 39                	cmp    $0x39,%al
c0002233:	7f 11                	jg     c0002246 <strtol+0xe0>
c0002235:	8b 45 08             	mov    0x8(%ebp),%eax
c0002238:	0f b6 00             	movzbl (%eax),%eax
c000223b:	0f be c0             	movsbl %al,%eax
c000223e:	83 e8 30             	sub    $0x30,%eax
c0002241:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002244:	eb 48                	jmp    c000228e <strtol+0x128>
c0002246:	8b 45 08             	mov    0x8(%ebp),%eax
c0002249:	0f b6 00             	movzbl (%eax),%eax
c000224c:	3c 60                	cmp    $0x60,%al
c000224e:	7e 1b                	jle    c000226b <strtol+0x105>
c0002250:	8b 45 08             	mov    0x8(%ebp),%eax
c0002253:	0f b6 00             	movzbl (%eax),%eax
c0002256:	3c 7a                	cmp    $0x7a,%al
c0002258:	7f 11                	jg     c000226b <strtol+0x105>
c000225a:	8b 45 08             	mov    0x8(%ebp),%eax
c000225d:	0f b6 00             	movzbl (%eax),%eax
c0002260:	0f be c0             	movsbl %al,%eax
c0002263:	83 e8 57             	sub    $0x57,%eax
c0002266:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002269:	eb 23                	jmp    c000228e <strtol+0x128>
c000226b:	8b 45 08             	mov    0x8(%ebp),%eax
c000226e:	0f b6 00             	movzbl (%eax),%eax
c0002271:	3c 40                	cmp    $0x40,%al
c0002273:	7e 3c                	jle    c00022b1 <strtol+0x14b>
c0002275:	8b 45 08             	mov    0x8(%ebp),%eax
c0002278:	0f b6 00             	movzbl (%eax),%eax
c000227b:	3c 5a                	cmp    $0x5a,%al
c000227d:	7f 32                	jg     c00022b1 <strtol+0x14b>
c000227f:	8b 45 08             	mov    0x8(%ebp),%eax
c0002282:	0f b6 00             	movzbl (%eax),%eax
c0002285:	0f be c0             	movsbl %al,%eax
c0002288:	83 e8 37             	sub    $0x37,%eax
c000228b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000228e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002291:	3b 45 10             	cmp    0x10(%ebp),%eax
c0002294:	7d 1a                	jge    c00022b0 <strtol+0x14a>
c0002296:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c000229a:	8b 45 f8             	mov    -0x8(%ebp),%eax
c000229d:	0f af 45 10          	imul   0x10(%ebp),%eax
c00022a1:	89 c2                	mov    %eax,%edx
c00022a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00022a6:	01 d0                	add    %edx,%eax
c00022a8:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00022ab:	e9 71 ff ff ff       	jmp    c0002221 <strtol+0xbb>
c00022b0:	90                   	nop
c00022b1:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00022b5:	74 08                	je     c00022bf <strtol+0x159>
c00022b7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00022ba:	8b 55 08             	mov    0x8(%ebp),%edx
c00022bd:	89 10                	mov    %edx,(%eax)
c00022bf:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c00022c3:	74 07                	je     c00022cc <strtol+0x166>
c00022c5:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00022c8:	f7 d8                	neg    %eax
c00022ca:	eb 03                	jmp    c00022cf <strtol+0x169>
c00022cc:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00022cf:	c9                   	leave  
c00022d0:	c3                   	ret    
c00022d1:	66 90                	xchg   %ax,%ax
c00022d3:	66 90                	xchg   %ax,%ax
c00022d5:	66 90                	xchg   %ax,%ax
c00022d7:	66 90                	xchg   %ax,%ax
c00022d9:	66 90                	xchg   %ax,%ax
c00022db:	66 90                	xchg   %ax,%ax
c00022dd:	66 90                	xchg   %ax,%ax
c00022df:	90                   	nop

c00022e0 <put_char>:
c00022e0:	60                   	pusha  
c00022e1:	66 b8 18 00          	mov    $0x18,%ax
c00022e5:	8e e8                	mov    %eax,%gs
c00022e7:	66 ba d4 03          	mov    $0x3d4,%dx
c00022eb:	b0 0e                	mov    $0xe,%al
c00022ed:	ee                   	out    %al,(%dx)
c00022ee:	66 ba d5 03          	mov    $0x3d5,%dx
c00022f2:	ec                   	in     (%dx),%al
c00022f3:	88 c4                	mov    %al,%ah
c00022f5:	66 ba d4 03          	mov    $0x3d4,%dx
c00022f9:	b0 0f                	mov    $0xf,%al
c00022fb:	ee                   	out    %al,(%dx)
c00022fc:	66 ba d5 03          	mov    $0x3d5,%dx
c0002300:	ec                   	in     (%dx),%al
c0002301:	66 89 c3             	mov    %ax,%bx
c0002304:	8b 4c 24 24          	mov    0x24(%esp),%ecx
c0002308:	8b 54 24 28          	mov    0x28(%esp),%edx
c000230c:	89 15 20 50 00 c0    	mov    %edx,0xc0005020
c0002312:	80 f9 0d             	cmp    $0xd,%cl
c0002315:	74 41                	je     c0002358 <put_char.is_carriage_return>
c0002317:	80 f9 0a             	cmp    $0xa,%cl
c000231a:	74 3c                	je     c0002358 <put_char.is_carriage_return>
c000231c:	80 f9 08             	cmp    $0x8,%cl
c000231f:	74 02                	je     c0002323 <put_char.is_backspace>
c0002321:	eb 16                	jmp    c0002339 <put_char.put_other>

c0002323 <put_char.is_backspace>:
c0002323:	66 4b                	dec    %bx
c0002325:	66 d1 e3             	shl    %bx
c0002328:	65 67 c6 07 20       	movb   $0x20,%gs:(%bx)
c000232d:	66 43                	inc    %bx
c000232f:	65 67 c6 07 07       	movb   $0x7,%gs:(%bx)
c0002334:	66 d1 eb             	shr    %bx
c0002337:	eb 65                	jmp    c000239e <put_char.set_cursor>

c0002339 <put_char.put_other>:
c0002339:	66 d1 e3             	shl    %bx
c000233c:	65 67 88 0f          	mov    %cl,%gs:(%bx)
c0002340:	66 43                	inc    %bx
c0002342:	8b 15 20 50 00 c0    	mov    0xc0005020,%edx
c0002348:	65 67 88 17          	mov    %dl,%gs:(%bx)
c000234c:	66 d1 eb             	shr    %bx
c000234f:	66 43                	inc    %bx
c0002351:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c0002356:	7c 46                	jl     c000239e <put_char.set_cursor>

c0002358 <put_char.is_carriage_return>:
c0002358:	66 31 d2             	xor    %dx,%dx
c000235b:	66 89 d8             	mov    %bx,%ax
c000235e:	66 be 50 00          	mov    $0x50,%si
c0002362:	66 f7 f6             	div    %si
c0002365:	66 29 d3             	sub    %dx,%bx

c0002368 <put_char.is_carriage_return_end>:
c0002368:	66 83 c3 50          	add    $0x50,%bx
c000236c:	66 81 fb d0 07       	cmp    $0x7d0,%bx

c0002371 <put_char.is_line_feed_end>:
c0002371:	7c 2b                	jl     c000239e <put_char.set_cursor>

c0002373 <put_char.roll_screen>:
c0002373:	fc                   	cld    
c0002374:	b9 c0 03 00 00       	mov    $0x3c0,%ecx
c0002379:	be a0 80 0b 00       	mov    $0xb80a0,%esi
c000237e:	bf 00 80 0b 00       	mov    $0xb8000,%edi
c0002383:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0002385:	bb 00 0f 00 00       	mov    $0xf00,%ebx
c000238a:	b9 50 00 00 00       	mov    $0x50,%ecx

c000238f <put_char.cls>:
c000238f:	65 66 c7 03 20 07    	movw   $0x720,%gs:(%ebx)
c0002395:	83 c3 02             	add    $0x2,%ebx
c0002398:	e2 f5                	loop   c000238f <put_char.cls>
c000239a:	66 bb 80 07          	mov    $0x780,%bx

c000239e <put_char.set_cursor>:
c000239e:	66 ba d4 03          	mov    $0x3d4,%dx
c00023a2:	b0 0e                	mov    $0xe,%al
c00023a4:	ee                   	out    %al,(%dx)
c00023a5:	66 ba d5 03          	mov    $0x3d5,%dx
c00023a9:	88 f8                	mov    %bh,%al
c00023ab:	ee                   	out    %al,(%dx)
c00023ac:	66 ba d4 03          	mov    $0x3d4,%dx
c00023b0:	b0 0f                	mov    $0xf,%al
c00023b2:	ee                   	out    %al,(%dx)
c00023b3:	66 ba d5 03          	mov    $0x3d5,%dx
c00023b7:	88 d8                	mov    %bl,%al
c00023b9:	ee                   	out    %al,(%dx)

c00023ba <put_char.put_char_done>:
c00023ba:	61                   	popa   
c00023bb:	c7 05 20 50 00 c0 00 	movl   $0x0,0xc0005020
c00023c2:	00 00 00 
c00023c5:	c3                   	ret    

c00023c6 <read_eflags>:
c00023c6:	55                   	push   %ebp
c00023c7:	89 e5                	mov    %esp,%ebp
c00023c9:	83 ec 10             	sub    $0x10,%esp
c00023cc:	e8 15 f3 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00023d1:	05 2f 2c 00 00       	add    $0x2c2f,%eax
c00023d6:	9c                   	pushf  
c00023d7:	58                   	pop    %eax
c00023d8:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00023db:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00023de:	c9                   	leave  
c00023df:	c3                   	ret    

c00023e0 <read_ebp>:
c00023e0:	55                   	push   %ebp
c00023e1:	89 e5                	mov    %esp,%ebp
c00023e3:	83 ec 10             	sub    $0x10,%esp
c00023e6:	e8 fb f2 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c00023eb:	05 15 2c 00 00       	add    $0x2c15,%eax
c00023f0:	89 e8                	mov    %ebp,%eax
c00023f2:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00023f5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00023f8:	c9                   	leave  
c00023f9:	c3                   	ret    

c00023fa <read_esp>:
c00023fa:	55                   	push   %ebp
c00023fb:	89 e5                	mov    %esp,%ebp
c00023fd:	83 ec 10             	sub    $0x10,%esp
c0002400:	e8 e1 f2 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002405:	05 fb 2b 00 00       	add    $0x2bfb,%eax
c000240a:	89 e0                	mov    %esp,%eax
c000240c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000240f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0002412:	c9                   	leave  
c0002413:	c3                   	ret    

c0002414 <syswelcome>:
c0002414:	f3 0f 1e fb          	endbr32 
c0002418:	55                   	push   %ebp
c0002419:	89 e5                	mov    %esp,%ebp
c000241b:	53                   	push   %ebx
c000241c:	83 ec 14             	sub    $0x14,%esp
c000241f:	e8 35 f1 ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c0002424:	81 c3 dc 2b 00 00    	add    $0x2bdc,%ebx
c000242a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002431:	83 4d f4 70          	orl    $0x70,-0xc(%ebp)
c0002435:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002438:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000243b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0002442:	83 4d ec 07          	orl    $0x7,-0x14(%ebp)
c0002446:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002449:	0f b6 c0             	movzbl %al,%eax
c000244c:	83 ec 08             	sub    $0x8,%esp
c000244f:	8d 93 2c e2 ff ff    	lea    -0x1dd4(%ebx),%edx
c0002455:	52                   	push   %edx
c0002456:	50                   	push   %eax
c0002457:	e8 91 f1 ff ff       	call   c00015ed <printk>
c000245c:	83 c4 10             	add    $0x10,%esp
c000245f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002462:	0f b6 c0             	movzbl %al,%eax
c0002465:	83 ec 08             	sub    $0x8,%esp
c0002468:	8d 93 60 e2 ff ff    	lea    -0x1da0(%ebx),%edx
c000246e:	52                   	push   %edx
c000246f:	50                   	push   %eax
c0002470:	e8 78 f1 ff ff       	call   c00015ed <printk>
c0002475:	83 c4 10             	add    $0x10,%esp
c0002478:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000247b:	0f b6 c0             	movzbl %al,%eax
c000247e:	83 ec 08             	sub    $0x8,%esp
c0002481:	8d 93 98 e2 ff ff    	lea    -0x1d68(%ebx),%edx
c0002487:	52                   	push   %edx
c0002488:	50                   	push   %eax
c0002489:	e8 5f f1 ff ff       	call   c00015ed <printk>
c000248e:	83 c4 10             	add    $0x10,%esp
c0002491:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002494:	0f b6 c0             	movzbl %al,%eax
c0002497:	83 ec 08             	sub    $0x8,%esp
c000249a:	8d 93 d0 e2 ff ff    	lea    -0x1d30(%ebx),%edx
c00024a0:	52                   	push   %edx
c00024a1:	50                   	push   %eax
c00024a2:	e8 46 f1 ff ff       	call   c00015ed <printk>
c00024a7:	83 c4 10             	add    $0x10,%esp
c00024aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00024ad:	0f b6 c0             	movzbl %al,%eax
c00024b0:	83 ec 08             	sub    $0x8,%esp
c00024b3:	8d 93 08 e3 ff ff    	lea    -0x1cf8(%ebx),%edx
c00024b9:	52                   	push   %edx
c00024ba:	50                   	push   %eax
c00024bb:	e8 2d f1 ff ff       	call   c00015ed <printk>
c00024c0:	83 c4 10             	add    $0x10,%esp
c00024c3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00024c6:	0f b6 c0             	movzbl %al,%eax
c00024c9:	83 ec 08             	sub    $0x8,%esp
c00024cc:	8d 93 40 e3 ff ff    	lea    -0x1cc0(%ebx),%edx
c00024d2:	52                   	push   %edx
c00024d3:	50                   	push   %eax
c00024d4:	e8 14 f1 ff ff       	call   c00015ed <printk>
c00024d9:	83 c4 10             	add    $0x10,%esp
c00024dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00024df:	0f b6 c0             	movzbl %al,%eax
c00024e2:	83 ec 08             	sub    $0x8,%esp
c00024e5:	8d 93 78 e3 ff ff    	lea    -0x1c88(%ebx),%edx
c00024eb:	52                   	push   %edx
c00024ec:	50                   	push   %eax
c00024ed:	e8 fb f0 ff ff       	call   c00015ed <printk>
c00024f2:	83 c4 10             	add    $0x10,%esp
c00024f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00024f8:	0f b6 c0             	movzbl %al,%eax
c00024fb:	83 ec 08             	sub    $0x8,%esp
c00024fe:	8d 93 b0 e3 ff ff    	lea    -0x1c50(%ebx),%edx
c0002504:	52                   	push   %edx
c0002505:	50                   	push   %eax
c0002506:	e8 e2 f0 ff ff       	call   c00015ed <printk>
c000250b:	83 c4 10             	add    $0x10,%esp
c000250e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002511:	0f b6 c0             	movzbl %al,%eax
c0002514:	83 ec 08             	sub    $0x8,%esp
c0002517:	8d 93 e8 e3 ff ff    	lea    -0x1c18(%ebx),%edx
c000251d:	52                   	push   %edx
c000251e:	50                   	push   %eax
c000251f:	e8 c9 f0 ff ff       	call   c00015ed <printk>
c0002524:	83 c4 10             	add    $0x10,%esp
c0002527:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c000252e:	83 4d e8 07          	orl    $0x7,-0x18(%ebp)
c0002532:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002535:	0f b6 c0             	movzbl %al,%eax
c0002538:	83 ec 08             	sub    $0x8,%esp
c000253b:	8d 93 20 e4 ff ff    	lea    -0x1be0(%ebx),%edx
c0002541:	52                   	push   %edx
c0002542:	50                   	push   %eax
c0002543:	e8 a5 f0 ff ff       	call   c00015ed <printk>
c0002548:	83 c4 10             	add    $0x10,%esp
c000254b:	90                   	nop
c000254c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000254f:	c9                   	leave  
c0002550:	c3                   	ret    

c0002551 <cpuid>:
c0002551:	f3 0f 1e fb          	endbr32 
c0002555:	55                   	push   %ebp
c0002556:	89 e5                	mov    %esp,%ebp
c0002558:	53                   	push   %ebx
c0002559:	83 ec 10             	sub    $0x10,%esp
c000255c:	e8 85 f1 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002561:	05 9f 2a 00 00       	add    $0x2a9f,%eax
c0002566:	8b 45 08             	mov    0x8(%ebp),%eax
c0002569:	0f a2                	cpuid  
c000256b:	89 45 f8             	mov    %eax,-0x8(%ebp)
c000256e:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c0002571:	89 4d f0             	mov    %ecx,-0x10(%ebp)
c0002574:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0002577:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000257b:	74 08                	je     c0002585 <cpuid+0x34>
c000257d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002580:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0002583:	89 10                	mov    %edx,(%eax)
c0002585:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0002589:	74 08                	je     c0002593 <cpuid+0x42>
c000258b:	8b 45 10             	mov    0x10(%ebp),%eax
c000258e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0002591:	89 10                	mov    %edx,(%eax)
c0002593:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
c0002597:	74 08                	je     c00025a1 <cpuid+0x50>
c0002599:	8b 45 14             	mov    0x14(%ebp),%eax
c000259c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c000259f:	89 10                	mov    %edx,(%eax)
c00025a1:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
c00025a5:	74 08                	je     c00025af <cpuid+0x5e>
c00025a7:	8b 45 18             	mov    0x18(%ebp),%eax
c00025aa:	8b 55 ec             	mov    -0x14(%ebp),%edx
c00025ad:	89 10                	mov    %edx,(%eax)
c00025af:	90                   	nop
c00025b0:	83 c4 10             	add    $0x10,%esp
c00025b3:	5b                   	pop    %ebx
c00025b4:	5d                   	pop    %ebp
c00025b5:	c3                   	ret    

c00025b6 <cpuinfo>:
c00025b6:	f3 0f 1e fb          	endbr32 
c00025ba:	55                   	push   %ebp
c00025bb:	89 e5                	mov    %esp,%ebp
c00025bd:	53                   	push   %ebx
c00025be:	83 ec 34             	sub    $0x34,%esp
c00025c1:	e8 93 ef ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c00025c6:	81 c3 3a 2a 00 00    	add    $0x2a3a,%ebx
c00025cc:	83 ec 04             	sub    $0x4,%esp
c00025cf:	6a 14                	push   $0x14
c00025d1:	6a 00                	push   $0x0
c00025d3:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00025d6:	50                   	push   %eax
c00025d7:	e8 5a f9 ff ff       	call   c0001f36 <memset>
c00025dc:	83 c4 10             	add    $0x10,%esp
c00025df:	83 ec 0c             	sub    $0xc,%esp
c00025e2:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00025e5:	83 c0 0c             	add    $0xc,%eax
c00025e8:	50                   	push   %eax
c00025e9:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00025ec:	83 c0 08             	add    $0x8,%eax
c00025ef:	50                   	push   %eax
c00025f0:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00025f3:	83 c0 04             	add    $0x4,%eax
c00025f6:	50                   	push   %eax
c00025f7:	8d 45 d0             	lea    -0x30(%ebp),%eax
c00025fa:	50                   	push   %eax
c00025fb:	6a 00                	push   $0x0
c00025fd:	e8 4f ff ff ff       	call   c0002551 <cpuid>
c0002602:	83 c4 20             	add    $0x20,%esp
c0002605:	8d 45 d0             	lea    -0x30(%ebp),%eax
c0002608:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000260b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002612:	eb 3b                	jmp    c000264f <cpuinfo+0x99>
c0002614:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0002617:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000261a:	01 d0                	add    %edx,%eax
c000261c:	0f b6 00             	movzbl (%eax),%eax
c000261f:	88 45 eb             	mov    %al,-0x15(%ebp)
c0002622:	0f be 55 eb          	movsbl -0x15(%ebp),%edx
c0002626:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
c000262d:	83 4d e4 07          	orl    $0x7,-0x1c(%ebp)
c0002631:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0002634:	0f b6 c0             	movzbl %al,%eax
c0002637:	83 ec 04             	sub    $0x4,%esp
c000263a:	52                   	push   %edx
c000263b:	8d 93 54 e4 ff ff    	lea    -0x1bac(%ebx),%edx
c0002641:	52                   	push   %edx
c0002642:	50                   	push   %eax
c0002643:	e8 a5 ef ff ff       	call   c00015ed <printk>
c0002648:	83 c4 10             	add    $0x10,%esp
c000264b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c000264f:	83 7d f4 0b          	cmpl   $0xb,-0xc(%ebp)
c0002653:	7e bf                	jle    c0002614 <cpuinfo+0x5e>
c0002655:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c000265c:	83 4d ec 07          	orl    $0x7,-0x14(%ebp)
c0002660:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002663:	0f b6 c0             	movzbl %al,%eax
c0002666:	83 ec 08             	sub    $0x8,%esp
c0002669:	8d 93 57 e4 ff ff    	lea    -0x1ba9(%ebx),%edx
c000266f:	52                   	push   %edx
c0002670:	50                   	push   %eax
c0002671:	e8 77 ef ff ff       	call   c00015ed <printk>
c0002676:	83 c4 10             	add    $0x10,%esp
c0002679:	90                   	nop
c000267a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000267d:	c9                   	leave  
c000267e:	c3                   	ret    

c000267f <reginfo>:
c000267f:	f3 0f 1e fb          	endbr32 
c0002683:	55                   	push   %ebp
c0002684:	89 e5                	mov    %esp,%ebp
c0002686:	53                   	push   %ebx
c0002687:	83 ec 14             	sub    $0x14,%esp
c000268a:	e8 ca ee ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c000268f:	81 c3 71 29 00 00    	add    $0x2971,%ebx
c0002695:	e8 2c fd ff ff       	call   c00023c6 <read_eflags>
c000269a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00026a1:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c00026a5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00026a8:	0f b6 d2             	movzbl %dl,%edx
c00026ab:	83 ec 04             	sub    $0x4,%esp
c00026ae:	50                   	push   %eax
c00026af:	8d 83 59 e4 ff ff    	lea    -0x1ba7(%ebx),%eax
c00026b5:	50                   	push   %eax
c00026b6:	52                   	push   %edx
c00026b7:	e8 31 ef ff ff       	call   c00015ed <printk>
c00026bc:	83 c4 10             	add    $0x10,%esp
c00026bf:	e8 1c fd ff ff       	call   c00023e0 <read_ebp>
c00026c4:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00026cb:	83 4d f0 07          	orl    $0x7,-0x10(%ebp)
c00026cf:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00026d2:	0f b6 d2             	movzbl %dl,%edx
c00026d5:	83 ec 04             	sub    $0x4,%esp
c00026d8:	50                   	push   %eax
c00026d9:	8d 83 68 e4 ff ff    	lea    -0x1b98(%ebx),%eax
c00026df:	50                   	push   %eax
c00026e0:	52                   	push   %edx
c00026e1:	e8 07 ef ff ff       	call   c00015ed <printk>
c00026e6:	83 c4 10             	add    $0x10,%esp
c00026e9:	e8 0c fd ff ff       	call   c00023fa <read_esp>
c00026ee:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00026f5:	83 4d ec 07          	orl    $0x7,-0x14(%ebp)
c00026f9:	8b 55 ec             	mov    -0x14(%ebp),%edx
c00026fc:	0f b6 d2             	movzbl %dl,%edx
c00026ff:	83 ec 04             	sub    $0x4,%esp
c0002702:	50                   	push   %eax
c0002703:	8d 83 74 e4 ff ff    	lea    -0x1b8c(%ebx),%eax
c0002709:	50                   	push   %eax
c000270a:	52                   	push   %edx
c000270b:	e8 dd ee ff ff       	call   c00015ed <printk>
c0002710:	83 c4 10             	add    $0x10,%esp
c0002713:	90                   	nop
c0002714:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002717:	c9                   	leave  
c0002718:	c3                   	ret    
c0002719:	66 90                	xchg   %ax,%ax
c000271b:	66 90                	xchg   %ax,%ax
c000271d:	66 90                	xchg   %ax,%ax
c000271f:	90                   	nop

c0002720 <interrupt_exit>:
c0002720:	83 c4 04             	add    $0x4,%esp
c0002723:	61                   	popa   
c0002724:	0f a9                	pop    %gs
c0002726:	0f a1                	pop    %fs
c0002728:	07                   	pop    %es
c0002729:	1f                   	pop    %ds
c000272a:	83 c4 04             	add    $0x4,%esp
c000272d:	cf                   	iret   

c000272e <interrupt0x00entry>:
c000272e:	6a 00                	push   $0x0
c0002730:	1e                   	push   %ds
c0002731:	06                   	push   %es
c0002732:	0f a0                	push   %fs
c0002734:	0f a8                	push   %gs
c0002736:	60                   	pusha  
c0002737:	b0 20                	mov    $0x20,%al
c0002739:	e6 a0                	out    %al,$0xa0
c000273b:	e6 20                	out    %al,$0x20
c000273d:	6a 00                	push   $0x0
c000273f:	ff 15 a0 52 00 c0    	call   *0xc00052a0
c0002745:	eb d9                	jmp    c0002720 <interrupt_exit>

c0002747 <interrupt0x01entry>:
c0002747:	6a 00                	push   $0x0
c0002749:	1e                   	push   %ds
c000274a:	06                   	push   %es
c000274b:	0f a0                	push   %fs
c000274d:	0f a8                	push   %gs
c000274f:	60                   	pusha  
c0002750:	b0 20                	mov    $0x20,%al
c0002752:	e6 a0                	out    %al,$0xa0
c0002754:	e6 20                	out    %al,$0x20
c0002756:	6a 01                	push   $0x1
c0002758:	ff 15 a4 52 00 c0    	call   *0xc00052a4
c000275e:	eb c0                	jmp    c0002720 <interrupt_exit>

c0002760 <interrupt0x02entry>:
c0002760:	6a 00                	push   $0x0
c0002762:	1e                   	push   %ds
c0002763:	06                   	push   %es
c0002764:	0f a0                	push   %fs
c0002766:	0f a8                	push   %gs
c0002768:	60                   	pusha  
c0002769:	b0 20                	mov    $0x20,%al
c000276b:	e6 a0                	out    %al,$0xa0
c000276d:	e6 20                	out    %al,$0x20
c000276f:	6a 02                	push   $0x2
c0002771:	ff 15 a8 52 00 c0    	call   *0xc00052a8
c0002777:	eb a7                	jmp    c0002720 <interrupt_exit>

c0002779 <interrupt0x03entry>:
c0002779:	6a 00                	push   $0x0
c000277b:	1e                   	push   %ds
c000277c:	06                   	push   %es
c000277d:	0f a0                	push   %fs
c000277f:	0f a8                	push   %gs
c0002781:	60                   	pusha  
c0002782:	b0 20                	mov    $0x20,%al
c0002784:	e6 a0                	out    %al,$0xa0
c0002786:	e6 20                	out    %al,$0x20
c0002788:	6a 03                	push   $0x3
c000278a:	ff 15 ac 52 00 c0    	call   *0xc00052ac
c0002790:	eb 8e                	jmp    c0002720 <interrupt_exit>

c0002792 <interrupt0x04entry>:
c0002792:	6a 00                	push   $0x0
c0002794:	1e                   	push   %ds
c0002795:	06                   	push   %es
c0002796:	0f a0                	push   %fs
c0002798:	0f a8                	push   %gs
c000279a:	60                   	pusha  
c000279b:	b0 20                	mov    $0x20,%al
c000279d:	e6 a0                	out    %al,$0xa0
c000279f:	e6 20                	out    %al,$0x20
c00027a1:	6a 04                	push   $0x4
c00027a3:	ff 15 b0 52 00 c0    	call   *0xc00052b0
c00027a9:	e9 72 ff ff ff       	jmp    c0002720 <interrupt_exit>

c00027ae <interrupt0x05entry>:
c00027ae:	6a 00                	push   $0x0
c00027b0:	1e                   	push   %ds
c00027b1:	06                   	push   %es
c00027b2:	0f a0                	push   %fs
c00027b4:	0f a8                	push   %gs
c00027b6:	60                   	pusha  
c00027b7:	b0 20                	mov    $0x20,%al
c00027b9:	e6 a0                	out    %al,$0xa0
c00027bb:	e6 20                	out    %al,$0x20
c00027bd:	6a 05                	push   $0x5
c00027bf:	ff 15 b4 52 00 c0    	call   *0xc00052b4
c00027c5:	e9 56 ff ff ff       	jmp    c0002720 <interrupt_exit>

c00027ca <interrupt0x06entry>:
c00027ca:	6a 00                	push   $0x0
c00027cc:	1e                   	push   %ds
c00027cd:	06                   	push   %es
c00027ce:	0f a0                	push   %fs
c00027d0:	0f a8                	push   %gs
c00027d2:	60                   	pusha  
c00027d3:	b0 20                	mov    $0x20,%al
c00027d5:	e6 a0                	out    %al,$0xa0
c00027d7:	e6 20                	out    %al,$0x20
c00027d9:	6a 06                	push   $0x6
c00027db:	ff 15 b8 52 00 c0    	call   *0xc00052b8
c00027e1:	e9 3a ff ff ff       	jmp    c0002720 <interrupt_exit>

c00027e6 <interrupt0x07entry>:
c00027e6:	6a 00                	push   $0x0
c00027e8:	1e                   	push   %ds
c00027e9:	06                   	push   %es
c00027ea:	0f a0                	push   %fs
c00027ec:	0f a8                	push   %gs
c00027ee:	60                   	pusha  
c00027ef:	b0 20                	mov    $0x20,%al
c00027f1:	e6 a0                	out    %al,$0xa0
c00027f3:	e6 20                	out    %al,$0x20
c00027f5:	6a 07                	push   $0x7
c00027f7:	ff 15 bc 52 00 c0    	call   *0xc00052bc
c00027fd:	e9 1e ff ff ff       	jmp    c0002720 <interrupt_exit>

c0002802 <interrupt0x08entry>:
c0002802:	90                   	nop
c0002803:	1e                   	push   %ds
c0002804:	06                   	push   %es
c0002805:	0f a0                	push   %fs
c0002807:	0f a8                	push   %gs
c0002809:	60                   	pusha  
c000280a:	b0 20                	mov    $0x20,%al
c000280c:	e6 a0                	out    %al,$0xa0
c000280e:	e6 20                	out    %al,$0x20
c0002810:	6a 08                	push   $0x8
c0002812:	ff 15 c0 52 00 c0    	call   *0xc00052c0
c0002818:	e9 03 ff ff ff       	jmp    c0002720 <interrupt_exit>

c000281d <interrupt0x09entry>:
c000281d:	6a 00                	push   $0x0
c000281f:	1e                   	push   %ds
c0002820:	06                   	push   %es
c0002821:	0f a0                	push   %fs
c0002823:	0f a8                	push   %gs
c0002825:	60                   	pusha  
c0002826:	b0 20                	mov    $0x20,%al
c0002828:	e6 a0                	out    %al,$0xa0
c000282a:	e6 20                	out    %al,$0x20
c000282c:	6a 09                	push   $0x9
c000282e:	ff 15 c4 52 00 c0    	call   *0xc00052c4
c0002834:	e9 e7 fe ff ff       	jmp    c0002720 <interrupt_exit>

c0002839 <interrupt0x0aentry>:
c0002839:	90                   	nop
c000283a:	1e                   	push   %ds
c000283b:	06                   	push   %es
c000283c:	0f a0                	push   %fs
c000283e:	0f a8                	push   %gs
c0002840:	60                   	pusha  
c0002841:	b0 20                	mov    $0x20,%al
c0002843:	e6 a0                	out    %al,$0xa0
c0002845:	e6 20                	out    %al,$0x20
c0002847:	6a 0a                	push   $0xa
c0002849:	ff 15 c8 52 00 c0    	call   *0xc00052c8
c000284f:	e9 cc fe ff ff       	jmp    c0002720 <interrupt_exit>

c0002854 <interrupt0x0bentry>:
c0002854:	90                   	nop
c0002855:	1e                   	push   %ds
c0002856:	06                   	push   %es
c0002857:	0f a0                	push   %fs
c0002859:	0f a8                	push   %gs
c000285b:	60                   	pusha  
c000285c:	b0 20                	mov    $0x20,%al
c000285e:	e6 a0                	out    %al,$0xa0
c0002860:	e6 20                	out    %al,$0x20
c0002862:	6a 0b                	push   $0xb
c0002864:	ff 15 cc 52 00 c0    	call   *0xc00052cc
c000286a:	e9 b1 fe ff ff       	jmp    c0002720 <interrupt_exit>

c000286f <interrupt0x0centry>:
c000286f:	6a 00                	push   $0x0
c0002871:	1e                   	push   %ds
c0002872:	06                   	push   %es
c0002873:	0f a0                	push   %fs
c0002875:	0f a8                	push   %gs
c0002877:	60                   	pusha  
c0002878:	b0 20                	mov    $0x20,%al
c000287a:	e6 a0                	out    %al,$0xa0
c000287c:	e6 20                	out    %al,$0x20
c000287e:	6a 0c                	push   $0xc
c0002880:	ff 15 d0 52 00 c0    	call   *0xc00052d0
c0002886:	e9 95 fe ff ff       	jmp    c0002720 <interrupt_exit>

c000288b <interrupt0x0dentry>:
c000288b:	90                   	nop
c000288c:	1e                   	push   %ds
c000288d:	06                   	push   %es
c000288e:	0f a0                	push   %fs
c0002890:	0f a8                	push   %gs
c0002892:	60                   	pusha  
c0002893:	b0 20                	mov    $0x20,%al
c0002895:	e6 a0                	out    %al,$0xa0
c0002897:	e6 20                	out    %al,$0x20
c0002899:	6a 0d                	push   $0xd
c000289b:	ff 15 d4 52 00 c0    	call   *0xc00052d4
c00028a1:	e9 7a fe ff ff       	jmp    c0002720 <interrupt_exit>

c00028a6 <interrupt0x0eentry>:
c00028a6:	90                   	nop
c00028a7:	1e                   	push   %ds
c00028a8:	06                   	push   %es
c00028a9:	0f a0                	push   %fs
c00028ab:	0f a8                	push   %gs
c00028ad:	60                   	pusha  
c00028ae:	b0 20                	mov    $0x20,%al
c00028b0:	e6 a0                	out    %al,$0xa0
c00028b2:	e6 20                	out    %al,$0x20
c00028b4:	6a 0e                	push   $0xe
c00028b6:	ff 15 d8 52 00 c0    	call   *0xc00052d8
c00028bc:	e9 5f fe ff ff       	jmp    c0002720 <interrupt_exit>

c00028c1 <interrupt0x0fentry>:
c00028c1:	6a 00                	push   $0x0
c00028c3:	1e                   	push   %ds
c00028c4:	06                   	push   %es
c00028c5:	0f a0                	push   %fs
c00028c7:	0f a8                	push   %gs
c00028c9:	60                   	pusha  
c00028ca:	b0 20                	mov    $0x20,%al
c00028cc:	e6 a0                	out    %al,$0xa0
c00028ce:	e6 20                	out    %al,$0x20
c00028d0:	6a 0f                	push   $0xf
c00028d2:	ff 15 dc 52 00 c0    	call   *0xc00052dc
c00028d8:	e9 43 fe ff ff       	jmp    c0002720 <interrupt_exit>

c00028dd <interrupt0x10entry>:
c00028dd:	6a 00                	push   $0x0
c00028df:	1e                   	push   %ds
c00028e0:	06                   	push   %es
c00028e1:	0f a0                	push   %fs
c00028e3:	0f a8                	push   %gs
c00028e5:	60                   	pusha  
c00028e6:	b0 20                	mov    $0x20,%al
c00028e8:	e6 a0                	out    %al,$0xa0
c00028ea:	e6 20                	out    %al,$0x20
c00028ec:	6a 10                	push   $0x10
c00028ee:	ff 15 e0 52 00 c0    	call   *0xc00052e0
c00028f4:	e9 27 fe ff ff       	jmp    c0002720 <interrupt_exit>

c00028f9 <interrupt0x11entry>:
c00028f9:	90                   	nop
c00028fa:	1e                   	push   %ds
c00028fb:	06                   	push   %es
c00028fc:	0f a0                	push   %fs
c00028fe:	0f a8                	push   %gs
c0002900:	60                   	pusha  
c0002901:	b0 20                	mov    $0x20,%al
c0002903:	e6 a0                	out    %al,$0xa0
c0002905:	e6 20                	out    %al,$0x20
c0002907:	6a 11                	push   $0x11
c0002909:	ff 15 e4 52 00 c0    	call   *0xc00052e4
c000290f:	e9 0c fe ff ff       	jmp    c0002720 <interrupt_exit>

c0002914 <interrupt0x12entry>:
c0002914:	6a 00                	push   $0x0
c0002916:	1e                   	push   %ds
c0002917:	06                   	push   %es
c0002918:	0f a0                	push   %fs
c000291a:	0f a8                	push   %gs
c000291c:	60                   	pusha  
c000291d:	b0 20                	mov    $0x20,%al
c000291f:	e6 a0                	out    %al,$0xa0
c0002921:	e6 20                	out    %al,$0x20
c0002923:	6a 12                	push   $0x12
c0002925:	ff 15 e8 52 00 c0    	call   *0xc00052e8
c000292b:	e9 f0 fd ff ff       	jmp    c0002720 <interrupt_exit>

c0002930 <interrupt0x13entry>:
c0002930:	6a 00                	push   $0x0
c0002932:	1e                   	push   %ds
c0002933:	06                   	push   %es
c0002934:	0f a0                	push   %fs
c0002936:	0f a8                	push   %gs
c0002938:	60                   	pusha  
c0002939:	b0 20                	mov    $0x20,%al
c000293b:	e6 a0                	out    %al,$0xa0
c000293d:	e6 20                	out    %al,$0x20
c000293f:	6a 13                	push   $0x13
c0002941:	ff 15 ec 52 00 c0    	call   *0xc00052ec
c0002947:	e9 d4 fd ff ff       	jmp    c0002720 <interrupt_exit>

c000294c <interrupt0x14entry>:
c000294c:	6a 00                	push   $0x0
c000294e:	1e                   	push   %ds
c000294f:	06                   	push   %es
c0002950:	0f a0                	push   %fs
c0002952:	0f a8                	push   %gs
c0002954:	60                   	pusha  
c0002955:	b0 20                	mov    $0x20,%al
c0002957:	e6 a0                	out    %al,$0xa0
c0002959:	e6 20                	out    %al,$0x20
c000295b:	6a 14                	push   $0x14
c000295d:	ff 15 f0 52 00 c0    	call   *0xc00052f0
c0002963:	e9 b8 fd ff ff       	jmp    c0002720 <interrupt_exit>

c0002968 <interrupt0x15entry>:
c0002968:	6a 00                	push   $0x0
c000296a:	1e                   	push   %ds
c000296b:	06                   	push   %es
c000296c:	0f a0                	push   %fs
c000296e:	0f a8                	push   %gs
c0002970:	60                   	pusha  
c0002971:	b0 20                	mov    $0x20,%al
c0002973:	e6 a0                	out    %al,$0xa0
c0002975:	e6 20                	out    %al,$0x20
c0002977:	6a 15                	push   $0x15
c0002979:	ff 15 f4 52 00 c0    	call   *0xc00052f4
c000297f:	e9 9c fd ff ff       	jmp    c0002720 <interrupt_exit>

c0002984 <interrupt0x16entry>:
c0002984:	6a 00                	push   $0x0
c0002986:	1e                   	push   %ds
c0002987:	06                   	push   %es
c0002988:	0f a0                	push   %fs
c000298a:	0f a8                	push   %gs
c000298c:	60                   	pusha  
c000298d:	b0 20                	mov    $0x20,%al
c000298f:	e6 a0                	out    %al,$0xa0
c0002991:	e6 20                	out    %al,$0x20
c0002993:	6a 16                	push   $0x16
c0002995:	ff 15 f8 52 00 c0    	call   *0xc00052f8
c000299b:	e9 80 fd ff ff       	jmp    c0002720 <interrupt_exit>

c00029a0 <interrupt0x17entry>:
c00029a0:	6a 00                	push   $0x0
c00029a2:	1e                   	push   %ds
c00029a3:	06                   	push   %es
c00029a4:	0f a0                	push   %fs
c00029a6:	0f a8                	push   %gs
c00029a8:	60                   	pusha  
c00029a9:	b0 20                	mov    $0x20,%al
c00029ab:	e6 a0                	out    %al,$0xa0
c00029ad:	e6 20                	out    %al,$0x20
c00029af:	6a 17                	push   $0x17
c00029b1:	ff 15 fc 52 00 c0    	call   *0xc00052fc
c00029b7:	e9 64 fd ff ff       	jmp    c0002720 <interrupt_exit>

c00029bc <interrupt0x18entry>:
c00029bc:	90                   	nop
c00029bd:	1e                   	push   %ds
c00029be:	06                   	push   %es
c00029bf:	0f a0                	push   %fs
c00029c1:	0f a8                	push   %gs
c00029c3:	60                   	pusha  
c00029c4:	b0 20                	mov    $0x20,%al
c00029c6:	e6 a0                	out    %al,$0xa0
c00029c8:	e6 20                	out    %al,$0x20
c00029ca:	6a 18                	push   $0x18
c00029cc:	ff 15 00 53 00 c0    	call   *0xc0005300
c00029d2:	e9 49 fd ff ff       	jmp    c0002720 <interrupt_exit>

c00029d7 <interrupt0x19entry>:
c00029d7:	6a 00                	push   $0x0
c00029d9:	1e                   	push   %ds
c00029da:	06                   	push   %es
c00029db:	0f a0                	push   %fs
c00029dd:	0f a8                	push   %gs
c00029df:	60                   	pusha  
c00029e0:	b0 20                	mov    $0x20,%al
c00029e2:	e6 a0                	out    %al,$0xa0
c00029e4:	e6 20                	out    %al,$0x20
c00029e6:	6a 19                	push   $0x19
c00029e8:	ff 15 04 53 00 c0    	call   *0xc0005304
c00029ee:	e9 2d fd ff ff       	jmp    c0002720 <interrupt_exit>

c00029f3 <interrupt0x1aentry>:
c00029f3:	90                   	nop
c00029f4:	1e                   	push   %ds
c00029f5:	06                   	push   %es
c00029f6:	0f a0                	push   %fs
c00029f8:	0f a8                	push   %gs
c00029fa:	60                   	pusha  
c00029fb:	b0 20                	mov    $0x20,%al
c00029fd:	e6 a0                	out    %al,$0xa0
c00029ff:	e6 20                	out    %al,$0x20
c0002a01:	6a 1a                	push   $0x1a
c0002a03:	ff 15 08 53 00 c0    	call   *0xc0005308
c0002a09:	e9 12 fd ff ff       	jmp    c0002720 <interrupt_exit>

c0002a0e <interrupt0x1bentry>:
c0002a0e:	90                   	nop
c0002a0f:	1e                   	push   %ds
c0002a10:	06                   	push   %es
c0002a11:	0f a0                	push   %fs
c0002a13:	0f a8                	push   %gs
c0002a15:	60                   	pusha  
c0002a16:	b0 20                	mov    $0x20,%al
c0002a18:	e6 a0                	out    %al,$0xa0
c0002a1a:	e6 20                	out    %al,$0x20
c0002a1c:	6a 1b                	push   $0x1b
c0002a1e:	ff 15 0c 53 00 c0    	call   *0xc000530c
c0002a24:	e9 f7 fc ff ff       	jmp    c0002720 <interrupt_exit>

c0002a29 <interrupt0x1centry>:
c0002a29:	6a 00                	push   $0x0
c0002a2b:	1e                   	push   %ds
c0002a2c:	06                   	push   %es
c0002a2d:	0f a0                	push   %fs
c0002a2f:	0f a8                	push   %gs
c0002a31:	60                   	pusha  
c0002a32:	b0 20                	mov    $0x20,%al
c0002a34:	e6 a0                	out    %al,$0xa0
c0002a36:	e6 20                	out    %al,$0x20
c0002a38:	6a 1c                	push   $0x1c
c0002a3a:	ff 15 10 53 00 c0    	call   *0xc0005310
c0002a40:	e9 db fc ff ff       	jmp    c0002720 <interrupt_exit>

c0002a45 <interrupt0x1dentry>:
c0002a45:	90                   	nop
c0002a46:	1e                   	push   %ds
c0002a47:	06                   	push   %es
c0002a48:	0f a0                	push   %fs
c0002a4a:	0f a8                	push   %gs
c0002a4c:	60                   	pusha  
c0002a4d:	b0 20                	mov    $0x20,%al
c0002a4f:	e6 a0                	out    %al,$0xa0
c0002a51:	e6 20                	out    %al,$0x20
c0002a53:	6a 1d                	push   $0x1d
c0002a55:	ff 15 14 53 00 c0    	call   *0xc0005314
c0002a5b:	e9 c0 fc ff ff       	jmp    c0002720 <interrupt_exit>

c0002a60 <interrupt0x1eentry>:
c0002a60:	90                   	nop
c0002a61:	1e                   	push   %ds
c0002a62:	06                   	push   %es
c0002a63:	0f a0                	push   %fs
c0002a65:	0f a8                	push   %gs
c0002a67:	60                   	pusha  
c0002a68:	b0 20                	mov    $0x20,%al
c0002a6a:	e6 a0                	out    %al,$0xa0
c0002a6c:	e6 20                	out    %al,$0x20
c0002a6e:	6a 1e                	push   $0x1e
c0002a70:	ff 15 18 53 00 c0    	call   *0xc0005318
c0002a76:	e9 a5 fc ff ff       	jmp    c0002720 <interrupt_exit>

c0002a7b <interrupt0x1fentry>:
c0002a7b:	6a 00                	push   $0x0
c0002a7d:	1e                   	push   %ds
c0002a7e:	06                   	push   %es
c0002a7f:	0f a0                	push   %fs
c0002a81:	0f a8                	push   %gs
c0002a83:	60                   	pusha  
c0002a84:	b0 20                	mov    $0x20,%al
c0002a86:	e6 a0                	out    %al,$0xa0
c0002a88:	e6 20                	out    %al,$0x20
c0002a8a:	6a 1f                	push   $0x1f
c0002a8c:	ff 15 1c 53 00 c0    	call   *0xc000531c
c0002a92:	e9 89 fc ff ff       	jmp    c0002720 <interrupt_exit>

c0002a97 <interrupt0x20entry>:
c0002a97:	6a 00                	push   $0x0
c0002a99:	1e                   	push   %ds
c0002a9a:	06                   	push   %es
c0002a9b:	0f a0                	push   %fs
c0002a9d:	0f a8                	push   %gs
c0002a9f:	60                   	pusha  
c0002aa0:	b0 20                	mov    $0x20,%al
c0002aa2:	e6 a0                	out    %al,$0xa0
c0002aa4:	e6 20                	out    %al,$0x20
c0002aa6:	6a 20                	push   $0x20
c0002aa8:	ff 15 20 53 00 c0    	call   *0xc0005320
c0002aae:	e9 6d fc ff ff       	jmp    c0002720 <interrupt_exit>

c0002ab3 <outb>:
c0002ab3:	55                   	push   %ebp
c0002ab4:	89 e5                	mov    %esp,%ebp
c0002ab6:	83 ec 08             	sub    $0x8,%esp
c0002ab9:	e8 28 ec ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002abe:	05 42 25 00 00       	add    $0x2542,%eax
c0002ac3:	8b 45 08             	mov    0x8(%ebp),%eax
c0002ac6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0002ac9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0002acd:	89 d0                	mov    %edx,%eax
c0002acf:	88 45 f8             	mov    %al,-0x8(%ebp)
c0002ad2:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c0002ad6:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c0002ada:	ee                   	out    %al,(%dx)
c0002adb:	90                   	nop
c0002adc:	c9                   	leave  
c0002add:	c3                   	ret    

c0002ade <pic_init>:
c0002ade:	55                   	push   %ebp
c0002adf:	89 e5                	mov    %esp,%ebp
c0002ae1:	53                   	push   %ebx
c0002ae2:	83 ec 14             	sub    $0x14,%esp
c0002ae5:	e8 6f ea ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c0002aea:	81 c3 16 25 00 00    	add    $0x2516,%ebx
c0002af0:	6a 11                	push   $0x11
c0002af2:	6a 20                	push   $0x20
c0002af4:	e8 ba ff ff ff       	call   c0002ab3 <outb>
c0002af9:	83 c4 08             	add    $0x8,%esp
c0002afc:	6a 20                	push   $0x20
c0002afe:	6a 21                	push   $0x21
c0002b00:	e8 ae ff ff ff       	call   c0002ab3 <outb>
c0002b05:	83 c4 08             	add    $0x8,%esp
c0002b08:	6a 04                	push   $0x4
c0002b0a:	6a 21                	push   $0x21
c0002b0c:	e8 a2 ff ff ff       	call   c0002ab3 <outb>
c0002b11:	83 c4 08             	add    $0x8,%esp
c0002b14:	6a 01                	push   $0x1
c0002b16:	6a 21                	push   $0x21
c0002b18:	e8 96 ff ff ff       	call   c0002ab3 <outb>
c0002b1d:	83 c4 08             	add    $0x8,%esp
c0002b20:	6a 11                	push   $0x11
c0002b22:	68 a0 00 00 00       	push   $0xa0
c0002b27:	e8 87 ff ff ff       	call   c0002ab3 <outb>
c0002b2c:	83 c4 08             	add    $0x8,%esp
c0002b2f:	6a 28                	push   $0x28
c0002b31:	68 a1 00 00 00       	push   $0xa1
c0002b36:	e8 78 ff ff ff       	call   c0002ab3 <outb>
c0002b3b:	83 c4 08             	add    $0x8,%esp
c0002b3e:	6a 02                	push   $0x2
c0002b40:	68 a1 00 00 00       	push   $0xa1
c0002b45:	e8 69 ff ff ff       	call   c0002ab3 <outb>
c0002b4a:	83 c4 08             	add    $0x8,%esp
c0002b4d:	6a 01                	push   $0x1
c0002b4f:	68 a1 00 00 00       	push   $0xa1
c0002b54:	e8 5a ff ff ff       	call   c0002ab3 <outb>
c0002b59:	83 c4 08             	add    $0x8,%esp
c0002b5c:	68 fe 00 00 00       	push   $0xfe
c0002b61:	6a 21                	push   $0x21
c0002b63:	e8 4b ff ff ff       	call   c0002ab3 <outb>
c0002b68:	83 c4 08             	add    $0x8,%esp
c0002b6b:	68 ff 00 00 00       	push   $0xff
c0002b70:	68 a1 00 00 00       	push   $0xa1
c0002b75:	e8 39 ff ff ff       	call   c0002ab3 <outb>
c0002b7a:	83 c4 08             	add    $0x8,%esp
c0002b7d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002b84:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c0002b88:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b8b:	0f b6 c0             	movzbl %al,%eax
c0002b8e:	83 ec 08             	sub    $0x8,%esp
c0002b91:	8d 93 8d e6 ff ff    	lea    -0x1973(%ebx),%edx
c0002b97:	52                   	push   %edx
c0002b98:	50                   	push   %eax
c0002b99:	e8 4f ea ff ff       	call   c00015ed <printk>
c0002b9e:	83 c4 10             	add    $0x10,%esp
c0002ba1:	90                   	nop
c0002ba2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002ba5:	c9                   	leave  
c0002ba6:	c3                   	ret    

c0002ba7 <make_idt_desc>:
c0002ba7:	55                   	push   %ebp
c0002ba8:	89 e5                	mov    %esp,%ebp
c0002baa:	83 ec 04             	sub    $0x4,%esp
c0002bad:	e8 34 eb ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002bb2:	05 4e 24 00 00       	add    $0x244e,%eax
c0002bb7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002bba:	88 45 fc             	mov    %al,-0x4(%ebp)
c0002bbd:	8b 45 10             	mov    0x10(%ebp),%eax
c0002bc0:	89 c2                	mov    %eax,%edx
c0002bc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0002bc5:	66 89 10             	mov    %dx,(%eax)
c0002bc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0002bcb:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c0002bd1:	8b 45 08             	mov    0x8(%ebp),%eax
c0002bd4:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0002bd8:	8b 45 08             	mov    0x8(%ebp),%eax
c0002bdb:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c0002bdf:	88 50 05             	mov    %dl,0x5(%eax)
c0002be2:	8b 45 08             	mov    0x8(%ebp),%eax
c0002be5:	66 c7 40 06 00 00    	movw   $0x0,0x6(%eax)
c0002beb:	90                   	nop
c0002bec:	c9                   	leave  
c0002bed:	c3                   	ret    

c0002bee <idt_desc_init>:
c0002bee:	55                   	push   %ebp
c0002bef:	89 e5                	mov    %esp,%ebp
c0002bf1:	53                   	push   %ebx
c0002bf2:	83 ec 14             	sub    $0x14,%esp
c0002bf5:	e8 5f e9 ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c0002bfa:	81 c3 06 24 00 00    	add    $0x2406,%ebx
c0002c00:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002c07:	eb 31                	jmp    c0002c3a <idt_desc_init+0x4c>
c0002c09:	c7 c0 49 50 00 c0    	mov    $0xc0005049,%eax
c0002c0f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0002c12:	8b 04 90             	mov    (%eax,%edx,4),%eax
c0002c15:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0002c18:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
c0002c1f:	8d 93 80 01 00 00    	lea    0x180(%ebx),%edx
c0002c25:	01 ca                	add    %ecx,%edx
c0002c27:	50                   	push   %eax
c0002c28:	68 8e 00 00 00       	push   $0x8e
c0002c2d:	52                   	push   %edx
c0002c2e:	e8 74 ff ff ff       	call   c0002ba7 <make_idt_desc>
c0002c33:	83 c4 0c             	add    $0xc,%esp
c0002c36:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0002c3a:	83 7d f4 20          	cmpl   $0x20,-0xc(%ebp)
c0002c3e:	7e c9                	jle    c0002c09 <idt_desc_init+0x1b>
c0002c40:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002c47:	83 4d f0 07          	orl    $0x7,-0x10(%ebp)
c0002c4b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002c4e:	0f b6 c0             	movzbl %al,%eax
c0002c51:	83 ec 08             	sub    $0x8,%esp
c0002c54:	8d 93 a0 e6 ff ff    	lea    -0x1960(%ebx),%edx
c0002c5a:	52                   	push   %edx
c0002c5b:	50                   	push   %eax
c0002c5c:	e8 8c e9 ff ff       	call   c00015ed <printk>
c0002c61:	83 c4 10             	add    $0x10,%esp
c0002c64:	90                   	nop
c0002c65:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002c68:	c9                   	leave  
c0002c69:	c3                   	ret    

c0002c6a <general_interrupt_handler>:
c0002c6a:	f3 0f 1e fb          	endbr32 
c0002c6e:	55                   	push   %ebp
c0002c6f:	89 e5                	mov    %esp,%ebp
c0002c71:	53                   	push   %ebx
c0002c72:	83 ec 24             	sub    $0x24,%esp
c0002c75:	e8 df e8 ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c0002c7a:	81 c3 86 23 00 00    	add    $0x2386,%ebx
c0002c80:	8b 45 08             	mov    0x8(%ebp),%eax
c0002c83:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0002c86:	80 7d e4 27          	cmpb   $0x27,-0x1c(%ebp)
c0002c8a:	74 61                	je     c0002ced <general_interrupt_handler+0x83>
c0002c8c:	80 7d e4 2f          	cmpb   $0x2f,-0x1c(%ebp)
c0002c90:	74 5b                	je     c0002ced <general_interrupt_handler+0x83>
c0002c92:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c0002c96:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002c9d:	83 4d f4 04          	orl    $0x4,-0xc(%ebp)
c0002ca1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002ca4:	0f b6 c0             	movzbl %al,%eax
c0002ca7:	83 ec 04             	sub    $0x4,%esp
c0002caa:	52                   	push   %edx
c0002cab:	8d 93 b8 e6 ff ff    	lea    -0x1948(%ebx),%edx
c0002cb1:	52                   	push   %edx
c0002cb2:	50                   	push   %eax
c0002cb3:	e8 35 e9 ff ff       	call   c00015ed <printk>
c0002cb8:	83 c4 10             	add    $0x10,%esp
c0002cbb:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0002cbf:	8b 94 83 e0 00 00 00 	mov    0xe0(%ebx,%eax,4),%edx
c0002cc6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002ccd:	83 4d f0 04          	orl    $0x4,-0x10(%ebp)
c0002cd1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002cd4:	0f b6 c0             	movzbl %al,%eax
c0002cd7:	83 ec 04             	sub    $0x4,%esp
c0002cda:	52                   	push   %edx
c0002cdb:	8d 93 d1 e6 ff ff    	lea    -0x192f(%ebx),%edx
c0002ce1:	52                   	push   %edx
c0002ce2:	50                   	push   %eax
c0002ce3:	e8 05 e9 ff ff       	call   c00015ed <printk>
c0002ce8:	83 c4 10             	add    $0x10,%esp
c0002ceb:	eb 01                	jmp    c0002cee <general_interrupt_handler+0x84>
c0002ced:	90                   	nop
c0002cee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002cf1:	c9                   	leave  
c0002cf2:	c3                   	ret    

c0002cf3 <exception_interrupt_init>:
c0002cf3:	f3 0f 1e fb          	endbr32 
c0002cf7:	55                   	push   %ebp
c0002cf8:	89 e5                	mov    %esp,%ebp
c0002cfa:	53                   	push   %ebx
c0002cfb:	83 ec 10             	sub    $0x10,%esp
c0002cfe:	e8 e3 e9 ff ff       	call   c00016e6 <__x86.get_pc_thunk.ax>
c0002d03:	05 fd 22 00 00       	add    $0x22fd,%eax
c0002d08:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0002d0f:	eb 16                	jmp    c0002d27 <exception_interrupt_init+0x34>
c0002d11:	c7 c2 a0 52 00 c0    	mov    $0xc00052a0,%edx
c0002d17:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0002d1a:	8d 98 6a dc ff ff    	lea    -0x2396(%eax),%ebx
c0002d20:	89 1c 8a             	mov    %ebx,(%edx,%ecx,4)
c0002d23:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0002d27:	83 7d f8 20          	cmpl   $0x20,-0x8(%ebp)
c0002d2b:	7e e4                	jle    c0002d11 <exception_interrupt_init+0x1e>
c0002d2d:	90                   	nop
c0002d2e:	90                   	nop
c0002d2f:	83 c4 10             	add    $0x10,%esp
c0002d32:	5b                   	pop    %ebx
c0002d33:	5d                   	pop    %ebp
c0002d34:	c3                   	ret    

c0002d35 <idt_init>:
c0002d35:	f3 0f 1e fb          	endbr32 
c0002d39:	55                   	push   %ebp
c0002d3a:	89 e5                	mov    %esp,%ebp
c0002d3c:	57                   	push   %edi
c0002d3d:	56                   	push   %esi
c0002d3e:	53                   	push   %ebx
c0002d3f:	83 ec 1c             	sub    $0x1c,%esp
c0002d42:	e8 12 e8 ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c0002d47:	81 c3 b9 22 00 00    	add    $0x22b9,%ebx
c0002d4d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
c0002d54:	83 4d e4 07          	orl    $0x7,-0x1c(%ebp)
c0002d58:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0002d5b:	0f b6 c0             	movzbl %al,%eax
c0002d5e:	83 ec 08             	sub    $0x8,%esp
c0002d61:	8d 93 d5 e6 ff ff    	lea    -0x192b(%ebx),%edx
c0002d67:	52                   	push   %edx
c0002d68:	50                   	push   %eax
c0002d69:	e8 7f e8 ff ff       	call   c00015ed <printk>
c0002d6e:	83 c4 10             	add    $0x10,%esp
c0002d71:	e8 78 fe ff ff       	call   c0002bee <idt_desc_init>
c0002d76:	e8 78 ff ff ff       	call   c0002cf3 <exception_interrupt_init>
c0002d7b:	e8 5e fd ff ff       	call   c0002ade <pic_init>
c0002d80:	8d 83 80 01 00 00    	lea    0x180(%ebx),%eax
c0002d86:	ba 00 00 00 00       	mov    $0x0,%edx
c0002d8b:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c0002d8f:	c1 e0 10             	shl    $0x10,%eax
c0002d92:	89 c1                	mov    %eax,%ecx
c0002d94:	81 c9 07 01 00 00    	or     $0x107,%ecx
c0002d9a:	89 ce                	mov    %ecx,%esi
c0002d9c:	89 d0                	mov    %edx,%eax
c0002d9e:	80 cc 00             	or     $0x0,%ah
c0002da1:	89 c7                	mov    %eax,%edi
c0002da3:	89 75 d8             	mov    %esi,-0x28(%ebp)
c0002da6:	89 7d dc             	mov    %edi,-0x24(%ebp)
c0002da9:	0f 01 5d d8          	lidtl  -0x28(%ebp)
c0002dad:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0002db4:	83 4d e0 07          	orl    $0x7,-0x20(%ebp)
c0002db8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002dbb:	0f b6 c0             	movzbl %al,%eax
c0002dbe:	83 ec 08             	sub    $0x8,%esp
c0002dc1:	8d 93 e5 e6 ff ff    	lea    -0x191b(%ebx),%edx
c0002dc7:	52                   	push   %edx
c0002dc8:	50                   	push   %eax
c0002dc9:	e8 1f e8 ff ff       	call   c00015ed <printk>
c0002dce:	83 c4 10             	add    $0x10,%esp
c0002dd1:	90                   	nop
c0002dd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0002dd5:	5b                   	pop    %ebx
c0002dd6:	5e                   	pop    %esi
c0002dd7:	5f                   	pop    %edi
c0002dd8:	5d                   	pop    %ebp
c0002dd9:	c3                   	ret    

c0002dda <init_all>:
c0002dda:	f3 0f 1e fb          	endbr32 
c0002dde:	55                   	push   %ebp
c0002ddf:	89 e5                	mov    %esp,%ebp
c0002de1:	53                   	push   %ebx
c0002de2:	83 ec 14             	sub    $0x14,%esp
c0002de5:	e8 6f e7 ff ff       	call   c0001559 <__x86.get_pc_thunk.bx>
c0002dea:	81 c3 16 22 00 00    	add    $0x2216,%ebx
c0002df0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002df7:	83 4d f4 07          	orl    $0x7,-0xc(%ebp)
c0002dfb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002dfe:	0f b6 c0             	movzbl %al,%eax
c0002e01:	83 ec 08             	sub    $0x8,%esp
c0002e04:	8d 93 f4 e6 ff ff    	lea    -0x190c(%ebx),%edx
c0002e0a:	52                   	push   %edx
c0002e0b:	50                   	push   %eax
c0002e0c:	e8 dc e7 ff ff       	call   c00015ed <printk>
c0002e11:	83 c4 10             	add    $0x10,%esp
c0002e14:	e8 1c ff ff ff       	call   c0002d35 <idt_init>
c0002e19:	90                   	nop
c0002e1a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002e1d:	c9                   	leave  
c0002e1e:	c3                   	ret    

Disassembly of section .rodata:

c0003000 <.rodata>:
c0003000:	30 2e                	xor    %ch,(%esi)
c0003002:	31 2e                	xor    %ebp,(%esi)
c0003004:	30 00                	xor    %al,(%eax)
c0003006:	54                   	push   %esp
c0003007:	68 69 73 20 69       	push   $0x69207369
c000300c:	73 20                	jae    c000302e <init_all+0x254>
c000300e:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0003012:	65 6c                	gs insb (%dx),%es:(%edi)
c0003014:	20 76 65             	and    %dh,0x65(%esi)
c0003017:	72 73                	jb     c000308c <init_all+0x2b2>
c0003019:	69 6f 6e 20 25 73 0a 	imul   $0xa732520,0x6e(%edi),%ebp
c0003020:	00 69 6e             	add    %ch,0x6e(%ecx)
c0003023:	74 65                	je     c000308a <init_all+0x2b0>
c0003025:	72 72                	jb     c0003099 <init_all+0x2bf>
c0003027:	75 70                	jne    c0003099 <init_all+0x2bf>
c0003029:	74 20                	je     c000304b <init_all+0x271>
c000302b:	76 65                	jbe    c0003092 <init_all+0x2b8>
c000302d:	63 74 6f 72          	arpl   %si,0x72(%edi,%ebp,2)
c0003031:	20 4e 4f             	and    %cl,0x4f(%esi)
c0003034:	2e 25 64 0a 00 69    	cs and $0x69000a64,%eax
c000303a:	6e                   	outsb  %ds:(%esi),(%dx)
c000303b:	74 65                	je     c00030a2 <init_all+0x2c8>
c000303d:	72 72                	jb     c00030b1 <init_all+0x2d7>
c000303f:	75 70                	jne    c00030b1 <init_all+0x2d7>
c0003041:	74 21                	je     c0003064 <init_all+0x28a>
c0003043:	00 75 6e             	add    %dh,0x6e(%ebp)
c0003046:	73 70                	jae    c00030b8 <init_all+0x2de>
c0003048:	65 63 69 66          	arpl   %bp,%gs:0x66(%ecx)
c000304c:	69 65 64 20 65 72 72 	imul   $0x72726520,0x64(%ebp),%esp
c0003053:	6f                   	outsl  %ds:(%esi),(%dx)
c0003054:	72 00                	jb     c0003056 <init_all+0x27c>
c0003056:	62 61 64             	bound  %esp,0x64(%ecx)
c0003059:	20 65 6e             	and    %ah,0x6e(%ebp)
c000305c:	76 69                	jbe    c00030c7 <init_all+0x2ed>
c000305e:	72 6f                	jb     c00030cf <init_all+0x2f5>
c0003060:	6e                   	outsb  %ds:(%esi),(%dx)
c0003061:	6d                   	insl   (%dx),%es:(%edi)
c0003062:	65 6e                	outsb  %gs:(%esi),(%dx)
c0003064:	74 00                	je     c0003066 <init_all+0x28c>
c0003066:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%esi),%ebp
c000306d:	20 70 61             	and    %dh,0x61(%eax)
c0003070:	72 61                	jb     c00030d3 <init_all+0x2f9>
c0003072:	6d                   	insl   (%dx),%es:(%edi)
c0003073:	65 74 65             	gs je  c00030db <init_all+0x301>
c0003076:	72 00                	jb     c0003078 <init_all+0x29e>
c0003078:	6f                   	outsl  %ds:(%esi),(%dx)
c0003079:	75 74                	jne    c00030ef <init_all+0x315>
c000307b:	20 6f 66             	and    %ch,0x66(%edi)
c000307e:	20 6d 65             	and    %ch,0x65(%ebp)
c0003081:	6d                   	insl   (%dx),%es:(%edi)
c0003082:	6f                   	outsl  %ds:(%esi),(%dx)
c0003083:	72 79                	jb     c00030fe <init_all+0x324>
c0003085:	00 6f 75             	add    %ch,0x75(%edi)
c0003088:	74 20                	je     c00030aa <init_all+0x2d0>
c000308a:	6f                   	outsl  %ds:(%esi),(%dx)
c000308b:	66 20 65 6e          	data16 and %ah,0x6e(%ebp)
c000308f:	76 69                	jbe    c00030fa <init_all+0x320>
c0003091:	72 6f                	jb     c0003102 <init_all+0x328>
c0003093:	6e                   	outsb  %ds:(%esi),(%dx)
c0003094:	6d                   	insl   (%dx),%es:(%edi)
c0003095:	65 6e                	outsb  %gs:(%esi),(%dx)
c0003097:	74 73                	je     c000310c <init_all+0x332>
c0003099:	00 73 65             	add    %dh,0x65(%ebx)
c000309c:	67 6d                	insl   (%dx),%es:(%di)
c000309e:	65 6e                	outsb  %gs:(%esi),(%dx)
c00030a0:	74 61                	je     c0003103 <init_all+0x329>
c00030a2:	74 69                	je     c000310d <init_all+0x333>
c00030a4:	6f                   	outsl  %ds:(%esi),(%dx)
c00030a5:	6e                   	outsb  %ds:(%esi),(%dx)
c00030a6:	20 66 61             	and    %ah,0x61(%esi)
c00030a9:	75 6c                	jne    c0003117 <init_all+0x33d>
c00030ab:	74 00                	je     c00030ad <init_all+0x2d3>
c00030ad:	30 31                	xor    %dh,(%ecx)
c00030af:	32 33                	xor    (%ebx),%dh
c00030b1:	34 35                	xor    $0x35,%al
c00030b3:	36 37                	ss aaa 
c00030b5:	38 39                	cmp    %bh,(%ecx)
c00030b7:	61                   	popa   
c00030b8:	62 63 64             	bound  %esp,0x64(%ebx)
c00030bb:	65 66 00 65 72       	data16 add %ah,%gs:0x72(%ebp)
c00030c0:	72 6f                	jb     c0003131 <init_all+0x357>
c00030c2:	72 20                	jb     c00030e4 <init_all+0x30a>
c00030c4:	25 64 00 25 73       	and    $0x73250064,%eax
c00030c9:	00 28                	add    %ch,(%eax)
c00030cb:	6e                   	outsb  %ds:(%esi),(%dx)
c00030cc:	75 6c                	jne    c000313a <init_all+0x360>
c00030ce:	6c                   	insb   (%dx),%es:(%edi)
c00030cf:	29 00                	sub    %eax,(%eax)
c00030d1:	00 00                	add    %al,(%eax)
c00030d3:	00 33                	add    %dh,(%ebx)
c00030d5:	c9                   	leave  
c00030d6:	ff                   	(bad)  
c00030d7:	ff                   	(bad)  
c00030d8:	ef                   	out    %eax,(%dx)
c00030d9:	cb                   	lret   
c00030da:	ff                   	(bad)  
c00030db:	ff                   	(bad)  
c00030dc:	d9 cb                	fxch   %st(3)
c00030de:	ff                   	(bad)  
c00030df:	ff                   	(bad)  
c00030e0:	ef                   	out    %eax,(%dx)
c00030e1:	cb                   	lret   
c00030e2:	ff                   	(bad)  
c00030e3:	ff                   	(bad)  
c00030e4:	ef                   	out    %eax,(%dx)
c00030e5:	cb                   	lret   
c00030e6:	ff                   	(bad)  
c00030e7:	ff                   	(bad)  
c00030e8:	ef                   	out    %eax,(%dx)
c00030e9:	cb                   	lret   
c00030ea:	ff                   	(bad)  
c00030eb:	ff                   	(bad)  
c00030ec:	ef                   	out    %eax,(%dx)
c00030ed:	cb                   	lret   
c00030ee:	ff                   	(bad)  
c00030ef:	ff 11                	call   *(%ecx)
c00030f1:	c9                   	leave  
c00030f2:	ff                   	(bad)  
c00030f3:	ff                   	(bad)  
c00030f4:	ef                   	out    %eax,(%dx)
c00030f5:	cb                   	lret   
c00030f6:	ff                   	(bad)  
c00030f7:	ff                   	(bad)  
c00030f8:	ef                   	out    %eax,(%dx)
c00030f9:	cb                   	lret   
c00030fa:	ff                   	(bad)  
c00030fb:	ff d1                	call   *%ecx
c00030fd:	c8 ff ff 21          	enter  $0xffff,$0x21
c0003101:	c9                   	leave  
c0003102:	ff                   	(bad)  
c0003103:	ff                   	(bad)  
c0003104:	ef                   	out    %eax,(%dx)
c0003105:	cb                   	lret   
c0003106:	ff                   	(bad)  
c0003107:	ff d7                	call   *%edi
c0003109:	c8 ff ff dd          	enter  $0xffff,$0xdd
c000310d:	c8 ff ff dd          	enter  $0xffff,$0xdd
c0003111:	c8 ff ff dd          	enter  $0xffff,$0xdd
c0003115:	c8 ff ff dd          	enter  $0xffff,$0xdd
c0003119:	c8 ff ff dd          	enter  $0xffff,$0xdd
c000311d:	c8 ff ff dd          	enter  $0xffff,$0xdd
c0003121:	c8 ff ff dd          	enter  $0xffff,$0xdd
c0003125:	c8 ff ff dd          	enter  $0xffff,$0xdd
c0003129:	c8 ff ff dd          	enter  $0xffff,$0xdd
c000312d:	c8 ff ff ef          	enter  $0xffff,$0xef
c0003131:	cb                   	lret   
c0003132:	ff                   	(bad)  
c0003133:	ff                   	(bad)  
c0003134:	ef                   	out    %eax,(%dx)
c0003135:	cb                   	lret   
c0003136:	ff                   	(bad)  
c0003137:	ff                   	(bad)  
c0003138:	ef                   	out    %eax,(%dx)
c0003139:	cb                   	lret   
c000313a:	ff                   	(bad)  
c000313b:	ff                   	(bad)  
c000313c:	ef                   	out    %eax,(%dx)
c000313d:	cb                   	lret   
c000313e:	ff                   	(bad)  
c000313f:	ff                   	(bad)  
c0003140:	ef                   	out    %eax,(%dx)
c0003141:	cb                   	lret   
c0003142:	ff                   	(bad)  
c0003143:	ff                   	(bad)  
c0003144:	ef                   	out    %eax,(%dx)
c0003145:	cb                   	lret   
c0003146:	ff                   	(bad)  
c0003147:	ff                   	(bad)  
c0003148:	ef                   	out    %eax,(%dx)
c0003149:	cb                   	lret   
c000314a:	ff                   	(bad)  
c000314b:	ff                   	(bad)  
c000314c:	ef                   	out    %eax,(%dx)
c000314d:	cb                   	lret   
c000314e:	ff                   	(bad)  
c000314f:	ff                   	(bad)  
c0003150:	ef                   	out    %eax,(%dx)
c0003151:	cb                   	lret   
c0003152:	ff                   	(bad)  
c0003153:	ff                   	(bad)  
c0003154:	ef                   	out    %eax,(%dx)
c0003155:	cb                   	lret   
c0003156:	ff                   	(bad)  
c0003157:	ff                   	(bad)  
c0003158:	ef                   	out    %eax,(%dx)
c0003159:	cb                   	lret   
c000315a:	ff                   	(bad)  
c000315b:	ff                   	(bad)  
c000315c:	ef                   	out    %eax,(%dx)
c000315d:	cb                   	lret   
c000315e:	ff                   	(bad)  
c000315f:	ff                   	(bad)  
c0003160:	ef                   	out    %eax,(%dx)
c0003161:	cb                   	lret   
c0003162:	ff                   	(bad)  
c0003163:	ff                   	(bad)  
c0003164:	ef                   	out    %eax,(%dx)
c0003165:	cb                   	lret   
c0003166:	ff                   	(bad)  
c0003167:	ff                   	(bad)  
c0003168:	ef                   	out    %eax,(%dx)
c0003169:	cb                   	lret   
c000316a:	ff                   	(bad)  
c000316b:	ff                   	(bad)  
c000316c:	ef                   	out    %eax,(%dx)
c000316d:	cb                   	lret   
c000316e:	ff                   	(bad)  
c000316f:	ff                   	(bad)  
c0003170:	ef                   	out    %eax,(%dx)
c0003171:	cb                   	lret   
c0003172:	ff                   	(bad)  
c0003173:	ff                   	(bad)  
c0003174:	ef                   	out    %eax,(%dx)
c0003175:	cb                   	lret   
c0003176:	ff                   	(bad)  
c0003177:	ff                   	(bad)  
c0003178:	ef                   	out    %eax,(%dx)
c0003179:	cb                   	lret   
c000317a:	ff                   	(bad)  
c000317b:	ff                   	(bad)  
c000317c:	ef                   	out    %eax,(%dx)
c000317d:	cb                   	lret   
c000317e:	ff                   	(bad)  
c000317f:	ff                   	(bad)  
c0003180:	ef                   	out    %eax,(%dx)
c0003181:	cb                   	lret   
c0003182:	ff                   	(bad)  
c0003183:	ff                   	(bad)  
c0003184:	ef                   	out    %eax,(%dx)
c0003185:	cb                   	lret   
c0003186:	ff                   	(bad)  
c0003187:	ff                   	(bad)  
c0003188:	ef                   	out    %eax,(%dx)
c0003189:	cb                   	lret   
c000318a:	ff                   	(bad)  
c000318b:	ff                   	(bad)  
c000318c:	ef                   	out    %eax,(%dx)
c000318d:	cb                   	lret   
c000318e:	ff                   	(bad)  
c000318f:	ff                   	(bad)  
c0003190:	ef                   	out    %eax,(%dx)
c0003191:	cb                   	lret   
c0003192:	ff                   	(bad)  
c0003193:	ff                   	(bad)  
c0003194:	ef                   	out    %eax,(%dx)
c0003195:	cb                   	lret   
c0003196:	ff                   	(bad)  
c0003197:	ff                   	(bad)  
c0003198:	ef                   	out    %eax,(%dx)
c0003199:	cb                   	lret   
c000319a:	ff                   	(bad)  
c000319b:	ff                   	(bad)  
c000319c:	ef                   	out    %eax,(%dx)
c000319d:	cb                   	lret   
c000319e:	ff                   	(bad)  
c000319f:	ff                   	(bad)  
c00031a0:	ef                   	out    %eax,(%dx)
c00031a1:	cb                   	lret   
c00031a2:	ff                   	(bad)  
c00031a3:	ff                   	(bad)  
c00031a4:	ef                   	out    %eax,(%dx)
c00031a5:	cb                   	lret   
c00031a6:	ff                   	(bad)  
c00031a7:	ff                   	(bad)  
c00031a8:	ef                   	out    %eax,(%dx)
c00031a9:	cb                   	lret   
c00031aa:	ff                   	(bad)  
c00031ab:	ff                   	(bad)  
c00031ac:	ef                   	out    %eax,(%dx)
c00031ad:	cb                   	lret   
c00031ae:	ff                   	(bad)  
c00031af:	ff                   	(bad)  
c00031b0:	ef                   	out    %eax,(%dx)
c00031b1:	cb                   	lret   
c00031b2:	ff                   	(bad)  
c00031b3:	ff                   	(bad)  
c00031b4:	ef                   	out    %eax,(%dx)
c00031b5:	cb                   	lret   
c00031b6:	ff                   	(bad)  
c00031b7:	ff                   	(bad)  
c00031b8:	ef                   	out    %eax,(%dx)
c00031b9:	cb                   	lret   
c00031ba:	ff                   	(bad)  
c00031bb:	ff                   	(bad)  
c00031bc:	ef                   	out    %eax,(%dx)
c00031bd:	cb                   	lret   
c00031be:	ff                   	(bad)  
c00031bf:	ff                   	(bad)  
c00031c0:	ef                   	out    %eax,(%dx)
c00031c1:	cb                   	lret   
c00031c2:	ff                   	(bad)  
c00031c3:	ff                   	(bad)  
c00031c4:	ef                   	out    %eax,(%dx)
c00031c5:	cb                   	lret   
c00031c6:	ff                   	(bad)  
c00031c7:	ff                   	(bad)  
c00031c8:	ef                   	out    %eax,(%dx)
c00031c9:	cb                   	lret   
c00031ca:	ff                   	(bad)  
c00031cb:	ff                   	(bad)  
c00031cc:	ef                   	out    %eax,(%dx)
c00031cd:	cb                   	lret   
c00031ce:	ff                   	(bad)  
c00031cf:	ff                   	(bad)  
c00031d0:	ef                   	out    %eax,(%dx)
c00031d1:	cb                   	lret   
c00031d2:	ff                   	(bad)  
c00031d3:	ff 65 c9             	jmp    *-0x37(%ebp)
c00031d6:	ff                   	(bad)  
c00031d7:	ff d4                	call   *%esp
c00031d9:	ca ff ff             	lret   $0xffff
c00031dc:	89 c9                	mov    %ecx,%ecx
c00031de:	ff                   	(bad)  
c00031df:	ff                   	(bad)  
c00031e0:	ef                   	out    %eax,(%dx)
c00031e1:	cb                   	lret   
c00031e2:	ff                   	(bad)  
c00031e3:	ff                   	(bad)  
c00031e4:	ef                   	out    %eax,(%dx)
c00031e5:	cb                   	lret   
c00031e6:	ff                   	(bad)  
c00031e7:	ff                   	(bad)  
c00031e8:	ef                   	out    %eax,(%dx)
c00031e9:	cb                   	lret   
c00031ea:	ff                   	(bad)  
c00031eb:	ff                   	(bad)  
c00031ec:	ef                   	out    %eax,(%dx)
c00031ed:	cb                   	lret   
c00031ee:	ff                   	(bad)  
c00031ef:	ff                   	(bad)  
c00031f0:	ef                   	out    %eax,(%dx)
c00031f1:	cb                   	lret   
c00031f2:	ff                   	(bad)  
c00031f3:	ff                   	(bad)  
c00031f4:	ef                   	out    %eax,(%dx)
c00031f5:	cb                   	lret   
c00031f6:	ff                   	(bad)  
c00031f7:	ff 5c c9 ff          	lcall  *-0x1(%ecx,%ecx,8)
c00031fb:	ff                   	(bad)  
c00031fc:	ef                   	out    %eax,(%dx)
c00031fd:	cb                   	lret   
c00031fe:	ff                   	(bad)  
c00031ff:	ff                   	(bad)  
c0003200:	ef                   	out    %eax,(%dx)
c0003201:	cb                   	lret   
c0003202:	ff                   	(bad)  
c0003203:	ff 37                	pushl  (%edi)
c0003205:	cb                   	lret   
c0003206:	ff                   	(bad)  
c0003207:	ff 55 cb             	call   *-0x35(%ebp)
c000320a:	ff                   	(bad)  
c000320b:	ff                   	(bad)  
c000320c:	ef                   	out    %eax,(%dx)
c000320d:	cb                   	lret   
c000320e:	ff                   	(bad)  
c000320f:	ff                   	(bad)  
c0003210:	ef                   	out    %eax,(%dx)
c0003211:	cb                   	lret   
c0003212:	ff                   	(bad)  
c0003213:	ff f0                	push   %eax
c0003215:	c9                   	leave  
c0003216:	ff                   	(bad)  
c0003217:	ff                   	(bad)  
c0003218:	ef                   	out    %eax,(%dx)
c0003219:	cb                   	lret   
c000321a:	ff                   	(bad)  
c000321b:	ff 19                	lcall  *(%ecx)
c000321d:	cb                   	lret   
c000321e:	ff                   	(bad)  
c000321f:	ff                   	(bad)  
c0003220:	ef                   	out    %eax,(%dx)
c0003221:	cb                   	lret   
c0003222:	ff                   	(bad)  
c0003223:	ff                   	(bad)  
c0003224:	ef                   	out    %eax,(%dx)
c0003225:	cb                   	lret   
c0003226:	ff                   	(bad)  
c0003227:	ff 96 cb ff ff 20    	call   *0x20ffffcb(%esi)
c000322d:	20 20                	and    %ah,(%eax)
c000322f:	20 20                	and    %ah,(%eax)
c0003231:	20 20                	and    %ah,(%eax)
c0003233:	20 20                	and    %ah,(%eax)
c0003235:	20 20                	and    %ah,(%eax)
c0003237:	20 20                	and    %ah,(%eax)
c0003239:	20 20                	and    %ah,(%eax)
c000323b:	20 20                	and    %ah,(%eax)
c000323d:	20 20                	and    %ah,(%eax)
c000323f:	20 20                	and    %ah,(%eax)
c0003241:	20 20                	and    %ah,(%eax)
c0003243:	20 20                	and    %ah,(%eax)
c0003245:	20 20                	and    %ah,(%eax)
c0003247:	20 20                	and    %ah,(%eax)
c0003249:	20 20                	and    %ah,(%eax)
c000324b:	20 20                	and    %ah,(%eax)
c000324d:	20 20                	and    %ah,(%eax)
c000324f:	20 20                	and    %ah,(%eax)
c0003251:	20 20                	and    %ah,(%eax)
c0003253:	20 20                	and    %ah,(%eax)
c0003255:	20 20                	and    %ah,(%eax)
c0003257:	20 20                	and    %ah,(%eax)
c0003259:	20 20                	and    %ah,(%eax)
c000325b:	20 20                	and    %ah,(%eax)
c000325d:	0a 00                	or     (%eax),%al
c000325f:	00 20                	add    %ah,(%eax)
c0003261:	20 20                	and    %ah,(%eax)
c0003263:	20 20                	and    %ah,(%eax)
c0003265:	20 20                	and    %ah,(%eax)
c0003267:	20 7c 5e 5e          	and    %bh,0x5e(%esi,%ebx,2)
c000326b:	5e                   	pop    %esi
c000326c:	5e                   	pop    %esi
c000326d:	5e                   	pop    %esi
c000326e:	5e                   	pop    %esi
c000326f:	7c 20                	jl     c0003291 <init_all+0x4b7>
c0003271:	20 20                	and    %ah,(%eax)
c0003273:	20 20                	and    %ah,(%eax)
c0003275:	20 20                	and    %ah,(%eax)
c0003277:	20 20                	and    %ah,(%eax)
c0003279:	5f                   	pop    %edi
c000327a:	5f                   	pop    %edi
c000327b:	5f                   	pop    %edi
c000327c:	5f                   	pop    %edi
c000327d:	5f                   	pop    %edi
c000327e:	5f                   	pop    %edi
c000327f:	5f                   	pop    %edi
c0003280:	5f                   	pop    %edi
c0003281:	5f                   	pop    %edi
c0003282:	5f                   	pop    %edi
c0003283:	5f                   	pop    %edi
c0003284:	5f                   	pop    %edi
c0003285:	5f                   	pop    %edi
c0003286:	5f                   	pop    %edi
c0003287:	5f                   	pop    %edi
c0003288:	5f                   	pop    %edi
c0003289:	5f                   	pop    %edi
c000328a:	5f                   	pop    %edi
c000328b:	5f                   	pop    %edi
c000328c:	5f                   	pop    %edi
c000328d:	5f                   	pop    %edi
c000328e:	5f                   	pop    %edi
c000328f:	5f                   	pop    %edi
c0003290:	5f                   	pop    %edi
c0003291:	20 20                	and    %ah,(%eax)
c0003293:	0a 00                	or     (%eax),%al
c0003295:	00 00                	add    %al,(%eax)
c0003297:	00 20                	add    %ah,(%eax)
c0003299:	20 20                	and    %ah,(%eax)
c000329b:	20 20                	and    %ah,(%eax)
c000329d:	20 20                	and    %ah,(%eax)
c000329f:	20 7c 20 20          	and    %bh,0x20(%eax,%eiz,1)
c00032a3:	20 20                	and    %ah,(%eax)
c00032a5:	20 20                	and    %ah,(%eax)
c00032a7:	7c 20                	jl     c00032c9 <init_all+0x4ef>
c00032a9:	20 20                	and    %ah,(%eax)
c00032ab:	20 20                	and    %ah,(%eax)
c00032ad:	20 20                	and    %ah,(%eax)
c00032af:	20 2f                	and    %ch,(%edi)
c00032b1:	20 20                	and    %ah,(%eax)
c00032b3:	20 20                	and    %ah,(%eax)
c00032b5:	20 20                	and    %ah,(%eax)
c00032b7:	20 20                	and    %ah,(%eax)
c00032b9:	20 20                	and    %ah,(%eax)
c00032bb:	20 20                	and    %ah,(%eax)
c00032bd:	20 20                	and    %ah,(%eax)
c00032bf:	20 20                	and    %ah,(%eax)
c00032c1:	20 20                	and    %ah,(%eax)
c00032c3:	20 20                	and    %ah,(%eax)
c00032c5:	20 20                	and    %ah,(%eax)
c00032c7:	20 20                	and    %ah,(%eax)
c00032c9:	5c                   	pop    %esp
c00032ca:	20 0a                	and    %cl,(%edx)
c00032cc:	00 00                	add    %al,(%eax)
c00032ce:	00 00                	add    %al,(%eax)
c00032d0:	20 20                	and    %ah,(%eax)
c00032d2:	20 20                	and    %ah,(%eax)
c00032d4:	20 20                	and    %ah,(%eax)
c00032d6:	20 20                	and    %ah,(%eax)
c00032d8:	7c 20                	jl     c00032fa <init_all+0x520>
c00032da:	20 20                	and    %ah,(%eax)
c00032dc:	20 20                	and    %ah,(%eax)
c00032de:	20 7c 20 20          	and    %bh,0x20(%eax,%eiz,1)
c00032e2:	20 20                	and    %ah,(%eax)
c00032e4:	20 20                	and    %ah,(%eax)
c00032e6:	20 7c 20 57          	and    %bh,0x57(%eax,%eiz,1)
c00032ea:	65 6c                	gs insb (%dx),%es:(%edi)
c00032ec:	63 6f 6d             	arpl   %bp,0x6d(%edi)
c00032ef:	65 20 74 6f 20       	and    %dh,%gs:0x20(%edi,%ebp,2)
c00032f4:	45                   	inc    %ebp
c00032f5:	4f                   	dec    %edi
c00032f6:	53                   	push   %ebx
c00032f7:	2e 20 20             	and    %ah,%cs:(%eax)
c00032fa:	20 20                	and    %ah,(%eax)
c00032fc:	20 20                	and    %ah,(%eax)
c00032fe:	20 20                	and    %ah,(%eax)
c0003300:	20 7c 20 0a          	and    %bh,0xa(%eax,%eiz,1)
c0003304:	00 00                	add    %al,(%eax)
c0003306:	00 00                	add    %al,(%eax)
c0003308:	20 20                	and    %ah,(%eax)
c000330a:	20 20                	and    %ah,(%eax)
c000330c:	20 20                	and    %ah,(%eax)
c000330e:	20 20                	and    %ah,(%eax)
c0003310:	7c 20                	jl     c0003332 <init_all+0x558>
c0003312:	28 6f 29             	sub    %ch,0x29(%edi)
c0003315:	28 6f 29             	sub    %ch,0x29(%edi)
c0003318:	20 20                	and    %ah,(%eax)
c000331a:	20 20                	and    %ah,(%eax)
c000331c:	20 20                	and    %ah,(%eax)
c000331e:	20 7c 20 41          	and    %bh,0x41(%eax,%eiz,1)
c0003322:	20 75 6e             	and    %dh,0x6e(%ebp)
c0003325:	69 78 2d 6c 69 6b 65 	imul   $0x656b696c,0x2d(%eax),%edi
c000332c:	20 73 79             	and    %dh,0x79(%ebx)
c000332f:	73 74                	jae    c00033a5 <init_all+0x5cb>
c0003331:	65 6d                	gs insl (%dx),%es:(%edi)
c0003333:	20 20                	and    %ah,(%eax)
c0003335:	20 20                	and    %ah,(%eax)
c0003337:	20 20                	and    %ah,(%eax)
c0003339:	7c 20                	jl     c000335b <init_all+0x581>
c000333b:	0a 00                	or     (%eax),%al
c000333d:	00 00                	add    %al,(%eax)
c000333f:	00 20                	add    %ah,(%eax)
c0003341:	20 20                	and    %ah,(%eax)
c0003343:	20 20                	and    %ah,(%eax)
c0003345:	20 20                	and    %ah,(%eax)
c0003347:	40                   	inc    %eax
c0003348:	20 20                	and    %ah,(%eax)
c000334a:	20 20                	and    %ah,(%eax)
c000334c:	20 20                	and    %ah,(%eax)
c000334e:	5f                   	pop    %edi
c000334f:	29 20                	sub    %esp,(%eax)
c0003351:	20 20                	and    %ah,(%eax)
c0003353:	20 20                	and    %ah,(%eax)
c0003355:	20 20                	and    %ah,(%eax)
c0003357:	7c 20                	jl     c0003379 <init_all+0x59f>
c0003359:	64 65 76 65          	fs gs jbe c00033c2 <init_all+0x5e8>
c000335d:	6c                   	insb   (%dx),%es:(%edi)
c000335e:	6f                   	outsl  %ds:(%esi),(%dx)
c000335f:	70 65                	jo     c00033c6 <init_all+0x5ec>
c0003361:	64 20 62 79          	and    %ah,%fs:0x79(%edx)
c0003365:	20 40 45             	and    %al,0x45(%eax)
c0003368:	6c                   	insb   (%dx),%es:(%edi)
c0003369:	69 6f 74 59 61 6e 67 	imul   $0x676e6159,0x74(%edi),%ebp
c0003370:	20 7c 20 0a          	and    %bh,0xa(%eax,%eiz,1)
c0003374:	00 00                	add    %al,(%eax)
c0003376:	00 00                	add    %al,(%eax)
c0003378:	20 20                	and    %ah,(%eax)
c000337a:	20 20                	and    %ah,(%eax)
c000337c:	20 20                	and    %ah,(%eax)
c000337e:	20 20                	and    %ah,(%eax)
c0003380:	7c 20                	jl     c00033a2 <init_all+0x5c8>
c0003382:	2c 5f                	sub    $0x5f,%al
c0003384:	5f                   	pop    %edi
c0003385:	5f                   	pop    %edi
c0003386:	7c 20                	jl     c00033a8 <init_all+0x5ce>
c0003388:	20 20                	and    %ah,(%eax)
c000338a:	20 20                	and    %ah,(%eax)
c000338c:	20 2c 2c             	and    %ch,(%esp,%ebp,1)
c000338f:	7c 20                	jl     c00033b1 <init_all+0x5d7>
c0003391:	20 20                	and    %ah,(%eax)
c0003393:	20 20                	and    %ah,(%eax)
c0003395:	20 20                	and    %ah,(%eax)
c0003397:	20 20                	and    %ah,(%eax)
c0003399:	20 20                	and    %ah,(%eax)
c000339b:	20 20                	and    %ah,(%eax)
c000339d:	20 20                	and    %ah,(%eax)
c000339f:	20 20                	and    %ah,(%eax)
c00033a1:	20 20                	and    %ah,(%eax)
c00033a3:	20 20                	and    %ah,(%eax)
c00033a5:	20 20                	and    %ah,(%eax)
c00033a7:	20 20                	and    %ah,(%eax)
c00033a9:	7c 20                	jl     c00033cb <init_all+0x5f1>
c00033ab:	0a 00                	or     (%eax),%al
c00033ad:	00 00                	add    %al,(%eax)
c00033af:	00 20                	add    %ah,(%eax)
c00033b1:	20 20                	and    %ah,(%eax)
c00033b3:	20 20                	and    %ah,(%eax)
c00033b5:	20 20                	and    %ah,(%eax)
c00033b7:	20 7c 20 20          	and    %bh,0x20(%eax,%eiz,1)
c00033bb:	20 2f                	and    %ch,(%edi)
c00033bd:	20 20                	and    %ah,(%eax)
c00033bf:	20 20                	and    %ah,(%eax)
c00033c1:	2e 2e 27             	cs cs daa 
c00033c4:	27                   	daa    
c00033c5:	20 20                	and    %ah,(%eax)
c00033c7:	20 5c 5f 5f          	and    %bl,0x5f(%edi,%ebx,2)
c00033cb:	5f                   	pop    %edi
c00033cc:	5f                   	pop    %edi
c00033cd:	5f                   	pop    %edi
c00033ce:	5f                   	pop    %edi
c00033cf:	5f                   	pop    %edi
c00033d0:	5f                   	pop    %edi
c00033d1:	5f                   	pop    %edi
c00033d2:	5f                   	pop    %edi
c00033d3:	5f                   	pop    %edi
c00033d4:	5f                   	pop    %edi
c00033d5:	5f                   	pop    %edi
c00033d6:	5f                   	pop    %edi
c00033d7:	5f                   	pop    %edi
c00033d8:	5f                   	pop    %edi
c00033d9:	5f                   	pop    %edi
c00033da:	5f                   	pop    %edi
c00033db:	5f                   	pop    %edi
c00033dc:	5f                   	pop    %edi
c00033dd:	5f                   	pop    %edi
c00033de:	5f                   	pop    %edi
c00033df:	5f                   	pop    %edi
c00033e0:	2f                   	das    
c00033e1:	20 20                	and    %ah,(%eax)
c00033e3:	0a 00                	or     (%eax),%al
c00033e5:	00 00                	add    %al,(%eax)
c00033e7:	00 20                	add    %ah,(%eax)
c00033e9:	20 20                	and    %ah,(%eax)
c00033eb:	20 20                	and    %ah,(%eax)
c00033ed:	20 20                	and    %ah,(%eax)
c00033ef:	2f                   	das    
c00033f0:	5f                   	pop    %edi
c00033f1:	5f                   	pop    %edi
c00033f2:	5f                   	pop    %edi
c00033f3:	5f                   	pop    %edi
c00033f4:	5c                   	pop    %esp
c00033f5:	20 20                	and    %ah,(%eax)
c00033f7:	20 20                	and    %ah,(%eax)
c00033f9:	20 20                	and    %ah,(%eax)
c00033fb:	20 20                	and    %ah,(%eax)
c00033fd:	20 20                	and    %ah,(%eax)
c00033ff:	20 20                	and    %ah,(%eax)
c0003401:	20 20                	and    %ah,(%eax)
c0003403:	20 20                	and    %ah,(%eax)
c0003405:	20 20                	and    %ah,(%eax)
c0003407:	20 20                	and    %ah,(%eax)
c0003409:	20 20                	and    %ah,(%eax)
c000340b:	20 20                	and    %ah,(%eax)
c000340d:	20 20                	and    %ah,(%eax)
c000340f:	20 20                	and    %ah,(%eax)
c0003411:	20 20                	and    %ah,(%eax)
c0003413:	20 20                	and    %ah,(%eax)
c0003415:	20 20                	and    %ah,(%eax)
c0003417:	20 20                	and    %ah,(%eax)
c0003419:	20 20                	and    %ah,(%eax)
c000341b:	0a 00                	or     (%eax),%al
c000341d:	00 00                	add    %al,(%eax)
c000341f:	00 20                	add    %ah,(%eax)
c0003421:	20 20                	and    %ah,(%eax)
c0003423:	20 20                	and    %ah,(%eax)
c0003425:	20 20                	and    %ah,(%eax)
c0003427:	20 20                	and    %ah,(%eax)
c0003429:	20 20                	and    %ah,(%eax)
c000342b:	20 20                	and    %ah,(%eax)
c000342d:	20 20                	and    %ah,(%eax)
c000342f:	20 20                	and    %ah,(%eax)
c0003431:	20 20                	and    %ah,(%eax)
c0003433:	20 20                	and    %ah,(%eax)
c0003435:	20 20                	and    %ah,(%eax)
c0003437:	20 20                	and    %ah,(%eax)
c0003439:	20 20                	and    %ah,(%eax)
c000343b:	20 20                	and    %ah,(%eax)
c000343d:	20 20                	and    %ah,(%eax)
c000343f:	20 20                	and    %ah,(%eax)
c0003441:	20 20                	and    %ah,(%eax)
c0003443:	20 20                	and    %ah,(%eax)
c0003445:	20 20                	and    %ah,(%eax)
c0003447:	20 20                	and    %ah,(%eax)
c0003449:	20 20                	and    %ah,(%eax)
c000344b:	20 20                	and    %ah,(%eax)
c000344d:	20 20                	and    %ah,(%eax)
c000344f:	20 20                	and    %ah,(%eax)
c0003451:	20 0a                	and    %cl,(%edx)
c0003453:	00 25 63 00 0a 00    	add    %ah,0xa0063
c0003459:	65 66 6c             	gs data16 insb (%dx),%es:(%edi)
c000345c:	61                   	popa   
c000345d:	67 73 3a             	addr16 jae c000349a <init_all+0x6c0>
c0003460:	30 78 25             	xor    %bh,0x25(%eax)
c0003463:	30 38                	xor    %bh,(%eax)
c0003465:	78 0a                	js     c0003471 <init_all+0x697>
c0003467:	00 65 62             	add    %ah,0x62(%ebp)
c000346a:	70 3a                	jo     c00034a6 <init_all+0x6cc>
c000346c:	30 78 25             	xor    %bh,0x25(%eax)
c000346f:	30 38                	xor    %bh,(%eax)
c0003471:	78 0a                	js     c000347d <init_all+0x6a3>
c0003473:	00 65 73             	add    %ah,0x73(%ebp)
c0003476:	70 3a                	jo     c00034b2 <init_all+0x6d8>
c0003478:	30 78 25             	xor    %bh,0x25(%eax)
c000347b:	30 38                	xor    %bh,(%eax)
c000347d:	78 0a                	js     c0003489 <init_all+0x6af>
c000347f:	00 23                	add    %ah,(%ebx)
c0003481:	44                   	inc    %esp
c0003482:	45                   	inc    %ebp
c0003483:	20 44 69 76          	and    %al,0x76(%ecx,%ebp,2)
c0003487:	69 64 65 20 45 72 72 	imul   $0x6f727245,0x20(%ebp,%eiz,2),%esp
c000348e:	6f 
c000348f:	72 00                	jb     c0003491 <init_all+0x6b7>
c0003491:	23 44 42 20          	and    0x20(%edx,%eax,2),%eax
c0003495:	52                   	push   %edx
c0003496:	45                   	inc    %ebp
c0003497:	53                   	push   %ebx
c0003498:	45                   	inc    %ebp
c0003499:	52                   	push   %edx
c000349a:	56                   	push   %esi
c000349b:	45                   	inc    %ebp
c000349c:	44                   	inc    %esp
c000349d:	00 e2                	add    %ah,%dl
c000349f:	80 94 4e 4d 49 20 49 	adcb   $0x6e,0x4920494d(%esi,%ecx,2)
c00034a6:	6e 
c00034a7:	74 65                	je     c000350e <init_all+0x734>
c00034a9:	72 72                	jb     c000351d <init_all+0x743>
c00034ab:	75 70                	jne    c000351d <init_all+0x743>
c00034ad:	74 00                	je     c00034af <init_all+0x6d5>
c00034af:	23 42 50             	and    0x50(%edx),%eax
c00034b2:	20 42 72             	and    %al,0x72(%edx)
c00034b5:	65 61                	gs popa 
c00034b7:	6b 70 6f 69          	imul   $0x69,0x6f(%eax),%esi
c00034bb:	6e                   	outsb  %ds:(%esi),(%dx)
c00034bc:	74 00                	je     c00034be <init_all+0x6e4>
c00034be:	23 4f 46             	and    0x46(%edi),%ecx
c00034c1:	20 4f 76             	and    %cl,0x76(%edi)
c00034c4:	65 72 66             	gs jb  c000352d <init_all+0x753>
c00034c7:	6c                   	insb   (%dx),%es:(%edi)
c00034c8:	6f                   	outsl  %ds:(%esi),(%dx)
c00034c9:	77 00                	ja     c00034cb <init_all+0x6f1>
c00034cb:	23 42 52             	and    0x52(%edx),%eax
c00034ce:	20 42 4f             	and    %al,0x4f(%edx)
c00034d1:	55                   	push   %ebp
c00034d2:	4e                   	dec    %esi
c00034d3:	44                   	inc    %esp
c00034d4:	20 52 61             	and    %dl,0x61(%edx)
c00034d7:	6e                   	outsb  %ds:(%esi),(%dx)
c00034d8:	67 65 20 45 78       	and    %al,%gs:0x78(%di)
c00034dd:	63 65 65             	arpl   %sp,0x65(%ebp)
c00034e0:	64 65 64 00 23       	fs gs add %ah,%fs:(%ebx)
c00034e5:	55                   	push   %ebp
c00034e6:	44                   	inc    %esp
c00034e7:	20 49 6e             	and    %cl,0x6e(%ecx)
c00034ea:	76 61                	jbe    c000354d <init_all+0x773>
c00034ec:	6c                   	insb   (%dx),%es:(%edi)
c00034ed:	69 64 20 4f 70 63 6f 	imul   $0x646f6370,0x4f(%eax,%eiz,1),%esp
c00034f4:	64 
c00034f5:	65 20 28             	and    %ch,%gs:(%eax)
c00034f8:	55                   	push   %ebp
c00034f9:	6e                   	outsb  %ds:(%esi),(%dx)
c00034fa:	64 65 66 69 6e 65 64 	fs imul $0x2064,%gs:0x65(%esi),%bp
c0003501:	20 
c0003502:	4f                   	dec    %edi
c0003503:	70 63                	jo     c0003568 <init_all+0x78e>
c0003505:	6f                   	outsl  %ds:(%esi),(%dx)
c0003506:	64 65 29 00          	fs sub %eax,%gs:(%eax)
c000350a:	00 00                	add    %al,(%eax)
c000350c:	23 4e 4d             	and    0x4d(%esi),%ecx
c000350f:	20 44 65 76          	and    %al,0x76(%ebp,%eiz,2)
c0003513:	69 63 65 20 4e 6f 74 	imul   $0x746f4e20,0x65(%ebx),%esp
c000351a:	20 41 76             	and    %al,0x76(%ecx)
c000351d:	61                   	popa   
c000351e:	69 6c 61 62 6c 65 20 	imul   $0x2820656c,0x62(%ecx,%eiz,2),%ebp
c0003525:	28 
c0003526:	4e                   	dec    %esi
c0003527:	6f                   	outsl  %ds:(%esi),(%dx)
c0003528:	20 4d 61             	and    %cl,0x61(%ebp)
c000352b:	74 68                	je     c0003595 <init_all+0x7bb>
c000352d:	20 43 6f             	and    %al,0x6f(%ebx)
c0003530:	70 72                	jo     c00035a4 <init_all+0x7ca>
c0003532:	6f                   	outsl  %ds:(%esi),(%dx)
c0003533:	63 65 73             	arpl   %sp,0x73(%ebp)
c0003536:	73 6f                	jae    c00035a7 <init_all+0x7cd>
c0003538:	72 29                	jb     c0003563 <init_all+0x789>
c000353a:	00 23                	add    %ah,(%ebx)
c000353c:	44                   	inc    %esp
c000353d:	46                   	inc    %esi
c000353e:	20 44 6f 75          	and    %al,0x75(%edi,%ebp,2)
c0003542:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
c0003546:	46                   	inc    %esi
c0003547:	61                   	popa   
c0003548:	75 6c                	jne    c00035b6 <init_all+0x7dc>
c000354a:	74 00                	je     c000354c <init_all+0x772>
c000354c:	43                   	inc    %ebx
c000354d:	6f                   	outsl  %ds:(%esi),(%dx)
c000354e:	70 72                	jo     c00035c2 <init_all+0x7e8>
c0003550:	6f                   	outsl  %ds:(%esi),(%dx)
c0003551:	63 65 73             	arpl   %sp,0x73(%ebp)
c0003554:	73 6f                	jae    c00035c5 <init_all+0x7eb>
c0003556:	72 20                	jb     c0003578 <init_all+0x79e>
c0003558:	53                   	push   %ebx
c0003559:	65 67 6d             	gs insl (%dx),%es:(%di)
c000355c:	65 6e                	outsb  %gs:(%esi),(%dx)
c000355e:	74 20                	je     c0003580 <init_all+0x7a6>
c0003560:	4f                   	dec    %edi
c0003561:	76 65                	jbe    c00035c8 <init_all+0x7ee>
c0003563:	72 72                	jb     c00035d7 <init_all+0x7fd>
c0003565:	75 6e                	jne    c00035d5 <init_all+0x7fb>
c0003567:	20 28                	and    %ch,(%eax)
c0003569:	72 65                	jb     c00035d0 <init_all+0x7f6>
c000356b:	73 65                	jae    c00035d2 <init_all+0x7f8>
c000356d:	72 76                	jb     c00035e5 <init_all+0x80b>
c000356f:	65 64 29 00          	gs sub %eax,%fs:(%eax)
c0003573:	23 54 53 20          	and    0x20(%ebx,%edx,2),%edx
c0003577:	49                   	dec    %ecx
c0003578:	6e                   	outsb  %ds:(%esi),(%dx)
c0003579:	76 61                	jbe    c00035dc <init_all+0x802>
c000357b:	6c                   	insb   (%dx),%es:(%edi)
c000357c:	69 64 20 54 53 53 00 	imul   $0x23005353,0x54(%eax,%eiz,1),%esp
c0003583:	23 
c0003584:	4e                   	dec    %esi
c0003585:	50                   	push   %eax
c0003586:	20 53 65             	and    %dl,0x65(%ebx)
c0003589:	67 6d                	insl   (%dx),%es:(%di)
c000358b:	65 6e                	outsb  %gs:(%esi),(%dx)
c000358d:	74 20                	je     c00035af <init_all+0x7d5>
c000358f:	4e                   	dec    %esi
c0003590:	6f                   	outsl  %ds:(%esi),(%dx)
c0003591:	74 20                	je     c00035b3 <init_all+0x7d9>
c0003593:	50                   	push   %eax
c0003594:	72 65                	jb     c00035fb <init_all+0x821>
c0003596:	73 65                	jae    c00035fd <init_all+0x823>
c0003598:	6e                   	outsb  %ds:(%esi),(%dx)
c0003599:	74 00                	je     c000359b <init_all+0x7c1>
c000359b:	23 53 53             	and    0x53(%ebx),%edx
c000359e:	20 53 74             	and    %dl,0x74(%ebx)
c00035a1:	61                   	popa   
c00035a2:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
c00035a5:	53                   	push   %ebx
c00035a6:	65 67 6d             	gs insl (%dx),%es:(%di)
c00035a9:	65 6e                	outsb  %gs:(%esi),(%dx)
c00035ab:	74 20                	je     c00035cd <init_all+0x7f3>
c00035ad:	46                   	inc    %esi
c00035ae:	61                   	popa   
c00035af:	75 6c                	jne    c000361d <init_all+0x843>
c00035b1:	74 00                	je     c00035b3 <init_all+0x7d9>
c00035b3:	23 47 50             	and    0x50(%edi),%eax
c00035b6:	20 47 65             	and    %al,0x65(%edi)
c00035b9:	6e                   	outsb  %ds:(%esi),(%dx)
c00035ba:	65 72 61             	gs jb  c000361e <init_all+0x844>
c00035bd:	6c                   	insb   (%dx),%es:(%edi)
c00035be:	20 50 72             	and    %dl,0x72(%eax)
c00035c1:	6f                   	outsl  %ds:(%esi),(%dx)
c00035c2:	74 65                	je     c0003629 <init_all+0x84f>
c00035c4:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c00035c8:	6e                   	outsb  %ds:(%esi),(%dx)
c00035c9:	00 23                	add    %ah,(%ebx)
c00035cb:	50                   	push   %eax
c00035cc:	46                   	inc    %esi
c00035cd:	20 50 61             	and    %dl,0x61(%eax)
c00035d0:	67 65 20 46 61       	and    %al,%gs:0x61(%bp)
c00035d5:	75 6c                	jne    c0003643 <init_all+0x869>
c00035d7:	74 00                	je     c00035d9 <init_all+0x7ff>
c00035d9:	00 00                	add    %al,(%eax)
c00035db:	00 e2                	add    %ah,%dl
c00035dd:	80 94 20 28 49 6e 74 	adcb   $0x65,0x746e4928(%eax,%eiz,1)
c00035e4:	65 
c00035e5:	6c                   	insb   (%dx),%es:(%edi)
c00035e6:	20 72 65             	and    %dh,0x65(%edx)
c00035e9:	73 65                	jae    c0003650 <init_all+0x876>
c00035eb:	72 76                	jb     c0003663 <init_all+0x889>
c00035ed:	65 64 2e 20 44 6f 20 	gs fs and %al,%cs:0x20(%edi,%ebp,2)
c00035f4:	6e                   	outsb  %ds:(%esi),(%dx)
c00035f5:	6f                   	outsl  %ds:(%esi),(%dx)
c00035f6:	74 20                	je     c0003618 <init_all+0x83e>
c00035f8:	75 73                	jne    c000366d <init_all+0x893>
c00035fa:	65 2e 29 00          	gs sub %eax,%cs:(%eax)
c00035fe:	00 00                	add    %al,(%eax)
c0003600:	23 4d 46             	and    0x46(%ebp),%ecx
c0003603:	20 78 38             	and    %bh,0x38(%eax)
c0003606:	37                   	aaa    
c0003607:	20 46 50             	and    %al,0x50(%esi)
c000360a:	55                   	push   %ebp
c000360b:	20 46 6c             	and    %al,0x6c(%esi)
c000360e:	6f                   	outsl  %ds:(%esi),(%dx)
c000360f:	61                   	popa   
c0003610:	74 69                	je     c000367b <init_all+0x8a1>
c0003612:	6e                   	outsb  %ds:(%esi),(%dx)
c0003613:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c0003619:	74 20                	je     c000363b <init_all+0x861>
c000361b:	45                   	inc    %ebp
c000361c:	72 72                	jb     c0003690 <init_all+0x8b6>
c000361e:	6f                   	outsl  %ds:(%esi),(%dx)
c000361f:	72 20                	jb     c0003641 <init_all+0x867>
c0003621:	28 4d 61             	sub    %cl,0x61(%ebp)
c0003624:	74 68                	je     c000368e <init_all+0x8b4>
c0003626:	20 46 61             	and    %al,0x61(%esi)
c0003629:	75 6c                	jne    c0003697 <init_all+0x8bd>
c000362b:	74 29                	je     c0003656 <init_all+0x87c>
c000362d:	00 23                	add    %ah,(%ebx)
c000362f:	41                   	inc    %ecx
c0003630:	43                   	inc    %ebx
c0003631:	20 41 6c             	and    %al,0x6c(%ecx)
c0003634:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%edi),%esp
c000363b:	20 43 68             	and    %al,0x68(%ebx)
c000363e:	65 63 6b 00          	arpl   %bp,%gs:0x0(%ebx)
c0003642:	23 4d 43             	and    0x43(%ebp),%ecx
c0003645:	20 4d 61             	and    %cl,0x61(%ebp)
c0003648:	63 68 69             	arpl   %bp,0x69(%eax)
c000364b:	6e                   	outsb  %ds:(%esi),(%dx)
c000364c:	65 20 43 68          	and    %al,%gs:0x68(%ebx)
c0003650:	65 63 6b 00          	arpl   %bp,%gs:0x0(%ebx)
c0003654:	23 58 46             	and    0x46(%eax),%ebx
c0003657:	20 53 49             	and    %dl,0x49(%ebx)
c000365a:	4d                   	dec    %ebp
c000365b:	44                   	inc    %esp
c000365c:	20 46 6c             	and    %al,0x6c(%esi)
c000365f:	6f                   	outsl  %ds:(%esi),(%dx)
c0003660:	61                   	popa   
c0003661:	74 69                	je     c00036cc <init_all+0x8f2>
c0003663:	6e                   	outsb  %ds:(%esi),(%dx)
c0003664:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000366a:	74 20                	je     c000368c <init_all+0x8b2>
c000366c:	45                   	inc    %ebp
c000366d:	78 63                	js     c00036d2 <init_all+0x8f8>
c000366f:	65 70 74             	gs jo  c00036e6 <init_all+0x90c>
c0003672:	69 6f 6e 00 55 6e 6b 	imul   $0x6b6e5500,0x6e(%edi),%ebp
c0003679:	6e                   	outsb  %ds:(%esi),(%dx)
c000367a:	6f                   	outsl  %ds:(%esi),(%dx)
c000367b:	77 6e                	ja     c00036eb <init_all+0x911>
c000367d:	00 38                	add    %bh,(%eax)
c000367f:	32 35 39 41 20 49    	xor    0x49204139,%dh
c0003685:	52                   	push   %edx
c0003686:	51                   	push   %ecx
c0003687:	30 20                	xor    %ah,(%eax)
c0003689:	43                   	inc    %ebx
c000368a:	4c                   	dec    %esp
c000368b:	4b                   	dec    %ebx
c000368c:	00 20                	add    %ah,(%eax)
c000368e:	20 20                	and    %ah,(%eax)
c0003690:	20 70 69             	and    %dh,0x69(%eax)
c0003693:	63 5f 69             	arpl   %bx,0x69(%edi)
c0003696:	6e                   	outsb  %ds:(%esi),(%dx)
c0003697:	69 74 20 64 6f 6e 65 	imul   $0xa656e6f,0x64(%eax,%eiz,1),%esi
c000369e:	0a 
c000369f:	00 20                	add    %ah,(%eax)
c00036a1:	20 20                	and    %ah,(%eax)
c00036a3:	20 69 64             	and    %ch,0x64(%ecx)
c00036a6:	74 5f                	je     c0003707 <init_all+0x92d>
c00036a8:	64 65 73 63          	fs gs jae c000370f <init_all+0x935>
c00036ac:	5f                   	pop    %edi
c00036ad:	69 6e 69 74 20 64 6f 	imul   $0x6f642074,0x69(%esi),%ebp
c00036b4:	6e                   	outsb  %ds:(%esi),(%dx)
c00036b5:	65 0a 00             	or     %gs:(%eax),%al
c00036b8:	69 6e 74 65 72 72 75 	imul   $0x75727265,0x74(%esi),%ebp
c00036bf:	70 74                	jo     c0003735 <init_all+0x95b>
c00036c1:	20 76 65             	and    %dh,0x65(%esi)
c00036c4:	63 74 6f 72          	arpl   %si,0x72(%edi,%ebp,2)
c00036c8:	20 4e 4f             	and    %cl,0x4f(%esi)
c00036cb:	2e 25 64 20 20 00    	cs and $0x202064,%eax
c00036d1:	25 73 0a 00 69       	and    $0x69000a73,%eax
c00036d6:	64 74 5f             	fs je  c0003738 <init_all+0x95e>
c00036d9:	69 6e 69 74 5f 73 74 	imul   $0x74735f74,0x69(%esi),%ebp
c00036e0:	61                   	popa   
c00036e1:	72 74                	jb     c0003757 <init_all+0x97d>
c00036e3:	0a 00                	or     (%eax),%al
c00036e5:	69 64 74 5f 69 6e 69 	imul   $0x74696e69,0x5f(%esp,%esi,2),%esp
c00036ec:	74 
c00036ed:	20 64 6f 6e          	and    %ah,0x6e(%edi,%ebp,2)
c00036f1:	65 0a 00             	or     %gs:(%eax),%al
c00036f4:	69 6e 69 74 5f 61 6c 	imul   $0x6c615f74,0x69(%esi),%ebp
c00036fb:	6c                   	insb   (%dx),%es:(%edi)
c00036fc:	20 73 74             	and    %dh,0x74(%ebx)
c00036ff:	61                   	popa   
c0003700:	72 74                	jb     c0003776 <init_all+0x99c>
c0003702:	0a 00                	or     (%eax),%al

Disassembly of section .eh_frame:

c0003704 <.eh_frame>:
c0003704:	14 00                	adc    $0x0,%al
c0003706:	00 00                	add    %al,(%eax)
c0003708:	00 00                	add    %al,(%eax)
c000370a:	00 00                	add    %al,(%eax)
c000370c:	01 7a 52             	add    %edi,0x52(%edx)
c000370f:	00 01                	add    %al,(%ecx)
c0003711:	7c 08                	jl     c000371b <init_all+0x941>
c0003713:	01 1b                	add    %ebx,(%ebx)
c0003715:	0c 04                	or     $0x4,%al
c0003717:	04 88                	add    $0x88,%al
c0003719:	01 00                	add    %eax,(%eax)
c000371b:	00 24 00             	add    %ah,(%eax,%eax,1)
c000371e:	00 00                	add    %al,(%eax)
c0003720:	1c 00                	sbb    $0x0,%al
c0003722:	00 00                	add    %al,(%eax)
c0003724:	dc dd                	(bad)  
c0003726:	ff                   	(bad)  
c0003727:	ff 59 00             	lcall  *0x0(%ecx)
c000372a:	00 00                	add    %al,(%eax)
c000372c:	00 48 0c             	add    %cl,0xc(%eax)
c000372f:	01 00                	add    %eax,(%eax)
c0003731:	47                   	inc    %edi
c0003732:	10 05 02 75 00 44    	adc    %al,0x44007502
c0003738:	0f 03 75 78          	lsl    0x78(%ebp),%esi
c000373c:	06                   	push   %es
c000373d:	10 03                	adc    %al,(%ebx)
c000373f:	02 75 7c             	add    0x7c(%ebp),%dh
c0003742:	00 00                	add    %al,(%eax)
c0003744:	10 00                	adc    %al,(%eax)
c0003746:	00 00                	add    %al,(%eax)
c0003748:	44                   	inc    %esp
c0003749:	00 00                	add    %al,(%eax)
c000374b:	00 0d de ff ff 04    	add    %cl,0x4ffffde
c0003751:	00 00                	add    %al,(%eax)
c0003753:	00 00                	add    %al,(%eax)
c0003755:	00 00                	add    %al,(%eax)
c0003757:	00 20                	add    %ah,(%eax)
c0003759:	00 00                	add    %al,(%eax)
c000375b:	00 58 00             	add    %bl,0x0(%eax)
c000375e:	00 00                	add    %al,(%eax)
c0003760:	fd                   	std    
c0003761:	dd ff                	(bad)  
c0003763:	ff 43 00             	incl   0x0(%ebx)
c0003766:	00 00                	add    %al,(%eax)
c0003768:	00 45 0e             	add    %al,0xe(%ebp)
c000376b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003771:	44                   	inc    %esp
c0003772:	83 03 77             	addl   $0x77,(%ebx)
c0003775:	c5 c3 0c             	(bad)
c0003778:	04 04                	add    $0x4,%al
c000377a:	00 00                	add    %al,(%eax)
c000377c:	20 00                	and    %al,(%eax)
c000377e:	00 00                	add    %al,(%eax)
c0003780:	7c 00                	jl     c0003782 <init_all+0x9a8>
c0003782:	00 00                	add    %al,(%eax)
c0003784:	1c de                	sbb    $0xde,%al
c0003786:	ff                   	(bad)  
c0003787:	ff 4d 00             	decl   0x0(%ebp)
c000378a:	00 00                	add    %al,(%eax)
c000378c:	00 45 0e             	add    %al,0xe(%ebp)
c000378f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003795:	44                   	inc    %esp
c0003796:	83 03 02             	addl   $0x2,(%ebx)
c0003799:	41                   	inc    %ecx
c000379a:	c5 c3 0c             	(bad)
c000379d:	04 04                	add    $0x4,%al
c000379f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00037a2:	00 00                	add    %al,(%eax)
c00037a4:	a0 00 00 00 45       	mov    0x45000000,%al
c00037a9:	de ff                	fdivrp %st,%st(7)
c00037ab:	ff                   	(bad)  
c00037ac:	3f                   	aas    
c00037ad:	00 00                	add    %al,(%eax)
c00037af:	00 00                	add    %al,(%eax)
c00037b1:	45                   	inc    %ebp
c00037b2:	0e                   	push   %cs
c00037b3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00037b9:	77 c5                	ja     c0003780 <init_all+0x9a6>
c00037bb:	0c 04                	or     $0x4,%al
c00037bd:	04 00                	add    $0x0,%al
c00037bf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c00037c2:	00 00                	add    %al,(%eax)
c00037c4:	c0 00 00             	rolb   $0x0,(%eax)
c00037c7:	00 64 de ff          	add    %ah,-0x1(%esi,%ebx,8)
c00037cb:	ff 4a 00             	decl   0x0(%edx)
c00037ce:	00 00                	add    %al,(%eax)
c00037d0:	00 45 0e             	add    %al,0xe(%ebp)
c00037d3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00037d9:	02 42 c5             	add    -0x3b(%edx),%al
c00037dc:	0c 04                	or     $0x4,%al
c00037de:	04 00                	add    $0x0,%al
c00037e0:	1c 00                	sbb    $0x0,%al
c00037e2:	00 00                	add    %al,(%eax)
c00037e4:	e0 00                	loopne c00037e6 <init_all+0xa0c>
c00037e6:	00 00                	add    %al,(%eax)
c00037e8:	8e de                	mov    %esi,%ds
c00037ea:	ff                   	(bad)  
c00037eb:	ff 47 00             	incl   0x0(%edi)
c00037ee:	00 00                	add    %al,(%eax)
c00037f0:	00 45 0e             	add    %al,0xe(%ebp)
c00037f3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00037f9:	7f c5                	jg     c00037c0 <init_all+0x9e6>
c00037fb:	0c 04                	or     $0x4,%al
c00037fd:	04 00                	add    $0x0,%al
c00037ff:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003802:	00 00                	add    %al,(%eax)
c0003804:	00 01                	add    %al,(%ecx)
c0003806:	00 00                	add    %al,(%eax)
c0003808:	b5 de                	mov    $0xde,%ch
c000380a:	ff                   	(bad)  
c000380b:	ff 29                	ljmp   *(%ecx)
c000380d:	00 00                	add    %al,(%eax)
c000380f:	00 00                	add    %al,(%eax)
c0003811:	45                   	inc    %ebp
c0003812:	0e                   	push   %cs
c0003813:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003819:	61                   	popa   
c000381a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000381d:	04 00                	add    $0x0,%al
c000381f:	00 10                	add    %dl,(%eax)
c0003821:	00 00                	add    %al,(%eax)
c0003823:	00 20                	add    %ah,(%eax)
c0003825:	01 00                	add    %eax,(%eax)
c0003827:	00 be de ff ff 04    	add    %bh,0x4ffffde(%esi)
c000382d:	00 00                	add    %al,(%eax)
c000382f:	00 00                	add    %al,(%eax)
c0003831:	00 00                	add    %al,(%eax)
c0003833:	00 10                	add    %dl,(%eax)
c0003835:	00 00                	add    %al,(%eax)
c0003837:	00 34 01             	add    %dh,(%ecx,%eax,1)
c000383a:	00 00                	add    %al,(%eax)
c000383c:	ae                   	scas   %es:(%edi),%al
c000383d:	de ff                	fdivrp %st,%st(7)
c000383f:	ff 04 00             	incl   (%eax,%eax,1)
c0003842:	00 00                	add    %al,(%eax)
c0003844:	00 00                	add    %al,(%eax)
c0003846:	00 00                	add    %al,(%eax)
c0003848:	20 00                	and    %al,(%eax)
c000384a:	00 00                	add    %al,(%eax)
c000384c:	48                   	dec    %eax
c000384d:	01 00                	add    %eax,(%eax)
c000384f:	00 9e de ff ff a9    	add    %bl,-0x56000022(%esi)
c0003855:	00 00                	add    %al,(%eax)
c0003857:	00 00                	add    %al,(%eax)
c0003859:	45                   	inc    %ebp
c000385a:	0e                   	push   %cs
c000385b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003861:	44                   	inc    %esp
c0003862:	83 03 02             	addl   $0x2,(%ebx)
c0003865:	9d                   	popf   
c0003866:	c5 c3 0c             	(bad)
c0003869:	04 04                	add    $0x4,%al
c000386b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000386e:	00 00                	add    %al,(%eax)
c0003870:	6c                   	insb   (%dx),%es:(%edi)
c0003871:	01 00                	add    %eax,(%eax)
c0003873:	00 23                	add    %ah,(%ebx)
c0003875:	df ff                	(bad)  
c0003877:	ff 50 00             	call   *0x0(%eax)
c000387a:	00 00                	add    %al,(%eax)
c000387c:	00 45 0e             	add    %al,0xe(%ebp)
c000387f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003885:	02 48 c5             	add    -0x3b(%eax),%cl
c0003888:	0c 04                	or     $0x4,%al
c000388a:	04 00                	add    $0x0,%al
c000388c:	1c 00                	sbb    $0x0,%al
c000388e:	00 00                	add    %al,(%eax)
c0003890:	8c 01                	mov    %es,(%ecx)
c0003892:	00 00                	add    %al,(%eax)
c0003894:	53                   	push   %ebx
c0003895:	df ff                	(bad)  
c0003897:	ff 50 00             	call   *0x0(%eax)
c000389a:	00 00                	add    %al,(%eax)
c000389c:	00 45 0e             	add    %al,0xe(%ebp)
c000389f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00038a5:	02 48 c5             	add    -0x3b(%eax),%cl
c00038a8:	0c 04                	or     $0x4,%al
c00038aa:	04 00                	add    $0x0,%al
c00038ac:	2c 00                	sub    $0x0,%al
c00038ae:	00 00                	add    %al,(%eax)
c00038b0:	ac                   	lods   %ds:(%esi),%al
c00038b1:	01 00                	add    %eax,(%eax)
c00038b3:	00 83 df ff ff f3    	add    %al,-0xc000021(%ebx)
c00038b9:	03 00                	add    (%eax),%eax
c00038bb:	00 00                	add    %al,(%eax)
c00038bd:	45                   	inc    %ebp
c00038be:	0e                   	push   %cs
c00038bf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00038c5:	46                   	inc    %esi
c00038c6:	87 03                	xchg   %eax,(%ebx)
c00038c8:	86 04 83             	xchg   %al,(%ebx,%eax,4)
c00038cb:	05 03 e2 03 c3       	add    $0xc303e203,%eax
c00038d0:	41                   	inc    %ecx
c00038d1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c00038d5:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c00038d8:	04 00                	add    $0x0,%al
c00038da:	00 00                	add    %al,(%eax)
c00038dc:	1c 00                	sbb    $0x0,%al
c00038de:	00 00                	add    %al,(%eax)
c00038e0:	dc 01                	faddl  (%ecx)
c00038e2:	00 00                	add    %al,(%eax)
c00038e4:	46                   	inc    %esi
c00038e5:	e3 ff                	jecxz  c00038e6 <init_all+0xb0c>
c00038e7:	ff 40 00             	incl   0x0(%eax)
c00038ea:	00 00                	add    %al,(%eax)
c00038ec:	00 45 0e             	add    %al,0xe(%ebp)
c00038ef:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00038f5:	78 c5                	js     c00038bc <init_all+0xae2>
c00038f7:	0c 04                	or     $0x4,%al
c00038f9:	04 00                	add    $0x0,%al
c00038fb:	00 10                	add    %dl,(%eax)
c00038fd:	00 00                	add    %al,(%eax)
c00038ff:	00 fc                	add    %bh,%ah
c0003901:	01 00                	add    %eax,(%eax)
c0003903:	00 66 e3             	add    %ah,-0x1d(%esi)
c0003906:	ff                   	(bad)  
c0003907:	ff 04 00             	incl   (%eax,%eax,1)
c000390a:	00 00                	add    %al,(%eax)
c000390c:	00 00                	add    %al,(%eax)
c000390e:	00 00                	add    %al,(%eax)
c0003910:	1c 00                	sbb    $0x0,%al
c0003912:	00 00                	add    %al,(%eax)
c0003914:	10 02                	adc    %al,(%edx)
c0003916:	00 00                	add    %al,(%eax)
c0003918:	56                   	push   %esi
c0003919:	e3 ff                	jecxz  c000391a <init_all+0xb40>
c000391b:	ff 34 00             	pushl  (%eax,%eax,1)
c000391e:	00 00                	add    %al,(%eax)
c0003920:	00 45 0e             	add    %al,0xe(%ebp)
c0003923:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003929:	6c                   	insb   (%dx),%es:(%edi)
c000392a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000392d:	04 00                	add    $0x0,%al
c000392f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003932:	00 00                	add    %al,(%eax)
c0003934:	30 02                	xor    %al,(%edx)
c0003936:	00 00                	add    %al,(%eax)
c0003938:	6a e3                	push   $0xffffffe3
c000393a:	ff                   	(bad)  
c000393b:	ff                   	(bad)  
c000393c:	3e 00 00             	add    %al,%ds:(%eax)
c000393f:	00 00                	add    %al,(%eax)
c0003941:	45                   	inc    %ebp
c0003942:	0e                   	push   %cs
c0003943:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003949:	76 c5                	jbe    c0003910 <init_all+0xb36>
c000394b:	0c 04                	or     $0x4,%al
c000394d:	04 00                	add    $0x0,%al
c000394f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003952:	00 00                	add    %al,(%eax)
c0003954:	50                   	push   %eax
c0003955:	02 00                	add    (%eax),%al
c0003957:	00 88 e3 ff ff 3e    	add    %cl,0x3effffe3(%eax)
c000395d:	00 00                	add    %al,(%eax)
c000395f:	00 00                	add    %al,(%eax)
c0003961:	45                   	inc    %ebp
c0003962:	0e                   	push   %cs
c0003963:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003969:	76 c5                	jbe    c0003930 <init_all+0xb56>
c000396b:	0c 04                	or     $0x4,%al
c000396d:	04 00                	add    $0x0,%al
c000396f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003972:	00 00                	add    %al,(%eax)
c0003974:	70 02                	jo     c0003978 <init_all+0xb9e>
c0003976:	00 00                	add    %al,(%eax)
c0003978:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
c0003979:	e3 ff                	jecxz  c000397a <init_all+0xba0>
c000397b:	ff                   	(bad)  
c000397c:	3b 00                	cmp    (%eax),%eax
c000397e:	00 00                	add    %al,(%eax)
c0003980:	00 45 0e             	add    %al,0xe(%ebp)
c0003983:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003989:	73 c5                	jae    c0003950 <init_all+0xb76>
c000398b:	0c 04                	or     $0x4,%al
c000398d:	04 00                	add    $0x0,%al
c000398f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003992:	00 00                	add    %al,(%eax)
c0003994:	90                   	nop
c0003995:	02 00                	add    (%eax),%al
c0003997:	00 c1                	add    %al,%cl
c0003999:	e3 ff                	jecxz  c000399a <init_all+0xbc0>
c000399b:	ff 53 00             	call   *0x0(%ebx)
c000399e:	00 00                	add    %al,(%eax)
c00039a0:	00 45 0e             	add    %al,0xe(%ebp)
c00039a3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00039a9:	02 4b c5             	add    -0x3b(%ebx),%cl
c00039ac:	0c 04                	or     $0x4,%al
c00039ae:	04 00                	add    $0x0,%al
c00039b0:	1c 00                	sbb    $0x0,%al
c00039b2:	00 00                	add    %al,(%eax)
c00039b4:	b0 02                	mov    $0x2,%al
c00039b6:	00 00                	add    %al,(%eax)
c00039b8:	f4                   	hlt    
c00039b9:	e3 ff                	jecxz  c00039ba <init_all+0xbe0>
c00039bb:	ff 5b 00             	lcall  *0x0(%ebx)
c00039be:	00 00                	add    %al,(%eax)
c00039c0:	00 45 0e             	add    %al,0xe(%ebp)
c00039c3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00039c9:	02 53 c5             	add    -0x3b(%ebx),%dl
c00039cc:	0c 04                	or     $0x4,%al
c00039ce:	04 00                	add    $0x0,%al
c00039d0:	1c 00                	sbb    $0x0,%al
c00039d2:	00 00                	add    %al,(%eax)
c00039d4:	d0 02                	rolb   (%edx)
c00039d6:	00 00                	add    %al,(%eax)
c00039d8:	2f                   	das    
c00039d9:	e4 ff                	in     $0xff,%al
c00039db:	ff 4d 00             	decl   0x0(%ebp)
c00039de:	00 00                	add    %al,(%eax)
c00039e0:	00 45 0e             	add    %al,0xe(%ebp)
c00039e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c00039e9:	02 45 c5             	add    -0x3b(%ebp),%al
c00039ec:	0c 04                	or     $0x4,%al
c00039ee:	04 00                	add    $0x0,%al
c00039f0:	1c 00                	sbb    $0x0,%al
c00039f2:	00 00                	add    %al,(%eax)
c00039f4:	f0 02 00             	lock add (%eax),%al
c00039f7:	00 5c e4 ff          	add    %bl,-0x1(%esp,%eiz,8)
c00039fb:	ff 64 00 00          	jmp    *0x0(%eax,%eax,1)
c00039ff:	00 00                	add    %al,(%eax)
c0003a01:	45                   	inc    %ebp
c0003a02:	0e                   	push   %cs
c0003a03:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003a09:	02 5c c5 0c          	add    0xc(%ebp,%eax,8),%bl
c0003a0d:	04 04                	add    $0x4,%al
c0003a0f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003a12:	00 00                	add    %al,(%eax)
c0003a14:	10 03                	adc    %al,(%ebx)
c0003a16:	00 00                	add    %al,(%eax)
c0003a18:	a0 e4 ff ff 41       	mov    0x41ffffe4,%al
c0003a1d:	00 00                	add    %al,(%eax)
c0003a1f:	00 00                	add    %al,(%eax)
c0003a21:	45                   	inc    %ebp
c0003a22:	0e                   	push   %cs
c0003a23:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003a29:	79 c5                	jns    c00039f0 <init_all+0xc16>
c0003a2b:	0c 04                	or     $0x4,%al
c0003a2d:	04 00                	add    $0x0,%al
c0003a2f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003a32:	00 00                	add    %al,(%eax)
c0003a34:	30 03                	xor    %al,(%ebx)
c0003a36:	00 00                	add    %al,(%eax)
c0003a38:	c1 e4 ff             	shl    $0xff,%esp
c0003a3b:	ff                   	(bad)  
c0003a3c:	3d 00 00 00 00       	cmp    $0x0,%eax
c0003a41:	45                   	inc    %ebp
c0003a42:	0e                   	push   %cs
c0003a43:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003a49:	75 c5                	jne    c0003a10 <init_all+0xc36>
c0003a4b:	0c 04                	or     $0x4,%al
c0003a4d:	04 00                	add    $0x0,%al
c0003a4f:	00 20                	add    %ah,(%eax)
c0003a51:	00 00                	add    %al,(%eax)
c0003a53:	00 50 03             	add    %dl,0x3(%eax)
c0003a56:	00 00                	add    %al,(%eax)
c0003a58:	de e4                	fsubp  %st,%st(4)
c0003a5a:	ff                   	(bad)  
c0003a5b:	ff                   	(bad)  
c0003a5c:	7c 00                	jl     c0003a5e <init_all+0xc84>
c0003a5e:	00 00                	add    %al,(%eax)
c0003a60:	00 45 0e             	add    %al,0xe(%ebp)
c0003a63:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003a69:	41                   	inc    %ecx
c0003a6a:	87 03                	xchg   %eax,(%ebx)
c0003a6c:	02 72 c7             	add    -0x39(%edx),%dh
c0003a6f:	41                   	inc    %ecx
c0003a70:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003a73:	04 28                	add    $0x28,%al
c0003a75:	00 00                	add    %al,(%eax)
c0003a77:	00 74 03 00          	add    %dh,0x0(%ebx,%eax,1)
c0003a7b:	00 36                	add    %dh,(%esi)
c0003a7d:	e5 ff                	in     $0xff,%eax
c0003a7f:	ff                   	(bad)  
c0003a80:	e8 00 00 00 00       	call   c0003a85 <init_all+0xcab>
c0003a85:	45                   	inc    %ebp
c0003a86:	0e                   	push   %cs
c0003a87:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003a8d:	46                   	inc    %esi
c0003a8e:	87 03                	xchg   %eax,(%ebx)
c0003a90:	86 04 83             	xchg   %al,(%ebx,%eax,4)
c0003a93:	05 02 d7 c3 41       	add    $0x41c3d702,%eax
c0003a98:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c0003a9c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003a9f:	04 1c                	add    $0x1c,%al
c0003aa1:	00 00                	add    %al,(%eax)
c0003aa3:	00 a0 03 00 00 f2    	add    %ah,-0xdfffffd(%eax)
c0003aa9:	e5 ff                	in     $0xff,%eax
c0003aab:	ff 24 00             	jmp    *(%eax,%eax,1)
c0003aae:	00 00                	add    %al,(%eax)
c0003ab0:	00 45 0e             	add    %al,0xe(%ebp)
c0003ab3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003ab9:	5c                   	pop    %esp
c0003aba:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003abd:	04 00                	add    $0x0,%al
c0003abf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003ac2:	00 00                	add    %al,(%eax)
c0003ac4:	c0 03 00             	rolb   $0x0,(%ebx)
c0003ac7:	00 f6                	add    %dh,%dh
c0003ac9:	e5 ff                	in     $0xff,%eax
c0003acb:	ff 66 00             	jmp    *0x0(%esi)
c0003ace:	00 00                	add    %al,(%eax)
c0003ad0:	00 45 0e             	add    %al,0xe(%ebp)
c0003ad3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003ad9:	02 5e c5             	add    -0x3b(%esi),%bl
c0003adc:	0c 04                	or     $0x4,%al
c0003ade:	04 00                	add    $0x0,%al
c0003ae0:	1c 00                	sbb    $0x0,%al
c0003ae2:	00 00                	add    %al,(%eax)
c0003ae4:	e0 03                	loopne c0003ae9 <init_all+0xd0f>
c0003ae6:	00 00                	add    %al,(%eax)
c0003ae8:	3c e6                	cmp    $0xe6,%al
c0003aea:	ff                   	(bad)  
c0003aeb:	ff 42 00             	incl   0x0(%edx)
c0003aee:	00 00                	add    %al,(%eax)
c0003af0:	00 45 0e             	add    %al,0xe(%ebp)
c0003af3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003af9:	7a c5                	jp     c0003ac0 <init_all+0xce6>
c0003afb:	0c 04                	or     $0x4,%al
c0003afd:	04 00                	add    $0x0,%al
c0003aff:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003b02:	00 00                	add    %al,(%eax)
c0003b04:	00 04 00             	add    %al,(%eax,%eax,1)
c0003b07:	00 5e e6             	add    %bl,-0x1a(%esi)
c0003b0a:	ff                   	(bad)  
c0003b0b:	ff 6b 01             	ljmp   *0x1(%ebx)
c0003b0e:	00 00                	add    %al,(%eax)
c0003b10:	00 45 0e             	add    %al,0xe(%ebp)
c0003b13:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003b19:	03 63 01             	add    0x1(%ebx),%esp
c0003b1c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003b1f:	04 1c                	add    $0x1c,%al
c0003b21:	00 00                	add    %al,(%eax)
c0003b23:	00 20                	add    %ah,(%eax)
c0003b25:	04 00                	add    $0x0,%al
c0003b27:	00 9e e8 ff ff 1a    	add    %bl,0x1affffe8(%esi)
c0003b2d:	00 00                	add    %al,(%eax)
c0003b2f:	00 00                	add    %al,(%eax)
c0003b31:	41                   	inc    %ecx
c0003b32:	0e                   	push   %cs
c0003b33:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003b39:	56                   	push   %esi
c0003b3a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003b3d:	04 00                	add    $0x0,%al
c0003b3f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003b42:	00 00                	add    %al,(%eax)
c0003b44:	40                   	inc    %eax
c0003b45:	04 00                	add    $0x0,%al
c0003b47:	00 98 e8 ff ff 1a    	add    %bl,0x1affffe8(%eax)
c0003b4d:	00 00                	add    %al,(%eax)
c0003b4f:	00 00                	add    %al,(%eax)
c0003b51:	41                   	inc    %ecx
c0003b52:	0e                   	push   %cs
c0003b53:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003b59:	56                   	push   %esi
c0003b5a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003b5d:	04 00                	add    $0x0,%al
c0003b5f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0003b62:	00 00                	add    %al,(%eax)
c0003b64:	60                   	pusha  
c0003b65:	04 00                	add    $0x0,%al
c0003b67:	00 92 e8 ff ff 1a    	add    %dl,0x1affffe8(%edx)
c0003b6d:	00 00                	add    %al,(%eax)
c0003b6f:	00 00                	add    %al,(%eax)
c0003b71:	41                   	inc    %ecx
c0003b72:	0e                   	push   %cs
c0003b73:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003b79:	56                   	push   %esi
c0003b7a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003b7d:	04 00                	add    $0x0,%al
c0003b7f:	00 20                	add    %ah,(%eax)
c0003b81:	00 00                	add    %al,(%eax)
c0003b83:	00 80 04 00 00 8c    	add    %al,-0x73fffffc(%eax)
c0003b89:	e8 ff ff 3d 01       	call   c13e3b8d <_end+0x13de869>
c0003b8e:	00 00                	add    %al,(%eax)
c0003b90:	00 45 0e             	add    %al,0xe(%ebp)
c0003b93:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003b99:	44                   	inc    %esp
c0003b9a:	83 03 03             	addl   $0x3,(%ebx)
c0003b9d:	31 01                	xor    %eax,(%ecx)
c0003b9f:	c5 c3 0c             	(bad)
c0003ba2:	04 04                	add    $0x4,%al
c0003ba4:	20 00                	and    %al,(%eax)
c0003ba6:	00 00                	add    %al,(%eax)
c0003ba8:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c0003ba9:	04 00                	add    $0x0,%al
c0003bab:	00 a5 e9 ff ff 65    	add    %ah,0x65ffffe9(%ebp)
c0003bb1:	00 00                	add    %al,(%eax)
c0003bb3:	00 00                	add    %al,(%eax)
c0003bb5:	45                   	inc    %ebp
c0003bb6:	0e                   	push   %cs
c0003bb7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003bbd:	44                   	inc    %esp
c0003bbe:	83 03 02             	addl   $0x2,(%ebx)
c0003bc1:	58                   	pop    %eax
c0003bc2:	c3                   	ret    
c0003bc3:	41                   	inc    %ecx
c0003bc4:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003bc7:	04 20                	add    $0x20,%al
c0003bc9:	00 00                	add    %al,(%eax)
c0003bcb:	00 c8                	add    %cl,%al
c0003bcd:	04 00                	add    $0x0,%al
c0003bcf:	00 e6                	add    %ah,%dh
c0003bd1:	e9 ff ff c9 00       	jmp    c0ca3bd5 <_end+0xc9e8b1>
c0003bd6:	00 00                	add    %al,(%eax)
c0003bd8:	00 45 0e             	add    %al,0xe(%ebp)
c0003bdb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003be1:	44                   	inc    %esp
c0003be2:	83 03 02             	addl   $0x2,(%ebx)
c0003be5:	bd c5 c3 0c 04       	mov    $0x40cc3c5,%ebp
c0003bea:	04 00                	add    $0x0,%al
c0003bec:	20 00                	and    %al,(%eax)
c0003bee:	00 00                	add    %al,(%eax)
c0003bf0:	ec                   	in     (%dx),%al
c0003bf1:	04 00                	add    $0x0,%al
c0003bf3:	00 8b ea ff ff 9a    	add    %cl,-0x65000016(%ebx)
c0003bf9:	00 00                	add    %al,(%eax)
c0003bfb:	00 00                	add    %al,(%eax)
c0003bfd:	45                   	inc    %ebp
c0003bfe:	0e                   	push   %cs
c0003bff:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003c05:	44                   	inc    %esp
c0003c06:	83 03 02             	addl   $0x2,(%ebx)
c0003c09:	8e c5                	mov    %ebp,%es
c0003c0b:	c3                   	ret    
c0003c0c:	0c 04                	or     $0x4,%al
c0003c0e:	04 00                	add    $0x0,%al
c0003c10:	1c 00                	sbb    $0x0,%al
c0003c12:	00 00                	add    %al,(%eax)
c0003c14:	10 05 00 00 9b ee    	adc    %al,0xee9b0000
c0003c1a:	ff                   	(bad)  
c0003c1b:	ff 2b                	ljmp   *(%ebx)
c0003c1d:	00 00                	add    %al,(%eax)
c0003c1f:	00 00                	add    %al,(%eax)
c0003c21:	41                   	inc    %ecx
c0003c22:	0e                   	push   %cs
c0003c23:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003c29:	67 c5 0c             	lds    (%si),%ecx
c0003c2c:	04 04                	add    $0x4,%al
c0003c2e:	00 00                	add    %al,(%eax)
c0003c30:	20 00                	and    %al,(%eax)
c0003c32:	00 00                	add    %al,(%eax)
c0003c34:	30 05 00 00 a6 ee    	xor    %al,0xeea60000
c0003c3a:	ff                   	(bad)  
c0003c3b:	ff c9                	dec    %ecx
c0003c3d:	00 00                	add    %al,(%eax)
c0003c3f:	00 00                	add    %al,(%eax)
c0003c41:	41                   	inc    %ecx
c0003c42:	0e                   	push   %cs
c0003c43:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003c49:	44                   	inc    %esp
c0003c4a:	83 03 02             	addl   $0x2,(%ebx)
c0003c4d:	c1 c5 c3             	rol    $0xc3,%ebp
c0003c50:	0c 04                	or     $0x4,%al
c0003c52:	04 00                	add    $0x0,%al
c0003c54:	1c 00                	sbb    $0x0,%al
c0003c56:	00 00                	add    %al,(%eax)
c0003c58:	54                   	push   %esp
c0003c59:	05 00 00 4b ef       	add    $0xef4b0000,%eax
c0003c5e:	ff                   	(bad)  
c0003c5f:	ff 47 00             	incl   0x0(%edi)
c0003c62:	00 00                	add    %al,(%eax)
c0003c64:	00 41 0e             	add    %al,0xe(%ecx)
c0003c67:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003c6d:	02 43 c5             	add    -0x3b(%ebx),%al
c0003c70:	0c 04                	or     $0x4,%al
c0003c72:	04 00                	add    $0x0,%al
c0003c74:	20 00                	and    %al,(%eax)
c0003c76:	00 00                	add    %al,(%eax)
c0003c78:	74 05                	je     c0003c7f <init_all+0xea5>
c0003c7a:	00 00                	add    %al,(%eax)
c0003c7c:	72 ef                	jb     c0003c6d <init_all+0xe93>
c0003c7e:	ff                   	(bad)  
c0003c7f:	ff                   	(bad)  
c0003c80:	7c 00                	jl     c0003c82 <init_all+0xea8>
c0003c82:	00 00                	add    %al,(%eax)
c0003c84:	00 41 0e             	add    %al,0xe(%ecx)
c0003c87:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003c8d:	44                   	inc    %esp
c0003c8e:	83 03 02             	addl   $0x2,(%ebx)
c0003c91:	74 c5                	je     c0003c58 <init_all+0xe7e>
c0003c93:	c3                   	ret    
c0003c94:	0c 04                	or     $0x4,%al
c0003c96:	04 00                	add    $0x0,%al
c0003c98:	20 00                	and    %al,(%eax)
c0003c9a:	00 00                	add    %al,(%eax)
c0003c9c:	98                   	cwtl   
c0003c9d:	05 00 00 ca ef       	add    $0xefca0000,%eax
c0003ca2:	ff                   	(bad)  
c0003ca3:	ff 89 00 00 00 00    	decl   0x0(%ecx)
c0003ca9:	45                   	inc    %ebp
c0003caa:	0e                   	push   %cs
c0003cab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003cb1:	44                   	inc    %esp
c0003cb2:	83 03 02             	addl   $0x2,(%ebx)
c0003cb5:	7d c5                	jge    c0003c7c <init_all+0xea2>
c0003cb7:	c3                   	ret    
c0003cb8:	0c 04                	or     $0x4,%al
c0003cba:	04 00                	add    $0x0,%al
c0003cbc:	20 00                	and    %al,(%eax)
c0003cbe:	00 00                	add    %al,(%eax)
c0003cc0:	bc 05 00 00 2f       	mov    $0x2f000005,%esp
c0003cc5:	f0 ff                	lock (bad) 
c0003cc7:	ff 42 00             	incl   0x0(%edx)
c0003cca:	00 00                	add    %al,(%eax)
c0003ccc:	00 45 0e             	add    %al,0xe(%ebp)
c0003ccf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003cd5:	44                   	inc    %esp
c0003cd6:	83 03 75             	addl   $0x75,(%ebx)
c0003cd9:	c3                   	ret    
c0003cda:	41                   	inc    %ecx
c0003cdb:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003cde:	04 00                	add    $0x0,%al
c0003ce0:	28 00                	sub    %al,(%eax)
c0003ce2:	00 00                	add    %al,(%eax)
c0003ce4:	e0 05                	loopne c0003ceb <init_all+0xf11>
c0003ce6:	00 00                	add    %al,(%eax)
c0003ce8:	4d                   	dec    %ebp
c0003ce9:	f0 ff                	lock (bad) 
c0003ceb:	ff a5 00 00 00 00    	jmp    *0x0(%ebp)
c0003cf1:	45                   	inc    %ebp
c0003cf2:	0e                   	push   %cs
c0003cf3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003cf9:	46                   	inc    %esi
c0003cfa:	87 03                	xchg   %eax,(%ebx)
c0003cfc:	86 04 83             	xchg   %al,(%ebx,%eax,4)
c0003cff:	05 02 94 c3 41       	add    $0x41c39402,%eax
c0003d04:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c0003d08:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0003d0b:	04 20                	add    $0x20,%al
c0003d0d:	00 00                	add    %al,(%eax)
c0003d0f:	00 0c 06             	add    %cl,(%esi,%eax,1)
c0003d12:	00 00                	add    %al,(%eax)
c0003d14:	c6                   	(bad)  
c0003d15:	f0 ff                	lock (bad) 
c0003d17:	ff 45 00             	incl   0x0(%ebp)
c0003d1a:	00 00                	add    %al,(%eax)
c0003d1c:	00 45 0e             	add    %al,0xe(%ebp)
c0003d1f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0003d25:	44                   	inc    %esp
c0003d26:	83 03 79             	addl   $0x79,(%ebx)
c0003d29:	c5 c3 0c             	(bad)
c0003d2c:	04 04                	add    $0x4,%al
c0003d2e:	00 00                	add    %al,(%eax)

Disassembly of section .data.rel.ro:

c0004fe4 <error_string>:
c0004fe4:	00 00                	add    %al,(%eax)
c0004fe6:	00 00                	add    %al,(%eax)
c0004fe8:	44                   	inc    %esp
c0004fe9:	30 00                	xor    %al,(%eax)
c0004feb:	c0 56 30 00          	rclb   $0x0,0x30(%esi)
c0004fef:	c0 66 30 00          	shlb   $0x0,0x30(%esi)
c0004ff3:	c0 78 30 00          	sarb   $0x0,0x30(%eax)
c0004ff7:	c0 86 30 00 c0 9a 30 	rolb   $0x30,-0x653fffd0(%esi)
c0004ffe:	00 c0                	add    %al,%al

Disassembly of section .got.plt:

c0005000 <_GLOBAL_OFFSET_TABLE_>:
c0005000:	00 00                	add    %al,(%eax)
c0005002:	00 00                	add    %al,(%eax)
c0005004:	00 00                	add    %al,(%eax)
c0005006:	00 00                	add    %al,(%eax)
c0005008:	00 00                	add    %al,(%eax)
c000500a:	00 00                	add    %al,(%eax)

Disassembly of section .data:

c0005020 <property>:
c0005020:	00 00                	add    %al,(%eax)

c0005022 <put_int_buffer>:
c0005022:	00 00                	add    %al,(%eax)
c0005024:	00 00                	add    %al,(%eax)
c0005026:	00 00                	add    %al,(%eax)
c0005028:	00 00                	add    %al,(%eax)
c000502a:	00 00                	add    %al,(%eax)

c000502c <intr_str>:
c000502c:	49                   	dec    %ecx
c000502d:	6e                   	outsb  %ds:(%esi),(%dx)
c000502e:	74 65                	je     c0005095 <interrupt_entry_table+0x4c>
c0005030:	72 72                	jb     c00050a4 <interrupt_entry_table+0x5b>
c0005032:	75 70                	jne    c00050a4 <interrupt_entry_table+0x5b>
c0005034:	74 20                	je     c0005056 <interrupt_entry_table+0xd>
c0005036:	6a 75                	push   $0x75
c0005038:	73 74                	jae    c00050ae <interrupt_entry_table+0x65>
c000503a:	20 6f 63             	and    %ch,0x63(%edi)
c000503d:	63 75 72             	arpl   %si,0x72(%ebp)
c0005040:	72 65                	jb     c00050a7 <interrupt_entry_table+0x5e>
c0005042:	64 21 20             	and    %esp,%fs:(%eax)
c0005045:	25 64 0a 00        	and    $0x2e000a64,%eax

c0005049 <interrupt_entry_table>:
c0005049:	2e 27                	cs daa 
c000504b:	00 c0                	add    %al,%al
c000504d:	47                   	inc    %edi
c000504e:	27                   	daa    
c000504f:	00 c0                	add    %al,%al
c0005051:	60                   	pusha  
c0005052:	27                   	daa    
c0005053:	00 c0                	add    %al,%al
c0005055:	79 27                	jns    c000507e <interrupt_entry_table+0x35>
c0005057:	00 c0                	add    %al,%al
c0005059:	92                   	xchg   %eax,%edx
c000505a:	27                   	daa    
c000505b:	00 c0                	add    %al,%al
c000505d:	ae                   	scas   %es:(%edi),%al
c000505e:	27                   	daa    
c000505f:	00 c0                	add    %al,%al
c0005061:	ca 27 00             	lret   $0x27
c0005064:	c0 e6 27             	shl    $0x27,%dh
c0005067:	00 c0                	add    %al,%al
c0005069:	02 28                	add    (%eax),%ch
c000506b:	00 c0                	add    %al,%al
c000506d:	1d 28 00 c0 39       	sbb    $0x39c00028,%eax
c0005072:	28 00                	sub    %al,(%eax)
c0005074:	c0 54 28 00 c0       	rclb   $0xc0,0x0(%eax,%ebp,1)
c0005079:	6f                   	outsl  %ds:(%esi),(%dx)
c000507a:	28 00                	sub    %al,(%eax)
c000507c:	c0 8b 28 00 c0 a6 28 	rorb   $0x28,-0x593fffd8(%ebx)
c0005083:	00 c0                	add    %al,%al
c0005085:	c1 28 00             	shrl   $0x0,(%eax)
c0005088:	c0 dd 28             	rcr    $0x28,%ch
c000508b:	00 c0                	add    %al,%al
c000508d:	f9                   	stc    
c000508e:	28 00                	sub    %al,(%eax)
c0005090:	c0 14 29 00          	rclb   $0x0,(%ecx,%ebp,1)
c0005094:	c0 30 29             	shlb   $0x29,(%eax)
c0005097:	00 c0                	add    %al,%al
c0005099:	4c                   	dec    %esp
c000509a:	29 00                	sub    %eax,(%eax)
c000509c:	c0 68 29 00          	shrb   $0x0,0x29(%eax)
c00050a0:	c0 84 29 00 c0 a0 29 	rolb   $0x0,0x29a0c000(%ecx,%ebp,1)
c00050a7:	00 
c00050a8:	c0 bc 29 00 c0 d7 29 	sarb   $0x0,0x29d7c000(%ecx,%ebp,1)
c00050af:	00 
c00050b0:	c0 f3 29             	shl    $0x29,%bl
c00050b3:	00 c0                	add    %al,%al
c00050b5:	0e                   	push   %cs
c00050b6:	2a 00                	sub    (%eax),%al
c00050b8:	c0 29 2a             	shrb   $0x2a,(%ecx)
c00050bb:	00 c0                	add    %al,%al
c00050bd:	45                   	inc    %ebp
c00050be:	2a 00                	sub    (%eax),%al
c00050c0:	c0 60 2a 00          	shlb   $0x0,0x2a(%eax)
c00050c4:	c0 7b 2a 00          	sarb   $0x0,0x2a(%ebx)
c00050c8:	c0 97 2a 00 c0 00 00 	rclb   $0x0,0xc0002a(%edi)
c00050cf:	00 00                	add    %al,(%eax)
c00050d1:	00 00                	add    %al,(%eax)
c00050d3:	00 00                	add    %al,(%eax)
c00050d5:	00 00                	add    %al,(%eax)
c00050d7:	00 00                	add    %al,(%eax)
c00050d9:	00 00                	add    %al,(%eax)
c00050db:	00 00                	add    %al,(%eax)
c00050dd:	00 00                	add    %al,(%eax)
c00050df:	00         	add    %al,-0x6e3fffcc(%eax)

c00050e0 <interrupt_name>:
c00050e0:	80 34 00 c0          	xorb   $0xc0,(%eax,%eax,1)
c00050e4:	91                   	xchg   %eax,%ecx
c00050e5:	34 00                	xor    $0x0,%al
c00050e7:	c0 9e 34 00 c0 af 34 	rcrb   $0x34,-0x503fffcc(%esi)
c00050ee:	00 c0                	add    %al,%al
c00050f0:	be 34 00 c0 cb       	mov    $0xcbc00034,%esi
c00050f5:	34 00                	xor    $0x0,%al
c00050f7:	c0 e4 34             	shl    $0x34,%ah
c00050fa:	00 c0                	add    %al,%al
c00050fc:	0c 35                	or     $0x35,%al
c00050fe:	00 c0                	add    %al,%al
c0005100:	3b 35 00 c0 4c 35    	cmp    0x354cc000,%esi
c0005106:	00 c0                	add    %al,%al
c0005108:	73 35                	jae    c000513f <interrupt_name+0x5f>
c000510a:	00 c0                	add    %al,%al
c000510c:	83 35 00 c0 9b 35 00 	xorl   $0x0,0x359bc000
c0005113:	c0 b3 35 00 c0 ca 35 	shlb   $0x35,-0x353fffcb(%ebx)
c000511a:	00 c0                	add    %al,%al
c000511c:	dc 35 00 c0 00 36    	fdivl  0x3600c000
c0005122:	00 c0                	add    %al,%al
c0005124:	2e 36 00 c0          	cs ss add %al,%al
c0005128:	42                   	inc    %edx
c0005129:	36 00 c0             	ss add %al,%al
c000512c:	54                   	push   %esp
c000512d:	36 00 c0             	ss add %al,%al
c0005130:	76 36                	jbe    c0005168 <_edata+0x4>
c0005132:	00 c0                	add    %al,%al
c0005134:	76 36                	jbe    c000516c <_edata+0x8>
c0005136:	00 c0                	add    %al,%al
c0005138:	76 36                	jbe    c0005170 <_edata+0xc>
c000513a:	00 c0                	add    %al,%al
c000513c:	76 36                	jbe    c0005174 <_edata+0x10>
c000513e:	00 c0                	add    %al,%al
c0005140:	76 36                	jbe    c0005178 <_edata+0x14>
c0005142:	00 c0                	add    %al,%al
c0005144:	76 36                	jbe    c000517c <_edata+0x18>
c0005146:	00 c0                	add    %al,%al
c0005148:	76 36                	jbe    c0005180 <idt>
c000514a:	00 c0                	add    %al,%al
c000514c:	76 36                	jbe    c0005184 <idt+0x4>
c000514e:	00 c0                	add    %al,%al
c0005150:	76 36                	jbe    c0005188 <idt+0x8>
c0005152:	00 c0                	add    %al,%al
c0005154:	76 36                	jbe    c000518c <idt+0xc>
c0005156:	00 c0                	add    %al,%al
c0005158:	76 36                	jbe    c0005190 <idt+0x10>
c000515a:	00 c0                	add    %al,%al
c000515c:	76 36                	jbe    c0005194 <idt+0x14>
c000515e:	00 c0                	add    %al,%al
c0005160:	7e 36                	jle    c0005198 <idt+0x18>
c0005162:	00 c0                	add    %al,%al

Disassembly of section .bss:

c0005180 <idt>:
c0005180:	00 00                	add    %al,(%eax)
c0005182:	00 00                	add    %al,(%eax)
c0005184:	00 00                	add    %al,(%eax)
c0005186:	00 00                	add    %al,(%eax)
c0005188:	00 00                	add    %al,(%eax)
c000518a:	00 00                	add    %al,(%eax)
c000518c:	00 00                	add    %al,(%eax)
c000518e:	00 00                	add    %al,(%eax)
c0005190:	00 00                	add    %al,(%eax)
c0005192:	00 00                	add    %al,(%eax)
c0005194:	00 00                	add    %al,(%eax)
c0005196:	00 00                	add    %al,(%eax)
c0005198:	00 00                	add    %al,(%eax)
c000519a:	00 00                	add    %al,(%eax)
c000519c:	00 00                	add    %al,(%eax)
c000519e:	00 00                	add    %al,(%eax)
c00051a0:	00 00                	add    %al,(%eax)
c00051a2:	00 00                	add    %al,(%eax)
c00051a4:	00 00                	add    %al,(%eax)
c00051a6:	00 00                	add    %al,(%eax)
c00051a8:	00 00                	add    %al,(%eax)
c00051aa:	00 00                	add    %al,(%eax)
c00051ac:	00 00                	add    %al,(%eax)
c00051ae:	00 00                	add    %al,(%eax)
c00051b0:	00 00                	add    %al,(%eax)
c00051b2:	00 00                	add    %al,(%eax)
c00051b4:	00 00                	add    %al,(%eax)
c00051b6:	00 00                	add    %al,(%eax)
c00051b8:	00 00                	add    %al,(%eax)
c00051ba:	00 00                	add    %al,(%eax)
c00051bc:	00 00                	add    %al,(%eax)
c00051be:	00 00                	add    %al,(%eax)
c00051c0:	00 00                	add    %al,(%eax)
c00051c2:	00 00                	add    %al,(%eax)
c00051c4:	00 00                	add    %al,(%eax)
c00051c6:	00 00                	add    %al,(%eax)
c00051c8:	00 00                	add    %al,(%eax)
c00051ca:	00 00                	add    %al,(%eax)
c00051cc:	00 00                	add    %al,(%eax)
c00051ce:	00 00                	add    %al,(%eax)
c00051d0:	00 00                	add    %al,(%eax)
c00051d2:	00 00                	add    %al,(%eax)
c00051d4:	00 00                	add    %al,(%eax)
c00051d6:	00 00                	add    %al,(%eax)
c00051d8:	00 00                	add    %al,(%eax)
c00051da:	00 00                	add    %al,(%eax)
c00051dc:	00 00                	add    %al,(%eax)
c00051de:	00 00                	add    %al,(%eax)
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

c00052a0 <idt_handler_table>:
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
c00052e8:	00 00                	add    %al,(%eax)
c00052ea:	00 00                	add    %al,(%eax)
c00052ec:	00 00                	add    %al,(%eax)
c00052ee:	00 00                	add    %al,(%eax)
c00052f0:	00 00                	add    %al,(%eax)
c00052f2:	00 00                	add    %al,(%eax)
c00052f4:	00 00                	add    %al,(%eax)
c00052f6:	00 00                	add    %al,(%eax)
c00052f8:	00 00                	add    %al,(%eax)
c00052fa:	00 00                	add    %al,(%eax)
c00052fc:	00 00                	add    %al,(%eax)
c00052fe:	00 00                	add    %al,(%eax)
c0005300:	00 00                	add    %al,(%eax)
c0005302:	00 00                	add    %al,(%eax)
c0005304:	00 00                	add    %al,(%eax)
c0005306:	00 00                	add    %al,(%eax)
c0005308:	00 00                	add    %al,(%eax)
c000530a:	00 00                	add    %al,(%eax)
c000530c:	00 00                	add    %al,(%eax)
c000530e:	00 00                	add    %al,(%eax)
c0005310:	00 00                	add    %al,(%eax)
c0005312:	00 00                	add    %al,(%eax)
c0005314:	00 00                	add    %al,(%eax)
c0005316:	00 00                	add    %al,(%eax)
c0005318:	00 00                	add    %al,(%eax)
c000531a:	00 00                	add    %al,(%eax)
c000531c:	00 00                	add    %al,(%eax)
c000531e:	00 00                	add    %al,(%eax)
c0005320:	00 00                	add    %al,(%eax)
c0005322:	00 00                	add    %al,(%eax)

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <SELECTOR_VIDEO+0x60>
   a:	74 75                	je     81 <SELECTOR_VIDEO+0x69>
   c:	20 39                	and    %bh,(%ecx)
   e:	2e 33 2e             	xor    %cs:(%esi),%ebp
  11:	30 2d 31 37 75 62    	xor    %ch,0x62753731
  17:	75 6e                	jne    87 <SELECTOR_VIDEO+0x6f>
  19:	74 75                	je     90 <SELECTOR_VIDEO+0x78>
  1b:	31 7e 32             	xor    %edi,0x32(%esi)
  1e:	30 2e                	xor    %ch,(%esi)
  20:	30 34 29             	xor    %dh,(%ecx,%ebp,1)
  23:	20 39                	and    %bh,(%ecx)
  25:	2e 33 2e             	xor    %cs:(%esi),%ebp
  28:	30 00                	xor    %al,(%eax)
