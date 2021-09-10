.class public Lcom/android/providers/telephony/backup/BnRUtils;
.super Ljava/lang/Object;
.source "BnRUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;,
        Lcom/android/providers/telephony/backup/BnRUtils$LoggerMsg;,
        Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;,
        Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;,
        Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;,
        Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;
    }
.end annotation


# static fields
.field private static final DIGITS:[J

.field public static isCheckedChatCols:Z

.field public static isCheckedFTCols:Z

.field private static mCipher:Ljavax/crypto/Cipher;

.field private static mImThreadTableInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mMmsMIdByBackupMId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mSalt:[B

.field private static mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private static mSecurityPassword:Ljava/lang/String;

.field private static mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mThreadTableInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sBackupThreadInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sChatColumnsFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sDoingInitSync:Z

.field private static sFtColumnsFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sImThreadsColumnsFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInternalRestore:Z

.field private static sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

.field private static sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sChatColumnsFilter:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sFtColumnsFilter:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sImThreadsColumnsFilter:Landroid/util/SparseArray;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mImThreadTableInfo:Ljava/util/HashMap;

    const/16 v0, 0xd

    new-array v0, v0, [J

    .line 266
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->DIGITS:[J

    .line 2521
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2522
    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-void

    :array_0
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
    .end array-data
.end method

.method public static checkOrCreateDirectory(Ljava/lang/String;Z)Z
    .locals 4

    .line 1824
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const-string v1, "TP/BnRUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    .line 1827
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "checkOrCreateDirectory partFiles is null"

    .line 1830
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    return v3

    .line 1838
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 1840
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1841
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1842
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_2
    return v3

    :cond_3
    const-string p0, "directory create fail"

    .line 1846
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 1850
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return v2
.end method

.method static clearBackupThreadInfo()V
    .locals 1

    .line 2363
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2364
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2366
    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;

    return-void
.end method

.method public static compress(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7

    const-string v0, "compress() : "

    const-string v1, "TP/BnRUtils"

    .line 1144
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1145
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1147
    array-length v0, p2

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    .line 1148
    invoke-static {p0, p1, v2}, Lcom/android/providers/telephony/backup/BnRUtils;->compress(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1157
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1159
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1161
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 1164
    invoke-virtual {p0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x1000

    new-array p2, p1, [B

    .line 1169
    :goto_1
    invoke-virtual {v5, p2, v4, p1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    .line 1170
    invoke-virtual {p0, p2, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1179
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    .line 1187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v2, v5

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    .line 1173
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    .line 1179
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 1182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_3
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 1187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v3, v4

    :cond_4
    :goto_6
    return v3

    :goto_7
    if-eqz v2, :cond_5

    .line 1179
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception p2

    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_5
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    .line 1187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :goto_9
    throw p1
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TP/BnRUtils"

    .line 1321
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1322
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1325
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1326
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1327
    :try_start_1
    invoke-static {v2, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1328
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 p1, 0x400

    :try_start_3
    new-array v3, p1, [B

    :goto_0
    const/4 v4, 0x0

    .line 1331
    invoke-virtual {p2, v3, v4, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1332
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :cond_0
    move-object p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p2, p1

    goto/16 :goto_6

    :catch_4
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    move-object p2, v1

    goto :goto_3

    :catch_5
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    move-object p2, v1

    goto :goto_4

    :cond_1
    move-object p2, p1

    move-object v2, p2

    :goto_1
    if-eqz p1, :cond_2

    .line 1341
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz p2, :cond_3

    .line 1344
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_8

    .line 1347
    :goto_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p2, p1

    move-object v2, p2

    goto :goto_6

    :catch_6
    move-exception p2

    move-object v1, p1

    move-object v2, v1

    move-object p1, p2

    move-object p2, v2

    .line 1338
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_4

    .line 1341
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz p2, :cond_5

    .line 1344
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_8

    goto :goto_2

    :catch_7
    move-exception p2

    move-object v1, p1

    move-object v2, v1

    move-object p1, p2

    move-object p2, v2

    .line 1336
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_6

    .line 1341
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz p2, :cond_7

    .line 1344
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    return-object p0

    :catchall_3
    move-exception p0

    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_9

    .line 1341
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz p2, :cond_a

    .line 1344
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v2, :cond_b

    .line 1347
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1349
    :cond_b
    throw p0
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1422
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 1423
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 1424
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 1427
    sput-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mSalt:[B

    .line 1428
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "TP/BnRUtils"

    const-string v0, "decryptStream(): salt is empty"

    .line 1429
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    .line 1433
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 1436
    :goto_0
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x2

    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1437
    new-instance p1, Ljavax/crypto/CipherInputStream;

    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method private static delete(Ljava/io/File;I)I
    .locals 5

    .line 1441
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1445
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1446
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1447
    invoke-static {v3, p1}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;I)I

    move-result v3

    :goto_1
    add-int/2addr p1, v3

    goto :goto_2

    .line 1449
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "TP/BnRUtils"

    const-string v1, "delete() childFileList is null"

    .line 1453
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static delete(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    .line 1461
    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;I)I

    move-result p0

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete() cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/BnRUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1

    .line 1466
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->delete(Ljava/io/File;)V

    return-void
.end method

.method public static deleteAllMessage(Landroid/content/Context;ZZZ)I
    .locals 3

    .line 1930
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "TP/BnRUtils"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string p1, "deleteSpamAll() "

    .line 1933
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteSpamAll(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_1

    const-string p1, "deletePendingMessage() "

    .line 1938
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pending_msgs"

    .line 1939
    invoke-virtual {v0, p1, p0, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr v2, p1

    :cond_1
    const-string p1, "deleteWpmMessage()"

    .line 1942
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "wpm"

    .line 1943
    invoke-virtual {v0, p1, p0, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr v2, p1

    const-string p1, "deleteFtRetry() "

    .line 1945
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ft_retry"

    .line 1946
    invoke-virtual {v0, p1, p0, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz p3, :cond_2

    const-string p1, "im"

    const-string p2, "hidden = 1"

    .line 1950
    invoke-virtual {v0, p1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr v2, p1

    const-string p1, "ft"

    .line 1951
    invoke-static {v0, p1, p2, p0}, Lcom/android/providers/telephony/ImProvider;->deleteImFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method public static deleteBotThreadIdSmsNumber(Landroid/content/Context;)V
    .locals 2

    .line 1959
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "bot_service_id_sms_number"

    const/4 v1, 0x0

    .line 1960
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete bot thread id sms number e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/BnRUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static deleteImFtOutOfDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v10, ")"

    const-string v11, ","

    const-string v12, " IN ("

    const-string v13, "TP/BnRUtils"

    .line 2097
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v16, "_id"

    .line 2100
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "im"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    const-string v2, "ft"

    .line 2102
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v17, v13

    move-object v13, v8

    move-object/from16 v8, v16

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    const/4 v2, 0x0

    if-eqz v13, :cond_0

    .line 2104
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2105
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 2107
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2108
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_1

    .line 2100
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw v2

    :cond_2
    if-eqz v1, :cond_3

    .line 2110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2112
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "ft"

    const/4 v4, 0x0

    if-nez v1, :cond_5

    const-string v1, "all"

    .line 2113
    invoke-static {v9, v3, v0, v4, v1}, Lcom/android/providers/telephony/ImProvider;->deleteDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2118
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropTriggersDeleteOnImFt(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v1, "im"

    .line 2120
    invoke-virtual {v9, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    .line 2121
    invoke-virtual {v9, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2128
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2132
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnImFt(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2133
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v3, v17

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "deleteImFtOutOfDate(): delete failed"

    move-object/from16 v3, v17

    .line 2130
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2132
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnImFt(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2133
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2136
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteImFtOutOfDate cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2132
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnImFt(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2133
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2134
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v13, v8

    :goto_6
    move-object v1, v0

    if-eqz v13, :cond_6

    .line 2100
    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw v1
.end method

.method public static deleteMessageOutOfDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 3

    .line 2141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000 OR date > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OR date > "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2155
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 2157
    invoke-static {p2, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteSmsOutOfDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 2158
    invoke-static {p2, p1}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteMmsOutOfDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result p1

    add-int/2addr v1, p1

    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 2161
    :cond_1
    invoke-static {p2, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->deleteImFtOutOfDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result p1

    add-int/2addr v1, p1

    if-eqz p3, :cond_2

    .line 2164
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->requestAsyncEndChat(Landroid/content/Context;)V

    .line 2165
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->markAllImThreadtoDelete(Landroid/content/Context;)I

    :cond_2
    return v1
.end method

.method private static deleteMmsOutOfDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 12

    const-string v0, "_id"

    const-string v1, "TP/BnRUtils"

    .line 2061
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "pdu"

    .line 2062
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move-object v7, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_1

    .line 2064
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2065
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz p1, :cond_0

    .line 2062
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v4

    :cond_1
    if-eqz p1, :cond_2

    .line 2067
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v4, "deleteMmsOutOfDate(): Failed to collecting pdu ids"

    .line 2068
    invoke-static {v1, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2071
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2074
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2076
    :try_start_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropTriggersDeleteOnPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteConversationParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "addr"

    .line 2079
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "pdu"

    .line 2081
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2082
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "deleteMmsOutOfDate() : delete mms failed!"

    .line 2084
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2086
    :goto_3
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2087
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    .line 2086
    :goto_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggersDeleteOnPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2087
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2088
    throw p1

    .line 2091
    :cond_3
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteMmsOutOfDate cnt : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static deleteSmsOutOfDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 12

    const-string v0, "_id"

    const-string v1, "TP/BnRUtils"

    .line 2024
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "sms"

    .line 2025
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move-object v7, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_1

    .line 2027
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2028
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz p1, :cond_0

    .line 2025
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v4

    :cond_1
    if-eqz p1, :cond_2

    .line 2030
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v4, "deleteSmsOutOfDate() : get deleting sms failed!"

    .line 2031
    invoke-static {v1, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2034
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2035
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2037
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2039
    :try_start_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v2, "sms"

    .line 2041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v0, "cmas"

    .line 2042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "words"

    .line 2043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table_to_use=1 AND source_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2045
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "deleteSmsOutOfDate() : delete sms failed!"

    .line 2047
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2049
    :goto_3
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2050
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    .line 2049
    :goto_4
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2050
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2051
    throw p1

    .line 2054
    :cond_3
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteSmsOutOfDate cnt : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static deleteSpamAll(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5

    const-string v0, "spam_sms"

    const/4 v1, 0x0

    .line 1900
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1902
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1904
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropTriggerDeleteOnSpamPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1906
    invoke-static {p0, p1, v1, v1, v1}, Lcom/android/providers/telephony/MmsProvider;->deleteSpamMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result p0

    add-int/2addr v0, p0

    const-string p0, "spam_addr"

    .line 1907
    invoke-virtual {p1, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    .line 1909
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    :goto_0
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggerDeleteOnSpamPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1914
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "TP/BnRUtils"

    .line 1911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteSpamAll fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string p0, "spam_rate"

    .line 1917
    invoke-virtual {p1, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    const-string p0, "spam_drm"

    .line 1918
    invoke-virtual {p1, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    const-string p0, "spam_ft"

    .line 1920
    invoke-static {p1, p0, v1, v1}, Lcom/android/providers/telephony/ImProvider;->deleteImFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    const-string p0, "spam_im"

    .line 1921
    invoke-virtual {p1, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    const-string p0, "spam_filter"

    .line 1922
    invoke-virtual {p1, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 1913
    :goto_2
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createTriggerDeleteOnSpamPdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1914
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1915
    throw p0
.end method

.method public static deleteUnsupportMessage(Landroid/content/Context;)I
    .locals 7

    const-string v0, "sms"

    .line 1968
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT DISTINCT group_id from sms where (group_type IS NOT NULL AND group_type > 2)"

    .line 1971
    invoke-virtual {p0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "group_id"

    .line 1974
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1975
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1978
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1980
    invoke-virtual {p0, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v3, :cond_3

    .line 1982
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 1971
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    .line 1983
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete group sms not in sentbox fail e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TP/BnRUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    const-string v3, "(type != 1 AND type != 2) OR address LIKE \'#CMAS#%\' OR address LIKE \'#Emergency Alert#%\'"

    .line 1988
    invoke-virtual {p0, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    const-string v0, "msg_box != 1 AND msg_box != 2"

    .line 1991
    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    const-string v0, "m_type = 130 OR m_type = 135"

    .line 1994
    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    const-string v0, "im"

    const-string v3, "type != 1 AND type != 2"

    .line 1997
    invoke-virtual {p0, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "ft"

    const-string v4, "NOT ((status = 3 OR status = 10) OR (type = 2 AND status = 5 AND reserved = 1))"

    .line 2000
    invoke-static {p0, v3, v4, v1}, Lcom/android/providers/telephony/ImProvider;->deleteImFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    const-string v4, "(type = 2 AND status = 5 AND reserved = 1) AND file_path not like \'%/Android/data/com.samsung.android.messaging%\'"

    .line 2002
    invoke-static {p0, v3, v4, v1}, Lcom/android/providers/telephony/ImProvider;->deleteImFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    const-string v4, "content_type LIKE \'application/vnd.sec.card%\'"

    .line 2005
    invoke-virtual {p0, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    const-string v4, "from_address"

    .line 2007
    invoke-static {p0, v0, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "from_address IS NOT NULL AND from_address != \'\'"

    if-eqz v5, :cond_4

    .line 2009
    invoke-virtual {p0, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2011
    :cond_4
    invoke-static {p0, v3, v4}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2013
    invoke-static {p0, v3, v6, v1}, Lcom/android/providers/telephony/ImProvider;->deleteImFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    const-string v0, "cmas"

    .line 2016
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public static directoryCopy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .line 1767
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1770
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1776
    :cond_0
    array-length v3, v0

    if-lez v3, :cond_1

    .line 1777
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    move v3, v1

    .line 1782
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 1783
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1786
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/telephony/backup/BnRUtils;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    .line 1791
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v4, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1794
    invoke-virtual {v4, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1795
    invoke-virtual {v4, v2, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static doDBReload(Landroid/content/Context;)V
    .locals 1

    .line 1856
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1857
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string p0, "TP/BnRUtils"

    const-string v0, "mms-sms dbReload done"

    .line 1858
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1290
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1293
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1294
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    :try_start_2
    invoke-static {v0, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object p1

    const/16 p2, 0x400

    new-array v2, p2, [B

    :goto_0
    const/4 v3, 0x0

    .line 1298
    invoke-virtual {v1, v2, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1299
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1305
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 1308
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, p1

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v0, p1

    move-object v1, v0

    :goto_1
    :try_start_3
    const-string v2, "TP/BnRUtils"

    .line 1302
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_2

    .line 1305
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    .line 1308
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 1311
    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    return-object p0

    :catchall_2
    move-exception p0

    :goto_3
    if-eqz p1, :cond_5

    .line 1305
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    .line 1308
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    .line 1311
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1313
    :cond_7
    throw p0
.end method

.method public static encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1404
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 1405
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1406
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1407
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1410
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->generateEncryptSalt()[B

    move-result-object p1

    sput-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mSalt:[B

    .line 1411
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1412
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    .line 1414
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 1417
    :goto_0
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1418
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v1, "extract() : "

    const-string v2, "IOException caught while closing zipInputStream"

    const-string v3, "IOException caught while closing fileInputStream"

    const-string v4, "IOException caught while closing bufferedOutputStream"

    const-string v5, "IOException caught while closing fileOutputStream"

    const-string v6, "TP/BnRUtils"

    const-string v0, "extract start"

    .line 1196
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 1205
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1206
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v7

    .line 1209
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1210
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    .line 1211
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1213
    array-length v13, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v15, 0x1

    if-le v13, v15, :cond_0

    move-object/from16 v14, p1

    move-object/from16 v16, v1

    const/4 v13, 0x0

    .line 1215
    :goto_1
    :try_start_3
    array-length v1, v12

    sub-int/2addr v1, v15

    if-ge v13, v1, :cond_1

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1217
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v12, v13

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1219
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v16, v1

    .line 1224
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1227
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_7

    :cond_2
    const/16 v0, 0x1000

    new-array v11, v0, [B

    .line 1231
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1232
    :try_start_4
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, 0x0

    .line 1235
    :goto_2
    :try_start_5
    invoke-virtual {v9, v11, v1, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v10

    const/4 v14, -0x1

    if-eq v10, v14, :cond_3

    .line 1236
    invoke-virtual {v7, v11, v1, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 1238
    :cond_3
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1240
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 1242
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v10, v7

    move-object v7, v12

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v10, v7

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v7

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v7

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v10, v7

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_3
    move-object v7, v12

    goto/16 :goto_1e

    :catch_3
    move-exception v0

    :goto_4
    move-object v7, v12

    goto/16 :goto_f

    :catch_4
    move-exception v0

    :goto_5
    move-object v7, v12

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_6
    move-object v7, v12

    goto :goto_9

    :cond_4
    :goto_7
    move-object/from16 v1, v16

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_f

    :catch_7
    move-exception v0

    :goto_8
    move-object/from16 v11, v16

    goto/16 :goto_14

    :catch_8
    move-exception v0

    :goto_9
    move-object/from16 v11, v16

    goto/16 :goto_19

    :cond_5
    if-eqz v7, :cond_6

    .line 1255
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 1257
    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_a
    if-eqz v10, :cond_7

    .line 1262
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 1264
    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    :cond_7
    :goto_b
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 1271
    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1276
    :goto_c
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_1d

    :catch_c
    move-exception v0

    move-object v1, v0

    .line 1278
    invoke-static {v6, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    :catch_d
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_f

    :catch_e
    move-exception v0

    move-object v11, v1

    goto/16 :goto_14

    :catch_f
    move-exception v0

    move-object v11, v1

    goto/16 :goto_19

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v9, v7

    goto :goto_d

    :catch_10
    move-exception v0

    move-object/from16 v16, v1

    move-object v9, v7

    goto :goto_e

    :catch_11
    move-exception v0

    move-object v11, v1

    move-object v9, v7

    goto/16 :goto_13

    :catch_12
    move-exception v0

    move-object v11, v1

    move-object v9, v7

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    move-object v9, v8

    :goto_d
    move-object v10, v9

    goto/16 :goto_1e

    :catch_13
    move-exception v0

    move-object/from16 v16, v1

    move-object v8, v7

    move-object v9, v8

    :goto_e
    move-object v10, v9

    .line 1251
    :goto_f
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v16

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v7, :cond_8

    .line 1255
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14

    goto :goto_10

    :catch_14
    move-exception v0

    move-object v1, v0

    .line 1257
    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_10
    if-eqz v10, :cond_9

    .line 1262
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15

    goto :goto_11

    :catch_15
    move-exception v0

    move-object v1, v0

    .line 1264
    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_11
    if-eqz v8, :cond_a

    .line 1269
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    goto :goto_12

    :catch_16
    move-exception v0

    move-object v1, v0

    .line 1271
    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_12
    if-eqz v9, :cond_11

    .line 1276
    :try_start_e
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto/16 :goto_1d

    :catch_17
    move-exception v0

    move-object v11, v1

    move-object v8, v7

    move-object v9, v8

    :goto_13
    move-object v10, v9

    .line 1249
    :goto_14
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v7, :cond_b

    .line 1255
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_18

    goto :goto_15

    :catch_18
    move-exception v0

    move-object v1, v0

    .line 1257
    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_15
    if-eqz v10, :cond_c

    .line 1262
    :try_start_11
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_19

    goto :goto_16

    :catch_19
    move-exception v0

    move-object v1, v0

    .line 1264
    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_16
    if-eqz v8, :cond_d

    .line 1269
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1a

    goto :goto_17

    :catch_1a
    move-exception v0

    move-object v1, v0

    .line 1271
    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_17
    if-eqz v9, :cond_11

    .line 1276
    :try_start_13
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_1d

    :catch_1b
    move-exception v0

    move-object v11, v1

    move-object v8, v7

    move-object v9, v8

    :goto_18
    move-object v10, v9

    .line 1247
    :goto_19
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v7, :cond_e

    .line 1255
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1c

    goto :goto_1a

    :catch_1c
    move-exception v0

    move-object v1, v0

    .line 1257
    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_1a
    if-eqz v10, :cond_f

    .line 1262
    :try_start_16
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1d

    goto :goto_1b

    :catch_1d
    move-exception v0

    move-object v1, v0

    .line 1264
    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_1b
    if-eqz v8, :cond_10

    .line 1269
    :try_start_17
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1e

    goto :goto_1c

    :catch_1e
    move-exception v0

    move-object v1, v0

    .line 1271
    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_1c
    if-eqz v9, :cond_11

    .line 1276
    :try_start_18
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    :cond_11
    :goto_1d
    const-string v0, "extract end"

    .line 1282
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_4
    move-exception v0

    move-object v1, v0

    :goto_1e
    if-eqz v7, :cond_12

    .line 1255
    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    move-object v7, v0

    .line 1257
    invoke-static {v6, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_1f
    if-eqz v10, :cond_13

    .line 1262
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    move-object v5, v0

    .line 1264
    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_20
    if-eqz v8, :cond_14

    .line 1269
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    move-object v4, v0

    .line 1271
    invoke-static {v6, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_21
    if-eqz v9, :cond_15

    .line 1276
    :try_start_1c
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    move-object v3, v0

    .line 1278
    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    :cond_15
    :goto_22
    throw v1
.end method

.method public static fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    .line 1805
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 1807
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1808
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1809
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-lez v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-gtz v1, :cond_0

    const-string v1, "TP/BnRUtils"

    const-string v2, "fileCopy transferTo return negative"

    .line 1810
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    if-eqz v7, :cond_1

    .line 1812
    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_1
    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_2
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 1805
    :try_start_9
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p1, :cond_4

    :try_start_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_c
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    :try_start_e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception p1

    :try_start_10
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception p0

    .line 1813
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1820
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/providers/telephony/backup/BnRUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static generateEncryptSalt()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1382
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1384
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 1394
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mSecurityPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    .line 1396
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1397
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lcom/android/providers/telephony/backup/BnRUtils;->mSalt:[B

    const/16 v4, 0x3e8

    const/16 v5, 0x100

    invoke-direct {v2, v0, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1398
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1400
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 1372
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1373
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mSecurityPassword:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 1375
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1377
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static getBackupThreadInfo(Ljava/lang/Long;)Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;
    .locals 1

    .line 2356
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2359
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getBinFtOriginalFiles(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2879
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "file_path"

    .line 2880
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 2881
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v2, "parts"

    const/4 v9, 0x0

    .line 2883
    invoke-virtual {p0, v2, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v2, "/data/user_de/0/com.android.providers.telephony/app_parts"

    .line 2882
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "bin_ft"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2885
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 2887
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2888
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2889
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2890
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    .line 2885
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

    .line 2893
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public static getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 6

    .line 283
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 284
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 286
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 287
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 300
    :cond_1
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_2
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 295
    :cond_3
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "_id"

    .line 307
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 308
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public static getContentValuesWithId(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 6

    .line 315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 316
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 318
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 319
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 332
    :cond_1
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_2
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 327
    :cond_3
    aget-object v3, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getEnableCarrierServerSync()Z
    .locals 3

    .line 378
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableOpBackupSync()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableJansky()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 379
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableCarrierServerSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TP/BnRUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getEnableJansky()Z
    .locals 2

    .line 1529
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    .line 1530
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jansky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableOpBackupSync()Z
    .locals 4

    .line 366
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigOpBackupSync"

    .line 368
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 370
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnableOpBackupSync e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TP/BnRUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public static getEnableSmsClassification()Z
    .locals 3

    const-string v0, "ro.csc.sales_code"

    const-string v1, "Unknown"

    .line 2474
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.omc.sales_code"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHM"

    .line 2478
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHC"

    .line 2479
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CBK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2482
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableSmsClassification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TP/BnRUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static declared-synchronized getExistThreadImTableInfo(Landroid/content/Context;)Landroid/util/LongSparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 539
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 540
    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    const-string v2, "im_threads"

    const-string v3, "normal_thread_id"

    const-string v4, "session_id"

    .line 541
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    if-eqz v1, :cond_1

    .line 544
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 545
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_0

    .line 541
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p0

    :cond_1
    if-eqz v1, :cond_2

    .line 547
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 548
    :cond_2
    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getFtFileInfoList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;",
            ">;"
        }
    .end annotation

    .line 2192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2194
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v2, "TP/BnRUtils"

    if-nez p0, :cond_0

    const-string p0, "RCS_FT_ATTACHMENTS does not exist"

    .line 2196
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2200
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2201
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2202
    :try_start_2
    new-instance v3, Landroid/util/JsonReader;

    invoke-direct {v3, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2204
    :try_start_3
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 2205
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RCS_FT_ATTACHMENTS"

    .line 2206
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "title : RCS_FT_ATTACHMENTS"

    .line 2207
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginArray()V

    .line 2213
    :goto_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const-wide/16 v4, 0x0

    .line 2215
    new-instance v6, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;

    invoke-direct {v6}, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;-><init>()V

    .line 2216
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 2217
    :goto_1
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2218
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 2219
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v9, "relative_path"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v10

    goto :goto_2

    :sswitch_1
    const-string v9, "date"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v12

    goto :goto_2

    :sswitch_2
    const-string v9, "_id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_3
    const-string v9, "file_size"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v11

    goto :goto_2

    :sswitch_4
    const-string v9, "file_path"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v13

    :cond_1
    :goto_2
    if-eqz v8, :cond_6

    if-eq v8, v13, :cond_5

    if-eq v8, v12, :cond_4

    if-eq v8, v11, :cond_3

    if-eq v8, v10, :cond_2

    .line 2237
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 2234
    :cond_2
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mRelativePath:Ljava/lang/String;

    goto :goto_1

    .line 2231
    :cond_3
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v6, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFileSize:J

    goto :goto_1

    .line 2228
    :cond_4
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mDate:J

    goto :goto_1

    .line 2225
    :cond_5
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFilePath:Ljava/lang/String;

    goto :goto_1

    .line 2221
    :cond_6
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 2222
    iput-wide v4, v6, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mId:J

    goto :goto_1

    .line 2241
    :cond_7
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 2243
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2245
    :cond_8
    invoke-virtual {v3}, Landroid/util/JsonReader;->endArray()V

    .line 2246
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2247
    :try_start_4
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :cond_9
    :try_start_7
    const-string v4, "fail()"

    .line 2209
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2247
    :try_start_8
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    :catchall_0
    move-exception v4

    .line 2200
    :try_start_b
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_c
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_e
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    :try_start_10
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception p0

    .line 2250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception e : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception p0

    const-string v1, "startRestoreWithJson()"

    .line 2248
    invoke-static {v2, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4e76caf8 -> :sswitch_4
        -0x4e754f1c -> :sswitch_3
        0x171ba -> :sswitch_2
        0x2eefae -> :sswitch_1
        0x7e0401b8 -> :sswitch_0
    .end sparse-switch
.end method

.method static getFtOriginalFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "MESSAGE_FT_"

    .line 2901
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2902
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "_id"

    const-string v11, "file_size"

    const-string v12, "date"

    const-string v13, "file_path"

    .line 2903
    filled-new-array {v2, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v5

    .line 2905
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const-string v4, "parts"

    const/4 v6, 0x0

    move-object/from16 v7, p0

    .line 2906
    invoke-virtual {v7, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v6, "/data/user_de/0/com.android.providers.telephony/app_parts"

    invoke-static {v4, v6}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getCanonicalPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "ft"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2908
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2909
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 2912
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2913
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2914
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2915
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 2916
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2917
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2918
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2919
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2920
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2921
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2922
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 2923
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/providers/telephony/backup/BnRFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2924
    new-instance v9, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;

    move-object/from16 v16, v9

    move-object/from16 v19, v8

    invoke-direct/range {v16 .. v24}, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;-><init>(JLjava/lang/String;JJLjava/lang/String;)V

    .line 2925
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2926
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string v0, "RCS_FT_ATTACHMENTS"

    .line 2929
    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2930
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/android/providers/telephony/backup/BnRFileUtil;->makeFile(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 2931
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v14

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_4

    .line 2908
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 2931
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v14
.end method

.method private static getGroupChatThread(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2717
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getGroupConversationTypeList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conversation_type IN ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 2720
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "normal_thread_id"

    .line 2721
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "im_threads"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    .line 2722
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 2724
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 2725
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 2727
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 2722
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    if-eqz p0, :cond_3

    .line 2730
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private static getGroupConversationTypeList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 2709
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 2710
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 2711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static getImConversationContributionId(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/ContentValues;

    .line 668
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentValues;

    const-string v2, "session_id"

    .line 669
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "im_contribution_id"

    const-string v5, "im_conversation_id"

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 677
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 678
    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 685
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;",
            ">;"
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mImThreadTableInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 397
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mImThreadTableInfo:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->loadImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 398
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mImThreadTableInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public static getMmsMIdIdByBackupMId(J)J
    .locals 2

    .line 1034
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ)J"
        }
    .end annotation

    move-object v0, p2

    move-object v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v6, p11

    .line 867
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOrCreateThreadId sessionId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TP/BnRUtils"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getOrCreateThreadId conversationType "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "content://mms-sms/thread-by-sessionId"

    .line 870
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 872
    invoke-static/range {p10 .. p10}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v9

    const-string v10, "true"

    if-eqz v9, :cond_0

    const-string v9, "force_groupchat"

    .line 873
    invoke-virtual {v7, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 874
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "session_id"

    .line 875
    invoke-virtual {v7, v9, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 879
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sim_imsi"

    move-object v9, p3

    .line 880
    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "subject"

    .line 884
    invoke-virtual {v7, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    if-eqz v4, :cond_3

    const-string v0, "type"

    .line 888
    invoke-virtual {v7, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    if-eqz v5, :cond_4

    .line 892
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "conversationType"

    invoke-virtual {v7, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    if-eqz v6, :cond_5

    const-string v0, "fromAddress"

    .line 896
    invoke-virtual {v7, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 899
    :cond_5
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "createthread"

    invoke-virtual {v7, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "false"

    const-string v3, "force_createthread"

    if-eqz p8, :cond_6

    .line 902
    invoke-virtual {v7, v3, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 904
    :cond_6
    invoke-virtual {v7, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    if-eqz p1, :cond_8

    .line 908
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 909
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 910
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    const-string v5, "recipient"

    .line 912
    invoke-virtual {v7, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_8
    if-eqz p12, :cond_9

    const-string v3, "no_recipients"

    .line 917
    invoke-virtual {v7, v3, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9
    if-nez p13, :cond_a

    const-string v3, "updateSession"

    .line 921
    invoke-virtual {v7, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 924
    :cond_a
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId imConversationId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "im_conversation_id"

    .line 926
    invoke-virtual {v7, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 929
    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrCreateThreadId imContributionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "im_contribution_id"

    .line 931
    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 934
    :cond_c
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 937
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object p1, v3

    move-object p2, v0

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    invoke-static/range {p0 .. p6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_d

    .line 939
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 940
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_3

    :cond_d
    const-string v0, "getOrCreateThreadId returned no rows!"

    .line 942
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v1

    :goto_2
    if-eqz v3, :cond_f

    .line 944
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    if-eqz v3, :cond_e

    .line 937
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    move-wide v4, v1

    .line 945
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOrCreateThreadId() : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    if-eqz p7, :cond_11

    cmp-long v0, v4, v1

    if-eqz v0, :cond_10

    goto :goto_7

    .line 950
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    return-wide v4
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ)J"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 857
    invoke-static/range {v0 .. v13}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "IZ)J"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    .line 848
    invoke-static/range {v0 .. v11}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)J"
        }
    .end annotation

    const-string v0, "TP/BnRUtils"

    const-string v1, "getOrCreateThreadId "

    .line 803
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "content://mms-sms/threadID"

    .line 805
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 806
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "createthread"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p3, :cond_0

    .line 808
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "usingmode"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p1, :cond_2

    .line 812
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 813
    invoke-static {p3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    invoke-static {p3}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string v2, "recipient"

    .line 816
    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 820
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-wide/16 v1, -0x1

    .line 823
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_3

    .line 825
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 826
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const-string p1, "getOrCreateThreadId returned no rows!"

    .line 828
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v3, v1

    :goto_1
    if-eqz p0, :cond_5

    .line 830
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_4

    .line 823
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    move-wide v3, v1

    .line 831
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getOrCreateThreadId() : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    if-eqz p2, :cond_6

    cmp-long p0, v3, v1

    if-nez p0, :cond_6

    const-string p0, "Unable to find or allocate a thread ID."

    .line 837
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-wide v3
.end method

.method static getRcsConversationInfo(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    if-eqz p0, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentValues;

    .line 691
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getSimImsiSessionValuePairs()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentValues;

    const-string v1, "session_id"

    .line 692
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 694
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getRcsImSession(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/session/"

    .line 1702
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    const-string v2, "chat_id"

    .line 1703
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "-1"

    const-string v2, "4"

    .line 1705
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    .line 1707
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "status != ? AND status != ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1708
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1709
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 1710
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1711
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1707
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0

    :cond_1
    if-eqz p0, :cond_2

    .line 1713
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private static getRecipientCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "canonical_addresses"

    const-string v1, "_id"

    const-string v3, "address"

    .line 554
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 557
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 558
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v1, 0x0

    .line 561
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 562
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_1

    .line 554
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 566
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 567
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecipientCache() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TP/BnRUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getRunningPid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 2649
    sget v0, Lcom/android/providers/telephony/backup/BnRPreferences;->INVALID_PID:I

    :try_start_0
    const-string v1, "activity"

    .line 2651
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 2653
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2655
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2656
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2657
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to check running pid : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/BnRUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static declared-synchronized getThreadIdByBackupThreadId(Landroid/content/Context;JI)J
    .locals 3

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "xms"

    .line 776
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 777
    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide p0

    .line 781
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->getAddressList()Ljava/util/LinkedHashSet;

    move-result-object p1

    const/4 p2, 0x1

    .line 782
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-lez p2, :cond_1

    .line 785
    sget-object p2, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    :cond_1
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getThreadIdByBackupThreadIdMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 384
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getThreadIdBySessionId(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZ)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    const-class v15, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v15

    :try_start_0
    const-string v1, "im"

    .line 595
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 596
    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    return-wide v0

    .line 605
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mImThreadTableInfo:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {v1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getAddressList()Ljava/util/LinkedHashSet;

    move-result-object v5

    .line 608
    invoke-virtual {v1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getImType()I

    move-result v6

    .line 609
    invoke-virtual {v1}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->getConversationType()I

    move-result v7

    move v11, v7

    goto :goto_0

    :cond_1
    move-object v5, v2

    move v6, v4

    move v11, v6

    :goto_0
    if-nez v5, :cond_2

    .line 613
    sget-object v7, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    .line 614
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 616
    sget-object v5, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;

    invoke-virtual {v5}, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->getAddressList()Ljava/util/LinkedHashSet;

    move-result-object v5

    :cond_2
    const-wide/16 v7, -0x1

    .line 620
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    const-wide/16 v16, 0x0

    if-eqz v9, :cond_4

    invoke-static {v11}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez p8, :cond_3

    move-object/from16 v9, p4

    .line 622
    invoke-static {v0, v5, v6, v11, v9}, Lcom/android/providers/telephony/backup/BnRUtils;->queryImThreadIdEmptySessionId(Landroid/content/Context;Ljava/util/LinkedHashSet;IILjava/lang/String;)J

    move-result-wide v6

    move-wide v7, v6

    goto :goto_1

    :cond_3
    move-object/from16 v9, p4

    :goto_1
    cmp-long v6, v7, v16

    if-gtz v6, :cond_5

    move v12, v10

    goto :goto_2

    :cond_4
    move-object/from16 v9, p4

    .line 628
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 629
    invoke-static {v0, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->queryThreadIdBySessionId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    :cond_5
    move/from16 v12, p5

    :goto_2
    cmp-long v6, v7, v16

    if-gtz v6, :cond_8

    .line 636
    invoke-static {v1, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->getImConversationContributionId(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 638
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 639
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    move-object v6, v2

    goto :goto_3

    :cond_6
    move-object v6, v2

    move-object v13, v6

    :goto_3
    if-eqz v5, :cond_8

    .line 644
    invoke-static {v11}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-ge v1, v10, :cond_7

    const-string v1, ""

    .line 646
    invoke-virtual {v5, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move v14, v10

    goto :goto_4

    :cond_7
    move v14, v4

    :goto_4
    const-string v7, ""

    const/4 v8, 0x1

    const-string v10, "im"

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v13

    move v9, v12

    move-object/from16 v12, v18

    move v13, v14

    move/from16 v14, p7

    .line 649
    invoke-static/range {v1 .. v14}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v7

    :cond_8
    cmp-long v0, v7, v16

    if-lez v0, :cond_9

    .line 656
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    const-string v1, "im"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    :cond_9
    monitor-exit v15

    return-wide v7

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0
.end method

.method public static declared-synchronized getThreadIdOnlyBackupMap(Ljava/lang/String;J)J
    .locals 1

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 792
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 793
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 794
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    .line 797
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 719
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 720
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    goto :goto_0

    .line 722
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :goto_0
    if-nez p0, :cond_1

    .line 726
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    const-string v2, "threads"

    const-string v3, "_id"

    const-string v4, "recipient_ids"

    const-string v5, "display_recipient_ids"

    const-string v6, "is_mute"

    const-string v7, "pin_to_top"

    const-string v8, "classification"

    .line 729
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_7

    .line 732
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 733
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->getRecipientCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object p0

    :cond_2
    const/4 v2, 0x0

    .line 736
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x2

    .line 737
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 738
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .line 739
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 742
    :cond_3
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 743
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 744
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 746
    array-length v7, v5

    :goto_1
    if-ge v2, v7, :cond_5

    aget-object v8, v5, v2

    .line 747
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 748
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 749
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    .line 754
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x4

    .line 755
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v7, 0x5

    .line 756
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 757
    new-instance v8, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;

    invoke-direct {v8, v6, v2, v5, v7}, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;-><init>(Ljava/util/LinkedHashSet;III)V

    .line 758
    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_6

    .line 729
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 761
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p0

    .line 762
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "TP/BnRUtils"

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImThreadInfo() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_8
    :goto_4
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getThreadTableInfo()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 770
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadTableInfo:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized initMmsMIdByBackupMId()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 1012
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1013
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    goto :goto_0

    .line 1015
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initTheadIdByBackupThreadIdMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 388
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    goto :goto_0

    .line 391
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mThreadIdByBackupThreadIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initThreadTableInfo(Landroid/content/Context;Z)I
    .locals 4

    const-string v0, "TP/BnRUtils"

    const-string v1, "updateThreadIsMute()"

    .line 2173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 2178
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v1, 0x0

    .line 2179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_mute"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "threads"

    const-string v2, "is_mute > 0"

    const/4 v3, 0x0

    .line 2182
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz p1, :cond_0

    const-string p1, "im_threads"

    .line 2185
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/2addr v1, p0

    :cond_0
    return v1
.end method

.method private static varargs is(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1673
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1677
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1678
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static isAtt(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ATT"

    const-string v1, "APP"

    .line 1691
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCmasAddress(Ljava/lang/String;)Z
    .locals 1

    .line 2508
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#CMAS#"

    .line 2509
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#Emergency Alert#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1874
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const-string v1, "im"

    .line 1875
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 1876
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->sChatColumnsFilter:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1877
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->sChatColumnsFilter:Landroid/util/SparseArray;

    invoke-static {p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->loadColumnFilter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1879
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sChatColumnsFilter:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sChatColumnsFilter:Landroid/util/SparseArray;

    .line 1880
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    const-string v1, "ft"

    .line 1881
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1882
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->sFtColumnsFilter:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1883
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->sFtColumnsFilter:Landroid/util/SparseArray;

    invoke-static {p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->loadColumnFilter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1885
    :cond_3
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sFtColumnsFilter:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sFtColumnsFilter:Landroid/util/SparseArray;

    .line 1886
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3

    :cond_5
    const-string v1, "im_threads"

    .line 1887
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1888
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->sImThreadsColumnsFilter:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 1889
    sget-object p1, Lcom/android/providers/telephony/backup/BnRUtils;->sImThreadsColumnsFilter:Landroid/util/SparseArray;

    invoke-static {p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->loadColumnFilter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1891
    :cond_6
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sImThreadsColumnsFilter:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sImThreadsColumnsFilter:Landroid/util/SparseArray;

    .line 1892
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    return v3

    :cond_8
    return v4
.end method

.method public static isDoingInitSync()Z
    .locals 1

    .line 2529
    sget-boolean v0, Lcom/android/providers/telephony/backup/BnRUtils;->sDoingInitSync:Z

    return v0
.end method

.method public static isDoingSCloudRestore(Landroid/content/Context;)Z
    .locals 2

    .line 2533
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getPid(Landroid/content/Context;)I

    move-result v0

    .line 2534
    sget v1, Lcom/android/providers/telephony/backup/BnRPreferences;->INVALID_PID:I

    if-eq v0, v1, :cond_0

    const-string v1, "com.samsung.android.scloud"

    .line 2535
    invoke-static {p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->getRunningPid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2536
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->resetBnRStatus(Landroid/content/Context;)V

    .line 2538
    :cond_0
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->isAllRestoreFinished(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isDoingSsmRestore(Landroid/content/Context;)Z
    .locals 2

    .line 2554
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-eq v0, v1, :cond_0

    const-string v0, "com.sec.android.easyMover"

    .line 2555
    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2557
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2560
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDoingSspRestore(Landroid/content/Context;)Z
    .locals 2

    .line 2568
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-eq v0, v1, :cond_0

    const-string v0, "com.wssnps"

    .line 2569
    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2571
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2574
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDuplication(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8

    .line 1042
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1044
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transaction_id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "transaction_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " AND date="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p0, 0x0

    move-object v1, p1

    .line 1046
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 1047
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 1046
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1050
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1052
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDuplication() : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TP/BnRUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return p0
.end method

.method public static isInternalRestore()Z
    .locals 1

    .line 2546
    sget-boolean v0, Lcom/android/providers/telephony/backup/BnRUtils;->sInternalRestore:Z

    return v0
.end method

.method private static isKor(Ljava/lang/String;)Z
    .locals 12

    const-string v0, "SKC"

    const-string v1, "KTC"

    const-string v2, "LUC"

    const-string v3, "KOO"

    const-string v4, "SKT"

    const-string v5, "SKO"

    const-string v6, "KTT"

    const-string v7, "KTO"

    const-string v8, "LGT"

    const-string v9, "LUO"

    const-string v10, "K06"

    const-string v11, "K01"

    .line 1686
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOnlyReplaceDB4Test()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isOpenGroupChat(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

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

.method public static isPhoneAndServerTime(Ljava/lang/String;Z)Z
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "phone,server"

    .line 346
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method private static isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    .line 2630
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 2632
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2634
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2635
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to check process : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/BnRUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method private static isRestoringMessage(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "TP/BnRUtils"

    const/4 v1, 0x0

    .line 2612
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.sec.android.easyMover.BnRProvider/Restoring/com.android.providers.telephony"

    .line 2613
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messaing isRestoring : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BnRProvider query fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "TRUE"

    .line 2620
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isServerTime(Ljava/lang/String;Z)Z
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "phone"

    .line 356
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "server"

    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method private static isSmartSwitch(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.sec.android.easyMover"

    .line 1059
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.wssnps"

    .line 1060
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSsmRestoringMessage(Landroid/content/Context;)Z
    .locals 2

    .line 2591
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-ne v0, v1, :cond_0

    .line 2592
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->isRestoringMessage(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2593
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2596
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSspRestoringMessage(Landroid/content/Context;)Z
    .locals 2

    .line 2600
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-ne v0, v1, :cond_0

    .line 2601
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->isRestoringMessage(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2602
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2605
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSupportOgcActive()Z
    .locals 2

    const-string v0, "ro.csc.sales_code"

    .line 1695
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->isKor(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/providers/telephony/backup/BnRUtils;->isAtt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSupportOgcSessionUpdate()Z
    .locals 1

    .line 2691
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableCarrierServerSync()Z

    move-result v0

    return v0
.end method

.method public static isSupportTwoPhoneBnR()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized loadBackupThreads(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 2294
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 2295
    monitor-exit v0

    return-void

    .line 2298
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;

    .line 2299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2300
    invoke-static {p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->loadRecipientsMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v3, "threads"

    const-string v2, "_id"

    const-string v4, "recipient_ids"

    const-string v5, "classification"

    const-string v6, "pin_to_top"

    .line 2302
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2305
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "_id"

    .line 2306
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_0

    .line 2310
    :cond_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "classification"

    .line 2312
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_0

    .line 2316
    :cond_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "pin_to_top"

    .line 2318
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    goto :goto_0

    .line 2322
    :cond_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2324
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v6, "recipient_ids"

    .line 2325
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 2327
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2328
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, " "

    .line 2329
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 2330
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2331
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2332
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "TP/BnRUtils"

    .line 2336
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadBackupThreads() recipientIds is empty, id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    .line 2344
    :cond_7
    new-instance v6, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;

    invoke-direct {v6}, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;-><init>()V

    .line 2345
    iput-object v5, v6, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->addrs:Ljava/util/Set;

    .line 2346
    iput v3, v6, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->classification:I

    .line 2347
    iput v4, v6, Lcom/android/providers/telephony/backup/BnRUtils$BackupThreadInfo;->pinToTop:I

    .line 2348
    sget-object v3, Lcom/android/providers/telephony/backup/BnRUtils;->sBackupThreadInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_8
    if-eqz p0, :cond_a

    .line 2350
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_9

    .line 2302
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    :try_start_7
    const-string p0, "TP/BnRUtils"

    const-string v1, "loadBackupThreads(): load threads failed"

    .line 2351
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2353
    :cond_a
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static loadColumnFilter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1863
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA table_info("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "name"

    .line 1865
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 1867
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 1863
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "TP/BnRUtils"

    const-string v2, "loadColumnFilter(): load columns failed!"

    .line 1868
    invoke-static {p1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public static loadImThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz v0, :cond_17

    const-string v1, "im_threads"

    const-string v9, "conversation_type"

    .line 406
    invoke-static {v0, v1, v9}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    const-string v11, "sim_imsi"

    .line 409
    invoke-static {v0, v1, v11}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const-string v13, "im_conversation_id"

    .line 412
    invoke-static {v0, v1, v13}, Lcom/android/providers/telephony/backup/BnRUtils;->isColumnSupport(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    const-string v1, "normal_thread_id"

    const-string v2, "recipient_ids"

    const-string v3, "display_recipient_ids"

    const-string v4, "im_type"

    const-string v5, "alias"

    const-string v6, "is_mute"

    const-string v7, "pin_to_top"

    const-string v8, "opened"

    .line 417
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 419
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v10, :cond_0

    .line 421
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v15, "sim_imsi2"

    const-string v8, "session_id2"

    const-string v7, "session_id"

    if-eqz v12, :cond_1

    .line 424
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v6, "session_uri2"

    const-string v5, "im_contribution_id2"

    const-string v4, "im_conversation_id2"

    const-string v3, "session_uri"

    const-string v1, "im_contribution_id"

    if-eqz v14, :cond_2

    .line 430
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :try_start_0
    const-string v2, "im_threads"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v23, v5

    move-object/from16 v5, v17

    move-object/from16 v24, v6

    move-object/from16 v6, v18

    move-object/from16 v25, v7

    move-object/from16 v7, v19

    move/from16 v16, v12

    move-object v12, v8

    move-object/from16 v8, v20

    .line 439
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "threads"

    const-string v1, "_id"

    .line 441
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v18, v14

    move-object v14, v8

    move-object/from16 v8, v17

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 443
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 444
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v14, :cond_12

    const-string v4, "normal_thread_id"

    .line 448
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "recipient_ids"

    .line 449
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_recipient_ids"

    .line 450
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "im_type"

    .line 451
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "alias"

    .line 452
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v3, "is_mute"

    .line 453
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v19, v1

    :try_start_4
    const-string v1, "pin_to_top"

    .line 454
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v20, v2

    const-string v2, "opened"

    .line 455
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 456
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v10

    .line 457
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 458
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 459
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 460
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    .line 461
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 462
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v21, v12

    .line 463
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v29, v11

    move-object/from16 v11, v23

    .line 464
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move/from16 v23, v11

    move-object/from16 v11, v22

    move-object/from16 v22, v0

    .line 465
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v30, v11

    move-object/from16 v11, v24

    .line 466
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move/from16 v24, v11

    .line 468
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/backup/BnRUtils;->getRecipientCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object v11

    .line 470
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-eqz v31, :cond_13

    move/from16 v31, v0

    .line 471
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v33, v12

    move-object/from16 v32, v13

    int-to-long v12, v0

    .line 472
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 474
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move/from16 v43, v4

    .line 477
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 479
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move/from16 v44, v5

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 482
    array-length v5, v0

    move/from16 v45, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v34, v0, v6

    move-object/from16 p0, v0

    .line 483
    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 484
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 485
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_6
    move/from16 v44, v5

    move/from16 v45, v6

    .line 490
    :cond_7
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 491
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 492
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 493
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 494
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v25, :cond_8

    move/from16 v5, v26

    .line 495
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v26, v1

    goto :goto_3

    :cond_8
    move/from16 v5, v26

    move/from16 v26, v1

    const/4 v6, 0x0

    .line 497
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v46, v2

    .line 498
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move/from16 v47, v3

    .line 499
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_9

    .line 501
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 p0, v5

    move-object/from16 v5, v32

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v32, v7

    move/from16 v3, v33

    .line 502
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v33, v3

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v8

    move/from16 v7, v31

    .line 503
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v31, v7

    move-object/from16 v7, v30

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move/from16 p0, v5

    move-object/from16 v3, v22

    move-object/from16 v5, v32

    move/from16 v32, v7

    move/from16 v22, v8

    move-object/from16 v7, v30

    :goto_4
    move/from16 v8, v29

    .line 505
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    if-eqz v16, :cond_a

    move-object/from16 v48, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v48

    goto :goto_5

    :cond_a
    move-object/from16 v29, v2

    move-object/from16 v2, v30

    :goto_5
    if-eqz v16, :cond_b

    move-object/from16 v48, v29

    move/from16 v29, v8

    move-object/from16 v8, v48

    goto :goto_6

    :cond_b
    move/from16 v29, v8

    move-object/from16 v8, v30

    .line 506
    :goto_6
    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move/from16 v8, v21

    move/from16 v21, v10

    .line 508
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v10, v28

    move/from16 v28, v8

    if-eqz v18, :cond_c

    .line 510
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v8, v23

    move-object/from16 v23, v5

    .line 511
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v5, v24

    move-object/from16 v24, v3

    .line 512
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move/from16 v8, v23

    move-object/from16 v23, v5

    move/from16 v5, v24

    move-object/from16 v24, v3

    :goto_7
    move/from16 v3, v27

    .line 514
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v16, :cond_d

    move-object/from16 v48, v27

    move-object/from16 v27, v2

    move-object/from16 v2, v48

    goto :goto_8

    :cond_d
    move-object/from16 v27, v2

    move-object/from16 v2, v30

    :goto_8
    if-eqz v16, :cond_e

    move-object/from16 v48, v27

    move/from16 v27, v3

    move-object/from16 v3, v48

    goto :goto_9

    :cond_e
    move/from16 v27, v3

    move-object/from16 v3, v30

    .line 515
    :goto_9
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    if-nez v6, :cond_11

    if-eq v0, v2, :cond_f

    const/4 v3, 0x3

    if-ne v0, v3, :cond_11

    .line 520
    :cond_f
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v6, v20

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v2, 0x4

    :cond_10
    move/from16 v41, v2

    move-object v2, v6

    goto :goto_a

    :cond_11
    move-object/from16 v2, v20

    move/from16 v41, v6

    .line 526
    :goto_a
    new-instance v3, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v0

    move-object/from16 v42, v1

    invoke-direct/range {v34 .. v42}, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;-><init>(Ljava/util/LinkedHashSet;ILjava/lang/String;IIIILjava/util/ArrayList;)V

    .line 528
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v2

    move-object/from16 v30, v7

    move-object/from16 v13, v23

    move/from16 v1, v26

    move/from16 v0, v31

    move/from16 v7, v32

    move/from16 v12, v33

    move/from16 v4, v43

    move/from16 v6, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v26, p0

    move/from16 v23, v8

    move/from16 v8, v22

    move-object/from16 v22, v24

    move/from16 v24, v5

    move/from16 v5, v44

    move/from16 v48, v28

    move/from16 v28, v10

    move/from16 v10, v21

    move/from16 v21, v48

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_12
    move-object/from16 v19, v1

    :cond_13
    if-eqz v19, :cond_14

    .line 531
    :try_start_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_14
    if-eqz v14, :cond_17

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v19, v1

    :goto_b
    move-object v1, v0

    if-eqz v19, :cond_15

    .line 439
    :try_start_7
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_c
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v14, v8

    :goto_d
    move-object v1, v0

    if-eqz v14, :cond_16

    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_e
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImThreadInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/BnRUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_f
    return-void
.end method

.method private static declared-synchronized loadRecipientsMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 2268
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :try_start_1
    const-string v2, "canonical_addresses"

    const-string v1, "_id"

    const-string v3, "address"

    .line 2271
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    if-eqz p0, :cond_4

    .line 2274
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_id"

    .line 2275
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    .line 2279
    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "address"

    .line 2280
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    .line 2284
    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2286
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 2271
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1

    :cond_4
    if-eqz p0, :cond_5

    .line 2288
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_5
    const-string p0, "TP/BnRUtils"

    const-string p1, "loadRecipientsMap(): load recipients failed"

    .line 2289
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2291
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method private static markAllImThreadtoDelete(Landroid/content/Context;)I
    .locals 4

    const-string v0, "TP/BnRUtils"

    const-string v1, "markAllImThreadtoDelete()"

    .line 1538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1545
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/16 v1, 0x9

    .line 1546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "im_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "im_threads"

    const-string v2, " normal_thread_id NOT IN (select thread_id from (SELECT _id, thread_id FROM im where thread_id NOT NULL UNION SELECT _id, thread_id FROM ft where thread_id NOT NULL) GROUP BY thread_id)"

    const/4 v3, 0x0

    .line 1547
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static messageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "TP/BnRUtils"

    const-string v1, "MessageDbToZip start"

    .line 1089
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 1101
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1102
    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1103
    :try_start_2
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v2, 0x8

    .line 1105
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 1106
    invoke-static {v5, p0, v1}, Lcom/android/providers/telephony/backup/BnRUtils;->compress(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1115
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 1116
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move p0, v3

    .line 1123
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move p0, v3

    .line 1130
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move v3, p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v5, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v2

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p1, v2

    move-object v5, p1

    :goto_2
    move-object v2, v4

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    goto :goto_6

    :catch_5
    move-exception p0

    move-object p1, v2

    move-object v5, p1

    .line 1109
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageDbToZip() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v5, :cond_1

    .line 1115
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 1116
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_1
    if-eqz p1, :cond_2

    .line 1123
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_2
    if-eqz v2, :cond_3

    .line 1130
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1136
    :catch_8
    :cond_3
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MessageDbToZip end : bReturn : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_4
    move-exception p0

    move-object v4, v2

    :goto_5
    move-object v2, v5

    :goto_6
    if-eqz v2, :cond_4

    .line 1115
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 1116
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_4
    if-eqz p1, :cond_5

    .line 1123
    :try_start_c
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_5
    if-eqz v4, :cond_6

    .line 1130
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 1135
    :catch_b
    :cond_6
    throw p0
.end method

.method public static normalTimestamp(J)J
    .locals 3

    .line 1756
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->DIGITS:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1757
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->DIGITS:[J

    aget-wide v1, v1, v0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1763
    :goto_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->DIGITS:[J

    rsub-int/lit8 v0, v0, 0xd

    aget-wide v0, v1, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static notifyChange(Landroid/content/Context;)V
    .locals 3

    .line 1082
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1083
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChangeMmsSmsContentUri(Landroid/content/Context;)V

    const-string v1, "content://mms-sms/conversations/"

    .line 1084
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 1085
    invoke-static {v0, p0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static notifyChangeRestoreState(Landroid/content/Context;)V
    .locals 2

    .line 2676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://mms-sms/processing-restoremsg"

    .line 2677
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static notifyChangeRestoreState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "com.samsung.android.scloud"

    .line 2670
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2671
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 2813
    invoke-static {p0, v0, p1}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db_replacing"

    .line 2818
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "DB_REPLACE"

    .line 2819
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "file_parsing"

    .line 2820
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "FILE"

    .line 2821
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "/"

    .line 2824
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2826
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "%-10s %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/BnR"

    .line 2827
    invoke-static {p1, p0}, Lcom/android/providers/telephony/Logger;->printFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static queryImThreadIdEmptySessionId(Landroid/content/Context;Ljava/util/LinkedHashSet;IILjava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-string v0, "content://mms-sms/address_ids"

    .line 970
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 973
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 974
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "recipient"

    .line 977
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 982
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "recipient_ids"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 984
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 985
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 982
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 987
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v0, "TP/BnRUtils"

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_9

    const-string v4, "-1"

    .line 989
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    :cond_5
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    .line 995
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x2

    .line 996
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    aput-object p4, v4, p1

    .line 998
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_2
    const-string p1, "SELECT normal_thread_id from im_threads WHERE display_recipient_ids = ?  AND (session_id is null OR session_id = \"\") AND im_type in(?) AND conversation_type in(?) AND sim_imsi = ?"

    .line 999
    invoke-virtual {p0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_7

    .line 1001
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1002
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_6

    .line 999
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1

    :cond_7
    :goto_4
    if-eqz p0, :cond_8

    .line 1004
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 1005
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "groupChatThreadId with empty session_id by recipients e : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1005
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return-wide v2

    :cond_9
    :goto_6
    const-string p0, "recipientId is not created yet"

    .line 990
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method private static queryThreadIdBySessionId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8

    .line 576
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 578
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session_id=\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 p0, -0x1

    :try_start_0
    const-string v1, "im_threads"

    const-string v2, "normal_thread_id"

    .line 579
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 581
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 582
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 579
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 584
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "im_thread query error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/BnRUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-wide p0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1471
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BnRUtils rename exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/BnRUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static requestAsyncEndChat(Landroid/content/Context;)V
    .locals 10

    const-string v0, "TP/BnRUtils"

    const-string v1, "requestAsyncEndChat()"

    .line 1551
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "session_id"

    .line 1556
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "im_threads"

    const-string v5, "im_type = 3"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 1559
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 1560
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_0

    .line 1556
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p0

    :cond_1
    if-eqz v2, :cond_2

    .line 1562
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1564
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAsyncEndChat(), endChatList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1569
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1571
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1573
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.coreapps.chat.intent.ACTION_ASYNC_END_CHAT_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.coreapps"

    const-string v6, "com.samsung.android.coreapps.chat.transaction.FreeMessageService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "extra_msg_id"

    .line 1575
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "extra_request_close_type"

    const/4 v3, 0x1

    .line 1576
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_async_end_chat_data"

    .line 1577
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xa

    const-string v2, "extra_retry_count"

    .line 1578
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "service_id"

    .line 1579
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1581
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static restoreFinish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1067
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRUtils;->isSmartSwitch(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static restoreFinish(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "restoreFinish called"

    .line 1071
    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->printBnRFileLogger(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableSmsClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->sendBroadcastFinishRestoreMessage(Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1076
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->setRestoreStatusNone()V

    .line 1078
    :cond_1
    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/BnRUtils;->sendBroadcastStartSyncMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static sendBroadcastDeleteAppDatabase(Landroid/content/Context;)V
    .locals 3

    .line 2493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.messaging.intent.action.CLEAR_DB_BEFORE_TP_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2494
    sget-object v1, Lcom/android/providers/telephony/secutil/SecProviderUtil;->MMS_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tp_bnr_option"

    const-string v2, "db_replacing"

    .line 2495
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.messaging.permission.FINISH_RESTORE_MESSAGE"

    .line 2496
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendBroadcastFinishRestoreMessage(Landroid/content/Context;)V
    .locals 2

    .line 2487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.messaging.intent.action.FINISH_RESTORE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2488
    sget-object v1, Lcom/android/providers/telephony/secutil/SecProviderUtil;->MMS_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.messaging.permission.FINISH_RESTORE_MESSAGE"

    .line 2489
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendBroadcastStartSyncMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.messaging.intent.action.TP_SYNC_FOR_RESTORE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2501
    sget-object v1, Lcom/android/providers/telephony/secutil/SecProviderUtil;->MMS_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tp_bnr_option"

    .line 2502
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sync_only"

    const/4 v1, 0x1

    .line 2503
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.samsung.android.messaging.permission.FINISH_RESTORE_MESSAGE"

    .line 2504
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static setDoingInitSync(Z)V
    .locals 0

    .line 2525
    sput-boolean p0, Lcom/android/providers/telephony/backup/BnRUtils;->sDoingInitSync:Z

    return-void
.end method

.method static setInternalRestore(Z)V
    .locals 0

    .line 2542
    sput-boolean p0, Lcom/android/providers/telephony/backup/BnRUtils;->sInternalRestore:Z

    return-void
.end method

.method public static declared-synchronized setMmsMIdIdByBackupMId(JJ)V
    .locals 3

    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils;

    monitor-enter v0

    .line 1020
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1021
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    .line 1024
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1025
    monitor-exit v0

    return-void

    .line 1027
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils;->mMmsMIdByBackupMId:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setRcsConversationInfo(Lorg/json/JSONObject;Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 706
    invoke-static {p1, p2}, Lcom/android/providers/telephony/backup/BnRUtils;->getRcsConversationInfo(Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "im_conversation_id"

    .line 709
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "im_contribution_id"

    .line 711
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "session_uri"

    .line 713
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method static setRestoreStatusNone()V
    .locals 1

    .line 2586
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2587
    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-void
.end method

.method static setRestoreStatusRunning()V
    .locals 2

    .line 2578
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sget-object v1, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->READY:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    if-ne v0, v1, :cond_0

    .line 2579
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    goto :goto_0

    .line 2581
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    :goto_0
    return-void
.end method

.method static setSsmRestoreStatus(Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;)V
    .locals 0

    .line 2550
    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSsmRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-void
.end method

.method static setSspRestoreStatus(Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;)V
    .locals 0

    .line 2564
    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->sSspRestoreStatus:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-void
.end method

.method static setThreadInfoValue(Landroid/content/ContentValues;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1721
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "opened"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1725
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportOgcActive()Z

    move-result v0

    const-string v1, "TP/BnRUtils"

    const-string v2, "conversation_type"

    const-string v3, "im_type"

    if-eqz v0, :cond_0

    .line 1726
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p3, "imContributionId, sessionUri are valid"

    .line 1727
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1729
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "session_uri"

    .line 1730
    invoke-virtual {p0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1731
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p3, "empty sessionId - reserved message"

    .line 1732
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1734
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p1, p5, :cond_3

    if-ne p2, p4, :cond_3

    if-eqz p6, :cond_2

    .line 1738
    invoke-virtual {p6, p3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    .line 1739
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mRcsImSession already exist, sessionId : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1741
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1744
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1745
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1747
    :cond_3
    invoke-static {p2}, Lcom/android/providers/telephony/backup/BnRUtils;->isOpenGroupChat(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1749
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1750
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1359
    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mSecurityPassword:Ljava/lang/String;

    const-string v0, "SHA-256"

    .line 1361
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 1362
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/16 p0, 0x10

    new-array v1, p0, [B

    .line 1364
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "AES/CBC/PKCS5Padding"

    .line 1365
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mCipher:Ljavax/crypto/Cipher;

    .line 1366
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/android/providers/telephony/backup/BnRUtils;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method

.method public static toJSON(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1480
    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/BnRUtils;->toJSON(Landroid/database/Cursor;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Landroid/database/Cursor;I)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1484
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 1485
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1487
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    .line 1488
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 1494
    :cond_0
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 1520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such column : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TP/BnRUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1496
    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1497
    invoke-static {v6, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 1498
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1516
    :cond_2
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    if-ne p1, v8, :cond_4

    .line 1506
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 1508
    :cond_4
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method static updateClassificationThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "TP/BnRUtils"

    const-string v1, "updateClassificationThreads(): Start"

    .line 2370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2372
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2373
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getClassificationThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2372
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2374
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2375
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getClassificationThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object p0

    .line 2374
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2377
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "updateClassificationThreads(): End, Nothing to update"

    .line 2378
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2382
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClassificationThreads(): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threads to update"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    new-instance p0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "classification"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "threads"

    .line 2386
    invoke-virtual {p1, v3, p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "updateClassificationThreads(): End"

    .line 2387
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static updateConversationType(Landroid/content/Context;)I
    .locals 24

    .line 1585
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x3

    .line 1594
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 1595
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    .line 1597
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x4

    .line 1598
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "conversation_type"

    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "im_threads"

    const-string v10, "normal_thread_id IN (SELECT _id FROM threads) AND im_type = ? AND conversation_type = ?"

    .line 1599
    invoke-virtual {v0, v8, v4, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    .line 1600
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateConversationType 1) cnt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TP/BnRUtils"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/backup/BnRUtils;->getRcsImSession(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v12

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/String;

    .line 1610
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 1611
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v6

    .line 1612
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v1

    .line 1613
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v3

    .line 1614
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v7

    .line 1617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT normal_thread_id,session_id,im_contribution_id,session_uri,session_id2,im_contribution_id2,session_uri2 FROM im_threads WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "conversation_type IN (?,?) OR (conversation_type = ? AND im_type IN (?,?))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1626
    invoke-virtual {v0, v5, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_0
    const-string v6, "normal_thread_id"

    .line 1628
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "session_id"

    .line 1629
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v13, "im_contribution_id"

    .line 1630
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "session_uri"

    .line 1631
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "session_id2"

    .line 1632
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v3, "im_contribution_id2"

    .line 1633
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v1, "session_uri2"

    .line 1634
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1636
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1637
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move/from16 p0, v6

    .line 1638
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1639
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1640
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1641
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1642
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1643
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v12, :cond_0

    .line 1646
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    :goto_1
    move/from16 v6, p0

    goto :goto_0

    .line 1648
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportOgcActive()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1649
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    goto :goto_1

    .line 1651
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportOgcActive()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1652
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    goto :goto_1

    .line 1654
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 1657
    :cond_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_4

    .line 1626
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1

    :cond_5
    if-eqz v5, :cond_6

    .line 1661
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1663
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal_thread_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 1664
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "im_type"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x3

    .line 1665
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    .line 1666
    invoke-virtual {v0, v8, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConversationType 2) cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static updateFtStatus(Landroid/content/Context;)I
    .locals 4

    .line 2257
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 2259
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/16 v1, 0xa

    .line 2260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ft"

    const-string v2, "status == 3"

    const/4 v3, 0x0

    .line 2261
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFtStatus() cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/BnRUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static updateImFtSessions(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2741
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2742
    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->getGroupChatThread(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2744
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "TP/BnRUtils"

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2745
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 2746
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    if-eqz p2, :cond_0

    .line 2750
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    .line 2752
    :cond_0
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2756
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz p2, :cond_1

    .line 2763
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 2764
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2766
    iget-object v7, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 2767
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_2

    .line 2769
    :cond_1
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 2770
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2772
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 2773
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v7, v9

    .line 2776
    :goto_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "session_id"

    .line 2777
    invoke-virtual {v9, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v4, "thread_id"

    invoke-virtual {v9, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    move-object/from16 p0, v2

    const-string v2, "im"

    move-object/from16 p1, v3

    const-string v3, "session_id=?"

    .line 2782
    invoke-virtual {v1, v2, v9, v3, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    .line 2785
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "chat_session_id"

    .line 2786
    invoke-virtual {v3, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "chat_session_id=?"

    const-string v9, "ft"

    .line 2790
    invoke-virtual {v1, v9, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v6, v3

    .line 2793
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updatedImFt:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", sessionId: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", threadId:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " where : "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v2, :cond_2

    if-lez v3, :cond_5

    .line 2797
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2798
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2801
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object/from16 p0, v2

    move-object/from16 p1, v3

    const/16 v16, 0x0

    :cond_5
    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 2807
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSessions im:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSessions updatedThreads :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static updatePinToTopImThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "TP/BnRUtils"

    const-string v1, "updatePinToTopImThreads(): Start"

    .line 2413
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2415
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2416
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2415
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2417
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2418
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object p0

    .line 2417
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2420
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "updatePinToTopImThreads(): End, Nothing to update"

    .line 2421
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2425
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePinToTopImThreads(): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threads to update"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    new-instance p0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pin_to_top"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal_thread_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "im_threads"

    .line 2430
    invoke-virtual {p1, v3, p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "updatePinToTopImThreads(): End"

    .line 2431
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static updatePinToTopThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "TP/BnRUtils"

    const-string v1, "updatePinToTopThreads(): Start"

    .line 2391
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2393
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2394
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2393
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2395
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2396
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getPinToTopThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object p0

    .line 2395
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2398
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "updatePinToTopThreads(): End, Nothing to update"

    .line 2399
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2403
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePinToTopThreads(): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threads to update"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    new-instance p0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pin_to_top"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "threads"

    .line 2408
    invoke-virtual {p1, v3, p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "updatePinToTopThreads(): End"

    .line 2409
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static updateRcsThreads(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "TP/BnRUtils"

    if-nez p0, :cond_0

    const-string p0, "updateRcsThreads(): failed, db is null"

    .line 2696
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "updateRcsThreads(): Start"

    .line 2700
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const/16 v2, 0x9

    .line 2702
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "im_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    const-string v3, "im_threads"

    const-string v4, "(im_type = 3 OR im_type = 2) AND normal_thread_id NOT IN (SELECT DISTINCT thread_id FROM im where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM ft where thread_id NOT NULL)"

    .line 2703
    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 2704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRcsThreads(): End, cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static updateRestoredThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .locals 4

    const-string v0, "TP/BnRUtils"

    if-nez p1, :cond_0

    const-string p0, "updateRestoredThreads(): failed, db is null"

    .line 2436
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "updateRestoredThreads(): Start"

    .line 2440
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2442
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2443
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2442
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2444
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2445
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2444
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2446
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2447
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2446
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2448
    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 2449
    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getRestoredThreadList(Landroid/content/Context;Lcom/android/providers/telephony/backup/BnRPreferences$Type;)Ljava/util/List;

    move-result-object v2

    .line 2448
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2450
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->isSupportOgcSessionUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2452
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;->getUpdateSessionThreadList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 2451
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2454
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "updateRestoredThreads(): End, Nothing to update"

    .line 2455
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 2460
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;->beginUpdate(I)V

    .line 2462
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRestoredThreads(): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threads to update"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2464
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)I

    if-eqz p2, :cond_4

    .line 2466
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;->threadUpdated(J)V

    .line 2468
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRestoredThreads(): updated thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p0, "updateRestoredThreads(): End"

    .line 2470
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
