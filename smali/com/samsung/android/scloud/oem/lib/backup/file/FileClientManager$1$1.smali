.class Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;
.super Ljava/lang/Object;
.source "FileClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fileClient:Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;Landroid/os/Bundle;Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$fileClient:Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$result:Landroid/os/Bundle;

    const-string v0, "reason_code"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$result:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$fileClient:Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1$1;->val$context:Landroid/content/Context;

    invoke-interface {v1, p0}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->isBackupPrepare(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "is_success"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
