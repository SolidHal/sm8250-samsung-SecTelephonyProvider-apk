.class public Lcom/android/providers/telephony/backup/SmsBNRClient;
.super Ljava/lang/Object;
.source "SmsBNRClient.java"

# interfaces
.implements Lcom/android/providers/telephony/backup/IBNRClient;


# static fields
.field private static final BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

.field private static final BACKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final GROUP_DELIMITER:Ljava/lang/String; = "GROUP::"

.field private static final TAG:Ljava/lang/String; = "TP/SmsBNRClient"

.field private static final THREAD_ADDRESS:Ljava/lang/String; = "thread_addr"

.field private static mEnableCarrierServerSync:Z = false

.field private static mEnableMmsTransactionCustomize4Korea:Z = false

.field private static mEnableUnknownAddressToNullDB:Z = false


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

.field private mEnableSmsServerTime:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "read"

    const-string v2, "thread_id"

    const-string v3, "date"

    const-string v4, "type"

    const-string v5, "address"

    const-string v6, "using_mode"

    .line 67
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/SmsBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    .line 83
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 84
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mClassificationThreads:Ljava/util/List;

    .line 85
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableSmsServerTime:Z

    .line 93
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mMsgPeriod:[J

    return-void
.end method

.method private backupFinished(Landroid/content/Context;Z)V
    .locals 4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupFinished(): isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TP/SmsBNRClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 409
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->initialize(Landroid/content/Context;)Z

    .line 411
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllBackupFinished(Landroid/content/Context;)Z

    move-result p2

    .line 412
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getMmxCountExceedMaxSize(Landroid/content/Context;)I

    move-result v1

    .line 413
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

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_EXCEED_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "exceedCount"

    .line 416
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/providers/telephony/backup/WssnpsFileService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 418
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 421
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isBackupFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 422
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isBackupFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 423
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->clearBackupThreadInfo()V

    :cond_1
    if-eqz p2, :cond_2

    .line 428
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllBackupFinished()Ljava/lang/String;

    move-result-object p0

    const-string p2, "file_parsing"

    .line 427
    invoke-static {p2, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 429
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private buildBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p0, "type"

    .line 459
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5

    .line 463
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq v0, p0, :cond_1

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    new-instance p1, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "thread_id"

    .line 470
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 474
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 476
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "address"

    .line 478
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 479
    iget-object v1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->addrs:Ljava/util/Set;

    const-string v2, " "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    :cond_2
    iget v0, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->classification:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_classification"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    iget p1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pin_to_top"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const/4 p1, 0x0

    const-string v0, "transaction_id"

    .line 485
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p0

    .line 472
    :cond_4
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "No thread_id"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_5
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "No type"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private bulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;[Landroid/content/ContentValues;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 911
    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 916
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getRecipients([Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v1

    .line 917
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    .line 918
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 919
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 920
    sget-boolean v5, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableUnknownAddressToNullDB:Z

    const-string v6, ""

    const-string v7, "Unknown address"

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 921
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 922
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    move v3, v8

    goto :goto_0

    .line 924
    :cond_2
    sget-boolean v5, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableUnknownAddressToNullDB:Z

    if-nez v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 925
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 926
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const-string v2, " "

    .line 932
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 933
    array-length v3, p3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p3, v4

    const-string v6, "address"

    .line 934
    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v2, -0x1

    .line 939
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 940
    invoke-static {p2, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 942
    :cond_5
    iget-object p2, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulkInsert(): threadId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TP/SmsBNRClient"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    array-length p2, p3

    move v4, v0

    :goto_3
    if-ge v0, p2, :cond_8

    aget-object v5, p3, v0

    .line 948
    invoke-virtual {p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "bulkInsert():  keyListener.isCanceled"

    .line 949
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "creator"

    .line 955
    invoke-virtual {v5, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "thread_id"

    .line 956
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 958
    invoke-direct {p0, p1, v5}, Lcom/android/providers/telephony/backup/SmsBNRClient;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 963
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    .line 970
    invoke-virtual {p5, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto :goto_5

    .line 960
    :cond_7
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "insertion fail"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v5

    :try_start_2
    const-string v7, "bulkInsert(): insert error"

    .line 968
    invoke-static {v1, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 970
    :goto_4
    invoke-virtual {p5, v6}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v5

    .line 966
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bulkInsert(): Skipped, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 970
    :goto_6
    invoke-virtual {p5, v6}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    .line 971
    throw p0

    :cond_8
    :goto_7
    return v4

    :cond_9
    :goto_8
    return v0
.end method

.method private checkUnwanted(Landroid/database/Cursor;)Z
    .locals 3

    const-string p0, "type"

    .line 267
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "TP/SmsBNRClient"

    const/4 v1, 0x1

    if-gez p0, :cond_0

    const-string p0, "checkUnwanted(): type not found"

    .line 269
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 273
    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq v1, p0, :cond_1

    const/4 v2, 0x2

    if-eq v2, p0, :cond_1

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): Not allowed type="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "address"

    .line 279
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "thread_id"

    .line 281
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_3

    const-string p0, "checkUnwanted(): address and thread_id is empty"

    .line 283
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 287
    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->isCmasAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "checkUnwanted(): CMAS messages are not allowed by FCC rule"

    .line 289
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 294
    :cond_3
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportTwoPhoneBnR()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "using_mode"

    .line 295
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4

    .line 297
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_4

    const-string p0, "checkUnwanted(): TwoPhone messages are not allowed"

    .line 299
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private convertRecordToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 739
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 741
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 742
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 743
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 744
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "_id"

    .line 745
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "source_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 749
    :cond_1
    iget-object v4, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 753
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 754
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 755
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 756
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_4
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 758
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 759
    :cond_5
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 760
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 761
    :cond_6
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_7

    .line 762
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_7
    const-string v2, "TP/SmsBNRClient"

    const-string v3, "convertRecordToContentValues(): value type is unknown"

    .line 764
    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p0, "type"

    .line 768
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_9

    const-wide/16 v1, 0x0

    .line 769
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 770
    :cond_9
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "address"

    .line 772
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, ""

    goto :goto_1

    :cond_a
    const-string v1, "Unknown,address"

    .line 775
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "#Emergency,Alert#"

    .line 776
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const-string v1, ","

    .line 777
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    .line 778
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 780
    :cond_c
    :goto_1
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private correctAddress(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2

    const-string p0, "thread_addr"

    .line 990
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 991
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "address"

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 996
    :cond_0
    sget-boolean v0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v0, :cond_1

    .line 997
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 999
    :cond_1
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1004
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1005
    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    return-object p0
.end method

.method private getIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 450
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 455
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

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKUP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_%02d_%02d_%010d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p4}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 439
    iget p4, p4, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    .line 442
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

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 170
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/SmsBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getReadableDatabase(): failed"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 177
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getReadableDatabase(): failed!"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getRecipients([Landroid/content/ContentValues;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 978
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 979
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 980
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/backup/SmsBNRClient;->correctAddress(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    .line 981
    invoke-static {v3}, Lcom/android/providers/telephony/MmsSmsProvider;->getValidRecipients(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 983
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 151
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/SmsBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getWritableDatabase(): failed"

    .line 152
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 158
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getWritableDatabase(): failed!"

    .line 160
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private groupInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;[Landroid/content/ContentValues;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)I
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "groupInsert(): Skipped, "

    const-string v7, "insertion fail"

    const-string v8, "groupInsert(): insert error"

    const/4 v9, 0x0

    if-eqz v3, :cond_c

    .line 803
    array-length v0, v3

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 808
    :cond_0
    invoke-direct {v1, v3}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getRecipients([Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    .line 809
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v9

    .line 810
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 811
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 812
    sget-boolean v14, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableUnknownAddressToNullDB:Z

    const-string v15, ""

    const-string v13, "Unknown address"

    if-eqz v14, :cond_2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 813
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 814
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 816
    :cond_2
    sget-boolean v14, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableUnknownAddressToNullDB:Z

    if-nez v14, :cond_1

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 817
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 818
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_4

    const-string v10, " "

    .line 824
    invoke-static {v10, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 825
    array-length v11, v3

    move v12, v9

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v13, v3, v12

    const-string v14, "address"

    .line 826
    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 831
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v10, p2

    .line 832
    invoke-static {v10, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v13

    goto :goto_3

    :cond_5
    const-wide/16 v13, -0x1

    .line 834
    :goto_3
    iget-object v0, v1, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "groupInsert(): threadId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "TP/SmsBNRClient"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    aget-object v0, v3, v9

    const-string v15, "creator"

    invoke-virtual {v0, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    aget-object v0, v3, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "thread_id"

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 846
    :try_start_0
    aget-object v0, v3, v9

    invoke-direct {v1, v2, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 851
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 859
    invoke-virtual {v5, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    move-object v11, v8

    move-wide/from16 v8, v16

    const/16 v16, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_6

    .line 848
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v11, v0

    move v0, v9

    const/4 v9, 0x0

    .line 857
    :goto_4
    :try_start_3
    invoke-static {v10, v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 859
    invoke-virtual {v5, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    move/from16 v16, v0

    move-object v11, v8

    :goto_5
    const-wide/16 v8, -0x1

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v11, v0

    move v0, v9

    const/4 v9, 0x0

    :goto_6
    move/from16 v18, v0

    .line 855
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 859
    invoke-virtual {v5, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    move-object v11, v8

    move/from16 v16, v18

    goto :goto_5

    .line 862
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    move-object/from16 v18, v11

    const-string v11, "group_id"

    move-object/from16 v19, v6

    if-lez v17, :cond_7

    .line 865
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v20, v10

    const/4 v10, 0x1

    invoke-direct {v6, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 866
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string v7, "_id="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "sms"

    const/4 v5, 0x0

    invoke-virtual {v2, v10, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8

    :cond_7
    move-object/from16 v21, v7

    move-object/from16 v20, v10

    :goto_8
    const/4 v10, 0x1

    .line 871
    :goto_9
    array-length v5, v3

    if-ge v10, v5, :cond_9

    .line 872
    aget-object v5, v3, v10

    const-string v6, "hidden"

    if-lez v17, :cond_8

    .line 874
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x1

    .line 875
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    :cond_8
    const/4 v7, 0x1

    .line 877
    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "group_type"

    .line 878
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 881
    :goto_a
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p3

    goto :goto_9

    .line 884
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 885
    invoke-virtual {v0, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 890
    :try_start_5
    invoke-direct {v1, v2, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 895
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v5, p5

    .line 902
    invoke-virtual {v5, v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    move-object/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v6, v21

    goto :goto_11

    :cond_a
    move-object/from16 v5, p5

    .line 892
    :try_start_6
    new-instance v0, Ljava/lang/Exception;
    :try_end_6
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v6, v21

    :try_start_7
    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v6, v21

    :goto_c
    move-object/from16 v7, v18

    move-object/from16 v8, v20

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v5, p5

    :goto_d
    const/4 v1, 0x0

    goto :goto_12

    :catch_8
    move-exception v0

    move-object/from16 v5, p5

    :goto_e
    move-object/from16 v6, v21

    :goto_f
    move-object/from16 v7, v18

    move-object/from16 v8, v20

    .line 900
    :try_start_8
    invoke-static {v8, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v9, 0x0

    .line 902
    invoke-virtual {v5, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    move-object/from16 v10, v19

    goto :goto_11

    :catch_9
    move-exception v0

    move-object/from16 v5, p5

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    move-object/from16 v6, v21

    .line 898
    :goto_10
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v19

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v9, 0x0

    .line 902
    invoke-virtual {v5, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    :goto_11
    move-object/from16 v21, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v19, v10

    goto/16 :goto_b

    :goto_12
    invoke-virtual {v5, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    .line 903
    throw v0

    :cond_b
    return v16

    :catchall_3
    move-exception v0

    move-object v11, v9

    .line 859
    :goto_13
    invoke-virtual {v5, v11}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    .line 860
    throw v0

    :cond_c
    :goto_14
    return v9
.end method

.method private initialize(Landroid/content/Context;)Z
    .locals 8

    .line 108
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    .line 109
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableMmsTransactionCustomize4Korea:Z

    const-string v1, "CscFeature_Message_CreateNullDB4EmptyOriginator"

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableUnknownAddressToNullDB:Z

    .line 111
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v1

    sput-boolean v1, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableCarrierServerSync:Z

    const-string v1, "CscFeature_Message_DisplaySmsTimeAs"

    .line 113
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->isPhoneAndServerTime(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->isServerTime(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableSmsServerTime:Z

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "context://telephony/carriers"

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 131
    :cond_2
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    const-string v0, "TP/SmsBNRClient"

    if-nez p1, :cond_3

    const-string p0, "initialize(): failed, context is null"

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 139
    :cond_3
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_4

    const-string p0, "initialize(): failed, open helper is null"

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;
        }
    .end annotation

    const-string v0, "body"

    const-string v1, "TP/SmsBNRClient"

    const-string v2, "sms"

    const-string v3, "type"

    .line 1019
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    .line 1052
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v4, :cond_0

    .line 1019
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1020
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v7, 0x1

    if-eq v7, v4, :cond_2

    const/4 v8, 0x2

    if-ne v8, v4, :cond_1

    goto :goto_1

    .line 1024
    :cond_1
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1026
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date"

    .line 1028
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v8, "seen"

    const-string v9, "read"

    if-ne v4, v7, :cond_4

    .line 1033
    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1034
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1035
    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1036
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1037
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1041
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :goto_2
    const-string v4, "thread_id"

    .line 1045
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1046
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v8, "thread_classification"

    .line 1048
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1049
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1050
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_6
    const-string v8, "announcements_subtype"

    .line 1053
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1054
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_3

    :cond_7
    move-object v8, v6

    :goto_3
    if-gtz v5, :cond_8

    if-eqz v8, :cond_9

    .line 1057
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_9

    .line 1058
    :cond_8
    iget-object v5, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mClassificationThreads:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v5, "pin_to_top"

    .line 1062
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_a

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1063
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1064
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move v8, v9

    :goto_4
    if-eq v8, v9, :cond_b

    .line 1067
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string p0, "thread_addr"

    .line 1071
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1072
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1075
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string p0, "reserved"

    .line 1076
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_d

    move-object v8, v6

    .line 1081
    :cond_d
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_e

    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1086
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-gtz v4, :cond_f

    .line 1087
    invoke-virtual {p2, p0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    :cond_f
    sget-boolean p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_10

    .line 1091
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateItemMap()V

    .line 1094
    :cond_10
    new-instance p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;-><init>(Landroid/content/ContentValues;)V

    .line 1096
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v4

    .line 1099
    sget-boolean v5, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz v5, :cond_11

    .line 1100
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedSMSWithChatItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result p0

    if-eqz p0, :cond_11

    move v4, v7

    :cond_11
    if-eqz v4, :cond_13

    .line 1106
    sget-boolean p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_12

    .line 1107
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object p0

    .line 1108
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->updateDuplicateMsgTimeStamp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;J)V

    .line 1109
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->removeDuplicateMsginHashMap(Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;)V

    .line 1110
    new-instance p1, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicated item with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->getCandidateType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1112
    :cond_12
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-wide/16 v3, -0x1

    .line 1119
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1120
    invoke-virtual {p1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    :goto_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception p0

    :try_start_1
    const-string v5, "insert(): insertion error"

    .line 1123
    invoke-static {v1, v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1129
    :goto_6
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1130
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1131
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "index_text"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v5, "source_id"

    invoke-virtual {p0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v5, "table_to_use"

    invoke-virtual {p0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "words"

    .line 1136
    invoke-virtual {p1, p2, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1137
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    :try_start_3
    const-string p2, "insert(): words insertion error"

    .line 1139
    invoke-static {v1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1141
    :goto_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-gtz p0, :cond_14

    const-string p0, "insert(): failed!"

    .line 1145
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1149
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content://"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1141
    :goto_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1142
    throw p0

    .line 1125
    :goto_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1126
    throw p0
.end method

.method private isMessageBetween([JLandroid/content/ContentValues;)Z
    .locals 5

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    .line 786
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "date"

    .line 790
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    const/4 v0, 0x0

    .line 795
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

    .line 797
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

    const-string p1, "TP/SmsBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    :goto_1
    return p0
.end method

.method private loadColumns()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    .line 555
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 556
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "seen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "group_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "group_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "hidden"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "announcements_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "thread_classification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "device_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "thread_addr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "pin_to_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_original_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_original_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_recipient_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_content_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_content_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_file_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_count_info"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoreColumns:Ljava/util/Set;

    const-string v0, "safe_message"

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 6

    .line 702
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)I

    move-result v0

    .line 703
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

    const-string v1, "TP/SmsBNRClient"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreCount(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_parsing"

    const-string v2, "SMS"

    .line 704
    invoke-static {v0, v2, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 708
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 710
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllRestoreFinished(Landroid/content/Context;)Z

    move-result v2

    .line 711
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getTotalRestoreCount(Landroid/content/Context;)I

    move-result v3

    .line 712
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

    .line 716
    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllRestoreFinished(I)Ljava/lang/String;

    move-result-object v4

    .line 715
    invoke-static {v0, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 717
    invoke-static {p1, v4}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;I)V

    .line 718
    sget v4, Lcom/android/providers/telephony/backup/BnRPreferences;->INVALID_PID:I

    invoke-static {p1, v4}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setPid(Landroid/content/Context;I)V

    .line 719
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    .line 720
    iget-object v4, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 724
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updateClassificationThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 725
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    const-string v2, "restoreFinished(): updateRestoredThreads"

    .line 729
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRestoredThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    const-string p1, "restoreFinished(): updateRestoredThreads finished"

    .line 731
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 734
    iget-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 12

    const-string v0, "TP/SmsBNRClient"

    const-string v1, "addKeyAndDate(): Collect keys"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "sms"

    .line 209
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p1, "addKeyAndDate(): failed!"

    const/4 v1, 0x0

    if-nez v2, :cond_0

    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 216
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/providers/telephony/backup/SmsBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
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

    .line 219
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "read"

    .line 220
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "thread_id"

    .line 221
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    if-gez v5, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "date"

    .line 228
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    .line 233
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 236
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v4

    .line 242
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/backup/SmsBNRClient;->checkUnwanted(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addKeyAndDate(): Skipped, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is unwanted"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {p2, v3, v4, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKeyAndDate(Ljava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "addKeyAndDate(): Skipped, timestamp is invalid"

    .line 238
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 250
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addKeyAndDate(): Unknown Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 253
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 258
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "addKeyAndDate(): canceled"

    .line 259
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
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

    .line 216
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

    .line 254
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    throw p0
.end method

.method public backupCompleted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->backupFinished(Landroid/content/Context;Z)V

    return-void
.end method

.method public backupFailed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->backupFinished(Landroid/content/Context;Z)V

    return-void
.end method

.method public backupRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;Ljava/util/ArrayList;)Z
    .locals 21
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

    .line 310
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x1

    const-string v9, "TP/SmsBNRClient"

    if-nez v0, :cond_0

    const-string v0, "backupRecord(): There\'s nothing to backup"

    .line 311
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 314
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

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v0

    const-string v10, "file_parsing"

    const-string v11, "SMS"

    .line 315
    invoke-static {v10, v11, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "sms"

    .line 319
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v5, "backupRecord(): failed!"

    const/4 v0, 0x0

    if-nez v12, :cond_1

    .line 321
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 325
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    invoke-direct {v7, v3}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 332
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 337
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

    move-result-object v15

    .line 338
    :try_start_0
    sget-object v14, Lcom/android/providers/telephony/backup/SmsBNRClient;->BACKUP_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "_id"

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move v13, v0

    .line 339
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_9

    :try_start_2
    const-string v0, "_id"

    .line 341
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const-string v1, "read"

    .line 345
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    const-string v2, "thread_id"

    .line 349
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 354
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-wide v2, v3

    move v4, v0

    move-object/from16 v20, v5

    move-wide v5, v14

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    .line 356
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_2

    .line 361
    :cond_4
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 364
    invoke-static {v1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v1

    .line 369
    invoke-direct {v7, v12}, Lcom/android/providers/telephony/backup/SmsBNRClient;->buildBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v4, p2

    :try_start_4
    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addRecord(Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v13, v13, 0x1

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupRecord(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    move-object/from16 v4, p2

    .line 366
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

    move-object/from16 v20, v5

    .line 351
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No thread_id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .line 347
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No read"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .line 343
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

    move-object/from16 v20, v5

    .line 378
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

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .line 376
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

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .line 374
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

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    move-object/from16 v5, v20

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_9
    move-object/from16 v4, p2

    move-object/from16 v20, v5

    if-eqz v12, :cond_a

    .line 381
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 386
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "backupRecord(): backup canceled"

    .line 387
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupRecord(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records are backed up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {v13}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupCount(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v10, v11, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    :goto_7
    move-object v1, v0

    if-eqz v12, :cond_c

    .line 338
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
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

    :catch_9
    move-exception v0

    move-object/from16 v1, v20

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v1, v5

    .line 382
    :goto_9
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    throw v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "SMS"

    return-object p0
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;)V
    .locals 0

    .line 100
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isDoingInitSync()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x144

    .line 101
    invoke-interface {p2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onError(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onSuccess()V

    :goto_0
    return-void
.end method

.method public isBackupPrepare(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TP/SmsBNRClient"

    const-string v1, "isBackupPrepare()"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 192
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 197
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->loadBackupThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p1, "com.samsung.android.scloud"

    .line 199
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public isRestorePrepare(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "TP/SmsBNRClient"

    const-string v1, "isRestorePrepare()"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 502
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 504
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->loadColumns()V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mClassificationThreads:Ljava/util/List;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const-string v3, "callerPkg"

    .line 514
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    :cond_1
    const-string v3, "msgPeriod"

    .line 517
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 518
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_3

    .line 520
    array-length v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 521
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mMsgPeriod:[J

    goto :goto_0

    :cond_2
    new-array v3, v4, [J

    .line 523
    iput-object v3, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mMsgPeriod:[J

    .line 524
    aget-wide v4, p2, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 525
    aget-wide v4, p2, v2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e7

    add-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 530
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p2, "com.samsung.android.scloud"

    .line 531
    iput-object p2, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 534
    :cond_4
    iget-object p2, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    const-string v3, "com.wssnps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 535
    iput-boolean v2, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableSmsServerTime:Z

    .line 538
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 539
    iget-boolean v3, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableSmsServerTime:Z

    sget-boolean v4, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableCarrierServerSync:Z

    invoke-static {v3, v4}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initDuplicateChecker(ZZ)V

    .line 541
    sget-boolean v3, Lcom/android/providers/telephony/backup/SmsBNRClient;->mEnableCarrierServerSync:Z

    if-eqz v3, :cond_6

    .line 542
    invoke-static {p2, v0, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingSMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 543
    invoke-static {p2, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChatItems(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 545
    :cond_6
    invoke-static {p2, v0, v2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingSMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 548
    :goto_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    return v2
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

    .line 683
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 693
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/SmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 688
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 698
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/SmsBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    const-string v10, "GROUP::"

    const-string v1, "group_id"

    const-string v2, "address"

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreRecord(): Start restore "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " records"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "TP/SmsBNRClient"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 582
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "file_parsing"

    const-string v4, "SMS"

    .line 581
    invoke-static {v3, v4, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/SmsBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v12, :cond_0

    const-string v0, "restoreRecord(): failed!"

    .line 585
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 590
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 v14, 0x1

    .line 594
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 595
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 600
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 601
    invoke-direct {v7, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->convertRecordToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 603
    iget-object v5, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mMsgPeriod:[J

    invoke-direct {v7, v5, v0}, Lcom/android/providers/telephony/backup/SmsBNRClient;->isMessageBetween([JLandroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 607
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils;->isCmasAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 615
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 616
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_2

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v6, "hidden"

    .line 620
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move v6, v14

    goto :goto_1

    :cond_2
    move-object v5, v4

    move v6, v13

    :goto_1
    if-nez v6, :cond_3

    .line 624
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_5

    .line 631
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 632
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_5
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v5, "bulkId is null"

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_6
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v5, "CMAS messages are not allowed by FCC rule"

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_7
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v5, "Not between period"

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "restoreRecord(): convert failed"

    .line 639
    invoke-static {v11, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    invoke-virtual {v9, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreRecord(): Skipped, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v9, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "restoreRecord(): Collect sms bulk failed"

    .line 644
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    :cond_8
    :goto_2
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v6, v13

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 649
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    .line 653
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 655
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-array v2, v13, [Landroid/content/ContentValues;

    .line 656
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/content/ContentValues;

    .line 658
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 659
    iget-object v3, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    iget-object v5, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v12

    move v13, v6

    move-object/from16 v6, p5

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/SmsBNRClient;->groupInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;[Landroid/content/ContentValues;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)I

    move-result v0

    goto :goto_4

    :cond_a
    move v13, v6

    .line 661
    iget-object v3, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mContext:Landroid/content/Context;

    iget-object v5, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mCallerPkg:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/SmsBNRClient;->bulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;[Landroid/content/ContentValues;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    add-int v6, v13, v0

    .line 666
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move v13, v6

    :goto_5
    :try_start_5
    const-string v1, "restoreRecord(): bulk insertion failed"

    .line 664
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 666
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v13

    :goto_6
    const/4 v13, 0x0

    goto :goto_3

    :goto_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    throw v0

    :cond_b
    :goto_8
    move v13, v6

    .line 669
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {v8, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 670
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-static {v8, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 671
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v7, Lcom/android/providers/telephony/backup/SmsBNRClient;->mClassificationThreads:Ljava/util/List;

    invoke-static {v8, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putClassificationThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 673
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "restoreRecord(): restore canceled"

    .line 674
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_c
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v8, v0, v13}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreRecord(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14
.end method
