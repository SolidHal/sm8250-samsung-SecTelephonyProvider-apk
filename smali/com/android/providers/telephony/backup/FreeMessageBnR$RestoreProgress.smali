.class Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;
.super Ljava/lang/Object;
.source "FreeMessageBnR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/FreeMessageBnR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreProgress"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCountSplitted:Z

.field mDecryptWeight:J

.field mExtractAfterWeight:J

.field mExtractWeight:J

.field mLastIntentSent:J

.field mMessageWeight:J

.field mProgress:I

.field mProgressTotal:J

.field mProgressValue:J

.field mRestoredFtCount:I

.field mRestoredImCount:I

.field mRestoredRcsCount:I

.field mSource:Ljava/lang/String;

.field mThreadWeight:J

.field mTotalFtCount:I

.field mTotalImCount:I

.field mTotalRcsCount:I

.field mTotalThreadCount:I

.field mUpdatedThreadCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JIII)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    .line 920
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p1

    .line 921
    iput-object v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    .line 922
    iput-object v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mSource:Ljava/lang/String;

    const/4 v6, 0x0

    .line 923
    iput v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgress:I

    const-wide/16 v7, 0x0

    .line 925
    iput-wide v7, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    .line 926
    iput-wide v7, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    .line 928
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RestoreProgress(): fileSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TP/FreeMessageBnR"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v11, 0x2

    mul-long/2addr v11, v1

    const-wide/16 v13, 0x9

    .line 929
    div-long/2addr v11, v13

    const-wide/16 v15, 0x400

    div-long/2addr v11, v15

    div-long/2addr v11, v15

    iput-wide v11, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mDecryptWeight:J

    const-wide/16 v17, 0x4

    mul-long v17, v17, v1

    .line 931
    div-long v17, v17, v13

    div-long v17, v17, v15

    div-long v7, v17, v15

    iput-wide v7, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractWeight:J

    const-wide/16 v7, 0x1

    mul-long/2addr v1, v7

    .line 933
    div-long/2addr v1, v13

    div-long/2addr v1, v15

    div-long/2addr v1, v15

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractAfterWeight:J

    .line 935
    iget-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    add-long/2addr v1, v11

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    .line 936
    iget-wide v11, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractWeight:J

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    add-long/2addr v1, v11

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    .line 937
    iget-wide v11, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractAfterWeight:J

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    const/4 v1, -0x1

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    .line 939
    :goto_0
    iput-boolean v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mCountSplitted:Z

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress(): mCountSplitted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mCountSplitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress(): rcsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ftCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-boolean v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mCountSplitted:Z

    if-eqz v1, :cond_1

    .line 943
    iput v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredImCount:I

    .line 944
    iput v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredFtCount:I

    .line 945
    iput v4, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalImCount:I

    .line 946
    iput v5, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalFtCount:I

    int-to-long v1, v4

    int-to-long v3, v5

    const-wide/16 v7, 0x3

    mul-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 947
    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mMessageWeight:J

    goto :goto_1

    .line 949
    :cond_1
    iput v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    .line 950
    iput v3, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalRcsCount:I

    int-to-long v1, v3

    .line 951
    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mMessageWeight:J

    .line 954
    :goto_1
    iget-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mMessageWeight:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 955
    iget-wide v3, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    .line 957
    iput v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    .line 958
    iput v6, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalThreadCount:I

    const-wide/16 v5, 0x23

    mul-long/2addr v1, v5

    const-wide/16 v5, 0x41

    .line 959
    div-long/2addr v1, v5

    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mThreadWeight:J

    add-long/2addr v3, v1

    .line 960
    iput-wide v3, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    .line 962
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress(): mProgressTotal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDecryptWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mDecryptWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mExtractWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mExtractAfterWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractAfterWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mMessageWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mMessageWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mThreadWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mThreadWeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 967
    iput-wide v1, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mLastIntentSent:J

    return-void
.end method


# virtual methods
.method beginThreadUpdate(I)V
    .locals 2

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginThreadUpdate(): threadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/FreeMessageBnR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalThreadCount:I

    return-void
.end method

.method restoreProgressed(I)V
    .locals 8

    .line 976
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TP/FreeMessageBnR"

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v4, 0x7

    const-wide/16 v5, 0x1

    const-string v7, "/"

    if-eq p1, v4, :cond_4

    const/16 v4, 0x8

    if-eq p1, v4, :cond_2

    const/16 v4, 0x9

    if-eq p1, v4, :cond_1

    goto/16 :goto_1

    .line 1015
    :cond_1
    iget p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    .line 1016
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreProgressed(): PROGRESS_STEP_THREAD_UPDATE, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalThreadCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1004
    :cond_2
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mCountSplitted:Z

    const-string v4, "restoreProgressed(): PROGRESS_STEP_FT, "

    if-eqz p1, :cond_3

    .line 1005
    iget p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredFtCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredFtCount:I

    .line 1006
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredFtCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalFtCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    goto/16 :goto_1

    .line 1009
    :cond_3
    iget p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    .line 1010
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalRcsCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    goto/16 :goto_1

    .line 994
    :cond_4
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mCountSplitted:Z

    const-string v4, "restoreProgressed(): PROGRESS_STEP_IM, "

    if-eqz p1, :cond_5

    .line 995
    iget p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredImCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredImCount:I

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredImCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalImCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_5
    iget p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    .line 999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mRestoredRcsCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalRcsCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :goto_0
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    goto :goto_1

    :cond_6
    const-string p1, "restoreProgressed(): PROGRESS_STEP_EXTRACT_AFTER"

    .line 990
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    iget-wide v4, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractAfterWeight:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    goto :goto_1

    :cond_7
    const-string p1, "restoreProgressed(): PROGRESS_STEP_EXTRACT"

    .line 986
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    iget-wide v4, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mExtractWeight:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    goto :goto_1

    :cond_8
    const-string p1, "restoreProgressed(): PROGRESS_STEP_DECRYPT"

    .line 982
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    iget-wide v4, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mDecryptWeight:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    .line 1021
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1022
    iget-wide v4, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mLastIntentSent:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long p1, v4, v6

    if-lez p1, :cond_a

    .line 1023
    iput-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mLastIntentSent:J

    .line 1025
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressValue:J

    .line 1026
    iget-wide v4, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mMessageWeight:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_9

    iget p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mUpdatedThreadCount:I

    if-lez p1, :cond_9

    iget v2, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mTotalThreadCount:I

    if-lez v2, :cond_9

    int-to-long v3, p1

    .line 1027
    iget-wide v5, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mThreadWeight:J

    mul-long/2addr v3, v5

    int-to-long v5, v2

    div-long/2addr v3, v5

    add-long/2addr v0, v3

    :cond_9
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    .line 1030
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgressTotal:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 1031
    iget v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgress:I

    if-le p1, v0, :cond_a

    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->sendProgressIntent(I)V

    :cond_a
    return-void
.end method

.method sendProgressIntent(I)V
    .locals 1

    .line 1038
    iput p1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mProgress:I

    .line 1039
    iget-object v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->mSource:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->access$000(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
