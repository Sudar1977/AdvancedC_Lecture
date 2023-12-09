
61.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 34 00 00 	mov    0x3415(%rip),%rax        # 140004430 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 34 00 00 	mov    0x3416(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 34 00 00 	mov    0x3419(%rip),%rax        # 140004450 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 7c 33 00 00 	mov    0x337c(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 bf 33 00 00 	mov    0x33bf(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00    	mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 99 19 00 00       	call   140002a10 <__set_app_type>
   140001077:	e8 04 19 00 00       	call   140002980 <__p__fmode>
   14000107c:	48 8b 15 7d 34 00 00 	mov    0x347d(%rip),%rdx        # 140004500 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 ec 18 00 00       	call   140002978 <__p__commode>
   14000108c:	48 8b 15 4d 34 00 00 	mov    0x344d(%rip),%rdx        # 1400044e0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 94 05 00 00       	call   140001630 <_setargv>
   14000109c:	48 8b 05 fd 32 00 00 	mov    0x32fd(%rip),%rax        # 1400043a0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 56 19 00 00       	call   140002a10 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 21 34 00 00 	mov    0x3421(%rip),%rcx        # 140004520 <.refptr._matherr>
   1400010ff:	e8 9c 0c 00 00       	call   140001da0 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 f5 33 00 00 	mov    0x33f5(%rip),%rax        # 140004530 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:	48 8b 05 91 33 00 00 	mov    0x3391(%rip),%rax        # 1400044f0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 5e 00 00 	lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 bd 15 00 00       	call   140002730 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d ef 32 00 00 	mov    0x32ef(%rip),%rbx        # 140004480 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d 38 71 00 00 	mov    0x7138(%rip),%rbp        # 1400082d0 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 bc 32 00 00 	mov    0x32bc(%rip),%rsi        # 140004490 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 5e 00 00 01 	movl   $0x1,0x5e13(%rip)        # 140007008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 e1 31 00 00 	mov    0x31e1(%rip),%rax        # 1400043f0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 d8 07 00 00       	call   140001a00 <_pei386_runtime_relocator>
   140001228:	48 8b 0d e1 32 00 00 	mov    0x32e1(%rip),%rcx        # 140004510 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 93 70 00 00    	call   *0x7093(%rip)        # 1400082c8 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 34 32 00 00 	mov    0x3234(%rip),%rdx        # 140004470 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 cd 17 00 00       	call   140002a18 <_set_invalid_parameter_handler>
   14000124b:	e8 c0 05 00 00       	call   140001810 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 10 18 00 00       	call   140002a78 <malloc>
   140001268:	4c 8b 25 b1 5d 00 00 	mov    0x5db1(%rip),%r12        # 140007020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 d7 16 00 00       	call   140002960 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 e3 17 00 00       	call   140002a78 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 9b 17 00 00       	call   140002a48 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 5d 00 00 	mov    %rbp,0x5d5d(%rip)        # 140007020 <argv>
   1400012c3:	e8 48 03 00 00       	call   140001610 <__main>
   1400012c8:	48 8b 05 31 31 00 00 	mov    0x3131(%rip),%rax        # 140004400 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 5d 00 00 	mov    0x5d42(%rip),%r8        # 140007018 <envp>
   1400012d6:	8b 0d 4c 5d 00 00    	mov    0x5d4c(%rip),%ecx        # 140007028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 5d 00 00 	mov    0x5d37(%rip),%rdx        # 140007020 <argv>
   1400012e9:	e8 ff 01 00 00       	call   1400014ed <main>
   1400012ee:	8b 0d 18 5d 00 00    	mov    0x5d18(%rip),%ecx        # 14000700c <managedapp>
   1400012f4:	89 05 16 5d 00 00    	mov    %eax,0x5d16(%rip)        # 140007010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 5d 00 00    	mov    0x5d00(%rip),%edx        # 140007008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 69 31 00 00 	mov    0x3169(%rip),%rsi        # 140004490 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 0f 15 00 00       	call   140002850 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 5d 31 00 00 	mov    0x315d(%rip),%rdx        # 1400044b0 <.refptr.__xc_z>
   140001353:	48 8b 0d 46 31 00 00 	mov    0x3146(%rip),%rcx        # 1400044a0 <.refptr.__xc_a>
   14000135a:	e8 a9 16 00 00       	call   140002a08 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 43 16 00 00       	call   1400029c8 <_cexit>
   140001385:	8b 05 85 5c 00 00    	mov    0x5c85(%rip),%eax        # 140007010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 29 31 00 00 	mov    0x3129(%rip),%rdx        # 1400044d0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 12 31 00 00 	mov    0x3112(%rip),%rcx        # 1400044c0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 4f 16 00 00       	call   140002a08 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 59 16 00 00       	call   140002a28 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 45 30 00 00 	mov    0x3045(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 25 30 00 00 	mov    0x3025(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 f7 13 00 00       	call   140002810 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <getHash>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 20          	sub    $0x20,%rsp
   140001458:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000145c:	c7 45 ec 1f 00 00 00 	movl   $0x1f,-0x14(%rbp)
   140001463:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   14000146a:	00 
   14000146b:	48 c7 45 f0 01 00 00 	movq   $0x1,-0x10(%rbp)
   140001472:	00 
   140001473:	eb 31                	jmp    1400014a6 <getHash+0x56>
   140001475:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001479:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000147d:	48 89 55 10          	mov    %rdx,0x10(%rbp)
   140001481:	0f b6 00             	movzbl (%rax),%eax
   140001484:	0f be c0             	movsbl %al,%eax
   140001487:	83 e8 60             	sub    $0x60,%eax
   14000148a:	48 98                	cltq
   14000148c:	48 0f af 45 f0       	imul   -0x10(%rbp),%rax
   140001491:	48 01 45 f8          	add    %rax,-0x8(%rbp)
   140001495:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140001498:	48 98                	cltq
   14000149a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   14000149e:	48 0f af c2          	imul   %rdx,%rax
   1400014a2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400014a6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400014aa:	0f b6 00             	movzbl (%rax),%eax
   1400014ad:	84 c0                	test   %al,%al
   1400014af:	75 c4                	jne    140001475 <getHash+0x25>
   1400014b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014b5:	48 83 c4 20          	add    $0x20,%rsp
   1400014b9:	5d                   	pop    %rbp
   1400014ba:	c3                   	ret

00000001400014bb <checkPass>:
   1400014bb:	55                   	push   %rbp
   1400014bc:	48 89 e5             	mov    %rsp,%rbp
   1400014bf:	48 83 ec 20          	sub    $0x20,%rsp
   1400014c3:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400014c7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400014cb:	48 89 c1             	mov    %rax,%rcx
   1400014ce:	e8 7d ff ff ff       	call   140001450 <getHash>
   1400014d3:	48 3d 90 9c 6f 22    	cmp    $0x226f9c90,%rax
   1400014d9:	75 07                	jne    1400014e2 <checkPass+0x27>
   1400014db:	b8 01 00 00 00       	mov    $0x1,%eax
   1400014e0:	eb 05                	jmp    1400014e7 <checkPass+0x2c>
   1400014e2:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014e7:	48 83 c4 20          	add    $0x20,%rsp
   1400014eb:	5d                   	pop    %rbp
   1400014ec:	c3                   	ret

00000001400014ed <main>:
   1400014ed:	55                   	push   %rbp
   1400014ee:	48 89 e5             	mov    %rsp,%rbp
   1400014f1:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   1400014f8:	e8 13 01 00 00       	call   140001610 <__main>
   1400014fd:	48 8d 05 fc 2a 00 00 	lea    0x2afc(%rip),%rax        # 140004000 <.rdata>
   140001504:	48 89 c1             	mov    %rax,%rcx
   140001507:	e8 84 11 00 00       	call   140002690 <printf>
   14000150c:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   140001510:	48 89 c2             	mov    %rax,%rdx
   140001513:	48 8d 05 fc 2a 00 00 	lea    0x2afc(%rip),%rax        # 140004016 <.rdata+0x16>
   14000151a:	48 89 c1             	mov    %rax,%rcx
   14000151d:	e8 1e 11 00 00       	call   140002640 <scanf>
   140001522:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   140001526:	48 89 c1             	mov    %rax,%rcx
   140001529:	e8 8d ff ff ff       	call   1400014bb <checkPass>
   14000152e:	84 c0                	test   %al,%al
   140001530:	74 11                	je     140001543 <main+0x56>
   140001532:	48 8d 05 e0 2a 00 00 	lea    0x2ae0(%rip),%rax        # 140004019 <.rdata+0x19>
   140001539:	48 89 c1             	mov    %rax,%rcx
   14000153c:	e8 67 14 00 00       	call   1400029a8 <puts>
   140001541:	eb 0f                	jmp    140001552 <main+0x65>
   140001543:	48 8d 05 de 2a 00 00 	lea    0x2ade(%rip),%rax        # 140004028 <.rdata+0x28>
   14000154a:	48 89 c1             	mov    %rax,%rcx
   14000154d:	e8 56 14 00 00       	call   1400029a8 <puts>
   140001552:	b8 00 00 00 00       	mov    $0x0,%eax
   140001557:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
   14000155e:	5d                   	pop    %rbp
   14000155f:	c3                   	ret

0000000140001560 <__do_global_dtors>:
   140001560:	48 83 ec 28          	sub    $0x28,%rsp
   140001564:	48 8b 05 95 1a 00 00 	mov    0x1a95(%rip),%rax        # 140003000 <__data_start__>
   14000156b:	48 8b 00             	mov    (%rax),%rax
   14000156e:	48 85 c0             	test   %rax,%rax
   140001571:	74 22                	je     140001595 <__do_global_dtors+0x35>
   140001573:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001578:	ff d0                	call   *%rax
   14000157a:	48 8b 05 7f 1a 00 00 	mov    0x1a7f(%rip),%rax        # 140003000 <__data_start__>
   140001581:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001585:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001589:	48 89 15 70 1a 00 00 	mov    %rdx,0x1a70(%rip)        # 140003000 <__data_start__>
   140001590:	48 85 c0             	test   %rax,%rax
   140001593:	75 e3                	jne    140001578 <__do_global_dtors+0x18>
   140001595:	48 83 c4 28          	add    $0x28,%rsp
   140001599:	c3                   	ret
   14000159a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015a0 <__do_global_ctors>:
   1400015a0:	56                   	push   %rsi
   1400015a1:	53                   	push   %rbx
   1400015a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015a6:	48 8b 15 03 2e 00 00 	mov    0x2e03(%rip),%rdx        # 1400043b0 <.refptr.__CTOR_LIST__>
   1400015ad:	48 8b 02             	mov    (%rdx),%rax
   1400015b0:	89 c1                	mov    %eax,%ecx
   1400015b2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015b5:	74 39                	je     1400015f0 <__do_global_ctors+0x50>
   1400015b7:	85 c9                	test   %ecx,%ecx
   1400015b9:	74 20                	je     1400015db <__do_global_ctors+0x3b>
   1400015bb:	89 c8                	mov    %ecx,%eax
   1400015bd:	83 e9 01             	sub    $0x1,%ecx
   1400015c0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015c4:	48 29 c8             	sub    %rcx,%rax
   1400015c7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400015d0:	ff 13                	call   *(%rbx)
   1400015d2:	48 83 eb 08          	sub    $0x8,%rbx
   1400015d6:	48 39 f3             	cmp    %rsi,%rbx
   1400015d9:	75 f5                	jne    1400015d0 <__do_global_ctors+0x30>
   1400015db:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001560 <__do_global_dtors>
   1400015e2:	48 83 c4 28          	add    $0x28,%rsp
   1400015e6:	5b                   	pop    %rbx
   1400015e7:	5e                   	pop    %rsi
   1400015e8:	e9 23 fe ff ff       	jmp    140001410 <atexit>
   1400015ed:	0f 1f 00             	nopl   (%rax)
   1400015f0:	31 c0                	xor    %eax,%eax
   1400015f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400015f8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400015fc:	89 c1                	mov    %eax,%ecx
   1400015fe:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001603:	4c 89 c0             	mov    %r8,%rax
   140001606:	75 f0                	jne    1400015f8 <__do_global_ctors+0x58>
   140001608:	eb ad                	jmp    1400015b7 <__do_global_ctors+0x17>
   14000160a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001610 <__main>:
   140001610:	8b 05 1a 5a 00 00    	mov    0x5a1a(%rip),%eax        # 140007030 <initialized>
   140001616:	85 c0                	test   %eax,%eax
   140001618:	74 06                	je     140001620 <__main+0x10>
   14000161a:	c3                   	ret
   14000161b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001620:	c7 05 06 5a 00 00 01 	movl   $0x1,0x5a06(%rip)        # 140007030 <initialized>
   140001627:	00 00 00 
   14000162a:	e9 71 ff ff ff       	jmp    1400015a0 <__do_global_ctors>
   14000162f:	90                   	nop

0000000140001630 <_setargv>:
   140001630:	31 c0                	xor    %eax,%eax
   140001632:	c3                   	ret
   140001633:	90                   	nop
   140001634:	90                   	nop
   140001635:	90                   	nop
   140001636:	90                   	nop
   140001637:	90                   	nop
   140001638:	90                   	nop
   140001639:	90                   	nop
   14000163a:	90                   	nop
   14000163b:	90                   	nop
   14000163c:	90                   	nop
   14000163d:	90                   	nop
   14000163e:	90                   	nop
   14000163f:	90                   	nop

