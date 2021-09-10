.class public Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;
.super Ljava/lang/Object;
.source "MessageBnR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/MessageBnR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreProgress"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDecryptWeight:J

.field mExtractAfterWeight:J

.field mExtractWeight:J

.field mLastIntentSent:J

.field mMessageWeight:J

.field mProgress:I

.field mProgressTotal:J

.field mProgressValue:J

.field mRestoredAddrCount:I

.field mRestoredFtCount:I

.field mRestoredImCount:I

.field mRestoredPartCount:I

.field mRestoredPduCount:I

.field mRestoredSmsCount:I

.field mSource:Ljava/lang/String;

.field mThreadWeight:J

.field mTotalAddrCount:I

.field mTotalFtCount:I

.field mTotalImCount:I

.field mTotalPartCount:I

.field mTotalPduCount:I

.field mTotalSmsCount:I

.field mTotalThreadCount:I

.field mUpdatedThreadCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JIIIIII)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    .line 2675
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p1

    .line 2676
    iput-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mContext:Landroid/content/Context;

    move-object/from16 v9, p2

    .line 2677
    iput-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mSource:Ljava/lang/String;

    const/4 v9, 0x0

    .line 2678
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgress:I

    const-wide/16 v10, 0x0

    .line 2680
    iput-wide v10, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    .line 2681
    iput-wide v10, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    .line 2683
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RestoreProgress(): fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "TP/MessageBnRReceiver"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x2

    mul-long/2addr v14, v1

    const-wide/16 v16, 0x9

    .line 2684
    div-long v14, v14, v16

    const-wide/16 v18, 0x400

    div-long v14, v14, v18

    div-long v14, v14, v18

    iput-wide v14, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mDecryptWeight:J

    const-wide/16 v20, 0x4

    mul-long v20, v20, v1

    .line 2686
    div-long v20, v20, v16

    div-long v20, v20, v18

    div-long v10, v20, v18

    iput-wide v10, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractWeight:J

    const-wide/16 v10, 0x1

    mul-long/2addr v1, v10

    .line 2688
    div-long v1, v1, v16

    div-long v1, v1, v18

    div-long v1, v1, v18

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractAfterWeight:J

    .line 2690
    iget-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    .line 2691
    iget-wide v14, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractWeight:J

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    .line 2692
    iget-wide v14, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractAfterWeight:J

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long/2addr v1, v10

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    .line 2694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress(): smsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pduCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addrCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", partCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ftCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredSmsCount:I

    .line 2698
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPduCount:I

    .line 2699
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredAddrCount:I

    .line 2700
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPartCount:I

    .line 2701
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredImCount:I

    .line 2702
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredFtCount:I

    .line 2704
    iput v3, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalSmsCount:I

    .line 2705
    iput v4, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalPduCount:I

    .line 2706
    iput v5, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalAddrCount:I

    .line 2707
    iput v6, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalPartCount:I

    .line 2708
    iput v7, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalImCount:I

    .line 2709
    iput v8, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalFtCount:I

    add-int v1, v3, v4

    add-int/2addr v1, v5

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    int-to-long v1, v1

    int-to-long v3, v8

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 2711
    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mMessageWeight:J

    .line 2712
    iget-wide v3, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    .line 2714
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    .line 2715
    iput v9, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalThreadCount:I

    const-wide/16 v1, 0x23

    mul-long/2addr v1, v3

    const-wide/16 v5, 0x41

    .line 2716
    div-long/2addr v1, v5

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mThreadWeight:J

    add-long/2addr v3, v1

    .line 2717
    iput-wide v3, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    .line 2718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress(): mProgressTotal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDecryptWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mDecryptWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mExtractWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mExtractAfterWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractAfterWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mMessageWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mMessageWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mThreadWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mThreadWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 2723
    iput-wide v1, v0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mLastIntentSent:J

    return-void
.end method


# virtual methods
.method beginThreadUpdate(I)V
    .locals 2

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginThreadUpdate(): threadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/MessageBnRReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalThreadCount:I

    return-void
.end method

.method restoreProgressed(I)V
    .locals 7

    .line 2732
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    const-string v2, "/"

    const-string v3, "TP/MessageBnRReceiver"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2780
    :pswitch_0
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    .line 2781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreProgressed(): PROGRESS_STEP_THREAD_UPDATE, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalThreadCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2775
    :pswitch_1
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredFtCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredFtCount:I

    .line 2776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreProgressed(): PROGRESS_STEP_FT, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredFtCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalFtCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    goto/16 :goto_0

    .line 2770
    :pswitch_2
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredImCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredImCount:I

    .line 2771
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreProgressed(): PROGRESS_STEP_IM, "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredImCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalImCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    goto/16 :goto_0

    .line 2765
    :pswitch_3
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPartCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPartCount:I

    .line 2766
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreProgressed(): PROGRESS_STEP_MMS_PART, "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPartCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalPartCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    goto/16 :goto_0

    .line 2760
    :pswitch_4
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredAddrCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredAddrCount:I

    .line 2761
    iget-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    .line 2762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreProgressed(): PROGRESS_STEP_MMS_ADDR, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredAddrCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalAddrCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2755
    :pswitch_5
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPduCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPduCount:I

    .line 2756
    iget-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    .line 2757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreProgressed(): PROGRESS_STEP_MMS_PDU, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredPduCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalPduCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2750
    :pswitch_6
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredSmsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredSmsCount:I

    .line 2751
    iget-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    .line 2752
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreProgressed(): PROGRESS_STEP_SMS, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mRestoredSmsCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalSmsCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2746
    :pswitch_7
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    iget-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractAfterWeight:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    const-string p1, "restoreProgressed(): PROGRESS_STEP_EXTRACT_AFTER"

    .line 2747
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2742
    :pswitch_8
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    iget-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mExtractWeight:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    const-string p1, "restoreProgressed(): PROGRESS_STEP_EXTRACT"

    .line 2743
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2738
    :pswitch_9
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    iget-wide v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mDecryptWeight:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    const-string p1, "restoreProgressed(): PROGRESS_STEP_DECRYPT"

    .line 2739
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2787
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mLastIntentSent:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    .line 2788
    iput-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mLastIntentSent:J

    .line 2790
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressValue:J

    .line 2791
    iget p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    if-lez p1, :cond_1

    iget v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mTotalThreadCount:I

    if-lez v2, :cond_1

    int-to-long v3, p1

    .line 2792
    iget-wide v5, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mThreadWeight:J

    mul-long/2addr v3, v5

    int-to-long v5, v2

    div-long/2addr v3, v5

    add-long/2addr v0, v3

    :cond_1
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    .line 2795
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgressTotal:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 2796
    iget v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgress:I

    if-le p1, v0, :cond_2

    .line 2797
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->sendProgressIntent(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendProgressIntent(I)V
    .locals 1

    .line 2803
    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mProgress:I

    .line 2804
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->mSource:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->access$400(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
