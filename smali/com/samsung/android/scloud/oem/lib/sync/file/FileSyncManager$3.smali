.class final Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$3;
.super Ljava/lang/Object;
.source "FileSyncManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string p0, "data_version"

    .line 133
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_ATTACHMENT_INFO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", v : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FileSyncManager"

    invoke-static {v0, p3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "local_id"

    .line 136
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 137
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

    invoke-interface {p2, p1, p0, p3}, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;->getAttachmentFileInfo(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;

    move-result-object p0

    .line 139
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;->getFileInfoCount()I

    move-result p2

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;->getFileName()Ljava/util/Iterator;

    move-result-object p3

    .line 143
    new-array p4, p2, [Ljava/lang/String;

    .line 144
    new-array p2, p2, [J

    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p4, v0

    .line 149
    aget-object v1, p4, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "file_list"

    .line 153
    invoke-virtual {p1, p0, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "timestamp_list"

    .line 154
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_1
    return-object p1
.end method
