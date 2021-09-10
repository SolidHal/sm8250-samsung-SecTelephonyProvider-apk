.class public Lcom/android/providers/telephony/backup/MmsBNRClient;
.super Ljava/lang/Object;
.source "MmsBNRClient.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;
.implements Lcom/android/providers/telephony/backup/IBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;
    }
.end annotation


# static fields
.field private static final ADDR_COLUMNS:[Ljava/lang/String;

.field private static final BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

.field private static final BACKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

.field private static final PART_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TP/MmsBNRClient"

.field private static mEnableCarrierServerSync:Z = false

.field private static mEnableMmsTransactionCustomize4Korea:Z = false

.field private static mEnableOMA13NameEncoding:Z = false

.field private static mEnableOpBackupSync:Z = false


# instance fields
.field private mCallerPkg:Ljava/lang/String;

.field private mClassificationThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExceedMaxSizeCount:I

.field private mItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMsgPeriod:[J

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mPinToTopThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoredThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSavePath:Ljava/lang/String;

.field private mTransactionIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "read"

    const-string v2, "thread_id"

    const-string v3, "date"

    const-string v4, "msg_box"

    const-string v5, "m_type"

    const-string v6, "using_mode"

    .line 87
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "date"

    const-string v3, "msg_box"

    const-string v4, "tr_id"

    const-string v5, "m_id"

    const-string v6, "thread_id"

    const-string v7, "reserved"

    .line 99
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

    const-string v0, "address"

    const-string v1, "type"

    const-string v2, "charset"

    .line 111
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->ADDR_COLUMNS:[Ljava/lang/String;

    const-string v1, "seq"

    const-string v2, "ct"

    const-string v3, "name"

    const-string v4, "chset"

    const-string v5, "cid"

    const-string v6, "cl"

    const-string v7, "text"

    const-string v8, "sef_type"

    .line 117
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->PART_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const/4 v1, 0x0

    .line 128
    iput v1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    .line 130
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 131
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mClassificationThreads:Ljava/util/List;

    .line 132
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    .line 134
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    .line 135
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 137
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    .line 139
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mSavePath:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mMsgPeriod:[J

    .line 143
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mTransactionIdList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOpBackupSync:Z

    return v0
.end method

.method private backupFinished(Landroid/content/Context;Z)V
    .locals 4

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupFinished(): isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TP/MmsBNRClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 463
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->initialize(Landroid/content/Context;)Z

    .line 465
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllBackupFinished(Landroid/content/Context;)Z

    move-result p2

    .line 466
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getMmxCountExceedMaxSize(Landroid/content/Context;)I

    move-result v1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupFinished(): allTasksFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sExceedMaxSizeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-lez v1, :cond_0

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_EXCEED_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "exceedCount"

    .line 470
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/providers/telephony/backup/WssnpsFileService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 472
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 475
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isBackupFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 476
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isBackupFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 477
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->clearBackupThreadInfo()V

    :cond_1
    if-eqz p2, :cond_2

    .line 482
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllBackupFinished()Ljava/lang/String;

    move-result-object p0

    const-string p2, "file_parsing"

    .line 481
    invoke-static {p2, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 483
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private buildAddrBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p0, "ADDRESS"

    .line 590
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "addr"

    const/4 v3, 0x0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 594
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object p2

    .line 595
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "transaction_id"

    const/4 v2, 0x0

    .line 596
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 602
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 592
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "TP/MmsBNRClient"

    const-string p2, "buildAddrBackupData(): failed!"

    .line 603
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    throw p0
.end method

.method private buildBackupData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 513
    invoke-direct {p0, p2, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->buildMmsBackupData(Landroid/database/Cursor;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->buildAddrBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 515
    invoke-direct {p0, p2, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->buildGroupBackData(Landroid/database/Cursor;Lorg/json/JSONObject;)V

    .line 517
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->buildPartBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    const-string p2, "buildBackupData(): failed!"

    if-eqz p1, :cond_2

    .line 524
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    iget-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/high16 v0, 0x1400000

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    .line 533
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mms data exceed max size, size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 526
    iget v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    .line 527
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildBackupData(): data.toString failed! : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/MmsBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 518
    :cond_2
    iget p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    .line 519
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildGroupBackData(Landroid/database/Cursor;Lorg/json/JSONObject;)V
    .locals 3

    const-string p0, "GROUP_ADDR"

    const-string v0, "thread_id"

    .line 698
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 702
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 704
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p1

    const-string v0, "TP/MmsBNRClient"

    if-eqz p1, :cond_2

    .line 706
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 707
    iget-object p1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->addrs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 708
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 712
    :cond_1
    :try_start_0
    invoke-virtual {p2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "buildGroupBackData(): failed!"

    .line 714
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "buildGroupBackData(): threadInfo is null"

    .line 717
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private buildMmsBackupData(Landroid/database/Cursor;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p0, "_id"

    .line 540
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_8

    .line 544
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 545
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "msg_box"

    .line 549
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 553
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed msg_box="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "m_type"

    .line 558
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 562
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x82

    if-eq v1, v0, :cond_4

    const/16 v1, 0x87

    if-eq v1, v0, :cond_4

    .line 568
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "thread_id"

    .line 570
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 574
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 576
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 578
    iget v1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->classification:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread_classification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    iget p1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pin_to_top"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "source_id"

    .line 582
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    const-string v1, "transaction_id"

    .line 583
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "MMS"

    .line 584
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 572
    :cond_3
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "No thread_id"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 564
    :cond_4
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed m_type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 560
    :cond_5
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms m_type index not found"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :cond_6
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms msg_box index not found"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 546
    :cond_7
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms id is empty"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 542
    :cond_8
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms id index not found"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildPartAttachBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;
        }
    .end annotation

    const-string v0, "_id"

    .line 646
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 650
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "_data"

    .line 652
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    .line 656
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "PART_"

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    return-object v1

    .line 665
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 667
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    const-string p1, "com.samsung.android.scloud"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 669
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v5, 0x1400000

    cmp-long p0, p0, v5

    if-gtz p0, :cond_4

    goto :goto_0

    .line 670
    :cond_4
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mms data file exceed max size, size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", max="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x1400000

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 673
    :cond_5
    :goto_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 675
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 678
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    :goto_1
    const/4 v7, 0x0

    if-ltz v6, :cond_6

    .line 680
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 681
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_1

    .line 683
    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 685
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 675
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 688
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "buildPartAttachBackupData(): Write file error, partId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", fileName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/MmsBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private buildPartBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "TP/MmsBNRClient"

    const-string v2, "PART"

    const-string v3, "DataValue"

    .line 612
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 613
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v7, "part"

    const/4 v8, 0x0

    .line 615
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 617
    invoke-static {v6}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v7

    .line 618
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 619
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, p0

    .line 623
    :try_start_2
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/backup/MmsBNRClient;->buildPartAttachBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_0

    .line 629
    :try_start_3
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 630
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildPartBackupData(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    if-eqz v6, :cond_1

    .line 637
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    return v0

    :cond_2
    move-object v7, p0

    goto :goto_0

    .line 635
    :cond_3
    :try_start_5
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_4

    .line 637
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_5

    .line 615
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "buildPartBackupData(): failed!"

    .line 638
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    throw v0
.end method

.method private checkDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;)Z
    .locals 8

    const/4 p0, 0x0

    :try_start_0
    const-string v1, "pdu"

    .line 1574
    sget-object v2, Lcom/android/providers/telephony/backup/MmsBNRClient;->DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_17

    .line 1576
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1580
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "date"

    .line 1581
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg_box"

    .line 1582
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr_id"

    .line 1583
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_id"

    .line 1584
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thread_id"

    .line 1585
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    .line 1587
    iget-object v4, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->messageId:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    if-eqz v2, :cond_4

    iget-object v4, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    .line 1604
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return p0

    .line 1590
    :cond_4
    :try_start_3
    sget-boolean v2, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOpBackupSync:Z

    if-nez v2, :cond_14

    if-nez p2, :cond_5

    .line 1591
    iget-object v2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->date:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_5
    if-eqz p2, :cond_8

    iget-object v2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->date:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_8

    :cond_6
    if-eqz p1, :cond_7

    .line 1604
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return p0

    :cond_8
    if-nez v0, :cond_9

    .line 1594
    :try_start_5
    iget-object p2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->messageBox:Ljava/lang/String;

    if-nez p2, :cond_a

    :cond_9
    if-eqz v0, :cond_c

    iget-object p2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->messageBox:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p2, :cond_c

    :cond_a
    if-eqz p1, :cond_b

    .line 1604
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_b
    return p0

    :cond_c
    if-nez v1, :cond_d

    .line 1597
    :try_start_7
    iget-object p2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->transactionId:Ljava/lang/String;

    if-nez p2, :cond_e

    :cond_d
    if-eqz v1, :cond_10

    iget-object p2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p2, :cond_10

    :cond_e
    if-eqz p1, :cond_f

    .line 1604
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_f
    return p0

    :cond_10
    if-nez v3, :cond_11

    .line 1600
    :try_start_9
    iget-object p2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->threadId:Ljava/lang/String;

    if-nez p2, :cond_12

    :cond_11
    if-eqz v3, :cond_14

    iget-object p2, p3, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->threadId:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez p2, :cond_14

    :cond_12
    if-eqz p1, :cond_13

    .line 1604
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_13
    return p0

    :cond_14
    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_15
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_16

    .line 1574
    :try_start_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_0
    throw p2

    :cond_17
    :goto_1
    if-eqz p1, :cond_18

    .line 1604
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_18
    return p0

    :catch_0
    move-exception p1

    const-string p2, "TP/MmsBNRClient"

    const-string p3, "checkDuplication(): error"

    .line 1605
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method private checkUnwanted(Landroid/database/Cursor;)Z
    .locals 3

    const-string p0, "_id"

    .line 313
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "TP/MmsBNRClient"

    const/4 v1, 0x1

    if-gez p0, :cond_0

    const-string p0, "checkUnwanted(): id not found"

    .line 315
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 318
    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "checkUnwanted(): Mms id is empty"

    .line 320
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "msg_box"

    .line 324
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "checkUnwanted(): msg_box not found"

    .line 326
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 329
    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq v1, p0, :cond_3

    const/4 v2, 0x2

    if-eq v2, p0, :cond_3

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): Not allowed msg_box="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string p0, "m_type"

    .line 335
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_4

    const-string p0, "checkUnwanted(): m_type not found"

    .line 337
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 340
    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 v2, 0x82

    if-eq v2, p0, :cond_7

    const/16 v2, 0x87

    if-ne v2, p0, :cond_5

    goto :goto_0

    .line 346
    :cond_5
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportTwoPhoneBnR()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "using_mode"

    .line 347
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_6

    .line 349
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_6

    const-string p0, "checkUnwanted(): TwoPhone messages are not allowed"

    .line 351
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 342
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): Not allowed m_type="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private convertAddrRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1271
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1273
    sget-object v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->ADDR_COLUMNS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1274
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1275
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private convertMmsRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1109
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1110
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1112
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "_id"

    .line 1113
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "source_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1117
    :cond_1
    iget-object v4, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1121
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 1122
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1123
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1124
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_4
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 1126
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 1127
    :cond_5
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 1128
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1129
    :cond_6
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_7

    .line 1130
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_7
    const-string v2, "TP/MmsBNRClient"

    const-string v3, "convertDataToContentValues(): value type is unknown"

    .line 1132
    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method private convertPartRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1322
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1324
    sget-object v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->PART_COLUMNS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1325
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1326
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private findAdditionalDuplicatedItem(Ljava/lang/String;)Z
    .locals 3

    .line 1613
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1617
    :cond_0
    sget-boolean v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOpBackupSync:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    const/4 v0, 0x2

    .line 1618
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1620
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mTransactionIdList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1621
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mTransactionIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1622
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private getIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^0+(?!$)"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKeyFormId(JIJ)Ljava/lang/String;
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKUP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_%02d_%02d_%010d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p4}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 493
    iget p4, p4, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    .line 495
    :goto_0
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-static {p5, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 214
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/MmsBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getReadableDatabase(): failed"

    .line 215
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 221
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getReadableDatabase(): failed!"

    .line 223
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 195
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/MmsBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getWritableDatabase(): failed"

    .line 196
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 202
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getWritableDatabase(): failed!"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)Z
    .locals 9

    .line 157
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableOMA13NameEncoding"

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOMA13NameEncoding:Z

    const-string v1, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    .line 159
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableMmsTransactionCustomize4Korea:Z

    .line 160
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableOpBackupSync()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOpBackupSync:Z

    .line 161
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p1, :cond_0

    const-string v0, "context://telephony/carriers"

    .line 165
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    const-string v0, "TP/MmsBNRClient"

    if-nez p1, :cond_2

    const-string p0, "initialize(): failed, context is null"

    .line 179
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 183
    :cond_2
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_3

    const-string p0, "initialize(): failed, open helper is null"

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private insertAddr(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const-string p0, "TP/MmsBNRClient"

    const-string v0, "addr"

    const-string v1, "address"

    .line 1285
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1287
    sget-boolean v3, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v3, :cond_0

    .line 1288
    invoke-static {v2}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 1290
    :cond_0
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    .line 1295
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1296
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 1301
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1302
    invoke-virtual {p1, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1303
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "insertAddr(): insertion error"

    .line 1305
    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-gtz p1, :cond_2

    const-string p1, "insertAddr(): failed!"

    .line 1311
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1315
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "content://mms/addr/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertAddr(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " succeeded"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1307
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1308
    throw p0
.end method

.method private insertMms(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;
        }
    .end annotation

    const-string v0, "pdu"

    const/4 v1, 0x0

    const-string v2, "TP/MmsBNRClient"

    if-nez p2, :cond_0

    const-string p0, "insertMms(): cv is null"

    .line 1159
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v3, "msg_box"

    .line 1164
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1165
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const/4 v6, 0x1

    if-eq v6, v4, :cond_3

    const/4 v7, 0x2

    if-ne v7, v4, :cond_2

    goto :goto_1

    .line 1169
    :cond_2
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed box="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1171
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date"

    .line 1173
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, 0x3e8

    if-nez v7, :cond_4

    .line 1174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    if-eq v4, v6, :cond_5

    .line 1179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "read"

    invoke-virtual {p2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "seen"

    invoke-virtual {p2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string v4, "sub"

    .line 1183
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1184
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "Subject found"

    .line 1185
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ISO-8859-1"

    .line 1186
    invoke-static {v7, v10}, Lcom/android/providers/telephony/MmsProvider;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x6a

    const-string v12, "sub_cs"

    if-nez v10, :cond_6

    .line 1187
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "Change subject to ISO"

    .line 1189
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_6
    invoke-virtual {p2, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1192
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const-string v4, "thread_id"

    .line 1196
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1197
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "thread_classification"

    .line 1199
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1200
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1201
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_8
    if-eqz v7, :cond_9

    .line 1204
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_9

    .line 1205
    iget-object v7, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mClassificationThreads:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v7, "pin_to_top"

    .line 1209
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_a

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1210
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1211
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move v10, v11

    :goto_2
    if-eq v10, v11, :cond_b

    .line 1214
    iget-object v7, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_b
    new-instance v4, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;

    invoke-direct {v4, p2, v6}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;-><init>(Landroid/content/ContentValues;Z)V

    .line 1219
    invoke-direct {p0, p1, v4}, Lcom/android/providers/telephony/backup/MmsBNRClient;->isDuplicatedItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;)Z

    move-result p0

    if-nez p0, :cond_13

    .line 1222
    sget-boolean p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_e

    const-string p0, "m_id"

    .line 1224
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1225
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_c
    const-string p0, ""

    .line 1228
    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1229
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateMMSWithFTItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    .line 1230
    :cond_d
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item with FT"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1235
    :cond_e
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    const-string p0, "reserved"

    .line 1236
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1238
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1240
    :cond_f
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1244
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-gtz v3, :cond_11

    .line 1245
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    const-wide/16 v3, -0x1

    .line 1250
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1251
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1252
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    :goto_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "insertMms(): failed"

    .line 1254
    invoke-static {v2, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_6
    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-gtz p0, :cond_12

    const-string p0, "insertMms(): failed!"

    .line 1260
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1264
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content://mms/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insertMms(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1256
    :goto_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1257
    throw p0

    .line 1220
    :cond_13
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private insertPart(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Unable to create new partFile: "

    const-string v5, "part"

    const-string v0, "ct"

    .line 1336
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "text/plain"

    .line 1337
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v0, "application/smil"

    .line 1338
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "TP/MmsBNRClient"

    if-nez v7, :cond_b

    if-nez v0, :cond_b

    const-string v0, "cl"

    .line 1341
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "_"

    const-string v12, ""

    if-nez v10, :cond_2

    .line 1344
    sget-boolean v10, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOMA13NameEncoding:Z

    if-eqz v10, :cond_1

    const-string v10, "iso-8859-1"

    .line 1346
    invoke-static {v0, v10}, Lcom/android/providers/telephony/MmsProvider;->getBytesByCharSet(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1347
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1348
    invoke-static {v10}, Lorg/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v13, "\\/:*?\"<>|"

    invoke-direct {v10, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 1353
    :goto_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1354
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1355
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1360
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "utf-8"

    .line 1361
    invoke-static {v0, v10}, Lcom/android/providers/telephony/MmsProvider;->getBytesByCharSet(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1362
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    .line 1366
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1372
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    .line 1373
    invoke-virtual {v12, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1375
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertPart(): contentLocation="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parts"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/PART_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-static {v6}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, -0x1

    const-string v8, "."

    if-eqz v14, :cond_6

    .line 1383
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v15, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 1385
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    const-string v15, "dcf"

    .line 1388
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "insertPart(): File extenstion is dcf. Don\'t need to change to fl."

    .line 1389
    invoke-static {v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1393
    :cond_5
    invoke-static {v0}, Lcom/google/android/mms/util/DownloadDrmHelper;->modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    move-object v14, v0

    const-string v15, "_data"

    .line 1397
    invoke-virtual {v2, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_a

    .line 1402
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    .line 1403
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1406
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v12, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    move/from16 v17, v7

    const/16 v7, 0x32

    if-le v11, v7, :cond_9

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertPart(): origLength = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2d

    const/4 v4, 0x0

    .line 1408
    invoke-virtual {v12, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1412
    invoke-virtual {v2, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1415
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 1416
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1419
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create new partFile again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v1, "insertPart(): createNewFile"

    .line 1422
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1423
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    move/from16 v17, v7

    .line 1428
    :goto_4
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1b6

    const/4 v3, -0x1

    .line 1432
    invoke-static {v14, v0, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertPart(): setPermissions result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    move/from16 v17, v7

    :cond_c
    :goto_5
    const-wide/16 v3, -0x1

    .line 1439
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    .line 1440
    invoke-virtual {v1, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1445
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    :try_start_3
    const-string v5, "insertPart(): insertion error"

    .line 1443
    invoke-static {v9, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_d

    const-string v0, "insertPart(): failed!"

    .line 1449
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 1453
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/part/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertPart(): "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " succeeded"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_e

    .line 1464
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide v6, 0x200000000L

    add-long/2addr v6, v3

    .line 1469
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "text"

    .line 1470
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "index_text"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "source_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x2

    .line 1472
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "table_to_use"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "words"

    .line 1476
    invoke-virtual {v1, v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1477
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_5
    const-string v2, "insertPart(): words insertion error"

    .line 1479
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1481
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1482
    throw v0

    :cond_e
    :goto_a
    return-object v5

    .line 1445
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1446
    throw v0
.end method

.method private isDuplicatedItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;)Z
    .locals 3

    .line 1555
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1558
    invoke-direct {p0, p1, v2, p2}, Lcom/android/providers/telephony/backup/MmsBNRClient;->checkDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    .line 1564
    :cond_1
    iget-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOpBackupSync:Z

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 1568
    iget-object p1, p2, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->transactionId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->findAdditionalDuplicatedItem(Ljava/lang/String;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method private isMessageBetween([JLandroid/content/ContentValues;)Z
    .locals 5

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    .line 1140
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "date"

    .line 1144
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    const/4 v0, 0x0

    .line 1149
    aget-wide v1, p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-wide v3, p1, p0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    move v1, p0

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-nez v1, :cond_3

    .line 1151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMessageBetween(): from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", to="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p0, p1, p0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/MmsBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    :goto_1
    return p0
.end method

.method private loadColumns()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    .line 783
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 784
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "seen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "thread_classification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "device_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "pin_to_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_original_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_original_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_recipient_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_content_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_content_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_file_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_count_info"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v0, "safe_message"

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private loadExistingItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 831
    new-instance v7, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 832
    iget-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 833
    iget-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_0
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 836
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadExistingItems(Landroid/content/Context;)V
    .locals 18

    .line 802
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v9, "loadExistingItems(): failed!"

    const-string v10, "TP/MmsBNRClient"

    if-nez v1, :cond_0

    .line 804
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v2, "pdu"

    .line 808
    sget-object v3, Lcom/android/providers/telephony/backup/MmsBNRClient;->DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_id"

    .line 810
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v0, "date"

    .line 811
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v0, "msg_box"

    .line 812
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "tr_id"

    .line 813
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "m_id"

    .line 814
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "thread_id"

    .line 815
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, p0

    move-object v15, v0

    .line 816
    invoke-direct/range {v11 .. v17}, Lcom/android/providers/telephony/backup/MmsBNRClient;->loadExistingItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 819
    sget-boolean v2, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableOpBackupSync:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    const/4 v2, 0x2

    .line 820
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object/from16 v2, p0

    .line 822
    iget-object v3, v2, Lcom/android/providers/telephony/backup/MmsBNRClient;->mTransactionIdList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object/from16 v2, p0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 825
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_4

    .line 808
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 826
    :catch_0
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 6

    .line 913
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)I

    move-result v0

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinished(): inserted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSucceed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TP/MmsBNRClient"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreCount(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_parsing"

    const-string v2, "MMS"

    .line 915
    invoke-static {v0, v2, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 919
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 921
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllRestoreFinished(Landroid/content/Context;)Z

    move-result v2

    .line 922
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getTotalRestoreCount(Landroid/content/Context;)I

    move-result v3

    .line 923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFinished(): allTasksFinished="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", totalRestored="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all restore finished count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 928
    invoke-static {p1, v4}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;I)V

    .line 929
    sget v4, Lcom/android/providers/telephony/backup/BnRPreferences;->INVALID_PID:I

    invoke-static {p1, v4}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setPid(Landroid/content/Context;I)V

    .line 930
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    .line 931
    iget-object v4, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 935
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updateClassificationThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 936
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    const-string v2, "restoreFinished(): updateRestoredThreads"

    .line 940
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRestoredThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    const-string p1, "restoreFinished(): updateRestoredThreads finished"

    .line 942
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 945
    iget-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private restoreMmsAttachment(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_f

    .line 1490
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_9

    .line 1494
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreMmsAttachment(): data="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/MmsBNRClient"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PART_"

    .line 1496
    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const-string p0, "/"

    .line 1498
    invoke-virtual {p3, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    .line 1499
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 p0, p0, 0x1

    if-le v1, p0, :cond_1

    .line 1500
    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1502
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "restoreMmsAttachment(): skipped, data="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1506
    :cond_2
    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1510
    :goto_0
    invoke-interface {p4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p0, "restoreMmsAttachment(): skipped, there\'s no such file on dataMap"

    .line 1511
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1515
    :cond_3
    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 1516
    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p3, :cond_e

    iget-object p3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p3, :cond_4

    goto/16 :goto_8

    .line 1521
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "content://mms/part/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1522
    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string p4, "PATH"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, " is null"

    const-string v1, "Stream for "

    const/4 v2, 0x0

    const-string v3, "restoreMmsAttachment(): failed"

    if-eqz p3, :cond_9

    .line 1523
    :try_start_0
    new-instance p3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_7

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    .line 1529
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    :goto_1
    if-lez p2, :cond_5

    .line 1531
    invoke-virtual {p0, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 1532
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    .line 1534
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1526
    :cond_7
    :try_start_5
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz p0, :cond_8

    .line 1523
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_8
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p0

    .line 1535
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1537
    :cond_9
    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "DATA"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1538
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 1539
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    if-eqz p1, :cond_a

    .line 1543
    :try_start_b
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1544
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz p1, :cond_d

    .line 1545
    :try_start_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_5

    .line 1541
    :cond_a
    :try_start_d
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :goto_5
    if-eqz p1, :cond_b

    .line 1539
    :try_start_e
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    throw p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception p0

    .line 1546
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1549
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restoreMmsAttachment(): skipped, unknown attachment type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    return-void

    :cond_e
    :goto_8
    const-string p0, "restoreMmsAttachment(): skipped, restoring file is null"

    .line 1517
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    return-void
.end method

.method private restoreMmsItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const-string v4, "PATH"

    const-string v5, "MMS"

    .line 950
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ADDRESS"

    .line 951
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "PART"

    .line 952
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 953
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-string v9, "DataValue"

    .line 954
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 955
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 957
    :cond_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const-string v10, "GROUP_ADDR"

    .line 958
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 959
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 962
    :cond_1
    invoke-direct {v1, v5}, Lcom/android/providers/telephony/backup/MmsBNRClient;->convertMmsRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 964
    iget-object v10, v1, Lcom/android/providers/telephony/backup/MmsBNRClient;->mMsgPeriod:[J

    invoke-direct {v1, v10, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->isMessageBetween([JLandroid/content/ContentValues;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string v10, "m_type"

    .line 968
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x82

    cmp-long v13, v11, v13

    if-eqz v13, :cond_19

    const-wide/16 v13, 0x87

    cmp-long v13, v11, v13

    if-eqz v13, :cond_19

    .line 974
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 977
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const-string v13, "TP/MmsBNRClient"

    const/4 v15, 0x1

    if-eqz v9, :cond_2

    .line 978
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_2

    const-string v5, "restoreMmsItem(): Restore with GROUP_ADDR"

    .line 979
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 980
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 981
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 983
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_a

    const-string v9, "restoreMmsItem(): Restore with ADDRESS"

    .line 984
    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "msg_box"

    .line 985
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v15, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move v5, v15

    :goto_1
    const-wide/16 v16, 0x86

    cmp-long v9, v11, v16

    if-nez v9, :cond_4

    move v5, v15

    .line 992
    :cond_4
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 993
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x0

    .line 994
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_7

    .line 995
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "address"

    .line 996
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v7

    const-string v7, "insert-address-token"

    .line 997
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const-string v7, "type"

    .line 1001
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/16 v14, 0x89

    if-ne v7, v14, :cond_6

    .line 1003
    invoke-interface {v9, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1005
    :cond_6
    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v17

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v17, v7

    if-eqz v5, :cond_8

    .line 1010
    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1011
    :cond_8
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "restoreMmsItem(): FROM list is empty, create with TO list"

    .line 1012
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1015
    :cond_9
    invoke-interface {v10, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v17, v7

    :goto_4
    const-string v5, "creator"

    move-object/from16 v7, p4

    .line 1019
    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-static {v3, v10}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v9

    .line 1021
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "thread_id"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1022
    iget-object v5, v1, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-direct {v1, v2, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->insertMms(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 1030
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    const/4 v0, 0x0

    .line 1032
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_c

    .line 1033
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1034
    invoke-direct {v1, v7}, Lcom/android/providers/telephony/backup/MmsBNRClient;->convertAddrRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v7

    .line 1035
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "msg_id"

    invoke-virtual {v7, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1036
    invoke-direct {v1, v2, v7}, Lcom/android/providers/telephony/backup/MmsBNRClient;->insertAddr(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1038
    :cond_b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "restoreMmsItem(): addr insertion fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_c
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MmsBNRClient;->mSavePath:Ljava/lang/String;

    const-string v6, "/"

    if-nez v0, :cond_d

    const-string v0, ""

    goto :goto_6

    .line 1045
    :cond_d
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 1046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_6
    move-object v7, v0

    .line 1049
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    .line 1050
    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_14

    .line 1051
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 1053
    invoke-virtual {v14}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v15

    if-nez v15, :cond_f

    goto/16 :goto_c

    :cond_f
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .line 1058
    :goto_8
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v0

    move-object/from16 p4, v5

    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v8, v0, :cond_12

    .line 1060
    :try_start_0
    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v16, :cond_11

    .line 1062
    :try_start_1
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v16, :cond_10

    add-int/lit8 v5, v16, 0x1

    .line 1065
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1068
    :cond_10
    :try_start_3
    new-instance v5, Landroid/util/Pair;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v6

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v4

    goto :goto_b

    :catch_0
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_9

    :cond_11
    move-object/from16 v16, v6

    .line 1071
    new-instance v5, Landroid/util/Pair;

    const-string v6, "DATA"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v19, v4

    :try_start_5
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    :goto_9
    move-object/from16 v19, v4

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v16, v6

    :goto_a
    const-string v4, "restoreMmsItem(): error fileName"

    .line 1074
    invoke-static {v13, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p4

    move-object/from16 v6, v16

    move-object/from16 v4, v19

    goto :goto_8

    :cond_12
    move-object/from16 v19, v4

    move-object/from16 v16, v6

    goto :goto_d

    :cond_13
    :goto_c
    move-object/from16 v19, v4

    move-object/from16 p4, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    :goto_d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p4

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    goto/16 :goto_7

    :cond_14
    move-object/from16 p4, v5

    const/4 v0, 0x0

    const/4 v14, 0x0

    .line 1082
    :goto_e
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v14, v4, :cond_17

    move-object/from16 v4, v17

    .line 1083
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1084
    invoke-direct {v1, v5}, Lcom/android/providers/telephony/backup/MmsBNRClient;->convertPartRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "ct"

    .line 1086
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_15

    const-string v8, "application/smil"

    .line 1087
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1088
    invoke-static {v6}, Lcom/android/providers/telephony/MmsProvider;->getSmilTextFrom(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "mid"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "_data"

    .line 1092
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1094
    invoke-direct {v1, v2, v6, v3}, Lcom/android/providers/telephony/backup/MmsBNRClient;->insertPart(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 1099
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v6, v6

    .line 1100
    invoke-direct {v1, v3, v6, v5, v11}, Lcom/android/providers/telephony/backup/MmsBNRClient;->restoreMmsAttachment(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v4

    goto :goto_e

    .line 1096
    :cond_16
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "restoreMmsItem(): part insertion fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_17
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_18
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "restoreMmsItem(): mms insertion fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_19
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed m_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_1a
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Not between period"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 12

    const-string v0, "TP/MmsBNRClient"

    const-string v1, "addKeyAndDate(): Collect keys"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "pdu"

    .line 254
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p1, "addKeyAndDate(): failed!"

    const/4 v1, 0x0

    if-nez v2, :cond_0

    .line 256
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 261
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/providers/telephony/backup/MmsBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_6

    :try_start_2
    const-string v3, "_id"

    .line 264
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "read"

    .line 265
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "thread_id"

    .line 266
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    if-gez v5, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "date"

    .line 274
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    .line 279
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 282
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v4

    .line 288
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/backup/MmsBNRClient;->checkUnwanted(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addKeyAndDate(): Skipped, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is unwanted"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {p2, v3, v4, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKeyAndDate(Ljava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "addKeyAndDate(): Skipped, timestamp is invalid"

    .line 284
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 296
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addKeyAndDate(): Unknown Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 299
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 304
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "addKeyAndDate(): canceled"

    .line 305
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addKeyAndDate(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keys collected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_9

    .line 261
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    .line 300
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    throw p0
.end method

.method public backupCompleted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->backupFinished(Landroid/content/Context;Z)V

    return-void
.end method

.method public backupFailed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 456
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->backupFinished(Landroid/content/Context;Z)V

    return-void
.end method

.method public backupRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;Ljava/util/ArrayList;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 362
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    const-string v10, "TP/MmsBNRClient"

    if-nez v0, :cond_0

    const-string v0, "backupRecord(): There\'s nothing to backup"

    .line 363
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupRecord(): Start backup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v0

    const-string v11, "file_parsing"

    const-string v12, "MMS"

    .line 367
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "pdu"

    .line 371
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "backupRecord(): failed!"

    const/4 v0, 0x0

    if-nez v5, :cond_1

    .line 373
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 377
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 379
    invoke-direct {v7, v3}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 390
    :try_start_0
    sget-object v15, Lcom/android/providers/telephony/backup/MmsBNRClient;->BACKUP_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "_id"

    move-object v13, v5

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v14, v0

    .line 391
    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_9

    :try_start_2
    const-string v0, "_id"

    .line 393
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const-string v1, "read"

    .line 397
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    const-string v2, "thread_id"

    .line 401
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 406
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-wide v2, v3

    move v4, v0

    move-object v9, v5

    move-object/from16 v21, v6

    move-wide v5, v15

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    .line 408
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_2

    .line 413
    :cond_4
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 416
    invoke-static {v1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v1

    .line 421
    invoke-direct {v7, v9, v13}, Lcom/android/providers/telephony/backup/MmsBNRClient;->buildBackupData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v4, p2

    .line 422
    :try_start_4
    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addRecord(Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v14, v14, 0x1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupRecord(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    move-object/from16 v4, p2

    .line 418
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Timestamp is invalid"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v4, p2

    goto/16 :goto_5

    :cond_6
    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v21, v6

    .line 403
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No thread_id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v21, v6

    .line 399
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No read"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v21, v6

    .line 395
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v21, v6

    .line 430
    :goto_3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupRecord(): Unknown Exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v21, v6

    .line 428
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupRecord(): Json failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v4, p2

    move-object v9, v5

    move-object/from16 v21, v6

    .line 426
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupRecord(): Skipped, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    move-object v5, v9

    move-object/from16 v6, v21

    const/4 v9, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_9
    move-object/from16 v4, p2

    move-object/from16 v21, v6

    if-eqz v13, :cond_a

    .line 433
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 437
    :cond_a
    iget v0, v7, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    invoke-static {v8, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "backupRecord(): backup canceled"

    .line 441
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupRecord(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records are backed up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupCount(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :catchall_1
    move-exception v0

    move-object/from16 v21, v6

    :goto_7
    move-object v1, v0

    if-eqz v13, :cond_c

    .line 390
    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_9
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v21, v6

    :goto_9
    move-object/from16 v1, v21

    .line 434
    :try_start_9
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 437
    :goto_a
    iget v1, v7, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    invoke-static {v8, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    .line 438
    throw v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "MMS"

    return-object p0
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;)V
    .locals 0

    .line 149
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isDoingInitSync()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x144

    .line 150
    invoke-interface {p2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onError(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onSuccess()V

    :goto_0
    return-void
.end method

.method public isBackupPrepare(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TP/MmsBNRClient"

    const-string v1, "isBackupPrepare()"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 235
    iput v1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mExceedMaxSizeCount:I

    .line 237
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->loadBackupThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p1, "com.samsung.android.scloud"

    .line 244
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public isRestorePrepare(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "TP/MmsBNRClient"

    const-string v1, "isRestorePrepare()"

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 734
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 736
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->loadColumns()V

    .line 741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mItemsMap:Ljava/util/Map;

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mTransactionIdList:Ljava/util/List;

    .line 743
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->loadExistingItems(Landroid/content/Context;)V

    .line 745
    sget-boolean v0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz v0, :cond_1

    .line 746
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 747
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTImdnIdItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 750
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mClassificationThreads:Ljava/util/List;

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    const-string v2, "savePath"

    .line 755
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mSavePath:Ljava/lang/String;

    const-string v2, "callerPkg"

    .line 756
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 757
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    :cond_2
    const-string v2, "msgPeriod"

    .line 759
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 760
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_4

    .line 762
    array-length v2, p2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    const/4 p2, 0x0

    .line 763
    iput-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mMsgPeriod:[J

    goto :goto_0

    :cond_3
    new-array v2, v3, [J

    .line 765
    iput-object v2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mMsgPeriod:[J

    .line 766
    aget-wide v3, p2, v1

    aput-wide v3, v2, v1

    .line 767
    aget-wide v3, p2, v0

    aput-wide v3, v2, v0

    .line 772
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    if-nez p2, :cond_5

    const-string p2, "com.samsung.android.scloud"

    .line 773
    iput-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 775
    :cond_5
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    return v0
.end method

.method public restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 894
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 904
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/MmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 899
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/MmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 909
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/MmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 8

    const-string v0, "restoreRecord(): insertion failed"

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecord(): Start restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " records"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TP/MmsBNRClient"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object p3, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 844
    invoke-static {p3}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "file_parsing"

    const-string v2, "MMS"

    .line 843
    invoke-static {v1, v2, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MmsBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const-string p0, "restoreRecord(): failed!"

    .line 847
    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 852
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 854
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 855
    invoke-virtual {p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 860
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 861
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    goto :goto_1

    .line 864
    :cond_2
    iget-object v6, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-direct {p0, p3, v6, v5, v7}, Lcom/android/providers/telephony/backup/MmsBNRClient;->restoreMmsItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    .line 870
    :try_start_2
    invoke-static {p4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    invoke-virtual {p5, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreRecord(): Skipped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p5, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_3
    :goto_1
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object p3, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 875
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object p3, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 876
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient;->mClassificationThreads:Ljava/util/List;

    invoke-static {p1, p2, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putClassificationThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 881
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 884
    invoke-virtual {p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "restoreRecord(): restore canceled"

    .line 885
    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_4
    sget-object p0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, p0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "restoreRecord(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " records restored"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 878
    :try_start_3
    invoke-static {p4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 881
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw p0
.end method
