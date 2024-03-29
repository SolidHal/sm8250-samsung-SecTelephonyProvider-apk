.class public Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;
.super Ljava/lang/Object;
.source "RecordItem.java"


# instance fields
.field private deleted:Z

.field private localRecordId:J

.field private serverRecordId:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JZLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->localRecordId:J

    if-nez p3, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->generateServerRecordId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->serverRecordId:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->serverRecordId:Ljava/lang/String;

    .line 38
    :goto_0
    iput-wide p4, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->timeStamp:J

    .line 39
    iput-boolean p6, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->deleted:Z

    .line 40
    iput-object p7, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->tableName:Ljava/lang/String;

    return-void
.end method

.method private generateServerRecordId()Ljava/lang/String;
    .locals 0

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLocalRecordId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->localRecordId:J

    return-wide v0
.end method

.method public getServerRecordId()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->serverRecordId:Ljava/lang/String;

    return-object p0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->timeStamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->deleted:Z

    return p0
.end method
