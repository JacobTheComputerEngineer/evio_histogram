; ModuleID = 'C:/Users/theen/OneDrive/Desktop/JLab24/Trigger/Evio/sbs-online-gem-evioprocessor/hls_project/mpd_data_processor/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<event_data_t, 0>" = type { %struct.event_data_t }
%struct.event_data_t = type { %"struct.ap_uint<32>", %"struct.ap_uint<1>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<5>" = type { %"struct.ap_int_base<5, false>" }
%"struct.ap_int_base<5, false>" = type { %"struct.ssdm_int<5, false>" }
%"struct.ssdm_int<5, false>" = type { i5 }
%"struct.ap_int<26>" = type { %"struct.ap_int_base<26, true>" }
%"struct.ap_int_base<26, true>" = type { %"struct.ssdm_int<26, true>" }
%"struct.ssdm_int<26, true>" = type { i26 }
%"struct.ap_int<13>" = type { %"struct.ap_int_base<13, true>" }
%"struct.ap_int_base<13, true>" = type { %"struct.ssdm_int<13, true>" }
%"struct.ssdm_int<13, true>" = type { i13 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_mpd_data_processor_main_ir(%"class.hls::stream<event_data_t, 0>"* noalias nocapture nonnull dereferenceable(8) %s_evIn, %"class.hls::stream<event_data_t, 0>"* noalias nocapture nonnull dereferenceable(8) %s_evOut, %"struct.ap_uint<1>"* nocapture readonly %build_all_samples, %"struct.ap_uint<1>"* nocapture readonly %build_debug_headers, %"struct.ap_uint<1>"* nocapture readonly %enable_cm, %"struct.ap_uint<5>"* nocapture readonly %fiber, [64 x %"struct.ap_int<26>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %m_offset, [128 x %"struct.ap_int<13>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %m_apvThr, [128 x %"struct.ap_int<13>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %m_apvThrB) local_unnamed_addr #1 {
entry:
  %s_evIn_copy = alloca i33, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i33* %s_evIn_copy, i32 0) ]
  %s_evOut_copy = alloca i33, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i33* %s_evOut_copy, i32 0) ]
  %malloccall = call i8* @malloc(i64 4096)
  %m_offset_copy = bitcast i8* %malloccall to [16 x [64 x i26]]*
  %malloccall1 = call i8* @malloc(i64 4096)
  %m_apvThr_copy = bitcast i8* %malloccall1 to [16 x [128 x i13]]*
  %malloccall2 = call i8* @malloc(i64 4096)
  %m_apvThrB_copy = bitcast i8* %malloccall2 to [16 x [128 x i13]]*
  %0 = bitcast [64 x %"struct.ap_int<26>"]* %m_offset to [16 x [64 x %"struct.ap_int<26>"]]*
  %1 = bitcast [128 x %"struct.ap_int<13>"]* %m_apvThr to [16 x [128 x %"struct.ap_int<13>"]]*
  %2 = bitcast [128 x %"struct.ap_int<13>"]* %m_apvThrB to [16 x [128 x %"struct.ap_int<13>"]]*
  call fastcc void @copy_in(%"class.hls::stream<event_data_t, 0>"* nonnull %s_evIn, i33* nonnull align 512 %s_evIn_copy, %"class.hls::stream<event_data_t, 0>"* nonnull %s_evOut, i33* nonnull align 512 %s_evOut_copy, [16 x [64 x %"struct.ap_int<26>"]]* nonnull %0, [16 x [64 x i26]]* %m_offset_copy, [16 x [128 x %"struct.ap_int<13>"]]* nonnull %1, [16 x [128 x i13]]* %m_apvThr_copy, [16 x [128 x %"struct.ap_int<13>"]]* nonnull %2, [16 x [128 x i13]]* %m_apvThrB_copy)
  call void @apatb_mpd_data_processor_main_hw(i33* %s_evIn_copy, i33* %s_evOut_copy, %"struct.ap_uint<1>"* %build_all_samples, %"struct.ap_uint<1>"* %build_debug_headers, %"struct.ap_uint<1>"* %enable_cm, %"struct.ap_uint<5>"* %fiber, [16 x [64 x i26]]* %m_offset_copy, [16 x [128 x i13]]* %m_apvThr_copy, [16 x [128 x i13]]* %m_apvThrB_copy)
  call void @copy_back(%"class.hls::stream<event_data_t, 0>"* %s_evIn, i33* %s_evIn_copy, %"class.hls::stream<event_data_t, 0>"* %s_evOut, i33* %s_evOut_copy, [16 x [64 x %"struct.ap_int<26>"]]* %0, [16 x [64 x i26]]* %m_offset_copy, [16 x [128 x %"struct.ap_int<13>"]]* %1, [16 x [128 x i13]]* %m_apvThr_copy, [16 x [128 x %"struct.ap_int<13>"]]* %2, [16 x [128 x i13]]* %m_apvThrB_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<event_data_t, 0>"* noalias, i33* noalias align 512, %"class.hls::stream<event_data_t, 0>"* noalias, i33* noalias align 512, [16 x [64 x %"struct.ap_int<26>"]]* noalias readonly, [16 x [64 x i26]]* noalias, [16 x [128 x %"struct.ap_int<13>"]]* noalias readonly, [16 x [128 x i13]]* noalias, [16 x [128 x %"struct.ap_int<13>"]]* noalias readonly, [16 x [128 x i13]]* noalias) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>"(i33* align 512 %1, %"class.hls::stream<event_data_t, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>"(i33* align 512 %3, %"class.hls::stream<event_data_t, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0a16a64struct.ap_int<26>"([16 x [64 x i26]]* %5, [16 x [64 x %"struct.ap_int<26>"]]* %4)
  call fastcc void @"onebyonecpy_hls.p0a16a128struct.ap_int<13>.51"([16 x [128 x i13]]* %7, [16 x [128 x %"struct.ap_int<13>"]]* %6)
  call fastcc void @"onebyonecpy_hls.p0a16a128struct.ap_int<13>.51"([16 x [128 x i13]]* %9, [16 x [128 x %"struct.ap_int<13>"]]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16a64struct.ap_int<26>"([16 x [64 x i26]]* noalias %dst, [16 x [64 x %"struct.ap_int<26>"]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x [64 x i26]]* %dst, null
  %1 = icmp eq [16 x [64 x %"struct.ap_int<26>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16a64struct.ap_int<26>"([16 x [64 x i26]]* nonnull %dst, [16 x [64 x %"struct.ap_int<26>"]]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a16a64struct.ap_int<26>"([16 x [64 x i26]]* %dst, [16 x [64 x %"struct.ap_int<26>"]]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [16 x [64 x %"struct.ap_int<26>"]]* %src, null
  %1 = icmp eq [16 x [64 x i26]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [16 x [64 x i26]], [16 x [64 x i26]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x [64 x %"struct.ap_int<26>"]], [16 x [64 x %"struct.ap_int<26>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a64struct.ap_int<26>"([64 x i26]* %3, [64 x %"struct.ap_int<26>"]* %src.addr, i64 64)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a64struct.ap_int<26>"([64 x i26]* %dst, [64 x %"struct.ap_int<26>"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [64 x %"struct.ap_int<26>"]* %src, null
  %1 = icmp eq [64 x i26]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_int<26>"], [64 x %"struct.ap_int<26>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [64 x i26], [64 x i26]* %dst, i64 0, i64 %for.loop.idx8
  %4 = bitcast i26* %src.addr.0.0.05 to i32*
  %5 = load i32, i32* %4
  %6 = trunc i32 %5 to i26
  store i26 %6, i26* %3, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128struct.ap_int<13>"([128 x %"struct.ap_int<13>"]* %dst, [128 x %"struct.ap_int<13>"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [128 x %"struct.ap_int<13>"]* %src, null
  %1 = icmp eq [128 x %"struct.ap_int<13>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_int<13>"], [128 x %"struct.ap_int<13>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_int<13>"], [128 x %"struct.ap_int<13>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = bitcast i13* %src.addr.0.0.05 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i13
  store i13 %5, i13* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<event_data_t, 0>"* noalias, i33* noalias align 512, %"class.hls::stream<event_data_t, 0>"* noalias, i33* noalias align 512, [16 x [64 x %"struct.ap_int<26>"]]* noalias, [16 x [64 x i26]]* noalias readonly, [16 x [128 x %"struct.ap_int<13>"]]* noalias, [16 x [128 x i13]]* noalias readonly, [16 x [128 x %"struct.ap_int<13>"]]* noalias, [16 x [128 x i13]]* noalias readonly) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>.89"(%"class.hls::stream<event_data_t, 0>"* %0, i33* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>.89"(%"class.hls::stream<event_data_t, 0>"* %2, i33* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a16a64struct.ap_int<26>.68"([16 x [64 x %"struct.ap_int<26>"]]* %4, [16 x [64 x i26]]* %5)
  call fastcc void @"onebyonecpy_hls.p0a16a128struct.ap_int<13>"([16 x [128 x %"struct.ap_int<13>"]]* %6, [16 x [128 x i13]]* %7)
  call fastcc void @"onebyonecpy_hls.p0a16a128struct.ap_int<13>"([16 x [128 x %"struct.ap_int<13>"]]* %8, [16 x [128 x i13]]* %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16a128struct.ap_int<13>"([16 x [128 x %"struct.ap_int<13>"]]* noalias %dst, [16 x [128 x i13]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x [128 x %"struct.ap_int<13>"]]* %dst, null
  %1 = icmp eq [16 x [128 x i13]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16a128struct.ap_int<13>.44"([16 x [128 x %"struct.ap_int<13>"]]* nonnull %dst, [16 x [128 x i13]]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a16a128struct.ap_int<13>.44"([16 x [128 x %"struct.ap_int<13>"]]* %dst, [16 x [128 x i13]]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [16 x [128 x i13]]* %src, null
  %1 = icmp eq [16 x [128 x %"struct.ap_int<13>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x [128 x %"struct.ap_int<13>"]], [16 x [128 x %"struct.ap_int<13>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [16 x [128 x i13]], [16 x [128 x i13]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a128struct.ap_int<13>.47"([128 x %"struct.ap_int<13>"]* %dst.addr, [128 x i13]* %3, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128struct.ap_int<13>.47"([128 x %"struct.ap_int<13>"]* %dst, [128 x i13]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [128 x i13]* %src, null
  %1 = icmp eq [128 x %"struct.ap_int<13>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [128 x i13], [128 x i13]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_int<13>"], [128 x %"struct.ap_int<13>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = bitcast i13* %3 to i16*
  %5 = load i16, i16* %4
  %6 = trunc i16 %5 to i13
  store i13 %6, i13* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16a128struct.ap_int<13>.51"([16 x [128 x i13]]* noalias %dst, [16 x [128 x %"struct.ap_int<13>"]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x [128 x i13]]* %dst, null
  %1 = icmp eq [16 x [128 x %"struct.ap_int<13>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16a128struct.ap_int<13>.54"([16 x [128 x i13]]* nonnull %dst, [16 x [128 x %"struct.ap_int<13>"]]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a16a128struct.ap_int<13>.54"([16 x [128 x i13]]* %dst, [16 x [128 x %"struct.ap_int<13>"]]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [16 x [128 x %"struct.ap_int<13>"]]* %src, null
  %1 = icmp eq [16 x [128 x i13]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [16 x [128 x i13]], [16 x [128 x i13]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x [128 x %"struct.ap_int<13>"]], [16 x [128 x %"struct.ap_int<13>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a128struct.ap_int<13>.57"([128 x i13]* %3, [128 x %"struct.ap_int<13>"]* %src.addr, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128struct.ap_int<13>.57"([128 x i13]* %dst, [128 x %"struct.ap_int<13>"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [128 x %"struct.ap_int<13>"]* %src, null
  %1 = icmp eq [128 x i13]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_int<13>"], [128 x %"struct.ap_int<13>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [128 x i13], [128 x i13]* %dst, i64 0, i64 %for.loop.idx8
  %4 = bitcast i13* %src.addr.0.0.05 to i16*
  %5 = load i16, i16* %4
  %6 = trunc i16 %5 to i13
  store i13 %6, i13* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16a64struct.ap_int<26>.68"([16 x [64 x %"struct.ap_int<26>"]]* noalias %dst, [16 x [64 x i26]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x [64 x %"struct.ap_int<26>"]]* %dst, null
  %1 = icmp eq [16 x [64 x i26]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16a64struct.ap_int<26>.71"([16 x [64 x %"struct.ap_int<26>"]]* nonnull %dst, [16 x [64 x i26]]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a16a64struct.ap_int<26>.71"([16 x [64 x %"struct.ap_int<26>"]]* %dst, [16 x [64 x i26]]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [16 x [64 x i26]]* %src, null
  %1 = icmp eq [16 x [64 x %"struct.ap_int<26>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x [64 x %"struct.ap_int<26>"]], [16 x [64 x %"struct.ap_int<26>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [16 x [64 x i26]], [16 x [64 x i26]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a64struct.ap_int<26>.74"([64 x %"struct.ap_int<26>"]* %dst.addr, [64 x i26]* %3, i64 64)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a64struct.ap_int<26>.74"([64 x %"struct.ap_int<26>"]* %dst, [64 x i26]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [64 x i26]* %src, null
  %1 = icmp eq [64 x %"struct.ap_int<26>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [64 x i26], [64 x i26]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_int<26>"], [64 x %"struct.ap_int<26>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = bitcast i26* %3 to i32*
  %5 = load i32, i32* %4
  %6 = trunc i32 %5 to i26
  store i26 %6, i26* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>"(i33* noalias align 512 %dst, %"class.hls::stream<event_data_t, 0>"* noalias %src) unnamed_addr #6 {
entry:
  %0 = icmp eq i33* %dst, null
  %1 = icmp eq %"class.hls::stream<event_data_t, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<event_data_t, 0>.85"(i33* nonnull align 512 %dst, %"class.hls::stream<event_data_t, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<event_data_t, 0>.85"(i33* noalias nocapture align 512, %"class.hls::stream<event_data_t, 0>"* noalias nocapture) unnamed_addr #7 {
entry:
  %2 = alloca %"class.hls::stream<event_data_t, 0>"
  %3 = alloca i33
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<event_data_t, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<event_data_t, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<event_data_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<event_data_t, 0>", %"class.hls::stream<event_data_t, 0>"* %2
  %9 = call i33 @"_llvm.fpga.pack.bits.i33.s_class.hls::stream<event_data_t, 0>s"(%"class.hls::stream<event_data_t, 0>" %8)
  store i33 %9, i33* %3
  %10 = bitcast i33* %3 to i8*
  %11 = bitcast i33* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i33 @"_llvm.fpga.pack.bits.i33.s_class.hls::stream<event_data_t, 0>s"(%"class.hls::stream<event_data_t, 0>" %A) #8 {
  %A.0 = extractvalue %"class.hls::stream<event_data_t, 0>" %A, 0
  %A.0.0 = extractvalue %struct.event_data_t %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<32>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.0.0, 0
  %1 = zext i32 %A.0.0.0.0.0 to i33
  %A.0.1 = extractvalue %struct.event_data_t %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<1>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.1.0.0, 0
  %2 = zext i1 %A.0.1.0.0.0 to i33
  %3 = shl nuw i33 %2, 32
  %4 = or i33 %3, %1
  ret i33 %4
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>.89"(%"class.hls::stream<event_data_t, 0>"* noalias %dst, i33* noalias align 512 %src) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<event_data_t, 0>"* %dst, null
  %1 = icmp eq i33* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<event_data_t, 0>.92"(%"class.hls::stream<event_data_t, 0>"* nonnull %dst, i33* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<event_data_t, 0>.92"(%"class.hls::stream<event_data_t, 0>"* noalias nocapture, i33* noalias nocapture align 512) unnamed_addr #7 {
entry:
  %2 = alloca i33
  %3 = alloca %"class.hls::stream<event_data_t, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i33* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i33* %2 to i8*
  %7 = bitcast i33* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = bitcast i33* %2 to i40*
  %9 = load i40, i40* %8
  %10 = trunc i40 %9 to i33
  %11 = call { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<event_data_t, 0>s.i33"(i33 %10)
  %newret = extractvalue { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } %11, 0
  %oldret1 = insertvalue %struct.event_data_t undef, %"struct.ap_uint<32>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } %11, 1
  %oldret3 = insertvalue %struct.event_data_t %oldret1, %"struct.ap_uint<1>" %newret2, 1
  %oldret = insertvalue %"class.hls::stream<event_data_t, 0>" undef, %struct.event_data_t %oldret3, 0
  store %"class.hls::stream<event_data_t, 0>" %oldret, %"class.hls::stream<event_data_t, 0>"* %3
  %12 = bitcast %"class.hls::stream<event_data_t, 0>"* %3 to i8*
  %13 = bitcast %"class.hls::stream<event_data_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %12, i8* %13)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<event_data_t, 0>s.i33"(i33 %A) #8 {
  %1 = trunc i33 %A to i32
  %.0 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %1, 0
  %.01 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.01, 0
  %2 = lshr i33 %A, 32
  %3 = trunc i33 %2 to i1
  %.04 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %3, 0
  %.05 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %.05, 0
  %newret = insertvalue { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } undef, %"struct.ap_uint<32>" %.02, 0
  %newret2 = insertvalue { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } %newret, %"struct.ap_uint<1>" %.06, 1
  ret { %"struct.ap_uint<32>", %"struct.ap_uint<1>" } %newret2
}

declare void @apatb_mpd_data_processor_main_hw(i33*, i33*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<5>"*, [16 x [64 x i26]]*, [16 x [128 x i13]]*, [16 x [128 x i13]]*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<event_data_t, 0>"* noalias, i33* noalias align 512, %"class.hls::stream<event_data_t, 0>"* noalias, i33* noalias align 512, [16 x [64 x %"struct.ap_int<26>"]]* noalias, [16 x [64 x i26]]* noalias readonly, [16 x [128 x %"struct.ap_int<13>"]]* noalias, [16 x [128 x i13]]* noalias readonly, [16 x [128 x %"struct.ap_int<13>"]]* noalias, [16 x [128 x i13]]* noalias readonly) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>.89"(%"class.hls::stream<event_data_t, 0>"* %0, i33* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<event_data_t, 0>.89"(%"class.hls::stream<event_data_t, 0>"* %2, i33* align 512 %3)
  ret void
}

define void @mpd_data_processor_main_hw_stub_wrapper(i33*, i33*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<5>"*, [16 x [64 x i26]]*, [16 x [128 x i13]]*, [16 x [128 x i13]]*) #9 {
entry:
  %9 = alloca %"class.hls::stream<event_data_t, 0>"
  %10 = alloca %"class.hls::stream<event_data_t, 0>"
  %malloccall = tail call i8* @malloc(i64 4096)
  %11 = bitcast i8* %malloccall to [16 x [64 x %"struct.ap_int<26>"]]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %12 = bitcast i8* %malloccall1 to [16 x [128 x %"struct.ap_int<13>"]]*
  %malloccall2 = tail call i8* @malloc(i64 4096)
  %13 = bitcast i8* %malloccall2 to [16 x [128 x %"struct.ap_int<13>"]]*
  call void @copy_out(%"class.hls::stream<event_data_t, 0>"* %9, i33* %0, %"class.hls::stream<event_data_t, 0>"* %10, i33* %1, [16 x [64 x %"struct.ap_int<26>"]]* %11, [16 x [64 x i26]]* %6, [16 x [128 x %"struct.ap_int<13>"]]* %12, [16 x [128 x i13]]* %7, [16 x [128 x %"struct.ap_int<13>"]]* %13, [16 x [128 x i13]]* %8)
  %14 = bitcast [16 x [64 x %"struct.ap_int<26>"]]* %11 to [64 x %"struct.ap_int<26>"]*
  %15 = bitcast [16 x [128 x %"struct.ap_int<13>"]]* %12 to [128 x %"struct.ap_int<13>"]*
  %16 = bitcast [16 x [128 x %"struct.ap_int<13>"]]* %13 to [128 x %"struct.ap_int<13>"]*
  call void @mpd_data_processor_main_hw_stub(%"class.hls::stream<event_data_t, 0>"* %9, %"class.hls::stream<event_data_t, 0>"* %10, %"struct.ap_uint<1>"* %2, %"struct.ap_uint<1>"* %3, %"struct.ap_uint<1>"* %4, %"struct.ap_uint<5>"* %5, [64 x %"struct.ap_int<26>"]* %14, [128 x %"struct.ap_int<13>"]* %15, [128 x %"struct.ap_int<13>"]* %16)
  call void @copy_in(%"class.hls::stream<event_data_t, 0>"* %9, i33* %0, %"class.hls::stream<event_data_t, 0>"* %10, i33* %1, [16 x [64 x %"struct.ap_int<26>"]]* %11, [16 x [64 x i26]]* %6, [16 x [128 x %"struct.ap_int<13>"]]* %12, [16 x [128 x i13]]* %7, [16 x [128 x %"struct.ap_int<13>"]]* %13, [16 x [128 x i13]]* %8)
  ret void
}

declare void @mpd_data_processor_main_hw_stub(%"class.hls::stream<event_data_t, 0>"*, %"class.hls::stream<event_data_t, 0>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<5>"*, [64 x %"struct.ap_int<26>"]*, [128 x %"struct.ap_int<13>"]*, [128 x %"struct.ap_int<13>"]*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #7 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #8 = { alwaysinline nounwind readnone }
attributes #9 = { "fpga.wrapper.func"="stub" }
attributes #10 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
