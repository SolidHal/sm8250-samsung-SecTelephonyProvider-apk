.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$recordClient:Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4;Landroid/os/Bundle;Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;Landroid/content/Context;)V
    .locals 0

    .line 246
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$recordClient:Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1

    .line 249
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$result:Landroid/os/Bundle;

    const-string v0, "reason_code"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$result:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$recordClient:Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4$1;->val$context:Landroid/content/Context;

    invoke-interface {v1, p0}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->isBackupPrepare(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "is_success"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
