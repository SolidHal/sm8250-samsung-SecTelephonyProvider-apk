.class Lcom/android/providers/telephony/backup/SCloudBnRContract;
.super Ljava/lang/Object;
.source "SCloudBnRContract.java"


# static fields
.field static final ADDR_COLUMNS:[Ljava/lang/String;

.field static final BACKUP_PREPARE_PROJECTION_MMS:[Ljava/lang/String;

.field static final PART_COLUMNS:[Ljava/lang/String;

.field static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "content://com.samsung.android.scloud.protocol"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/SCloudBnRContract;->URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "read"

    const-string v3, "thread_id"

    const-string v4, "date"

    const-string v5, "msg_box"

    const-string v6, "m_type"

    const-string v7, "using_mode"

    .line 59
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/SCloudBnRContract;->BACKUP_PREPARE_PROJECTION_MMS:[Ljava/lang/String;

    const-string v1, "seq"

    const-string v2, "ct"

    const-string v3, "name"

    const-string v4, "chset"

    const-string v5, "cid"

    const-string v6, "cl"

    const-string v7, "text"

    const-string v8, "_data"

    const-string v9, "sef_type"

    .line 69
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/SCloudBnRContract;->PART_COLUMNS:[Ljava/lang/String;

    const-string v0, "address"

    const-string v1, "type"

    const-string v2, "charset"

    .line 81
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/SCloudBnRContract;->ADDR_COLUMNS:[Ljava/lang/String;

    return-void
.end method
