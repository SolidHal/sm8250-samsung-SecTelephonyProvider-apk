.class Lcom/android/providers/telephony/ApnBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "ApnBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/ApnBroadcastReceiver;->sendCompleteIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    .line 776
    iput-object p2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$1;->val$finalContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 779
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    .line 780
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "sendCompleteIntent SIM_PROFILE_UPDATE_DONE"

    .line 781
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$1;->val$finalContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SET_PREFERREDAPN_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "sendCompleteIntent SET_PREFERREDAPN_UPDATED"

    .line 786
    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 787
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$1;->val$finalContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
