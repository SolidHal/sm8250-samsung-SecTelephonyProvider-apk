.class public Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
.super Ljava/lang/Object;
.source "SyncItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;
    }
.end annotation


# virtual methods
.method public abstract getSyncItem()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncItemCount()I
.end method
