
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
   140001072:	e8 b9 19 00 00       	call   140002a30 <__set_app_type>
   140001077:	e8 24 19 00 00       	call   1400029a0 <__p__fmode>
   14000107c:	48 8b 15 7d 34 00 00 	mov    0x347d(%rip),%rdx        # 140004500 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 0c 19 00 00       	call   140002998 <__p__commode>
   14000108c:	48 8b 15 4d 34 00 00 	mov    0x344d(%rip),%rdx        # 1400044e0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 b4 05 00 00       	call   140001650 <_setargv>
   14000109c:	48 8b 05 fd 32 00 00 	mov    0x32fd(%rip),%rax        # 1400043a0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 76 19 00 00       	call   140002a30 <__set_app_type>
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
   1400010ff:	e8 bc 0c 00 00       	call   140001dc0 <__mingw_setusermatherr>
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
   14000116e:	e8 dd 15 00 00       	call   140002750 <__getmainargs>
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
   140001223:	e8 f8 07 00 00       	call   140001a20 <_pei386_runtime_relocator>
   140001228:	48 8b 0d e1 32 00 00 	mov    0x32e1(%rip),%rcx        # 140004510 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 93 70 00 00    	call   *0x7093(%rip)        # 1400082c8 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 34 32 00 00 	mov    0x3234(%rip),%rdx        # 140004470 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 ed 17 00 00       	call   140002a38 <_set_invalid_parameter_handler>
   14000124b:	e8 e0 05 00 00       	call   140001830 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 30 18 00 00       	call   140002a98 <malloc>
   140001268:	4c 8b 25 b1 5d 00 00 	mov    0x5db1(%rip),%r12        # 140007020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 f7 16 00 00       	call   140002980 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 03 18 00 00       	call   140002a98 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 bb 17 00 00       	call   140002a68 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 5d 00 00 	mov    %rbp,0x5d5d(%rip)        # 140007020 <argv>
   1400012c3:	e8 68 03 00 00       	call   140001630 <__main>
   1400012c8:	48 8b 05 31 31 00 00 	mov    0x3131(%rip),%rax        # 140004400 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 5d 00 00 	mov    0x5d42(%rip),%r8        # 140007018 <envp>
   1400012d6:	8b 0d 4c 5d 00 00    	mov    0x5d4c(%rip),%ecx        # 140007028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 5d 00 00 	mov    0x5d37(%rip),%rdx        # 140007020 <argv>
   1400012e9:	e8 15 02 00 00       	call   140001503 <main>
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
   14000133c:	e8 2f 15 00 00       	call   140002870 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 5d 31 00 00 	mov    0x315d(%rip),%rdx        # 1400044b0 <.refptr.__xc_z>
   140001353:	48 8b 0d 46 31 00 00 	mov    0x3146(%rip),%rcx        # 1400044a0 <.refptr.__xc_a>
   14000135a:	e8 c9 16 00 00       	call   140002a28 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 63 16 00 00       	call   1400029e8 <_cexit>
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
   1400013b4:	e8 6f 16 00 00       	call   140002a28 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 79 16 00 00       	call   140002a48 <exit>
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
   140001414:	e8 17 14 00 00       	call   140002830 <_onexit>
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
   140001454:	48 83 ec 40          	sub    $0x40,%rsp
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
   1400014b5:	48 89 c2             	mov    %rax,%rdx
   1400014b8:	48 8d 05 41 2b 00 00 	lea    0x2b41(%rip),%rax        # 140004000 <.rdata>
   1400014bf:	48 89 c1             	mov    %rax,%rcx
   1400014c2:	e8 e9 11 00 00       	call   1400026b0 <printf>
   1400014c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014cb:	48 83 c4 40          	add    $0x40,%rsp
   1400014cf:	5d                   	pop    %rbp
   1400014d0:	c3                   	ret

00000001400014d1 <checkPass>:
   1400014d1:	55                   	push   %rbp
   1400014d2:	48 89 e5             	mov    %rsp,%rbp
   1400014d5:	48 83 ec 20          	sub    $0x20,%rsp
   1400014d9:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400014dd:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400014e1:	48 89 c1             	mov    %rax,%rcx
   1400014e4:	e8 67 ff ff ff       	call   140001450 <getHash>
   1400014e9:	48 3d 90 9c 6f 22    	cmp    $0x226f9c90,%rax
   1400014ef:	75 07                	jne    1400014f8 <checkPass+0x27>
   1400014f1:	b8 01 00 00 00       	mov    $0x1,%eax
   1400014f6:	eb 05                	jmp    1400014fd <checkPass+0x2c>
   1400014f8:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014fd:	48 83 c4 20          	add    $0x20,%rsp
   140001501:	5d                   	pop    %rbp
   140001502:	c3                   	ret

0000000140001503 <main>:
   140001503:	55                   	push   %rbp
   140001504:	48 89 e5             	mov    %rsp,%rbp
   140001507:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   14000150e:	e8 1d 01 00 00       	call   140001630 <__main>
   140001513:	48 8d 05 ec 2a 00 00 	lea    0x2aec(%rip),%rax        # 140004006 <.rdata+0x6>
   14000151a:	48 89 c1             	mov    %rax,%rcx
   14000151d:	e8 8e 11 00 00       	call   1400026b0 <printf>
   140001522:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   140001526:	48 89 c2             	mov    %rax,%rdx
   140001529:	48 8d 05 ec 2a 00 00 	lea    0x2aec(%rip),%rax        # 14000401c <.rdata+0x1c>
   140001530:	48 89 c1             	mov    %rax,%rcx
   140001533:	e8 28 11 00 00       	call   140002660 <scanf>
   140001538:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   14000153c:	48 89 c1             	mov    %rax,%rcx
   14000153f:	e8 8d ff ff ff       	call   1400014d1 <checkPass>
   140001544:	84 c0                	test   %al,%al
   140001546:	75 11                	jne    140001559 <main+0x56>
   140001548:	48 8d 05 d0 2a 00 00 	lea    0x2ad0(%rip),%rax        # 14000401f <.rdata+0x1f>
   14000154f:	48 89 c1             	mov    %rax,%rcx
   140001552:	e8 71 14 00 00       	call   1400029c8 <puts>
   140001557:	eb 0f                	jmp    140001568 <main+0x65>
   140001559:	48 8d 05 ce 2a 00 00 	lea    0x2ace(%rip),%rax        # 14000402e <.rdata+0x2e>
   140001560:	48 89 c1             	mov    %rax,%rcx
   140001563:	e8 60 14 00 00       	call   1400029c8 <puts>
   140001568:	b8 00 00 00 00       	mov    $0x0,%eax
   14000156d:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
   140001574:	5d                   	pop    %rbp
   140001575:	c3                   	ret
   140001576:	90                   	nop
   140001577:	90                   	nop
   140001578:	90                   	nop
   140001579:	90                   	nop
   14000157a:	90                   	nop
   14000157b:	90                   	nop
   14000157c:	90                   	nop
   14000157d:	90                   	nop
   14000157e:	90                   	nop
   14000157f:	90                   	nop

0000000140001580 <__do_global_dtors>:
   140001580:	48 83 ec 28          	sub    $0x28,%rsp
   140001584:	48 8b 05 75 1a 00 00 	mov    0x1a75(%rip),%rax        # 140003000 <__data_start__>
   14000158b:	48 8b 00             	mov    (%rax),%rax
   14000158e:	48 85 c0             	test   %rax,%rax
   140001591:	74 22                	je     1400015b5 <__do_global_dtors+0x35>
   140001593:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001598:	ff d0                	call   *%rax
   14000159a:	48 8b 05 5f 1a 00 00 	mov    0x1a5f(%rip),%rax        # 140003000 <__data_start__>
   1400015a1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400015a5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400015a9:	48 89 15 50 1a 00 00 	mov    %rdx,0x1a50(%rip)        # 140003000 <__data_start__>
   1400015b0:	48 85 c0             	test   %rax,%rax
   1400015b3:	75 e3                	jne    140001598 <__do_global_dtors+0x18>
   1400015b5:	48 83 c4 28          	add    $0x28,%rsp
   1400015b9:	c3                   	ret
   1400015ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015c0 <__do_global_ctors>:
   1400015c0:	56                   	push   %rsi
   1400015c1:	53                   	push   %rbx
   1400015c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015c6:	48 8b 15 e3 2d 00 00 	mov    0x2de3(%rip),%rdx        # 1400043b0 <.refptr.__CTOR_LIST__>
   1400015cd:	48 8b 02             	mov    (%rdx),%rax
   1400015d0:	89 c1                	mov    %eax,%ecx
   1400015d2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015d5:	74 39                	je     140001610 <__do_global_ctors+0x50>
   1400015d7:	85 c9                	test   %ecx,%ecx
   1400015d9:	74 20                	je     1400015fb <__do_global_ctors+0x3b>
   1400015db:	89 c8                	mov    %ecx,%eax
   1400015dd:	83 e9 01             	sub    $0x1,%ecx
   1400015e0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015e4:	48 29 c8             	sub    %rcx,%rax
   1400015e7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400015f0:	ff 13                	call   *(%rbx)
   1400015f2:	48 83 eb 08          	sub    $0x8,%rbx
   1400015f6:	48 39 f3             	cmp    %rsi,%rbx
   1400015f9:	75 f5                	jne    1400015f0 <__do_global_ctors+0x30>
   1400015fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001580 <__do_global_dtors>
   140001602:	48 83 c4 28          	add    $0x28,%rsp
   140001606:	5b                   	pop    %rbx
   140001607:	5e                   	pop    %rsi
   140001608:	e9 03 fe ff ff       	jmp    140001410 <atexit>
   14000160d:	0f 1f 00             	nopl   (%rax)
   140001610:	31 c0                	xor    %eax,%eax
   140001612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001618:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000161c:	89 c1                	mov    %eax,%ecx
   14000161e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001623:	4c 89 c0             	mov    %r8,%rax
   140001626:	75 f0                	jne    140001618 <__do_global_ctors+0x58>
   140001628:	eb ad                	jmp    1400015d7 <__do_global_ctors+0x17>
   14000162a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001630 <__main>:
   140001630:	8b 05 fa 59 00 00    	mov    0x59fa(%rip),%eax        # 140007030 <initialized>
   140001636:	85 c0                	test   %eax,%eax
   140001638:	74 06                	je     140001640 <__main+0x10>
   14000163a:	c3                   	ret
   14000163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001640:	c7 05 e6 59 00 00 01 	movl   $0x1,0x59e6(%rip)        # 140007030 <initialized>
   140001647:	00 00 00 
   14000164a:	e9 71 ff ff ff       	jmp    1400015c0 <__do_global_ctors>
   14000164f:	90                   	nop

0000000140001650 <_setargv>:
   140001650:	31 c0                	xor    %eax,%eax
   140001652:	c3                   	ret
   140001653:	90                   	nop
   140001654:	90                   	nop
   140001655:	90                   	nop
   140001656:	90                   	nop
   140001657:	90                   	nop
   140001658:	90                   	nop
   140001659:	90                   	nop
   14000165a:	90                   	nop
   14000165b:	90                   	nop
   14000165c:	90                   	nop
   14000165d:	90                   	nop
   14000165e:	90                   	nop
   14000165f:	90                   	nop

0000000140001660 <__dyn_tls_dtor>:
   140001660:	48 83 ec 28          	sub    $0x28,%rsp
   140001664:	83 fa 03             	cmp    $0x3,%edx
   140001667:	74 17                	je     140001680 <__dyn_tls_dtor+0x20>
   140001669:	85 d2                	test   %edx,%edx
   14000166b:	74 13                	je     140001680 <__dyn_tls_dtor+0x20>
   14000166d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001672:	48 83 c4 28          	add    $0x28,%rsp
   140001676:	c3                   	ret
   140001677:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000167e:	00 00 
   140001680:	e8 7b 0a 00 00       	call   140002100 <__mingw_TLScallback>
   140001685:	b8 01 00 00 00       	mov    $0x1,%eax
   14000168a:	48 83 c4 28          	add    $0x28,%rsp
   14000168e:	c3                   	ret
   14000168f:	90                   	nop

