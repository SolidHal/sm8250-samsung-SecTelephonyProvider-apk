.class Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;
.super Ljava/lang/Object;
.source "FileClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 197
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] RESTORE_FILE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "path"

    .line 202
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 205
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;

    invoke-interface {p2, p1, p4}, Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;->getRestoreFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] RESTORE_FILE: path: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    const-string p3, "file_descriptor"

    .line 210
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    const-string p1, "is_success"

    .line 212
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method
