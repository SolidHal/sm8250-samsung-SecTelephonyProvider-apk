.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Ljava/lang/Object;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 113
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$client:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$file:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$client:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$file:Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    return-void
.end method