0000000140001690 <__dyn_tls_init>:
   140001690:	56                   	push   %rsi
   140001691:	53                   	push   %rbx
   140001692:	48 83 ec 28          	sub    $0x28,%rsp
   140001696:	48 8b 05 f3 2c 00 00 	mov    0x2cf3(%rip),%rax        # 140004390 <.refptr._CRT_MT>
   14000169d:	83 38 02             	cmpl   $0x2,(%rax)
   1400016a0:	74 06                	je     1400016a8 <__dyn_tls_init+0x18>
   1400016a2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400016a8:	83 fa 02             	cmp    $0x2,%edx
   1400016ab:	74 13                	je     1400016c0 <__dyn_tls_init+0x30>
   1400016ad:	83 fa 01             	cmp    $0x1,%edx
   1400016b0:	74 4e                	je     140001700 <__dyn_tls_init+0x70>
   1400016b2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016b7:	48 83 c4 28          	add    $0x28,%rsp
   1400016bb:	5b                   	pop    %rbx
   1400016bc:	5e                   	pop    %rsi
   1400016bd:	c3                   	ret
   1400016be:	66 90                	xchg   %ax,%ax
   1400016c0:	48 8d 1d 91 79 00 00 	lea    0x7991(%rip),%rbx        # 140009058 <__xd_z>
   1400016c7:	48 8d 35 8a 79 00 00 	lea    0x798a(%rip),%rsi        # 140009058 <__xd_z>
   1400016ce:	48 39 f3             	cmp    %rsi,%rbx
   1400016d1:	74 df                	je     1400016b2 <__dyn_tls_init+0x22>
   1400016d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016d8:	48 8b 03             	mov    (%rbx),%rax
   1400016db:	48 85 c0             	test   %rax,%rax
   1400016de:	74 02                	je     1400016e2 <__dyn_tls_init+0x52>
   1400016e0:	ff d0                	call   *%rax
   1400016e2:	48 83 c3 08          	add    $0x8,%rbx
   1400016e6:	48 39 f3             	cmp    %rsi,%rbx
   1400016e9:	75 ed                	jne    1400016d8 <__dyn_tls_init+0x48>
   1400016eb:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016f0:	48 83 c4 28          	add    $0x28,%rsp
   1400016f4:	5b                   	pop    %rbx
   1400016f5:	5e                   	pop    %rsi
   1400016f6:	c3                   	ret
   1400016f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400016fe:	00 00 
   140001700:	e8 fb 09 00 00       	call   140002100 <__mingw_TLScallback>
   140001705:	b8 01 00 00 00       	mov    $0x1,%eax
   14000170a:	48 83 c4 28          	add    $0x28,%rsp
   14000170e:	5b                   	pop    %rbx
   14000170f:	5e                   	pop    %rsi
   140001710:	c3                   	ret
   140001711:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001718:	00 00 00 00 
   14000171c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001720 <__tlregdtor>:
   140001720:	31 c0                	xor    %eax,%eax
   140001722:	c3                   	ret
   140001723:	90                   	nop
   140001724:	90                   	nop
   140001725:	90                   	nop
   140001726:	90                   	nop
   140001727:	90                   	nop
   140001728:	90                   	nop
   140001729:	90                   	nop
   14000172a:	90                   	nop
   14000172b:	90                   	nop
   14000172c:	90                   	nop
   14000172d:	90                   	nop
   14000172e:	90                   	nop
   14000172f:	90                   	nop

0000000140001730 <_matherr>:
   140001730:	56                   	push   %rsi
   140001731:	53                   	push   %rbx
   140001732:	48 83 ec 78          	sub    $0x78,%rsp
   140001736:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000173b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001740:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001746:	83 39 06             	cmpl   $0x6,(%rcx)
   140001749:	0f 87 cd 00 00 00    	ja     14000181c <_matherr+0xec>
   14000174f:	8b 01                	mov    (%rcx),%eax
   140001751:	48 8d 15 6c 2a 00 00 	lea    0x2a6c(%rip),%rdx        # 1400041c4 <.rdata+0x124>
   140001758:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000175c:	48 01 d0             	add    %rdx,%rax
   14000175f:	ff e0                	jmp    *%rax
   140001761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001768:	48 8d 1d 50 29 00 00 	lea    0x2950(%rip),%rbx        # 1400040bf <.rdata+0x1f>
   14000176f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001775:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000177a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000177f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001783:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001788:	e8 03 12 00 00       	call   140002990 <__acrt_iob_func>
   14000178d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001794:	49 89 d8             	mov    %rbx,%r8
   140001797:	48 8d 15 fa 29 00 00 	lea    0x29fa(%rip),%rdx        # 140004198 <.rdata+0xf8>
   14000179e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400017a4:	48 89 c1             	mov    %rax,%rcx
   1400017a7:	49 89 f1             	mov    %rsi,%r9
   1400017aa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017b0:	e8 4b 0f 00 00       	call   140002700 <fprintf>
   1400017b5:	90                   	nop
   1400017b6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400017bb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017c0:	31 c0                	xor    %eax,%eax
   1400017c2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017c8:	48 83 c4 78          	add    $0x78,%rsp
   1400017cc:	5b                   	pop    %rbx
   1400017cd:	5e                   	pop    %rsi
   1400017ce:	c3                   	ret
   1400017cf:	90                   	nop
   1400017d0:	48 8d 1d c9 28 00 00 	lea    0x28c9(%rip),%rbx        # 1400040a0 <.rdata>
   1400017d7:	eb 96                	jmp    14000176f <_matherr+0x3f>
   1400017d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017e0:	48 8d 1d 19 29 00 00 	lea    0x2919(%rip),%rbx        # 140004100 <.rdata+0x60>
   1400017e7:	eb 86                	jmp    14000176f <_matherr+0x3f>
   1400017e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017f0:	48 8d 1d e9 28 00 00 	lea    0x28e9(%rip),%rbx        # 1400040e0 <.rdata+0x40>
   1400017f7:	e9 73 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   1400017fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001800:	48 8d 1d 49 29 00 00 	lea    0x2949(%rip),%rbx        # 140004150 <.rdata+0xb0>
   140001807:	e9 63 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   14000180c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001810:	48 8d 1d 11 29 00 00 	lea    0x2911(%rip),%rbx        # 140004128 <.rdata+0x88>
   140001817:	e9 53 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   14000181c:	48 8d 1d 63 29 00 00 	lea    0x2963(%rip),%rbx        # 140004186 <.rdata+0xe6>
   140001823:	e9 47 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   140001828:	90                   	nop
   140001829:	90                   	nop
   14000182a:	90                   	nop
   14000182b:	90                   	nop
   14000182c:	90                   	nop
   14000182d:	90                   	nop
   14000182e:	90                   	nop
   14000182f:	90                   	nop

0000000140001830 <_fpreset>:
   140001830:	db e3                	fninit
   140001832:	c3                   	ret
   140001833:	90                   	nop
   140001834:	90                   	nop
   140001835:	90                   	nop
   140001836:	90                   	nop
   140001837:	90                   	nop
   140001838:	90                   	nop
   140001839:	90                   	nop
   14000183a:	90                   	nop
   14000183b:	90                   	nop
   14000183c:	90                   	nop
   14000183d:	90                   	nop
   14000183e:	90                   	nop
   14000183f:	90                   	nop

0000000140001840 <__report_error>:
   140001840:	56                   	push   %rsi
   140001841:	53                   	push   %rbx
   140001842:	48 83 ec 38          	sub    $0x38,%rsp
   140001846:	48 89 cb             	mov    %rcx,%rbx
   140001849:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000184e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001853:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001858:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000185d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001862:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001867:	e8 24 11 00 00       	call   140002990 <__acrt_iob_func>
   14000186c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001872:	ba 01 00 00 00       	mov    $0x1,%edx
   140001877:	48 8d 0d 62 29 00 00 	lea    0x2962(%rip),%rcx        # 1400041e0 <.rdata>
   14000187e:	49 89 c1             	mov    %rax,%r9
   140001881:	e8 3a 11 00 00       	call   1400029c0 <fwrite>
   140001886:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000188b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001890:	e8 fb 10 00 00       	call   140002990 <__acrt_iob_func>
   140001895:	48 89 da             	mov    %rbx,%rdx
   140001898:	48 89 c1             	mov    %rax,%rcx
   14000189b:	49 89 f0             	mov    %rsi,%r8
   14000189e:	e8 9d 0d 00 00       	call   140002640 <vfprintf>
   1400018a3:	e8 98 11 00 00       	call   140002a40 <abort>
   1400018a8:	90                   	nop
   1400018a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400018b0 <mark_section_writable>:
   1400018b0:	57                   	push   %rdi
   1400018b1:	56                   	push   %rsi
   1400018b2:	53                   	push   %rbx
   1400018b3:	48 83 ec 50          	sub    $0x50,%rsp
   1400018b7:	48 63 35 d6 57 00 00 	movslq 0x57d6(%rip),%rsi        # 140007094 <maxSections>
   1400018be:	48 89 cb             	mov    %rcx,%rbx
   1400018c1:	85 f6                	test   %esi,%esi
   1400018c3:	0f 8e 17 01 00 00    	jle    1400019e0 <mark_section_writable+0x130>
   1400018c9:	48 8b 05 c8 57 00 00 	mov    0x57c8(%rip),%rax        # 140007098 <the_secs>
   1400018d0:	45 31 c9             	xor    %r9d,%r9d
   1400018d3:	48 83 c0 18          	add    $0x18,%rax
   1400018d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400018de:	00 00 
   1400018e0:	4c 8b 00             	mov    (%rax),%r8
   1400018e3:	4c 39 c3             	cmp    %r8,%rbx
   1400018e6:	72 13                	jb     1400018fb <mark_section_writable+0x4b>
   1400018e8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400018ec:	8b 52 08             	mov    0x8(%rdx),%edx
   1400018ef:	49 01 d0             	add    %rdx,%r8
   1400018f2:	4c 39 c3             	cmp    %r8,%rbx
   1400018f5:	0f 82 8a 00 00 00    	jb     140001985 <mark_section_writable+0xd5>
   1400018fb:	41 83 c1 01          	add    $0x1,%r9d
   1400018ff:	48 83 c0 28          	add    $0x28,%rax
   140001903:	41 39 f1             	cmp    %esi,%r9d
   140001906:	75 d8                	jne    1400018e0 <mark_section_writable+0x30>
   140001908:	48 89 d9             	mov    %rbx,%rcx
   14000190b:	e8 10 0a 00 00       	call   140002320 <__mingw_GetSectionForAddress>
   140001910:	48 89 c7             	mov    %rax,%rdi
   140001913:	48 85 c0             	test   %rax,%rax
   140001916:	0f 84 e6 00 00 00    	je     140001a02 <mark_section_writable+0x152>
   14000191c:	48 8b 05 75 57 00 00 	mov    0x5775(%rip),%rax        # 140007098 <the_secs>
   140001923:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001927:	48 c1 e3 03          	shl    $0x3,%rbx
   14000192b:	48 01 d8             	add    %rbx,%rax
   14000192e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001932:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001938:	e8 23 0b 00 00       	call   140002460 <_GetPEImageBase>
   14000193d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001940:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001946:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000194a:	48 8b 05 47 57 00 00 	mov    0x5747(%rip),%rax        # 140007098 <the_secs>
   140001951:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001956:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000195b:	ff 15 87 69 00 00    	call   *0x6987(%rip)        # 1400082e8 <__imp_VirtualQuery>
   140001961:	48 85 c0             	test   %rax,%rax
   140001964:	0f 84 7d 00 00 00    	je     1400019e7 <mark_section_writable+0x137>
   14000196a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000196e:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001971:	83 e2 fb             	and    $0xfffffffb,%edx
   140001974:	74 08                	je     14000197e <mark_section_writable+0xce>
   140001976:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001979:	83 e2 bf             	and    $0xffffffbf,%edx
   14000197c:	75 12                	jne    140001990 <mark_section_writable+0xe0>
   14000197e:	83 05 0f 57 00 00 01 	addl   $0x1,0x570f(%rip)        # 140007094 <maxSections>
   140001985:	48 83 c4 50          	add    $0x50,%rsp
   140001989:	5b                   	pop    %rbx
   14000198a:	5e                   	pop    %rsi
   14000198b:	5f                   	pop    %rdi
   14000198c:	c3                   	ret
   14000198d:	0f 1f 00             	nopl   (%rax)
   140001990:	83 f8 02             	cmp    $0x2,%eax
   140001993:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001998:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000199d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400019a3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400019a8:	44 0f 44 c0          	cmove  %eax,%r8d
   1400019ac:	48 03 1d e5 56 00 00 	add    0x56e5(%rip),%rbx        # 140007098 <the_secs>
   1400019b3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400019b7:	49 89 d9             	mov    %rbx,%r9
   1400019ba:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400019be:	ff 15 1c 69 00 00    	call   *0x691c(%rip)        # 1400082e0 <__imp_VirtualProtect>
   1400019c4:	85 c0                	test   %eax,%eax
   1400019c6:	75 b6                	jne    14000197e <mark_section_writable+0xce>
   1400019c8:	ff 15 e2 68 00 00    	call   *0x68e2(%rip)        # 1400082b0 <__imp_GetLastError>
   1400019ce:	48 8d 0d 83 28 00 00 	lea    0x2883(%rip),%rcx        # 140004258 <.rdata+0x78>
   1400019d5:	89 c2                	mov    %eax,%edx
   1400019d7:	e8 64 fe ff ff       	call   140001840 <__report_error>
   1400019dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019e0:	31 f6                	xor    %esi,%esi
   1400019e2:	e9 21 ff ff ff       	jmp    140001908 <mark_section_writable+0x58>
   1400019e7:	48 8b 05 aa 56 00 00 	mov    0x56aa(%rip),%rax        # 140007098 <the_secs>
   1400019ee:	8b 57 08             	mov    0x8(%rdi),%edx
   1400019f1:	48 8d 0d 28 28 00 00 	lea    0x2828(%rip),%rcx        # 140004220 <.rdata+0x40>
   1400019f8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400019fd:	e8 3e fe ff ff       	call   140001840 <__report_error>
   140001a02:	48 89 da             	mov    %rbx,%rdx
   140001a05:	48 8d 0d f4 27 00 00 	lea    0x27f4(%rip),%rcx        # 140004200 <.rdata+0x20>
   140001a0c:	e8 2f fe ff ff       	call   140001840 <__report_error>
   140001a11:	90                   	nop
   140001a12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001a19:	00 00 00 00 
   140001a1d:	0f 1f 00             	nopl   (%rax)