0000000140001640 <__dyn_tls_dtor>:
   140001640:	48 83 ec 28          	sub    $0x28,%rsp
   140001644:	83 fa 03             	cmp    $0x3,%edx
   140001647:	74 17                	je     140001660 <__dyn_tls_dtor+0x20>
   140001649:	85 d2                	test   %edx,%edx
   14000164b:	74 13                	je     140001660 <__dyn_tls_dtor+0x20>
   14000164d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001652:	48 83 c4 28          	add    $0x28,%rsp
   140001656:	c3                   	ret
   140001657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000165e:	00 00 
   140001660:	e8 7b 0a 00 00       	call   1400020e0 <__mingw_TLScallback>
   140001665:	b8 01 00 00 00       	mov    $0x1,%eax
   14000166a:	48 83 c4 28          	add    $0x28,%rsp
   14000166e:	c3                   	ret
   14000166f:	90                   	nop

0000000140001670 <__dyn_tls_init>:
   140001670:	56                   	push   %rsi
   140001671:	53                   	push   %rbx
   140001672:	48 83 ec 28          	sub    $0x28,%rsp
   140001676:	48 8b 05 13 2d 00 00 	mov    0x2d13(%rip),%rax        # 140004390 <.refptr._CRT_MT>
   14000167d:	83 38 02             	cmpl   $0x2,(%rax)
   140001680:	74 06                	je     140001688 <__dyn_tls_init+0x18>
   140001682:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001688:	83 fa 02             	cmp    $0x2,%edx
   14000168b:	74 13                	je     1400016a0 <__dyn_tls_init+0x30>
   14000168d:	83 fa 01             	cmp    $0x1,%edx
   140001690:	74 4e                	je     1400016e0 <__dyn_tls_init+0x70>
   140001692:	b8 01 00 00 00       	mov    $0x1,%eax
   140001697:	48 83 c4 28          	add    $0x28,%rsp
   14000169b:	5b                   	pop    %rbx
   14000169c:	5e                   	pop    %rsi
   14000169d:	c3                   	ret
   14000169e:	66 90                	xchg   %ax,%ax
   1400016a0:	48 8d 1d b1 79 00 00 	lea    0x79b1(%rip),%rbx        # 140009058 <__xd_z>
   1400016a7:	48 8d 35 aa 79 00 00 	lea    0x79aa(%rip),%rsi        # 140009058 <__xd_z>
   1400016ae:	48 39 f3             	cmp    %rsi,%rbx
   1400016b1:	74 df                	je     140001692 <__dyn_tls_init+0x22>
   1400016b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016b8:	48 8b 03             	mov    (%rbx),%rax
   1400016bb:	48 85 c0             	test   %rax,%rax
   1400016be:	74 02                	je     1400016c2 <__dyn_tls_init+0x52>
   1400016c0:	ff d0                	call   *%rax
   1400016c2:	48 83 c3 08          	add    $0x8,%rbx
   1400016c6:	48 39 f3             	cmp    %rsi,%rbx
   1400016c9:	75 ed                	jne    1400016b8 <__dyn_tls_init+0x48>
   1400016cb:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016d0:	48 83 c4 28          	add    $0x28,%rsp
   1400016d4:	5b                   	pop    %rbx
   1400016d5:	5e                   	pop    %rsi
   1400016d6:	c3                   	ret
   1400016d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400016de:	00 00 
   1400016e0:	e8 fb 09 00 00       	call   1400020e0 <__mingw_TLScallback>
   1400016e5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016ea:	48 83 c4 28          	add    $0x28,%rsp
   1400016ee:	5b                   	pop    %rbx
   1400016ef:	5e                   	pop    %rsi
   1400016f0:	c3                   	ret
   1400016f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400016f8:	00 00 00 00 
   1400016fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001700 <__tlregdtor>:
   140001700:	31 c0                	xor    %eax,%eax
   140001702:	c3                   	ret
   140001703:	90                   	nop
   140001704:	90                   	nop
   140001705:	90                   	nop
   140001706:	90                   	nop
   140001707:	90                   	nop
   140001708:	90                   	nop
   140001709:	90                   	nop
   14000170a:	90                   	nop
   14000170b:	90                   	nop
   14000170c:	90                   	nop
   14000170d:	90                   	nop
   14000170e:	90                   	nop
   14000170f:	90                   	nop

0000000140001710 <_matherr>:
   140001710:	56                   	push   %rsi
   140001711:	53                   	push   %rbx
   140001712:	48 83 ec 78          	sub    $0x78,%rsp
   140001716:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000171b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001720:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001726:	83 39 06             	cmpl   $0x6,(%rcx)
   140001729:	0f 87 cd 00 00 00    	ja     1400017fc <_matherr+0xec>
   14000172f:	8b 01                	mov    (%rcx),%eax
   140001731:	48 8d 15 8c 2a 00 00 	lea    0x2a8c(%rip),%rdx        # 1400041c4 <.rdata+0x124>
   140001738:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000173c:	48 01 d0             	add    %rdx,%rax
   14000173f:	ff e0                	jmp    *%rax
   140001741:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001748:	48 8d 1d 70 29 00 00 	lea    0x2970(%rip),%rbx        # 1400040bf <.rdata+0x1f>
   14000174f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001755:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000175a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000175f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001763:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001768:	e8 03 12 00 00       	call   140002970 <__acrt_iob_func>
   14000176d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001774:	49 89 d8             	mov    %rbx,%r8
   140001777:	48 8d 15 1a 2a 00 00 	lea    0x2a1a(%rip),%rdx        # 140004198 <.rdata+0xf8>
   14000177e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001784:	48 89 c1             	mov    %rax,%rcx
   140001787:	49 89 f1             	mov    %rsi,%r9
   14000178a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001790:	e8 4b 0f 00 00       	call   1400026e0 <fprintf>
   140001795:	90                   	nop
   140001796:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000179b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017a0:	31 c0                	xor    %eax,%eax
   1400017a2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017a8:	48 83 c4 78          	add    $0x78,%rsp
   1400017ac:	5b                   	pop    %rbx
   1400017ad:	5e                   	pop    %rsi
   1400017ae:	c3                   	ret
   1400017af:	90                   	nop
   1400017b0:	48 8d 1d e9 28 00 00 	lea    0x28e9(%rip),%rbx        # 1400040a0 <.rdata>
   1400017b7:	eb 96                	jmp    14000174f <_matherr+0x3f>
   1400017b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017c0:	48 8d 1d 39 29 00 00 	lea    0x2939(%rip),%rbx        # 140004100 <.rdata+0x60>
   1400017c7:	eb 86                	jmp    14000174f <_matherr+0x3f>
   1400017c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017d0:	48 8d 1d 09 29 00 00 	lea    0x2909(%rip),%rbx        # 1400040e0 <.rdata+0x40>
   1400017d7:	e9 73 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   1400017dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017e0:	48 8d 1d 69 29 00 00 	lea    0x2969(%rip),%rbx        # 140004150 <.rdata+0xb0>
   1400017e7:	e9 63 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   1400017ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017f0:	48 8d 1d 31 29 00 00 	lea    0x2931(%rip),%rbx        # 140004128 <.rdata+0x88>
   1400017f7:	e9 53 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   1400017fc:	48 8d 1d 83 29 00 00 	lea    0x2983(%rip),%rbx        # 140004186 <.rdata+0xe6>
   140001803:	e9 47 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   140001808:	90                   	nop
   140001809:	90                   	nop
   14000180a:	90                   	nop
   14000180b:	90                   	nop
   14000180c:	90                   	nop
   14000180d:	90                   	nop
   14000180e:	90                   	nop
   14000180f:	90                   	nop

0000000140001810 <_fpreset>:
   140001810:	db e3                	fninit
   140001812:	c3                   	ret
   140001813:	90                   	nop
   140001814:	90                   	nop
   140001815:	90                   	nop
   140001816:	90                   	nop
   140001817:	90                   	nop
   140001818:	90                   	nop
   140001819:	90                   	nop
   14000181a:	90                   	nop
   14000181b:	90                   	nop
   14000181c:	90                   	nop
   14000181d:	90                   	nop
   14000181e:	90                   	nop
   14000181f:	90                   	nop

0000000140001820 <__report_error>:
   140001820:	56                   	push   %rsi
   140001821:	53                   	push   %rbx
   140001822:	48 83 ec 38          	sub    $0x38,%rsp
   140001826:	48 89 cb             	mov    %rcx,%rbx
   140001829:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000182e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001833:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001838:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000183d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001842:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001847:	e8 24 11 00 00       	call   140002970 <__acrt_iob_func>
   14000184c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001852:	ba 01 00 00 00       	mov    $0x1,%edx
   140001857:	48 8d 0d 82 29 00 00 	lea    0x2982(%rip),%rcx        # 1400041e0 <.rdata>
   14000185e:	49 89 c1             	mov    %rax,%r9
   140001861:	e8 3a 11 00 00       	call   1400029a0 <fwrite>
   140001866:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000186b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001870:	e8 fb 10 00 00       	call   140002970 <__acrt_iob_func>
   140001875:	48 89 da             	mov    %rbx,%rdx
   140001878:	48 89 c1             	mov    %rax,%rcx
   14000187b:	49 89 f0             	mov    %rsi,%r8
   14000187e:	e8 9d 0d 00 00       	call   140002620 <vfprintf>
   140001883:	e8 98 11 00 00       	call   140002a20 <abort>
   140001888:	90                   	nop
   140001889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001890 <mark_section_writable>:
   140001890:	57                   	push   %rdi
   140001891:	56                   	push   %rsi
   140001892:	53                   	push   %rbx
   140001893:	48 83 ec 50          	sub    $0x50,%rsp
   140001897:	48 63 35 f6 57 00 00 	movslq 0x57f6(%rip),%rsi        # 140007094 <maxSections>
   14000189e:	48 89 cb             	mov    %rcx,%rbx
   1400018a1:	85 f6                	test   %esi,%esi
   1400018a3:	0f 8e 17 01 00 00    	jle    1400019c0 <mark_section_writable+0x130>
   1400018a9:	48 8b 05 e8 57 00 00 	mov    0x57e8(%rip),%rax        # 140007098 <the_secs>
   1400018b0:	45 31 c9             	xor    %r9d,%r9d
   1400018b3:	48 83 c0 18          	add    $0x18,%rax
   1400018b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400018be:	00 00 
   1400018c0:	4c 8b 00             	mov    (%rax),%r8
   1400018c3:	4c 39 c3             	cmp    %r8,%rbx
   1400018c6:	72 13                	jb     1400018db <mark_section_writable+0x4b>
   1400018c8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400018cc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400018cf:	49 01 d0             	add    %rdx,%r8
   1400018d2:	4c 39 c3             	cmp    %r8,%rbx
   1400018d5:	0f 82 8a 00 00 00    	jb     140001965 <mark_section_writable+0xd5>
   1400018db:	41 83 c1 01          	add    $0x1,%r9d
   1400018df:	48 83 c0 28          	add    $0x28,%rax
   1400018e3:	41 39 f1             	cmp    %esi,%r9d
   1400018e6:	75 d8                	jne    1400018c0 <mark_section_writable+0x30>
   1400018e8:	48 89 d9             	mov    %rbx,%rcx
   1400018eb:	e8 10 0a 00 00       	call   140002300 <__mingw_GetSectionForAddress>
   1400018f0:	48 89 c7             	mov    %rax,%rdi
   1400018f3:	48 85 c0             	test   %rax,%rax
   1400018f6:	0f 84 e6 00 00 00    	je     1400019e2 <mark_section_writable+0x152>
   1400018fc:	48 8b 05 95 57 00 00 	mov    0x5795(%rip),%rax        # 140007098 <the_secs>
   140001903:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001907:	48 c1 e3 03          	shl    $0x3,%rbx
   14000190b:	48 01 d8             	add    %rbx,%rax
   14000190e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001912:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001918:	e8 23 0b 00 00       	call   140002440 <_GetPEImageBase>
   14000191d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001920:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001926:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000192a:	48 8b 05 67 57 00 00 	mov    0x5767(%rip),%rax        # 140007098 <the_secs>
   140001931:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001936:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000193b:	ff 15 a7 69 00 00    	call   *0x69a7(%rip)        # 1400082e8 <__imp_VirtualQuery>
   140001941:	48 85 c0             	test   %rax,%rax
   140001944:	0f 84 7d 00 00 00    	je     1400019c7 <mark_section_writable+0x137>
   14000194a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000194e:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001951:	83 e2 fb             	and    $0xfffffffb,%edx
   140001954:	74 08                	je     14000195e <mark_section_writable+0xce>
   140001956:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001959:	83 e2 bf             	and    $0xffffffbf,%edx
   14000195c:	75 12                	jne    140001970 <mark_section_writable+0xe0>
   14000195e:	83 05 2f 57 00 00 01 	addl   $0x1,0x572f(%rip)        # 140007094 <maxSections>
   140001965:	48 83 c4 50          	add    $0x50,%rsp
   140001969:	5b                   	pop    %rbx
   14000196a:	5e                   	pop    %rsi
   14000196b:	5f                   	pop    %rdi
   14000196c:	c3                   	ret
   14000196d:	0f 1f 00             	nopl   (%rax)
   140001970:	83 f8 02             	cmp    $0x2,%eax
   140001973:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001978:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000197d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140001983:	b8 04 00 00 00       	mov    $0x4,%eax
   140001988:	44 0f 44 c0          	cmove  %eax,%r8d
   14000198c:	48 03 1d 05 57 00 00 	add    0x5705(%rip),%rbx        # 140007098 <the_secs>
   140001993:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001997:	49 89 d9             	mov    %rbx,%r9
   14000199a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000199e:	ff 15 3c 69 00 00    	call   *0x693c(%rip)        # 1400082e0 <__imp_VirtualProtect>
   1400019a4:	85 c0                	test   %eax,%eax
   1400019a6:	75 b6                	jne    14000195e <mark_section_writable+0xce>
   1400019a8:	ff 15 02 69 00 00    	call   *0x6902(%rip)        # 1400082b0 <__imp_GetLastError>
   1400019ae:	48 8d 0d a3 28 00 00 	lea    0x28a3(%rip),%rcx        # 140004258 <.rdata+0x78>
   1400019b5:	89 c2                	mov    %eax,%edx
   1400019b7:	e8 64 fe ff ff       	call   140001820 <__report_error>
   1400019bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019c0:	31 f6                	xor    %esi,%esi
   1400019c2:	e9 21 ff ff ff       	jmp    1400018e8 <mark_section_writable+0x58>
   1400019c7:	48 8b 05 ca 56 00 00 	mov    0x56ca(%rip),%rax        # 140007098 <the_secs>
   1400019ce:	8b 57 08             	mov    0x8(%rdi),%edx
   1400019d1:	48 8d 0d 48 28 00 00 	lea    0x2848(%rip),%rcx        # 140004220 <.rdata+0x40>
   1400019d8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400019dd:	e8 3e fe ff ff       	call   140001820 <__report_error>
   1400019e2:	48 89 da             	mov    %rbx,%rdx
   1400019e5:	48 8d 0d 14 28 00 00 	lea    0x2814(%rip),%rcx        # 140004200 <.rdata+0x20>
   1400019ec:	e8 2f fe ff ff       	call   140001820 <__report_error>
   1400019f1:	90                   	nop
   1400019f2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400019f9:	00 00 00 00 
   1400019fd:	0f 1f 00             	nopl   (%rax)

