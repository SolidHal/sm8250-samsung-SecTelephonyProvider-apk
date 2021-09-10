.class public Lcom/android/providers/telephony/backup/SCloudMmsBnRService;
.super Landroid/app/Service;
.source "SCloudMmsBnRService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;,
        Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;,
        Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;
    }
.end annotation


# static fields
.field private static final DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBackupProjection:[Ljava/lang/String;

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

.field private mEnableCarrierServerSync:Z

.field private mEnableMmsTransactionCustomize4Korea:Z

.field private mEnableOMA13NameEncoding:Z

.field private mEnableOpBackupSync:Z

.field private mExceedMaxSizeCount:I

.field private mItemsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMsgPeriod:[J

.field private mObserver:Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;

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

.field private mRestoredMmsInTransaction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
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
    .locals 7

    const-string v0, "_id"

    const-string v1, "date"

    const-string v2, "msg_box"

    const-string v3, "tr_id"

    const-string v4, "m_id"

    const-string v5, "thread_id"

    const-string v6, "reserved"

    .line 86
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    .line 71
    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOMA13NameEncoding:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableMmsTransactionCustomize4Korea:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableCarrierServerSync:Z

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredMmsInTransaction:Ljava/util/ArrayList;

    .line 76
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    .line 77
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mTransactionIdList:Ljava/util/List;

    .line 78
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    .line 79
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredThreads:Ljava/util/List;

    .line 80
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mClassificationThreads:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mPinToTopThreads:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mMsgPeriod:[J

    .line 84
    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mBackupProjection:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->readKeyAndSendData(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->readDataAndSendData(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredMmsInTransaction:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    return p0
.end method

.method private backupFinished()V
    .locals 5

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "backupFinished()"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 306
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllBackupFinished(Landroid/content/Context;)Z

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getMmxCountExceedMaxSize(Landroid/content/Context;)I

    move-result v2

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupFinished(): allTasksFinished="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", sExceedMaxSizeCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v3, "ACTION_EXCEED_NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "exceedCount"

    .line 311
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/providers/telephony/backup/WssnpsFileService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 313
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isBackupFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 317
    invoke-static {v0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isBackupFinished(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->clearBackupThreadInfo()V

    :cond_1
    if-eqz v1, :cond_2

    .line 323
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllBackupFinished()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_parsing"

    .line 322
    invoke-static {v1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

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

    .line 895
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "addr"

    const/4 v3, 0x0

    .line 897
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

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 898
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 899
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 900
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "transaction_id"

    const/4 v2, 0x0

    .line 901
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 902
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 906
    :cond_1
    invoke-virtual {p3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 907
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 897
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

    const-string p1, "TP/SCloudMmsBnRService"

    const-string p2, "buildAddrBackupData(): failed!"

    .line 908
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    throw p0
.end method

.method private buildBackupData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 825
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 826
    invoke-direct {p0, p2, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->buildMmsBackupData(Landroid/database/Cursor;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->buildAddrBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 828
    invoke-direct {p0, p2, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->buildGroupBackData(Landroid/database/Cursor;Lorg/json/JSONObject;)V

    .line 830
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->buildPartBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ContentValues;)Z

    move-result p1

    const-string p2, "buildBackupData(): failed!"

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "data"

    .line 836
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 838
    iget p3, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    .line 839
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildBackupData(): data.toString failed! : "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/SCloudMmsBnRService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 831
    :cond_0
    iget p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    .line 832
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildGroupBackData(Landroid/database/Cursor;Lorg/json/JSONObject;)V
    .locals 3

    const-string p0, "GROUP_ADDR"

    const-string v0, "thread_id"

    .line 1018
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1022
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1024
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p1

    const-string v0, "TP/SCloudMmsBnRService"

    if-eqz p1, :cond_2

    .line 1026
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1027
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

    .line 1028
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1032
    :cond_1
    :try_start_0
    invoke-virtual {p2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "buildGroupBackData(): failed!"

    .line 1034
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "buildGroupBackData(): threadInfo is null"

    .line 1037
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

    .line 845
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_8

    .line 849
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 850
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "msg_box"

    .line 854
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 858
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 860
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

    .line 863
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 867
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x82

    if-eq v2, v0, :cond_4

    const/16 v2, 0x87

    if-eq v2, v0, :cond_4

    .line 873
    invoke-static {p1, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "thread_id"

    .line 875
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 879
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 881
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 883
    iget v1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->classification:I

    const-string v2, "thread_classification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 884
    iget p1, p1, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    const-string v1, "pin_to_top"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "source_id"

    .line 887
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    const-string v1, "transaction_id"

    .line 888
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "MMS"

    .line 889
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 877
    :cond_3
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "No thread_id"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 869
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

    .line 865
    :cond_5
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms m_type index not found"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 856
    :cond_6
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms msg_box index not found"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 851
    :cond_7
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms id is empty"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 847
    :cond_8
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Mms id index not found"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildPartAttachBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;
        }
    .end annotation

    const-string p0, "getHashByPath: failed: "

    const-string v0, "TP/SCloudMmsBnRService"

    .line 949
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "_id"

    .line 950
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return-object v3

    .line 954
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v2, "_data"

    .line 956
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    return-object v3

    .line 960
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 961
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    const-string v2, "PART_"

    .line 965
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    return-object v3

    .line 969
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 971
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x1400000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    goto :goto_0

    .line 973
    :cond_4
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mms data file exceed max size, size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

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

    :cond_5
    :goto_0
    :try_start_0
    const-string v6, "SHA-256"

    .line 977
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 979
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHashByPath: failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    :goto_1
    if-nez v6, :cond_6

    return-object v3

    :cond_6
    const/high16 v7, 0x200000

    new-array v7, v7, [B

    const/4 v8, 0x0

    .line 988
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v10, v8

    .line 989
    :goto_2
    :try_start_2
    invoke-virtual {v9, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 990
    invoke-virtual {v6, v7, v8, v11}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v10, v11

    goto :goto_2

    .line 993
    :cond_7
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v7

    move v8, v10

    goto :goto_4

    :catchall_0
    move-exception v7

    .line 988
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    move-exception v7

    .line 994
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v10, v8

    .line 999
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->convertByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v6

    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    :try_start_7
    const-string p0, "hash"

    .line 1004
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "path"

    .line 1005
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "size"

    .line 1006
    invoke-virtual {v1, p0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "uri"

    .line 1007
    sget-object p1, Landroid/provider/Telephony$Mms$Part;->CONTENT_URI:Landroid/net/Uri;

    .line 1008
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1007
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    .line 1010
    :catch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "buildPartAttachBackupData(): Write file error, partId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", fileName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-object v1
.end method

.method private buildPartBackupData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ContentValues;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v1, "TP/SCloudMmsBnRService"

    const-string v0, "PART"

    .line 916
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 917
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v5, "part"

    const/4 v6, 0x0

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 920
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 921
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 922
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 923
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p0

    .line 925
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->buildPartAttachBackupData(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 926
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 927
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 928
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "put to fileList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 931
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildPartBackupData(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    .line 940
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    return v0

    :cond_2
    move-object v5, p0

    goto :goto_0

    :cond_3
    move-object v6, p3

    .line 938
    :try_start_5
    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fileList"

    .line 939
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_4

    .line 940
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return v5

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_5

    .line 919
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
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

    .line 941
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    throw v0
.end method

.method private cancel(Landroid/os/Bundle;)V
    .locals 1

    .line 417
    new-instance v0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-direct {v0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 418
    invoke-virtual {v0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 419
    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "cancel"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private checkDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "pdu"

    .line 1583
    sget-object v3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    if-eqz p1, :cond_d

    .line 1585
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1589
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "date"

    .line 1590
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "msg_box"

    .line 1591
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tr_id"

    .line 1592
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m_id"

    .line 1593
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "thread_id"

    .line 1594
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1596
    iget-object v5, p3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->messageId:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    .line 1613
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    .line 1599
    :cond_2
    :try_start_3
    iget-boolean p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    if-nez p0, :cond_a

    .line 1600
    iget-object p0, p3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->date:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    .line 1613
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v0

    .line 1603
    :cond_4
    :try_start_5
    iget-object p0, p3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->messageBox:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p0, :cond_6

    if-eqz p1, :cond_5

    .line 1613
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return v0

    .line 1606
    :cond_6
    :try_start_7
    iget-object p0, p3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->transactionId:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p0, :cond_8

    if-eqz p1, :cond_7

    .line 1613
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    return v0

    .line 1609
    :cond_8
    :try_start_9
    iget-object p0, p3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->threadId:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    .line 1613
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v0

    :cond_a
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_b
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_c

    .line 1583
    :try_start_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_0
    throw p0

    :cond_d
    :goto_1
    if-eqz p1, :cond_e

    .line 1613
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_e
    return v0

    :catch_0
    move-exception p0

    const-string p1, "TP/SCloudMmsBnRService"

    const-string p2, "checkDuplication(): error"

    .line 1614
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private checkUnwanted(Landroid/database/Cursor;)Z
    .locals 3

    const-string p0, "_id"

    .line 1099
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "TP/SCloudMmsBnRService"

    const/4 v1, 0x1

    if-gez p0, :cond_0

    const-string p0, "checkUnwanted(): id not found"

    .line 1101
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1104
    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "checkUnwanted(): Mms id is empty"

    .line 1106
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "msg_box"

    .line 1110
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "checkUnwanted(): msg_box not found"

    .line 1112
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1115
    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq v1, p0, :cond_3

    const/4 v2, 0x2

    if-eq v2, p0, :cond_3

    .line 1117
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

    .line 1121
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_4

    const-string p0, "checkUnwanted(): m_type not found"

    .line 1123
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1126
    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 v2, 0x82

    if-eq v2, p0, :cond_7

    const/16 v2, 0x87

    if-ne v2, p0, :cond_5

    goto :goto_0

    .line 1132
    :cond_5
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportTwoPhoneBnR()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "using_mode"

    .line 1133
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_6

    .line 1135
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_6

    const-string p0, "checkUnwanted(): TwoPhone messages are not allowed"

    .line 1137
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 1128
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

    .line 1313
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1315
    sget-object v0, Lcom/android/providers/telephony/backup/SCloudBnRContract;->ADDR_COLUMNS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1316
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1317
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static convertByteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    .line 1643
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1645
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertMmsRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1147
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1149
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1150
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "_id"

    .line 1153
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "source_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1157
    :cond_1
    iget-object v4, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1161
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 1162
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1163
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1164
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    :cond_4
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 1166
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 1167
    :cond_5
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 1168
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1169
    :cond_6
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_7

    .line 1170
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1172
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " value : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TP/SCloudMmsBnRService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertDataToContentValues(): value type is unknown "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    .line 1364
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1366
    sget-object v0, Lcom/android/providers/telephony/backup/SCloudBnRContract;->PART_COLUMNS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1367
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1368
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private createAttachObject(Landroid/net/Uri;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1539
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAttachObject(): path ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/SCloudMmsBnRService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PART_"

    .line 1541
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "/"

    .line 1543
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1544
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-gt v2, v0, :cond_1

    .line 1545
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createAttachObject(): skipped, path="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "path"

    .line 1551
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uri"

    .line 1552
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "createAttachObject(): skipped, unknown attachment type "

    .line 1554
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "uri"

    .line 662
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private findAdditionalDuplicatedItem(Ljava/lang/String;)Z
    .locals 3

    .line 1622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1626
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    const/4 v0, 0x2

    .line 1627
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mTransactionIdList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1630
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mTransactionIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1631
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

    .line 808
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 813
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^0+(?!$)"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKeyFormId(JIJ)Ljava/lang/String;
    .locals 1

    .line 796
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 798
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 800
    :goto_0
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, v0

    const/4 p3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p5, p3

    const/4 p0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, p0

    const-string p0, "BACKUP_MMS_%02d_%02d_%010d"

    invoke-static {p4, p0, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 206
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/SCloudMmsBnRService"

    if-nez v0, :cond_0

    const-string p1, "action is null"

    .line 208
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    const-string v2, "type"

    .line 212
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2925c823

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x899ccc4

    if-eq v4, v5, :cond_2

    const v5, 0x2cf66103

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "com.samsung.android.scloud.NOTIFY_COMPLETE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v7

    goto :goto_0

    :cond_2
    const-string v4, "com.samsung.android.scloud.NOTIFY_CANCEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v6

    goto :goto_0

    :cond_3
    const-string v4, "com.samsung.android.scloud.NOTIFY_PREPARE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_0
    const-string v0, "restore"

    const-string v4, "backup"

    if-eqz v3, :cond_9

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    const-string p1, "undefined action"

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    :cond_5
    const-string v0, "canceled"

    .line 233
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->cancel(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    .line 225
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 226
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->backupFinished()V

    goto :goto_1

    .line 227
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 228
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->restoreFinished()V

    .line 230
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    .line 215
    :cond_9
    sget-object v1, Lcom/android/providers/telephony/backup/SCloudBnRContract;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "MMS2"

    .line 216
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 217
    iget-object v3, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mObserver:Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;

    invoke-virtual {v3, v1, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->prepareBackup(Landroid/os/Bundle;)V

    goto :goto_2

    .line 220
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->prepareRestore(Landroid/os/Bundle;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private insertAddr(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "addr"

    const-string v2, "address"

    .line 1327
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1329
    iget-boolean p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz p0, :cond_0

    .line 1330
    invoke-static {v3}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 1332
    :cond_0
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1337
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1338
    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v2, -0x1

    const/4 p0, 0x0

    .line 1343
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1344
    invoke-virtual {p1, v1, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1345
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_1
    const-string v1, "insertAddr(): insertion error"

    .line 1347
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-gtz p1, :cond_2

    const-string p1, "insertAddr(): failed!"

    .line 1353
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1357
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content://mms/addr/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insertAddr(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " succeeded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1349
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1350
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

    const-string v2, "TP/SCloudMmsBnRService"

    if-nez p2, :cond_0

    const-string p0, "insertMms(): cv is null"

    .line 1200
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v3, "msg_box"

    .line 1205
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1206
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

    .line 1210
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

    .line 1212
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date"

    .line 1214
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, 0x3e8

    if-nez v7, :cond_4

    .line 1215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    if-eq v4, v6, :cond_5

    .line 1220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "read"

    invoke-virtual {p2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "seen"

    invoke-virtual {p2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string v4, "sub"

    .line 1224
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1225
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "Subject found"

    .line 1226
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ISO-8859-1"

    .line 1227
    invoke-static {v7, v10}, Lcom/android/providers/telephony/MmsProvider;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x6a

    const-string v12, "sub_cs"

    if-nez v10, :cond_6

    .line 1228
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "Change subject to ISO"

    .line 1230
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_6
    invoke-virtual {p2, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1233
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const-string v4, "thread_id"

    .line 1237
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1238
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "thread_classification"

    .line 1240
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1241
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1242
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_8
    if-eqz v7, :cond_9

    .line 1245
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_9

    .line 1246
    iget-object v7, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mClassificationThreads:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v7, "pin_to_top"

    .line 1250
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_a

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1251
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1252
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move v10, v11

    :goto_2
    if-eq v10, v11, :cond_b

    .line 1255
    iget-object v7, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_b
    new-instance v4, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;

    invoke-direct {v4, p0, p2, v6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;-><init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/content/ContentValues;Z)V

    .line 1260
    invoke-direct {p0, p1, v4}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->isDuplicatedItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1263
    iget-boolean p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_e

    const-string p0, "m_id"

    .line 1265
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1266
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_c
    const-string p0, ""

    .line 1269
    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {p1, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateMMSWithFTItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    .line 1270
    :cond_d
    new-instance p0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string p1, "Duplicated item with FT"

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1274
    :cond_e
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    const-string p0, "reserved"

    .line 1275
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1279
    :cond_f
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1283
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-gtz v3, :cond_11

    .line 1284
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    const-wide/16 v3, -0x1

    .line 1289
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1290
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
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

    .line 1293
    invoke-static {v2, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_6
    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-gtz p0, :cond_12

    const-string p0, "insertMms(): failed!"

    .line 1299
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1306
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

    .line 1307
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

    .line 1295
    :goto_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1296
    throw p0

    .line 1261
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

    const-string v6, "_data"

    .line 1377
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    const-string v11, "_"

    if-nez v9, :cond_0

    const-string v9, "PART_"

    .line 1380
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 1382
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1383
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_0
    const-string v0, "ct"

    .line 1387
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "text/plain"

    .line 1388
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v0, "application/smil"

    .line 1389
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "TP/SCloudMmsBnRService"

    if-nez v12, :cond_c

    if-nez v0, :cond_c

    const-string v0, "cl"

    .line 1392
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v15, p0

    .line 1395
    iget-boolean v15, v15, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOMA13NameEncoding:Z

    if-eqz v15, :cond_2

    const-string v15, "iso-8859-1"

    .line 1397
    invoke-static {v0, v15}, Lcom/android/providers/telephony/MmsProvider;->getBytesByCharSet(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1398
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .line 1399
    invoke-static {v15}, Lorg/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v13, "\\/:*?\"<>|"

    invoke-direct {v15, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1404
    :goto_0
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1405
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1407
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "utf-8"

    .line 1411
    invoke-static {v0, v13}, Lcom/android/providers/telephony/MmsProvider;->getBytesByCharSet(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1412
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    .line 1416
    :cond_2
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 1422
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, " "

    .line 1423
    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v11, v0

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertPart(): contentLocation="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parts"

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/PART_"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    invoke-static {v9}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v16

    const-string v10, "."

    if-eqz v16, :cond_7

    move/from16 v16, v12

    .line 1433
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v1, -0x1

    if-eq v12, v1, :cond_5

    const/4 v1, 0x1

    add-int/2addr v12, v1

    .line 1435
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const-string v12, "dcf"

    .line 1438
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "insertPart(): File extenstion is dcf. Don\'t need to change to fl."

    .line 1439
    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1443
    :cond_6
    invoke-static {v0}, Lcom/google/android/mms/util/DownloadDrmHelper;->modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move/from16 v16, v12

    :goto_3
    move-object v1, v0

    .line 1447
    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_b

    .line 1452
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 1453
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1456
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v11, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v17, v5

    const/16 v5, 0x32

    if-le v12, v5, :cond_a

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertPart(): origLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 1458
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1465
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 1466
    :cond_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1469
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create new partFile again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v2, "insertPart(): createNewFile"

    .line 1472
    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1473
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    move-object/from16 v17, v5

    .line 1478
    :goto_5
    invoke-static {v9}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1b6

    const/4 v3, -0x1

    .line 1482
    invoke-static {v1, v0, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertPart(): setPermissions result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    move-object/from16 v17, v5

    move/from16 v16, v12

    :cond_d
    :goto_6
    const-wide/16 v3, -0x1

    .line 1489
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    const/4 v6, 0x0

    .line 1490
    :try_start_3
    invoke-virtual {v1, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1491
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1495
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v1, p1

    :goto_8
    :try_start_4
    const-string v5, "insertPart(): insertion error"

    .line 1493
    invoke-static {v14, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :goto_9
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_e

    const-string v0, "insertPart(): failed!"

    .line 1499
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 1503
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/part/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertPart(): "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " succeeded"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_f

    .line 1514
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v6, 0x2

    add-long/2addr v6, v3

    .line 1519
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "text"

    .line 1520
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "index_text"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "source_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x2

    .line 1522
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "table_to_use"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "words"

    .line 1526
    invoke-virtual {v1, v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1527
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    :try_start_6
    const-string v2, "insertPart(): words insertion error"

    .line 1529
    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1531
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_c

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1532
    throw v0

    :cond_f
    :goto_c
    return-object v5

    .line 1495
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1496
    throw v0
.end method

.method private isDuplicatedItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;)Z
    .locals 3

    .line 1562
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1566
    invoke-direct {p0, p1, v2, p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->checkDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    .line 1573
    :cond_1
    iget-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->hashCode()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1576
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 1577
    iget-object p1, p2, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->transactionId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->findAdditionalDuplicatedItem(Ljava/lang/String;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method private isMessageBetween([JLandroid/content/ContentValues;)Z
    .locals 5

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    .line 1181
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "date"

    .line 1185
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    const/4 v0, 0x0

    .line 1190
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

    .line 1192
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

    const-string p1, "TP/SCloudMmsBnRService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    :goto_1
    return p0
.end method

.method private loadBackupProjection(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "pdu"

    .line 245
    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->loadColumnFilter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "bin_info"

    .line 248
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mBackupProjection:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private loadColumns()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    .line 358
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 359
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "seen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "thread_classification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "device_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "pin_to_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_original_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_original_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_recipient_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_content_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_content_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_file_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v1, "re_count_info"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoreColumns:Ljava/util/Set;

    const-string v0, "safe_message"

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private loadExistingItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 406
    new-instance v8, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;-><init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 407
    iget-object p2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_0

    .line 408
    iget-object p2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->hashCode()I

    move-result p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 412
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private loadExistingItems()V
    .locals 12

    .line 377
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v9, "loadExistingItems(): failed!"

    const-string v10, "TP/SCloudMmsBnRService"

    if-nez v1, :cond_0

    .line 379
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v2, "pdu"

    .line 383
    sget-object v3, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->DUPLICATION_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v8, :cond_4

    .line 384
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_id"

    .line 385
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "date"

    .line 386
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "msg_box"

    .line 387
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "tr_id"

    .line 388
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v1, "m_id"

    .line 389
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "thread_id"

    .line 390
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v5, v11

    .line 391
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->loadExistingItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    iget-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    const/4 v1, 0x2

    .line 395
    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mTransactionIdList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_3

    .line 383
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    if-eqz v8, :cond_5

    .line 400
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 401
    :catch_0
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private prepareBackup(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "prepareBackup()"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 256
    iput v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    .line 258
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->loadBackupThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->loadBackupProjection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->sendKeys(Landroid/os/Bundle;)V

    return-void
.end method

.method private readDataAndSendData(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "m_id"

    .line 598
    iget-object v0, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredMmsInTransaction:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v4, "TP/SCloudMmsBnRService"

    if-nez v0, :cond_0

    const-string v0, "failed mms exist"

    .line 599
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    new-instance v5, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-direct {v5, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;-><init>(Landroid/os/Bundle;)V

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v0, 0x0

    .line 606
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "file_parsing"

    const-string v10, "MMS2"

    .line 605
    invoke-static {v9, v10, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const-string v13, "read_data"

    .line 609
    invoke-direct {v1, v13, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_7

    const-string v15, "lastId"

    .line 611
    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v15, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "data"

    .line 612
    invoke-virtual {v13, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 613
    array-length v14, v15

    if-lez v14, :cond_7

    .line 614
    array-length v14, v15

    move/from16 v16, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v14, :cond_6

    aget-object v0, v15, v2

    .line 615
    check-cast v0, Landroid/content/ContentValues;

    move/from16 v17, v14

    .line 616
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 617
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v18, v12

    .line 619
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-direct {v1, v12}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->convertMmsRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v19, v15

    .line 621
    :try_start_1
    new-instance v15, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v20, v7

    const/4 v7, 0x1

    :try_start_2
    invoke-direct {v15, v1, v14, v7}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;-><init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/content/ContentValues;Z)V

    .line 622
    invoke-direct {v1, v6, v15}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->isDuplicatedItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 625
    iget-boolean v7, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableCarrierServerSync:Z

    if-eqz v7, :cond_3

    const-string v7, ""

    .line 627
    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 628
    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 631
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6, v7}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateMMSWithFTItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 632
    :cond_2
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v7, "Duplicated item with FT"

    invoke-direct {v0, v7}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_3
    :goto_2
    iget-object v7, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v12, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->restoreMmsItem(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 636
    iget-object v12, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredMmsInTransaction:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 623
    :cond_4
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v7, "Duplicated item"

    invoke-direct {v0, v7}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide/from16 v20, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide/from16 v20, v7

    move-object/from16 v19, v15

    .line 640
    :goto_3
    instance-of v7, v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    if-eqz v7, :cond_5

    const-string v7, "is duplicated"

    .line 641
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v15, v19

    move-wide/from16 v7, v20

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v20, v7

    move/from16 v0, v16

    goto :goto_5

    :cond_7
    move-wide/from16 v20, v7

    :goto_5
    if-eqz v13, :cond_9

    const-string v2, "hasNext"

    .line 648
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v2, p1

    move-wide/from16 v7, v20

    goto/16 :goto_0

    .line 649
    :cond_9
    :goto_6
    iget-object v2, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v6, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredThreads:Ljava/util/List;

    invoke-static {v2, v3, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 650
    iget-object v2, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v6, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mPinToTopThreads:Ljava/util/List;

    invoke-static {v2, v3, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 651
    iget-object v2, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    iget-object v6, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mClassificationThreads:Ljava/util/List;

    invoke-static {v2, v3, v6}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putClassificationThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Ljava/util/List;)V

    .line 652
    iget-object v2, v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v2, v3, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " records restored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreCount(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {v9, v10, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 656
    invoke-virtual {v5, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v5, v11}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 657
    invoke-virtual {v5}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "send_data"

    invoke-direct {v1, v2, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 658
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private readKeyAndSendData(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 488
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v1

    const-string v8, "file_parsing"

    const-string v9, "MMS2"

    .line 487
    invoke-static {v8, v9, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v2, "read_key"

    .line 492
    invoke-direct {v7, v2, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "key"

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    const-string v3, "lastId"

    .line 494
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "data"

    .line 495
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 496
    array-length v4, v3

    if-lez v4, :cond_1

    .line 497
    array-length v4, v3

    move v5, v11

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 498
    check-cast v6, Landroid/content/ContentValues;

    .line 499
    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 500
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "hasNext"

    .line 504
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    :cond_2
    new-instance v12, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-direct {v12, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;-><init>(Landroid/os/Bundle;)V

    .line 506
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v14, "send_data"

    const-string v15, "TP/SCloudMmsBnRService"

    if-nez v0, :cond_3

    const-string v0, "readKeyAndSendData(): There\'s nothing to send"

    .line 509
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v12, v11}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v12, v11}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 511
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v14, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    .line 514
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readKeyAndSendData(): Start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "pdu"

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "readKeyAndSendData(): failed!"

    if-nez v5, :cond_4

    .line 519
    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v12, v11}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v12, v11}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 521
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v14, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    .line 525
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    invoke-direct {v7, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 531
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 534
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 538
    :try_start_0
    iget-object v0, v7, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mBackupProjection:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "_id"

    move-object/from16 v16, v5

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v2, :cond_d

    :try_start_1
    const-string v0, "_id"

    .line 540
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "read"

    .line 541
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, "thread_id"

    .line 542
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ltz v3, :cond_b

    if-ltz v1, :cond_b

    if-ltz v11, :cond_b

    const/16 v17, 0x0

    .line 546
    :goto_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_a

    .line 548
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 549
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 550
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21
    :try_end_3
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v23, v1

    move-object/from16 v1, p0

    move/from16 v24, v3

    move/from16 p1, v11

    move-object v11, v2

    move-wide/from16 v2, v18

    move-object/from16 v18, v8

    move v8, v4

    move/from16 v4, v20

    move-object v8, v5

    move-object/from16 v20, v9

    move-object v9, v6

    move-wide/from16 v5, v21

    .line 549
    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    .line 551
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_3

    .line 556
    :cond_7
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    .line 559
    invoke-static {v2, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v2

    .line 563
    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "timestamp"

    .line 564
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    invoke-direct {v7, v8, v11, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->buildBackupData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 566
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_8

    const/4 v2, 0x1

    .line 568
    invoke-virtual {v12, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v12, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v12, v13}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 569
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v14, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 570
    invoke-interface {v13}, Ljava/util/List;->clear()V

    :cond_8
    add-int/lit8 v17, v17, 0x1

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readKeyAndSendData(): key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 561
    :cond_9
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Timestamp is invalid"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move/from16 v23, v1

    move/from16 v24, v3

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 p1, v11

    move-object v11, v2

    move-object v8, v5

    move-object v9, v6

    .line 579
    :goto_4
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readKeyAndSendData(): Unknown Exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_4
    move-exception v0

    move/from16 v23, v1

    move/from16 v24, v3

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 p1, v11

    move-object v11, v2

    move-object v8, v5

    move-object v9, v6

    .line 577
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readKeyAndSendData(): Json failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_5
    move-exception v0

    move/from16 v23, v1

    move/from16 v24, v3

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 p1, v11

    move-object v11, v2

    move-object v8, v5

    move-object v9, v6

    .line 575
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readKeyAndSendData(): Skipped, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    move-object v5, v8

    move-object v6, v9

    move-object v2, v11

    move-object/from16 v8, v18

    move-object/from16 v9, v20

    move/from16 v1, v23

    move/from16 v3, v24

    const/4 v4, 0x1

    move/from16 v11, p1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    move-object v11, v2

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v9, v6

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v11, v2

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v9, v6

    :goto_8
    move-object v1, v0

    goto :goto_a

    :cond_b
    move-object v11, v2

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v9, v6

    .line 544
    :try_start_6
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "cursor invalid"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v11, v2

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v9, v6

    :goto_9
    move-object v1, v0

    const/16 v17, 0x0

    :goto_a
    if-eqz v11, :cond_c

    .line 538
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_b
    throw v1

    :cond_d
    move-object v11, v2

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v9, v6

    const/16 v17, 0x0

    :goto_c
    if-eqz v11, :cond_e

    .line 583
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object v9, v6

    const/16 v17, 0x0

    .line 584
    :goto_d
    :try_start_9
    invoke-static {v15, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 586
    :cond_e
    :goto_e
    iget-object v0, v7, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    iget v1, v7, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    move/from16 v0, v17

    .line 590
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupCount(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    .line 589
    invoke-static {v3, v2, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readKeyAndSendData(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records are sent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 592
    invoke-virtual {v12, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v12, v13}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 593
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v14, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    .line 586
    :goto_f
    iget-object v1, v7, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    iget v2, v7, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mExceedMaxSizeCount:I

    invoke-static {v1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setMmxCountExceedMaxSize(Landroid/content/Context;I)V

    .line 587
    throw v0
.end method

.method private restoreFinished()V
    .locals 7

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "restoreFinished()"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 332
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllRestoreFinished(Landroid/content/Context;)Z

    move-result v2

    .line 335
    iget-object v3, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getTotalRestoreCount(Landroid/content/Context;)I

    move-result v3

    .line 336
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

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v4, "file_parsing"

    if-eqz v2, :cond_0

    .line 340
    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllRestoreFinished(I)Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v5, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;I)V

    .line 342
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    .line 343
    iget-object v5, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.scloud"

    invoke-static {v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->updateClassificationThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->updatePinToTopThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 349
    iget-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRestoredThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V

    .line 350
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 351
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private restoreMmsItem(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/ContentValues;)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "MMS"

    .line 668
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ADDRESS"

    .line 669
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "PART"

    .line 670
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 671
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-string v9, "GROUP_ADDR"

    .line 672
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 673
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 676
    :cond_0
    invoke-direct {v0, v5}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->convertMmsRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v2

    .line 678
    iget-object v9, v0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mMsgPeriod:[J

    invoke-direct {v0, v9, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->isMessageBetween([JLandroid/content/ContentValues;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "m_type"

    .line 682
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x82

    cmp-long v12, v10, v12

    if-eqz v12, :cond_14

    const-wide/16 v12, 0x87

    cmp-long v12, v10, v12

    if-eqz v12, :cond_14

    .line 688
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    if-nez v8, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    :goto_0
    if-nez v6, :cond_2

    const/4 v14, 0x0

    goto :goto_1

    .line 693
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    :goto_1
    if-nez v7, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    .line 694
    :cond_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    :goto_2
    const-string v12, "TP/SCloudMmsBnRService"

    if-lez v13, :cond_4

    const-string v5, "restoreMmsItem(): Restore with GROUP_ADDR"

    .line 696
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v13, :cond_c

    .line 698
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-lez v14, :cond_c

    const-string v8, "restoreMmsItem(): Restore with ADDRESS"

    .line 701
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, 0x86

    cmp-long v8, v10, v16

    const/4 v10, 0x1

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    const-string v8, "msg_box"

    .line 705
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    .line 708
    :goto_4
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 709
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v14, :cond_9

    .line 711
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v16, v7

    const-string v7, "address"

    .line 712
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v15

    const-string v15, "insert-address-token"

    .line 713
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_6

    :cond_7
    const-string v15, "type"

    .line 717
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const/16 v15, 0x89

    if-ne v13, v15, :cond_8

    .line 719
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 721
    :cond_8
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v16

    move/from16 v15, v17

    goto :goto_5

    :cond_9
    move-object/from16 v16, v7

    move/from16 v17, v15

    if-eqz v10, :cond_a

    .line 726
    invoke-interface {v9, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 727
    :cond_a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v5, "restoreMmsItem(): FROM list is empty, create with TO list"

    .line 728
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-interface {v9, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 731
    :cond_b
    invoke-interface {v9, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_c
    move-object/from16 v16, v7

    move/from16 v17, v15

    :goto_7
    const-string v5, "creator"

    const-string v7, "com.samsung.android.scloud"

    .line 735
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-static {v1, v9}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v7

    .line 737
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "thread_id"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 738
    iget-object v5, v0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredThreads:Ljava/util/List;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-direct {v0, v4, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->insertMms(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_13

    const-string v7, "date"

    .line 746
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "timestamp"

    .line 745
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v14, :cond_e

    .line 751
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 752
    invoke-direct {v0, v5}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->convertAddrRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    .line 753
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "msg_id"

    invoke-virtual {v5, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    invoke-direct {v0, v4, v5}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->insertAddr(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 756
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "restoreMmsItem(): addr insertion fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v2, 0x0

    .line 762
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move/from16 v15, v17

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v15, :cond_12

    move-object/from16 v6, v16

    .line 764
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 765
    invoke-direct {v0, v9}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->convertPartRestoreValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v9

    const-string v10, "ct"

    .line 767
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v2, :cond_f

    const-string v11, "application/smil"

    .line 768
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 769
    invoke-static {v9}, Lcom/android/providers/telephony/MmsProvider;->getSmilTextFrom(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    .line 772
    :cond_f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "mid"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 774
    invoke-direct {v0, v4, v9, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->insertPart(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_11

    const-string v11, "_data"

    .line 779
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 780
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 781
    invoke-direct {v0, v10, v9}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->createAttachObject(Landroid/net/Uri;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 783
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v6

    goto :goto_9

    .line 776
    :cond_11
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "restoreMmsItem(): part insertion fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_12
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileList"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v7

    .line 743
    :cond_13
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "restoreMmsItem(): mms insertion fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_14
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed m_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_15
    new-instance v0, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;

    const-string v1, "Not between period"

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/backup/BnRCommonInterface$RecordSkipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendKeys(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v7, p0

    .line 423
    new-instance v8, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;-><init>(Landroid/os/Bundle;)V

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "TP/SCloudMmsBnRService"

    const-string v1, "sendKeys(): Collect keys"

    .line 425
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "pdu"

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v5, "sendKeys(): failed!"

    const-string v6, "send_key"

    const/4 v4, 0x0

    if-nez v10, :cond_0

    .line 430
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v8, v4}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v8, v4}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 432
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v6, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    .line 437
    :cond_0
    :try_start_0
    sget-object v12, Lcom/android/providers/telephony/backup/SCloudBnRContract;->BACKUP_PREPARE_PROJECTION_MMS:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "_id"

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_7

    :try_start_1
    const-string v1, "_id"

    .line 440
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v1, "read"

    .line 441
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v1, "thread_id"

    .line 442
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v1, "date"

    .line 443
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v4

    .line 444
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 446
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 447
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object v11, v2

    move-wide/from16 v2, v17

    move/from16 v17, v12

    move v12, v4

    move/from16 v4, v19

    move-object/from16 v22, v5

    move-object v12, v6

    move-wide/from16 v5, v20

    .line 446
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getKeyFormId(JIJ)Ljava/lang/String;

    move-result-object v1

    if-gez v15, :cond_1

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    .line 452
    :cond_1
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 455
    invoke-static {v2, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->normalTimestamp(J)J

    move-result-wide v2

    .line 460
    invoke-direct {v7, v10}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->checkUnwanted(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeys(): Skipped, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is unwanted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v4, "key"

    .line 464
    invoke-virtual {v11, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    .line 465
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    .line 468
    invoke-virtual {v8, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v8, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v8, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 469
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v12, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 470
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "sendKeys(): Skipped, timestamp is invalid"

    .line 457
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v6, v12

    move/from16 v12, v17

    move-object/from16 v5, v22

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    move-object/from16 v22, v5

    move-object v12, v6

    move/from16 v4, v16

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v22, v5

    move-object v12, v6

    :goto_3
    move-object v1, v0

    if-eqz v10, :cond_6

    .line 437
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v1

    :cond_7
    move-object/from16 v22, v5

    move-object v12, v6

    const/4 v4, 0x0

    :goto_5
    if-eqz v10, :cond_8

    .line 475
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-object/from16 v2, v22

    const/4 v1, 0x0

    goto :goto_7

    .line 481
    :cond_8
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKeys(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keys collected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 482
    invoke-virtual {v8, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v8, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 483
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v12, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :catch_1
    move v1, v4

    move-object v12, v6

    move-object v2, v5

    .line 476
    :goto_7
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v8, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {v8, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 478
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v7, v12, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method initialize(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "initialize"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableOMA13NameEncoding"

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOMA13NameEncoding:Z

    const-string v2, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    .line 172
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableMmsTransactionCustomize4Korea:Z

    .line 173
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableOpBackupSync()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableOpBackupSync:Z

    .line 174
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableCarrierServerSync:Z

    .line 175
    new-instance v1, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;-><init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mObserver:Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;

    if-eqz p1, :cond_0

    const-string v1, "context://telephony/carriers"

    .line 179
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->getTelephonyProviderContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 189
    :cond_1
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    .line 192
    :goto_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string p0, "initialize(): failed, context is null"

    .line 193
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 197
    :cond_2
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_3

    const-string p0, "initialize(): failed, open helper is null"

    .line 199
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "onCreate"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->initialize(Landroid/content/Context;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "onDestroy"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mObserver:Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mObserver:Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 164
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setBackupState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 165
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/SCloudMmsBnRService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 140
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isDoingInitSync()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 141
    new-instance p2, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;-><init>(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    .line 142
    invoke-virtual {p2, p3}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    const/16 v0, 0x144

    .line 143
    invoke-virtual {p2, v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResultCode(I)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 144
    invoke-virtual {p2, p3}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 145
    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "send_key"

    invoke-direct {p0, p3, p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 146
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->initialize(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "fail to initialize"

    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p3

    .line 153
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->handleIntent(Landroid/content/Intent;)V

    return p3
.end method

.method public prepareRestore(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "TP/SCloudMmsBnRService"

    const-string v1, "prepareRestore()"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    invoke-direct {v0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;-><init>(Landroid/os/Bundle;)V

    .line 268
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->putRestoreCount(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;I)V

    .line 269
    iget-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v1, v2, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->setRestoreState(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;Z)V

    .line 270
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->loadColumns()V

    .line 272
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mItemsArray:Landroid/util/SparseArray;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mTransactionIdList:Ljava/util/List;

    .line 274
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->loadExistingItems()V

    .line 276
    iget-boolean v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mEnableCarrierServerSync:Z

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTImdnIdItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 281
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mRestoredThreads:Ljava/util/List;

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mClassificationThreads:Ljava/util/List;

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mPinToTopThreads:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string v2, "msgPeriod"

    .line 286
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_2

    .line 288
    array-length v2, p1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    const/4 p1, 0x0

    .line 289
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mMsgPeriod:[J

    goto :goto_0

    :cond_1
    new-array v2, v4, [J

    .line 291
    iput-object v2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mMsgPeriod:[J

    .line 292
    aget-wide v4, p1, v3

    aput-wide v4, v2, v3

    .line 293
    aget-wide v3, p1, v1

    aput-wide v3, v2, v1

    .line 297
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.scloud"

    invoke-static {p1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;

    .line 299
    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "send_key"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->executeProviderCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
