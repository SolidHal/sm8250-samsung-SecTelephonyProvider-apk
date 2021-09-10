.class public Lcom/android/providers/telephony/backup/SyncRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncRestoreReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TP/SyncRestoreReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.mms.INIT_SYNC_STATE"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "finish"

    const-string v3, "start"

    if-eqz v0, :cond_2

    const-string p0, "initialSyncState"

    .line 41
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    .line 46
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->setDoingInitSync(Z)V

    goto/16 :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    .line 48
    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->setDoingInitSync(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "com.samsung.android.intent.action.RESTORE_MESSAGE_STATE"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "restorePkg"

    .line 51
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "restoreMsgState"

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_7

    if-nez p2, :cond_3

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " pkgName : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", initSate : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mobile"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 60
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->READY:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->setSsmRestoreStatus(Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;)V

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 62
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->setSsmRestoreStatus(Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;)V

    goto :goto_1

    :cond_5
    const-string v0, "pc"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 66
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->READY:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->setSspRestoreStatus(Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;)V

    goto :goto_1

    .line 67
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 68
    sget-object p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    invoke-static {p0}, Lcom/android/providers/telephony/backup/BnRUtils;->setSspRestoreStatus(Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;)V

    goto :goto_1

    :cond_7
    :goto_0
    return-void

    :cond_8
    const-string p2, "com.samsung.android.intent.action.RESTORING_START"

    .line 71
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 72
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->setRestoreStatusRunning()V

    goto :goto_1

    :cond_9
    const-string p2, "com.samsung.android.intent.action.RESTORING_COMPLETE"

    .line 73
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 74
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->setRestoreStatusNone()V

    .line 78
    :cond_a
    :goto_1
    invoke-static {p1}, Lcom/android/providers/telephony/backup/BnRUtils;->notifyChangeRestoreState(Landroid/content/Context;)V

    return-void
.end method
