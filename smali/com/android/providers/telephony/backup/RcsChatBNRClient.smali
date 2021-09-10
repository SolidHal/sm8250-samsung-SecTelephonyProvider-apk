.class public Lcom/android/providers/telephony/backup/RcsChatBNRClient;
.super Ljava/lang/Object;
.source "RcsChatBNRClient.java"

# interfaces
.implements Lcom/android/providers/telephony/backup/IBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;
    }
.end annotation


# static fields
.field private static final BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

.field private static final BACKUP_PROJECTION:[Ljava/lang/String; = null

.field public static final CHAT_COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_DELIMITER:Ljava/lang/String; = "EMPTY::"

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

.field private static final TAG:Ljava/lang/String; = "TP/RcsChatBNRClient"

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


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const-string v0, "_id"

    const-string v1, "read"

    const-string v2, "thread_id"

    const-string v3, "updated_timestamp"

    const-string v4, "service_type"

    const-string v5, "type"

    const-string v6, "hidden"

    .line 69
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "transaction_id"

    const-string v4, "address"

    const-string v5, "date_sent"

    const-string v6, "date"

    const-string v7, "read"

    const-string v8, "status"

    const-string v9, "type"

    const-string v10, "body"

    const-string v11, "display_notification_status"

    const-string v12, "seen"

    const-string v13, "message_type"

    const-string v14, "session_id"

    const-string v15, "content_type"

    const-string v16, "hidden"

    const-string v17, "locked"

    const-string v18, "displayed_counter"

    const-string v19, "reserved"

    const-string v20, "imdn_message_id"

    const-string v21, "rcsdb_id"

    const-string v22, "user_alias"

    const-string v23, "delivered_timestamp"

    const-string v24, "remote_uri"

    const-string v25, "service_type"

    const-string v26, "sim_slot"

    const-string v27, "sim_imsi"

    const-string v28, "recipients"

    const-string v29, "sticker_id"

    const-string v30, "delivered_count"

    const-string v31, "secret_mode"

    const-string v32, "timedmsg_expiry"

    const-string v33, "ext_info"

    const-string v34, "app_id"

    const-string v35, "msg_id"

    const-string v36, "secret_message"

    const-string v37, "mcloud_filename"

    const-string v38, "favorite"

    const-string v39, "using_mode"

    const-string v40, "updated_timestamp"

    const-string v41, "from_address"

    const-string v42, "device_name"

    const-string v43, "safe_message"

    .line 81
    filled-new-array/range {v1 .. v43}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->CHAT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 131
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mPinToTopThreads:Ljava/util/List;

    .line 133
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    .line 134
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 150
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    .line 151
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mMsgPeriod:[J

    return-void
.end method

.method private backupFinished(Landroid/content/Context;Z)V
    .locals 4

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupFinished(): isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TP/RcsChatBNRClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 490
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->initialize(Landroid/content/Context;)Z

    .line 492
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllBackupFinished(Landroid/content/Context;)Z

    move-result p2

    .line 493
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getMmxCountExceedMaxSize(Landroid/content/Context;)I

    move-result v1

    .line 494
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

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_EXCEED_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "exceedCount"

    .line 497
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/providers/telephony/backup/WssnpsFileService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 499
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    if-eqz p2, :cond_1

    .line 505
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllBackupFinished()Ljava/lang/String;

    move-result-object p0

    const-string p2, "file_parsing"

    .line 504
    invoke-static {p2, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 506
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private buildBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "_id"

    .line 536
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private bulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;[Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 906
    array-length v1, p3

    if-eqz v1, :cond_5

    if-nez p5, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "EMPTY::"

    .line 910
    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p4, ""

    .line 913
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getThreadIdBySessionId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    .line 914
    iget-object p2, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mRestoredThreads:Ljava/util/List;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulkInsert(): threadId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TP/RcsChatBNRClient"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    array-length p2, p3

    move v2, v0

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v3, p3, v0

    .line 919
    invoke-virtual {p7}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "bulkInsert():  keyListener.isCanceled"

    .line 920
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "thread_id"

    .line 926
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "creator"

    .line 927
    invoke-virtual {v3, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-direct {p0, p1, v3}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 933
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    .line 940
    invoke-virtual {p7, v3}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto :goto_2

    .line 931
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/Exception;

    const-string v5, "insertion fail"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "bulkInsert(): insert error"

    .line 938
    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 940
    :goto_1
    invoke-virtual {p7, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 936
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bulkInsert(): Skipped, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :goto_3
    invoke-virtual {p7, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    .line 941
    throw p0

    :cond_4
    :goto_4
    return v2

    :cond_5
    :goto_5
    return v0
.end method

.method private checkUnwanted(Landroid/database/Cursor;)Z
    .locals 3

    const-string p0, "service_type"

    .line 317
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "TP/RcsChatBNRClient"

    const/4 v1, 0x1

    if-gez p0, :cond_0

    const-string p0, "checkUnwanted(): service_type not found"

    .line 319
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 322
    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ge p0, v1, :cond_1

    .line 324
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
    const-string p0, "type"

    .line 328
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "checkUnwanted(): type not found"

    .line 330
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 333
    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq v1, p0, :cond_3

    const/4 v2, 0x2

    if-eq v2, p0, :cond_3

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnwanted(): not allowed type="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string p0, "hidden"

    .line 339
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    if-gez p0, :cond_4

    return v2

    .line 343
    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_5

    .line 345
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

.method private convertRecordToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 854
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 856
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 857
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 858
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 859
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 861
    sget-object v3, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 865
    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 866
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 867
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 868
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 870
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 871
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 872
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 873
    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 874
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_5
    const-string v1, "TP/RcsChatBNRClient"

    const-string v2, "convertRecordToContentValues(): value type is unknown"

    .line 876
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method private getIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 531
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

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKUP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_%02d_%02d_%010d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    .line 516
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadPinToTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 518
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

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 219
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/RcsChatBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getReadableDatabase(): failed"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 226
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getReadableDatabase(): failed!"

    .line 228
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getThreadIdBySessionId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;)Ljava/lang/Long;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    const-string v0, "normal_thread_id"

    .line 948
    iget v13, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I

    .line 951
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v12, "TP/RcsChatBNRClient"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v16, 0x0

    const-wide/16 v5, -0x1

    if-eqz v2, :cond_0

    invoke-static {v13}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    iget-object v0, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    iget-object v2, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    .line 953
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v5, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I

    iget-object v6, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    move-object/from16 v7, p2

    .line 952
    invoke-static {v7, v0, v2, v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->queryImThreadIdEmptySessionId(Landroid/content/Context;Ljava/util/LinkedHashSet;IILjava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v16

    if-gtz v0, :cond_3

    move v10, v4

    goto :goto_2

    :cond_0
    move-object/from16 v7, p2

    .line 957
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 958
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

    .line 959
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

    .line 961
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 962
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 964
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 963
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v2, :cond_3

    .line 966
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v2, :cond_2

    .line 959
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

    .line 967
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    move v10, v3

    :goto_2
    cmp-long v0, v5, v16

    if-gtz v0, :cond_9

    .line 973
    iget-object v0, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-ge v0, v4, :cond_4

    invoke-static {v13}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 974
    iget-object v0, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v3

    .line 978
    :goto_3
    iget-object v3, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    iget-object v5, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->imConversationId:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->imContributionId:Ljava/lang/String;

    const/4 v9, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v11, ""

    const-string v20, "im"

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v7, v8

    move-object v8, v11

    move-object/from16 v11, v20

    move-object/from16 v26, v12

    move v12, v13

    move/from16 v20, v13

    move-object/from16 v13, v18

    move v14, v0

    move/from16 v15, v19

    invoke-static/range {v2 .. v15}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v8

    cmp-long v0, v8, v16

    if-gtz v0, :cond_5

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrCreateThreadId fail, threadId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 986
    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 987
    iget-object v2, v1, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadSession:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "session_id"

    move-object/from16 v4, p3

    .line 988
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p4

    .line 989
    iget-object v2, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;

    const-string v3, "sim_imsi"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object/from16 v4, p3

    move-object/from16 v10, p4

    .line 992
    :goto_4
    iget-object v2, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, -0x1

    goto :goto_5

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 994
    :goto_5
    iget-object v5, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->imContributionId:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->sessionUri:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mRcsImSession:Ljava/util/HashMap;

    move-object v1, v0

    move/from16 v3, v20

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v7}, Lcom/android/providers/telephony/backup/BnRUtils;->setThreadInfoValue(Landroid/content/ContentValues;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 997
    iget-object v1, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->alias:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "alias"

    .line 998
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normal_thread_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "im_threads"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide v5, v8

    .line 1004
    :cond_9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 200
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TP/RcsChatBNRClient"

    if-nez p1, :cond_0

    const-string p0, "getWritableDatabase(): failed"

    .line 201
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 207
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "getWritableDatabase(): failed!"

    .line 209
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)Z
    .locals 7

    .line 166
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p1, :cond_0

    const-string v0, "context://telephony/carriers"

    .line 170
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    .line 183
    :goto_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "TP/RcsChatBNRClient"

    if-nez p1, :cond_2

    const-string p0, "initialize(): failed, context is null"

    .line 184
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 188
    :cond_2
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_3

    const-string p0, "initialize(): failed, open helper is null"

    .line 190
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
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

    const-string v0, "im"

    const-string v1, "type"

    .line 1010
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1013
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1014
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No allowed type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v3, "seen"

    const-string v4, "read"

    if-eqz v1, :cond_2

    .line 1020
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1021
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1023
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    const-string v1, "date"

    .line 1027
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v2, "updated_timestamp"

    .line 1031
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    .line 1032
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1033
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_5

    .line 1034
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1037
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v6, "reserved"

    .line 1039
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1040
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_6
    move v7, v8

    .line 1043
    :goto_2
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1044
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_3

    :cond_7
    move-wide v9, v4

    :goto_3
    if-lez v7, :cond_8

    cmp-long v2, v9, v2

    if-gtz v2, :cond_8

    .line 1047
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x3

    .line 1048
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    const-string v2, "thread_id"

    .line 1050
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1051
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "pin_to_top"

    .line 1054
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_9

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1055
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1056
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move v6, v7

    :goto_4
    if-eq v6, v7, :cond_a

    .line 1059
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_a
    sget-boolean p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_b

    .line 1064
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateSMSItemMap()V

    .line 1067
    :cond_b
    new-instance p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;-><init>(Landroid/content/ContentValues;)V

    .line 1069
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedChatItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 1072
    sget-boolean p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mEnableCarrierServerSync:Z

    const-string v2, "TP/RcsChatBNRClient"

    if-eqz p0, :cond_e

    .line 1073
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1075
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1076
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->createSMSItemByChat(Landroid/content/ContentValues;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    move-result-object p0

    .line 1078
    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedChatWithSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    const-string p0, "isDuplicatedSMSItem(): duplicated!"

    .line 1079
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-static {v6, v7}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestSMSItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object p0

    .line 1081
    invoke-static {p1, p0, v6, v7}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->updateDuplicateMsgTimeStamp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;J)V

    .line 1082
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->removeDuplicateMsginHashMap(Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;)V

    .line 1083
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item with SMS"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p0, "insert() : date is null, skip checking duplication"

    .line 1086
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    const-wide/16 v6, -0x1

    .line 1092
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p0, "body"

    .line 1093
    invoke-virtual {p1, v0, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 1094
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
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

    .line 1096
    invoke-static {v2, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_7
    cmp-long p0, v6, v4

    if-gtz p0, :cond_f

    const-string p0, "insert(): failed!"

    .line 1102
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1106
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content://"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1098
    :goto_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1099
    throw p0

    .line 1070
    :cond_10
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1011
    :cond_11
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "no type"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isMessageBetween([JLandroid/content/ContentValues;)Z
    .locals 6

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    .line 884
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "date"

    .line 889
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 891
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 893
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    const/4 p2, 0x0

    .line 896
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

    .line 898
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

    const-string p1, "TP/RcsChatBNRClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    :goto_2
    return p0
.end method

.method private static loadColumns()V
    .locals 2

    .line 599
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    .line 601
    sget-object v1, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->CHAT_COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 602
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 603
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "using_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "safe_message"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "pin_to_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_original_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_original_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_recipient_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_content_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_content_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_file_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->RESTORE_COLUMNS:Ljava/util/Set;

    const-string v1, "re_count_info"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 8

    .line 804
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)I

    move-result v0

    .line 805
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

    const-string v1, "TP/RcsChatBNRClient"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreCount(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_parsing"

    const-string v2, "CHAT"

    .line 806
    invoke-static {v0, v2, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object p2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 810
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 v3, 0x0

    .line 812
    sput-boolean v3, Lcom/android/providers/telephony/backup/BnRUtils;->isCheckedChatCols:Z

    .line 813
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllRestoreFinished(Landroid/content/Context;)Z

    move-result v4

    .line 814
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getTotalRestoreCount(Landroid/content/Context;)I

    move-result v5

    .line 815
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

    .line 817
    sget-object v6, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isRestoreFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 818
    invoke-static {p1, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isRestoreFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    if-lez v5, :cond_2

    .line 820
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->getSessionIdThreadIdMap()Ljava/util/HashMap;

    move-result-object v2

    .line 823
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

    .line 824
    invoke-static {p1, v2, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateImFtSessions(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 825
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

    .line 826
    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putUpdateSessionThreadList(Landroid/content/Context;Ljava/util/List;)V

    .line 829
    :cond_1
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 830
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopImThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 835
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllRestoreFinished(I)Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-static {v0, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {p1, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;I)V

    .line 837
    sget v2, Lcom/android/providers/telephony/backup/BnRPreferences;->INVALID_PID:I

    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setPid(Landroid/content/Context;I)V

    .line 838
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    .line 839
    iget-object v2, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    if-lez v5, :cond_4

    .line 843
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v2, "restoreFinished(): updateRestoredThreads"

    .line 844
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRestoredThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    const-string p1, "restoreFinished(): updateRestoredThreads finished"

    .line 846
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 849
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private setThreadInfoData(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getImType()I

    move-result p0

    const-string v0, "im_type"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAlias()Ljava/lang/String;

    move-result-object p0

    const-string v0, "alias"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAddressList()Ljava/util/LinkedHashSet;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 464
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 465
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

    .line 466
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "recipient_address"

    .line 468
    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadPinToTop()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pin_to_top"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getConversationType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "conversation_type"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    invoke-static {p3, p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->setRcsConversationInfo(Lorg/json/JSONObject;Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 12

    const-string v0, "TP/RcsChatBNRClient"

    const-string v1, "addKeyAndDate(): Collect keys"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "im"

    .line 257
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p1, "addKeyAndDate(): failed!"

    const/4 v1, 0x0

    if-nez v2, :cond_0

    .line 259
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v5, "service_type>0"

    .line 265
    :try_start_0
    sget-object v4, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->BACKUP_PREPARE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
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

    .line 268
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "read"

    .line 269
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "thread_id"

    .line 270
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    if-gez v5, :cond_2

    goto :goto_0

    .line 276
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "updated_timestamp"

    .line 278
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    .line 283
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 286
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v4

    .line 292
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->checkUnwanted(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 293
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

    .line 297
    :cond_4
    invoke-virtual {p2, v3, v4, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKeyAndDate(Ljava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "addKeyAndDate(): Skipped, timestamp is invalid"

    .line 288
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 300
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

    .line 303
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 308
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "addKeyAndDate(): canceled"

    .line 309
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
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

    .line 265
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

    .line 304
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    throw p0
.end method

.method public backupCompleted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->backupFinished(Landroid/content/Context;Z)V

    return-void
.end method

.method public backupFailed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->backupFinished(Landroid/content/Context;Z)V

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

    .line 354
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    const-string v10, "TP/RcsChatBNRClient"

    if-nez v0, :cond_0

    const-string v0, "backupRecord(): There\'s nothing to backup"

    .line 355
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 358
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

    .line 360
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v0

    const-string v11, "file_parsing"

    const-string v12, "CHAT"

    .line 359
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v0, 0x0

    if-nez v13, :cond_1

    const-string v1, "backupRecord(): failed!"

    .line 365
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 369
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 371
    invoke-direct {v7, v3}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 376
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 381
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

    .line 382
    sget-object v15, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->BACKUP_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v14, "im"

    const-string v20, "_id"

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    move v14, v0

    .line 383
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

    .line 385
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    const-string v1, "read"

    .line 389
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 393
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a

    .line 398
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v1, p0

    move-wide v2, v3

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updated_timestamp"

    .line 400
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ltz v1, :cond_4

    .line 403
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    move-wide v4, v2

    :goto_2
    cmp-long v1, v4, v2

    if-nez v1, :cond_6

    const-string v1, "date"

    .line 406
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 408
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_3

    .line 410
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_6
    :goto_3
    cmp-long v1, v4, v2

    if-lez v1, :cond_9

    .line 414
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v1

    .line 419
    invoke-direct {v7, v13}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->buildBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    .line 421
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 423
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "session_id"

    .line 426
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_7

    .line 428
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 431
    :cond_7
    iget-object v6, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    if-eqz v6, :cond_8

    iget-object v6, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 432
    iget-object v6, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    .line 433
    invoke-direct {v7, v4, v5, v3}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->setThreadInfoData(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 437
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

    .line 439
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

    .line 416
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Timestamp is invalid"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v4, p2

    .line 395
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No thread_id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v4, p2

    .line 391
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "No read"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v4, p2

    .line 387
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

    .line 445
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

    .line 443
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

    .line 441
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

    .line 448
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "backupRecord(): backup canceled"

    .line 451
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
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

    .line 455
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupCount(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_10

    .line 382
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

    const-string p0, "RCS_CHAT"

    return-object p0
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;)V
    .locals 0

    .line 158
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isDoingInitSync()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x144

    .line 159
    invoke-interface {p2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onError(I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;->onSuccess()V

    :goto_0
    return-void
.end method

.method public isBackupPrepare(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TP/RcsChatBNRClient"

    const-string v1, "isBackupPrepare()"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 239
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->initialize(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadInfoMap:Ljava/util/HashMap;

    .line 245
    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->loadImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    const-string p1, "com.samsung.android.scloud"

    .line 247
    iput-object p1, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public isRestorePrepare(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "TP/RcsChatBNRClient"

    const-string v1, "isRestorePrepare()"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 549
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 553
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->loadColumns()V

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mRestoredThreads:Ljava/util/List;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mPinToTopThreads:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const-string v3, "callerPkg"

    .line 558
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    :cond_1
    const-string v3, "msgPeriod"

    .line 561
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 562
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_3

    .line 564
    array-length v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 565
    iput-object v0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mMsgPeriod:[J

    goto :goto_0

    :cond_2
    new-array v3, v4, [J

    .line 567
    iput-object v3, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mMsgPeriod:[J

    .line 568
    aget-wide v4, p2, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 569
    aget-wide v4, p2, v2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e7

    add-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 574
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p2, "com.samsung.android.scloud"

    .line 575
    iput-object p2, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

    .line 578
    :cond_4
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getExistThreadImTableInfo(Landroid/content/Context;)Landroid/util/LongSparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mImThreadSession:Landroid/util/LongSparseArray;

    .line 579
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getRcsImSession(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mRcsImSession:Ljava/util/HashMap;

    .line 581
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 582
    sget-boolean v3, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mEnableCarrierServerSync:Z

    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initDuplicateChecker(Z)V

    .line 583
    sget-boolean v3, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mEnableCarrierServerSync:Z

    if-eqz v3, :cond_5

    .line 584
    invoke-static {p2, v0, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingSMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 585
    invoke-static {p2, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChatItems(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 587
    :cond_5
    invoke-static {p2, v2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChatItems(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 590
    :goto_1
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 591
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initImSessionIdThreadIdMap()V

    .line 594
    :cond_6
    iget-object p0, p0, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;

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

    .line 785
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 795
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 790
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

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

    .line 800
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->restoreFinished(Landroid/content/Context;ZLcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    return-void
.end method

.method public restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    const-string v1, "session_uri"

    const-string v2, "im_contribution_id"

    const-string v3, "im_conversation_id"

    const-string v4, "sim_imsi"

    const-string v5, "im_type"

    const-string v6, "from_address"

    const-string v7, "session_id"

    const-string v8, "conversation_type"

    const-string v12, "alias"

    const-string v13, "hidden"

    const-string v14, "recipient_address"

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restoreRecord(): Start restore "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p3

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " records"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "TP/RcsChatBNRClient"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .line 622
    invoke-static {v11}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "file_parsing"

    const-string v11, "CHAT"

    .line 621
    invoke-static {v15, v11, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const/4 v15, 0x0

    if-nez v11, :cond_0

    const-string v0, "restoreRecord(): failed!"

    .line 625
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    .line 630
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v11

    .line 631
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 635
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 636
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_20

    if-eqz v0, :cond_1

    goto/16 :goto_1c

    :cond_1
    move-object/from16 v17, v11

    .line 641
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v11
    :try_end_1
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1b

    move-object/from16 v18, v10

    .line 642
    :try_start_2
    invoke-direct {v9, v11}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->convertRecordToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v10

    .line 644
    iget-object v0, v9, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mMsgPeriod:[J

    invoke-direct {v9, v0, v10}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->isMessageBetween([JLandroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 648
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 651
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 655
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18

    if-eqz v0, :cond_3

    .line 656
    :try_start_3
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_2

    .line 658
    :cond_2
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    invoke-direct {v0, v13}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v10, p5

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    move-object/from16 v10, p5

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v13

    :goto_1
    move-object/from16 v11, v17

    move-object/from16 v9, v18

    goto/16 :goto_1b

    .line 662
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18

    if-eqz v0, :cond_5

    .line 663
    :try_start_5
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 665
    :cond_4
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v10, "Jansky virtual line message"

    invoke-direct {v0, v10}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 669
    :cond_5
    :goto_3
    :try_start_6
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19
    :try_end_6
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_18

    move-object/from16 v20, v0

    const-string v0, "address"

    if-eqz v19, :cond_6

    move-object/from16 v19, v6

    .line 671
    :try_start_7
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v21, v7

    .line 672
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v22, v13

    :try_start_9
    const-string v13, "EMPTY::"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v21, v7

    :goto_4
    move-object/from16 v22, v13

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v21, v7

    :goto_5
    move-object/from16 v22, v13

    :goto_6
    move-object/from16 v10, p5

    move-object/from16 v23, v1

    move-object/from16 v20, v8

    goto :goto_1

    :cond_6
    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move-object/from16 v6, v20

    .line 674
    :goto_7
    :try_start_a
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 675
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;-><init>(Lcom/android/providers/telephony/backup/RcsChatBNRClient$1;)V

    .line 679
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    .line 680
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_a
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_a .. :try_end_a} :catch_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_18

    if-eqz v13, :cond_7

    .line 681
    :try_start_b
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->alias:Ljava/lang/String;
    :try_end_b
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_8

    :cond_7
    :try_start_c
    const-string v13, ""

    .line 683
    iput-object v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->alias:Ljava/lang/String;

    .line 686
    :goto_8
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_c
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_c .. :try_end_c} :catch_15
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18

    if-eqz v13, :cond_8

    .line 687
    :try_start_d
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I

    .line 688
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_d
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_9

    :cond_8
    const/4 v13, 0x0

    .line 690
    :try_start_e
    iput v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I

    .line 693
    :goto_9
    iget v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I
    :try_end_e
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_e .. :try_end_e} :catch_15
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_18

    if-nez v13, :cond_a

    :try_start_f
    iget-object v13, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->type:Ljava/lang/String;
    :try_end_f
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_f .. :try_end_f} :catch_9
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    move-object/from16 v20, v8

    const/4 v8, 0x2

    .line 694
    :try_start_10
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->type:Ljava/lang/String;

    const/4 v13, 0x3

    .line 695
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 696
    :cond_9
    iput v8, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I
    :try_end_10
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v20, v8

    :goto_a
    move-object/from16 v23, v1

    goto/16 :goto_13

    :catch_9
    move-exception v0

    move-object/from16 v20, v8

    :goto_b
    move-object/from16 v10, p5

    move-object/from16 v23, v1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v20, v8

    .line 699
    :cond_b
    :goto_c
    :try_start_11
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_11
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    if-eqz v8, :cond_c

    .line 700
    :try_start_12
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->simImsi:Ljava/lang/String;
    :try_end_12
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 703
    :cond_c
    :try_start_13
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_13
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18

    if-eqz v8, :cond_d

    .line 704
    :try_start_14
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->imConversationId:Ljava/lang/String;
    :try_end_14
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 706
    :cond_d
    :try_start_15
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_15
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_15 .. :try_end_15} :catch_13
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_18

    if-eqz v8, :cond_e

    .line 707
    :try_start_16
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->imContributionId:Ljava/lang/String;
    :try_end_16
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 709
    :cond_e
    :try_start_17
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_17
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_17 .. :try_end_17} :catch_13
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18

    if-eqz v8, :cond_f

    .line 710
    :try_start_18
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->sessionUri:Ljava/lang/String;
    :try_end_18
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_12
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .line 713
    :cond_f
    :try_start_19
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v8, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    .line 714
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v13, 0x0

    .line 715
    :goto_d
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_19
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    if-ge v13, v9, :cond_10

    .line 716
    :try_start_1a
    iget-object v9, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;
    :try_end_1a
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    move-object/from16 v23, v1

    :try_start_1b
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v23

    goto :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_13

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    move-object/from16 v23, v1

    :goto_e
    move-object/from16 v10, p5

    goto/16 :goto_1

    :cond_10
    move-object/from16 v23, v1

    .line 721
    :try_start_1c
    iget-object v1, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_11

    iget v1, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->convType:I

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 722
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreRecord() RECIPIENT_ADDRESS is empty, use address field in im table, sessionId = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    move-object/from16 v9, v18

    :try_start_1d
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_f

    :cond_11
    move-object/from16 v9, v18

    goto :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v9, v18

    .line 729
    :goto_f
    :try_start_1e
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;->addrs:Ljava/util/LinkedHashSet;

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreRecord() e = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_10
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 734
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 735
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1e
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_f

    move-object/from16 v11, v17

    .line 736
    :try_start_1f
    invoke-virtual {v11, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :catch_f
    move-exception v0

    goto/16 :goto_15

    :catch_10
    move-exception v0

    goto/16 :goto_16

    :catch_11
    move-exception v0

    goto/16 :goto_19

    :catch_12
    move-exception v0

    goto/16 :goto_a

    :catch_13
    move-exception v0

    move-object/from16 v23, v1

    goto/16 :goto_14

    :cond_12
    move-object/from16 v23, v1

    move-object/from16 v20, v8

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    .line 739
    :goto_11
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :catch_14
    move-exception v0

    :goto_12
    move-object/from16 v23, v1

    move-object/from16 v20, v8

    goto/16 :goto_13

    :catch_15
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v20, v8

    goto/16 :goto_14

    :cond_13
    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v13

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    .line 652
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "no recipient_address"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v13

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    .line 649
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "no session_id"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v13

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    .line 645
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Not between period"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    :catch_16
    move-exception v0

    goto :goto_17

    :catch_17
    move-exception v0

    goto/16 :goto_1a

    :catch_18
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    goto/16 :goto_1d

    :catch_19
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v13

    :goto_13
    move-object/from16 v11, v17

    move-object/from16 v9, v18

    goto :goto_17

    :catch_1a
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v13

    :goto_14
    move-object/from16 v11, v17

    move-object/from16 v9, v18

    goto :goto_1a

    :catch_1b
    move-exception v0

    move-object v9, v10

    :goto_15
    move-object/from16 v11, v17

    goto/16 :goto_1d

    :catch_1c
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object v9, v10

    move-object/from16 v22, v13

    :goto_16
    move-object/from16 v11, v17

    :goto_17
    :try_start_20
    const-string v1, "restoreRecord(): convert failed"

    .line 744
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1d

    move-object/from16 v10, p5

    const/4 v1, 0x0

    .line 745
    :try_start_21
    invoke-virtual {v10, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V

    :goto_18
    move-object v10, v9

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v7, v21

    move-object/from16 v13, v22

    move-object/from16 v1, v23

    move-object/from16 v9, p0

    goto/16 :goto_0

    :catch_1d
    move-exception v0

    goto :goto_1d

    :catch_1e
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    move-object v9, v10

    move-object/from16 v22, v13

    :goto_19
    move-object/from16 v11, v17

    :goto_1a
    move-object/from16 v10, p5

    .line 741
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreRecord(): Skipped, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 742
    invoke-virtual {v10, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->addKey(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1f

    goto :goto_18

    :catch_1f
    move-exception v0

    goto :goto_1e

    :cond_16
    :goto_1c
    move-object v9, v10

    move-object/from16 v10, p5

    goto :goto_1f

    :catch_20
    move-exception v0

    move-object v9, v10

    :goto_1d
    move-object/from16 v10, p5

    :goto_1e
    const-string v1, "restoreRecord(): Collect chat bulk failed"

    .line 749
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    :goto_1f
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_20
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 754
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_25

    .line 758
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 760
    :try_start_22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 761
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_24
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    const/4 v8, 0x0

    :try_start_23
    new-array v1, v8, [Landroid/content/ContentValues;

    .line 762
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/content/ContentValues;

    .line 763
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-object/from16 v7, p0

    .line 765
    :try_start_24
    iget-object v3, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mContext:Landroid/content/Context;

    iget-object v0, v7, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mCallerPkg:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_22
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v10, v7

    move-object v7, v0

    move/from16 v17, v8

    move-object/from16 v8, p5

    :try_start_25
    invoke-direct/range {v1 .. v8}, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->bulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;[Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/providers/telephony/backup/RcsChatBNRClient$ImThreadInfo;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_21
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    add-int/2addr v13, v0

    goto :goto_23

    :catch_21
    move-exception v0

    goto :goto_22

    :catch_22
    move-exception v0

    move-object v10, v7

    goto :goto_21

    :catch_23
    move-exception v0

    move-object/from16 v10, p0

    :goto_21
    move/from16 v17, v8

    goto :goto_22

    :catchall_0
    move-exception v0

    goto :goto_24

    :catch_24
    move-exception v0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    :goto_22
    :try_start_26
    const-string v1, "restoreRecord(): bulk insertion failed"

    .line 767
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 769
    :goto_23
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v10, p5

    goto :goto_20

    :goto_24
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    throw v0

    :cond_18
    :goto_25
    move-object/from16 v10, p0

    .line 772
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mRestoredThreads:Ljava/util/List;

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 773
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v1, v10, Lcom/android/providers/telephony/backup/RcsChatBNRClient;->mPinToTopThreads:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 775
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "restoreRecord(): restore canceled"

    .line 776
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_19
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v2, v0, v13}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreRecord(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
