.class public Lcom/android/providers/telephony/backup/WssnpsFileService;
.super Landroid/app/IntentService;
.source "WssnpsFileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;
    }
.end annotation


# static fields
.field private static final NECESSARY_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private mDocumentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/WssnpsFileService;->NECESSARY_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    const-class v0, Lcom/android/providers/telephony/backup/WssnpsFileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService;->mDocumentUris:Ljava/util/List;

    return-void
.end method

.method private decryptRestoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decryptRestoreFile(): encryptedFilePath="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/WssnpsFileService"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decryptRestoreFile(): decryptedFilePath="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "decryptRestoreFile(): "

    if-nez v1, :cond_0

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " encrypted file not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " decrypt start"

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    invoke-static {p5}, Lcom/android/providers/telephony/backup/BnRUtils;->streamCrypt(Ljava/lang/String;)V

    .line 266
    invoke-static {p2, p3, p4}, Lcom/android/providers/telephony/backup/BnRUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " decrypt success"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " decrypt failed!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private isAtLeastM()Z
    .locals 1

    .line 164
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareRestore(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/IBNRClient;Ljava/lang/String;[J)I
    .locals 4

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareRestore(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/android/providers/telephony/backup/IBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " restore prepare"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/WssnpsFileService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "savePath"

    .line 279
    invoke-virtual {p0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Kies"

    .line 280
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v1, "callerPkg"

    if-eqz p4, :cond_0

    const-string p2, "com.wssnps"

    .line 281
    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p4, "SmartSwitch"

    .line 282
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "com.sec.android.easyMover"

    .line 283
    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p2, 0x1

    const/4 p4, 0x0

    if-eqz p5, :cond_2

    .line 286
    array-length v1, p5

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareRestore(): Period from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p5, p4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p5, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "msgPeriod"

    .line 288
    invoke-virtual {p0, v1, p5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 290
    :cond_2
    invoke-interface {p3, p1, p0}, Lcom/android/providers/telephony/backup/IBNRClient;->isRestorePrepare(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    const-string p1, "prepareRestore(): Prepare "

    if-nez p0, :cond_3

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/android/providers/telephony/backup/IBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 294
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/android/providers/telephony/backup/IBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method

.method private showExceedNotification(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "exceedCount"

    .line 346
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-lez p1, :cond_2

    const/16 v0, 0x14

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showExceedNotification(): count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TP/WssnpsFileService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f0a0000

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p1

    .line 354
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 352
    invoke-virtual {v1, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/WssnpsFileService;->showToastNotification(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private showToastNotification(Ljava/lang/String;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/providers/telephony/backup/WssnpsFileService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/telephony/backup/WssnpsFileService$1;-><init>(Lcom/android/providers/telephony/backup/WssnpsFileService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startFileRestore(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[JLjava/util/List;III)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;III)I"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFileRestore(): source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", smsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mmsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "TP/WssnpsFileService"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v10, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 174
    iget v0, v10, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_0

    .line 175
    invoke-virtual {v10, v11}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->sendProgressIntent(I)V

    :cond_0
    move-object/from16 v5, p0

    .line 178
    iget-object v0, v5, Lcom/android/providers/telephony/backup/WssnpsFileService;->mDocumentUris:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 179
    invoke-static {v6, v0, v7}, Lcom/android/providers/telephony/backup/BnRFileUtil;->moveUrisToDir(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 182
    :cond_1
    new-instance v19, Lcom/android/providers/telephony/backup/MmsBNRClient;

    invoke-direct/range {v19 .. v19}, Lcom/android/providers/telephony/backup/MmsBNRClient;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mms_restore.bk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mms_restore.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 185
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v12, p0

    move-object/from16 v15, v20

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p7

    invoke-direct/range {v12 .. v18}, Lcom/android/providers/telephony/backup/WssnpsFileService;->decryptRestoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v21

    .line 188
    new-instance v22, Lcom/android/providers/telephony/backup/SmsBNRClient;

    invoke-direct/range {v22 .. v22}, Lcom/android/providers/telephony/backup/SmsBNRClient;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sms_restore.bk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sms_restore.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 191
    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, v23

    invoke-direct/range {v12 .. v18}, Lcom/android/providers/telephony/backup/WssnpsFileService;->decryptRestoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v24

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "threads_info_restore.bk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "threads_info_restore.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "Category"

    move-object v15, v4

    .line 197
    invoke-direct/range {v12 .. v18}, Lcom/android/providers/telephony/backup/WssnpsFileService;->decryptRestoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-nez v21, :cond_2

    if-nez v24, :cond_2

    if-nez v12, :cond_2

    const-string v0, "startFileRestore(): sms/mms/category files to restore invalid or not exists"

    .line 201
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_2
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object v9, v4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/backup/WssnpsFileService;->prepareRestore(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/IBNRClient;Ljava/lang/String;[J)I

    move-result v0

    move v13, v0

    goto :goto_0

    :cond_3
    move-object v9, v4

    move v13, v11

    :goto_0
    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 213
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/backup/WssnpsFileService;->prepareRestore(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/IBNRClient;Ljava/lang/String;[J)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v11

    :goto_1
    const/4 v1, 0x1

    if-eqz v21, :cond_6

    .line 217
    iput v11, v10, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mStep:I

    if-nez v13, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v11

    :goto_2
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v19

    move/from16 p5, v2

    move-object/from16 p6, v20

    move-object/from16 p7, v10

    .line 219
    invoke-direct/range {p2 .. p7}, Lcom/android/providers/telephony/backup/WssnpsFileService;->startRestore(Landroid/content/Context;Lcom/android/providers/telephony/backup/IBNRClient;ZLjava/lang/String;Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;)I

    move-result v3

    if-eqz v2, :cond_6

    move v13, v3

    :cond_6
    if-eqz v24, :cond_8

    .line 225
    iput v1, v10, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mStep:I

    if-nez v0, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v11

    :goto_3
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v22

    move/from16 p5, v2

    move-object/from16 p6, v23

    move-object/from16 p7, v10

    .line 227
    invoke-direct/range {p2 .. p7}, Lcom/android/providers/telephony/backup/WssnpsFileService;->startRestore(Landroid/content/Context;Lcom/android/providers/telephony/backup/IBNRClient;ZLjava/lang/String;Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;)I

    move-result v3

    if-eqz v2, :cond_8

    move v0, v3

    :cond_8
    if-eqz v12, :cond_9

    .line 234
    invoke-static {v6, v9}, Lcom/android/providers/telephony/backup/CategoriesBnR;->restoreCategoriesByFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_9
    move v2, v11

    .line 237
    :goto_4
    iget v3, v10, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mMessageCount:I

    if-lez v3, :cond_a

    const/16 v3, 0x64

    .line 238
    invoke-virtual {v10, v3}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->sendProgressIntent(I)V

    :cond_a
    if-nez v13, :cond_c

    if-nez v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    return v11

    :cond_c
    :goto_5
    return v1
.end method

.method private startRestore(Landroid/content/Context;Lcom/android/providers/telephony/backup/IBNRClient;ZLjava/lang/String;Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;)I
    .locals 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRestore(): prepareSucceed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/WssnpsFileService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p5}, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->clearIdList()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 305
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRestore(): "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/providers/telephony/backup/IBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restore start"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/providers/telephony/backup/WssnpsFileService;->startRestoreWithJson(Landroid/content/Context;Lcom/android/providers/telephony/backup/IBNRClient;Ljava/lang/String;Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p3, "startRestore(): Unknown exception"

    .line 309
    invoke-static {v1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v0

    .line 311
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/providers/telephony/backup/IBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " restore complete"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_1

    .line 315
    iget-object p3, p5, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mInsertedIdList:Ljava/util/ArrayList;

    invoke-interface {p2, p1, p3, p5}, Lcom/android/providers/telephony/backup/IBNRClient;->restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    goto :goto_2

    .line 317
    :cond_1
    iget-object p3, p5, Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;->mInsertedIdList:Ljava/util/ArrayList;

    invoke-interface {p2, p1, p3, p5}, Lcom/android/providers/telephony/backup/IBNRClient;->restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    :goto_2
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private startRestoreWithJson(Landroid/content/Context;Lcom/android/providers/telephony/backup/IBNRClient;Ljava/lang/String;Lcom/android/providers/telephony/backup/WssnpsFileService$RestoreProgress;)Z
    .locals 8

    .line 329
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 331
    :try_start_2
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 332
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v4, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;

    invoke-interface {p2}, Lcom/android/providers/telephony/backup/IBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v7, p4

    .line 336
    invoke-interface/range {v2 .. v7}, Lcom/android/providers/telephony/backup/IBNRClient;->restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :try_start_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 329
    :try_start_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "TP/WssnpsFileService"

    const-string p2, "startRestoreWithJson()"

    .line 338
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string v12, "TP/WssnpsFileService"

    const-string v1, "onHandleIntent()"

    .line 86
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_EXCEED_NOTIFICATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/WssnpsFileService;->showExceedNotification(Landroid/content/Intent;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->stopSelf()V

    return-void

    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    invoke-static {v2, v0}, Lcom/android/providers/telephony/backup/BnRDocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v11, Lcom/android/providers/telephony/backup/WssnpsFileService;->mDocumentUris:Ljava/util/List;

    const-string v3, "SAVE_PATH"

    .line 97
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v2, v1, v3, v4}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getBnrFilePath(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SECURITY_LEVEL"

    const/4 v13, 0x0

    .line 98
    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "SESSION_KEY"

    .line 99
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SOURCE"

    .line 100
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "EXPORT_SESSION_TIME"

    .line 101
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "MSG_PERIOD"

    .line 102
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, -0x1

    const-string v7, "TOTAL_COUNT"

    .line 103
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v6, "SMS_COUNT"

    .line 104
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v6, "MMS_COUNT"

    .line 105
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/WssnpsFileService;->isAtLeastM()Z

    move-result v0

    const-string v15, "onHandleIntent(): stopSelf"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/providers/telephony/backup/WssnpsFileService;->NECESSARY_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v11, v2, v0}, Lcom/android/providers/telephony/backup/WssnpsFileService;->permissionCheck(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 108
    invoke-static/range {v2 .. v7}, Lcom/android/providers/telephony/backup/WssnpsFileReceiver;->restoreFinished(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->stopSelf()V

    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v0, "/"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    move-object v14, v1

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    .line 123
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_5

    :try_start_0
    new-array v1, v6, [J

    .line 126
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v1, v13

    .line 127
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v1, v7

    .line 128
    aget-wide v5, v1, v13

    aget-wide v16, v1, v7

    cmp-long v5, v5, v16

    if-lez v5, :cond_4

    .line 129
    aget-wide v5, v1, v13

    .line 130
    aget-wide v16, v1, v7

    aput-wide v16, v1, v13

    aput-wide v5, v1, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v6, v1

    goto :goto_1

    :catch_0
    :cond_5
    move-object v6, v0

    .line 138
    :goto_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v18

    move-object v5, v14

    move/from16 v17, v7

    move-object/from16 v7, v16

    .line 139
    invoke-direct/range {v0 .. v10}, Lcom/android/providers/telephony/backup/WssnpsFileService;->startFileRestore(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[JLjava/util/List;III)I

    move-result v0

    if-nez v0, :cond_6

    move/from16 v17, v13

    .line 143
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v13

    add-long/2addr v4, v2

    long-to-int v13, v4

    goto :goto_2

    .line 147
    :cond_7
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object v1, v15

    move/from16 v15, v17

    move/from16 v16, v0

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Lcom/android/providers/telephony/backup/WssnpsFileReceiver;->restoreFinished(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->stopSelf()V

    return-void
.end method

.method public permissionCheck(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3

    .line 155
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    .line 156
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
