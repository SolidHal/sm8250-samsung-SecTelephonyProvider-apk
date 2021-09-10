.class public Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;
.super Ljava/lang/Object;
.source "SyncItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncInnerItem"
.end annotation


# instance fields
.field private deleted:Z

.field private localId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timestamp:J


# virtual methods
.method public getLocalId()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->localId:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->syncKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->timestamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->deleted:Z

    return p0
.end method
