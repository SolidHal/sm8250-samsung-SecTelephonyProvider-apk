.class public Lcom/android/providers/telephony/backup/MessageBnR;
.super Landroid/content/BroadcastReceiver;
.source "MessageBnR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;,
        Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;
    }
.end annotation


# static fields
.field private static final DUPLICATION_MMS_CHECK_PROJECTION:[Ljava/lang/String;

.field static mEnableCarrierServerSync:Z = false

.field private static mEnableOpBackupSync:Z = false

.field private static mEnableSmsServerTime:Z = false

.field private static final permissions:[Ljava/lang/String;

.field private static final sBackupSyncObject:Ljava/lang/Object;

.field private static sBackupThread:Ljava/lang/Thread;

.field private static final sRestoreSyncObject:Ljava/lang/Object;

.field private static sRestoreThread:Ljava/lang/Thread;


# instance fields
.field public mCheckMMSDuplication:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDocumentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupIdByBackupGroupIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mImThreadTableInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsItemsMap:Ljava/util/Map;
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

.field private mMmsTransactionIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFrom:Ljava/lang/String;

.field private mRestoreTo:Ljava/lang/String;

.field private mSmsIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadIdHasDeletedMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSessionThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupSyncObject:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreSyncObject:Ljava/lang/Object;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->permissions:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "date"

    const-string v3, "msg_box"

    const-string v4, "tr_id"

    const-string v5, "m_id"

    const-string v6, "thread_id"

    const-string v7, "reserved"

    .line 1305
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->DUPLICATION_MMS_CHECK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreFrom:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreTo:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mDocumentUris:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mUpdateSessionThreadList:Ljava/util/ArrayList;

    .line 589
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    .line 1301
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    .line 1303
    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsTransactionIdList:Ljava/util/List;

    return-void
.end method

.method private MessageDbCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "MessageBnR MessageDbCopy start"

    .line 553
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/"

    .line 557
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 562
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/data/data/com.android.providers.telephony/databases"

    goto :goto_0

    :cond_1
    const-string v1, "/data/user_de/0/com.android.providers.telephony/databases"

    .line 565
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "databases_backup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mmssms.db"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->semRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageDbCopy semRestoreDatabaseFile result : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 575
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->doDBReload(Landroid/content/Context;)V

    .line 576
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const-string p0, "MessageBnR MessageDbCopy end"

    .line 577
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p0, "mmssms db file copy fail"

    .line 579
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 582
    invoke-static {p3}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_tmp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->rename(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/backup/MessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/telephony/backup/MessageBnR;->backup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/backup/MessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/telephony/backup/MessageBnR;->restore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableOpBackupSync:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/telephony/backup/MessageBnR;Z)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreTempDatabase(Lcom/android/providers/telephony/backup/MessageBnR;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->sendRestoreProgress(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private backup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p4

    .line 197
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "TP/MessageBnRReceiver"

    const-string v5, "MessageBnR backup start"

    .line 199
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "db_replacing"

    invoke-static {v5, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v4, v0

    move v5, v6

    const/4 v3, 0x1

    goto/16 :goto_4

    .line 204
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->isAtLeastM()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->permissionCheck()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 208
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Message"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Message.zip"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Message.edb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "RcsFtFiles"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 212
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "RcsFtFiles.zip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "RcsFtFiles.edb"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 214
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "RCS_FT_ATTACHMENTS_INFO_INTERNAL.json"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 215
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "app_parts"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 216
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app_parts"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v15, "TP/MessageBnRReceiver"

    const-string v8, "MessageBnR backup databases copy start"

    .line 219
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "databases_backup"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "databases_backup"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 224
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v6, "/data/data/com.android.providers.telephony/databases"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mmssms.db"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mmssms_temp.db"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 228
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/user_de/0/com.android.providers.telephony/databases"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mmssms.db"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "mmssms_temp.db"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-nez v2, :cond_8

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mmssms_temp.db"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :try_start_2
    invoke-static {v2, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    :try_start_3
    invoke-direct {v1, v2}, Lcom/android/providers/telephony/backup/MessageBnR;->removeUnwantedMessages(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mmssms_temp.db"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "mmssms.db"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "mmssms_temp.db"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    if-nez v2, :cond_7

    const-string v2, "TP/MessageBnRReceiver"

    const-string v6, "MessageBnR backup databases copy end"

    .line 248
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TP/MessageBnRReceiver"

    const-string v6, "MessageBnR backup backup app_part, app_ft_files copy start"

    .line 250
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->getFtOriginalFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    .line 252
    iget-object v6, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getBinFtOriginalFiles(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 253
    iget-object v8, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v13, "parts"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x0

    :try_start_4
    invoke-virtual {v8, v13, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    sget-object v13, Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;

    .line 254
    invoke-virtual {v8, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    sget-object v13, Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;

    invoke-virtual {v8, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    sget-object v13, Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;

    invoke-virtual {v8, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 255
    new-instance v13, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;

    invoke-direct {v13, v2, v6}, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;-><init>(Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 260
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    sget-object v13, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-virtual {v6, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    sget-object v13, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;

    .line 261
    invoke-virtual {v6, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v6, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v6, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$NUJZX8CcjMJ37Mp76yoKH1DAtxw;

    invoke-direct {v6, v5}, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$NUJZX8CcjMJ37Mp76yoKH1DAtxw;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 267
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v5, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;

    .line 268
    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 270
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-static {v3, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_2

    .line 274
    :cond_4
    iget-object v2, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v3, "ft_files"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ft_files"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v5, 0x0

    :try_start_8
    invoke-static {v2, v3, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->directoryCopy(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v2, "TP/MessageBnRReceiver"

    const-string v3, "MessageBnR backup backup app_part, app_ft_files copy end"

    .line 277
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v4, v7}, Lcom/android/providers/telephony/backup/BnRUtils;->messageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    invoke-static {v10, v11}, Lcom/android/providers/telephony/backup/BnRUtils;->messageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 284
    invoke-static {v10}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 286
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/backup/BnRUtils;->streamCrypt(Ljava/lang/String;)V

    const-string v2, "TP/MessageBnRReceiver"

    const-string v3, "MessageBnR backup  encrypt start"

    .line 287
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {v7, v9, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 289
    invoke-static {v7}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 290
    invoke-static {v11, v12, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 291
    invoke-static {v11}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const-string v0, "TP/MessageBnRReceiver"

    const-string v2, "MessageBnR backup  encrypt end"

    .line 292
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v3, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mDocumentUris:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 298
    iget-object v3, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mDocumentUris:Ljava/util/List;

    invoke-static {v3, v0, v4}, Lcom/android/providers/telephony/backup/BnRFileUtil;->copyFileToDirUri(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)V

    .line 299
    iget-object v3, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mDocumentUris:Ljava/util/List;

    invoke-static {v3, v2, v4}, Lcom/android/providers/telephony/backup/BnRFileUtil;->copyFileToDirUri(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)V

    .line 301
    :cond_5
    invoke-static {v9}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 302
    invoke-static {v12}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-long/2addr v3, v6

    long-to-int v0, v3

    .line 313
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    move v3, v5

    move v4, v3

    move v5, v0

    goto/16 :goto_4

    .line 280
    :cond_6
    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "MessageDbToZip fail"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v5, 0x0

    const-string v0, "TP/MessageBnRReceiver"

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageBnR semBackupDatabaseFile temp db fail backupResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "semBackupDatabaseFile fail error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v5, v15

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    const-string v0, "TP/MessageBnRReceiver"

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageBnR semBackupDatabaseFile fail backupResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "semBackupDatabaseFile fail error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move v5, v6

    .line 308
    :goto_3
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "TP/MessageBnRReceiver"

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 313
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_4
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    .line 317
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupFinished()Ljava/lang/String;

    move-result-object v0

    const-string v1, "db_replacing"

    invoke-static {v1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupSyncObject:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 320
    :try_start_b
    sput-object v2, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    .line 321
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    .line 313
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 314
    throw v0
.end method

.method private checkMMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;)Z
    .locals 8

    const/4 p0, 0x0

    :try_start_0
    const-string v1, "pdu"

    .line 1373
    sget-object v2, Lcom/android/providers/telephony/backup/MessageBnR;->DUPLICATION_MMS_CHECK_PROJECTION:[Ljava/lang/String;

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

    .line 1375
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1379
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "date"

    .line 1380
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg_box"

    .line 1381
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr_id"

    .line 1382
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_id"

    .line 1383
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thread_id"

    .line 1384
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    .line 1386
    iget-object v4, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->messageId:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    if-eqz v2, :cond_4

    iget-object v4, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    .line 1403
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return p0

    .line 1389
    :cond_4
    :try_start_3
    sget-boolean v2, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-nez v2, :cond_14

    if-nez p2, :cond_5

    .line 1390
    iget-object v2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->date:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_5
    if-eqz p2, :cond_8

    iget-object v2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->date:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_8

    :cond_6
    if-eqz p1, :cond_7

    .line 1403
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return p0

    :cond_8
    if-nez v0, :cond_9

    .line 1393
    :try_start_5
    iget-object p2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->messageBox:Ljava/lang/String;

    if-nez p2, :cond_a

    :cond_9
    if-eqz v0, :cond_c

    iget-object p2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->messageBox:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p2, :cond_c

    :cond_a
    if-eqz p1, :cond_b

    .line 1403
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_b
    return p0

    :cond_c
    if-nez v1, :cond_d

    .line 1396
    :try_start_7
    iget-object p2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->transactionId:Ljava/lang/String;

    if-nez p2, :cond_e

    :cond_d
    if-eqz v1, :cond_10

    iget-object p2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p2, :cond_10

    :cond_e
    if-eqz p1, :cond_f

    .line 1403
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_f
    return p0

    :cond_10
    if-nez v3, :cond_11

    .line 1399
    :try_start_9
    iget-object p2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->threadId:Ljava/lang/String;

    if-nez p2, :cond_12

    :cond_11
    if-eqz v3, :cond_14

    iget-object p2, p3, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->threadId:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez p2, :cond_14

    :cond_12
    if-eqz p1, :cond_13

    .line 1403
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

    .line 1373
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

    .line 1403
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_18
    return p0

    :catch_0
    move-exception p1

    const-string p2, "TP/MessageBnRReceiver"

    const-string p3, "checkMMSDuplication(): error"

    .line 1404
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public static checkTempDatabase(Landroid/content/Context;)I
    .locals 1

    .line 2467
    new-instance v0, Lcom/android/providers/telephony/backup/MessageBnR;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/MessageBnR;-><init>()V

    .line 2468
    invoke-direct {v0, p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initialize(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 2469
    invoke-static {v0, p0}, Lcom/android/providers/telephony/backup/MessageBnR;->checkTempDatabase(Lcom/android/providers/telephony/backup/MessageBnR;Z)I

    move-result p0

    return p0
.end method

.method private static checkTempDatabase(Lcom/android/providers/telephony/backup/MessageBnR;Z)I
    .locals 3

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "checkTempDatabase()"

    .line 2473
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/data/data/com.android.providers.telephony/"

    goto :goto_0

    :cond_0
    const-string v0, "/data/user_de/0/com.android.providers.telephony/"

    .line 2479
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "database_temp/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2480
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mmssms.db"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "checkTempDatabase(): No temp database, skip"

    .line 2482
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 2486
    :cond_1
    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2487
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "checkTempDatabase(): Another restoring thread is running, skip"

    .line 2488
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 2489
    monitor-exit v0

    return p0

    .line 2492
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/providers/telephony/backup/MessageBnR$3;

    invoke-direct {v2, p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR$3;-><init>(Lcom/android/providers/telephony/backup/MessageBnR;Z)V

    const-string p0, "restoreTempDatabase"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    .line 2498
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2499
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearJanskyVirtualLines()V
    .locals 4

    .line 889
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "im_threads"

    const-string v1, "from_address"

    .line 890
    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TP/MessageBnRReceiver"

    if-nez v2, :cond_0

    const-string p0, "clearJanskyVirtualLines(): from_address not support"

    .line 891
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "clearJanskyVirtualLines()"

    .line 895
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v3, 0x0

    .line 897
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_address IS NOT NULL"

    .line 898
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteTwoPhoneMessage(Landroid/content/Context;)V
    .locals 3

    .line 965
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 967
    invoke-static {p0}, Lcom/android/providers/telephony/backup/MessageBnR;->deleteTwoPhoneSms(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 968
    invoke-static {p0}, Lcom/android/providers/telephony/backup/MessageBnR;->deleteTwoPhoneMms(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "threads"

    const-string v1, "using_mode = 10"

    const/4 v2, 0x0

    .line 971
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static deleteTwoPhoneMms(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const-string v0, "_id"

    const-string v1, "TP/MessageBnRReceiver"

    .line 935
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v4, "pdu"

    .line 936
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "using_mode = 10"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_1

    .line 938
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 939
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    .line 936
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v4

    :cond_1
    if-eqz v3, :cond_2

    .line 941
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "deleteMmsOutOfDate(): Failed to collecting pdu ids"

    .line 942
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 949
    :try_start_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropTriggersDeleteOnPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteConversationParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "addr"

    .line 952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "pdu"

    .line 953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 954
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    const-string v2, "deleteMmsOutOfDate() : delete mms failed!"

    .line 956
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 958
    :goto_3
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 959
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    .line 958
    :goto_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 959
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 960
    throw v0

    :cond_3
    :goto_5
    return-void
.end method

.method private static deleteTwoPhoneSms(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const-string v0, "_id"

    const-string v1, "TP/MessageBnRReceiver"

    .line 903
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v4, "sms"

    .line 904
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "using_mode = 10"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_1

    .line 906
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 907
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    .line 904
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v4

    :cond_1
    if-eqz v3, :cond_2

    .line 909
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "deleteSmsOutOfDate() : get deleting sms failed!"

    .line 910
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 917
    :try_start_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v3, "sms"

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "cmas"

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "words"

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table_to_use=1 AND source_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 923
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    const-string v2, "deleteSmsOutOfDate() : delete sms failed!"

    .line 925
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 927
    :goto_3
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 928
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    .line 927
    :goto_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 928
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 929
    throw v0

    :cond_3
    :goto_5
    return-void
.end method

.method private fillFileInfoValues(Landroid/util/Pair;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p4, :cond_1

    .line 1971
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p4, "file_path"

    .line 1973
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1976
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const-string v1, "file_name"

    .line 1978
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_size"

    .line 1980
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1981
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1984
    :cond_0
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move p0, p1

    :cond_1
    return p0
.end method

.method private fillSessionInfoValues(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 5

    const-string p0, "chat_session_id"

    .line 1994
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_id"

    .line 1995
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1998
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->getFtSessionIdThreadIdMap()Ljava/util/Map;

    move-result-object v3

    .line 1999
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 2002
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 2005
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "rcsdb_id"

    .line 2008
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2010
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2009
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string p0, "session_id"

    .line 2013
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2015
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3
.end method

.method private findAdditionalDuplicatedMmsItem(Ljava/lang/String;)Z
    .locals 3

    .line 1412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1416
    :cond_0
    sget-boolean v0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableOpBackupSync:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    const/4 v0, 0x2

    .line 1417
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsTransactionIdList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1421
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsTransactionIdList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 2455
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT count(*) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2457
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p1, :cond_2

    .line 2459
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 2455
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBnR restore: cannot load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " count"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TP/MessageBnRReceiver"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return p0
.end method

.method private getMmsDataSelection(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 14

    .line 1488
    sget-boolean p0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-nez p0, :cond_4

    const-string p0, "date"

    .line 1492
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "pdu"

    const-string v7, "date ASC LIMIT 1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 1493
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1494
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1497
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1500
    :cond_1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v7, "pdu"

    const-string v13, "date DESC LIMIT 1"

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1501
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1502
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_2
    if-eqz p0, :cond_3

    .line 1505
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1508
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(date >= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND date <= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getSmsDataSelection(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 14

    .line 1148
    sget-boolean p0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-nez p0, :cond_4

    const-string p0, "date"

    .line 1152
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "sms"

    const-string v7, "date ASC LIMIT 1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 1153
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1154
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1159
    :cond_1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v7, "sms"

    const-string v13, "date DESC LIMIT 1"

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1160
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1161
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_2
    if-eqz p0, :cond_3

    .line 1164
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1166
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(date >= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND date <= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getSmsIdByOldId(J)J
    .locals 4

    .line 1137
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mSmsIdMap:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mSmsIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1139
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mSmsIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private initGroupIdMap()V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mGroupIdByBackupGroupIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1122
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mGroupIdByBackupGroupIdMap:Ljava/util/HashMap;

    :goto_0
    return-void
.end method

.method private initSmsIdMap()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mSmsIdMap:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_0

    .line 1132
    :cond_0
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mSmsIdMap:Landroid/util/LongSparseArray;

    :goto_0
    return-void
.end method

.method private initThreadIdHasDeletedMsg()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 594
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_Message_DisplaySmsTimeAs"

    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 101
    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/BnRUtils;->isPhoneAndServerTime(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/BnRUtils;->isServerTime(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableSmsServerTime:Z

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableOpBackupSync()Z

    move-result p0

    sput-boolean p0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableOpBackupSync:Z

    return-void
.end method

.method private insertAddr(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 12

    const-string v0, "msg_id"

    const-string v9, "addr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, p1

    move-object v2, v9

    .line 1644
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_8

    .line 1645
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 1652
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1653
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x5

    const-string v4, "TP/MessageBnRReceiver"

    if-nez v2, :cond_1

    :try_start_2
    const-string v1, "insertAddr(): msg_id is null"

    .line 1656
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    .line 1658
    invoke-virtual {p3, v3}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto/16 :goto_1

    .line 1663
    :cond_1
    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1664
    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 1665
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_5

    .line 1667
    invoke-virtual {p3, v3}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_1

    .line 1673
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getMmsMIdIdByBackupMId(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_3

    goto :goto_1

    .line 1677
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    .line 1679
    invoke-virtual {p2, v9, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v5, v1, v7

    if-lez v5, :cond_4

    .line 1681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/addr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " succeeded"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1684
    :cond_4
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertAddr(): failed! addr id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p3, :cond_5

    .line 1689
    invoke-virtual {p3, v3}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 1691
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    if-eqz p1, :cond_6

    .line 1692
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    move v10, v11

    goto :goto_4

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_7

    .line 1644
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p0

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    .line 1692
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_9
    return v11

    :catch_0
    move-exception p0

    .line 1693
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v10
.end method

.method private insertOriginalMessages(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 2

    .line 1042
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreSpamFilter(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 1044
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->initTheadIdByBackupThreadIdMap()V

    .line 1045
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    .line 1048
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->getSmsDataSelection(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1049
    invoke-static {p2, v0, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingSMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 1051
    sget-boolean v0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v0, :cond_0

    .line 1052
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateItemMap()V

    .line 1053
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingMMSMIdItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1054
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTImdnIdItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1057
    :cond_0
    invoke-static {p2, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChatItems(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1058
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1060
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreSmsData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    .line 1061
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreMmsData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    .line 1062
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreCmas(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreWpmMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 1064
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreMyChannels(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 1066
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mImThreadTableInfo:Ljava/util/HashMap;

    .line 1067
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initImSessionIdThreadIdMap()V

    .line 1069
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initFtSessionIdThreadIdMap()V

    :cond_1
    const-string v0, "im"

    .line 1071
    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    const-string v0, "ft"

    .line 1072
    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    .line 1074
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1076
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->getSessionIdThreadIdMap()Ljava/util/HashMap;

    move-result-object p1

    .line 1077
    iget-object p3, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->updateImFtSessions(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mUpdateSessionThreadList:Ljava/util/ArrayList;

    .line 1080
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreThreadTableInfo(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 1081
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->restoreThreadImTableInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1
.end method

.method private insertPart(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "mid"

    const-string v6, "/"

    const-string v15, "part"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/4 v8, 0x0

    move-object/from16 v7, p1

    move-object v8, v15

    .line 1708
    :try_start_0
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_a

    .line 1709
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v8, 0x0

    .line 1713
    :try_start_2
    invoke-static {v2, v8}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    .line 1717
    :cond_1
    invoke-static {v7}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1718
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x6

    const-string v11, "TP/MessageBnRReceiver"

    if-nez v9, :cond_3

    :try_start_3
    const-string v0, "insertPart(): msg_id is null"

    .line 1721
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    .line 1723
    invoke-virtual {v4, v10}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    :cond_2
    :goto_0
    move-object/from16 v12, p2

    goto/16 :goto_2

    .line 1728
    :cond_3
    iget-object v12, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1729
    iget-object v12, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 1730
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v4, :cond_2

    .line 1732
    invoke-virtual {v4, v10}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_0

    .line 1738
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->getMmsMIdIdByBackupMId(J)J

    move-result-wide v12

    const-wide/16 v17, 0x0

    cmp-long v9, v12, v17

    if-gtz v9, :cond_5

    goto :goto_0

    .line 1742
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v9, 0x0

    move-object/from16 v12, p2

    .line 1744
    invoke-virtual {v12, v15, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    cmp-long v9, v13, v17

    if-lez v9, :cond_6

    .line 1746
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/part/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1747
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert(): "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " succeeded"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "_data"

    .line 1749
    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1750
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1751
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    .line 1752
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1756
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1758
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertPart part copy fail : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1763
    :cond_6
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertPart(): failed! part id = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-eqz v4, :cond_8

    const/4 v9, 0x6

    .line 1767
    invoke-virtual {v4, v9}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 1769
    :cond_8
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_1

    if-eqz v7, :cond_c

    .line 1770
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    :goto_3
    move-object v1, v0

    if-eqz v7, :cond_9

    .line 1708
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v1

    :cond_a
    :goto_5
    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 1770
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_6
    return v16

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    .line 1771
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v16, v8

    :cond_c
    :goto_8
    return v16
.end method

.method private insertPdu(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1541
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "thread_id"

    const-string v13, "pdu"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v5, p1

    move-object v6, v13

    .line 1550
    :try_start_0
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_b

    .line 1551
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_0

    goto/16 :goto_4

    .line 1555
    :cond_0
    iget-object v6, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 1556
    iget-object v6, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1558
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    .line 1568
    :goto_0
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1569
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1571
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x4

    const-string v11, "TP/MessageBnRReceiver"

    if-nez v9, :cond_2

    :try_start_2
    const-string v6, "insertPdu(): thread_id is null"

    .line 1573
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    .line 1575
    invoke-virtual {v2, v10}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto/16 :goto_2

    :cond_2
    const-string v12, "using_mode"

    .line 1580
    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_3

    .line 1582
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1584
    :cond_3
    iget-object v15, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    move-object/from16 v16, v11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v15, v10, v11, v9}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdByBackupThreadId(Landroid/content/Context;JI)J

    move-result-wide v9

    .line 1586
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1588
    new-instance v11, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;

    invoke-direct {v11, v6, v14}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;-><init>(Landroid/content/ContentValues;Z)V

    .line 1589
    invoke-direct {v0, v1, v11}, Lcom/android/providers/telephony/backup/MessageBnR;->isDuplicatedMMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v6, "insert(): duplicated mms item"

    move-object/from16 v11, v16

    .line 1590
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v6, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_8

    const/4 v6, 0x4

    .line 1593
    invoke-virtual {v2, v6}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v11, v16

    .line 1597
    sget-boolean v12, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v12, :cond_5

    const-string v12, "m_id"

    .line 1598
    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1599
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {v1, v12}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateMMSWithFTItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v6, "isDuplicateMMSWithFTItem"

    .line 1600
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v6, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mCheckMMSDuplication:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_8

    const/4 v6, 0x4

    .line 1603
    invoke-virtual {v2, v6}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_2

    :cond_5
    const-wide/16 v16, 0x0

    cmp-long v9, v9, v16

    if-lez v9, :cond_7

    const/4 v9, 0x0

    .line 1610
    invoke-virtual {v1, v13, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v6, v9, v16

    if-lez v6, :cond_6

    .line 1612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1613
    invoke-static {v7, v8, v9, v10}, Lcom/android/providers/telephony/backup/BnRUtils;->setMmsMIdIdByBackupMId(JJ)V

    .line 1614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " succeeded"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1616
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert(): failed! pdu _id = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v6, "fail : create thread_id"

    .line 1619
    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v2, :cond_8

    const/4 v6, 0x4

    .line 1623
    invoke-virtual {v2, v6}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 1625
    :cond_8
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_9

    if-eqz v5, :cond_d

    .line 1626
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_a

    .line 1550
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw v1

    :cond_b
    :goto_4
    if-eqz v5, :cond_c

    .line 1626
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_c
    return v14

    :catch_0
    move-exception v0

    .line 1627
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v14, 0x0

    :cond_d
    :goto_5
    return v14
.end method

.method private isAtLeastM()Z
    .locals 1

    .line 91
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

.method private isDuplicatedMMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;)Z
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1358
    invoke-direct {p0, p1, v1, p2}, Lcom/android/providers/telephony/backup/MessageBnR;->checkMMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "TP/MessageBnRReceiver"

    const-string v0, "isDuplicatedMMSItem(): duplicated!"

    .line 1359
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1366
    :goto_0
    sget-boolean v0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableOpBackupSync:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1367
    iget-object p1, p2, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->transactionId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->findAdditionalDuplicatedMmsItem(Ljava/lang/String;)Z

    move-result p1

    :cond_2
    return p1
.end method

.method static synthetic lambda$backup$0(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/io/File;)Z
    .locals 1

    const-string v0, ""

    .line 256
    invoke-static {p2, v0}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 257
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 258
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$backup$1(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 1

    .line 261
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$backup$2(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 263
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method static synthetic lambda$backup$3(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 1

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private loadExistingMMSItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1344
    new-instance v7, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1345
    iget-object p2, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1346
    iget-object p2, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    :cond_0
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1349
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadExistingMMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    const-string v1, "pdu"

    .line 1316
    sget-object v2, Lcom/android/providers/telephony/backup/MessageBnR;->DUPLICATION_MMS_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    .line 1318
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1322
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "_id"

    .line 1323
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string p2, "date"

    .line 1324
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p2, "msg_box"

    .line 1325
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p2, "tr_id"

    .line 1326
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "m_id"

    .line 1327
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "thread_id"

    .line 1328
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v6, p2

    .line 1329
    invoke-direct/range {v2 .. v8}, Lcom/android/providers/telephony/backup/MessageBnR;->loadExistingMMSItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    sget-boolean v0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableOpBackupSync:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    .line 1333
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsTransactionIdList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_6

    .line 1338
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 1316
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

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 1338
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return-void

    :catch_0
    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "loadExistingMMSItems(): failed!"

    .line 1339
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private loadFtFilePath(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "_id"

    const-string v0, "type"

    const-string v1, "imdn_message_id"

    const-string v2, "file_path"

    .line 1913
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    .line 1916
    :try_start_0
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 1918
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1919
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 1920
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1922
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1923
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1924
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1925
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1926
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p3, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 1916
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 1929
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFtFilePath e : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/MessageBnRReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private removeSafeMessageInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string p0, "TP/MessageBnRReceiver"

    const-string v0, "removeSafeMessageInfo(): start"

    .line 866
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "safe_message > 0"

    .line 871
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "safe_message"

    const/4 v3, 0x0

    .line 872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sms"

    const/4 v4, 0x0

    .line 874
    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    const-string v3, "pdu"

    .line 875
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "im"

    .line 876
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "ft"

    .line 877
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeSafeMessageInfo messages : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "threads"

    .line 880
    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSafeMessageInfo threads : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSafeMessageInfo e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "removeSafeMessageInfo(): end"

    .line 885
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeUnwantedMessages(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string p0, "DISTINCT thread_id"

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "removeUnwantedMessages(): Start"

    .line 826
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "sms"

    .line 830
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "address LIKE \'#CMAS#%\' OR address LIKE \'#Emergency Alert#%\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_1

    .line 832
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    .line 830
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v4

    :cond_1
    if-eqz v3, :cond_2

    .line 835
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "removeUnwantedMessages(): query delete thread ids failed!"

    .line 836
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    :try_start_4
    const-string v6, "cmas"

    .line 839
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    if-eqz p0, :cond_4

    .line 842
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 843
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    if-eqz p0, :cond_3

    .line 839
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v3

    :cond_4
    if-eqz p0, :cond_5

    .line 845
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    const-string v3, "removeUnwantedMessages(): query update thread ids failed!"

    .line 846
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    const-string p0, "sms"

    const-string v3, "address LIKE \'#CMAS#%\' OR address LIKE \'#Emergency Alert#%\'"

    const/4 v4, 0x0

    .line 849
    invoke-virtual {p1, p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v2, p0

    const-string p0, "cmas"

    .line 850
    invoke-virtual {p1, p0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v2, p0

    .line 851
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUnwantedMessages(): CMAS, affectedRows="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 854
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUnwantedMessages(): deleteThreadIds.size()="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 856
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;JZZZ)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_6

    :cond_6
    const-string p0, "raw"

    .line 860
    invoke-virtual {p1, p0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v2, p0

    const-string p0, "INSERT INTO words(words) VALUES(\'rebuild\')"

    .line 861
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 862
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeUnwantedMessages(): End, affectedRows="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private response(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response() - result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", err_code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/MessageBnRReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 2432
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_MESSAGE_DB"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2429
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_MESSAGE_DB"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "RESULT"

    .line 2438
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "ERR_CODE"

    .line 2439
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "REQ_SIZE"

    .line 2440
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SOURCE"

    .line 2441
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXPORT_SESSION_TIME "

    .line 2442
    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Kies"

    .line 2444
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com.wssnps"

    .line 2445
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p2, "SmartSwitch"

    .line 2446
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "com.sec.android.easyMover"

    .line 2447
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2450
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string p2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private restore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p4

    const-string v1, "TP/MessageBnRReceiver"

    const-string v2, "MessageBnR restore start"

    .line 329
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .line 330
    invoke-static {v10}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "db_replacing"

    invoke-static {v2, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v4, v0

    move v3, v11

    goto/16 :goto_5

    .line 335
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->isAtLeastM()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->permissionCheck()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mDocumentUris:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 340
    iget-object v3, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v9}, Lcom/android/providers/telephony/backup/BnRFileUtil;->moveUrisToDir(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 343
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Message.zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Message.edb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RcsFtFiles.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "RcsFtFiles.edb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "RCS_FT_ATTACHMENTS_INFO_INTERNAL.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-static {v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getFtFileInfoList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 351
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "/data/data/com.android.providers.telephony/"

    goto :goto_1

    :cond_3
    const-string v7, "/data/user_de/0/com.android.providers.telephony/"

    .line 355
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "database_temp"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 356
    iget-object v7, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v13, "parts"

    .line 357
    invoke-virtual {v7, v13, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    const-string v13, "/data/user_de/0/com.android.providers.telephony/app_parts"

    .line 356
    invoke-static {v7, v13}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 358
    iget-object v7, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v14, "ft_files"

    .line 359
    invoke-virtual {v7, v14, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    const-string v14, "/data/user_de/0/com.android.providers.telephony/app_ft_files"

    .line 358
    invoke-static {v7, v14}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 364
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v7

    sput-boolean v7, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v7, :cond_4

    .line 366
    sget-boolean v15, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableSmsServerTime:Z

    invoke-static {v15, v7}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initDuplicateChecker(ZZ)V

    :cond_4
    const/4 v7, 0x2

    :try_start_0
    new-array v15, v7, [Ljava/lang/String;

    aput-object v3, v15, v2

    aput-object v5, v15, v11

    .line 371
    invoke-static {v15}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getTotalFileSize([Ljava/lang/String;)J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v15, v19, v16

    if-eqz v15, :cond_c

    .line 376
    iget-object v15, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v7, "sms"

    .line 377
    invoke-direct {v8, v15, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v21

    const-string v7, "pdu"

    .line 378
    invoke-direct {v8, v15, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v22

    const-string v7, "addr"

    .line 379
    invoke-direct {v8, v15, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v23

    const-string v7, "part"

    .line 380
    invoke-direct {v8, v15, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v24

    const-string v7, "im"

    .line 381
    invoke-direct {v8, v15, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v25

    const-string v7, "ft"

    .line 382
    invoke-direct {v8, v15, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getMessageCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v26

    .line 384
    new-instance v15, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;

    iget-object v7, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    move-object/from16 v16, v15

    move-object/from16 v17, v7

    move-object/from16 v18, p3

    invoke-direct/range {v16 .. v26}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;-><init>(Landroid/content/Context;Ljava/lang/String;JIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 386
    :try_start_1
    invoke-virtual {v15, v2}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->sendProgressIntent(I)V

    .line 388
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/backup/BnRUtils;->streamCrypt(Ljava/lang/String;)V

    const-string v7, "TP/MessageBnRReceiver"

    const-string v10, "MessageBnR restore decrypt start"

    .line 389
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v3, v1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 391
    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 392
    invoke-static {v5, v4, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 393
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const-string v0, "TP/MessageBnRReceiver"

    const-string v3, "MessageBnR restore decrypt end"

    .line 394
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v15, v2}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 398
    invoke-static {v12, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    const-string v0, "/data/user_de/0/com.android.providers.telephony/databases"

    .line 400
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "/data/data/com.android.providers.telephony/databases"

    .line 404
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mmssms.db"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mmssms.db"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v3, "TP/MessageBnRReceiver"

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore backupResult : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_b

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/data/user_de/0/com.android.providers.telephony/"

    invoke-static {v0, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->extract(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/user_de/0/com.android.providers.telephony/"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->extract(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const-string v0, "/data/user_de/0/com.android.providers.telephony/RCS_FT_ATTACHMENTS_INFO_INTERNAL.json"

    .line 421
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v15, v11}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    const-string v0, "/data/user_de/0/com.android.providers.telephony/databases_backup"

    .line 426
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1, v11, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 428
    invoke-virtual {v1, v11, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 429
    invoke-virtual {v1, v11, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mmssms.db"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "TP/MessageBnRReceiver"

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getDatabaseVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "db_replacing"

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getDatabaseVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {v1, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getDatabaseVersion()I

    move-result v3

    if-gt v1, v3, :cond_a

    .line 441
    invoke-direct {v8, v0}, Lcom/android/providers/telephony/backup/MessageBnR;->removeSafeMessageInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "/data/user_de/0/com.android.providers.telephony/"

    .line 445
    invoke-direct {v8, v0, v13, v14}, Lcom/android/providers/telephony/backup/MessageBnR;->MessageDbCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->sendBroadcastDeleteAppDatabase(Landroid/content/Context;)V

    .line 452
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isOnlyReplaceDB4Test()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "pass below steps for test"

    .line 453
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    .line 454
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 528
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 529
    invoke-static {v12}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    const/16 v1, 0x64

    .line 535
    invoke-virtual {v15, v1}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->sendProgressIntent(I)V

    return-void

    .line 458
    :cond_6
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initThreadIdHasDeletedMsg()V

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->saveUnsupportTypeThreadId()V

    .line 461
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreFrom:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreTo:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v11}, Lcom/android/providers/telephony/backup/MessageBnR;->saveOutOfDateThreadId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->saveDeleteAllMessageThreadId()V

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->clearJanskyVirtualLines()V

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore deleteAllMessage - unnecessary message"

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v11, v11}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteAllMessage(Landroid/content/Context;ZZZ)I

    .line 469
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportTwoPhoneBnR()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore deleteTwoPhoneMessage"

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/MessageBnR;->deleteTwoPhoneMessage(Landroid/content/Context;)V

    :cond_7
    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore deleteUnsupportMessage - unsupport type message"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteUnsupportMessage(Landroid/content/Context;)I

    .line 478
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteBotThreadIdSmsNumber(Landroid/content/Context;)V

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore deleteMessageOutOfDate start"

    .line 481
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreFrom:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreTo:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, v11}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteMessageOutOfDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)I

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore deleteMessageOutOfDate end"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {v8, v9, v13, v6}, Lcom/android/providers/telephony/backup/MessageBnR;->updateFtFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->updateReservationMessage()I

    .line 493
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/providers/telephony/backup/BnRUtils;->initThreadTableInfo(Landroid/content/Context;Z)I

    .line 496
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->updateFtStatus(Landroid/content/Context;)I

    .line 498
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->updateConversationType(Landroid/content/Context;)I

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore insertOriginalMessages start"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mmssms.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 505
    :try_start_3
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 506
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initGroupIdMap()V

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initSmsIdMap()V

    const/4 v0, 0x2

    .line 508
    invoke-virtual {v15, v0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 510
    invoke-direct {v8, v3, v1, v15}, Lcom/android/providers/telephony/backup/MessageBnR;->insertOriginalMessages(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    const-string v0, "TP/MessageBnRReceiver"

    const-string v4, "restore insertOriginalMessages end"

    .line 511
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {v3, v1}, Lcom/android/providers/telephony/backup/CategoriesBnR;->restoreCategories(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "TP/MessageBnRReceiver"

    const-string v4, "restore updateCategories end"

    .line 514
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 524
    invoke-direct {v8, v1, v15}, Lcom/android/providers/telephony/backup/MessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)V

    .line 525
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 528
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 529
    invoke-static {v12}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    const/16 v1, 0x64

    .line 535
    invoke-virtual {v15, v1}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->sendProgressIntent(I)V

    move v3, v2

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v3

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, v3

    const/4 v1, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 449
    :cond_9
    :try_start_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MessageDbCopy successCopy false"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid DB Version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_b
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "semBackupDatabaseFile fail error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    .line 373
    :cond_c
    :try_start_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No EDB File Found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 519
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 524
    invoke-direct {v8, v2, v15}, Lcom/android/providers/telephony/backup/MessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)V

    .line 525
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 528
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 529
    invoke-static {v12}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    if-eqz v15, :cond_e

    const/16 v1, 0x64

    .line 535
    invoke-virtual {v15, v1}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->sendProgressIntent(I)V

    :cond_e
    move v3, v11

    :goto_4
    move v4, v3

    :goto_5
    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    .line 541
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v1, "db_replacing"

    invoke-static {v0, v1, v11}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 544
    sget-object v3, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreSyncObject:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    .line 545
    :try_start_8
    sput-object v1, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    .line 546
    monitor-exit v3

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    move-object v10, v1

    move-object v1, v2

    :goto_6
    if-eqz v10, :cond_f

    if-eqz v1, :cond_f

    .line 524
    invoke-direct {v8, v1, v15}, Lcom/android/providers/telephony/backup/MessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)V

    .line 525
    iget-object v1, v8, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 528
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 529
    invoke-static {v12}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    if-eqz v15, :cond_10

    const/16 v1, 0x64

    .line 535
    invoke-virtual {v15, v1}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->sendProgressIntent(I)V

    .line 538
    :cond_10
    throw v0
.end method

.method private restoreCmas(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    const-string v0, "sms_id"

    const-string v1, "thread_id"

    const-string v2, "TP/MessageBnRReceiver"

    const-string v3, "restoreCmas()"

    .line 1779
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v6, "cmas"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    .line 1782
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_8

    .line 1783
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_0

    goto/16 :goto_2

    .line 1796
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v5

    .line 1798
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v5, "restoreCmas(): thread_id is null"

    .line 1800
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1804
    :cond_1
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v5, "restoreCmas(): sms_id is null"

    .line 1806
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v8, "using_mode"

    .line 1810
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1812
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1814
    :cond_3
    iget-object v9, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v9, v10, v11, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdByBackupThreadId(Landroid/content/Context;JI)J

    move-result-wide v8

    .line 1816
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->getSmsIdByOldId(J)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_4

    cmp-long v12, v6, v10

    if-lez v12, :cond_4

    .line 1818
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1819
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "cmas"

    const-string v7, "body"

    .line 1820
    invoke-virtual {p2, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v7, v5, v10

    if-lez v7, :cond_5

    .line 1823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1826
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail : threadId="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", smsId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    if-eqz p1, :cond_6

    .line 1829
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move v3, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_7

    .line 1782
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p0

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 1829
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    return v4

    :catch_0
    move-exception p0

    .line 1830
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v3
.end method

.method private restoreMmsData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 7

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restoreMmsData()"

    .line 1514
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v2, "parts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreMmsData getDir PartsDirName e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/user_de/0/com.android.providers.telephony/app_parts"

    :goto_0
    move-object v4, v0

    .line 1524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsItemsMap:Ljava/util/Map;

    .line 1525
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->getMmsDataSelection(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mMmsTransactionIdList:Ljava/util/List;

    .line 1528
    invoke-direct {p0, p2, v0}, Lcom/android/providers/telephony/backup/MessageBnR;->loadExistingMMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1530
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->initMmsMIdByBackupMId()V

    .line 1531
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->insertPdu(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    .line 1532
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->insertAddr(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/MessageBnR;->insertPart(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private restoreMyChannels(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const-string p0, "TP/MessageBnRReceiver"

    const-string v0, "restoreMyChannels()"

    .line 1887
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "mychannels"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 1890
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 1891
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1897
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "mychannels"

    const-string v3, "body"

    .line 1898
    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " succeeded"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    if-eqz p1, :cond_5

    .line 1903
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 1890
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1903
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return v0

    :catch_0
    move-exception p0

    .line 1904
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_5
    :goto_2
    return v0
.end method

.method private restoreSmsData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "index_text"

    const-string v4, "body"

    const-string v5, "sms"

    const-string v6, "thread_id"

    const-string v7, "group_id"

    const-string v8, "TP/MessageBnRReceiver"

    const-string v9, "restoreSmsData()"

    .line 1173
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :try_start_0
    const-string v12, "sms"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p1

    .line 1176
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v11, :cond_14

    .line 1177
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-gtz v12, :cond_0

    goto/16 :goto_d

    :cond_0
    :goto_0
    const-wide/16 v12, 0x0

    .line 1187
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1191
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1192
    invoke-static {v11}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v10

    .line 1194
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v12, 0x3

    if-nez v17, :cond_2

    :try_start_2
    const-string v10, "restoreSmsData(): thread_id is null"

    .line 1196
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 1198
    invoke-virtual {v2, v12}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object/from16 v20, v6

    move v6, v9

    move-object v15, v11

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move v6, v9

    move-object v15, v11

    goto/16 :goto_b

    :cond_2
    :try_start_3
    const-string v13, "using_mode"

    .line 1202
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-nez v13, :cond_3

    .line 1204
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1206
    :cond_3
    :try_start_5
    iget-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    move-object/from16 p1, v14

    move-object/from16 v20, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v9, v14, v15, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdByBackupThreadId(Landroid/content/Context;JI)J

    move-result-wide v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-wide/16 v17, 0x0

    cmp-long v9, v13, v17

    if-gtz v9, :cond_5

    :try_start_6
    const-string v9, "fail : create thread_id"

    .line 1209
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 1212
    invoke-virtual {v2, v12}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    :goto_1
    move-object/from16 v20, v6

    move-object v15, v11

    const/4 v6, 0x0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v15, v11

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 1217
    :cond_5
    :try_start_7
    new-instance v9, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    invoke-direct {v9, v10}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;-><init>(Landroid/content/ContentValues;)V

    .line 1220
    sget-boolean v15, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v15, :cond_6

    .line 1222
    :try_start_8
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateItemMap()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1225
    :cond_6
    :try_start_9
    invoke-static {v1, v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v15, :cond_7

    :try_start_a
    const-string v15, "isDuplicatedSMSItem(): duplicated!"

    .line 1226
    invoke-static {v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v15, 0x1

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    .line 1229
    :goto_3
    :try_start_b
    sget-boolean v17, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v17, :cond_8

    .line 1230
    :try_start_c
    invoke-static {v1, v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedSMSWithChatItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "isDuplicatedSMSWithChatItem(): duplicated!"

    .line 1231
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :cond_8
    if-eqz v15, :cond_b

    .line 1237
    sget-boolean v9, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v9, :cond_a

    const-string v9, "date"

    .line 1239
    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-nez v9, :cond_9

    const-string v9, "restoreSmsData(): date is null, skip checking duplication"

    .line 1241
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1243
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object v9

    .line 1244
    invoke-static {v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->removeDuplicateMsginHashMap(Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;)V

    :cond_a
    :goto_4
    if-eqz v2, :cond_4

    .line 1248
    invoke-virtual {v2, v12}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    .line 1253
    :cond_b
    :try_start_d
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1254
    invoke-virtual {v1, v5, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 1255
    iget-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mSmsIdMap:Landroid/util/LongSparseArray;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object v15, v11

    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v20, v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v11, v12, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1258
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v6, :cond_c

    .line 1259
    :try_start_f
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_c
    move-object/from16 v6, p1

    .line 1261
    :goto_5
    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v18, 0x0

    cmp-long v9, v11, v18

    if-lez v9, :cond_e

    cmp-long v9, v13, v18

    if-lez v9, :cond_e

    .line 1263
    iget-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mGroupIdByBackupGroupIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const-string v11, "hidden"

    const-string v12, "group_type"

    if-eqz v9, :cond_d

    .line 1264
    :try_start_11
    iget-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mGroupIdByBackupGroupIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 1265
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v6, 0x2

    .line 1266
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x1

    .line 1267
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/4 v6, 0x0

    goto :goto_6

    .line 1269
    :cond_d
    :try_start_12
    iget-object v9, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mGroupIdByBackupGroupIdMap:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x2

    .line 1271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    const/4 v6, 0x0

    .line 1272
    :try_start_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v10, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    .line 1278
    :goto_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "_id"

    .line 1279
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1280
    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "source_id"

    .line 1281
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "table_to_use"

    const/4 v10, 0x1

    .line 1282
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "words"

    .line 1283
    invoke-virtual {v1, v9, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-wide/16 v9, 0x0

    cmp-long v0, v13, v9

    if-lez v0, :cond_f

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " succeeded"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v2, :cond_10

    const/4 v0, 0x3

    .line 1290
    invoke-virtual {v2, v0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 1292
    :cond_10
    :goto_8
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-nez v0, :cond_12

    if-eqz v15, :cond_11

    .line 1293
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :cond_11
    const/4 v9, 0x1

    goto :goto_10

    :cond_12
    move-object/from16 v0, p0

    move v9, v6

    move-object v11, v15

    move-object/from16 v6, v20

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v15, v11

    :goto_9
    const/4 v6, 0x0

    goto :goto_a

    :catchall_6
    move-exception v0

    move v6, v9

    move-object v15, v11

    :goto_a
    move-object v1, v0

    :goto_b
    if-eqz v15, :cond_13

    .line 1176
    :try_start_15
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_c
    throw v1

    :cond_14
    :goto_d
    move v6, v9

    move-object v15, v11

    if-eqz v15, :cond_15

    .line 1293
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    move v6, v9

    .line 1294
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v9, v6

    :goto_10
    return v9
.end method

.method private restoreSpamFilter(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const-string p0, "TP/MessageBnRReceiver"

    const-string v0, "restoreSpamFilter()"

    .line 1087
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "spam_filter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 1090
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 1091
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 1099
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "spam_filter"

    const-string v3, "body"

    .line 1100
    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " succeeded"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "fail : create thread_id"

    .line 1105
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    if-eqz p1, :cond_5

    .line 1109
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 1090
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 1109
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return v0

    :catch_0
    move-exception p0

    .line 1110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_5
    :goto_3
    return v0
.end method

.method private restoreTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "service_type"

    const-string v13, "sim_imsi"

    const-string v14, "from_address"

    const-string v15, "thread_id"

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreTable() - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "TP/MessageBnRReceiver"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-wide/16 v16, 0x0

    .line 2075
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2082
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v6, "ft"

    .line 2083
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const-string v3, "/data/user_de/0/com.android.providers.telephony/app_ft_files"

    const-string v4, "/data/user_de/0/com.android.providers.telephony/app_parts"

    if-eqz v0, :cond_0

    .line 2084
    invoke-direct {v1, v8, v10, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->loadFtFilePath(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2086
    :try_start_0
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v2

    :try_start_1
    const-string v2, "ft_files"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2087
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v2, "parts"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    .line 2089
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFtFilesDir e : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object/from16 v18, v2

    .line 2093
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, v18

    const/4 v0, 0x1

    :goto_2
    if-nez v2, :cond_1

    move/from16 v20, v0

    goto/16 :goto_1e

    .line 2101
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    const-string v0, "(date > "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :try_start_2
    const-string v25, "date ASC LIMIT 100"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    move-object/from16 v26, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    move-object/from16 v28, v5

    const/16 v18, 0x0

    move-object v5, v0

    move-object/from16 v29, v6

    move-object/from16 v6, v22

    move-object/from16 v30, v7

    move-object/from16 v7, v23

    move-object/from16 v31, v8

    move-object/from16 v8, v24

    move-object/from16 v19, v12

    move-object v12, v9

    move-object/from16 v9, v25

    .line 2103
    :try_start_3
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    if-eqz v2, :cond_20

    .line 2104
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    goto/16 :goto_1c

    :cond_2
    const/4 v3, 0x0

    .line 2117
    :goto_3
    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v4

    .line 2119
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    const-string v6, "date"

    if-eqz v5, :cond_3

    .line 2120
    :try_start_5
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v26, v5

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v23, v19

    move-object/from16 v7, v27

    move-object/from16 v9, v29

    goto/16 :goto_1a

    .line 2123
    :cond_3
    :goto_4
    :try_start_6
    invoke-virtual {v4, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    const/16 v7, 0x8

    const/4 v8, 0x7

    if-nez v5, :cond_6

    :try_start_7
    const-string v4, "restoreTable(): thread_id is null"

    .line 2125
    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v9, v29

    if-eqz v11, :cond_5

    .line 2127
    :try_start_8
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2128
    invoke-virtual {v11, v7}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_5

    .line 2130
    :cond_4
    invoke-virtual {v11, v8}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_5
    :goto_5
    move-object/from16 v23, v19

    move-object/from16 v7, v27

    goto/16 :goto_17

    :catchall_1
    move-exception v0

    move-object/from16 v9, v29

    :goto_6
    move-object v3, v0

    move-object/from16 v23, v19

    :goto_7
    move-object/from16 v7, v27

    goto/16 :goto_1a

    :cond_6
    move-object/from16 v9, v29

    .line 2136
    :try_start_9
    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    if-eqz v21, :cond_7

    .line 2137
    :try_start_a
    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 2139
    :cond_7
    :goto_8
    :try_start_b
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    if-eqz v21, :cond_8

    :try_start_c
    const-string v0, "chat_session_id"

    .line 2140
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_9

    :cond_8
    :try_start_d
    const-string v0, "session_id"

    .line 2142
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object/from16 v35, v0

    .line 2145
    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    if-eqz v0, :cond_9

    .line 2146
    :try_start_e
    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v36, v0

    goto :goto_a

    :cond_9
    const/16 v36, 0x0

    .line 2151
    :goto_a
    :try_start_f
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const/16 v37, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x1

    move-object/from16 v32, v0

    move-object/from16 v38, v3

    invoke-static/range {v32 .. v40}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdBySessionId(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)J

    move-result-wide v22

    cmp-long v0, v22, v16

    if-lez v0, :cond_1a

    .line 2155
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2157
    sget-boolean v0, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    if-eqz v0, :cond_a

    .line 2158
    :try_start_10
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateItemMap()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_a
    move-object/from16 v5, v19

    .line 2162
    :try_start_11
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-eqz v0, :cond_b

    .line 2163
    :try_start_12
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_b
    const/4 v0, 0x1

    :goto_b
    const/4 v8, 0x1

    if-ne v0, v8, :cond_d

    .line 2168
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v4}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicationRCS(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v0, :cond_c

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    .line 2171
    :try_start_13
    invoke-direct {v1, v8, v10, v4, v7}, Lcom/android/providers/telephony/backup/MessageBnR;->updateRcsInfoIfNeed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object/from16 v23, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    goto/16 :goto_7

    :cond_c
    move-object/from16 v7, v30

    move-object/from16 v8, v31

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v23, v5

    goto/16 :goto_7

    :cond_d
    move-object/from16 v7, v30

    move-object/from16 v8, v31

    .line 2174
    :try_start_14
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->isDuplication(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 2178
    :goto_c
    sget-boolean v23, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    if-eqz v23, :cond_11

    if-nez v0, :cond_11

    move/from16 v23, v0

    :try_start_15
    const-string v0, "im"

    .line 2180
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2181
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "restoreTable(): date is null, skip checking duplication"

    .line 2183
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2185
    :cond_e
    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->createSMSItemByChat(Landroid/content/ContentValues;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    move-result-object v6

    .line 2186
    invoke-static {v8, v6}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2189
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object v0

    .line 2190
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->removeDuplicateMsginHashMap(Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;)V

    :cond_f
    move v0, v6

    goto :goto_e

    .line 2193
    :cond_10
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "imdn_message_id"

    .line 2195
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    invoke-static {v8, v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateFTWithMMSItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    goto :goto_e

    :cond_11
    move/from16 v23, v0

    :cond_12
    :goto_d
    move/from16 v0, v23

    :goto_e
    if-eqz v0, :cond_15

    if-eqz v11, :cond_14

    .line 2202
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    .line 2203
    invoke-virtual {v11, v0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_f

    :cond_13
    const/4 v0, 0x7

    .line 2205
    invoke-virtual {v11, v0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_14
    :goto_f
    move-object/from16 v24, v3

    move-object/from16 v23, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v7, v27

    goto/16 :goto_16

    :cond_15
    :try_start_16
    const-string v0, "body"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move-object/from16 v23, v5

    .line 2211
    :try_start_17
    invoke-virtual {v8, v10, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v0, v5, v16

    if-lez v0, :cond_19

    .line 2214
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "thumbnail_path"

    .line 2215
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v3

    const-string v3, "file_path"

    .line 2216
    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-nez v4, :cond_16

    .line 2219
    :try_start_18
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2220
    new-instance v0, Ljava/io/File;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move-object/from16 v30, v7

    :try_start_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    move-object/from16 v31, v8

    move-object/from16 v8, v28

    :try_start_1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move-object/from16 v28, v8

    :try_start_1b
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2220
    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_12

    :catchall_5
    move-exception v0

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v28, v8

    goto :goto_11

    :catchall_7
    move-exception v0

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object/from16 v30, v7

    :goto_10
    move-object/from16 v31, v8

    :goto_11
    move-object v3, v0

    goto/16 :goto_7

    :cond_16
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    .line 2223
    :goto_12
    :try_start_1c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2225
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    move-object/from16 v7, v27

    :try_start_1d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2225
    invoke-static {v3, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_13

    :catchall_9
    move-exception v0

    goto/16 :goto_18

    :cond_17
    move-object/from16 v24, v3

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    :cond_18
    move-object/from16 v7, v27

    .line 2230
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " insert "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_19
    move-object/from16 v24, v3

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v7, v27

    goto :goto_15

    :catchall_a
    move-exception v0

    goto :goto_14

    :catchall_b
    move-exception v0

    move-object/from16 v23, v5

    :goto_14
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    goto :goto_18

    :catchall_c
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_18

    :cond_1a
    move-object/from16 v24, v3

    move-object/from16 v23, v19

    move-object/from16 v7, v27

    const-string v0, "fail : create thread_id"

    .line 2233
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    if-eqz v11, :cond_1c

    .line 2237
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x8

    .line 2238
    invoke-virtual {v11, v0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_16

    :cond_1b
    const/4 v0, 0x7

    .line 2240
    invoke-virtual {v11, v0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V

    :cond_1c
    :goto_16
    move-object/from16 v3, v24

    .line 2243
    :goto_17
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    if-nez v0, :cond_1e

    if-eqz v2, :cond_1d

    .line 2244
    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 2248
    :cond_1d
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    move/from16 v0, v20

    move-object/from16 v2, v26

    goto/16 :goto_21

    :cond_1e
    move-object/from16 v27, v7

    move-object/from16 v29, v9

    move-object/from16 v19, v23

    goto/16 :goto_3

    :catchall_d
    move-exception v0

    goto :goto_19

    :catchall_e
    move-exception v0

    move-object/from16 v23, v19

    :goto_18
    move-object/from16 v7, v27

    goto :goto_19

    :catchall_f
    move-exception v0

    move-object/from16 v23, v19

    move-object/from16 v7, v27

    move-object/from16 v9, v29

    :goto_19
    move-object v3, v0

    :goto_1a
    if-eqz v2, :cond_1f

    .line 2103
    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    goto :goto_1b

    :catchall_10
    move-exception v0

    move-object v2, v0

    :try_start_20
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1b
    throw v3

    :cond_20
    :goto_1c
    move-object/from16 v23, v19

    move-object/from16 v7, v27

    move-object/from16 v9, v29

    if-eqz v2, :cond_21

    .line 2244
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    goto :goto_1d

    :catch_2
    move-exception v0

    goto :goto_1f

    .line 2248
    :cond_21
    :goto_1d
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    :goto_1e
    move/from16 v0, v20

    goto :goto_22

    :catch_3
    move-exception v0

    move-object/from16 v23, v19

    move-object/from16 v7, v27

    move-object/from16 v9, v29

    :goto_1f
    move-object/from16 v2, v26

    goto :goto_20

    :catchall_11
    move-exception v0

    goto :goto_23

    :catch_4
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v28, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v23, v12

    const/16 v18, 0x0

    move-object v7, v4

    move-object v12, v9

    move-object v9, v6

    .line 2245
    :goto_20
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 2248
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    move/from16 v0, v18

    :goto_21
    if-nez v0, :cond_22

    :goto_22
    return v0

    :cond_22
    move-object v4, v7

    move-object v6, v9

    move-object v9, v12

    move-object/from16 v12, v23

    move-object/from16 v5, v28

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    goto/16 :goto_2

    :goto_23
    iget-object v1, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 2249
    throw v0
.end method

.method private static restoreTempDatabase(Lcom/android/providers/telephony/backup/MessageBnR;Z)V
    .locals 13

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restoreTempDatabase(): Start restoring temp database"

    .line 2504
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2508
    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->setInternalRestore(Z)V

    .line 2512
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/data/data/com.android.providers.telephony/"

    goto :goto_0

    :cond_1
    const-string v2, "/data/user_de/0/com.android.providers.telephony/"

    .line 2515
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "database_temp/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mmssms.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2519
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v3, :cond_2

    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "restoreTempDatabase(): temp database open failed!"

    .line 2522
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez v5, :cond_3

    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "restoreTempDatabase(): Initialize database failed!"

    .line 2526
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2530
    :cond_3
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v6

    sput-boolean v6, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v6, :cond_4

    .line 2532
    sget-boolean v7, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableSmsServerTime:Z

    invoke-static {v7, v6}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initDuplicateChecker(ZZ)V

    .line 2535
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreTempDatabase():, mEnableCarrierServerSync="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableCarrierServerSync:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mEnableSmsServerTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/providers/telephony/backup/MessageBnR;->mEnableSmsServerTime:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TP/MessageBnRReceiver"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/user_de/0/com.android.providers.telephony/restore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "RCS_FT_ATTACHMENTS_INFO_INTERNAL.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/data/user_de/0/com.android.providers.telephony/app_parts"

    const-string v8, "/data/user_de/0/com.android.providers.telephony/app_ft_files"

    const/4 v9, 0x0

    .line 2545
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initThreadIdHasDeletedMsg()V

    .line 2546
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initGroupIdMap()V

    .line 2547
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/MessageBnR;->initSmsIdMap()V

    .line 2549
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "TP/MessageBnRReceiver"

    const-string v11, "restoreTempDatabse(): updateFtFile start"

    .line 2551
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "/data/user_de/0/com.android.providers.telephony/restore"

    .line 2553
    invoke-static {v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getFtFileInfoList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 2552
    invoke-direct {p0, v10, v7, v6}, Lcom/android/providers/telephony/backup/MessageBnR;->updateFtFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "TP/MessageBnRReceiver"

    const-string v10, "restoreTempDatabse(): updateFtFile end"

    .line 2554
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v6, "TP/MessageBnRReceiver"

    const-string v10, "restoreTempDatabase(): insertOriginalMessages start"

    .line 2556
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-direct {p0, v3, v5, v4}, Lcom/android/providers/telephony/backup/MessageBnR;->insertOriginalMessages(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)Z

    const-string v6, "TP/MessageBnRReceiver"

    const-string v10, "restoreTempDatabase(): insertOriginalMessages end"

    .line 2558
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "TP/MessageBnRReceiver"

    const-string v10, "restoreTempDatabase(): updateFilesDirectory start"

    .line 2560
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    invoke-static {v0, v5, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateFilesDirectories(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string v6, "TP/MessageBnRReceiver"

    const-string v10, "restoreTempDatabase(): updateFilesDirectory end"

    .line 2562
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v6, "parts"

    .line 2565
    invoke-virtual {v0, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    const-string v6, "ft_files"

    .line 2566
    invoke-virtual {v0, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    const-string v10, "TP/MessageBnRReceiver"

    .line 2568
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDirPath e : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2573
    :goto_1
    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 2574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_tmp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 2575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_3
    const-string v10, "TP/MessageBnRReceiver"

    .line 2571
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreTempDatabase e : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2573
    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 2574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_tmp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 2575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_tmp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const-string v2, "TP/MessageBnRReceiver"

    const-string v6, "restoreTempDatabase(): updateChangedThread start"

    .line 2577
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-direct {p0, v5, v4}, Lcom/android/providers/telephony/backup/MessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)V

    const-string p0, "TP/MessageBnRReceiver"

    const-string v2, "restoreTempDatabase(): updateChangedThread end"

    .line 2579
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 2582
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2588
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearAllItemsMap()V

    if-eqz p1, :cond_6

    .line 2590
    invoke-static {v9}, Lcom/android/providers/telephony/backup/BnRUtils;->setInternalRestore(Z)V

    :cond_6
    const-string p0, "db_replacing"

    .line 2592
    invoke-static {v0, p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "restoreTempDatabase(): Restore temp database finished"

    .line 2593
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    sget-object p1, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 2595
    :try_start_4
    sput-object v4, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    .line 2596
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 2573
    :goto_3
    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 2574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 2575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const-string v1, "TP/MessageBnRReceiver"

    const-string v2, "restoreTempDatabase(): updateChangedThread start"

    .line 2577
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-direct {p0, v5, v4}, Lcom/android/providers/telephony/backup/MessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)V

    const-string p0, "TP/MessageBnRReceiver"

    const-string v1, "restoreTempDatabase(): updateChangedThread end"

    .line 2579
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 2582
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2586
    throw p1
.end method

.method private restoreThreadImTableInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27

    move-object/from16 v0, p0

    .line 2297
    iget-object v0, v0, Lcom/android/providers/telephony/backup/MessageBnR;->mImThreadTableInfo:Ljava/util/HashMap;

    const-string v1, "TP/MessageBnRReceiver"

    if-nez v0, :cond_0

    const-string v0, "restoreThreadImTableInfo mImThreadTableInfo is null"

    .line 2298
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2305
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2306
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 2308
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "im"

    invoke-static {v7, v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdOnlyBackupMap(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_1

    goto :goto_0

    .line 2314
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    .line 2315
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getImType()I

    move-result v7

    .line 2316
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadMute()I

    move-result v8

    .line 2317
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadPinToTop()I

    move-result v9

    .line 2318
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getOpened()I

    move-result v10

    .line 2319
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getConversationType()I

    move-result v11

    .line 2320
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 2321
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/content/ContentValues;

    const-string v14, "session_id"

    .line 2322
    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "im_conversation_id"

    move-object/from16 v16, v0

    .line 2323
    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v1

    const-string v1, "im_contribution_id"

    move/from16 v18, v3

    .line 2324
    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v19, v5

    const-string v5, "session_uri"

    .line 2325
    invoke-virtual {v13, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    .line 2327
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v22, v3

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v23, v6

    .line 2328
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ContentValues;

    .line 2329
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    .line 2330
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2331
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2332
    invoke-virtual {v13, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2334
    invoke-virtual {v4}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    .line 2336
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2337
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v26, v13

    const-string v13, "im_type"

    invoke-virtual {v4, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2338
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "conversation_type"

    invoke-virtual {v4, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez v10, :cond_2

    .line 2341
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "opened"

    invoke-virtual {v4, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    if-lez v8, :cond_3

    .line 2344
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "is_mute"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const/4 v7, -0x1

    if-eq v9, v7, :cond_4

    .line 2347
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "pin_to_top"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2349
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2350
    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sim_imsi"

    .line 2351
    invoke-virtual {v4, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2353
    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    .line 2354
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    .line 2355
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :cond_5
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "session_id2"

    move-object/from16 v1, v24

    .line 2359
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sim_imsi2"

    move-object/from16 v1, v23

    .line 2360
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "im_conversation_id2"

    .line 2362
    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "im_contribution_id2"

    .line 2363
    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_uri2"

    move-object/from16 v1, v26

    .line 2364
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    :cond_6
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "alias"

    move-object/from16 v1, v25

    .line 2368
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normal_thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "im_threads"

    move-object/from16 v3, p1

    .line 2372
    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int v0, v18, v0

    move v3, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v1

    move/from16 v18, v3

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreThreadImTableInfo cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreThreadTableInfo(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 11

    .line 2257
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadTableInfo()Ljava/util/HashMap;

    move-result-object p0

    .line 2261
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2263
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "xms"

    invoke-static {v6, v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdOnlyBackupMap(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    goto :goto_0

    .line 2269
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;

    .line 2270
    invoke-virtual {v3}, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->getThreadMute()I

    move-result v6

    .line 2271
    invoke-virtual {v3}, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->getThreadPinToTop()I

    move-result v7

    .line 2272
    invoke-virtual {v3}, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->getClassification()I

    move-result v3

    const/4 v8, -0x1

    if-gtz v6, :cond_2

    if-eq v7, v8, :cond_0

    .line 2275
    :cond_2
    new-instance v9, Landroid/content/ContentValues;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    const-string v10, "is_mute"

    if-lez v6, :cond_3

    .line 2278
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2280
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    const-string v6, "pin_to_top"

    if-eq v7, v8, :cond_4

    .line 2283
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 2285
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2287
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "classification"

    invoke-virtual {v9, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "threads"

    .line 2290
    invoke-virtual {p1, v5, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_5
    return v2
.end method

.method private restoreWpmMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12

    const-string v0, "thread_id"

    const-string v1, "TP/MessageBnRReceiver"

    const-string v2, "restoreWpmMessage()"

    .line 1838
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v5, "wpm"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    .line 1841
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_7

    .line 1842
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_0

    goto/16 :goto_2

    .line 1854
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1856
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "restoreWpmMessage(): thread_id is null"

    .line 1858
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "using_mode"

    .line 1861
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1863
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1865
    :cond_2
    iget-object v7, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7, v8, v9, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdByBackupThreadId(Landroid/content/Context;JI)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 1868
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "wpm"

    const-string v6, "body"

    .line 1869
    invoke-virtual {p2, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v6, v4, v7

    if-lez v6, :cond_4

    .line 1872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " succeeded"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "fail : create thread_id"

    .line 1875
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    if-eqz p1, :cond_5

    .line 1878
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move v2, v3

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_6

    .line 1841
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p0

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 1878
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    return v3

    :catch_0
    move-exception p0

    .line 1879
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v2
.end method

.method private saveDeleteAllMessageThreadId()V
    .locals 8

    .line 795
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT thread_id FROM wpm"

    const/4 v2, 0x0

    .line 797
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 798
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 800
    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 801
    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    .line 797
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0

    :cond_2
    if-eqz v1, :cond_3

    .line 804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v1, "SELECT thread_id FROM im WHERE hidden = 1"

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    .line 807
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 808
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 809
    iget-object v6, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 810
    iget-object v6, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_5

    .line 806
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p0

    :cond_6
    if-eqz v1, :cond_7

    .line 813
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v1, "SELECT thread_id FROM ft WHERE hidden = 1"

    .line 815
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_8
    :goto_4
    if-eqz v0, :cond_a

    .line 816
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 817
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 818
    iget-object v4, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 819
    iget-object v4, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_9

    .line 815
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw p0

    :cond_a
    if-eqz v0, :cond_b

    .line 822
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method

.method private saveOutOfDateThreadId(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "thread_id"

    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore.. saveOutOfDateThreadId from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TP/MessageBnRReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v4, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "000 OR date > "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "000"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR date > "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v15, 0x0

    :try_start_0
    const-string v8, "sms"

    .line 724
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v6, v4

    move-object/from16 v10, v16

    move-object/from16 p1, v2

    move v2, v15

    move-object v15, v0

    :try_start_1
    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_4

    .line 726
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 728
    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 729
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_3

    .line 724
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v7

    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 736
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 p1, v2

    move v2, v15

    .line 737
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveOutOfDateThreadId SMS Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :try_start_5
    const-string v8, "pdu"

    .line 741
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v4

    move-object/from16 v10, p1

    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v6, :cond_9

    .line 743
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 745
    :cond_6
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 746
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 747
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 748
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_8

    .line 741
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v7

    :cond_9
    :goto_5
    if-eqz v6, :cond_a

    .line 753
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveOutOfDateThreadId MMS Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    if-eqz p3, :cond_14

    const/4 v7, 0x1

    :try_start_9
    const-string v8, "im"

    .line 759
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v4

    move-object/from16 v10, v16

    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-eqz v6, :cond_e

    .line 761
    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 763
    :cond_b
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 764
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 765
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 766
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v0, :cond_b

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_d

    .line 759
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_c
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    throw v7

    :cond_e
    :goto_8
    if-eqz v6, :cond_f

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 772
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveOutOfDateThreadId IM Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    const/4 v7, 0x1

    :try_start_d
    const-string v8, "ft"

    .line 776
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v4

    move-object/from16 v10, v16

    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    if-eqz v3, :cond_13

    .line 778
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 780
    :cond_10
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 781
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 782
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 783
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_11
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-nez v0, :cond_10

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_12

    .line 776
    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_a
    throw v1

    :cond_13
    :goto_b
    if-eqz v3, :cond_14

    .line 788
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveOutOfDateThreadId FT Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_c
    return-void
.end method

.method private saveUnsupportTypeThreadId()V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "saveUnsupportTypeThreadId FT Exception = "

    const-string v3, "saveUnsupportTypeThreadId MMS Exception = "

    const-string v4, "thread_id"

    const-string v5, "TP/MessageBnRReceiver"

    .line 599
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    :try_start_0
    const-string v0, "SELECT DISTINCT thread_id from sms where (group_type IS NOT NULL AND group_type > 2)"

    const/4 v6, 0x0

    .line 602
    invoke-virtual {v15, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 605
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    .line 611
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_2

    .line 602
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveUnsupportTypeThreadId GroupSMS Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    const/4 v7, 0x1

    const/4 v14, 0x0

    :try_start_5
    const-string v8, "sms"

    .line 616
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "(type != 1 AND type != 2) OR address LIKE \'#CMAS#%\' OR address LIKE \'#Emergency Alert#%\'"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move-object v14, v0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    :try_start_6
    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 618
    :cond_4
    :goto_3
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_5

    const/4 v15, 0x0

    .line 619
    :try_start_8
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 620
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 622
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    if-eqz v6, :cond_7

    .line 626
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_7

    :catchall_3
    move-exception v0

    const/4 v15, 0x0

    :goto_4
    move-object v7, v0

    if-eqz v6, :cond_6

    .line 616
    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v15, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v18, v15

    move v15, v14

    .line 627
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveUnsupportTypeThreadId SMS Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_7
    const/4 v7, 0x1

    :try_start_c
    const-string v8, "pdu"

    .line 631
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "msg_box != 1 AND msg_box != 2 "
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object/from16 v6, v18

    move-object/from16 v16, v2

    move v2, v15

    move-object v15, v0

    :try_start_d
    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 632
    :cond_8
    :goto_8
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 633
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 634
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 635
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 636
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_8

    :cond_9
    if-eqz v6, :cond_b

    .line 640
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_a

    .line 631
    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_11
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_9
    throw v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    move v2, v15

    .line 641
    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_b
    const/4 v7, 0x1

    :try_start_12
    const-string v8, "pdu"

    .line 644
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "m_type = 130 OR m_type = 135"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, v18

    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 645
    :cond_c
    :goto_c
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 646
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 647
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 648
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 649
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_c

    :cond_d
    if-eqz v6, :cond_f

    .line 653
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_e

    .line 644
    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v6, v0

    :try_start_16
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_d
    throw v7
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    :catch_6
    move-exception v0

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_e
    const-string v0, "(type != 1 AND type != 2)"

    const-string v3, "im"

    const-string v15, "from_address"

    move-object/from16 v14, v18

    .line 658
    invoke-static {v14, v3, v15}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v13, " OR (from_address IS NOT NULL AND from_address != \'\')"

    if-eqz v3, :cond_10

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object v10, v0

    const/4 v7, 0x1

    :try_start_17
    const-string v8, "im"

    .line 663
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object v6, v14

    move-object/from16 v19, v13

    move-object v13, v0

    move-object/from16 v20, v14

    move-object v14, v3

    move-object v3, v15

    move-object/from16 v15, v17

    :try_start_18
    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7

    .line 664
    :cond_11
    :goto_f
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 665
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 666
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 667
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 668
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_f

    :cond_12
    if-eqz v6, :cond_14

    .line 672
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_13

    .line 663
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object v6, v0

    :try_start_1c
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_10
    throw v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object v3, v15

    .line 673
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveUnsupportTypeThreadId IM Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_12
    const-string v0, "NOT ((status = 3 OR status = 10) OR (type = 2 AND status = 5 AND reserved = 1))"

    const-string v6, "ft"

    move-object/from16 v15, v20

    .line 677
    invoke-static {v15, v6, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    move-object v10, v0

    const/4 v7, 0x1

    :try_start_1d
    const-string v8, "ft"

    .line 682
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v6, v15

    move-object v3, v15

    move-object v15, v0

    :try_start_1e
    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    .line 683
    :cond_16
    :goto_13
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 684
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 685
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 686
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 687
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    goto :goto_13

    :cond_17
    if-eqz v6, :cond_18

    .line 691
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    :cond_18
    move-object/from16 v15, v16

    goto :goto_16

    :catchall_b
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_19

    .line 682
    :try_start_21
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    goto :goto_14

    :catchall_c
    move-exception v0

    move-object v6, v0

    :try_start_22
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_14
    throw v7
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    :catch_9
    move-exception v0

    goto :goto_15

    :catch_a
    move-exception v0

    move-object v3, v15

    .line 692
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v16

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const/4 v7, 0x1

    :try_start_23
    const-string v8, "ft"

    .line 696
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "(type = 2 AND status = 5 AND reserved = 1) AND file_path not like \'%/Android/data/com.samsung.android.messaging%\'"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v6, v3

    move-object v3, v15

    move-object v15, v0

    :try_start_24
    invoke-virtual/range {v6 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b

    .line 698
    :cond_1a
    :goto_17
    :try_start_25
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 699
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 700
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    .line 701
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 702
    iget-object v0, v1, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    goto :goto_17

    :cond_1b
    if-eqz v4, :cond_1d

    .line 706
    :try_start_26
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_b

    goto :goto_1a

    :catchall_d
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_1c

    .line 696
    :try_start_27
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    goto :goto_18

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_28
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_18
    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_b

    :catch_b
    move-exception v0

    goto :goto_19

    :catch_c
    move-exception v0

    move-object v3, v15

    .line 707
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1a
    return-void
.end method

.method private static sendRestoreProgress(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRestoreProgress(): progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/MessageBnRReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    .line 2601
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PROGRESS_RESTORE_MESSAGE_DB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESTORE_SIZE"

    .line 2604
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2606
    invoke-static {v0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->setIntentPackageBySource(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    .line 2607
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static setIntentPackageBySource(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOURCE"

    .line 2611
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Kies"

    .line 2612
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.wssnps"

    .line 2613
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "SmartSwitch"

    .line 2614
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.sec.android.easyMover"

    .line 2615
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;)V
    .locals 7

    const-string v0, "TP/MessageBnRReceiver"

    .line 2380
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    iget-object v2, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2385
    iget-object v2, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateChangedThread updateChangedThread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mThreadIdHasDeletedMsg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mUpdateSessionThreadList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 2390
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mUpdateSessionThreadList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    .line 2391
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2392
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2397
    :cond_2
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdByBackupThreadIdMap()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2399
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_3

    .line 2400
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2401
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 2408
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->beginThreadUpdate(I)V

    .line 2411
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2412
    invoke-static {p1, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)I

    if-eqz p2, :cond_6

    const/16 v1, 0x9

    .line 2414
    invoke-virtual {p2, v1}, Lcom/android/providers/telephony/backup/MessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 2418
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateChangedThread = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    return-void

    .line 2421
    :goto_3
    throw p0
.end method

.method private updateFtFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore, updateFtFilePath"

    .line 976
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 977
    invoke-static {p2, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    .line 979
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 980
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 981
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;

    .line 982
    iget-object v4, v3, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 983
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 985
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mRelativePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 987
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 988
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 989
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 990
    invoke-static {v7}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 992
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to copy FT files id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 996
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 997
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    .line 999
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1000
    invoke-static {v7}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    .line 1003
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v5, "file_name"

    .line 1004
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v4, v3, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file_path"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "ft"

    .line 1007
    invoke-virtual {p0, v5, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 1009
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateFtFilePath affectRow = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateFtInfoIfNeed(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    .line 1937
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1938
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1941
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1942
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "type"

    .line 1945
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1946
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v4, "imdn_message_id"

    .line 1948
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1950
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 1951
    invoke-direct {p0, v5, p2, v3, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->fillFileInfoValues(Landroid/util/Pair;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/util/HashMap;)Z

    move-result p3

    .line 1954
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1955
    invoke-direct {p0, p2, v3}, Lcom/android/providers/telephony/backup/MessageBnR;->fillSessionInfoValues(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 1959
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x1

    aput-object v4, p2, v0

    const-string v0, "ft"

    const-string v2, "type=? AND imdn_message_id=?"

    .line 1960
    invoke-virtual {p1, v0, v3, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 1963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update Ft status="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " file="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " session="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/MessageBnRReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateImInfoIfNeed(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 6

    const-string p0, "session_id"

    .line 2025
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_id"

    .line 2026
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2029
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->getImSessionIdThreadIdMap()Ljava/util/Map;

    move-result-object v3

    .line 2030
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2033
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2034
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2035
    invoke-virtual {v3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "rcsdb_id"

    .line 2038
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2040
    invoke-virtual {v3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "type"

    .line 2044
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2045
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v5

    :goto_0
    const-string v0, "imdn_message_id"

    .line 2047
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2051
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v5

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const-string p0, "im"

    const-string p2, "type=? AND imdn_message_id=?"

    .line 2052
    invoke-virtual {p1, p0, v3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    :cond_2
    if-lez v5, :cond_3

    const-string p0, "TP/MessageBnRReceiver"

    const-string p1, "update im sessionId"

    .line 2056
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateRcsInfoIfNeed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "im"

    .line 2062
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2063
    invoke-direct {p0, p1, p3}, Lcom/android/providers/telephony/backup/MessageBnR;->updateImInfoIfNeed(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_0
    const-string v0, "ft"

    .line 2064
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2065
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/telephony/backup/MessageBnR;->updateFtInfoIfNeed(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateReservationMessage()I
    .locals 7

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "restore.. updateReservationMessage"

    .line 1014
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object p0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND reserved > 0"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v4, 0x0

    .line 1023
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "reserved"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sms"

    const/4 v5, 0x0

    .line 1026
    invoke-virtual {p0, v4, v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v6, "pdu"

    .line 1028
    invoke-virtual {p0, v6, v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v4, v1

    const/4 v1, 0x3

    .line 1031
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "status"

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "im"

    .line 1032
    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v4, v1

    const-string v1, "ft"

    .line 1033
    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v4, p0

    .line 1035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateReservationMessage affectedRow : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 109
    sget-object v8, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupSyncObject:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 111
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->initialize(Landroid/content/Context;)V

    .line 113
    iget-object v3, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/providers/telephony/backup/BnRDocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mDocumentUris:Ljava/util/List;

    .line 114
    iget-object v4, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    const-string v5, "SAVE_PATH"

    .line 115
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v4, v3, v5, v1}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getBnrFilePath(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SESSION_KEY"

    .line 116
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SOURCE"

    .line 117
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "EXPORT_SESSION_TIME"

    .line 118
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "ACTION"

    const/4 v9, 0x0

    .line 119
    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v10, "SECURITY_LEVEL"

    .line 120
    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "com.samsung.android.intent.action.REQUEST_BACKUP_MESSAGE_DB"

    .line 122
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_3

    if-nez v5, :cond_1

    .line 124
    monitor-enter v8

    .line 125
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "onReceive(): Another backup thread is running, skip"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    .line 127
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 128
    monitor-exit v8

    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/android/providers/telephony/backup/MessageBnR$1;

    move-object v1, v9

    move-object v2, p0

    move-object v5, v6

    move v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR$1;-><init>(Lcom/android/providers/telephony/backup/MessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "backup"

    invoke-direct {v0, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    monitor-exit v8

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ne v5, v12, :cond_6

    .line 139
    monitor-enter v8

    .line 140
    :try_start_1
    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 142
    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sBackupThread:Ljava/lang/Thread;

    .line 144
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 144
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    const-string v8, "com.samsung.android.intent.action.REQUEST_RESTORE_MESSAGE_DB"

    .line 150
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v5, :cond_6

    .line 151
    invoke-static {p0, v9}, Lcom/android/providers/telephony/backup/MessageBnR;->checkTempDatabase(Lcom/android/providers/telephony/backup/MessageBnR;Z)I

    move-result v1

    if-eq v1, v12, :cond_4

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    .line 153
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v1, ""

    .line 157
    iput-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreFrom:Ljava/lang/String;

    const-string v1, ""

    .line 158
    iput-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreTo:Ljava/lang/String;

    :try_start_3
    const-string v1, "MSG_PERIOD"

    .line 167
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreFrom:Ljava/lang/String;

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mRestoreTo:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_PERIOD Exception e = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/MessageBnRReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    sget-object v8, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreSyncObject:Ljava/lang/Object;

    monitor-enter v8

    .line 175
    :try_start_4
    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "TP/MessageBnRReceiver"

    const-string v1, "onReceive(): Another restoring thread is running, skip"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    .line 177
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 178
    monitor-exit v8

    return-void

    .line 181
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/android/providers/telephony/backup/MessageBnR$2;

    move-object v1, v9

    move-object v2, p0

    move-object v5, v6

    move v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR$2;-><init>(Lcom/android/providers/telephony/backup/MessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "restore"

    invoke-direct {v0, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->sRestoreThread:Ljava/lang/Thread;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    monitor-exit v8

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method public permissionCheck()Z
    .locals 6

    .line 82
    sget-object v0, Lcom/android/providers/telephony/backup/MessageBnR;->permissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 83
    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