0000000140001a00 <_pei386_runtime_relocator>:
   140001a00:	55                   	push   %rbp
   140001a01:	41 57                	push   %r15
   140001a03:	41 56                	push   %r14
   140001a05:	41 55                	push   %r13
   140001a07:	41 54                	push   %r12
   140001a09:	57                   	push   %rdi
   140001a0a:	56                   	push   %rsi
   140001a0b:	53                   	push   %rbx
   140001a0c:	48 83 ec 48          	sub    $0x48,%rsp
   140001a10:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001a15:	44 8b 25 74 56 00 00 	mov    0x5674(%rip),%r12d        # 140007090 <was_init.0>
   140001a1c:	45 85 e4             	test   %r12d,%r12d
   140001a1f:	74 17                	je     140001a38 <_pei386_runtime_relocator+0x38>
   140001a21:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a25:	5b                   	pop    %rbx
   140001a26:	5e                   	pop    %rsi
   140001a27:	5f                   	pop    %rdi
   140001a28:	41 5c                	pop    %r12
   140001a2a:	41 5d                	pop    %r13
   140001a2c:	41 5e                	pop    %r14
   140001a2e:	41 5f                	pop    %r15
   140001a30:	5d                   	pop    %rbp
   140001a31:	c3                   	ret
   140001a32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001a38:	c7 05 4e 56 00 00 01 	movl   $0x1,0x564e(%rip)        # 140007090 <was_init.0>
   140001a3f:	00 00 00 
   140001a42:	e8 39 09 00 00       	call   140002380 <__mingw_GetSectionCount>
   140001a47:	48 98                	cltq
   140001a49:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a4d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a54:	00 
   140001a55:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a59:	e8 82 0b 00 00       	call   1400025e0 <___chkstk_ms>
   140001a5e:	4c 8b 2d 6b 29 00 00 	mov    0x296b(%rip),%r13        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a65:	48 8b 1d 74 29 00 00 	mov    0x2974(%rip),%rbx        # 1400043e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a6c:	c7 05 1e 56 00 00 00 	movl   $0x0,0x561e(%rip)        # 140007094 <maxSections>
   140001a73:	00 00 00 
   140001a76:	48 29 c4             	sub    %rax,%rsp
   140001a79:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001a7e:	48 89 05 13 56 00 00 	mov    %rax,0x5613(%rip)        # 140007098 <the_secs>
   140001a85:	4c 89 e8             	mov    %r13,%rax
   140001a88:	48 29 d8             	sub    %rbx,%rax
   140001a8b:	48 83 f8 07          	cmp    $0x7,%rax
   140001a8f:	7e 90                	jle    140001a21 <_pei386_runtime_relocator+0x21>
   140001a91:	8b 13                	mov    (%rbx),%edx
   140001a93:	48 83 f8 0b          	cmp    $0xb,%rax
   140001a97:	0f 8f 03 01 00 00    	jg     140001ba0 <_pei386_runtime_relocator+0x1a0>
   140001a9d:	8b 03                	mov    (%rbx),%eax
   140001a9f:	85 c0                	test   %eax,%eax
   140001aa1:	0f 85 69 02 00 00    	jne    140001d10 <_pei386_runtime_relocator+0x310>
   140001aa7:	8b 43 04             	mov    0x4(%rbx),%eax
   140001aaa:	85 c0                	test   %eax,%eax
   140001aac:	0f 85 5e 02 00 00    	jne    140001d10 <_pei386_runtime_relocator+0x310>
   140001ab2:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ab5:	83 fa 01             	cmp    $0x1,%edx
   140001ab8:	0f 85 92 02 00 00    	jne    140001d50 <_pei386_runtime_relocator+0x350>
   140001abe:	48 83 c3 0c          	add    $0xc,%rbx
   140001ac2:	4c 39 eb             	cmp    %r13,%rbx
   140001ac5:	0f 83 56 ff ff ff    	jae    140001a21 <_pei386_runtime_relocator+0x21>
   140001acb:	4c 8b 35 ee 28 00 00 	mov    0x28ee(%rip),%r14        # 1400043c0 <.refptr.__ImageBase>
   140001ad2:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140001ad8:	eb 65                	jmp    140001b3f <_pei386_runtime_relocator+0x13f>
   140001ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001ae0:	83 f9 08             	cmp    $0x8,%ecx
   140001ae3:	0f 84 d7 00 00 00    	je     140001bc0 <_pei386_runtime_relocator+0x1c0>
   140001ae9:	83 f9 10             	cmp    $0x10,%ecx
   140001aec:	0f 85 50 02 00 00    	jne    140001d42 <_pei386_runtime_relocator+0x342>
   140001af2:	0f b7 37             	movzwl (%rdi),%esi
   140001af5:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001afb:	66 85 f6             	test   %si,%si
   140001afe:	0f 89 cc 01 00 00    	jns    140001cd0 <_pei386_runtime_relocator+0x2d0>
   140001b04:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001b0b:	48 29 c6             	sub    %rax,%rsi
   140001b0e:	4c 01 ce             	add    %r9,%rsi
   140001b11:	85 d2                	test   %edx,%edx
   140001b13:	75 12                	jne    140001b27 <_pei386_runtime_relocator+0x127>
   140001b15:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001b1c:	7c 65                	jl     140001b83 <_pei386_runtime_relocator+0x183>
   140001b1e:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001b25:	7f 5c                	jg     140001b83 <_pei386_runtime_relocator+0x183>
   140001b27:	48 89 f9             	mov    %rdi,%rcx
   140001b2a:	e8 61 fd ff ff       	call   140001890 <mark_section_writable>
   140001b2f:	66 89 37             	mov    %si,(%rdi)
   140001b32:	48 83 c3 0c          	add    $0xc,%rbx
   140001b36:	4c 39 eb             	cmp    %r13,%rbx
   140001b39:	0f 83 d1 00 00 00    	jae    140001c10 <_pei386_runtime_relocator+0x210>
   140001b3f:	8b 03                	mov    (%rbx),%eax
   140001b41:	8b 53 08             	mov    0x8(%rbx),%edx
   140001b44:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001b47:	4c 01 f0             	add    %r14,%rax
   140001b4a:	0f b6 ca             	movzbl %dl,%ecx
   140001b4d:	4c 8b 08             	mov    (%rax),%r9
   140001b50:	4c 01 f7             	add    %r14,%rdi
   140001b53:	83 f9 20             	cmp    $0x20,%ecx
   140001b56:	0f 84 0c 01 00 00    	je     140001c68 <_pei386_runtime_relocator+0x268>
   140001b5c:	76 82                	jbe    140001ae0 <_pei386_runtime_relocator+0xe0>
   140001b5e:	83 f9 40             	cmp    $0x40,%ecx
   140001b61:	0f 85 db 01 00 00    	jne    140001d42 <_pei386_runtime_relocator+0x342>
   140001b67:	48 8b 37             	mov    (%rdi),%rsi
   140001b6a:	89 d1                	mov    %edx,%ecx
   140001b6c:	48 29 c6             	sub    %rax,%rsi
   140001b6f:	4c 01 ce             	add    %r9,%rsi
   140001b72:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001b78:	0f 85 42 01 00 00    	jne    140001cc0 <_pei386_runtime_relocator+0x2c0>
   140001b7e:	48 85 f6             	test   %rsi,%rsi
   140001b81:	78 af                	js     140001b32 <_pei386_runtime_relocator+0x132>
   140001b83:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001b88:	89 ca                	mov    %ecx,%edx
   140001b8a:	49 89 f8             	mov    %rdi,%r8
   140001b8d:	48 8d 0d 54 27 00 00 	lea    0x2754(%rip),%rcx        # 1400042e8 <.rdata+0x108>
   140001b94:	e8 87 fc ff ff       	call   140001820 <__report_error>
   140001b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001ba0:	85 d2                	test   %edx,%edx
   140001ba2:	0f 85 68 01 00 00    	jne    140001d10 <_pei386_runtime_relocator+0x310>
   140001ba8:	8b 43 04             	mov    0x4(%rbx),%eax
   140001bab:	89 c2                	mov    %eax,%edx
   140001bad:	0b 53 08             	or     0x8(%rbx),%edx
   140001bb0:	0f 85 f4 fe ff ff    	jne    140001aaa <_pei386_runtime_relocator+0xaa>
   140001bb6:	48 83 c3 0c          	add    $0xc,%rbx
   140001bba:	e9 de fe ff ff       	jmp    140001a9d <_pei386_runtime_relocator+0x9d>
   140001bbf:	90                   	nop
   140001bc0:	0f b6 37             	movzbl (%rdi),%esi
   140001bc3:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001bc9:	40 84 f6             	test   %sil,%sil
   140001bcc:	0f 89 26 01 00 00    	jns    140001cf8 <_pei386_runtime_relocator+0x2f8>
   140001bd2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001bd9:	48 29 c6             	sub    %rax,%rsi
   140001bdc:	4c 01 ce             	add    %r9,%rsi
   140001bdf:	85 d2                	test   %edx,%edx
   140001be1:	75 0f                	jne    140001bf2 <_pei386_runtime_relocator+0x1f2>
   140001be3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001bea:	7f 97                	jg     140001b83 <_pei386_runtime_relocator+0x183>
   140001bec:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001bf0:	7c 91                	jl     140001b83 <_pei386_runtime_relocator+0x183>
   140001bf2:	48 89 f9             	mov    %rdi,%rcx
   140001bf5:	48 83 c3 0c          	add    $0xc,%rbx
   140001bf9:	e8 92 fc ff ff       	call   140001890 <mark_section_writable>
   140001bfe:	40 88 37             	mov    %sil,(%rdi)
   140001c01:	4c 39 eb             	cmp    %r13,%rbx
   140001c04:	0f 82 35 ff ff ff    	jb     140001b3f <_pei386_runtime_relocator+0x13f>
   140001c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001c10:	8b 15 7e 54 00 00    	mov    0x547e(%rip),%edx        # 140007094 <maxSections>
   140001c16:	85 d2                	test   %edx,%edx
   140001c18:	0f 8e 03 fe ff ff    	jle    140001a21 <_pei386_runtime_relocator+0x21>
   140001c1e:	48 8b 35 bb 66 00 00 	mov    0x66bb(%rip),%rsi        # 1400082e0 <__imp_VirtualProtect>
   140001c25:	31 db                	xor    %ebx,%ebx
   140001c27:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140001c2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c30:	48 8b 05 61 54 00 00 	mov    0x5461(%rip),%rax        # 140007098 <the_secs>
   140001c37:	48 01 d8             	add    %rbx,%rax
   140001c3a:	44 8b 00             	mov    (%rax),%r8d
   140001c3d:	45 85 c0             	test   %r8d,%r8d
   140001c40:	74 0d                	je     140001c4f <_pei386_runtime_relocator+0x24f>
   140001c42:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001c46:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001c4a:	49 89 f9             	mov    %rdi,%r9
   140001c4d:	ff d6                	call   *%rsi
   140001c4f:	41 83 c4 01          	add    $0x1,%r12d
   140001c53:	48 83 c3 28          	add    $0x28,%rbx
   140001c57:	44 3b 25 36 54 00 00 	cmp    0x5436(%rip),%r12d        # 140007094 <maxSections>
   140001c5e:	7c d0                	jl     140001c30 <_pei386_runtime_relocator+0x230>
   140001c60:	e9 bc fd ff ff       	jmp    140001a21 <_pei386_runtime_relocator+0x21>
   140001c65:	0f 1f 00             	nopl   (%rax)
   140001c68:	8b 37                	mov    (%rdi),%esi
   140001c6a:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001c70:	85 f6                	test   %esi,%esi
   140001c72:	79 74                	jns    140001ce8 <_pei386_runtime_relocator+0x2e8>
   140001c74:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001c7b:	ff ff ff 
   140001c7e:	4c 09 de             	or     %r11,%rsi
   140001c81:	48 29 c6             	sub    %rax,%rsi
   140001c84:	4c 01 ce             	add    %r9,%rsi
   140001c87:	85 d2                	test   %edx,%edx
   140001c89:	75 1c                	jne    140001ca7 <_pei386_runtime_relocator+0x2a7>
   140001c8b:	4c 39 fe             	cmp    %r15,%rsi
   140001c8e:	0f 8f ef fe ff ff    	jg     140001b83 <_pei386_runtime_relocator+0x183>
   140001c94:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001c9b:	ff ff ff 
   140001c9e:	48 39 c6             	cmp    %rax,%rsi
   140001ca1:	0f 8e dc fe ff ff    	jle    140001b83 <_pei386_runtime_relocator+0x183>
   140001ca7:	48 89 f9             	mov    %rdi,%rcx
   140001caa:	e8 e1 fb ff ff       	call   140001890 <mark_section_writable>
   140001caf:	89 37                	mov    %esi,(%rdi)
   140001cb1:	e9 7c fe ff ff       	jmp    140001b32 <_pei386_runtime_relocator+0x132>
   140001cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001cbd:	00 00 00 
   140001cc0:	48 89 f9             	mov    %rdi,%rcx
   140001cc3:	e8 c8 fb ff ff       	call   140001890 <mark_section_writable>
   140001cc8:	48 89 37             	mov    %rsi,(%rdi)
   140001ccb:	e9 62 fe ff ff       	jmp    140001b32 <_pei386_runtime_relocator+0x132>
   140001cd0:	48 29 c6             	sub    %rax,%rsi
   140001cd3:	4c 01 ce             	add    %r9,%rsi
   140001cd6:	85 d2                	test   %edx,%edx
   140001cd8:	0f 84 37 fe ff ff    	je     140001b15 <_pei386_runtime_relocator+0x115>
   140001cde:	e9 44 fe ff ff       	jmp    140001b27 <_pei386_runtime_relocator+0x127>
   140001ce3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ce8:	48 29 c6             	sub    %rax,%rsi
   140001ceb:	4c 01 ce             	add    %r9,%rsi
   140001cee:	85 d2                	test   %edx,%edx
   140001cf0:	74 99                	je     140001c8b <_pei386_runtime_relocator+0x28b>
   140001cf2:	eb b3                	jmp    140001ca7 <_pei386_runtime_relocator+0x2a7>
   140001cf4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001cf8:	48 29 c6             	sub    %rax,%rsi
   140001cfb:	4c 01 ce             	add    %r9,%rsi
   140001cfe:	85 d2                	test   %edx,%edx
   140001d00:	0f 84 dd fe ff ff    	je     140001be3 <_pei386_runtime_relocator+0x1e3>
   140001d06:	e9 e7 fe ff ff       	jmp    140001bf2 <_pei386_runtime_relocator+0x1f2>
   140001d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d10:	4c 39 eb             	cmp    %r13,%rbx
   140001d13:	0f 83 08 fd ff ff    	jae    140001a21 <_pei386_runtime_relocator+0x21>
   140001d19:	4c 8b 35 a0 26 00 00 	mov    0x26a0(%rip),%r14        # 1400043c0 <.refptr.__ImageBase>
   140001d20:	8b 73 04             	mov    0x4(%rbx),%esi
   140001d23:	8b 3b                	mov    (%rbx),%edi
   140001d25:	48 83 c3 08          	add    $0x8,%rbx
   140001d29:	4c 01 f6             	add    %r14,%rsi
   140001d2c:	03 3e                	add    (%rsi),%edi
   140001d2e:	48 89 f1             	mov    %rsi,%rcx
   140001d31:	e8 5a fb ff ff       	call   140001890 <mark_section_writable>
   140001d36:	89 3e                	mov    %edi,(%rsi)
   140001d38:	4c 39 eb             	cmp    %r13,%rbx
   140001d3b:	72 e3                	jb     140001d20 <_pei386_runtime_relocator+0x320>
   140001d3d:	e9 ce fe ff ff       	jmp    140001c10 <_pei386_runtime_relocator+0x210>
   140001d42:	89 ca                	mov    %ecx,%edx
   140001d44:	48 8d 0d 6d 25 00 00 	lea    0x256d(%rip),%rcx        # 1400042b8 <.rdata+0xd8>
   140001d4b:	e8 d0 fa ff ff       	call   140001820 <__report_error>
   140001d50:	48 8d 0d 29 25 00 00 	lea    0x2529(%rip),%rcx        # 140004280 <.rdata+0xa0>
   140001d57:	e8 c4 fa ff ff       	call   140001820 <__report_error>
   140001d5c:	90                   	nop
   140001d5d:	90                   	nop
   140001d5e:	90                   	nop
   140001d5f:	90                   	nop

