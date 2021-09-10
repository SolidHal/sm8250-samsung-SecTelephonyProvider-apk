.class Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;
.super Ljava/lang/Object;
.source "TelephonyBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupChunkInformation"
.end annotation


# instance fields
.field private count:I

.field private timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1456
    iput v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/TelephonyBackupAgent$1;)V
    .locals 0

    .line 1451
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I
    .locals 0

    .line 1451
    iget p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->count:I

    return p0
.end method

.method static synthetic access$104(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I
    .locals 1

    .line 1451
    iget v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->count:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I
    .locals 2

    .line 1451
    iget v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->count:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)J
    .locals 2

    .line 1451
    iget-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;J)J
    .locals 0

    .line 1451
    iput-wide p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->timestamp:J

    return-wide p1
.end method
