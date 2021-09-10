.class public Lcom/android/providers/telephony/backup/FreeMessageBnR;
.super Landroid/content/BroadcastReceiver;
.source "FreeMessageBnR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;
    }
.end annotation


# static fields
.field private static mEnableCarrierServerSync:Z = false

.field private static final permissions:[Ljava/lang/String;


# instance fields
.field private mBackupThread:Ljava/lang/Thread;

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

.field private mExistImThreadTableInfo:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFtFileInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;",
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

.field private mIsOnlyRCS:Z

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

.field private mRestoreFrom:Ljava/lang/String;

.field private mRestoreThread:Ljava/lang/Thread;

.field private mRestoreTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 66
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreFrom:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreTo:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mIsOnlyRCS:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mDocumentUris:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->sendRestoreProgress(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private backup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p4

    const-string v3, "TP/FreeMessageBnR"

    .line 145
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getBackupStart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file_parsing"

    const-string v6, "RCS"

    .line 144
    invoke-static {v5, v6, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v4, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 153
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->isPermissionsDenied()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 158
    :cond_1
    iget-object v4, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    const-string v9, "mmssms.db"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/user_de/0/com.android.providers.telephony/databases"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "RcsMessage"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "RcsFtFiles"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 163
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "RCS_FT_ATTACHMENTS_INFO_INTERNAL.json"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 165
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "RcsMessage.zip"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 166
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "RcsMessage.edb"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "RcsFtFiles.zip"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 168
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RcsFtFiles.edb"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/data/com.android.providers.telephony/databases"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_3

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_3
    :try_start_1
    invoke-static {v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_8

    .line 184
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "app_ft_files"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "app_parts"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    new-instance v12, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v5

    :try_start_3
    iget-object v5, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v6

    :try_start_4
    const-string v6, "ft_files"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 190
    iget-object v6, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v6, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->getFtOriginalFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    .line 192
    :try_start_6
    array-length v12, v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v12, :cond_4

    const/4 v12, 0x1

    .line 193
    :try_start_7
    invoke-static {v4, v12}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    move-result v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_4

    .line 194
    :try_start_8
    array-length v12, v5

    move v13, v3

    :goto_2
    if-ge v13, v12, :cond_4

    aget-object v15, v5, v13

    .line 195
    new-instance v3, Ljava/io/File;

    move-object/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {v15, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    move v3, v12

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v2, v18

    goto/16 :goto_7

    .line 200
    :cond_4
    :try_start_9
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v3, :cond_5

    const/4 v3, 0x1

    .line 201
    :try_start_a
    invoke-static {v9, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 202
    invoke-virtual {v6}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$tF6otOHBNbz16buCHQd4Fx91mJU;

    invoke-direct {v5, v9}, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$tF6otOHBNbz16buCHQd4Fx91mJU;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    .line 208
    :cond_6
    :goto_3
    invoke-static {v10, v14}, Lcom/android/providers/telephony/backup/BnRUtils;->messageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    invoke-static {v10}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 210
    invoke-static {v11, v7}, Lcom/android/providers/telephony/backup/BnRUtils;->messageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    invoke-static {v11}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 213
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/backup/BnRUtils;->streamCrypt(Ljava/lang/String;)V

    .line 214
    invoke-static {v14, v8, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 215
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 216
    invoke-static {v7, v2, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 217
    invoke-static {v7}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v5, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mDocumentUris:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 223
    iget-object v5, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mDocumentUris:Ljava/util/List;

    invoke-static {v5, v0, v6}, Lcom/android/providers/telephony/backup/BnRFileUtil;->copyFileToDirUri(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)V

    .line 224
    iget-object v5, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mDocumentUris:Ljava/util/List;

    invoke-static {v5, v4, v6}, Lcom/android/providers/telephony/backup/BnRFileUtil;->copyFileToDirUri(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)V

    .line 226
    :cond_7
    invoke-static {v8}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 227
    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-long/2addr v5, v2

    long-to-int v0, v5

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    move v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v16, v5

    :goto_4
    move-object/from16 v17, v6

    :goto_5
    const/4 v3, 0x1

    :goto_6
    move-object/from16 v2, v18

    goto :goto_8

    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const/4 v3, 0x1

    :try_start_b
    const-string v0, "FreeMessageBnR semBackupDatabaseFile fail"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v2, v18

    .line 180
    :try_start_c
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "semBackupDatabaseFile fail error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_7
    const/4 v3, 0x1

    .line 233
    :goto_8
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    move v4, v3

    goto/16 :goto_1

    .line 243
    :goto_9
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getAllBackupFinished()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v16

    move-object/from16 v2, v17

    .line 242
    invoke-static {v6, v2, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    .line 244
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 238
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 239
    throw v0
.end method

.method private filterAvailableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    .line 793
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "TP/FreeMessageBnR"

    if-nez p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 798
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 800
    invoke-static {p1, p2, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 801
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 805
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 807
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filterAvailableColumns(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " columns filtered=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-static {p2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_2
    const-string p0, "filterAvailableColumns(): nothing to filter"

    .line 794
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUnWantedValue(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 6

    const-string v0, "im"

    .line 753
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Jansky virtual line message"

    const-string v2, "from_address"

    const-string v3, "hidden"

    const-string v4, "TP/FreeMessageBnR"

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    const-string p0, "type"

    .line 754
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 755
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 760
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, "Hidden chat"

    .line 761
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 764
    :cond_1
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 765
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 766
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string p0, "content_type"

    .line 769
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 770
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "application/vnd.sec.card"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Remitment message"

    .line 771
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 756
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    const-string v0, "ft"

    .line 774
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 775
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->isSupportedFtStatus(Landroid/content/ContentValues;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->isSupportedReserveFt(Landroid/content/ContentValues;)Z

    move-result p0

    if-nez p0, :cond_5

    return v5

    .line 778
    :cond_5
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 779
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_6

    const-string p0, "Hidden ft"

    .line 780
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 783
    :cond_6
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 784
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 785
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedFtStatus(Landroid/content/ContentValues;)Z
    .locals 1

    const-string p0, "status"

    .line 487
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 490
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 495
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allowed status="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/FreeMessageBnR"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedReserveFt(Landroid/content/ContentValues;)Z
    .locals 2

    const-string p0, "status"

    .line 468
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 470
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "type"

    .line 471
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "reserved"

    .line 472
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "file_path"

    .line 477
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "/Android/data/com.samsung.android.messaging"

    .line 478
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$backup$3(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method static synthetic lambda$isPermissionsDenied$0(Ljava/lang/Integer;)Z
    .locals 0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onReceive$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->backup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceive$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    .line 133
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->restore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method static synthetic lambda$restoreTable$4(Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;)Ljava/lang/String;
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mRelativePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$updateFtFilePath$5(Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method private response(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response() - result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/FreeMessageBnR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 832
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_MESSAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_MESSAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "RESULT"

    .line 838
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "ERR_CODE"

    .line 839
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "REQ_SIZE"

    .line 840
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SOURCE"

    .line 841
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXPORT_SESSION_TIME"

    .line 842
    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Kies"

    .line 844
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com.wssnps"

    .line 845
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p2, "SmartSwitch"

    .line 846
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "com.sec.android.easyMover"

    .line 847
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    const-string p2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private restore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p4

    const/4 v9, 0x0

    .line 250
    invoke-static {v9}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "file_parsing"

    const-string v11, "RCS"

    .line 249
    invoke-static {v10, v11, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v4, v0

    move v3, v13

    goto/16 :goto_4

    .line 258
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->isPermissionsDenied()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mDocumentUris:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 263
    iget-object v2, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v8}, Lcom/android/providers/telephony/backup/BnRFileUtil;->moveUrisToDir(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 266
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RcsMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RcsFtFiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "RcsMessage.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RcsMessage.edb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "RcsFtFiles.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "RcsFtFiles.edb"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "RCS_FT_ATTACHMENTS_INFO_INTERNAL.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 275
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mPinToTopThreads:Ljava/util/List;

    .line 276
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v15

    sput-boolean v15, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mEnableCarrierServerSync:Z

    .line 277
    invoke-static {v15}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initDuplicateChecker(Z)V

    .line 279
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 280
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initImSessionIdThreadIdMap()V

    .line 281
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initFtSessionIdThreadIdMap()V

    :cond_3
    const/4 v15, 0x2

    new-array v9, v15, [Ljava/lang/String;

    aput-object v4, v9, v12

    aput-object v6, v9, v13

    .line 286
    invoke-static {v9}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getTotalFileSize([Ljava/lang/String;)J

    move-result-wide v19

    .line 289
    new-instance v9, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;

    iget-object v15, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, p3

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    invoke-direct/range {v16 .. v23}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;-><init>(Landroid/content/Context;Ljava/lang/String;JIII)V

    .line 291
    invoke-virtual {v9, v12}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->sendProgressIntent(I)V

    .line 294
    :try_start_0
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils;->getFtFileInfoList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mFtFileInfoList:Ljava/util/HashMap;

    .line 295
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 297
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/backup/BnRUtils;->streamCrypt(Ljava/lang/String;)V

    .line 298
    invoke-static {v4, v3, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 299
    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 300
    invoke-static {v6, v5, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 301
    invoke-static {v6}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v9, v12}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 304
    invoke-static {v3, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->extract(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 306
    invoke-static {v5, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->extract(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v5}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v9, v13}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mmssms.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :try_start_1
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->initTheadIdByBackupThreadIdMap()V

    .line 314
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    .line 315
    invoke-static {v14}, Lcom/android/providers/telephony/backup/BnRUtils;->getImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mImThreadTableInfo:Ljava/util/HashMap;

    .line 316
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->getExistThreadImTableInfo(Landroid/content/Context;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mExistImThreadTableInfo:Landroid/util/LongSparseArray;

    .line 317
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->getRcsImSession(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRcsImSession:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 318
    invoke-virtual {v9, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 320
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    sget-boolean v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v1, :cond_4

    .line 324
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateItemMap()V

    const/4 v1, 0x0

    .line 325
    invoke-static {v0, v1, v13}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingSMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 327
    :cond_4
    invoke-static {v0, v13}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChatItems(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string v3, "im"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v5, v9

    move-object/from16 v6, p3

    .line 328
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->restoreTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/lang/String;)V

    .line 330
    sget-boolean v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mEnableCarrierServerSync:Z

    if-eqz v1, :cond_5

    .line 331
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingMMSMIdItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 333
    :cond_5
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTItems(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v3, "ft"

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object v5, v9

    move-object/from16 v6, p3

    .line 334
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->restoreTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/lang/String;)V

    .line 336
    iget-object v1, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v13}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateFilesDirectories(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 338
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->getSessionIdThreadIdMap()Ljava/util/HashMap;

    move-result-object v0

    .line 341
    iget-object v1, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v12}, Lcom/android/providers/telephony/backup/BnRUtils;->updateImFtSessions(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 351
    :goto_1
    iget-object v1, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 352
    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    invoke-direct {v7, v1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updatePinToTopThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 355
    invoke-direct {v7, v1, v9, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/util/ArrayList;)V

    if-eqz v14, :cond_7

    .line 358
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 362
    invoke-virtual {v9, v1}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->sendProgressIntent(I)V

    .line 364
    iget-boolean v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mIsOnlyRCS:Z

    if-eqz v0, :cond_8

    .line 365
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_8
    move v3, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 347
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 351
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    invoke-direct {v7, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updatePinToTopThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v2, 0x0

    .line 355
    invoke-direct {v7, v0, v9, v2}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/util/ArrayList;)V

    if-eqz v1, :cond_9

    .line 358
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 362
    invoke-virtual {v9, v1}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->sendProgressIntent(I)V

    .line 364
    iget-boolean v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mIsOnlyRCS:Z

    if-eqz v0, :cond_a

    .line 365
    iget-object v0, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_a
    move v3, v13

    :goto_3
    move v4, v3

    .line 371
    :goto_4
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;->getRestoreFinished()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v10, v11, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    .line 372
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->response(IIIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    .line 351
    :goto_5
    iget-object v2, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 352
    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    invoke-direct {v7, v2}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updatePinToTopThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    .line 355
    invoke-direct {v7, v2, v9, v3}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/util/ArrayList;)V

    if-eqz v1, :cond_b

    .line 358
    iget-object v2, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 362
    invoke-virtual {v9, v1}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->sendProgressIntent(I)V

    .line 364
    iget-boolean v1, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mIsOnlyRCS:Z

    if-eqz v1, :cond_c

    .line 365
    iget-object v1, v7, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 367
    :cond_c
    throw v0
.end method

.method private restoreTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/lang/String;)V
    .locals 49

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v0, p5

    const-string v13, "thread_id"

    const-string v14, "im"

    const-string v15, "_id"

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreTable() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "TP/FreeMessageBnR"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ft"

    .line 506
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    .line 507
    :goto_0
    iget-object v1, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v1, "Kies"

    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "com.wssnps"

    goto :goto_1

    :cond_1
    const-string v1, "SmartSwitch"

    .line 513
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "com.sec.android.easyMover"

    :cond_2
    :goto_1
    move-object v2, v0

    .line 522
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v18, v7

    const/4 v7, 0x0

    if-eqz v16, :cond_3

    .line 523
    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    const-string v1, "parts"

    .line 524
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v1, "/data/user_de/0/com.android.providers.telephony/app_parts"

    .line 523
    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    const-string v5, "ft_files"

    .line 526
    invoke-virtual {v1, v5, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v5, "/data/user_de/0/com.android.providers.telephony/app_ft_files"

    .line 525
    invoke-static {v1, v5}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FT thumbnail files dir : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FT original files dir : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object/from16 v6, v17

    .line 531
    :goto_2
    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v22, 0x0

    if-nez v0, :cond_4

    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreTo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreFrom:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "000"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-object/from16 p5, v6

    move-object/from16 v24, v8

    move-object/from16 v26, v17

    move-wide/from16 v5, v19

    move/from16 v19, v7

    move/from16 v20, v19

    move-wide v7, v0

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 p5, v6

    move/from16 v19, v7

    move/from16 v20, v19

    move-object/from16 v24, v8

    move-object/from16 v26, v17

    move-wide/from16 v5, v22

    const/4 v0, 0x1

    const-wide v7, 0x7fffffffffffffffL

    .line 538
    :goto_3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v0

    const-string v0, "(date > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " AND date < "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, "date ASC LIMIT 100"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    move-object/from16 v33, v2

    move-object/from16 v2, p2

    move-object/from16 v34, v3

    move-object/from16 v3, v28

    move/from16 v35, v4

    move-object v4, v0

    move-wide/from16 v36, v5

    const/4 v6, 0x7

    move-object/from16 v5, v29

    move-object/from16 v16, p5

    move-object/from16 v6, v30

    move-wide/from16 v28, v7

    move-object/from16 v8, v18

    const/16 v18, 0x0

    move-object/from16 v7, v31

    move-object v11, v8

    move-object/from16 v38, v24

    move-object/from16 v8, v32

    .line 539
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_28

    .line 541
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_18
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_5

    goto/16 :goto_25

    :cond_5
    move-wide/from16 v5, v36

    .line 554
    :goto_4
    :try_start_2
    invoke-static/range {v26 .. v26}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValuesWithId(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    .line 555
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isLast()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "date"

    if-eqz v1, :cond_6

    .line 556
    :try_start_3
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v24, v1

    goto :goto_5

    :cond_6
    move-wide/from16 v24, v5

    .line 559
    :goto_5
    :try_start_4
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_7

    .line 560
    :try_start_5
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 561
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-wide/from16 v5, v24

    goto/16 :goto_23

    :cond_7
    const-wide/16 v1, -0x1

    :goto_6
    move-wide v5, v1

    .line 566
    :try_start_6
    invoke-direct {v9, v10, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->hasUnWantedValue(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_8

    move/from16 v7, v35

    .line 567
    :try_start_7
    invoke-virtual {v12, v7}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-object/from16 v4, v34

    move-object/from16 v2, v38

    :goto_7
    const/4 v1, 0x7

    move v15, v7

    :goto_8
    const/16 v7, 0x8

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-wide/from16 v5, v24

    move-object/from16 v8, v33

    move-object/from16 v2, v38

    :goto_9
    move v15, v7

    goto/16 :goto_26

    :cond_8
    move/from16 v7, v35

    .line 571
    :try_start_8
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v3, "status"

    const-string v2, "reserved"

    if-eqz v1, :cond_b

    .line 572
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 573
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 575
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 577
    :cond_9
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v1, :cond_e

    .line 578
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_e

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    cmp-long v1, v35, v30

    if-gtz v1, :cond_e

    .line 579
    :cond_a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x3

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    .line 582
    :cond_b
    :try_start_a
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_e

    .line 583
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 584
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 585
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 586
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 588
    :cond_c
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v1, :cond_e

    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_e

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    cmp-long v1, v35, v30

    if-gtz v1, :cond_e

    .line 590
    :cond_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 594
    :cond_e
    :goto_a
    :try_start_c
    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v4, :cond_10

    :try_start_d
    const-string v0, "restoreTable(): thread_id is null"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v2, v38

    .line 596
    :try_start_e
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_f

    .line 598
    invoke-virtual {v12, v7}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_f
    move-object v3, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-object/from16 v4, v34

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    :goto_b
    move-wide/from16 v5, v24

    move-object/from16 v8, v33

    goto/16 :goto_9

    :cond_10
    move-object/from16 v2, v38

    .line 603
    :try_start_f
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_12

    :try_start_10
    const-string v1, "chat_session_id"

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v21, :cond_11

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    .line 608
    :try_start_11
    invoke-direct {v9, v5, v6, v15, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updateFtFilePath(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 p5, v15

    goto :goto_b

    :cond_11
    move-object/from16 v21, v15

    move-object/from16 v15, v16

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v21, v15

    move-object/from16 v3, p3

    move v15, v7

    move-object/from16 v30, v11

    move-object/from16 p5, v16

    move-wide/from16 v5, v24

    :goto_c
    move-object/from16 v8, v33

    goto/16 :goto_26

    :cond_12
    move-object/from16 v21, v15

    move-object/from16 v15, v16

    :try_start_12
    const-string v1, "session_id"

    .line 611
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    move-object/from16 v16, v1

    const-string v1, "sim_imsi"

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v31, v2

    .line 616
    :try_start_13
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v14, v1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdOnlyBackupMap(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    cmp-long v32, v1, v22

    if-gez v32, :cond_13

    .line 618
    :try_start_14
    iget-object v1, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x1

    move-object/from16 v38, v1

    move-object/from16 v41, v16

    move-object/from16 v42, v30

    invoke-static/range {v38 .. v46}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdBySessionId(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)J

    move-result-wide v35

    .line 620
    iget-object v2, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v38
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 p5, v15

    move-object/from16 v15, v31

    move-object/from16 v47, v3

    move-object/from16 v31, v11

    move-object v11, v4

    move-wide/from16 v3, v35

    move-wide/from16 v40, v5

    move-wide/from16 v5, v38

    move-object/from16 v38, v15

    move v15, v7

    move-object/from16 v7, v16

    move-object/from16 v48, v8

    move-object/from16 v8, v30

    :try_start_15
    invoke-direct/range {v1 .. v8}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->updateImThreads(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-wide/from16 v1, v35

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v3, p3

    move-wide/from16 v5, v24

    move-object/from16 v30, v31

    goto :goto_e

    :catch_6
    move-exception v0

    move-object/from16 p5, v15

    move-object/from16 v38, v31

    move v15, v7

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-wide/from16 v5, v24

    :goto_e
    move-object/from16 v8, v33

    goto/16 :goto_24

    :cond_13
    move-object/from16 v47, v3

    move-wide/from16 v40, v5

    move-object/from16 v48, v8

    move-object/from16 p5, v15

    move-object/from16 v38, v31

    move v15, v7

    move-object/from16 v31, v11

    move-object v11, v4

    :goto_f
    cmp-long v3, v1, v22

    if-lez v3, :cond_25

    .line 624
    :try_start_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 626
    iget-object v3, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mImThreadTableInfo:Ljava/util/HashMap;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v3, :cond_14

    .line 627
    :try_start_17
    iget-object v3, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mImThreadTableInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    if-eqz v3, :cond_14

    .line 629
    invoke-virtual {v3}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getThreadPinToTop()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    .line 631
    iget-object v3, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mPinToTopThreads:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 636
    :cond_14
    :try_start_18
    sget-boolean v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mEnableCarrierServerSync:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v1, :cond_15

    .line 637
    :try_start_19
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->clearCandidateSMSItemMap()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 641
    :cond_15
    :try_start_1a
    iget-object v1, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicationRCS(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v1, :cond_16

    .line 642
    :try_start_1b
    invoke-virtual {v12, v15}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object/from16 v3, v31

    move-object/from16 v4, v34

    move-object/from16 v2, v38

    const/4 v1, 0x7

    goto/16 :goto_8

    .line 646
    :cond_16
    :try_start_1c
    sget-boolean v1, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mEnableCarrierServerSync:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v1, :cond_1a

    .line 648
    :try_start_1d
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v1, v48

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_17

    const-string v1, "restoreTable(): date is null, skip checking duplication"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-object/from16 v2, v38

    .line 651
    :try_start_1e
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v34

    goto :goto_10

    :cond_17
    move-object/from16 v2, v38

    .line 653
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->createSMSItemByChat(Landroid/content/ContentValues;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-object/from16 v4, v34

    .line 655
    :try_start_1f
    invoke-static {v4, v3}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedChatWithSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v0, "isDuplicatedSMSItem(): duplicated!"

    .line 656
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestSMSItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object v0

    .line 658
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v0, v5, v6}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->updateDuplicateMsgTimeStamp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;J)V

    .line 659
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->removeDuplicateMsginHashMap(Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;)V

    const/4 v1, 0x7

    .line 660
    invoke-virtual {v12, v1}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-object/from16 v3, v31

    goto/16 :goto_8

    :cond_18
    :goto_10
    const/4 v1, 0x7

    move-object/from16 v3, v31

    goto :goto_14

    :catch_7
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v34, v4

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_12

    :cond_19
    move-object/from16 v4, v34

    move-object/from16 v2, v38

    const/4 v1, 0x7

    move-object/from16 v3, v31

    .line 664
    :try_start_20
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "imdn_message_id"

    .line 666
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 667
    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicateFTWithMMSItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v7, 0x8

    .line 668
    invoke-virtual {v12, v7}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :goto_11
    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-object/from16 v8, v33

    move-object/from16 v3, p3

    goto/16 :goto_1e

    :catch_9
    move-exception v0

    move-object/from16 v2, v38

    :goto_12
    move-object/from16 v3, p3

    :goto_13
    move-wide/from16 v5, v24

    move-object/from16 v30, v31

    goto/16 :goto_c

    :cond_1a
    move-object/from16 v3, v31

    move-object/from16 v4, v34

    move-object/from16 v2, v38

    const/4 v1, 0x7

    :cond_1b
    :goto_14
    const/16 v7, 0x8

    .line 674
    :try_start_21
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-eqz v5, :cond_1c

    .line 675
    :try_start_22
    invoke-direct {v9, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->isSupportedReserveFt(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_1c

    const/16 v5, 0xa

    .line 676
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v47

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_a
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_16

    :catch_a
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-wide/from16 v5, v24

    move-object/from16 v8, v33

    :goto_15
    move-object/from16 v3, p3

    goto/16 :goto_26

    .line 680
    :cond_1c
    :goto_16
    :try_start_23
    invoke-direct {v9, v4, v10, v0}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->filterAvailableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 681
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    if-nez v5, :cond_1d

    :try_start_24
    const-string v5, "creator"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-object/from16 v8, v33

    .line 682
    :try_start_25
    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_18

    :catch_b
    move-exception v0

    goto :goto_17

    :catch_c
    move-exception v0

    move-object/from16 v8, v33

    :goto_17
    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-wide/from16 v5, v24

    goto :goto_15

    :cond_1d
    move-object/from16 v8, v33

    :goto_18
    :try_start_26
    const-string v5, "body"

    .line 684
    invoke-virtual {v4, v10, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v11, v5, v22

    if-lez v11, :cond_24

    .line 687
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    const-string v11, "thumbnail_path"

    .line 688
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "file_path"

    .line 689
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 692
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    new-instance v11, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    move-object/from16 v30, v3

    move-object/from16 v3, p3

    :try_start_27
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    move-object/from16 v34, v4

    :try_start_28
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "RcsMessage"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_ft_files"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 698
    invoke-static {v11, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_19

    :catch_d
    move-exception v0

    move-object/from16 v34, v4

    goto/16 :goto_22

    :cond_1e
    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-object/from16 v3, p3

    .line 701
    :cond_1f
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 702
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    iget-object v4, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mFtFileInfoList:Ljava/util/HashMap;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 705
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 706
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "RcsFtFiles"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 707
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_parts"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_20
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-static {v4, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 713
    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    goto :goto_1a

    .line 715
    :cond_21
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mFtFileInfoList:Ljava/util/HashMap;

    .line 716
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v11, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;

    .line 717
    invoke-virtual {v0, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v4, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 719
    invoke-static {v4}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    :cond_22
    :goto_1a
    add-int/lit8 v20, v20, 0x1

    goto :goto_1b

    :cond_23
    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-object/from16 v3, p3

    add-int/lit8 v19, v19, 0x1

    .line 727
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert(): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " succeeded"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_24
    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-object/from16 v3, p3

    goto :goto_1d

    :catch_e
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v34, v4

    goto :goto_1c

    :catch_f
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v34, v4

    move-object/from16 v8, v33

    :goto_1c
    move-object/from16 v3, p3

    goto/16 :goto_22

    :catch_10
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v31

    move-object/from16 v8, v33

    goto/16 :goto_21

    :cond_25
    move-object/from16 v3, p3

    move-object/from16 v30, v31

    move-object/from16 v8, v33

    move-object/from16 v2, v38

    const-string v0, "fail : create thread_id"

    .line 731
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_1d
    invoke-virtual {v12, v15}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V

    .line 735
    :goto_1e
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    if-nez v0, :cond_27

    .line 740
    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    if-eqz v26, :cond_26

    .line 743
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    move-object/from16 v26, v17

    :cond_26
    move-wide/from16 v5, v24

    move/from16 v0, v27

    goto/16 :goto_27

    :cond_27
    move-object/from16 v16, p5

    move-object/from16 v38, v2

    move-object/from16 v33, v8

    move/from16 v35, v15

    move-object/from16 v15, v21

    move-wide/from16 v5, v24

    move-object/from16 v11, v30

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto :goto_22

    :catch_12
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 p5, v15

    move-object/from16 v2, v31

    goto :goto_1f

    :catch_13
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 p5, v15

    goto :goto_1f

    :catch_14
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    :goto_1f
    move-object/from16 v8, v33

    goto :goto_20

    :catch_15
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-object/from16 v8, v33

    move-object/from16 v2, v38

    :goto_20
    move v15, v7

    goto :goto_22

    :catch_16
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-object/from16 v8, v33

    move/from16 v15, v35

    :goto_21
    move-object/from16 v2, v38

    :goto_22
    move-wide/from16 v5, v24

    goto :goto_26

    :catch_17
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    :goto_23
    move-object/from16 v8, v33

    move/from16 v15, v35

    :goto_24
    move-object/from16 v2, v38

    goto :goto_26

    :cond_28
    :goto_25
    move-object/from16 v2, v38

    .line 740
    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    if-eqz v26, :cond_2a

    .line 743
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catch_18
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v30, v11

    move-object/from16 v21, v15

    move-object/from16 p5, v16

    move-object/from16 v8, v33

    move/from16 v15, v35

    move-object/from16 v2, v38

    move-wide/from16 v5, v36

    goto :goto_26

    :catchall_0
    move-exception v0

    goto :goto_29

    :catch_19
    move-exception v0

    move-object/from16 v34, v3

    move-wide/from16 v36, v5

    move-wide/from16 v28, v7

    move-object v3, v11

    move-object/from16 v21, v15

    move-object/from16 v30, v18

    const/16 v18, 0x0

    move-object v8, v2

    move v15, v4

    move-object/from16 v2, v24

    .line 737
    :goto_26
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 740
    iget-object v0, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    if-eqz v26, :cond_29

    .line 743
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    move-object/from16 v26, v17

    :cond_29
    move/from16 v0, v18

    :goto_27
    if-nez v0, :cond_2b

    :cond_2a
    :goto_28
    move/from16 v0, v19

    move/from16 v1, v20

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreFinished(): inserted isSucceed : IM ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " FT = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    move-object/from16 v24, v2

    move-object v11, v3

    move-object v2, v8

    move v4, v15

    move-object/from16 v15, v21

    move-wide/from16 v7, v28

    move-object/from16 v18, v30

    move-object/from16 v3, v34

    goto/16 :goto_3

    .line 740
    :goto_29
    iget-object v1, v9, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChange(Landroid/content/Context;)V

    if-eqz v26, :cond_2c

    .line 743
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_2c
    throw v0
.end method

.method private static sendRestoreProgress(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRestoreProgress(): progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/FreeMessageBnR"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    .line 855
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PROGRESS_RESTORE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESTORE_SIZE"

    .line 858
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    invoke-static {v0, p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->setIntentPackageBySource(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    .line 861
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static setIntentPackageBySource(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOURCE"

    .line 865
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Kies"

    .line 866
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.wssnps"

    .line 867
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "SmartSwitch"

    .line 868
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.sec.android.easyMover"

    .line 869
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateChangedThread(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 445
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 447
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 451
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdByBackupThreadIdMap()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 453
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->beginThreadUpdate(I)V

    .line 461
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 462
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)I

    const/16 p3, 0x9

    .line 463
    invoke-virtual {p2, p3}, Lcom/android/providers/telephony/backup/FreeMessageBnR$RestoreProgress;->restoreProgressed(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateFtFilePath(JLjava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "TP/FreeMessageBnR"

    const-string v1, "updateFtFilePath"

    .line 811
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object p0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mFtFileInfoList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;

    .line 813
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/providers/telephony/backup/-$$Lambda$ZqDHk1fABqlcsEBLXHYgf3vrths;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$ZqDHk1fABqlcsEBLXHYgf3vrths;

    .line 814
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "file_path"

    .line 815
    invoke-virtual {p4, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "file_name"

    .line 817
    invoke-virtual {p4, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateImThreads(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v6, p6

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const-string v10, "TP/FreeMessageBnR"

    const/4 v11, 0x0

    if-lez v3, :cond_1

    .line 403
    iget-object v5, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mImThreadTableInfo:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 404
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    if-eqz v5, :cond_1

    .line 406
    invoke-virtual {v5}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getImType()I

    move-result v4

    .line 407
    invoke-virtual {v5}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getConversationType()I

    move-result v7

    .line 408
    invoke-virtual {v5}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAlias()Ljava/lang/String;

    move-result-object v8

    .line 410
    invoke-static {v5, v6}, Lcom/android/providers/telephony/backup/BnRUtils;->getRcsConversationInfo(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v9, "im_contribution_id"

    .line 412
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "session_uri"

    .line 413
    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v11

    move-object v9, v5

    .line 416
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "im_type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", convType : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v7

    move-object v7, v9

    move-object v9, v5

    goto :goto_1

    :cond_1
    move v12, v4

    move-object v7, v11

    move-object v8, v7

    move-object v9, v8

    :goto_1
    if-lez v3, :cond_3

    .line 421
    iget-object v3, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mExistImThreadTableInfo:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "new created im_threads"

    .line 422
    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "session_id"

    .line 426
    invoke-virtual {v13, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sim_imsi"

    move-object/from16 v5, p7

    .line 427
    invoke-virtual {v13, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "alias"

    .line 430
    invoke-virtual {v13, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_2
    iget-object v0, v0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRcsImSession:Ljava/util/HashMap;

    move-object v3, v13

    move v5, v12

    move-object/from16 v6, p6

    move-object v8, v9

    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/providers/telephony/backup/BnRUtils;->setThreadInfoValue(Landroid/content/ContentValues;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 436
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 437
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal_thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "im_threads"

    invoke-virtual {v0, v4, v13, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImThreads cnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thread : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", conversationType : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updatePinToTopThreads(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "TP/FreeMessageBnR"

    const-string v1, "updatePinToTopThreads(): Start"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "updatePinToTopThreads(): End, Nothing to update"

    .line 379
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePinToTopThreads(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mPinToTopThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threads to update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pin_to_top"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mPinToTopThreads:Ljava/util/List;

    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "threads"

    const/4 v6, 0x0

    .line 388
    invoke-virtual {p1, v5, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normal_thread_id IN ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mPinToTopThreads:Ljava/util/List;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "im_threads"

    .line 391
    invoke-virtual {p1, v2, v1, p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "updatePinToTopThreads(): End"

    .line 393
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isPermissionsDenied()Z
    .locals 2

    .line 72
    sget-object v0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->permissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/providers/telephony/backup/-$$Lambda$UjtoIr4pvQbJJauRroP2dmga8bA;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/backup/-$$Lambda$UjtoIr4pvQbJJauRroP2dmga8bA;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;

    .line 74
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onReceive$1$FreeMessageBnR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$onReceive$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$FreeMessageBnR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$onReceive$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p2

    const-string v1, "TP/FreeMessageBnR"

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v3, p1

    .line 85
    iput-object v3, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    .line 86
    invoke-static/range {p1 .. p2}, Lcom/android/providers/telephony/backup/BnRDocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mDocumentUris:Ljava/util/List;

    .line 87
    iget-object v4, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mContext:Landroid/content/Context;

    const-string v5, "SAVE_PATH"

    .line 88
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {v4, v3, v5, v2}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getBnrFilePath(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SESSION_KEY"

    .line 89
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SOURCE"

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EXPORT_SESSION_TIME"

    .line 91
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "ACTION"

    const/4 v8, 0x0

    .line 92
    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "SECURITY_LEVEL"

    .line 93
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "TOTAL_COUNT"

    const/4 v12, -0x1

    .line 94
    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v13, "IM_COUNT"

    .line 95
    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "FT_COUNT"

    .line 96
    invoke-virtual {v0, v14, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v14, "IS_ONLY_RCS"

    .line 97
    invoke-virtual {v0, v14, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mIsOnlyRCS:Z

    const-string v14, ""

    .line 98
    iput-object v14, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreFrom:Ljava/lang/String;

    .line 99
    iput-object v14, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreTo:Ljava/lang/String;

    :try_start_0
    const-string v14, "MSG_PERIOD"

    .line 102
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreFrom:Ljava/lang/String;

    const/4 v8, 0x1

    .line 105
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreTo:Ljava/lang/String;

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRestoreFrom : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreFrom:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mRestoreTo : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreTo:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rcs Backup / Restore occur exception :"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_MESSAGE"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v6, :cond_3

    .line 115
    iget-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;

    move-object v1, v8

    move-object v2, p0

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;-><init>(Lcom/android/providers/telephony/backup/FreeMessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "backup"

    invoke-direct {v0, v8, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mBackupThread:Ljava/lang/Thread;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne v6, v0, :cond_7

    .line 122
    iget-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 126
    :cond_4
    invoke-static {v3}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_MESSAGE"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v6, :cond_7

    .line 131
    iget-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v14, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;

    move-object v1, v14

    move-object v2, p0

    move v6, v9

    move v8, v10

    move v9, v13

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;-><init>(Lcom/android/providers/telephony/backup/FreeMessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    const-string v1, "restore"

    invoke-direct {v0, v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v11, Lcom/android/providers/telephony/backup/FreeMessageBnR;->mRestoreThread:Ljava/lang/Thread;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_7
    :goto_1
    return-void
.end method
