.class Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;
.super Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;
.source "WssnpsFileService.java"

# interfaces
.implements Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/WssnpsFileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreProgress"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCountSplitted:Z

.field mInsertedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastIntentSent:J

.field mMessageCount:I

.field mMmsCount:I

.field mProgress:I

.field mRestoredMessageCount:I

.field mRestoredMmsCount:I

.field mRestoredSmsCount:I

.field mSmsCount:I

.field mSource:Ljava/lang/String;

.field mStep:I

.field mTotalThreadCount:I

.field mUpdatedThreadCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 2

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;)V

    .line 390
    iput-object p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mContext:Landroid/content/Context;

    .line 391
    iput-object p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mSource:Ljava/lang/String;

    const/4 p1, 0x0

    .line 392
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mProgress:I

    .line 393
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mStep:I

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 395
    :goto_0
    iput-boolean p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RestoreProgress(): mCountSplitted="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TP/WssnpsFileService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreProgress(): totalCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", smsCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mmsCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-boolean p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    if-eqz p2, :cond_1

    .line 400
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredSmsCount:I

    .line 401
    iput p4, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mSmsCount:I

    .line 402
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMmsCount:I

    .line 403
    iput p5, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMmsCount:I

    add-int/2addr p4, p5

    .line 404
    iput p4, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    goto :goto_1

    .line 406
    :cond_1
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMessageCount:I

    .line 407
    iput p3, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    .line 410
    :goto_1
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mUpdatedThreadCount:I

    .line 411
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mTotalThreadCount:I

    const-wide/16 p1, 0x0

    .line 412
    iput-wide p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mLastIntentSent:J

    return-void
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)V
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->callback(Ljava/lang/String;)V

    return-void
.end method

.method public beginUpdate(I)V
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginUpdate(): threadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/WssnpsFileService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mTotalThreadCount:I

    return-void
.end method

.method public callback(Ljava/lang/String;)V
    .locals 6

    .line 435
    iget-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mInsertedIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 440
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mStep:I

    if-ne p1, v0, :cond_1

    .line 441
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredSmsCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredSmsCount:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 443
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMmsCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMmsCount:I

    goto :goto_0

    .line 446
    :cond_2
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMessageCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMessageCount:I

    .line 449
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mSmsCount:I

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMmsCount:I

    if-gtz p1, :cond_5

    :cond_4
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    if-lez p1, :cond_7

    .line 451
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 452
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mLastIntentSent:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-lez p1, :cond_7

    .line 453
    iput-wide v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mLastIntentSent:J

    .line 455
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mCountSplitted:Z

    const-string v0, "TP/WssnpsFileService"

    const-string v1, "/"

    if-eqz p1, :cond_6

    .line 456
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mSmsCount:I

    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMmsCount:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr p1, v2

    .line 457
    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredSmsCount:I

    iget v3, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMmsCount:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x41

    .line 458
    div-int/2addr v2, p1

    .line 460
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mProgress:I

    if-le v2, p1, :cond_7

    .line 461
    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->sendProgressIntent(I)V

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress.callback(): Sms="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredSmsCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mSmsCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Mms="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMmsCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMmsCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 467
    :cond_6
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    .line 468
    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMessageCount:I

    mul-int/lit8 v2, v2, 0x41

    .line 469
    div-int/2addr v2, p1

    .line 471
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mProgress:I

    if-le v2, p1, :cond_7

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->sendProgressIntent(I)V

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreProgress.callback(): Message="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mRestoredMessageCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method clearIdList()V
    .locals 1

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mInsertedIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method sendProgressIntent(I)V
    .locals 1

    .line 420
    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mProgress:I

    .line 421
    iget-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mSource:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/providers/telephony/backup/WssnpsFileReceiver;->sendRestoreProgress(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public threadUpdated(J)V
    .locals 4

    .line 489
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mUpdatedThreadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mUpdatedThreadCount:I

    .line 491
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mTotalThreadCount:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    if-lez p1, :cond_0

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 493
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mLastIntentSent:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 494
    iput-wide p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mLastIntentSent:J

    .line 496
    iget p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mUpdatedThreadCount:I

    mul-int/lit8 p1, p1, 0x23

    iget p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mTotalThreadCount:I

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x41

    .line 498
    iget p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mProgress:I

    if-le p1, p2, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->sendProgressIntent(I)V

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RestoreProgress.threadUpdated(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mUpdatedThreadCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mTotalThreadCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/WssnpsFileService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
