.class public Lcom/android/providers/telephony/backup/RcsFtBNRClient;
.super Ljava/lang/Object;
.source "RcsFtBNRClient.java"

# interfaces
.implements Lcom/android/providers/telephony/backup/IBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;
    }
.end annotation


# static fields
.field private static final BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

.field private static final BACKUP_PROJECTION:[Ljava/lang/String; = null

.field public static final FT_COLUMNS:[Ljava/lang/String;

.field private static final RECIPIENT_ADDRESS:Ljava/lang/String; = "recipient_address"

.field private static RESTORE_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TP/RcsFtBNRClient"

.field private static final THUMBNAIL_DATA:Ljava/lang/String; = "thumbnail_data"

.field private static final THUMBNAIL_NAME:Ljava/lang/String; = "thumbnail_name"

.field private static mEnableCarrierServerSync:Z = false


# instance fields
.field private mCallerPkg:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImThreadInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImThreadSession:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
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

.field private mRcsImSession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const-string v0, "_id"

    const-string v1, "read"

    const-string v2, "thread_id"

    const-string v3, "status"

    const-string v4, "updated_timestamp"

    const-string v5, "service_type"

    const-string v6, "type"

    const-string v7, "hidden"

    const-string v8, "sef_type"

    .line 80
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "transaction_id"

    const-string v4, "bytes_transf"

    const-string v5, "file_name"

    const-string v6, "file_path"

    const-string v7, "file_size"

    const-string v8, "thumbnail_path"

    const-string v9, "cancel_reason"

    const-string v10, "display_notification_status"

    const-string v11, "session_id"

    const-string v12, "content_type"

    const-string v13, "media_id"

    const-string v14, "seen"

    const-string v15, "read"

    const-string v16, "type"

    const-string v17, "address"

    const-string v18, "date"

    const-string v19, "date_sent"

    const-string v20, "status"

    const-string v21, "hidden"

    const-string v22, "locked"

    const-string v23, "reject_reason"

    const-string v24, "chat_session_id"

    const-string v25, "rcsdb_id"

    const-string v26, "delivered_timestamp"

    const-string v27, "remote_uri"

    const-string v28, "message_type"

    const-string v29, "user_alias"

    const-string v30, "displayed_counter"

    const-string v31, "reserved"

    const-string v32, "service_type"

    const-string v33, "sim_slot"

    const-string v34, "sim_imsi"

    const-string v35, "recipients"

    const-string v36, "delivered_count"

    const-string v37, "timedmsg_expiry"

    const-string v38, "secret_mode"

    const-string v39, "ext_info"

    const-string v40, "app_id"

    const-string v41, "msg_id"

    const-string v42, "secret_message"

    const-string v43, "favorite"

    const-string v44, "time_len"

    const-string v45, "using_mode"

    const-string v46, "updated_timestamp"

    const-string v47, "from_address"

    const-string v48, "device_name"

    const-string v49, "safe_message"

    const-string v50, "imdn_message_id"

    const-string v51, "sef_type"

    .line 94
    filled-new-array/range {v1 .. v51}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->FT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 152
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mPinToTopThreads:Ljava/util/List;

    .line 154
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    .line 155
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 171
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    .line 173
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mSavePath:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mMsgPeriod:[J

    return-void
.end method

.method private backupFinished(Landroid/content/Context;Z)V
    .locals 4

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupFinished(): isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TP/RcsFtBNRClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 512
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->initialize(Landroid/content/Context;)Z

    .line 514
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllBackupFinished(Landroid/content/Context;)Z

    move-result p2

    .line 515
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getMmxCountExceedMaxSize(Landroid/content/Context;)I

    move-result v1

    .line 516
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

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_EXCEED_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "exceedCount"

    .line 519
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/providers/telephony/backup/WssnpsFileService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 521
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    if-eqz p2, :cond_1

    .line 527
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllBackupFinished()Ljava/lang/String;

    move-result-object p0

    const-string p2, "file_parsing"

    .line 526
    invoke-static {p2, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 528
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    :cond_1
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

    const-string v0, "_id"

    .line 557
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 561
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 563
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object p1

    .line 564
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "thumbnail_path"

    .line 566
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 569
    invoke-direct {p0, v1, v2, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->buildThumbnailBackupData(Ljava/lang/Long;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-object p1

    .line 559
    :cond_1
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "No id"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildThumbnailBackupData(Ljava/lang/Long;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    const-string p0, "/"

    .line 576
    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 578
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 581
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 584
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 586
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 587
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_1

    .line 589
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 591
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbnail_name"

    .line 592
    invoke-virtual {p3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "thumbnail_data"

    .line 593
    invoke-virtual {p3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 581
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 595
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildThumbnailBackupData(): Write file error, ftId="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", thumbnailPath="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/RcsFtBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private checkUnwanted(Landroid/database/Cursor;)Z
    .locals 3

    const-string p0, "service_type"

    .line 340
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "TP/RcsFtBNRClient"

    const/4 v1, 0x1

    if-gez p0, :cond_0

    const-string p0, "checkUnwanted(): service_type not found"

    .line 342
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 345
    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ge p0, v1, :cond_1

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): not allowed service_type="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "status"

    .line 351
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "checkUnwanted(): status not found"

    .line 353
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 356
    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/16 v2, 0xa

    if-eq p0, v2, :cond_3

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): not allowed status="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string p0, "hidden"

    .line 362
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    if-gez p0, :cond_4

    return v2

    .line 366
    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_5

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): not allowed hidden="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v2
.end method

.method private convertRecordRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 915
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 917
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 918
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 919
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 920
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "_id"

    .line 921
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "source_id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 925
    :cond_1
    sget-object v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 929
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 930
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 931
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 932
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :cond_4
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_5

    .line 934
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 935
    :cond_5
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    .line 936
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 937
    :cond_6
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 938
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_7
    const-string v1, "TP/RcsFtBNRClient"

    const-string v2, "convertDataToContentValues(): value type is unknown"

    .line 940
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method private getIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 548
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^0+(?!$)"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKeyFormId(JIJ)Ljava/lang/String;
    .locals 3

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKUP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_%02d_%02d_%010d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    .line 538
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadPinToTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 540
    :goto_0
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, v1

    const/4 p3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p5, p3

    const/4 p0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, p0

    invoke-static {p4, v0, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 242
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/RcsFtBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getReadableDatabase(): failed"

    .line 243
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 249
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getReadableDatabase(): failed!"

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getThreadIdBySessionId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;)J
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    const-string v0, "normal_thread_id"

    .line 968
    iget v13, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    .line 971
    invoke-static {v13}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v2

    const-string v12, "TP/RcsFtBNRClient"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v16, 0x0

    const-wide/16 v5, -0x1

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    iget-object v0, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    iget-object v2, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    .line 973
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v5, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    iget-object v6, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    move-object/from16 v7, p2

    .line 972
    invoke-static {v7, v0, v2, v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->queryImThreadIdEmptySessionId(Landroid/content/Context;Ljava/util/LinkedHashSet;IILjava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v16

    if-gtz v0, :cond_3

    move v10, v4

    goto :goto_2

    :cond_0
    move-object/from16 v7, p2

    .line 977
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "session_id=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :try_start_0
    const-string v19, "im_threads"

    .line 979
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, p1

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 982
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 984
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 983
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v2, :cond_3

    .line 986
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v2, :cond_2

    .line 979
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "sessionInsert(): im_thread query error"

    .line 987
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    move v10, v3

    .line 991
    :goto_2
    iget-object v0, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    cmp-long v2, v5, v16

    if-gtz v2, :cond_9

    .line 994
    iget-object v2, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-ge v2, v4, :cond_5

    invoke-static {v13}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 995
    iget-object v2, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move/from16 v18, v4

    goto :goto_4

    :cond_5
    move/from16 v18, v3

    .line 999
    :goto_4
    iget-object v3, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    iget-object v5, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->imConversationId:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->imContributionId:Ljava/lang/String;

    const/4 v9, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v11, ""

    const-string v21, "im"

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v7, v8

    move-object v8, v11

    move-object/from16 v11, v21

    move-object/from16 v26, v12

    move v12, v13

    move/from16 v21, v13

    move-object/from16 v13, v19

    move/from16 v14, v18

    move/from16 v15, v20

    invoke-static/range {v2 .. v15}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v8

    cmp-long v2, v8, v16

    if-gtz v2, :cond_6

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrCreateThreadId fail, threadId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    .line 1007
    :cond_6
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1008
    iget-object v2, v1, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadSession:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "session_id"

    move-object/from16 v4, p3

    .line 1010
    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p4

    .line 1011
    iget-object v2, v11, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    const-string v3, "sim_imsi"

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object/from16 v4, p3

    move-object/from16 v11, p4

    .line 1014
    :goto_5
    iget-object v5, v11, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->imContributionId:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->sessionUri:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mRcsImSession:Ljava/util/HashMap;

    move-object v1, v10

    move v2, v0

    move/from16 v3, v21

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v7}, Lcom/android/providers/telephony/backup/BnRUtils;->setThreadInfoValue(Landroid/content/ContentValues;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1017
    iget-object v0, v11, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->alias:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v1, "alias"

    .line 1018
    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normal_thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "im_threads"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v10, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide v5, v8

    :cond_9
    return-wide v5
.end method

.method private getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 223
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/RcsFtBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getWritableDatabase(): failed"

    .line 224
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 230
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getWritableDatabase(): failed!"

    .line 232
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)Z
    .locals 7

    .line 189
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p1, :cond_0

    const-string v0, "context://telephony/carriers"

    .line 193
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 203
    :cond_1
    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    .line 206
    :goto_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "TP/RcsFtBNRClient"

    if-nez p1, :cond_2

    const-string p0, "initialize(): failed, context is null"

    .line 207
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 211
    :cond_2
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_3

    const-string p0, "initialize(): failed, open helper is null"

    .line 213
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;
        }
    .end annotation

    const-string v0, "TP/RcsFtBNRClient"

    const-string v1, "ft"

    const-string v2, "type"

    .line 1090
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "seen"

    const-string v5, "read"

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 1091
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const/16 v2, 0xa

    .line 1097
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "date"

    .line 1099
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v3, "updated_timestamp"

    .line 1103
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    .line 1104
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1105
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 1106
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1109
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v7, "reserved"

    .line 1111
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1112
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :cond_4
    move v8, v9

    .line 1115
    :goto_1
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1116
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    :cond_5
    move-wide v10, v5

    :goto_2
    if-lez v8, :cond_6

    cmp-long v2, v10, v3

    if-gtz v2, :cond_6

    .line 1119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v2, "thread_id"

    .line 1121
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1122
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "pin_to_top"

    .line 1125
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, -0x1

    if-eqz v4, :cond_7

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1126
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1127
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v4, v7

    :goto_3
    if-eq v4, v7, :cond_8

    .line 1130
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_8
    new-instance p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;-><init>(Landroid/content/ContentValues;)V

    .line 1135
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedFTItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;)Z

    move-result p0

    if-nez p0, :cond_d

    .line 1138
    sget-boolean p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_b

    const-string p0, "imdn_message_id"

    .line 1140
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1141
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_9
    const-string p0, ""

    .line 1144
    :goto_4
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateFTWithMMSItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_5

    .line 1145
    :cond_a
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item with MMS"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    const-wide/16 v2, -0x1

    .line 1151
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p0, "body"

    .line 1152
    invoke-virtual {p1, v1, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    :goto_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "insert(): insertion error"

    .line 1155
    invoke-static {v0, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_7
    cmp-long p0, v2, v5

    if-gtz p0, :cond_c

    const-string p0, "insert(): failed!"

    .line 1161
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1165
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content://"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1157
    :goto_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1158
    throw p0

    .line 1136
    :cond_d
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isMessageBetween([JLandroid/content/ContentValues;)Z
    .locals 6

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    .line 948
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "date"

    .line 953
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 954
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 956
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    const/4 p2, 0x0

    .line 959
    aget-wide v2, p1, p2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    aget-wide v2, p1, p0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    move v2, p0

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    if-nez v2, :cond_3

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMessageBetween(): from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", date="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", to="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p0, p1, p0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/RcsFtBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    :goto_2
    return p0
.end method

.method private static loadColumns()V
    .locals 2

    .line 657
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    .line 659
    sget-object v1, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->FT_COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 660
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 661
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "using_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 662
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "safe_message"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "pin_to_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_original_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_original_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_recipient_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_content_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_content_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_file_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_count_info"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 8

    .line 748
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)I

    move-result v0

    .line 749
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

    const-string v1, "TP/RcsFtBNRClient"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreCount(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_parsing"

    const-string v2, "FT"

    .line 750
    invoke-static {v0, v2, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 754
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 v3, 0x0

    .line 756
    sput-boolean v3, Lcom/android/providers/telephony/backup/BnRUtils;->isCheckedFTCols:Z

    .line 757
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllRestoreFinished(Landroid/content/Context;)Z

    move-result v4

    .line 758
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getTotalRestoreCount(Landroid/content/Context;)I

    move-result v5

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreFinished(): allTasksFinished="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", totalRestored="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    sget-object v6, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isRestoreFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 762
    invoke-static {p1, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isRestoreFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    if-lez v5, :cond_2

    .line 764
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->getSessionIdThreadIdMap()Ljava/util/HashMap;

    move-result-object v2

    .line 767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicated session map size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-static {p1, v2, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateImFtSessions(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updated rcs threadLis size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putUpdateSessionThreadList(Landroid/content/Context;Ljava/util/List;)V

    .line 773
    :cond_1
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 774
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopImThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 779
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllRestoreFinished(I)Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-static {v0, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-static {p1, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;I)V

    .line 781
    sget v2, Lcom/android/providers/telephony/backup/BnRPreferences;->INVALID_PID:I

    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setPid(Landroid/content/Context;I)V

    .line 782
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    .line 783
    iget-object v2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    if-lez v5, :cond_4

    .line 787
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v2, "restoreFinished(): updateRestoredThreads"

    .line 788
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRestoredThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    const-string p1, "restoreFinished(): updateRestoredThreads finished"

    .line 790
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 793
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private restoreFtFile(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "thumbnail_path"

    .line 1027
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "restoreFtFile(): failed"

    const-string v3, "restoreFtFile(): destPath="

    const-string v4, "ft_files"

    const/4 v5, 0x0

    const-string v6, "/"

    const-string v7, "TP/RcsFtBNRClient"

    if-eqz v1, :cond_4

    .line 1028
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mSavePath:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1035
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1036
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1039
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1041
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p0

    .line 1043
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreFtFile(): srcPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 1051
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_2
    if-lez v4, :cond_3

    .line 1053
    invoke-virtual {p0, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1054
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1056
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v3

    .line 1048
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 1057
    invoke-static {v7, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    :goto_5
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1

    :cond_4
    const-string p0, "thumbnail_name"

    .line 1061
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "thumbnail_data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1062
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1063
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1064
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreFtFile(): fileName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", encodedData.length()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1066
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1068
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :try_start_9
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1072
    :try_start_a
    invoke-static {v9, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1073
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1074
    :try_start_b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    :catchall_4
    move-exception v1

    .line 1071
    :try_start_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_d
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception p1

    .line 1075
    invoke-static {v7, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    :goto_7
    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    :cond_5
    const-string p0, "restoreFtFile(): skipped, unknown ft file"

    .line 1081
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private restoreFtItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 799
    invoke-direct {p0, p3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->convertRecordRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mMsgPeriod:[J

    invoke-direct {p0, v1, v0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->isMessageBetween([JLandroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "chat_session_id"

    .line 805
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "recipient_address"

    .line 808
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "hidden"

    .line 812
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 813
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v3, "from_address"

    .line 819
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 820
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 822
    :cond_2
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Jansky virtual line message"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v3, "status"

    .line 826
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 829
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v4, v3, :cond_5

    const/16 v5, 0xa

    if-ne v5, v3, :cond_4

    goto :goto_2

    .line 831
    :cond_4
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No allowed status="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 836
    :cond_5
    :goto_2
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "TP/RcsFtBNRClient"

    if-eqz v3, :cond_6

    .line 838
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    goto/16 :goto_7

    .line 840
    :cond_6
    new-instance v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;-><init>(Lcom/android/providers/telephony/backup/RcsFtBNRClient$1;)V

    const-string v6, "im_type"

    .line 841
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    const-string v6, "alias"

    .line 842
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 843
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->alias:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v6, ""

    .line 845
    iput-object v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->alias:Ljava/lang/String;

    :goto_3
    const-string v6, "conversation_type"

    .line 848
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    .line 849
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    goto :goto_4

    .line 851
    :cond_8
    iput v8, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    .line 854
    :goto_4
    iget v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    if-nez v6, :cond_a

    iget-object v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    const/4 v7, 0x2

    .line 855
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    .line 856
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 857
    :cond_9
    iput v7, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    .line 860
    :cond_a
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    .line 861
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 862
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v8, v4, :cond_b

    .line 863
    iget-object v4, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 868
    :cond_b
    :try_start_0
    iget-object v2, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-nez v2, :cond_c

    iget v2, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->convType:I

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "address"

    .line 869
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 870
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreFtItem() RECIPIENT_ADDRESS is empty, use address field in ft table, sessionId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v4, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    .line 877
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreFtItem() e = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    const-string v2, "sim_imsi"

    .line 881
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 882
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    :cond_d
    const-string v2, "im_conversation_id"

    .line 885
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 886
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->imConversationId:Ljava/lang/String;

    :cond_e
    const-string v2, "im_contribution_id"

    .line 888
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 889
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->imContributionId:Ljava/lang/String;

    :cond_f
    const-string v2, "session_uri"

    .line 891
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 892
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;->sessionUri:Ljava/lang/String;

    .line 895
    :cond_10
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getThreadIdBySessionId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 898
    invoke-interface {p5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object p5, v2

    .line 901
    :goto_7
    iget-object v1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFtItem(): threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "thread_id"

    .line 904
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->restoreFtFile(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "thumbnail_path"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "creator"

    .line 906
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 911
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 909
    :cond_12
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "insertion fail"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 827
    :cond_13
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "no status"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 809
    :cond_14
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "no recipient_address"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 806
    :cond_15
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "no chat_session_id"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 802
    :cond_16
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Not between period"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setThreadInfoData(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 483
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getImType()I

    move-result p0

    const-string v0, "im_type"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAlias()Ljava/lang/String;

    move-result-object p0

    const-string v0, "alias"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAddressList()Ljava/util/LinkedHashSet;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 486
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 487
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAddressList()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 488
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "recipient_address"

    .line 490
    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadPinToTop()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pin_to_top"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getConversationType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "conversation_type"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    invoke-static {p3, p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->setRcsConversationInfo(Lorg/json/JSONObject;Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 12

    const-string v0, "TP/RcsFtBNRClient"

    const-string v1, "addKeyAndDate(): Collect keys"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ft"

    .line 280
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p1, "addKeyAndDate(): failed!"

    const/4 v1, 0x0

    if-nez v2, :cond_0

    .line 282
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v5, "service_type>0"

    .line 288
    :try_start_0
    sget-object v4, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
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

    .line 291
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "read"

    .line 292
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "thread_id"

    .line 293
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    if-gez v5, :cond_2

    goto :goto_0

    .line 299
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "updated_timestamp"

    .line 301
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    .line 306
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 309
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v4

    .line 315
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->checkUnwanted(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 316
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

    .line 320
    :cond_4
    invoke-virtual {p2, v3, v4, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKeyAndDate(Ljava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "addKeyAndDate(): Skipped, timestamp is invalid"

    .line 311
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 323
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

    .line 326
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 331
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "addKeyAndDate(): canceled"

    .line 332
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
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

    .line 288
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

    .line 327
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    throw p0
.end method

.method public backupCompleted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->backupFinished(Landroid/content/Context;Z)V

    return-void
.end method

.method public backupFailed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 505
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->backupFinished(Landroid/content/Context;Z)V

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

    const-string v8, "thread_id"

    .line 377
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    const-string v10, "TP/RcsFtBNRClient"

    if-nez v0, :cond_0

    const-string v0, "backupRecord(): There\'s nothing to backup"

    .line 378
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 381
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

    .line 383
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v0

    const-string v11, "file_parsing"

    const-string v12, "FT"

    .line 382
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v0, 0x0

    if-nez v13, :cond_1

    const-string v1, "backupRecord(): failed!"

    .line 388
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 392
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    invoke-direct {v7, v3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 399
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 404
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

    .line 405
    sget-object v15, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->BACKUP_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v14, "ft"

    const-string v20, "_id"

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    move v14, v0

    .line 406
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_d

    :try_start_1
    const-string v0, "_id"

    .line 408
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    const-string v1, "read"

    .line 412
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 416
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a

    .line 421
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v1, p0

    move-wide v2, v3

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updated_timestamp"

    .line 423
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ltz v1, :cond_4

    .line 426
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    move-wide v4, v2

    :goto_2
    cmp-long v1, v4, v2

    if-nez v1, :cond_6

    const-string v1, "date"

    .line 429
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 431
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_3

    .line 433
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_6
    :goto_3
    cmp-long v1, v4, v2

    if-lez v1, :cond_9

    .line 437
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v1

    .line 442
    invoke-direct {v7, v13}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->buildBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    .line 444
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 446
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "session_id"

    .line 448
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_7

    .line 450
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 453
    :cond_7
    iget-object v6, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    if-eqz v6, :cond_8

    iget-object v6, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 454
    iget-object v6, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    .line 455
    invoke-direct {v7, v4, v5, v3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->setThreadInfoData(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 459
    :cond_8
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p2

    :try_start_2
    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addRecord(Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v14, v14, 0x1

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupRecord(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    move-object/from16 v4, p2

    .line 439
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Timestamp is invalid"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v4, p2

    .line 418
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No thread_id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v4, p2

    .line 414
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No read"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v4, p2

    .line 410
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v4, p2

    .line 467
    :goto_4
    :try_start_3
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

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v4, p2

    .line 465
    :goto_5
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

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v4, p2

    .line 463
    :goto_6
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_d
    move-object/from16 v4, p2

    if-eqz v13, :cond_e

    .line 470
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "backupRecord(): backup canceled"

    .line 473
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_f
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

    .line 477
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupCount(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_10

    .line 405
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_7
    throw v1
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "RCS_FT"

    return-object p0
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;)V
    .locals 0

    .line 181
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isDoingInitSync()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x144

    .line 182
    invoke-interface {p2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onError(I)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onSuccess()V

    :goto_0
    return-void
.end method

.method public isBackupPrepare(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TP/RcsFtBNRClient"

    const-string v1, "isBackupPrepare()"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    .line 268
    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->loadImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    const-string p1, "com.samsung.android.scloud"

    .line 270
    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public isRestorePrepare(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "TP/RcsFtBNRClient"

    const-string v1, "isRestorePrepare()"

    .line 606
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 608
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 610
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 613
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->loadColumns()V

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mPinToTopThreads:Ljava/util/List;

    .line 617
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 618
    sget-boolean v2, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mEnableCarrierServerSync:Z

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initDuplicateChecker(Z)V

    .line 619
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 620
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getExistThreadImTableInfo(Landroid/content/Context;)Landroid/util/LongSparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mImThreadSession:Landroid/util/LongSparseArray;

    .line 621
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getRcsImSession(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mRcsImSession:Ljava/util/HashMap;

    .line 623
    sget-boolean v2, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mEnableCarrierServerSync:Z

    if-eqz v2, :cond_1

    .line 624
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingMMSMIdItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 627
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initFtSessionIdThreadIdMap()V

    :cond_2
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    const-string v2, "savePath"

    .line 632
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mSavePath:Ljava/lang/String;

    const-string v2, "callerPkg"

    .line 633
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    :cond_3
    const-string v2, "msgPeriod"

    .line 636
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 637
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_5

    .line 639
    array-length v2, p2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    const/4 p2, 0x0

    .line 640
    iput-object p2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mMsgPeriod:[J

    goto :goto_0

    :cond_4
    new-array v2, v3, [J

    .line 642
    iput-object v2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mMsgPeriod:[J

    .line 643
    aget-wide v3, p2, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 644
    aget-wide v3, p2, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e7

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 649
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    if-nez p2, :cond_6

    const-string p2, "com.samsung.android.scloud"

    .line 650
    iput-object p2, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 652
    :cond_6
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;

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

    .line 729
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 739
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 734
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 744
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    const-string v10, "restoreRecord(): insertion failed"

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreRecord(): Start restore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " records"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "TP/RcsFtBNRClient"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    .line 680
    invoke-static {v12}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_parsing"

    const-string v2, "FT"

    .line 679
    invoke-static {v1, v2, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v0, 0x0

    if-nez v13, :cond_0

    const-string v1, "restoreRecord(): failed!"

    .line 683
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 688
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move v6, v0

    .line 692
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 698
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 699
    iget-object v3, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mContext:Landroid/content/Context;

    iget-object v5, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mCallerPkg:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v13

    move v12, v6

    move-object v6, v14

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->restoreFtItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v12, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move v12, v6

    .line 705
    :goto_1
    :try_start_3
    invoke-static {v11, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 706
    invoke-virtual {v9, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    move v12, v6

    .line 702
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecord(): Skipped, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 703
    invoke-virtual {v9, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    move v6, v12

    move-object v12, v1

    goto :goto_0

    :cond_2
    :goto_4
    move v12, v6

    .line 713
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {v8, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 717
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v7, Lcom/android/providers/telephony/backup/RcsFtBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-static {v8, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 719
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "restoreRecord(): restore canceled"

    .line 720
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_3
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v8, v0, v12}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreRecord(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    .line 710
    :try_start_4
    invoke-static {v11, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 713
    :goto_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw v0
.end method