0000000140001d60 <__mingw_raise_matherr>:
   140001d60:	48 83 ec 58          	sub    $0x58,%rsp
   140001d64:	48 8b 05 35 53 00 00 	mov    0x5335(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001d6b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001d6f:	48 85 c0             	test   %rax,%rax
   140001d72:	74 25                	je     140001d99 <__mingw_raise_matherr+0x39>
   140001d74:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001d7b:	00 00 
   140001d7d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001d81:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001d86:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001d8b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001d90:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001d96:	ff d0                	call   *%rax
   140001d98:	90                   	nop
   140001d99:	48 83 c4 58          	add    $0x58,%rsp
   140001d9d:	c3                   	ret
   140001d9e:	66 90                	xchg   %ax,%ax

0000000140001da0 <__mingw_setusermatherr>:
   140001da0:	48 89 0d f9 52 00 00 	mov    %rcx,0x52f9(%rip)        # 1400070a0 <stUserMathErr>
   140001da7:	e9 a4 0c 00 00       	jmp    140002a50 <__setusermatherr>
   140001dac:	90                   	nop
   140001dad:	90                   	nop
   140001dae:	90                   	nop
   140001daf:	90                   	nop

0000000140001db0 <_gnu_exception_handler>:
   140001db0:	53                   	push   %rbx
   140001db1:	48 83 ec 20          	sub    $0x20,%rsp
   140001db5:	48 8b 11             	mov    (%rcx),%rdx
   140001db8:	8b 02                	mov    (%rdx),%eax
   140001dba:	48 89 cb             	mov    %rcx,%rbx
   140001dbd:	89 c1                	mov    %eax,%ecx
   140001dbf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001dc5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001dcb:	0f 84 bf 00 00 00    	je     140001e90 <_gnu_exception_handler+0xe0>
   140001dd1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001dd6:	77 47                	ja     140001e1f <_gnu_exception_handler+0x6f>
   140001dd8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001ddd:	76 61                	jbe    140001e40 <_gnu_exception_handler+0x90>
   140001ddf:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001de4:	83 f8 09             	cmp    $0x9,%eax
   140001de7:	0f 87 93 00 00 00    	ja     140001e80 <_gnu_exception_handler+0xd0>
   140001ded:	48 8d 15 4c 25 00 00 	lea    0x254c(%rip),%rdx        # 140004340 <.rdata>
   140001df4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001df8:	48 01 d0             	add    %rdx,%rax
   140001dfb:	ff e0                	jmp    *%rax
   140001dfd:	0f 1f 00             	nopl   (%rax)
   140001e00:	31 d2                	xor    %edx,%edx
   140001e02:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e07:	e8 24 0c 00 00       	call   140002a30 <signal>
   140001e0c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e10:	0f 84 3e 01 00 00    	je     140001f54 <_gnu_exception_handler+0x1a4>
   140001e16:	48 85 c0             	test   %rax,%rax
   140001e19:	0f 85 01 01 00 00    	jne    140001f20 <_gnu_exception_handler+0x170>
   140001e1f:	48 8b 05 9a 52 00 00 	mov    0x529a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001e26:	48 85 c0             	test   %rax,%rax
   140001e29:	74 75                	je     140001ea0 <_gnu_exception_handler+0xf0>
   140001e2b:	48 89 d9             	mov    %rbx,%rcx
   140001e2e:	48 83 c4 20          	add    $0x20,%rsp
   140001e32:	5b                   	pop    %rbx
   140001e33:	48 ff e0             	rex.W jmp *%rax
   140001e36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001e3d:	00 00 00 
   140001e40:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001e45:	0f 84 a5 00 00 00    	je     140001ef0 <_gnu_exception_handler+0x140>
   140001e4b:	76 63                	jbe    140001eb0 <_gnu_exception_handler+0x100>
   140001e4d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001e52:	74 2c                	je     140001e80 <_gnu_exception_handler+0xd0>
   140001e54:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001e59:	75 c4                	jne    140001e1f <_gnu_exception_handler+0x6f>
   140001e5b:	31 d2                	xor    %edx,%edx
   140001e5d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e62:	e8 c9 0b 00 00       	call   140002a30 <signal>
   140001e67:	48 83 f8 01          	cmp    $0x1,%rax
   140001e6b:	0f 84 cf 00 00 00    	je     140001f40 <_gnu_exception_handler+0x190>
   140001e71:	48 85 c0             	test   %rax,%rax
   140001e74:	74 a9                	je     140001e1f <_gnu_exception_handler+0x6f>
   140001e76:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e7b:	ff d0                	call   *%rax
   140001e7d:	0f 1f 00             	nopl   (%rax)
   140001e80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e85:	eb 1b                	jmp    140001ea2 <_gnu_exception_handler+0xf2>
   140001e87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e8e:	00 00 
   140001e90:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001e94:	0f 85 37 ff ff ff    	jne    140001dd1 <_gnu_exception_handler+0x21>
   140001e9a:	eb e4                	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001e9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ea0:	31 c0                	xor    %eax,%eax
   140001ea2:	48 83 c4 20          	add    $0x20,%rsp
   140001ea6:	5b                   	pop    %rbx
   140001ea7:	c3                   	ret
   140001ea8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001eaf:	00 
   140001eb0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001eb5:	0f 85 64 ff ff ff    	jne    140001e1f <_gnu_exception_handler+0x6f>
   140001ebb:	eb c3                	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001ebd:	0f 1f 00             	nopl   (%rax)
   140001ec0:	31 d2                	xor    %edx,%edx
   140001ec2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ec7:	e8 64 0b 00 00       	call   140002a30 <signal>
   140001ecc:	48 83 f8 01          	cmp    $0x1,%rax
   140001ed0:	0f 85 40 ff ff ff    	jne    140001e16 <_gnu_exception_handler+0x66>
   140001ed6:	ba 01 00 00 00       	mov    $0x1,%edx
   140001edb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ee0:	e8 4b 0b 00 00       	call   140002a30 <signal>
   140001ee5:	eb 99                	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001ee7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001eee:	00 00 
   140001ef0:	31 d2                	xor    %edx,%edx
   140001ef2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ef7:	e8 34 0b 00 00       	call   140002a30 <signal>
   140001efc:	48 83 f8 01          	cmp    $0x1,%rax
   140001f00:	74 2a                	je     140001f2c <_gnu_exception_handler+0x17c>
   140001f02:	48 85 c0             	test   %rax,%rax
   140001f05:	0f 84 14 ff ff ff    	je     140001e1f <_gnu_exception_handler+0x6f>
   140001f0b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f10:	ff d0                	call   *%rax
   140001f12:	e9 69 ff ff ff       	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001f17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f1e:	00 00 
   140001f20:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f25:	ff d0                	call   *%rax
   140001f27:	e9 54 ff ff ff       	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001f2c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f31:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f36:	e8 f5 0a 00 00       	call   140002a30 <signal>
   140001f3b:	e9 40 ff ff ff       	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001f40:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f45:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f4a:	e8 e1 0a 00 00       	call   140002a30 <signal>
   140001f4f:	e9 2c ff ff ff       	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001f54:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f59:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f5e:	e8 cd 0a 00 00       	call   140002a30 <signal>
   140001f63:	e8 a8 f8 ff ff       	call   140001810 <_fpreset>
   140001f68:	e9 13 ff ff ff       	jmp    140001e80 <_gnu_exception_handler+0xd0>
   140001f6d:	90                   	nop
   140001f6e:	90                   	nop
   140001f6f:	90                   	nop

0000000140001f70 <__mingwthr_run_key_dtors.part.0>:
   140001f70:	41 54                	push   %r12
   140001f72:	55                   	push   %rbp
   140001f73:	57                   	push   %rdi
   140001f74:	56                   	push   %rsi
   140001f75:	53                   	push   %rbx
   140001f76:	48 83 ec 20          	sub    $0x20,%rsp
   140001f7a:	4c 8d 25 7f 51 00 00 	lea    0x517f(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001f81:	4c 89 e1             	mov    %r12,%rcx
   140001f84:	ff 15 1e 63 00 00    	call   *0x631e(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   140001f8a:	48 8b 1d 4f 51 00 00 	mov    0x514f(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001f91:	48 85 db             	test   %rbx,%rbx
   140001f94:	74 36                	je     140001fcc <__mingwthr_run_key_dtors.part.0+0x5c>
   140001f96:	48 8b 2d 3b 63 00 00 	mov    0x633b(%rip),%rbp        # 1400082d8 <__imp_TlsGetValue>
   140001f9d:	48 8b 3d 0c 63 00 00 	mov    0x630c(%rip),%rdi        # 1400082b0 <__imp_GetLastError>
   140001fa4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001fa8:	8b 0b                	mov    (%rbx),%ecx
   140001faa:	ff d5                	call   *%rbp
   140001fac:	48 89 c6             	mov    %rax,%rsi
   140001faf:	ff d7                	call   *%rdi
   140001fb1:	48 85 f6             	test   %rsi,%rsi
   140001fb4:	74 0d                	je     140001fc3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fb6:	85 c0                	test   %eax,%eax
   140001fb8:	75 09                	jne    140001fc3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fba:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001fbe:	48 89 f1             	mov    %rsi,%rcx
   140001fc1:	ff d0                	call   *%rax
   140001fc3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001fc7:	48 85 db             	test   %rbx,%rbx
   140001fca:	75 dc                	jne    140001fa8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001fcc:	4c 89 e1             	mov    %r12,%rcx
   140001fcf:	48 83 c4 20          	add    $0x20,%rsp
   140001fd3:	5b                   	pop    %rbx
   140001fd4:	5e                   	pop    %rsi
   140001fd5:	5f                   	pop    %rdi
   140001fd6:	5d                   	pop    %rbp
   140001fd7:	41 5c                	pop    %r12
   140001fd9:	48 ff 25 e0 62 00 00 	rex.W jmp *0x62e0(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>

0000000140001fe0 <___w64_mingwthr_add_key_dtor>:
   140001fe0:	57                   	push   %rdi
   140001fe1:	56                   	push   %rsi
   140001fe2:	53                   	push   %rbx
   140001fe3:	48 83 ec 20          	sub    $0x20,%rsp
   140001fe7:	8b 05 fb 50 00 00    	mov    0x50fb(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001fed:	89 cf                	mov    %ecx,%edi
   140001fef:	48 89 d6             	mov    %rdx,%rsi
   140001ff2:	85 c0                	test   %eax,%eax
   140001ff4:	75 0a                	jne    140002000 <___w64_mingwthr_add_key_dtor+0x20>
   140001ff6:	31 c0                	xor    %eax,%eax
   140001ff8:	48 83 c4 20          	add    $0x20,%rsp
   140001ffc:	5b                   	pop    %rbx
   140001ffd:	5e                   	pop    %rsi
   140001ffe:	5f                   	pop    %rdi
   140001fff:	c3                   	ret
   140002000:	ba 18 00 00 00       	mov    $0x18,%edx
   140002005:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000200a:	e8 59 0a 00 00       	call   140002a68 <calloc>
   14000200f:	48 89 c3             	mov    %rax,%rbx
   140002012:	48 85 c0             	test   %rax,%rax
   140002015:	74 33                	je     14000204a <___w64_mingwthr_add_key_dtor+0x6a>
   140002017:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000201b:	48 8d 35 de 50 00 00 	lea    0x50de(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140002022:	89 38                	mov    %edi,(%rax)
   140002024:	48 89 f1             	mov    %rsi,%rcx
   140002027:	ff 15 7b 62 00 00    	call   *0x627b(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   14000202d:	48 8b 05 ac 50 00 00 	mov    0x50ac(%rip),%rax        # 1400070e0 <key_dtor_list>
   140002034:	48 89 f1             	mov    %rsi,%rcx
   140002037:	48 89 1d a2 50 00 00 	mov    %rbx,0x50a2(%rip)        # 1400070e0 <key_dtor_list>
   14000203e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002042:	ff 15 78 62 00 00    	call   *0x6278(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>
   140002048:	eb ac                	jmp    140001ff6 <___w64_mingwthr_add_key_dtor+0x16>
   14000204a:	83 c8 ff             	or     $0xffffffff,%eax
   14000204d:	eb a9                	jmp    140001ff8 <___w64_mingwthr_add_key_dtor+0x18>
   14000204f:	90                   	nop

0000000140002050 <___w64_mingwthr_remove_key_dtor>:
   140002050:	56                   	push   %rsi
   140002051:	53                   	push   %rbx
   140002052:	48 83 ec 28          	sub    $0x28,%rsp
   140002056:	8b 05 8c 50 00 00    	mov    0x508c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000205c:	89 cb                	mov    %ecx,%ebx
   14000205e:	85 c0                	test   %eax,%eax
   140002060:	75 0e                	jne    140002070 <___w64_mingwthr_remove_key_dtor+0x20>
   140002062:	31 c0                	xor    %eax,%eax
   140002064:	48 83 c4 28          	add    $0x28,%rsp
   140002068:	5b                   	pop    %rbx
   140002069:	5e                   	pop    %rsi
   14000206a:	c3                   	ret
   14000206b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002070:	48 8d 35 89 50 00 00 	lea    0x5089(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140002077:	48 89 f1             	mov    %rsi,%rcx
   14000207a:	ff 15 28 62 00 00    	call   *0x6228(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   140002080:	48 8b 0d 59 50 00 00 	mov    0x5059(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140002087:	48 85 c9             	test   %rcx,%rcx
   14000208a:	74 27                	je     1400020b3 <___w64_mingwthr_remove_key_dtor+0x63>
   14000208c:	31 d2                	xor    %edx,%edx
   14000208e:	eb 0b                	jmp    14000209b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002090:	48 89 ca             	mov    %rcx,%rdx
   140002093:	48 85 c0             	test   %rax,%rax
   140002096:	74 1b                	je     1400020b3 <___w64_mingwthr_remove_key_dtor+0x63>
   140002098:	48 89 c1             	mov    %rax,%rcx
   14000209b:	8b 01                	mov    (%rcx),%eax
   14000209d:	39 d8                	cmp    %ebx,%eax
   14000209f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400020a3:	75 eb                	jne    140002090 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020a5:	48 85 d2             	test   %rdx,%rdx
   1400020a8:	74 1e                	je     1400020c8 <___w64_mingwthr_remove_key_dtor+0x78>
   1400020aa:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400020ae:	e8 bd 09 00 00       	call   140002a70 <free>
   1400020b3:	48 89 f1             	mov    %rsi,%rcx
   1400020b6:	ff 15 04 62 00 00    	call   *0x6204(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>
   1400020bc:	31 c0                	xor    %eax,%eax
   1400020be:	48 83 c4 28          	add    $0x28,%rsp
   1400020c2:	5b                   	pop    %rbx
   1400020c3:	5e                   	pop    %rsi
   1400020c4:	c3                   	ret
   1400020c5:	0f 1f 00             	nopl   (%rax)
   1400020c8:	48 89 05 11 50 00 00 	mov    %rax,0x5011(%rip)        # 1400070e0 <key_dtor_list>
   1400020cf:	eb dd                	jmp    1400020ae <___w64_mingwthr_remove_key_dtor+0x5e>
   1400020d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400020d8:	00 00 00 00 
   1400020dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400020e0 <__mingw_TLScallback>:
   1400020e0:	53                   	push   %rbx
   1400020e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400020e5:	83 fa 02             	cmp    $0x2,%edx
   1400020e8:	0f 84 b2 00 00 00    	je     1400021a0 <__mingw_TLScallback+0xc0>
   1400020ee:	77 30                	ja     140002120 <__mingw_TLScallback+0x40>
   1400020f0:	85 d2                	test   %edx,%edx
   1400020f2:	74 4c                	je     140002140 <__mingw_TLScallback+0x60>
   1400020f4:	8b 05 ee 4f 00 00    	mov    0x4fee(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020fa:	85 c0                	test   %eax,%eax
   1400020fc:	0f 84 be 00 00 00    	je     1400021c0 <__mingw_TLScallback+0xe0>
   140002102:	c7 05 dc 4f 00 00 01 	movl   $0x1,0x4fdc(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002109:	00 00 00 
   14000210c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002111:	48 83 c4 20          	add    $0x20,%rsp
   140002115:	5b                   	pop    %rbx
   140002116:	c3                   	ret
   140002117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000211e:	00 00 
   140002120:	83 fa 03             	cmp    $0x3,%edx
   140002123:	75 e7                	jne    14000210c <__mingw_TLScallback+0x2c>
   140002125:	8b 05 bd 4f 00 00    	mov    0x4fbd(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000212b:	85 c0                	test   %eax,%eax
   14000212d:	74 dd                	je     14000210c <__mingw_TLScallback+0x2c>
   14000212f:	e8 3c fe ff ff       	call   140001f70 <__mingwthr_run_key_dtors.part.0>
   140002134:	eb d6                	jmp    14000210c <__mingw_TLScallback+0x2c>
   140002136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000213d:	00 00 00 
   140002140:	8b 05 a2 4f 00 00    	mov    0x4fa2(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002146:	85 c0                	test   %eax,%eax
   140002148:	75 66                	jne    1400021b0 <__mingw_TLScallback+0xd0>
   14000214a:	8b 05 98 4f 00 00    	mov    0x4f98(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002150:	83 f8 01             	cmp    $0x1,%eax
   140002153:	75 b7                	jne    14000210c <__mingw_TLScallback+0x2c>
   140002155:	48 8b 1d 84 4f 00 00 	mov    0x4f84(%rip),%rbx        # 1400070e0 <key_dtor_list>
   14000215c:	48 85 db             	test   %rbx,%rbx
   14000215f:	74 18                	je     140002179 <__mingw_TLScallback+0x99>
   140002161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002168:	48 89 d9             	mov    %rbx,%rcx
   14000216b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000216f:	e8 fc 08 00 00       	call   140002a70 <free>
   140002174:	48 85 db             	test   %rbx,%rbx
   140002177:	75 ef                	jne    140002168 <__mingw_TLScallback+0x88>
   140002179:	48 8d 0d 80 4f 00 00 	lea    0x4f80(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002180:	48 c7 05 55 4f 00 00 	movq   $0x0,0x4f55(%rip)        # 1400070e0 <key_dtor_list>
   140002187:	00 00 00 00 
   14000218b:	c7 05 53 4f 00 00 00 	movl   $0x0,0x4f53(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002192:	00 00 00 
   140002195:	ff 15 05 61 00 00    	call   *0x6105(%rip)        # 1400082a0 <__IAT_start__>
   14000219b:	e9 6c ff ff ff       	jmp    14000210c <__mingw_TLScallback+0x2c>
   1400021a0:	e8 6b f6 ff ff       	call   140001810 <_fpreset>
   1400021a5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400021aa:	48 83 c4 20          	add    $0x20,%rsp
   1400021ae:	5b                   	pop    %rbx
   1400021af:	c3                   	ret
   1400021b0:	e8 bb fd ff ff       	call   140001f70 <__mingwthr_run_key_dtors.part.0>
   1400021b5:	eb 93                	jmp    14000214a <__mingw_TLScallback+0x6a>
   1400021b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400021be:	00 00 
   1400021c0:	48 8d 0d 39 4f 00 00 	lea    0x4f39(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400021c7:	ff 15 eb 60 00 00    	call   *0x60eb(%rip)        # 1400082b8 <__imp_InitializeCriticalSection>
   1400021cd:	e9 30 ff ff ff       	jmp    140002102 <__mingw_TLScallback+0x22>
   1400021d2:	90                   	nop
   1400021d3:	90                   	nop
   1400021d4:	90                   	nop
   1400021d5:	90                   	nop
   1400021d6:	90                   	nop
   1400021d7:	90                   	nop
   1400021d8:	90                   	nop
   1400021d9:	90                   	nop
   1400021da:	90                   	nop
   1400021db:	90                   	nop
   1400021dc:	90                   	nop
   1400021dd:	90                   	nop
   1400021de:	90                   	nop
   1400021df:	90                   	nop

00000001400021e0 <_ValidateImageBase>:
   1400021e0:	31 c0                	xor    %eax,%eax
   1400021e2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400021e7:	75 0f                	jne    1400021f8 <_ValidateImageBase+0x18>
   1400021e9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   1400021ed:	48 01 d1             	add    %rdx,%rcx
   1400021f0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400021f6:	74 08                	je     140002200 <_ValidateImageBase+0x20>
   1400021f8:	c3                   	ret
   1400021f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002200:	31 c0                	xor    %eax,%eax
   140002202:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002208:	0f 94 c0             	sete   %al
   14000220b:	c3                   	ret
   14000220c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002210 <_FindPESection>:
   140002210:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002214:	48 01 c1             	add    %rax,%rcx
   140002217:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000221b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140002220:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002225:	66 45 85 c0          	test   %r8w,%r8w
   140002229:	74 32                	je     14000225d <_FindPESection+0x4d>
   14000222b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000222f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002233:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000223f:	00 
   140002240:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002244:	4c 89 c1             	mov    %r8,%rcx
   140002247:	4c 39 c2             	cmp    %r8,%rdx
   14000224a:	72 08                	jb     140002254 <_FindPESection+0x44>
   14000224c:	03 48 08             	add    0x8(%rax),%ecx
   14000224f:	48 39 ca             	cmp    %rcx,%rdx
   140002252:	72 0b                	jb     14000225f <_FindPESection+0x4f>
   140002254:	48 83 c0 28          	add    $0x28,%rax
   140002258:	4c 39 c8             	cmp    %r9,%rax
   14000225b:	75 e3                	jne    140002240 <_FindPESection+0x30>
   14000225d:	31 c0                	xor    %eax,%eax
   14000225f:	c3                   	ret

0000000140002260 <_FindPESectionByName>:
   140002260:	57                   	push   %rdi
   140002261:	56                   	push   %rsi
   140002262:	53                   	push   %rbx
   140002263:	48 83 ec 20          	sub    $0x20,%rsp
   140002267:	48 89 ce             	mov    %rcx,%rsi
   14000226a:	e8 f1 06 00 00       	call   140002960 <strlen>
   14000226f:	48 83 f8 08          	cmp    $0x8,%rax
   140002273:	77 7b                	ja     1400022f0 <_FindPESectionByName+0x90>
   140002275:	48 8b 15 44 21 00 00 	mov    0x2144(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   14000227c:	31 db                	xor    %ebx,%ebx
   14000227e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002283:	75 59                	jne    1400022de <_FindPESectionByName+0x7e>
   140002285:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002289:	48 01 d0             	add    %rdx,%rax
   14000228c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002292:	75 4a                	jne    1400022de <_FindPESectionByName+0x7e>
   140002294:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000229a:	75 42                	jne    1400022de <_FindPESectionByName+0x7e>
   14000229c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400022a0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   1400022a5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   1400022a9:	66 85 d2             	test   %dx,%dx
   1400022ac:	74 42                	je     1400022f0 <_FindPESectionByName+0x90>
   1400022ae:	8d 42 ff             	lea    -0x1(%rdx),%eax
   1400022b1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400022b5:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   1400022ba:	eb 0d                	jmp    1400022c9 <_FindPESectionByName+0x69>
   1400022bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022c0:	48 83 c3 28          	add    $0x28,%rbx
   1400022c4:	48 39 fb             	cmp    %rdi,%rbx
   1400022c7:	74 27                	je     1400022f0 <_FindPESectionByName+0x90>
   1400022c9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400022cf:	48 89 f2             	mov    %rsi,%rdx
   1400022d2:	48 89 d9             	mov    %rbx,%rcx
   1400022d5:	e8 8e 06 00 00       	call   140002968 <strncmp>
   1400022da:	85 c0                	test   %eax,%eax
   1400022dc:	75 e2                	jne    1400022c0 <_FindPESectionByName+0x60>
   1400022de:	48 89 d8             	mov    %rbx,%rax
   1400022e1:	48 83 c4 20          	add    $0x20,%rsp
   1400022e5:	5b                   	pop    %rbx
   1400022e6:	5e                   	pop    %rsi
   1400022e7:	5f                   	pop    %rdi
   1400022e8:	c3                   	ret
   1400022e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022f0:	31 db                	xor    %ebx,%ebx
   1400022f2:	48 89 d8             	mov    %rbx,%rax
   1400022f5:	48 83 c4 20          	add    $0x20,%rsp
   1400022f9:	5b                   	pop    %rbx
   1400022fa:	5e                   	pop    %rsi
   1400022fb:	5f                   	pop    %rdi
   1400022fc:	c3                   	ret
   1400022fd:	0f 1f 00             	nopl   (%rax)

0000000140002300 <__mingw_GetSectionForAddress>:
   140002300:	48 8b 15 b9 20 00 00 	mov    0x20b9(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   140002307:	31 c0                	xor    %eax,%eax
   140002309:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000230e:	75 10                	jne    140002320 <__mingw_GetSectionForAddress+0x20>
   140002310:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002314:	49 01 d0             	add    %rdx,%r8
   140002317:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000231e:	74 08                	je     140002328 <__mingw_GetSectionForAddress+0x28>
   140002320:	c3                   	ret
   140002321:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002328:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000232f:	75 ef                	jne    140002320 <__mingw_GetSectionForAddress+0x20>
   140002331:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002336:	48 29 d1             	sub    %rdx,%rcx
   140002339:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000233e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002343:	66 45 85 c0          	test   %r8w,%r8w
   140002347:	74 34                	je     14000237d <__mingw_GetSectionForAddress+0x7d>
   140002349:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000234d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002351:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002356:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000235d:	00 00 00 
   140002360:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002364:	4c 89 c2             	mov    %r8,%rdx
   140002367:	4c 39 c1             	cmp    %r8,%rcx
   14000236a:	72 08                	jb     140002374 <__mingw_GetSectionForAddress+0x74>
   14000236c:	03 50 08             	add    0x8(%rax),%edx
   14000236f:	48 39 d1             	cmp    %rdx,%rcx
   140002372:	72 ac                	jb     140002320 <__mingw_GetSectionForAddress+0x20>
   140002374:	48 83 c0 28          	add    $0x28,%rax
   140002378:	4c 39 c8             	cmp    %r9,%rax
   14000237b:	75 e3                	jne    140002360 <__mingw_GetSectionForAddress+0x60>
   14000237d:	31 c0                	xor    %eax,%eax
   14000237f:	c3                   	ret

0000000140002380 <__mingw_GetSectionCount>:
   140002380:	48 8b 05 39 20 00 00 	mov    0x2039(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   140002387:	31 c9                	xor    %ecx,%ecx
   140002389:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000238e:	75 0f                	jne    14000239f <__mingw_GetSectionCount+0x1f>
   140002390:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002394:	48 01 d0             	add    %rdx,%rax
   140002397:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000239d:	74 09                	je     1400023a8 <__mingw_GetSectionCount+0x28>
   14000239f:	89 c8                	mov    %ecx,%eax
   1400023a1:	c3                   	ret
   1400023a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400023a8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400023ae:	75 ef                	jne    14000239f <__mingw_GetSectionCount+0x1f>
   1400023b0:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   1400023b4:	89 c8                	mov    %ecx,%eax
   1400023b6:	c3                   	ret
   1400023b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400023be:	00 00 

00000001400023c0 <_FindPESectionExec>:
   1400023c0:	4c 8b 05 f9 1f 00 00 	mov    0x1ff9(%rip),%r8        # 1400043c0 <.refptr.__ImageBase>
   1400023c7:	31 c0                	xor    %eax,%eax
   1400023c9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400023cf:	75 0f                	jne    1400023e0 <_FindPESectionExec+0x20>
   1400023d1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   1400023d5:	4c 01 c2             	add    %r8,%rdx
   1400023d8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400023de:	74 08                	je     1400023e8 <_FindPESectionExec+0x28>
   1400023e0:	c3                   	ret
   1400023e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023e8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400023ee:	75 f0                	jne    1400023e0 <_FindPESectionExec+0x20>
   1400023f0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   1400023f4:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   1400023f9:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400023fe:	66 45 85 c0          	test   %r8w,%r8w
   140002402:	74 2c                	je     140002430 <_FindPESectionExec+0x70>
   140002404:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002408:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000240c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002418:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000241c:	74 09                	je     140002427 <_FindPESectionExec+0x67>
   14000241e:	48 85 c9             	test   %rcx,%rcx
   140002421:	74 bd                	je     1400023e0 <_FindPESectionExec+0x20>
   140002423:	48 83 e9 01          	sub    $0x1,%rcx
   140002427:	48 83 c0 28          	add    $0x28,%rax
   14000242b:	48 39 c2             	cmp    %rax,%rdx
   14000242e:	75 e8                	jne    140002418 <_FindPESectionExec+0x58>
   140002430:	31 c0                	xor    %eax,%eax
   140002432:	c3                   	ret
   140002433:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000243a:	00 00 00 00 
   14000243e:	66 90                	xchg   %ax,%ax

0000000140002440 <_GetPEImageBase>:
   140002440:	48 8b 05 79 1f 00 00 	mov    0x1f79(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   140002447:	31 d2                	xor    %edx,%edx
   140002449:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000244e:	75 0f                	jne    14000245f <_GetPEImageBase+0x1f>
   140002450:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140002454:	48 01 c1             	add    %rax,%rcx
   140002457:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000245d:	74 09                	je     140002468 <_GetPEImageBase+0x28>
   14000245f:	48 89 d0             	mov    %rdx,%rax
   140002462:	c3                   	ret
   140002463:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002468:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000246e:	48 0f 44 d0          	cmove  %rax,%rdx
   140002472:	48 89 d0             	mov    %rdx,%rax
   140002475:	c3                   	ret
   140002476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000247d:	00 00 00 

0000000140002480 <_IsNonwritableInCurrentImage>:
   140002480:	48 8b 15 39 1f 00 00 	mov    0x1f39(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   140002487:	31 c0                	xor    %eax,%eax
   140002489:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000248e:	75 10                	jne    1400024a0 <_IsNonwritableInCurrentImage+0x20>
   140002490:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002494:	49 01 d0             	add    %rdx,%r8
   140002497:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000249e:	74 08                	je     1400024a8 <_IsNonwritableInCurrentImage+0x28>
   1400024a0:	c3                   	ret
   1400024a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024a8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024af:	75 ef                	jne    1400024a0 <_IsNonwritableInCurrentImage+0x20>
   1400024b1:	48 29 d1             	sub    %rdx,%rcx
   1400024b4:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   1400024b9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024be:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024c3:	66 45 85 c9          	test   %r9w,%r9w
   1400024c7:	74 d7                	je     1400024a0 <_IsNonwritableInCurrentImage+0x20>
   1400024c9:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   1400024cd:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400024d1:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400024d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024dd:	00 00 00 
   1400024e0:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400024e4:	4c 89 c0             	mov    %r8,%rax
   1400024e7:	4c 39 c1             	cmp    %r8,%rcx
   1400024ea:	72 08                	jb     1400024f4 <_IsNonwritableInCurrentImage+0x74>
   1400024ec:	03 42 08             	add    0x8(%rdx),%eax
   1400024ef:	48 39 c1             	cmp    %rax,%rcx
   1400024f2:	72 0c                	jb     140002500 <_IsNonwritableInCurrentImage+0x80>
   1400024f4:	48 83 c2 28          	add    $0x28,%rdx
   1400024f8:	4c 39 ca             	cmp    %r9,%rdx
   1400024fb:	75 e3                	jne    1400024e0 <_IsNonwritableInCurrentImage+0x60>
   1400024fd:	31 c0                	xor    %eax,%eax
   1400024ff:	c3                   	ret
   140002500:	8b 42 24             	mov    0x24(%rdx),%eax
   140002503:	f7 d0                	not    %eax
   140002505:	c1 e8 1f             	shr    $0x1f,%eax
   140002508:	c3                   	ret
   140002509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002510 <__mingw_enum_import_library_names>:
   140002510:	4c 8b 1d a9 1e 00 00 	mov    0x1ea9(%rip),%r11        # 1400043c0 <.refptr.__ImageBase>
   140002517:	45 31 c9             	xor    %r9d,%r9d
   14000251a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002520:	75 10                	jne    140002532 <__mingw_enum_import_library_names+0x22>
   140002522:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002526:	4d 01 d8             	add    %r11,%r8
   140002529:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002530:	74 0e                	je     140002540 <__mingw_enum_import_library_names+0x30>
   140002532:	4c 89 c8             	mov    %r9,%rax
   140002535:	c3                   	ret
   140002536:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000253d:	00 00 00 
   140002540:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002547:	75 e9                	jne    140002532 <__mingw_enum_import_library_names+0x22>
   140002549:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002550:	85 c0                	test   %eax,%eax
   140002552:	74 de                	je     140002532 <__mingw_enum_import_library_names+0x22>
   140002554:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002559:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000255e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002563:	66 45 85 d2          	test   %r10w,%r10w
   140002567:	74 c9                	je     140002532 <__mingw_enum_import_library_names+0x22>
   140002569:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000256d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002571:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002576:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000257d:	00 00 00 
   140002580:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002584:	4d 89 c8             	mov    %r9,%r8
   140002587:	4c 39 c8             	cmp    %r9,%rax
   14000258a:	72 09                	jb     140002595 <__mingw_enum_import_library_names+0x85>
   14000258c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002590:	4c 39 c0             	cmp    %r8,%rax
   140002593:	72 13                	jb     1400025a8 <__mingw_enum_import_library_names+0x98>
   140002595:	48 83 c2 28          	add    $0x28,%rdx
   140002599:	49 39 d2             	cmp    %rdx,%r10
   14000259c:	75 e2                	jne    140002580 <__mingw_enum_import_library_names+0x70>
   14000259e:	45 31 c9             	xor    %r9d,%r9d
   1400025a1:	4c 89 c8             	mov    %r9,%rax
   1400025a4:	c3                   	ret
   1400025a5:	0f 1f 00             	nopl   (%rax)
   1400025a8:	4c 01 d8             	add    %r11,%rax
   1400025ab:	eb 0a                	jmp    1400025b7 <__mingw_enum_import_library_names+0xa7>
   1400025ad:	0f 1f 00             	nopl   (%rax)
   1400025b0:	83 e9 01             	sub    $0x1,%ecx
   1400025b3:	48 83 c0 14          	add    $0x14,%rax
   1400025b7:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400025bb:	45 85 c0             	test   %r8d,%r8d
   1400025be:	75 07                	jne    1400025c7 <__mingw_enum_import_library_names+0xb7>
   1400025c0:	8b 50 0c             	mov    0xc(%rax),%edx
   1400025c3:	85 d2                	test   %edx,%edx
   1400025c5:	74 d7                	je     14000259e <__mingw_enum_import_library_names+0x8e>
   1400025c7:	85 c9                	test   %ecx,%ecx
   1400025c9:	7f e5                	jg     1400025b0 <__mingw_enum_import_library_names+0xa0>
   1400025cb:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400025cf:	4d 01 d9             	add    %r11,%r9
   1400025d2:	4c 89 c8             	mov    %r9,%rax
   1400025d5:	c3                   	ret
   1400025d6:	90                   	nop
   1400025d7:	90                   	nop
   1400025d8:	90                   	nop
   1400025d9:	90                   	nop
   1400025da:	90                   	nop
   1400025db:	90                   	nop
   1400025dc:	90                   	nop
   1400025dd:	90                   	nop
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <___chkstk_ms>:
   1400025e0:	51                   	push   %rcx
   1400025e1:	50                   	push   %rax
   1400025e2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400025e8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400025ed:	72 19                	jb     140002608 <___chkstk_ms+0x28>
   1400025ef:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400025f6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400025fa:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002600:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002606:	77 e7                	ja     1400025ef <___chkstk_ms+0xf>
   140002608:	48 29 c1             	sub    %rax,%rcx
   14000260b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000260f:	58                   	pop    %rax
   140002610:	59                   	pop    %rcx
   140002611:	c3                   	ret
   140002612:	90                   	nop
   140002613:	90                   	nop
   140002614:	90                   	nop
   140002615:	90                   	nop
   140002616:	90                   	nop
   140002617:	90                   	nop
   140002618:	90                   	nop
   140002619:	90                   	nop
   14000261a:	90                   	nop
   14000261b:	90                   	nop
   14000261c:	90                   	nop
   14000261d:	90                   	nop
   14000261e:	90                   	nop
   14000261f:	90                   	nop

0000000140002620 <vfprintf>:
   140002620:	48 83 ec 38          	sub    $0x38,%rsp
   140002624:	45 31 c9             	xor    %r9d,%r9d
   140002627:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000262c:	49 89 d0             	mov    %rdx,%r8
   14000262f:	48 89 ca             	mov    %rcx,%rdx
   140002632:	31 c9                	xor    %ecx,%ecx
   140002634:	e8 4f 03 00 00       	call   140002988 <__stdio_common_vfprintf>
   140002639:	48 83 c4 38          	add    $0x38,%rsp
   14000263d:	c3                   	ret
   14000263e:	90                   	nop
   14000263f:	90                   	nop

0000000140002640 <scanf>:
   140002640:	56                   	push   %rsi
   140002641:	53                   	push   %rbx
   140002642:	48 83 ec 48          	sub    $0x48,%rsp
   140002646:	48 89 cb             	mov    %rcx,%rbx
   140002649:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   14000264e:	31 c9                	xor    %ecx,%ecx
   140002650:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   140002655:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   14000265a:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   14000265f:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   140002664:	e8 07 03 00 00       	call   140002970 <__acrt_iob_func>
   140002669:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000266e:	45 31 c9             	xor    %r9d,%r9d
   140002671:	49 89 d8             	mov    %rbx,%r8
   140002674:	48 89 c2             	mov    %rax,%rdx
   140002677:	31 c9                	xor    %ecx,%ecx
   140002679:	e8 12 03 00 00       	call   140002990 <__stdio_common_vfscanf>
   14000267e:	48 83 c4 48          	add    $0x48,%rsp
   140002682:	5b                   	pop    %rbx
   140002683:	5e                   	pop    %rsi
   140002684:	c3                   	ret
   140002685:	90                   	nop
   140002686:	90                   	nop
   140002687:	90                   	nop
   140002688:	90                   	nop
   140002689:	90                   	nop
   14000268a:	90                   	nop
   14000268b:	90                   	nop
   14000268c:	90                   	nop
   14000268d:	90                   	nop
   14000268e:	90                   	nop
   14000268f:	90                   	nop

0000000140002690 <printf>:
   140002690:	56                   	push   %rsi
   140002691:	53                   	push   %rbx
   140002692:	48 83 ec 48          	sub    $0x48,%rsp
   140002696:	48 89 cb             	mov    %rcx,%rbx
   140002699:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   14000269e:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400026a3:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   1400026a8:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   1400026ad:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   1400026b2:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   1400026b7:	e8 b4 02 00 00       	call   140002970 <__acrt_iob_func>
   1400026bc:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   1400026c1:	45 31 c9             	xor    %r9d,%r9d
   1400026c4:	49 89 d8             	mov    %rbx,%r8
   1400026c7:	48 89 c2             	mov    %rax,%rdx
   1400026ca:	31 c9                	xor    %ecx,%ecx
   1400026cc:	e8 b7 02 00 00       	call   140002988 <__stdio_common_vfprintf>
   1400026d1:	48 83 c4 48          	add    $0x48,%rsp
   1400026d5:	5b                   	pop    %rbx
   1400026d6:	5e                   	pop    %rsi
   1400026d7:	c3                   	ret
   1400026d8:	90                   	nop
   1400026d9:	90                   	nop
   1400026da:	90                   	nop
   1400026db:	90                   	nop
   1400026dc:	90                   	nop
   1400026dd:	90                   	nop
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <fprintf>:
   1400026e0:	48 83 ec 48          	sub    $0x48,%rsp
   1400026e4:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   1400026e9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400026ee:	49 89 d0             	mov    %rdx,%r8
   1400026f1:	48 89 ca             	mov    %rcx,%rdx
   1400026f4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400026f9:	31 c9                	xor    %ecx,%ecx
   1400026fb:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002700:	45 31 c9             	xor    %r9d,%r9d
   140002703:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002708:	e8 7b 02 00 00       	call   140002988 <__stdio_common_vfprintf>
   14000270d:	48 83 c4 48          	add    $0x48,%rsp
   140002711:	c3                   	ret
   140002712:	90                   	nop
   140002713:	90                   	nop
   140002714:	90                   	nop
   140002715:	90                   	nop
   140002716:	90                   	nop
   140002717:	90                   	nop
   140002718:	90                   	nop
   140002719:	90                   	nop
   14000271a:	90                   	nop
   14000271b:	90                   	nop
   14000271c:	90                   	nop
   14000271d:	90                   	nop
   14000271e:	90                   	nop
   14000271f:	90                   	nop

0000000140002720 <_get_output_format>:
   140002720:	31 c0                	xor    %eax,%eax
   140002722:	c3                   	ret
   140002723:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000272a:	00 00 00 00 
   14000272e:	66 90                	xchg   %ax,%ax

0000000140002730 <__getmainargs>:
   140002730:	41 54                	push   %r12
   140002732:	55                   	push   %rbp
   140002733:	57                   	push   %rdi
   140002734:	56                   	push   %rsi
   140002735:	53                   	push   %rbx
   140002736:	48 83 ec 20          	sub    $0x20,%rsp
   14000273a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000273f:	44 89 cd             	mov    %r9d,%ebp
   140002742:	48 89 d6             	mov    %rdx,%rsi
   140002745:	4c 89 c3             	mov    %r8,%rbx
   140002748:	48 89 cf             	mov    %rcx,%rdi
   14000274b:	e8 a8 02 00 00       	call   1400029f8 <_initialize_narrow_environment>
   140002750:	83 fd 01             	cmp    $0x1,%ebp
   140002753:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002758:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000275b:	e8 70 02 00 00       	call   1400029d0 <_configure_narrow_argv>
   140002760:	e8 4b 02 00 00       	call   1400029b0 <__p___argc>
   140002765:	8b 00                	mov    (%rax),%eax
   140002767:	89 07                	mov    %eax,(%rdi)
   140002769:	e8 4a 02 00 00       	call   1400029b8 <__p___argv>
   14000276e:	48 8b 00             	mov    (%rax),%rax
   140002771:	48 89 06             	mov    %rax,(%rsi)
   140002774:	e8 07 03 00 00       	call   140002a80 <__p__environ>
   140002779:	48 8b 00             	mov    (%rax),%rax
   14000277c:	48 89 03             	mov    %rax,(%rbx)
   14000277f:	4d 85 e4             	test   %r12,%r12
   140002782:	74 09                	je     14000278d <__getmainargs+0x5d>
   140002784:	41 8b 0c 24          	mov    (%r12),%ecx
   140002788:	e8 d3 02 00 00       	call   140002a60 <_set_new_mode>
   14000278d:	31 c0                	xor    %eax,%eax
   14000278f:	48 83 c4 20          	add    $0x20,%rsp
   140002793:	5b                   	pop    %rbx
   140002794:	5e                   	pop    %rsi
   140002795:	5f                   	pop    %rdi
   140002796:	5d                   	pop    %rbp
   140002797:	41 5c                	pop    %r12
   140002799:	c3                   	ret
   14000279a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400027a0 <__wgetmainargs>:
   1400027a0:	41 54                	push   %r12
   1400027a2:	55                   	push   %rbp
   1400027a3:	57                   	push   %rdi
   1400027a4:	56                   	push   %rsi
   1400027a5:	53                   	push   %rbx
   1400027a6:	48 83 ec 20          	sub    $0x20,%rsp
   1400027aa:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1400027af:	44 89 cd             	mov    %r9d,%ebp
   1400027b2:	48 89 d6             	mov    %rdx,%rsi
   1400027b5:	4c 89 c3             	mov    %r8,%rbx
   1400027b8:	48 89 cf             	mov    %rcx,%rdi
   1400027bb:	e8 40 02 00 00       	call   140002a00 <_initialize_wide_environment>
   1400027c0:	83 fd 01             	cmp    $0x1,%ebp
   1400027c3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400027c8:	83 d9 ff             	sbb    $0xffffffff,%ecx
   1400027cb:	e8 08 02 00 00       	call   1400029d8 <_configure_wide_argv>
   1400027d0:	e8 db 01 00 00       	call   1400029b0 <__p___argc>
   1400027d5:	8b 00                	mov    (%rax),%eax
   1400027d7:	89 07                	mov    %eax,(%rdi)
   1400027d9:	e8 e2 01 00 00       	call   1400029c0 <__p___wargv>
   1400027de:	48 8b 00             	mov    (%rax),%rax
   1400027e1:	48 89 06             	mov    %rax,(%rsi)
   1400027e4:	e8 9f 02 00 00       	call   140002a88 <__p__wenviron>
   1400027e9:	48 8b 00             	mov    (%rax),%rax
   1400027ec:	48 89 03             	mov    %rax,(%rbx)
   1400027ef:	4d 85 e4             	test   %r12,%r12
   1400027f2:	74 09                	je     1400027fd <__wgetmainargs+0x5d>
   1400027f4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400027f8:	e8 63 02 00 00       	call   140002a60 <_set_new_mode>
   1400027fd:	31 c0                	xor    %eax,%eax
   1400027ff:	48 83 c4 20          	add    $0x20,%rsp
   140002803:	5b                   	pop    %rbx
   140002804:	5e                   	pop    %rsi
   140002805:	5f                   	pop    %rdi
   140002806:	5d                   	pop    %rbp
   140002807:	41 5c                	pop    %r12
   140002809:	c3                   	ret
   14000280a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002810 <_onexit>:
   140002810:	53                   	push   %rbx
   140002811:	48 83 ec 20          	sub    $0x20,%rsp
   140002815:	48 89 cb             	mov    %rcx,%rbx
   140002818:	e8 cb 01 00 00       	call   1400029e8 <_crt_atexit>
   14000281d:	85 c0                	test   %eax,%eax
   14000281f:	b8 00 00 00 00       	mov    $0x0,%eax
   140002824:	48 0f 44 c3          	cmove  %rbx,%rax
   140002828:	48 83 c4 20          	add    $0x20,%rsp
   14000282c:	5b                   	pop    %rbx
   14000282d:	c3                   	ret
   14000282e:	66 90                	xchg   %ax,%ax

0000000140002830 <at_quick_exit>:
   140002830:	48 8b 05 29 1c 00 00 	mov    0x1c29(%rip),%rax        # 140004460 <.refptr.__mingw_module_is_dll>
   140002837:	80 38 00             	cmpb   $0x0,(%rax)
   14000283a:	74 04                	je     140002840 <at_quick_exit+0x10>
   14000283c:	31 c0                	xor    %eax,%eax
   14000283e:	c3                   	ret
   14000283f:	90                   	nop
   140002840:	e9 9b 01 00 00       	jmp    1400029e0 <_crt_at_quick_exit>
   140002845:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000284c:	00 00 00 00 

0000000140002850 <_amsg_exit>:
   140002850:	53                   	push   %rbx
   140002851:	48 83 ec 20          	sub    $0x20,%rsp
   140002855:	89 cb                	mov    %ecx,%ebx
   140002857:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000285c:	e8 0f 01 00 00       	call   140002970 <__acrt_iob_func>
   140002861:	41 89 d8             	mov    %ebx,%r8d
   140002864:	48 8d 15 05 1b 00 00 	lea    0x1b05(%rip),%rdx        # 140004370 <.rdata>
   14000286b:	48 89 c1             	mov    %rax,%rcx
   14000286e:	e8 6d fe ff ff       	call   1400026e0 <fprintf>
   140002873:	b9 ff 00 00 00       	mov    $0xff,%ecx
   140002878:	e8 73 01 00 00       	call   1400029f0 <_exit>
   14000287d:	90                   	nop
   14000287e:	66 90                	xchg   %ax,%ax

0000000140002880 <__ms_fwprintf>:
   140002880:	48 83 ec 48          	sub    $0x48,%rsp
   140002884:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002889:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000288e:	49 89 d0             	mov    %rdx,%r8
   140002891:	48 89 ca             	mov    %rcx,%rdx
   140002894:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002899:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000289e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400028a3:	45 31 c9             	xor    %r9d,%r9d
   1400028a6:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400028ab:	e8 e8 00 00 00       	call   140002998 <__stdio_common_vfwprintf>
   1400028b0:	48 83 c4 48          	add    $0x48,%rsp
   1400028b4:	c3                   	ret
   1400028b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400028bc:	00 00 00 00 

00000001400028c0 <tzset>:
   1400028c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400028c4:	48 8b 05 45 1b 00 00 	mov    0x1b45(%rip),%rax        # 140004410 <.refptr.__imp__tzset>
   1400028cb:	ff 10                	call   *(%rax)
   1400028cd:	e8 7e 00 00 00       	call   140002950 <__tzname>
   1400028d2:	48 89 05 07 08 00 00 	mov    %rax,0x807(%rip)        # 1400030e0 <__imp_tzname>
   1400028d9:	e8 6a 00 00 00       	call   140002948 <__timezone>
   1400028de:	48 89 05 f3 07 00 00 	mov    %rax,0x7f3(%rip)        # 1400030d8 <__imp_timezone>
   1400028e5:	e8 56 00 00 00       	call   140002940 <__daylight>
   1400028ea:	48 89 05 df 07 00 00 	mov    %rax,0x7df(%rip)        # 1400030d0 <__imp_daylight>
   1400028f1:	48 83 c4 28          	add    $0x28,%rsp
   1400028f5:	c3                   	ret
   1400028f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400028fd:	00 00 00 

0000000140002900 <_tzset>:
   140002900:	48 83 ec 28          	sub    $0x28,%rsp
   140002904:	48 8b 05 05 1b 00 00 	mov    0x1b05(%rip),%rax        # 140004410 <.refptr.__imp__tzset>
   14000290b:	ff 10                	call   *(%rax)
   14000290d:	e8 3e 00 00 00       	call   140002950 <__tzname>
   140002912:	48 89 05 c7 07 00 00 	mov    %rax,0x7c7(%rip)        # 1400030e0 <__imp_tzname>
   140002919:	e8 2a 00 00 00       	call   140002948 <__timezone>
   14000291e:	48 89 05 b3 07 00 00 	mov    %rax,0x7b3(%rip)        # 1400030d8 <__imp_timezone>
   140002925:	e8 16 00 00 00       	call   140002940 <__daylight>
   14000292a:	48 89 05 9f 07 00 00 	mov    %rax,0x79f(%rip)        # 1400030d0 <__imp_daylight>
   140002931:	48 83 c4 28          	add    $0x28,%rsp
   140002935:	c3                   	ret
   140002936:	90                   	nop
   140002937:	90                   	nop
   140002938:	90                   	nop
   140002939:	90                   	nop
   14000293a:	90                   	nop
   14000293b:	90                   	nop
   14000293c:	90                   	nop
   14000293d:	90                   	nop
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <__daylight>:
   140002940:	ff 25 0a 5b 00 00    	jmp    *0x5b0a(%rip)        # 140008450 <__imp___daylight>
   140002946:	90                   	nop
   140002947:	90                   	nop

0000000140002948 <__timezone>:
   140002948:	ff 25 0a 5b 00 00    	jmp    *0x5b0a(%rip)        # 140008458 <__imp___timezone>
   14000294e:	90                   	nop
   14000294f:	90                   	nop

0000000140002950 <__tzname>:
   140002950:	ff 25 0a 5b 00 00    	jmp    *0x5b0a(%rip)        # 140008460 <__imp___tzname>
   140002956:	90                   	nop
   140002957:	90                   	nop

0000000140002958 <.text>:
   140002958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000295f:	00 

0000000140002960 <strlen>:
   140002960:	ff 25 d2 5a 00 00    	jmp    *0x5ad2(%rip)        # 140008438 <__imp_strlen>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <strncmp>:
   140002968:	ff 25 d2 5a 00 00    	jmp    *0x5ad2(%rip)        # 140008440 <__imp_strncmp>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <__acrt_iob_func>:
   140002970:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400083f0 <__imp___acrt_iob_func>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <__p__commode>:
   140002978:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400083f8 <__imp___p__commode>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <__p__fmode>:
   140002980:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008400 <__imp___p__fmode>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <__stdio_common_vfprintf>:
   140002988:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008408 <__imp___stdio_common_vfprintf>
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <__stdio_common_vfscanf>:
   140002990:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008410 <__imp___stdio_common_vfscanf>
   140002996:	90                   	nop
   140002997:	90                   	nop

0000000140002998 <__stdio_common_vfwprintf>:
   140002998:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008418 <__imp___stdio_common_vfwprintf>
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <fwrite>:
   1400029a0:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008420 <__imp_fwrite>
   1400029a6:	90                   	nop
   1400029a7:	90                   	nop

00000001400029a8 <puts>:
   1400029a8:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008428 <__imp_puts>
   1400029ae:	90                   	nop
   1400029af:	90                   	nop

00000001400029b0 <__p___argc>:
   1400029b0:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008360 <__imp___p___argc>
   1400029b6:	90                   	nop
   1400029b7:	90                   	nop

00000001400029b8 <__p___argv>:
   1400029b8:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008368 <__imp___p___argv>
   1400029be:	90                   	nop
   1400029bf:	90                   	nop

00000001400029c0 <__p___wargv>:
   1400029c0:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008370 <__imp___p___wargv>
   1400029c6:	90                   	nop
   1400029c7:	90                   	nop

00000001400029c8 <_cexit>:
   1400029c8:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008378 <__imp__cexit>
   1400029ce:	90                   	nop
   1400029cf:	90                   	nop

00000001400029d0 <_configure_narrow_argv>:
   1400029d0:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008380 <__imp__configure_narrow_argv>
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop

00000001400029d8 <_configure_wide_argv>:
   1400029d8:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008388 <__imp__configure_wide_argv>
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <_crt_at_quick_exit>:
   1400029e0:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008390 <__imp__crt_at_quick_exit>
   1400029e6:	90                   	nop
   1400029e7:	90                   	nop

00000001400029e8 <_crt_atexit>:
   1400029e8:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008398 <__imp__crt_atexit>
   1400029ee:	90                   	nop
   1400029ef:	90                   	nop

00000001400029f0 <_exit>:
   1400029f0:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083a0 <__imp__exit>
   1400029f6:	90                   	nop
   1400029f7:	90                   	nop

00000001400029f8 <_initialize_narrow_environment>:
   1400029f8:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083a8 <__imp__initialize_narrow_environment>
   1400029fe:	90                   	nop
   1400029ff:	90                   	nop

0000000140002a00 <_initialize_wide_environment>:
   140002a00:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083b0 <__imp__initialize_wide_environment>
   140002a06:	90                   	nop
   140002a07:	90                   	nop

0000000140002a08 <_initterm>:
   140002a08:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083b8 <__imp__initterm>
   140002a0e:	90                   	nop
   140002a0f:	90                   	nop

0000000140002a10 <__set_app_type>:
   140002a10:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083c0 <__imp___set_app_type>
   140002a16:	90                   	nop
   140002a17:	90                   	nop

0000000140002a18 <_set_invalid_parameter_handler>:
   140002a18:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083c8 <__imp__set_invalid_parameter_handler>
   140002a1e:	90                   	nop
   140002a1f:	90                   	nop

0000000140002a20 <abort>:
   140002a20:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083d0 <__imp_abort>
   140002a26:	90                   	nop
   140002a27:	90                   	nop

0000000140002a28 <exit>:
   140002a28:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083d8 <__imp_exit>
   140002a2e:	90                   	nop
   140002a2f:	90                   	nop

0000000140002a30 <signal>:
   140002a30:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 1400083e0 <__imp_signal>
   140002a36:	90                   	nop
   140002a37:	90                   	nop
   140002a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a3f:	00 

0000000140002a40 <__C_specific_handler>:
   140002a40:	ff 25 02 59 00 00    	jmp    *0x5902(%rip)        # 140008348 <__imp___C_specific_handler>
   140002a46:	90                   	nop
   140002a47:	90                   	nop

0000000140002a48 <memcpy>:
   140002a48:	ff 25 02 59 00 00    	jmp    *0x5902(%rip)        # 140008350 <__imp_memcpy>
   140002a4e:	90                   	nop
   140002a4f:	90                   	nop

0000000140002a50 <__setusermatherr>:
   140002a50:	ff 25 e2 58 00 00    	jmp    *0x58e2(%rip)        # 140008338 <__imp___setusermatherr>
   140002a56:	90                   	nop
   140002a57:	90                   	nop
   140002a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a5f:	00 

0000000140002a60 <_set_new_mode>:
   140002a60:	ff 25 aa 58 00 00    	jmp    *0x58aa(%rip)        # 140008310 <__imp__set_new_mode>
   140002a66:	90                   	nop
   140002a67:	90                   	nop

0000000140002a68 <calloc>:
   140002a68:	ff 25 aa 58 00 00    	jmp    *0x58aa(%rip)        # 140008318 <__imp_calloc>
   140002a6e:	90                   	nop
   140002a6f:	90                   	nop

0000000140002a70 <free>:
   140002a70:	ff 25 aa 58 00 00    	jmp    *0x58aa(%rip)        # 140008320 <__imp_free>
   140002a76:	90                   	nop
   140002a77:	90                   	nop

0000000140002a78 <malloc>:
   140002a78:	ff 25 aa 58 00 00    	jmp    *0x58aa(%rip)        # 140008328 <__imp_malloc>
   140002a7e:	90                   	nop
   140002a7f:	90                   	nop

0000000140002a80 <__p__environ>:
   140002a80:	ff 25 72 58 00 00    	jmp    *0x5872(%rip)        # 1400082f8 <__imp___p__environ>
   140002a86:	90                   	nop
   140002a87:	90                   	nop

0000000140002a88 <__p__wenviron>:
   140002a88:	ff 25 72 58 00 00    	jmp    *0x5872(%rip)        # 140008300 <__imp___p__wenviron>
   140002a8e:	90                   	nop
   140002a8f:	90                   	nop

0000000140002a90 <VirtualQuery>:
   140002a90:	ff 25 52 58 00 00    	jmp    *0x5852(%rip)        # 1400082e8 <__imp_VirtualQuery>
   140002a96:	90                   	nop
   140002a97:	90                   	nop

0000000140002a98 <VirtualProtect>:
   140002a98:	ff 25 42 58 00 00    	jmp    *0x5842(%rip)        # 1400082e0 <__imp_VirtualProtect>
   140002a9e:	90                   	nop
   140002a9f:	90                   	nop

0000000140002aa0 <TlsGetValue>:
   140002aa0:	ff 25 32 58 00 00    	jmp    *0x5832(%rip)        # 1400082d8 <__imp_TlsGetValue>
   140002aa6:	90                   	nop
   140002aa7:	90                   	nop

0000000140002aa8 <Sleep>:
   140002aa8:	ff 25 22 58 00 00    	jmp    *0x5822(%rip)        # 1400082d0 <__imp_Sleep>
   140002aae:	90                   	nop
   140002aaf:	90                   	nop

0000000140002ab0 <SetUnhandledExceptionFilter>:
   140002ab0:	ff 25 12 58 00 00    	jmp    *0x5812(%rip)        # 1400082c8 <__imp_SetUnhandledExceptionFilter>
   140002ab6:	90                   	nop
   140002ab7:	90                   	nop

0000000140002ab8 <LeaveCriticalSection>:
   140002ab8:	ff 25 02 58 00 00    	jmp    *0x5802(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>
   140002abe:	90                   	nop
   140002abf:	90                   	nop

0000000140002ac0 <InitializeCriticalSection>:
   140002ac0:	ff 25 f2 57 00 00    	jmp    *0x57f2(%rip)        # 1400082b8 <__imp_InitializeCriticalSection>
   140002ac6:	90                   	nop
   140002ac7:	90                   	nop

0000000140002ac8 <GetLastError>:
   140002ac8:	ff 25 e2 57 00 00    	jmp    *0x57e2(%rip)        # 1400082b0 <__imp_GetLastError>
   140002ace:	90                   	nop
   140002acf:	90                   	nop

0000000140002ad0 <EnterCriticalSection>:
   140002ad0:	ff 25 d2 57 00 00    	jmp    *0x57d2(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   140002ad6:	90                   	nop
   140002ad7:	90                   	nop

0000000140002ad8 <DeleteCriticalSection>:
   140002ad8:	ff 25 c2 57 00 00    	jmp    *0x57c2(%rip)        # 1400082a0 <__IAT_start__>
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <register_frame_ctor>:
   140002ae0:	e9 4b e9 ff ff       	jmp    140001430 <__gcc_register_frame>
   140002ae5:	90                   	nop
   140002ae6:	90                   	nop
   140002ae7:	90                   	nop
   140002ae8:	90                   	nop
   140002ae9:	90                   	nop
   140002aea:	90                   	nop
   140002aeb:	90                   	nop
   140002aec:	90                   	nop
   140002aed:	90                   	nop
   140002aee:	90                   	nop
   140002aef:	90                   	nop

0000000140002af0 <__CTOR_LIST__>:
   140002af0:	ff                   	(bad)
   140002af1:	ff                   	(bad)
   140002af2:	ff                   	(bad)
   140002af3:	ff                   	(bad)
   140002af4:	ff                   	(bad)
   140002af5:	ff                   	(bad)
   140002af6:	ff                   	(bad)
   140002af7:	ff                   	.byte 0xff

0000000140002af8 <.ctors.65535>:
   140002af8:	e0 2a                	loopne 140002b24 <__DTOR_LIST__+0x1c>
   140002afa:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002b08 <__DTOR_LIST__>:
   140002b08:	ff                   	(bad)
   140002b09:	ff                   	(bad)
   140002b0a:	ff                   	(bad)
   140002b0b:	ff                   	(bad)
   140002b0c:	ff                   	(bad)
   140002b0d:	ff                   	(bad)
   140002b0e:	ff                   	(bad)
   140002b0f:	ff 00                	incl   (%rax)
   140002b11:	00 00                	add    %al,(%rax)
   140002b13:	00 00                	add    %al,(%rax)
   140002b15:	00 00                	add    %al,(%rax)
	...