0000000140001a20 <_pei386_runtime_relocator>:
   140001a20:	55                   	push   %rbp
   140001a21:	41 57                	push   %r15
   140001a23:	41 56                	push   %r14
   140001a25:	41 55                	push   %r13
   140001a27:	41 54                	push   %r12
   140001a29:	57                   	push   %rdi
   140001a2a:	56                   	push   %rsi
   140001a2b:	53                   	push   %rbx
   140001a2c:	48 83 ec 48          	sub    $0x48,%rsp
   140001a30:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001a35:	44 8b 25 54 56 00 00 	mov    0x5654(%rip),%r12d        # 140007090 <was_init.0>
   140001a3c:	45 85 e4             	test   %r12d,%r12d
   140001a3f:	74 17                	je     140001a58 <_pei386_runtime_relocator+0x38>
   140001a41:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a45:	5b                   	pop    %rbx
   140001a46:	5e                   	pop    %rsi
   140001a47:	5f                   	pop    %rdi
   140001a48:	41 5c                	pop    %r12
   140001a4a:	41 5d                	pop    %r13
   140001a4c:	41 5e                	pop    %r14
   140001a4e:	41 5f                	pop    %r15
   140001a50:	5d                   	pop    %rbp
   140001a51:	c3                   	ret
   140001a52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001a58:	c7 05 2e 56 00 00 01 	movl   $0x1,0x562e(%rip)        # 140007090 <was_init.0>
   140001a5f:	00 00 00 
   140001a62:	e8 39 09 00 00       	call   1400023a0 <__mingw_GetSectionCount>
   140001a67:	48 98                	cltq
   140001a69:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a6d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a74:	00 
   140001a75:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a79:	e8 82 0b 00 00       	call   140002600 <___chkstk_ms>
   140001a7e:	4c 8b 2d 4b 29 00 00 	mov    0x294b(%rip),%r13        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a85:	48 8b 1d 54 29 00 00 	mov    0x2954(%rip),%rbx        # 1400043e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a8c:	c7 05 fe 55 00 00 00 	movl   $0x0,0x55fe(%rip)        # 140007094 <maxSections>
   140001a93:	00 00 00 
   140001a96:	48 29 c4             	sub    %rax,%rsp
   140001a99:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001a9e:	48 89 05 f3 55 00 00 	mov    %rax,0x55f3(%rip)        # 140007098 <the_secs>
   140001aa5:	4c 89 e8             	mov    %r13,%rax
   140001aa8:	48 29 d8             	sub    %rbx,%rax
   140001aab:	48 83 f8 07          	cmp    $0x7,%rax
   140001aaf:	7e 90                	jle    140001a41 <_pei386_runtime_relocator+0x21>
   140001ab1:	8b 13                	mov    (%rbx),%edx
   140001ab3:	48 83 f8 0b          	cmp    $0xb,%rax
   140001ab7:	0f 8f 03 01 00 00    	jg     140001bc0 <_pei386_runtime_relocator+0x1a0>
   140001abd:	8b 03                	mov    (%rbx),%eax
   140001abf:	85 c0                	test   %eax,%eax
   140001ac1:	0f 85 69 02 00 00    	jne    140001d30 <_pei386_runtime_relocator+0x310>
   140001ac7:	8b 43 04             	mov    0x4(%rbx),%eax
   140001aca:	85 c0                	test   %eax,%eax
   140001acc:	0f 85 5e 02 00 00    	jne    140001d30 <_pei386_runtime_relocator+0x310>
   140001ad2:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ad5:	83 fa 01             	cmp    $0x1,%edx
   140001ad8:	0f 85 92 02 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x350>
   140001ade:	48 83 c3 0c          	add    $0xc,%rbx
   140001ae2:	4c 39 eb             	cmp    %r13,%rbx
   140001ae5:	0f 83 56 ff ff ff    	jae    140001a41 <_pei386_runtime_relocator+0x21>
   140001aeb:	4c 8b 35 ce 28 00 00 	mov    0x28ce(%rip),%r14        # 1400043c0 <.refptr.__ImageBase>
   140001af2:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140001af8:	eb 65                	jmp    140001b5f <_pei386_runtime_relocator+0x13f>
   140001afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001b00:	83 f9 08             	cmp    $0x8,%ecx
   140001b03:	0f 84 d7 00 00 00    	je     140001be0 <_pei386_runtime_relocator+0x1c0>
   140001b09:	83 f9 10             	cmp    $0x10,%ecx
   140001b0c:	0f 85 50 02 00 00    	jne    140001d62 <_pei386_runtime_relocator+0x342>
   140001b12:	0f b7 37             	movzwl (%rdi),%esi
   140001b15:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001b1b:	66 85 f6             	test   %si,%si
   140001b1e:	0f 89 cc 01 00 00    	jns    140001cf0 <_pei386_runtime_relocator+0x2d0>
   140001b24:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001b2b:	48 29 c6             	sub    %rax,%rsi
   140001b2e:	4c 01 ce             	add    %r9,%rsi
   140001b31:	85 d2                	test   %edx,%edx
   140001b33:	75 12                	jne    140001b47 <_pei386_runtime_relocator+0x127>
   140001b35:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001b3c:	7c 65                	jl     140001ba3 <_pei386_runtime_relocator+0x183>
   140001b3e:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001b45:	7f 5c                	jg     140001ba3 <_pei386_runtime_relocator+0x183>
   140001b47:	48 89 f9             	mov    %rdi,%rcx
   140001b4a:	e8 61 fd ff ff       	call   1400018b0 <mark_section_writable>
   140001b4f:	66 89 37             	mov    %si,(%rdi)
   140001b52:	48 83 c3 0c          	add    $0xc,%rbx
   140001b56:	4c 39 eb             	cmp    %r13,%rbx
   140001b59:	0f 83 d1 00 00 00    	jae    140001c30 <_pei386_runtime_relocator+0x210>
   140001b5f:	8b 03                	mov    (%rbx),%eax
   140001b61:	8b 53 08             	mov    0x8(%rbx),%edx
   140001b64:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001b67:	4c 01 f0             	add    %r14,%rax
   140001b6a:	0f b6 ca             	movzbl %dl,%ecx
   140001b6d:	4c 8b 08             	mov    (%rax),%r9
   140001b70:	4c 01 f7             	add    %r14,%rdi
   140001b73:	83 f9 20             	cmp    $0x20,%ecx
   140001b76:	0f 84 0c 01 00 00    	je     140001c88 <_pei386_runtime_relocator+0x268>
   140001b7c:	76 82                	jbe    140001b00 <_pei386_runtime_relocator+0xe0>
   140001b7e:	83 f9 40             	cmp    $0x40,%ecx
   140001b81:	0f 85 db 01 00 00    	jne    140001d62 <_pei386_runtime_relocator+0x342>
   140001b87:	48 8b 37             	mov    (%rdi),%rsi
   140001b8a:	89 d1                	mov    %edx,%ecx
   140001b8c:	48 29 c6             	sub    %rax,%rsi
   140001b8f:	4c 01 ce             	add    %r9,%rsi
   140001b92:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001b98:	0f 85 42 01 00 00    	jne    140001ce0 <_pei386_runtime_relocator+0x2c0>
   140001b9e:	48 85 f6             	test   %rsi,%rsi
   140001ba1:	78 af                	js     140001b52 <_pei386_runtime_relocator+0x132>
   140001ba3:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001ba8:	89 ca                	mov    %ecx,%edx
   140001baa:	49 89 f8             	mov    %rdi,%r8
   140001bad:	48 8d 0d 34 27 00 00 	lea    0x2734(%rip),%rcx        # 1400042e8 <.rdata+0x108>
   140001bb4:	e8 87 fc ff ff       	call   140001840 <__report_error>
   140001bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001bc0:	85 d2                	test   %edx,%edx
   140001bc2:	0f 85 68 01 00 00    	jne    140001d30 <_pei386_runtime_relocator+0x310>
   140001bc8:	8b 43 04             	mov    0x4(%rbx),%eax
   140001bcb:	89 c2                	mov    %eax,%edx
   140001bcd:	0b 53 08             	or     0x8(%rbx),%edx
   140001bd0:	0f 85 f4 fe ff ff    	jne    140001aca <_pei386_runtime_relocator+0xaa>
   140001bd6:	48 83 c3 0c          	add    $0xc,%rbx
   140001bda:	e9 de fe ff ff       	jmp    140001abd <_pei386_runtime_relocator+0x9d>
   140001bdf:	90                   	nop
   140001be0:	0f b6 37             	movzbl (%rdi),%esi
   140001be3:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001be9:	40 84 f6             	test   %sil,%sil
   140001bec:	0f 89 26 01 00 00    	jns    140001d18 <_pei386_runtime_relocator+0x2f8>
   140001bf2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001bf9:	48 29 c6             	sub    %rax,%rsi
   140001bfc:	4c 01 ce             	add    %r9,%rsi
   140001bff:	85 d2                	test   %edx,%edx
   140001c01:	75 0f                	jne    140001c12 <_pei386_runtime_relocator+0x1f2>
   140001c03:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001c0a:	7f 97                	jg     140001ba3 <_pei386_runtime_relocator+0x183>
   140001c0c:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001c10:	7c 91                	jl     140001ba3 <_pei386_runtime_relocator+0x183>
   140001c12:	48 89 f9             	mov    %rdi,%rcx
   140001c15:	48 83 c3 0c          	add    $0xc,%rbx
   140001c19:	e8 92 fc ff ff       	call   1400018b0 <mark_section_writable>
   140001c1e:	40 88 37             	mov    %sil,(%rdi)
   140001c21:	4c 39 eb             	cmp    %r13,%rbx
   140001c24:	0f 82 35 ff ff ff    	jb     140001b5f <_pei386_runtime_relocator+0x13f>
   140001c2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001c30:	8b 15 5e 54 00 00    	mov    0x545e(%rip),%edx        # 140007094 <maxSections>
   140001c36:	85 d2                	test   %edx,%edx
   140001c38:	0f 8e 03 fe ff ff    	jle    140001a41 <_pei386_runtime_relocator+0x21>
   140001c3e:	48 8b 35 9b 66 00 00 	mov    0x669b(%rip),%rsi        # 1400082e0 <__imp_VirtualProtect>
   140001c45:	31 db                	xor    %ebx,%ebx
   140001c47:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140001c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c50:	48 8b 05 41 54 00 00 	mov    0x5441(%rip),%rax        # 140007098 <the_secs>
   140001c57:	48 01 d8             	add    %rbx,%rax
   140001c5a:	44 8b 00             	mov    (%rax),%r8d
   140001c5d:	45 85 c0             	test   %r8d,%r8d
   140001c60:	74 0d                	je     140001c6f <_pei386_runtime_relocator+0x24f>
   140001c62:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001c66:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001c6a:	49 89 f9             	mov    %rdi,%r9
   140001c6d:	ff d6                	call   *%rsi
   140001c6f:	41 83 c4 01          	add    $0x1,%r12d
   140001c73:	48 83 c3 28          	add    $0x28,%rbx
   140001c77:	44 3b 25 16 54 00 00 	cmp    0x5416(%rip),%r12d        # 140007094 <maxSections>
   140001c7e:	7c d0                	jl     140001c50 <_pei386_runtime_relocator+0x230>
   140001c80:	e9 bc fd ff ff       	jmp    140001a41 <_pei386_runtime_relocator+0x21>
   140001c85:	0f 1f 00             	nopl   (%rax)
   140001c88:	8b 37                	mov    (%rdi),%esi
   140001c8a:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001c90:	85 f6                	test   %esi,%esi
   140001c92:	79 74                	jns    140001d08 <_pei386_runtime_relocator+0x2e8>
   140001c94:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001c9b:	ff ff ff 
   140001c9e:	4c 09 de             	or     %r11,%rsi
   140001ca1:	48 29 c6             	sub    %rax,%rsi
   140001ca4:	4c 01 ce             	add    %r9,%rsi
   140001ca7:	85 d2                	test   %edx,%edx
   140001ca9:	75 1c                	jne    140001cc7 <_pei386_runtime_relocator+0x2a7>
   140001cab:	4c 39 fe             	cmp    %r15,%rsi
   140001cae:	0f 8f ef fe ff ff    	jg     140001ba3 <_pei386_runtime_relocator+0x183>
   140001cb4:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001cbb:	ff ff ff 
   140001cbe:	48 39 c6             	cmp    %rax,%rsi
   140001cc1:	0f 8e dc fe ff ff    	jle    140001ba3 <_pei386_runtime_relocator+0x183>
   140001cc7:	48 89 f9             	mov    %rdi,%rcx
   140001cca:	e8 e1 fb ff ff       	call   1400018b0 <mark_section_writable>
   140001ccf:	89 37                	mov    %esi,(%rdi)
   140001cd1:	e9 7c fe ff ff       	jmp    140001b52 <_pei386_runtime_relocator+0x132>
   140001cd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001cdd:	00 00 00 
   140001ce0:	48 89 f9             	mov    %rdi,%rcx
   140001ce3:	e8 c8 fb ff ff       	call   1400018b0 <mark_section_writable>
   140001ce8:	48 89 37             	mov    %rsi,(%rdi)
   140001ceb:	e9 62 fe ff ff       	jmp    140001b52 <_pei386_runtime_relocator+0x132>
   140001cf0:	48 29 c6             	sub    %rax,%rsi
   140001cf3:	4c 01 ce             	add    %r9,%rsi
   140001cf6:	85 d2                	test   %edx,%edx
   140001cf8:	0f 84 37 fe ff ff    	je     140001b35 <_pei386_runtime_relocator+0x115>
   140001cfe:	e9 44 fe ff ff       	jmp    140001b47 <_pei386_runtime_relocator+0x127>
   140001d03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d08:	48 29 c6             	sub    %rax,%rsi
   140001d0b:	4c 01 ce             	add    %r9,%rsi
   140001d0e:	85 d2                	test   %edx,%edx
   140001d10:	74 99                	je     140001cab <_pei386_runtime_relocator+0x28b>
   140001d12:	eb b3                	jmp    140001cc7 <_pei386_runtime_relocator+0x2a7>
   140001d14:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d18:	48 29 c6             	sub    %rax,%rsi
   140001d1b:	4c 01 ce             	add    %r9,%rsi
   140001d1e:	85 d2                	test   %edx,%edx
   140001d20:	0f 84 dd fe ff ff    	je     140001c03 <_pei386_runtime_relocator+0x1e3>
   140001d26:	e9 e7 fe ff ff       	jmp    140001c12 <_pei386_runtime_relocator+0x1f2>
   140001d2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d30:	4c 39 eb             	cmp    %r13,%rbx
   140001d33:	0f 83 08 fd ff ff    	jae    140001a41 <_pei386_runtime_relocator+0x21>
   140001d39:	4c 8b 35 80 26 00 00 	mov    0x2680(%rip),%r14        # 1400043c0 <.refptr.__ImageBase>
   140001d40:	8b 73 04             	mov    0x4(%rbx),%esi
   140001d43:	8b 3b                	mov    (%rbx),%edi
   140001d45:	48 83 c3 08          	add    $0x8,%rbx
   140001d49:	4c 01 f6             	add    %r14,%rsi
   140001d4c:	03 3e                	add    (%rsi),%edi
   140001d4e:	48 89 f1             	mov    %rsi,%rcx
   140001d51:	e8 5a fb ff ff       	call   1400018b0 <mark_section_writable>
   140001d56:	89 3e                	mov    %edi,(%rsi)
   140001d58:	4c 39 eb             	cmp    %r13,%rbx
   140001d5b:	72 e3                	jb     140001d40 <_pei386_runtime_relocator+0x320>
   140001d5d:	e9 ce fe ff ff       	jmp    140001c30 <_pei386_runtime_relocator+0x210>
   140001d62:	89 ca                	mov    %ecx,%edx
   140001d64:	48 8d 0d 4d 25 00 00 	lea    0x254d(%rip),%rcx        # 1400042b8 <.rdata+0xd8>
   140001d6b:	e8 d0 fa ff ff       	call   140001840 <__report_error>
   140001d70:	48 8d 0d 09 25 00 00 	lea    0x2509(%rip),%rcx        # 140004280 <.rdata+0xa0>
   140001d77:	e8 c4 fa ff ff       	call   140001840 <__report_error>
   140001d7c:	90                   	nop
   140001d7d:	90                   	nop
   140001d7e:	90                   	nop
   140001d7f:	90                   	nop

