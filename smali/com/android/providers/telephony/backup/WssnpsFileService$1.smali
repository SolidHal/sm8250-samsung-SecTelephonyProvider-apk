.class Lcom/android/providers/telephony/backup/WssnpsFileService$1;
.super Ljava/lang/Object;
.source "WssnpsFileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/backup/WssnpsFileService;->showToastNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/backup/WssnpsFileService;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/backup/WssnpsFileService;Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$1;->this$0:Lcom/android/providers/telephony/backup/WssnpsFileService;

    iput-object p2, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$1;->this$0:Lcom/android/providers/telephony/backup/WssnpsFileService;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/WssnpsFileService$1;->val$message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