0000000140001d80 <__mingw_raise_matherr>:
   140001d80:	48 83 ec 58          	sub    $0x58,%rsp
   140001d84:	48 8b 05 15 53 00 00 	mov    0x5315(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001d8b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001d8f:	48 85 c0             	test   %rax,%rax
   140001d92:	74 25                	je     140001db9 <__mingw_raise_matherr+0x39>
   140001d94:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001d9b:	00 00 
   140001d9d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001da1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001da6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001dab:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001db0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001db6:	ff d0                	call   *%rax
   140001db8:	90                   	nop
   140001db9:	48 83 c4 58          	add    $0x58,%rsp
   140001dbd:	c3                   	ret
   140001dbe:	66 90                	xchg   %ax,%ax

0000000140001dc0 <__mingw_setusermatherr>:
   140001dc0:	48 89 0d d9 52 00 00 	mov    %rcx,0x52d9(%rip)        # 1400070a0 <stUserMathErr>
   140001dc7:	e9 a4 0c 00 00       	jmp    140002a70 <__setusermatherr>
   140001dcc:	90                   	nop
   140001dcd:	90                   	nop
   140001dce:	90                   	nop
   140001dcf:	90                   	nop

0000000140001dd0 <_gnu_exception_handler>:
   140001dd0:	53                   	push   %rbx
   140001dd1:	48 83 ec 20          	sub    $0x20,%rsp
   140001dd5:	48 8b 11             	mov    (%rcx),%rdx
   140001dd8:	8b 02                	mov    (%rdx),%eax
   140001dda:	48 89 cb             	mov    %rcx,%rbx
   140001ddd:	89 c1                	mov    %eax,%ecx
   140001ddf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001de5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001deb:	0f 84 bf 00 00 00    	je     140001eb0 <_gnu_exception_handler+0xe0>
   140001df1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001df6:	77 47                	ja     140001e3f <_gnu_exception_handler+0x6f>
   140001df8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001dfd:	76 61                	jbe    140001e60 <_gnu_exception_handler+0x90>
   140001dff:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001e04:	83 f8 09             	cmp    $0x9,%eax
   140001e07:	0f 87 93 00 00 00    	ja     140001ea0 <_gnu_exception_handler+0xd0>
   140001e0d:	48 8d 15 2c 25 00 00 	lea    0x252c(%rip),%rdx        # 140004340 <.rdata>
   140001e14:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001e18:	48 01 d0             	add    %rdx,%rax
   140001e1b:	ff e0                	jmp    *%rax
   140001e1d:	0f 1f 00             	nopl   (%rax)
   140001e20:	31 d2                	xor    %edx,%edx
   140001e22:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e27:	e8 24 0c 00 00       	call   140002a50 <signal>
   140001e2c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e30:	0f 84 3e 01 00 00    	je     140001f74 <_gnu_exception_handler+0x1a4>
   140001e36:	48 85 c0             	test   %rax,%rax
   140001e39:	0f 85 01 01 00 00    	jne    140001f40 <_gnu_exception_handler+0x170>
   140001e3f:	48 8b 05 7a 52 00 00 	mov    0x527a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001e46:	48 85 c0             	test   %rax,%rax
   140001e49:	74 75                	je     140001ec0 <_gnu_exception_handler+0xf0>
   140001e4b:	48 89 d9             	mov    %rbx,%rcx
   140001e4e:	48 83 c4 20          	add    $0x20,%rsp
   140001e52:	5b                   	pop    %rbx
   140001e53:	48 ff e0             	rex.W jmp *%rax
   140001e56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001e5d:	00 00 00 
   140001e60:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001e65:	0f 84 a5 00 00 00    	je     140001f10 <_gnu_exception_handler+0x140>
   140001e6b:	76 63                	jbe    140001ed0 <_gnu_exception_handler+0x100>
   140001e6d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001e72:	74 2c                	je     140001ea0 <_gnu_exception_handler+0xd0>
   140001e74:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001e79:	75 c4                	jne    140001e3f <_gnu_exception_handler+0x6f>
   140001e7b:	31 d2                	xor    %edx,%edx
   140001e7d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e82:	e8 c9 0b 00 00       	call   140002a50 <signal>
   140001e87:	48 83 f8 01          	cmp    $0x1,%rax
   140001e8b:	0f 84 cf 00 00 00    	je     140001f60 <_gnu_exception_handler+0x190>
   140001e91:	48 85 c0             	test   %rax,%rax
   140001e94:	74 a9                	je     140001e3f <_gnu_exception_handler+0x6f>
   140001e96:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e9b:	ff d0                	call   *%rax
   140001e9d:	0f 1f 00             	nopl   (%rax)
   140001ea0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001ea5:	eb 1b                	jmp    140001ec2 <_gnu_exception_handler+0xf2>
   140001ea7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001eae:	00 00 
   140001eb0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001eb4:	0f 85 37 ff ff ff    	jne    140001df1 <_gnu_exception_handler+0x21>
   140001eba:	eb e4                	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001ebc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ec0:	31 c0                	xor    %eax,%eax
   140001ec2:	48 83 c4 20          	add    $0x20,%rsp
   140001ec6:	5b                   	pop    %rbx
   140001ec7:	c3                   	ret
   140001ec8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001ecf:	00 
   140001ed0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001ed5:	0f 85 64 ff ff ff    	jne    140001e3f <_gnu_exception_handler+0x6f>
   140001edb:	eb c3                	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001edd:	0f 1f 00             	nopl   (%rax)
   140001ee0:	31 d2                	xor    %edx,%edx
   140001ee2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ee7:	e8 64 0b 00 00       	call   140002a50 <signal>
   140001eec:	48 83 f8 01          	cmp    $0x1,%rax
   140001ef0:	0f 85 40 ff ff ff    	jne    140001e36 <_gnu_exception_handler+0x66>
   140001ef6:	ba 01 00 00 00       	mov    $0x1,%edx
   140001efb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f00:	e8 4b 0b 00 00       	call   140002a50 <signal>
   140001f05:	eb 99                	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f0e:	00 00 
   140001f10:	31 d2                	xor    %edx,%edx
   140001f12:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f17:	e8 34 0b 00 00       	call   140002a50 <signal>
   140001f1c:	48 83 f8 01          	cmp    $0x1,%rax
   140001f20:	74 2a                	je     140001f4c <_gnu_exception_handler+0x17c>
   140001f22:	48 85 c0             	test   %rax,%rax
   140001f25:	0f 84 14 ff ff ff    	je     140001e3f <_gnu_exception_handler+0x6f>
   140001f2b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f30:	ff d0                	call   *%rax
   140001f32:	e9 69 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f3e:	00 00 
   140001f40:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f45:	ff d0                	call   *%rax
   140001f47:	e9 54 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f4c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f51:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f56:	e8 f5 0a 00 00       	call   140002a50 <signal>
   140001f5b:	e9 40 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f60:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f65:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f6a:	e8 e1 0a 00 00       	call   140002a50 <signal>
   140001f6f:	e9 2c ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f74:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f79:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f7e:	e8 cd 0a 00 00       	call   140002a50 <signal>
   140001f83:	e8 a8 f8 ff ff       	call   140001830 <_fpreset>
   140001f88:	e9 13 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f8d:	90                   	nop
   140001f8e:	90                   	nop
   140001f8f:	90                   	nop

0000000140001f90 <__mingwthr_run_key_dtors.part.0>:
   140001f90:	41 54                	push   %r12
   140001f92:	55                   	push   %rbp
   140001f93:	57                   	push   %rdi
   140001f94:	56                   	push   %rsi
   140001f95:	53                   	push   %rbx
   140001f96:	48 83 ec 20          	sub    $0x20,%rsp
   140001f9a:	4c 8d 25 5f 51 00 00 	lea    0x515f(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001fa1:	4c 89 e1             	mov    %r12,%rcx
   140001fa4:	ff 15 fe 62 00 00    	call   *0x62fe(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   140001faa:	48 8b 1d 2f 51 00 00 	mov    0x512f(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001fb1:	48 85 db             	test   %rbx,%rbx
   140001fb4:	74 36                	je     140001fec <__mingwthr_run_key_dtors.part.0+0x5c>
   140001fb6:	48 8b 2d 1b 63 00 00 	mov    0x631b(%rip),%rbp        # 1400082d8 <__imp_TlsGetValue>
   140001fbd:	48 8b 3d ec 62 00 00 	mov    0x62ec(%rip),%rdi        # 1400082b0 <__imp_GetLastError>
   140001fc4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001fc8:	8b 0b                	mov    (%rbx),%ecx
   140001fca:	ff d5                	call   *%rbp
   140001fcc:	48 89 c6             	mov    %rax,%rsi
   140001fcf:	ff d7                	call   *%rdi
   140001fd1:	48 85 f6             	test   %rsi,%rsi
   140001fd4:	74 0d                	je     140001fe3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fd6:	85 c0                	test   %eax,%eax
   140001fd8:	75 09                	jne    140001fe3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fda:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001fde:	48 89 f1             	mov    %rsi,%rcx
   140001fe1:	ff d0                	call   *%rax
   140001fe3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001fe7:	48 85 db             	test   %rbx,%rbx
   140001fea:	75 dc                	jne    140001fc8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001fec:	4c 89 e1             	mov    %r12,%rcx
   140001fef:	48 83 c4 20          	add    $0x20,%rsp
   140001ff3:	5b                   	pop    %rbx
   140001ff4:	5e                   	pop    %rsi
   140001ff5:	5f                   	pop    %rdi
   140001ff6:	5d                   	pop    %rbp
   140001ff7:	41 5c                	pop    %r12
   140001ff9:	48 ff 25 c0 62 00 00 	rex.W jmp *0x62c0(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>

0000000140002000 <___w64_mingwthr_add_key_dtor>:
   140002000:	57                   	push   %rdi
   140002001:	56                   	push   %rsi
   140002002:	53                   	push   %rbx
   140002003:	48 83 ec 20          	sub    $0x20,%rsp
   140002007:	8b 05 db 50 00 00    	mov    0x50db(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000200d:	89 cf                	mov    %ecx,%edi
   14000200f:	48 89 d6             	mov    %rdx,%rsi
   140002012:	85 c0                	test   %eax,%eax
   140002014:	75 0a                	jne    140002020 <___w64_mingwthr_add_key_dtor+0x20>
   140002016:	31 c0                	xor    %eax,%eax
   140002018:	48 83 c4 20          	add    $0x20,%rsp
   14000201c:	5b                   	pop    %rbx
   14000201d:	5e                   	pop    %rsi
   14000201e:	5f                   	pop    %rdi
   14000201f:	c3                   	ret
   140002020:	ba 18 00 00 00       	mov    $0x18,%edx
   140002025:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000202a:	e8 59 0a 00 00       	call   140002a88 <calloc>
   14000202f:	48 89 c3             	mov    %rax,%rbx
   140002032:	48 85 c0             	test   %rax,%rax
   140002035:	74 33                	je     14000206a <___w64_mingwthr_add_key_dtor+0x6a>
   140002037:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000203b:	48 8d 35 be 50 00 00 	lea    0x50be(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140002042:	89 38                	mov    %edi,(%rax)
   140002044:	48 89 f1             	mov    %rsi,%rcx
   140002047:	ff 15 5b 62 00 00    	call   *0x625b(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   14000204d:	48 8b 05 8c 50 00 00 	mov    0x508c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140002054:	48 89 f1             	mov    %rsi,%rcx
   140002057:	48 89 1d 82 50 00 00 	mov    %rbx,0x5082(%rip)        # 1400070e0 <key_dtor_list>
   14000205e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002062:	ff 15 58 62 00 00    	call   *0x6258(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>
   140002068:	eb ac                	jmp    140002016 <___w64_mingwthr_add_key_dtor+0x16>
   14000206a:	83 c8 ff             	or     $0xffffffff,%eax
   14000206d:	eb a9                	jmp    140002018 <___w64_mingwthr_add_key_dtor+0x18>
   14000206f:	90                   	nop

0000000140002070 <___w64_mingwthr_remove_key_dtor>:
   140002070:	56                   	push   %rsi
   140002071:	53                   	push   %rbx
   140002072:	48 83 ec 28          	sub    $0x28,%rsp
   140002076:	8b 05 6c 50 00 00    	mov    0x506c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000207c:	89 cb                	mov    %ecx,%ebx
   14000207e:	85 c0                	test   %eax,%eax
   140002080:	75 0e                	jne    140002090 <___w64_mingwthr_remove_key_dtor+0x20>
   140002082:	31 c0                	xor    %eax,%eax
   140002084:	48 83 c4 28          	add    $0x28,%rsp
   140002088:	5b                   	pop    %rbx
   140002089:	5e                   	pop    %rsi
   14000208a:	c3                   	ret
   14000208b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002090:	48 8d 35 69 50 00 00 	lea    0x5069(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140002097:	48 89 f1             	mov    %rsi,%rcx
   14000209a:	ff 15 08 62 00 00    	call   *0x6208(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   1400020a0:	48 8b 0d 39 50 00 00 	mov    0x5039(%rip),%rcx        # 1400070e0 <key_dtor_list>
   1400020a7:	48 85 c9             	test   %rcx,%rcx
   1400020aa:	74 27                	je     1400020d3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020ac:	31 d2                	xor    %edx,%edx
   1400020ae:	eb 0b                	jmp    1400020bb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400020b0:	48 89 ca             	mov    %rcx,%rdx
   1400020b3:	48 85 c0             	test   %rax,%rax
   1400020b6:	74 1b                	je     1400020d3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020b8:	48 89 c1             	mov    %rax,%rcx
   1400020bb:	8b 01                	mov    (%rcx),%eax
   1400020bd:	39 d8                	cmp    %ebx,%eax
   1400020bf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400020c3:	75 eb                	jne    1400020b0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020c5:	48 85 d2             	test   %rdx,%rdx
   1400020c8:	74 1e                	je     1400020e8 <___w64_mingwthr_remove_key_dtor+0x78>
   1400020ca:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400020ce:	e8 bd 09 00 00       	call   140002a90 <free>
   1400020d3:	48 89 f1             	mov    %rsi,%rcx
   1400020d6:	ff 15 e4 61 00 00    	call   *0x61e4(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>
   1400020dc:	31 c0                	xor    %eax,%eax
   1400020de:	48 83 c4 28          	add    $0x28,%rsp
   1400020e2:	5b                   	pop    %rbx
   1400020e3:	5e                   	pop    %rsi
   1400020e4:	c3                   	ret
   1400020e5:	0f 1f 00             	nopl   (%rax)
   1400020e8:	48 89 05 f1 4f 00 00 	mov    %rax,0x4ff1(%rip)        # 1400070e0 <key_dtor_list>
   1400020ef:	eb dd                	jmp    1400020ce <___w64_mingwthr_remove_key_dtor+0x5e>
   1400020f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400020f8:	00 00 00 00 
   1400020fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002100 <__mingw_TLScallback>:
   140002100:	53                   	push   %rbx
   140002101:	48 83 ec 20          	sub    $0x20,%rsp
   140002105:	83 fa 02             	cmp    $0x2,%edx
   140002108:	0f 84 b2 00 00 00    	je     1400021c0 <__mingw_TLScallback+0xc0>
   14000210e:	77 30                	ja     140002140 <__mingw_TLScallback+0x40>
   140002110:	85 d2                	test   %edx,%edx
   140002112:	74 4c                	je     140002160 <__mingw_TLScallback+0x60>
   140002114:	8b 05 ce 4f 00 00    	mov    0x4fce(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000211a:	85 c0                	test   %eax,%eax
   14000211c:	0f 84 be 00 00 00    	je     1400021e0 <__mingw_TLScallback+0xe0>
   140002122:	c7 05 bc 4f 00 00 01 	movl   $0x1,0x4fbc(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002129:	00 00 00 
   14000212c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002131:	48 83 c4 20          	add    $0x20,%rsp
   140002135:	5b                   	pop    %rbx
   140002136:	c3                   	ret
   140002137:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000213e:	00 00 
   140002140:	83 fa 03             	cmp    $0x3,%edx
   140002143:	75 e7                	jne    14000212c <__mingw_TLScallback+0x2c>
   140002145:	8b 05 9d 4f 00 00    	mov    0x4f9d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000214b:	85 c0                	test   %eax,%eax
   14000214d:	74 dd                	je     14000212c <__mingw_TLScallback+0x2c>
   14000214f:	e8 3c fe ff ff       	call   140001f90 <__mingwthr_run_key_dtors.part.0>
   140002154:	eb d6                	jmp    14000212c <__mingw_TLScallback+0x2c>
   140002156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000215d:	00 00 00 
   140002160:	8b 05 82 4f 00 00    	mov    0x4f82(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002166:	85 c0                	test   %eax,%eax
   140002168:	75 66                	jne    1400021d0 <__mingw_TLScallback+0xd0>
   14000216a:	8b 05 78 4f 00 00    	mov    0x4f78(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002170:	83 f8 01             	cmp    $0x1,%eax
   140002173:	75 b7                	jne    14000212c <__mingw_TLScallback+0x2c>
   140002175:	48 8b 1d 64 4f 00 00 	mov    0x4f64(%rip),%rbx        # 1400070e0 <key_dtor_list>
   14000217c:	48 85 db             	test   %rbx,%rbx
   14000217f:	74 18                	je     140002199 <__mingw_TLScallback+0x99>
   140002181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002188:	48 89 d9             	mov    %rbx,%rcx
   14000218b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000218f:	e8 fc 08 00 00       	call   140002a90 <free>
   140002194:	48 85 db             	test   %rbx,%rbx
   140002197:	75 ef                	jne    140002188 <__mingw_TLScallback+0x88>
   140002199:	48 8d 0d 60 4f 00 00 	lea    0x4f60(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400021a0:	48 c7 05 35 4f 00 00 	movq   $0x0,0x4f35(%rip)        # 1400070e0 <key_dtor_list>
   1400021a7:	00 00 00 00 
   1400021ab:	c7 05 33 4f 00 00 00 	movl   $0x0,0x4f33(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400021b2:	00 00 00 
   1400021b5:	ff 15 e5 60 00 00    	call   *0x60e5(%rip)        # 1400082a0 <__IAT_start__>
   1400021bb:	e9 6c ff ff ff       	jmp    14000212c <__mingw_TLScallback+0x2c>
   1400021c0:	e8 6b f6 ff ff       	call   140001830 <_fpreset>
   1400021c5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400021ca:	48 83 c4 20          	add    $0x20,%rsp
   1400021ce:	5b                   	pop    %rbx
   1400021cf:	c3                   	ret
   1400021d0:	e8 bb fd ff ff       	call   140001f90 <__mingwthr_run_key_dtors.part.0>
   1400021d5:	eb 93                	jmp    14000216a <__mingw_TLScallback+0x6a>
   1400021d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400021de:	00 00 
   1400021e0:	48 8d 0d 19 4f 00 00 	lea    0x4f19(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400021e7:	ff 15 cb 60 00 00    	call   *0x60cb(%rip)        # 1400082b8 <__imp_InitializeCriticalSection>
   1400021ed:	e9 30 ff ff ff       	jmp    140002122 <__mingw_TLScallback+0x22>
   1400021f2:	90                   	nop
   1400021f3:	90                   	nop
   1400021f4:	90                   	nop
   1400021f5:	90                   	nop
   1400021f6:	90                   	nop
   1400021f7:	90                   	nop
   1400021f8:	90                   	nop
   1400021f9:	90                   	nop
   1400021fa:	90                   	nop
   1400021fb:	90                   	nop
   1400021fc:	90                   	nop
   1400021fd:	90                   	nop
   1400021fe:	90                   	nop
   1400021ff:	90                   	nop

0000000140002200 <_ValidateImageBase>:
   140002200:	31 c0                	xor    %eax,%eax
   140002202:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002207:	75 0f                	jne    140002218 <_ValidateImageBase+0x18>
   140002209:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000220d:	48 01 d1             	add    %rdx,%rcx
   140002210:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002216:	74 08                	je     140002220 <_ValidateImageBase+0x20>
   140002218:	c3                   	ret
   140002219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002220:	31 c0                	xor    %eax,%eax
   140002222:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002228:	0f 94 c0             	sete   %al
   14000222b:	c3                   	ret
   14000222c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002230 <_FindPESection>:
   140002230:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002234:	48 01 c1             	add    %rax,%rcx
   140002237:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000223b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140002240:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002245:	66 45 85 c0          	test   %r8w,%r8w
   140002249:	74 32                	je     14000227d <_FindPESection+0x4d>
   14000224b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000224f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002253:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000225f:	00 
   140002260:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002264:	4c 89 c1             	mov    %r8,%rcx
   140002267:	4c 39 c2             	cmp    %r8,%rdx
   14000226a:	72 08                	jb     140002274 <_FindPESection+0x44>
   14000226c:	03 48 08             	add    0x8(%rax),%ecx
   14000226f:	48 39 ca             	cmp    %rcx,%rdx
   140002272:	72 0b                	jb     14000227f <_FindPESection+0x4f>
   140002274:	48 83 c0 28          	add    $0x28,%rax
   140002278:	4c 39 c8             	cmp    %r9,%rax
   14000227b:	75 e3                	jne    140002260 <_FindPESection+0x30>
   14000227d:	31 c0                	xor    %eax,%eax
   14000227f:	c3                   	ret

0000000140002280 <_FindPESectionByName>:
   140002280:	57                   	push   %rdi
   140002281:	56                   	push   %rsi
   140002282:	53                   	push   %rbx
   140002283:	48 83 ec 20          	sub    $0x20,%rsp
   140002287:	48 89 ce             	mov    %rcx,%rsi
   14000228a:	e8 f1 06 00 00       	call   140002980 <strlen>
   14000228f:	48 83 f8 08          	cmp    $0x8,%rax
   140002293:	77 7b                	ja     140002310 <_FindPESectionByName+0x90>
   140002295:	48 8b 15 24 21 00 00 	mov    0x2124(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   14000229c:	31 db                	xor    %ebx,%ebx
   14000229e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400022a3:	75 59                	jne    1400022fe <_FindPESectionByName+0x7e>
   1400022a5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400022a9:	48 01 d0             	add    %rdx,%rax
   1400022ac:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400022b2:	75 4a                	jne    1400022fe <_FindPESectionByName+0x7e>
   1400022b4:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400022ba:	75 42                	jne    1400022fe <_FindPESectionByName+0x7e>
   1400022bc:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400022c0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   1400022c5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   1400022c9:	66 85 d2             	test   %dx,%dx
   1400022cc:	74 42                	je     140002310 <_FindPESectionByName+0x90>
   1400022ce:	8d 42 ff             	lea    -0x1(%rdx),%eax
   1400022d1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400022d5:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   1400022da:	eb 0d                	jmp    1400022e9 <_FindPESectionByName+0x69>
   1400022dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022e0:	48 83 c3 28          	add    $0x28,%rbx
   1400022e4:	48 39 fb             	cmp    %rdi,%rbx
   1400022e7:	74 27                	je     140002310 <_FindPESectionByName+0x90>
   1400022e9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400022ef:	48 89 f2             	mov    %rsi,%rdx
   1400022f2:	48 89 d9             	mov    %rbx,%rcx
   1400022f5:	e8 8e 06 00 00       	call   140002988 <strncmp>
   1400022fa:	85 c0                	test   %eax,%eax
   1400022fc:	75 e2                	jne    1400022e0 <_FindPESectionByName+0x60>
   1400022fe:	48 89 d8             	mov    %rbx,%rax
   140002301:	48 83 c4 20          	add    $0x20,%rsp
   140002305:	5b                   	pop    %rbx
   140002306:	5e                   	pop    %rsi
   140002307:	5f                   	pop    %rdi
   140002308:	c3                   	ret
   140002309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002310:	31 db                	xor    %ebx,%ebx
   140002312:	48 89 d8             	mov    %rbx,%rax
   140002315:	48 83 c4 20          	add    $0x20,%rsp
   140002319:	5b                   	pop    %rbx
   14000231a:	5e                   	pop    %rsi
   14000231b:	5f                   	pop    %rdi
   14000231c:	c3                   	ret
   14000231d:	0f 1f 00             	nopl   (%rax)

0000000140002320 <__mingw_GetSectionForAddress>:
   140002320:	48 8b 15 99 20 00 00 	mov    0x2099(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   140002327:	31 c0                	xor    %eax,%eax
   140002329:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000232e:	75 10                	jne    140002340 <__mingw_GetSectionForAddress+0x20>
   140002330:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002334:	49 01 d0             	add    %rdx,%r8
   140002337:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000233e:	74 08                	je     140002348 <__mingw_GetSectionForAddress+0x28>
   140002340:	c3                   	ret
   140002341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002348:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000234f:	75 ef                	jne    140002340 <__mingw_GetSectionForAddress+0x20>
   140002351:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002356:	48 29 d1             	sub    %rdx,%rcx
   140002359:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000235e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002363:	66 45 85 c0          	test   %r8w,%r8w
   140002367:	74 34                	je     14000239d <__mingw_GetSectionForAddress+0x7d>
   140002369:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000236d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002371:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002376:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000237d:	00 00 00 
   140002380:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002384:	4c 89 c2             	mov    %r8,%rdx
   140002387:	4c 39 c1             	cmp    %r8,%rcx
   14000238a:	72 08                	jb     140002394 <__mingw_GetSectionForAddress+0x74>
   14000238c:	03 50 08             	add    0x8(%rax),%edx
   14000238f:	48 39 d1             	cmp    %rdx,%rcx
   140002392:	72 ac                	jb     140002340 <__mingw_GetSectionForAddress+0x20>
   140002394:	48 83 c0 28          	add    $0x28,%rax
   140002398:	4c 39 c8             	cmp    %r9,%rax
   14000239b:	75 e3                	jne    140002380 <__mingw_GetSectionForAddress+0x60>
   14000239d:	31 c0                	xor    %eax,%eax
   14000239f:	c3                   	ret

00000001400023a0 <__mingw_GetSectionCount>:
   1400023a0:	48 8b 05 19 20 00 00 	mov    0x2019(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   1400023a7:	31 c9                	xor    %ecx,%ecx
   1400023a9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023ae:	75 0f                	jne    1400023bf <__mingw_GetSectionCount+0x1f>
   1400023b0:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400023b4:	48 01 d0             	add    %rdx,%rax
   1400023b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400023bd:	74 09                	je     1400023c8 <__mingw_GetSectionCount+0x28>
   1400023bf:	89 c8                	mov    %ecx,%eax
   1400023c1:	c3                   	ret
   1400023c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400023c8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400023ce:	75 ef                	jne    1400023bf <__mingw_GetSectionCount+0x1f>
   1400023d0:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   1400023d4:	89 c8                	mov    %ecx,%eax
   1400023d6:	c3                   	ret
   1400023d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400023de:	00 00 

00000001400023e0 <_FindPESectionExec>:
   1400023e0:	4c 8b 05 d9 1f 00 00 	mov    0x1fd9(%rip),%r8        # 1400043c0 <.refptr.__ImageBase>
   1400023e7:	31 c0                	xor    %eax,%eax
   1400023e9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400023ef:	75 0f                	jne    140002400 <_FindPESectionExec+0x20>
   1400023f1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   1400023f5:	4c 01 c2             	add    %r8,%rdx
   1400023f8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400023fe:	74 08                	je     140002408 <_FindPESectionExec+0x28>
   140002400:	c3                   	ret
   140002401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002408:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000240e:	75 f0                	jne    140002400 <_FindPESectionExec+0x20>
   140002410:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002414:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002419:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000241e:	66 45 85 c0          	test   %r8w,%r8w
   140002422:	74 2c                	je     140002450 <_FindPESectionExec+0x70>
   140002424:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002428:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000242c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002431:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002438:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000243c:	74 09                	je     140002447 <_FindPESectionExec+0x67>
   14000243e:	48 85 c9             	test   %rcx,%rcx
   140002441:	74 bd                	je     140002400 <_FindPESectionExec+0x20>
   140002443:	48 83 e9 01          	sub    $0x1,%rcx
   140002447:	48 83 c0 28          	add    $0x28,%rax
   14000244b:	48 39 c2             	cmp    %rax,%rdx
   14000244e:	75 e8                	jne    140002438 <_FindPESectionExec+0x58>
   140002450:	31 c0                	xor    %eax,%eax
   140002452:	c3                   	ret
   140002453:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000245a:	00 00 00 00 
   14000245e:	66 90                	xchg   %ax,%ax

0000000140002460 <_GetPEImageBase>:
   140002460:	48 8b 05 59 1f 00 00 	mov    0x1f59(%rip),%rax        # 1400043c0 <.refptr.__ImageBase>
   140002467:	31 d2                	xor    %edx,%edx
   140002469:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000246e:	75 0f                	jne    14000247f <_GetPEImageBase+0x1f>
   140002470:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140002474:	48 01 c1             	add    %rax,%rcx
   140002477:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000247d:	74 09                	je     140002488 <_GetPEImageBase+0x28>
   14000247f:	48 89 d0             	mov    %rdx,%rax
   140002482:	c3                   	ret
   140002483:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002488:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000248e:	48 0f 44 d0          	cmove  %rax,%rdx
   140002492:	48 89 d0             	mov    %rdx,%rax
   140002495:	c3                   	ret
   140002496:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000249d:	00 00 00 

00000001400024a0 <_IsNonwritableInCurrentImage>:
   1400024a0:	48 8b 15 19 1f 00 00 	mov    0x1f19(%rip),%rdx        # 1400043c0 <.refptr.__ImageBase>
   1400024a7:	31 c0                	xor    %eax,%eax
   1400024a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400024ae:	75 10                	jne    1400024c0 <_IsNonwritableInCurrentImage+0x20>
   1400024b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400024b4:	49 01 d0             	add    %rdx,%r8
   1400024b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024be:	74 08                	je     1400024c8 <_IsNonwritableInCurrentImage+0x28>
   1400024c0:	c3                   	ret
   1400024c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024cf:	75 ef                	jne    1400024c0 <_IsNonwritableInCurrentImage+0x20>
   1400024d1:	48 29 d1             	sub    %rdx,%rcx
   1400024d4:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   1400024d9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024de:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024e3:	66 45 85 c9          	test   %r9w,%r9w
   1400024e7:	74 d7                	je     1400024c0 <_IsNonwritableInCurrentImage+0x20>
   1400024e9:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   1400024ed:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400024f1:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400024f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024fd:	00 00 00 
   140002500:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002504:	4c 89 c0             	mov    %r8,%rax
   140002507:	4c 39 c1             	cmp    %r8,%rcx
   14000250a:	72 08                	jb     140002514 <_IsNonwritableInCurrentImage+0x74>
   14000250c:	03 42 08             	add    0x8(%rdx),%eax
   14000250f:	48 39 c1             	cmp    %rax,%rcx
   140002512:	72 0c                	jb     140002520 <_IsNonwritableInCurrentImage+0x80>
   140002514:	48 83 c2 28          	add    $0x28,%rdx
   140002518:	4c 39 ca             	cmp    %r9,%rdx
   14000251b:	75 e3                	jne    140002500 <_IsNonwritableInCurrentImage+0x60>
   14000251d:	31 c0                	xor    %eax,%eax
   14000251f:	c3                   	ret
   140002520:	8b 42 24             	mov    0x24(%rdx),%eax
   140002523:	f7 d0                	not    %eax
   140002525:	c1 e8 1f             	shr    $0x1f,%eax
   140002528:	c3                   	ret
   140002529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002530 <__mingw_enum_import_library_names>:
   140002530:	4c 8b 1d 89 1e 00 00 	mov    0x1e89(%rip),%r11        # 1400043c0 <.refptr.__ImageBase>
   140002537:	45 31 c9             	xor    %r9d,%r9d
   14000253a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002540:	75 10                	jne    140002552 <__mingw_enum_import_library_names+0x22>
   140002542:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002546:	4d 01 d8             	add    %r11,%r8
   140002549:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002550:	74 0e                	je     140002560 <__mingw_enum_import_library_names+0x30>
   140002552:	4c 89 c8             	mov    %r9,%rax
   140002555:	c3                   	ret
   140002556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000255d:	00 00 00 
   140002560:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002567:	75 e9                	jne    140002552 <__mingw_enum_import_library_names+0x22>
   140002569:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002570:	85 c0                	test   %eax,%eax
   140002572:	74 de                	je     140002552 <__mingw_enum_import_library_names+0x22>
   140002574:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002579:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000257e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002583:	66 45 85 d2          	test   %r10w,%r10w
   140002587:	74 c9                	je     140002552 <__mingw_enum_import_library_names+0x22>
   140002589:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000258d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002591:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002596:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000259d:	00 00 00 
   1400025a0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400025a4:	4d 89 c8             	mov    %r9,%r8
   1400025a7:	4c 39 c8             	cmp    %r9,%rax
   1400025aa:	72 09                	jb     1400025b5 <__mingw_enum_import_library_names+0x85>
   1400025ac:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400025b0:	4c 39 c0             	cmp    %r8,%rax
   1400025b3:	72 13                	jb     1400025c8 <__mingw_enum_import_library_names+0x98>
   1400025b5:	48 83 c2 28          	add    $0x28,%rdx
   1400025b9:	49 39 d2             	cmp    %rdx,%r10
   1400025bc:	75 e2                	jne    1400025a0 <__mingw_enum_import_library_names+0x70>
   1400025be:	45 31 c9             	xor    %r9d,%r9d
   1400025c1:	4c 89 c8             	mov    %r9,%rax
   1400025c4:	c3                   	ret
   1400025c5:	0f 1f 00             	nopl   (%rax)
   1400025c8:	4c 01 d8             	add    %r11,%rax
   1400025cb:	eb 0a                	jmp    1400025d7 <__mingw_enum_import_library_names+0xa7>
   1400025cd:	0f 1f 00             	nopl   (%rax)
   1400025d0:	83 e9 01             	sub    $0x1,%ecx
   1400025d3:	48 83 c0 14          	add    $0x14,%rax
   1400025d7:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400025db:	45 85 c0             	test   %r8d,%r8d
   1400025de:	75 07                	jne    1400025e7 <__mingw_enum_import_library_names+0xb7>
   1400025e0:	8b 50 0c             	mov    0xc(%rax),%edx
   1400025e3:	85 d2                	test   %edx,%edx
   1400025e5:	74 d7                	je     1400025be <__mingw_enum_import_library_names+0x8e>
   1400025e7:	85 c9                	test   %ecx,%ecx
   1400025e9:	7f e5                	jg     1400025d0 <__mingw_enum_import_library_names+0xa0>
   1400025eb:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400025ef:	4d 01 d9             	add    %r11,%r9
   1400025f2:	4c 89 c8             	mov    %r9,%rax
   1400025f5:	c3                   	ret
   1400025f6:	90                   	nop
   1400025f7:	90                   	nop
   1400025f8:	90                   	nop
   1400025f9:	90                   	nop
   1400025fa:	90                   	nop
   1400025fb:	90                   	nop
   1400025fc:	90                   	nop
   1400025fd:	90                   	nop
   1400025fe:	90                   	nop
   1400025ff:	90                   	nop

0000000140002600 <___chkstk_ms>:
   140002600:	51                   	push   %rcx
   140002601:	50                   	push   %rax
   140002602:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002608:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000260d:	72 19                	jb     140002628 <___chkstk_ms+0x28>
   14000260f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002616:	48 83 09 00          	orq    $0x0,(%rcx)
   14000261a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002620:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002626:	77 e7                	ja     14000260f <___chkstk_ms+0xf>
   140002628:	48 29 c1             	sub    %rax,%rcx
   14000262b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000262f:	58                   	pop    %rax
   140002630:	59                   	pop    %rcx
   140002631:	c3                   	ret
   140002632:	90                   	nop
   140002633:	90                   	nop
   140002634:	90                   	nop
   140002635:	90                   	nop
   140002636:	90                   	nop
   140002637:	90                   	nop
   140002638:	90                   	nop
   140002639:	90                   	nop
   14000263a:	90                   	nop
   14000263b:	90                   	nop
   14000263c:	90                   	nop
   14000263d:	90                   	nop
   14000263e:	90                   	nop
   14000263f:	90                   	nop

0000000140002640 <vfprintf>:
   140002640:	48 83 ec 38          	sub    $0x38,%rsp
   140002644:	45 31 c9             	xor    %r9d,%r9d
   140002647:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000264c:	49 89 d0             	mov    %rdx,%r8
   14000264f:	48 89 ca             	mov    %rcx,%rdx
   140002652:	31 c9                	xor    %ecx,%ecx
   140002654:	e8 4f 03 00 00       	call   1400029a8 <__stdio_common_vfprintf>
   140002659:	48 83 c4 38          	add    $0x38,%rsp
   14000265d:	c3                   	ret
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <scanf>:
   140002660:	56                   	push   %rsi
   140002661:	53                   	push   %rbx
   140002662:	48 83 ec 48          	sub    $0x48,%rsp
   140002666:	48 89 cb             	mov    %rcx,%rbx
   140002669:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   14000266e:	31 c9                	xor    %ecx,%ecx
   140002670:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   140002675:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   14000267a:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   14000267f:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   140002684:	e8 07 03 00 00       	call   140002990 <__acrt_iob_func>
   140002689:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000268e:	45 31 c9             	xor    %r9d,%r9d
   140002691:	49 89 d8             	mov    %rbx,%r8
   140002694:	48 89 c2             	mov    %rax,%rdx
   140002697:	31 c9                	xor    %ecx,%ecx
   140002699:	e8 12 03 00 00       	call   1400029b0 <__stdio_common_vfscanf>
   14000269e:	48 83 c4 48          	add    $0x48,%rsp
   1400026a2:	5b                   	pop    %rbx
   1400026a3:	5e                   	pop    %rsi
   1400026a4:	c3                   	ret
   1400026a5:	90                   	nop
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop
   1400026a8:	90                   	nop
   1400026a9:	90                   	nop
   1400026aa:	90                   	nop
   1400026ab:	90                   	nop
   1400026ac:	90                   	nop
   1400026ad:	90                   	nop
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <printf>:
   1400026b0:	56                   	push   %rsi
   1400026b1:	53                   	push   %rbx
   1400026b2:	48 83 ec 48          	sub    $0x48,%rsp
   1400026b6:	48 89 cb             	mov    %rcx,%rbx
   1400026b9:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   1400026be:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400026c3:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   1400026c8:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   1400026cd:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   1400026d2:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   1400026d7:	e8 b4 02 00 00       	call   140002990 <__acrt_iob_func>
   1400026dc:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   1400026e1:	45 31 c9             	xor    %r9d,%r9d
   1400026e4:	49 89 d8             	mov    %rbx,%r8
   1400026e7:	48 89 c2             	mov    %rax,%rdx
   1400026ea:	31 c9                	xor    %ecx,%ecx
   1400026ec:	e8 b7 02 00 00       	call   1400029a8 <__stdio_common_vfprintf>
   1400026f1:	48 83 c4 48          	add    $0x48,%rsp
   1400026f5:	5b                   	pop    %rbx
   1400026f6:	5e                   	pop    %rsi
   1400026f7:	c3                   	ret
   1400026f8:	90                   	nop
   1400026f9:	90                   	nop
   1400026fa:	90                   	nop
   1400026fb:	90                   	nop
   1400026fc:	90                   	nop
   1400026fd:	90                   	nop
   1400026fe:	90                   	nop
   1400026ff:	90                   	nop

0000000140002700 <fprintf>:
   140002700:	48 83 ec 48          	sub    $0x48,%rsp
   140002704:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002709:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000270e:	49 89 d0             	mov    %rdx,%r8
   140002711:	48 89 ca             	mov    %rcx,%rdx
   140002714:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002719:	31 c9                	xor    %ecx,%ecx
   14000271b:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002720:	45 31 c9             	xor    %r9d,%r9d
   140002723:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002728:	e8 7b 02 00 00       	call   1400029a8 <__stdio_common_vfprintf>
   14000272d:	48 83 c4 48          	add    $0x48,%rsp
   140002731:	c3                   	ret
   140002732:	90                   	nop
   140002733:	90                   	nop
   140002734:	90                   	nop
   140002735:	90                   	nop
   140002736:	90                   	nop
   140002737:	90                   	nop
   140002738:	90                   	nop
   140002739:	90                   	nop
   14000273a:	90                   	nop
   14000273b:	90                   	nop
   14000273c:	90                   	nop
   14000273d:	90                   	nop
   14000273e:	90                   	nop
   14000273f:	90                   	nop

0000000140002740 <_get_output_format>:
   140002740:	31 c0                	xor    %eax,%eax
   140002742:	c3                   	ret
   140002743:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000274a:	00 00 00 00 
   14000274e:	66 90                	xchg   %ax,%ax

0000000140002750 <__getmainargs>:
   140002750:	41 54                	push   %r12
   140002752:	55                   	push   %rbp
   140002753:	57                   	push   %rdi
   140002754:	56                   	push   %rsi
   140002755:	53                   	push   %rbx
   140002756:	48 83 ec 20          	sub    $0x20,%rsp
   14000275a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000275f:	44 89 cd             	mov    %r9d,%ebp
   140002762:	48 89 d6             	mov    %rdx,%rsi
   140002765:	4c 89 c3             	mov    %r8,%rbx
   140002768:	48 89 cf             	mov    %rcx,%rdi
   14000276b:	e8 a8 02 00 00       	call   140002a18 <_initialize_narrow_environment>
   140002770:	83 fd 01             	cmp    $0x1,%ebp
   140002773:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002778:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000277b:	e8 70 02 00 00       	call   1400029f0 <_configure_narrow_argv>
   140002780:	e8 4b 02 00 00       	call   1400029d0 <__p___argc>
   140002785:	8b 00                	mov    (%rax),%eax
   140002787:	89 07                	mov    %eax,(%rdi)
   140002789:	e8 4a 02 00 00       	call   1400029d8 <__p___argv>
   14000278e:	48 8b 00             	mov    (%rax),%rax
   140002791:	48 89 06             	mov    %rax,(%rsi)
   140002794:	e8 07 03 00 00       	call   140002aa0 <__p__environ>
   140002799:	48 8b 00             	mov    (%rax),%rax
   14000279c:	48 89 03             	mov    %rax,(%rbx)
   14000279f:	4d 85 e4             	test   %r12,%r12
   1400027a2:	74 09                	je     1400027ad <__getmainargs+0x5d>
   1400027a4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400027a8:	e8 d3 02 00 00       	call   140002a80 <_set_new_mode>
   1400027ad:	31 c0                	xor    %eax,%eax
   1400027af:	48 83 c4 20          	add    $0x20,%rsp
   1400027b3:	5b                   	pop    %rbx
   1400027b4:	5e                   	pop    %rsi
   1400027b5:	5f                   	pop    %rdi
   1400027b6:	5d                   	pop    %rbp
   1400027b7:	41 5c                	pop    %r12
   1400027b9:	c3                   	ret
   1400027ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400027c0 <__wgetmainargs>:
   1400027c0:	41 54                	push   %r12
   1400027c2:	55                   	push   %rbp
   1400027c3:	57                   	push   %rdi
   1400027c4:	56                   	push   %rsi
   1400027c5:	53                   	push   %rbx
   1400027c6:	48 83 ec 20          	sub    $0x20,%rsp
   1400027ca:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1400027cf:	44 89 cd             	mov    %r9d,%ebp
   1400027d2:	48 89 d6             	mov    %rdx,%rsi
   1400027d5:	4c 89 c3             	mov    %r8,%rbx
   1400027d8:	48 89 cf             	mov    %rcx,%rdi
   1400027db:	e8 40 02 00 00       	call   140002a20 <_initialize_wide_environment>
   1400027e0:	83 fd 01             	cmp    $0x1,%ebp
   1400027e3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400027e8:	83 d9 ff             	sbb    $0xffffffff,%ecx
   1400027eb:	e8 08 02 00 00       	call   1400029f8 <_configure_wide_argv>
   1400027f0:	e8 db 01 00 00       	call   1400029d0 <__p___argc>
   1400027f5:	8b 00                	mov    (%rax),%eax
   1400027f7:	89 07                	mov    %eax,(%rdi)
   1400027f9:	e8 e2 01 00 00       	call   1400029e0 <__p___wargv>
   1400027fe:	48 8b 00             	mov    (%rax),%rax
   140002801:	48 89 06             	mov    %rax,(%rsi)
   140002804:	e8 9f 02 00 00       	call   140002aa8 <__p__wenviron>
   140002809:	48 8b 00             	mov    (%rax),%rax
   14000280c:	48 89 03             	mov    %rax,(%rbx)
   14000280f:	4d 85 e4             	test   %r12,%r12
   140002812:	74 09                	je     14000281d <__wgetmainargs+0x5d>
   140002814:	41 8b 0c 24          	mov    (%r12),%ecx
   140002818:	e8 63 02 00 00       	call   140002a80 <_set_new_mode>
   14000281d:	31 c0                	xor    %eax,%eax
   14000281f:	48 83 c4 20          	add    $0x20,%rsp
   140002823:	5b                   	pop    %rbx
   140002824:	5e                   	pop    %rsi
   140002825:	5f                   	pop    %rdi
   140002826:	5d                   	pop    %rbp
   140002827:	41 5c                	pop    %r12
   140002829:	c3                   	ret
   14000282a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002830 <_onexit>:
   140002830:	53                   	push   %rbx
   140002831:	48 83 ec 20          	sub    $0x20,%rsp
   140002835:	48 89 cb             	mov    %rcx,%rbx
   140002838:	e8 cb 01 00 00       	call   140002a08 <_crt_atexit>
   14000283d:	85 c0                	test   %eax,%eax
   14000283f:	b8 00 00 00 00       	mov    $0x0,%eax
   140002844:	48 0f 44 c3          	cmove  %rbx,%rax
   140002848:	48 83 c4 20          	add    $0x20,%rsp
   14000284c:	5b                   	pop    %rbx
   14000284d:	c3                   	ret
   14000284e:	66 90                	xchg   %ax,%ax

0000000140002850 <at_quick_exit>:
   140002850:	48 8b 05 09 1c 00 00 	mov    0x1c09(%rip),%rax        # 140004460 <.refptr.__mingw_module_is_dll>
   140002857:	80 38 00             	cmpb   $0x0,(%rax)
   14000285a:	74 04                	je     140002860 <at_quick_exit+0x10>
   14000285c:	31 c0                	xor    %eax,%eax
   14000285e:	c3                   	ret
   14000285f:	90                   	nop
   140002860:	e9 9b 01 00 00       	jmp    140002a00 <_crt_at_quick_exit>
   140002865:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000286c:	00 00 00 00 

0000000140002870 <_amsg_exit>:
   140002870:	53                   	push   %rbx
   140002871:	48 83 ec 20          	sub    $0x20,%rsp
   140002875:	89 cb                	mov    %ecx,%ebx
   140002877:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000287c:	e8 0f 01 00 00       	call   140002990 <__acrt_iob_func>
   140002881:	41 89 d8             	mov    %ebx,%r8d
   140002884:	48 8d 15 e5 1a 00 00 	lea    0x1ae5(%rip),%rdx        # 140004370 <.rdata>
   14000288b:	48 89 c1             	mov    %rax,%rcx
   14000288e:	e8 6d fe ff ff       	call   140002700 <fprintf>
   140002893:	b9 ff 00 00 00       	mov    $0xff,%ecx
   140002898:	e8 73 01 00 00       	call   140002a10 <_exit>
   14000289d:	90                   	nop
   14000289e:	66 90                	xchg   %ax,%ax

00000001400028a0 <__ms_fwprintf>:
   1400028a0:	48 83 ec 48          	sub    $0x48,%rsp
   1400028a4:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   1400028a9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400028ae:	49 89 d0             	mov    %rdx,%r8
   1400028b1:	48 89 ca             	mov    %rcx,%rdx
   1400028b4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400028b9:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400028be:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400028c3:	45 31 c9             	xor    %r9d,%r9d
   1400028c6:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400028cb:	e8 e8 00 00 00       	call   1400029b8 <__stdio_common_vfwprintf>
   1400028d0:	48 83 c4 48          	add    $0x48,%rsp
   1400028d4:	c3                   	ret
   1400028d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400028dc:	00 00 00 00 

00000001400028e0 <tzset>:
   1400028e0:	48 83 ec 28          	sub    $0x28,%rsp
   1400028e4:	48 8b 05 25 1b 00 00 	mov    0x1b25(%rip),%rax        # 140004410 <.refptr.__imp__tzset>
   1400028eb:	ff 10                	call   *(%rax)
   1400028ed:	e8 7e 00 00 00       	call   140002970 <__tzname>
   1400028f2:	48 89 05 e7 07 00 00 	mov    %rax,0x7e7(%rip)        # 1400030e0 <__imp_tzname>
   1400028f9:	e8 6a 00 00 00       	call   140002968 <__timezone>
   1400028fe:	48 89 05 d3 07 00 00 	mov    %rax,0x7d3(%rip)        # 1400030d8 <__imp_timezone>
   140002905:	e8 56 00 00 00       	call   140002960 <__daylight>
   14000290a:	48 89 05 bf 07 00 00 	mov    %rax,0x7bf(%rip)        # 1400030d0 <__imp_daylight>
   140002911:	48 83 c4 28          	add    $0x28,%rsp
   140002915:	c3                   	ret
   140002916:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000291d:	00 00 00 

0000000140002920 <_tzset>:
   140002920:	48 83 ec 28          	sub    $0x28,%rsp
   140002924:	48 8b 05 e5 1a 00 00 	mov    0x1ae5(%rip),%rax        # 140004410 <.refptr.__imp__tzset>
   14000292b:	ff 10                	call   *(%rax)
   14000292d:	e8 3e 00 00 00       	call   140002970 <__tzname>
   140002932:	48 89 05 a7 07 00 00 	mov    %rax,0x7a7(%rip)        # 1400030e0 <__imp_tzname>
   140002939:	e8 2a 00 00 00       	call   140002968 <__timezone>
   14000293e:	48 89 05 93 07 00 00 	mov    %rax,0x793(%rip)        # 1400030d8 <__imp_timezone>
   140002945:	e8 16 00 00 00       	call   140002960 <__daylight>
   14000294a:	48 89 05 7f 07 00 00 	mov    %rax,0x77f(%rip)        # 1400030d0 <__imp_daylight>
   140002951:	48 83 c4 28          	add    $0x28,%rsp
   140002955:	c3                   	ret
   140002956:	90                   	nop
   140002957:	90                   	nop
   140002958:	90                   	nop
   140002959:	90                   	nop
   14000295a:	90                   	nop
   14000295b:	90                   	nop
   14000295c:	90                   	nop
   14000295d:	90                   	nop
   14000295e:	90                   	nop
   14000295f:	90                   	nop

0000000140002960 <__daylight>:
   140002960:	ff 25 ea 5a 00 00    	jmp    *0x5aea(%rip)        # 140008450 <__imp___daylight>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <__timezone>:
   140002968:	ff 25 ea 5a 00 00    	jmp    *0x5aea(%rip)        # 140008458 <__imp___timezone>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <__tzname>:
   140002970:	ff 25 ea 5a 00 00    	jmp    *0x5aea(%rip)        # 140008460 <__imp___tzname>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <.text>:
   140002978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000297f:	00 

0000000140002980 <strlen>:
   140002980:	ff 25 b2 5a 00 00    	jmp    *0x5ab2(%rip)        # 140008438 <__imp_strlen>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <strncmp>:
   140002988:	ff 25 b2 5a 00 00    	jmp    *0x5ab2(%rip)        # 140008440 <__imp_strncmp>
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <__acrt_iob_func>:
   140002990:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 1400083f0 <__imp___acrt_iob_func>
   140002996:	90                   	nop
   140002997:	90                   	nop

0000000140002998 <__p__commode>:
   140002998:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 1400083f8 <__imp___p__commode>
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <__p__fmode>:
   1400029a0:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008400 <__imp___p__fmode>
   1400029a6:	90                   	nop
   1400029a7:	90                   	nop

00000001400029a8 <__stdio_common_vfprintf>:
   1400029a8:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008408 <__imp___stdio_common_vfprintf>
   1400029ae:	90                   	nop
   1400029af:	90                   	nop

00000001400029b0 <__stdio_common_vfscanf>:
   1400029b0:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008410 <__imp___stdio_common_vfscanf>
   1400029b6:	90                   	nop
   1400029b7:	90                   	nop

00000001400029b8 <__stdio_common_vfwprintf>:
   1400029b8:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008418 <__imp___stdio_common_vfwprintf>
   1400029be:	90                   	nop
   1400029bf:	90                   	nop

00000001400029c0 <fwrite>:
   1400029c0:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008420 <__imp_fwrite>
   1400029c6:	90                   	nop
   1400029c7:	90                   	nop

00000001400029c8 <puts>:
   1400029c8:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008428 <__imp_puts>
   1400029ce:	90                   	nop
   1400029cf:	90                   	nop

00000001400029d0 <__p___argc>:
   1400029d0:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008360 <__imp___p___argc>
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop

00000001400029d8 <__p___argv>:
   1400029d8:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008368 <__imp___p___argv>
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <__p___wargv>:
   1400029e0:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008370 <__imp___p___wargv>
   1400029e6:	90                   	nop
   1400029e7:	90                   	nop

00000001400029e8 <_cexit>:
   1400029e8:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008378 <__imp__cexit>
   1400029ee:	90                   	nop
   1400029ef:	90                   	nop

00000001400029f0 <_configure_narrow_argv>:
   1400029f0:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008380 <__imp__configure_narrow_argv>
   1400029f6:	90                   	nop
   1400029f7:	90                   	nop

00000001400029f8 <_configure_wide_argv>:
   1400029f8:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008388 <__imp__configure_wide_argv>
   1400029fe:	90                   	nop
   1400029ff:	90                   	nop

0000000140002a00 <_crt_at_quick_exit>:
   140002a00:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008390 <__imp__crt_at_quick_exit>
   140002a06:	90                   	nop
   140002a07:	90                   	nop

0000000140002a08 <_crt_atexit>:
   140002a08:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008398 <__imp__crt_atexit>
   140002a0e:	90                   	nop
   140002a0f:	90                   	nop

0000000140002a10 <_exit>:
   140002a10:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083a0 <__imp__exit>
   140002a16:	90                   	nop
   140002a17:	90                   	nop

0000000140002a18 <_initialize_narrow_environment>:
   140002a18:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083a8 <__imp__initialize_narrow_environment>
   140002a1e:	90                   	nop
   140002a1f:	90                   	nop

0000000140002a20 <_initialize_wide_environment>:
   140002a20:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083b0 <__imp__initialize_wide_environment>
   140002a26:	90                   	nop
   140002a27:	90                   	nop

0000000140002a28 <_initterm>:
   140002a28:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083b8 <__imp__initterm>
   140002a2e:	90                   	nop
   140002a2f:	90                   	nop

0000000140002a30 <__set_app_type>:
   140002a30:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083c0 <__imp___set_app_type>
   140002a36:	90                   	nop
   140002a37:	90                   	nop

0000000140002a38 <_set_invalid_parameter_handler>:
   140002a38:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083c8 <__imp__set_invalid_parameter_handler>
   140002a3e:	90                   	nop
   140002a3f:	90                   	nop

0000000140002a40 <abort>:
   140002a40:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083d0 <__imp_abort>
   140002a46:	90                   	nop
   140002a47:	90                   	nop

0000000140002a48 <exit>:
   140002a48:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083d8 <__imp_exit>
   140002a4e:	90                   	nop
   140002a4f:	90                   	nop

0000000140002a50 <signal>:
   140002a50:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 1400083e0 <__imp_signal>
   140002a56:	90                   	nop
   140002a57:	90                   	nop
   140002a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a5f:	00 

0000000140002a60 <__C_specific_handler>:
   140002a60:	ff 25 e2 58 00 00    	jmp    *0x58e2(%rip)        # 140008348 <__imp___C_specific_handler>
   140002a66:	90                   	nop
   140002a67:	90                   	nop

0000000140002a68 <memcpy>:
   140002a68:	ff 25 e2 58 00 00    	jmp    *0x58e2(%rip)        # 140008350 <__imp_memcpy>
   140002a6e:	90                   	nop
   140002a6f:	90                   	nop

0000000140002a70 <__setusermatherr>:
   140002a70:	ff 25 c2 58 00 00    	jmp    *0x58c2(%rip)        # 140008338 <__imp___setusermatherr>
   140002a76:	90                   	nop
   140002a77:	90                   	nop
   140002a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a7f:	00 

0000000140002a80 <_set_new_mode>:
   140002a80:	ff 25 8a 58 00 00    	jmp    *0x588a(%rip)        # 140008310 <__imp__set_new_mode>
   140002a86:	90                   	nop
   140002a87:	90                   	nop

0000000140002a88 <calloc>:
   140002a88:	ff 25 8a 58 00 00    	jmp    *0x588a(%rip)        # 140008318 <__imp_calloc>
   140002a8e:	90                   	nop
   140002a8f:	90                   	nop

0000000140002a90 <free>:
   140002a90:	ff 25 8a 58 00 00    	jmp    *0x588a(%rip)        # 140008320 <__imp_free>
   140002a96:	90                   	nop
   140002a97:	90                   	nop

0000000140002a98 <malloc>:
   140002a98:	ff 25 8a 58 00 00    	jmp    *0x588a(%rip)        # 140008328 <__imp_malloc>
   140002a9e:	90                   	nop
   140002a9f:	90                   	nop

0000000140002aa0 <__p__environ>:
   140002aa0:	ff 25 52 58 00 00    	jmp    *0x5852(%rip)        # 1400082f8 <__imp___p__environ>
   140002aa6:	90                   	nop
   140002aa7:	90                   	nop

0000000140002aa8 <__p__wenviron>:
   140002aa8:	ff 25 52 58 00 00    	jmp    *0x5852(%rip)        # 140008300 <__imp___p__wenviron>
   140002aae:	90                   	nop
   140002aaf:	90                   	nop

0000000140002ab0 <VirtualQuery>:
   140002ab0:	ff 25 32 58 00 00    	jmp    *0x5832(%rip)        # 1400082e8 <__imp_VirtualQuery>
   140002ab6:	90                   	nop
   140002ab7:	90                   	nop

0000000140002ab8 <VirtualProtect>:
   140002ab8:	ff 25 22 58 00 00    	jmp    *0x5822(%rip)        # 1400082e0 <__imp_VirtualProtect>
   140002abe:	90                   	nop
   140002abf:	90                   	nop

0000000140002ac0 <TlsGetValue>:
   140002ac0:	ff 25 12 58 00 00    	jmp    *0x5812(%rip)        # 1400082d8 <__imp_TlsGetValue>
   140002ac6:	90                   	nop
   140002ac7:	90                   	nop

0000000140002ac8 <Sleep>:
   140002ac8:	ff 25 02 58 00 00    	jmp    *0x5802(%rip)        # 1400082d0 <__imp_Sleep>
   140002ace:	90                   	nop
   140002acf:	90                   	nop

0000000140002ad0 <SetUnhandledExceptionFilter>:
   140002ad0:	ff 25 f2 57 00 00    	jmp    *0x57f2(%rip)        # 1400082c8 <__imp_SetUnhandledExceptionFilter>
   140002ad6:	90                   	nop
   140002ad7:	90                   	nop

0000000140002ad8 <LeaveCriticalSection>:
   140002ad8:	ff 25 e2 57 00 00    	jmp    *0x57e2(%rip)        # 1400082c0 <__imp_LeaveCriticalSection>
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <InitializeCriticalSection>:
   140002ae0:	ff 25 d2 57 00 00    	jmp    *0x57d2(%rip)        # 1400082b8 <__imp_InitializeCriticalSection>
   140002ae6:	90                   	nop
   140002ae7:	90                   	nop

0000000140002ae8 <GetLastError>:
   140002ae8:	ff 25 c2 57 00 00    	jmp    *0x57c2(%rip)        # 1400082b0 <__imp_GetLastError>
   140002aee:	90                   	nop
   140002aef:	90                   	nop

0000000140002af0 <EnterCriticalSection>:
   140002af0:	ff 25 b2 57 00 00    	jmp    *0x57b2(%rip)        # 1400082a8 <__imp_EnterCriticalSection>
   140002af6:	90                   	nop
   140002af7:	90                   	nop

0000000140002af8 <DeleteCriticalSection>:
   140002af8:	ff 25 a2 57 00 00    	jmp    *0x57a2(%rip)        # 1400082a0 <__IAT_start__>
   140002afe:	90                   	nop
   140002aff:	90                   	nop

0000000140002b00 <register_frame_ctor>:
   140002b00:	e9 2b e9 ff ff       	jmp    140001430 <__gcc_register_frame>
   140002b05:	90                   	nop
   140002b06:	90                   	nop
   140002b07:	90                   	nop
   140002b08:	90                   	nop
   140002b09:	90                   	nop
   140002b0a:	90                   	nop
   140002b0b:	90                   	nop
   140002b0c:	90                   	nop
   140002b0d:	90                   	nop
   140002b0e:	90                   	nop
   140002b0f:	90                   	nop

0000000140002b10 <__CTOR_LIST__>:
   140002b10:	ff                   	(bad)
   140002b11:	ff                   	(bad)
   140002b12:	ff                   	(bad)
   140002b13:	ff                   	(bad)
   140002b14:	ff                   	(bad)
   140002b15:	ff                   	(bad)
   140002b16:	ff                   	(bad)
   140002b17:	ff                   	.byte 0xff

0000000140002b18 <.ctors.65535>:
   140002b18:	00 2b                	add    %ch,(%rbx)
   140002b1a:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002b28 <__DTOR_LIST__>:
   140002b28:	ff                   	(bad)
   140002b29:	ff                   	(bad)
   140002b2a:	ff                   	(bad)
   140002b2b:	ff                   	(bad)
   140002b2c:	ff                   	(bad)
   140002b2d:	ff                   	(bad)
   140002b2e:	ff                   	(bad)
   140002b2f:	ff 00                	incl   (%rax)
   140002b31:	00 00                	add    %al,(%rax)
   140002b33:	00 00                	add    %al,(%rax)
   140002b35:	00 00                	add    %al,(%rax)
	...
